Ruby TypeScript
=================

Ruby TypeScript is a bridge to the official TypeScript transpiler.

    TypeScript.compile File.read("script.ts")


Installation
------------

    gem install type-script

*Note: This compiler library has replaced the original TypeScript
 compiler that was written in Ruby.*


Credit
------------

General structure, most of the code and documentation was shamelessly lifted from [coffee-scrit gem](https://github.com/rails/ruby-coffee-script).


Dependencies
------------

This library depends on the `type-script-source` gem which is
updated any time a new version of TypeScript is released. (The
`type-script-source` gem's version number is synced with each
official TypeScript release.) This way you can build against
different versions of TypeScript by requiring the correct version of
the `type-script-source` gem.

In addition, you can use this library with unreleased versions of
TypeScript by setting the `TYPESCRIPT_SOURCE_PATH` environment
variable:

    export TYPESCRIPT_SOURCE_PATH=/path/to/TypeScript/lib/typescript.js

### ExecJS

The [ExecJS](https://github.com/sstephenson/execjs) library is used to automatically choose the best JavaScript engine for your platform. Check out its [README](https://github.com/sstephenson/execjs/blob/master/README.md) for a complete list of supported engines.
