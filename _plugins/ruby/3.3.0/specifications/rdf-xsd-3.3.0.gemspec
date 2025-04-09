# -*- encoding: utf-8 -*-
# stub: rdf-xsd 3.3.0 ruby lib

Gem::Specification.new do |s|
  s.name = "rdf-xsd".freeze
  s.version = "3.3.0".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/ruby-rdf/rdf-xsd/issues", "documentation_uri" => "https://ruby-rdf.github.io/rdf-xsd", "homepage_uri" => "https://github.com/ruby-rdf/rdf-xsd", "mailing_list_uri" => "https://lists.w3.org/Archives/Public/public-rdf-ruby/", "source_code_uri" => "https://github.com/ruby-rdf/rdf-xsd" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Gregg".freeze, "Kellogg".freeze]
  s.date = "2023-08-26"
  s.description = "Adds RDF::Literal subclasses for extended XSD datatypes with methods for many XPath and XQuery functions.".freeze
  s.email = "public-rdf-ruby@w3.org".freeze
  s.homepage = "https://github.com/ruby-rdf/rdf-xsd".freeze
  s.licenses = ["Unlicense".freeze]
  s.post_install_message = "\n  For best results, use nokogiri and equivalent-xml gems as well.\n  These are not hard requirements to preserve pure-ruby dependencies.\n".freeze
  s.required_ruby_version = Gem::Requirement.new(">= 3.0".freeze)
  s.rubygems_version = "3.4.19".freeze
  s.summary = "Extended XSD Datatypes and XPath and XQuery functions for RDF.rb.".freeze

  s.installed_by_version = "3.5.22".freeze

  s.specification_version = 4

  s.add_runtime_dependency(%q<rdf>.freeze, ["~> 3.3".freeze])
  s.add_runtime_dependency(%q<rexml>.freeze, ["~> 3.2".freeze])
  s.add_development_dependency(%q<activesupport>.freeze, ["~> 7.0".freeze])
  s.add_development_dependency(%q<rspec>.freeze, ["~> 3.12".freeze])
  s.add_development_dependency(%q<rspec-its>.freeze, ["~> 1.3".freeze])
  s.add_development_dependency(%q<rdf-spec>.freeze, ["~> 3.3".freeze])
  s.add_development_dependency(%q<yard>.freeze, ["~> 0.9".freeze])
end
