# frozen_string_literal: true

require_relative 'lib/rails_model_load_hook/version'
require_relative 'lib/rails_model_load_hook/authors'

Gem::Specification.new do |spec|
	spec.platform    = Gem::Platform::RUBY
	spec.name        = 'rails_model_load_hook'
	spec.version     = RailsModelLoadHook::VERSION
	spec.authors     = RailsModelLoadHook::AUTHORS.filter_map &:name
	spec.email       = RailsModelLoadHook::AUTHORS.filter_map &:email
	spec.homepage    = "#{RailsModelLoadHook::AUTHORS.filter_map(&:github_url).first}/#{spec.name}"
	spec.summary     = 'Load hook for Rails model classes.'
	spec.description = 'Adds :model_class load hook for every ActiveRecord descendant.'
	spec.license     = 'MIT'

	spec.metadata['homepage_uri']    = spec.homepage
	spec.metadata['source_code_uri'] = spec.homepage
	spec.metadata['changelog_uri']   = "#{spec.metadata['source_code_uri']}/blob/v#{spec.version}/CHANGELOG.md"

	spec.files = Dir.chdir(File.expand_path(__dir__)) do
		Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md', 'CHANGELOG.md']
	end

	spec.required_ruby_version = '>= 2.7'

	spec.add_dependency 'rails', '>= 7.1'
end
