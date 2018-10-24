#!/usr/bin/env gem build
# frozen_string_literal: true

require_relative 'lib/bitaculous/textify/version'

Gem::Specification.new 'bitaculous-textify', Bitaculous::Textify::VERSION do |spec|
  spec.summary          = 'Generate text from different sources.'
  spec.author           = 'Maik Kempe'
  spec.email            = 'mkempe@bitaculous.com'
  spec.homepage         = 'https://bitaculous.github.io/textify/'
  spec.license          = 'MIT'
  spec.files            = Dir['{lib}/**/*', 'LICENSE', 'README.md']
  spec.executables      = 'textify'
  spec.extra_rdoc_files = ['LICENSE', 'README.md']

  spec.required_ruby_version     = '~> 2.4'
  spec.required_rubygems_version = '~> 2.4'
end