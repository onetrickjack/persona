# -*- encoding: utf-8 -*-
# stub: rdf-aggregate-repo 3.3.0 ruby lib

Gem::Specification.new do |s|
  s.name = "rdf-aggregate-repo".freeze
  s.version = "3.3.0".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/ruby-rdf/rdf-aggregate-repo/issues", "documentation_uri" => "https://ruby-rdf.github.io/rdf-aggregate-repo", "homepage_uri" => "https://github.com/ruby-rdf/rdf-aggregate-repo", "mailing_list_uri" => "https://lists.w3.org/Archives/Public/public-rdf-ruby/", "source_code_uri" => "https://github.com/ruby-rdf/rdf-aggregate-repo" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Gregg Kellogg".freeze]
  s.date = "2023-08-26"
  s.description = "A gem extending RDF.rb with SPARQL dataset construction semantics.".freeze
  s.email = "public-rdf-ruby@w3.org".freeze
  s.homepage = "https://github.com/ruby-rdf/rdf-aggregate-repo".freeze
  s.licenses = ["Unlicense".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 3.0".freeze)
  s.rubygems_version = "3.4.19".freeze
  s.summary = "An aggregate RDF::Repository supporting a subset of named graphs and zero or more named graphs mapped to the default graph.".freeze

  s.installed_by_version = "3.5.22".freeze

  s.specification_version = 4

  s.add_runtime_dependency(%q<rdf>.freeze, ["~> 3.3".freeze])
  s.add_development_dependency(%q<rdf-spec>.freeze, ["~> 3.3".freeze])
  s.add_development_dependency(%q<rdf-turtle>.freeze, ["~> 3.3".freeze])
  s.add_development_dependency(%q<rspec>.freeze, ["~> 3.12".freeze])
  s.add_development_dependency(%q<rspec-its>.freeze, ["~> 1.3".freeze])
  s.add_development_dependency(%q<yard>.freeze, ["~> 0.9".freeze])
end
