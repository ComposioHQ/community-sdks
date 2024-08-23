=begin
#Composio OpenAPI

#Generated with `routing-controllers-openapi`

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'

describe ComposioRuby::Configuration do
  let(:config) { ComposioRuby::Configuration.default }

  before(:each) do
    # uncomment below to setup host and base_path
    # require 'URI'
    # uri = URI.parse("https://backend.composio.dev")
    # ComposioRuby.configure do |c|
    #   c.host = uri.host
    #   c.base_path = uri.path
    # end
  end

  describe '#base_url' do
    it 'should have the default value' do
      # uncomment below to test default value of the base path
      # expect(config.base_url).to eq("https://backend.composio.dev")
    end

    it 'should remove trailing slashes' do
      [nil, '', '/', '//'].each do |base_path|
        config.base_path = base_path
        # uncomment below to test trailing slashes
        # expect(config.base_url).to eq("https://backend.composio.dev")
      end
    end
  end
end
