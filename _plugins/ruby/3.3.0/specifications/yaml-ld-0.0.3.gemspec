# -*- encoding: utf-8 -*-
# stub: yaml-ld 0.0.3 ruby lib

Gem::Specification.new do |s|
  s.name = "yaml-ld".freeze
  s.version = "0.0.3".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/ruby-rdf/yaml-ld/issues", "documentation_uri" => "https://ruby-rdf.github.io/yaml-ld", "homepage_uri" => "https://github.com/ruby-rdf/yaml-ld", "mailing_list_uri" => "https://lists.w3.org/Archives/Public/public-rdf-ruby/", "source_code_uri" => "https://github.com/ruby-rdf/yaml-ld" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Gregg Kellogg".freeze]
  s.date = "2023-10-29"
  s.description = "YAML_LD parses and serializes YAML-LD into RDF and implements expansion, compaction and framing API interfaces for the Ruby RDF.rb library suite.".freeze
  s.email = "public-linked-json@w3.org".freeze
  s.homepage = "https://github.com/ruby-rdf/yaml-ld".freeze
  s.licenses = ["Unlicense".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 3.0".freeze)
  s.rubygems_version = "3.4.19".freeze
  s.summary = "YAML-LD reader/writer for Ruby.".freeze

  s.installed_by_version = "3.5.22".freeze

  s.specification_version = 4

  s.add_runtime_dependency(%q<json-ld>.freeze, ["~> 3.3".freeze])
  s.add_runtime_dependency(%q<psych>.freeze, [">= 3.3".freeze])
  s.add_runtime_dependency(%q<rdf>.freeze, ["~> 3.3".freeze])
  s.add_runtime_dependency(%q<rdf-xsd>.freeze, ["~> 3.3".freeze])
  s.add_development_dependency(%q<rdf-isomorphic>.freeze, ["~> 3.3".freeze])
  s.add_development_dependency(%q<rdf-spec>.freeze, ["~> 3.3".freeze])
  s.add_development_dependency(%q<rdf-trig>.freeze, ["~> 3.3".freeze])
  s.add_development_dependency(%q<rdf-turtle>.freeze, ["~> 3.3".freeze])
  s.add_development_dependency(%q<rdf-vocab>.freeze, ["~> 3.3".freeze])
  s.add_development_dependency(%q<rdf-xsd>.freeze, ["~> 3.3".freeze])
  s.add_development_dependency(%q<rspec>.freeze, ["~> 3.12".freeze])
  s.add_development_dependency(%q<rspec-its>.freeze, ["~> 1.3".freeze])
  s.add_development_dependency(%q<yard>.freeze, ["~> 0.9".freeze])
end
