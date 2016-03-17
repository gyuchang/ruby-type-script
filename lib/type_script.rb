require 'execjs'
require 'type_script/source'

module TypeScript
  Error            = ExecJS::Error
  EngineError      = ExecJS::RuntimeError
  CompilationError = ExecJS::ProgramError

  module Source
    def self.path
      @path ||= ENV['TYPESCRIPT_SOURCE_PATH'] || bundled_path
    end

    def self.path=(path)
      @contents = @version = @context = nil
      @path = path
    end

    COMPILE_FUNCTION_SOURCE = <<-JS
      ;function compile(script, options) {
        return ts.transpile(script, options);
      }
    JS

    def self.contents
      @contents ||= File.read(path) + COMPILE_FUNCTION_SOURCE
    end

    def self.context
      @context ||= ExecJS.compile(contents)
    end
  end

  class << self
    def engine
    end

    def engine=(engine)
    end

    def version
      Source.version
    end

    # Compile typescript source (String or IO) to JavaScript.
    def compile(script, options = {})
      script = script.read if script.respond_to?(:read)

      # Stringify keys
      options = options.inject({}) { |h, (k, v)| h[k.to_s] = v; h }

      Source.context.call("compile", script, options)
    end
  end
end
