=begin
#Composio OpenAPI

#Generated with `routing-controllers-openapi`

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for ComposioRuby::Time
describe ComposioRuby::Time do
  let(:instance) { ComposioRuby::Time.new }

  describe 'test an instance of Time' do
    it 'should create an instance of Time' do
      expect(instance).to be_instance_of(ComposioRuby::Time)
    end
  end
end
