# -*- encoding: utf-8 -*-
# stub: shex 0.8.0 ruby lib

Gem::Specification.new do |s|
  s.name = "shex".freeze
  s.version = "0.8.0".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/ruby-rdf/shex/issues", "documentation_uri" => "https://ruby-rdf.github.io/shex", "homepage_uri" => "https://github.com/ruby-rdf/shex", "mailing_list_uri" => "https://lists.w3.org/Archives/Public/public-rdf-ruby/", "source_code_uri" => "https://github.com/ruby-rdf/shex", "yard.run" => "yri" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Gregg Kellogg".freeze]
  s.date = "2023-08-26"
  s.description = "Implements ShExC and ShEx JSON.".freeze
  s.email = "public-rdf-ruby@w3.org".freeze
  s.homepage = "https://github.com/ruby-rdf/shex".freeze
  s.licenses = ["Unlicense".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 3.0".freeze)
  s.rubygems_version = "3.2.33".freeze
  s.summary = "Implementation of Shape Expressions (ShEx) for RDF.rb".freeze

  s.installed_by_version = "3.5.22".freeze

  s.specification_version = 4

  s.add_runtime_dependency(%q<rdf>.freeze, ["~> 3.3".freeze])
  s.add_runtime_dependency(%q<json-ld>.freeze, ["~> 3.3".freeze])
  s.add_runtime_dependency(%q<json-ld-preloaded>.freeze, ["~> 3.3".freeze])
  s.add_runtime_dependency(%q<ebnf>.freeze, ["~> 2.4".freeze])
  s.add_runtime_dependency(%q<sxp>.freeze, ["~> 1.3".freeze])
  s.add_runtime_dependency(%q<rdf-xsd>.freeze, ["~> 3.3".freeze])
  s.add_runtime_dependency(%q<sparql>.freeze, ["~> 3.3".freeze])
  s.add_runtime_dependency(%q<htmlentities>.freeze, ["~> 4.3".freeze])
  s.add_development_dependency(%q<erubis>.freeze, ["~> 2.7".freeze])
  s.add_development_dependency(%q<rdf-spec>.freeze, ["~> 3.3".freeze])
  s.add_development_dependency(%q<rdf-turtle>.freeze, ["~> 3.3".freeze])
  s.add_development_dependency(%q<rspec>.freeze, ["~> 3.12".freeze])
  s.add_development_dependency(%q<rspec-its>.freeze, ["~> 1.3".freeze])
  s.add_development_dependency(%q<yard>.freeze, ["~> 0.9".freeze])
end
