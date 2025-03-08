# frozen_string_literal: true

require 'test_helper'
require 'minitest/autorun'

describe RailsModelLoadHook do
	let(:loaded)  { [] }
	let(:on_load) { -> { loaded << _1 } }

	before do
		on_load = self.on_load

		ActiveSupport.on_load :model_class do
			on_load[self]
		end
	end

	using Module.new { # shared examples
		refine Minitest::Spec.singleton_class do
			def passing
				it 'passes the hook' do
					_(loaded).must_include model
				end
			end

			def skipping
				it 'skips the hook' do
					_(loaded).wont_include model
				end
			end
		end
	}

	describe 'with existing models' do
		let(:model) { DummyModel.tap &:new }

		passing
	end

	describe 'with inherited models' do
		let(:model) { InheritedModel.tap &:new }

		passing
	end

	describe 'with ApplicationRecord' do
		let(:model) { ApplicationRecord }

		skipping
	end

	describe 'with models lacking DB tables' do
		let(:model) { MissingModel }

		skipping
	end
end
