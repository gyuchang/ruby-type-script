Gem::Specification.new do |s|
  s.name    = 'type-script'
  s.version = '1.0.0'

  s.homepage    = 'http://github.com/gyuchang/ruby-type-script'
  s.summary     = 'Ruby TypeScript Transpiler'
  s.description = <<-EOS
    Ruby TypeScript is a bridge to the JS TypeScript transpiler.
  EOS
  s.license = 'MIT'

  s.files = [
    'lib/type-script.rb',
    'lib/type_script.rb',
    'LICENSE',
    'README.md'
  ]

  s.add_dependency 'type-script-source'
  s.add_dependency 'execjs'

  s.authors = ['Gyuchang Jun']
  s.email   = 'gyuchang.jun@gmail.com'
end
