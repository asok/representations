# Generated by jeweler
# DO NOT EDIT THIS FILE
# Instead, edit Jeweler::Tasks in Rakefile, and run `rake gemspec`
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{representations}
  s.version = "0.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["\305\201ukasz Piestrzeniewicz", "Adam Sokolnicki"]
  s.date = %q{2009-11-10}
  s.description = %q{Rails helpers, including form builders are great to allow rapid development of applications and views.  
They are procedural in nature and have hard time to adapt to complex models. They also live in a single namespace making it difficult to find which helpers apply to which models.  
Resource representations change syntax to object oriented and model specific.}
  s.email = %q{skimos00@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE.txt",
     "README.markdown"
  ]
  s.files = [
    ".document",
     "LICENSE.txt",
     "README.markdown",
     "Rakefile",
     "VERSION",
     "init.rb",
     "lib/active_record_representation.rb",
     "lib/associations_representation.rb",
     "lib/controller_helpers.rb",
     "lib/date_representation.rb",
     "lib/default_representation.rb",
     "lib/representation.rb",
     "lib/representations.rb",
     "lib/view_helpers.rb",
     "rails/init.rb",
     "representations.gemspec"
  ]
  s.homepage = %q{http://github.com/bragi/representations}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Changes syntax of rails helpers and form builders to object oriented and model specific}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
