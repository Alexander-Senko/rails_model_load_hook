$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'rails_model_load_hook/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
	s.name        = 'rails_model_load_hook'
	s.version     = RailsModelLoadHook::VERSION
	s.authors     = [ 'Alexander Senko' ]
	s.email       = [ 'Alexander.Senko@gmail.com' ]
	s.homepage    = 'https://github.com/Alexander-Senko/rails_model_load_hook'
	s.summary     = 'Load hook for Rails model classes.'
	s.description = 'Adds :model_class load hook for every ActiveRecord descendant.'
	s.license     = 'MIT'

	s.files = Dir['{app,config,db,lib}/**/*'] + ['MIT-LICENSE', 'Rakefile', 'README.rdoc']

	s.required_ruby_version = '>= 2.0'

	s.add_dependency 'rails', '>= 4.1'

	s.add_development_dependency 'sqlite3'
end
