# -*- encoding: utf-8 -*-
# stub: rdf-isomorphic 3.3.0 ruby lib

Gem::Specification.new do |s|
  s.name = "rdf-isomorphic".freeze
  s.version = "3.3.0".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/ruby-rdf/rdf-isomorphic/issues", "documentation_uri" => "https://ruby-rdf.github.io/rdf-isomorphic", "homepage_uri" => "https://github.com/ruby-rdf/rdf-isomorphic", "mailing_list_uri" => "https://lists.w3.org/Archives/Public/public-rdf-ruby/", "source_code_uri" => "https://github.com/ruby-rdf/rdf-isomorphic" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Ben Lavender".freeze, "Arto Bendiken".freeze, "Gregg Kellogg".freeze]
  s.date = "2023-08-26"
  s.description = "RDF.rb extension for graph bijections and isomorphic equivalence.".freeze
  s.email = "public-rdf-ruby@w3.org".freeze
  s.homepage = "https://github.com/ruby-rdf/rdf-isomorphic".freeze
  s.licenses = ["Unlicense".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 3.0".freeze)
  s.rubygems_version = "3.4.19".freeze
  s.summary = "RDF Graph/Dataset Isomorphism as defined in RDF 1.1 Concepts.".freeze

  s.installed_by_version = "3.5.22".freeze

  s.specification_version = 4

  s.add_runtime_dependency(%q<rdf>.freeze, ["~> 3.3".freeze])
  s.add_development_dependency(%q<rdf-spec>.freeze, ["~> 3.3".freeze])
  s.add_development_dependency(%q<rspec>.freeze, ["~> 3.12".freeze])
  s.add_development_dependency(%q<yard>.freeze, ["~> 0.9".freeze])
end
