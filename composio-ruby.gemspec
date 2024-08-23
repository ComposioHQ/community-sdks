# -*- encoding: utf-8 -*-

=begin
#Composio OpenAPI

#Generated with `routing-controllers-openapi`

The version of the OpenAPI document: 1.0.0
=end

$:.push File.expand_path("../lib", __FILE__)
require "composio-ruby/version"

Gem::Specification.new do |s|
  s.name        = "composio-ruby"
  s.version     = ComposioRuby::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Konfig"]
  s.email       = ["engineering@konfigthis.com"]
  s.homepage    = "https://konfigthis.com"
  s.summary     = "Composio OpenAPI Ruby Gem"
  s.description = "Generated with `routing-controllers-openapi`"
  s.license     = "MIT"
  s.required_ruby_version = ">= 2.4"
  s.metadata = {
    "documentation_uri" => "https://github.com/composiohq/composio/tree/main/ruby",
    "source_code_uri"   => "https://github.com/composiohq/composio/tree/main/ruby",
  }

  s.add_runtime_dependency 'faraday', '>= 1.0.1', '< 3.0'
  s.add_runtime_dependency 'faraday-multipart', '~> 1.0', '>= 1.0.4'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
