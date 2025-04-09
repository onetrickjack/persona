# -*- encoding: utf-8 -*-
# stub: json-ld 3.3.2 ruby lib

Gem::Specification.new do |s|
  s.name = "json-ld".freeze
  s.version = "3.3.2".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/ruby-rdf/json-ld/issues", "documentation_uri" => "https://ruby-rdf.github.io/json-ld", "homepage_uri" => "https://github.com/ruby-rdf/json-ld", "mailing_list_uri" => "https://lists.w3.org/Archives/Public/public-rdf-ruby/", "rubygems_mfa_required" => "true", "source_code_uri" => "https://github.com/ruby-rdf/json-ld" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Gregg Kellogg".freeze]
  s.date = "2024-07-29"
  s.description = "JSON::LD parses and serializes JSON-LD into RDF and implements expansion, compaction and framing API interfaces for the Ruby RDF.rb library suite.".freeze
  s.email = "public-linked-json@w3.org".freeze
  s.executables = ["jsonld".freeze]
  s.files = ["bin/jsonld".freeze]
  s.homepage = "https://github.com/ruby-rdf/json-ld".freeze
  s.licenses = ["Unlicense".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 3.0".freeze)
  s.rubygems_version = "3.4.19".freeze
  s.summary = "JSON-LD reader/writer for Ruby.".freeze

  s.installed_by_version = "3.5.22".freeze

  s.specification_version = 4

  s.add_runtime_dependency(%q<htmlentities>.freeze, ["~> 4.3".freeze])
  s.add_runtime_dependency(%q<json-canonicalization>.freeze, ["~> 1.0".freeze])
  s.add_runtime_dependency(%q<link_header>.freeze, ["~> 0.0".freeze, ">= 0.0.8".freeze])
  s.add_runtime_dependency(%q<multi_json>.freeze, ["~> 1.15".freeze])
  s.add_runtime_dependency(%q<rack>.freeze, [">= 2.2".freeze, "< 4".freeze])
  s.add_runtime_dependency(%q<rdf>.freeze, ["~> 3.3".freeze])
  s.add_runtime_dependency(%q<rexml>.freeze, ["~> 3.2".freeze])
  s.add_development_dependency(%q<getoptlong>.freeze, ["~> 0.2".freeze])
  s.add_development_dependency(%q<jsonlint>.freeze, ["~> 0.4".freeze])
  s.add_development_dependency(%q<oj>.freeze, ["~> 3.15".freeze])
  s.add_development_dependency(%q<rack-test>.freeze, ["~> 2.1".freeze])
  s.add_development_dependency(%q<rdf-isomorphic>.freeze, ["~> 3.3".freeze])
  s.add_development_dependency(%q<rdf-spec>.freeze, ["~> 3.3".freeze])
  s.add_development_dependency(%q<rdf-trig>.freeze, ["~> 3.3".freeze])
  s.add_development_dependency(%q<rdf-turtle>.freeze, ["~> 3.3".freeze])
  s.add_development_dependency(%q<rdf-vocab>.freeze, ["~> 3.3".freeze])
  s.add_development_dependency(%q<rdf-xsd>.freeze, ["~> 3.3".freeze])
  s.add_development_dependency(%q<rspec>.freeze, ["~> 3.12".freeze])
  s.add_development_dependency(%q<rspec-its>.freeze, ["~> 1.3".freeze])
  s.add_development_dependency(%q<yajl-ruby>.freeze, ["~> 1.4".freeze])
  s.add_development_dependency(%q<yard>.freeze, ["~> 0.9".freeze])
end
