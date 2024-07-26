require 'rspec'
require_relative '../lib/api_call'

RSpec.describe ApiCall do
  let(:base_url) { 'https://api.stagingeb.com/v1' }
  let(:client) { ApiCall.new(base_url) }

  describe '#get' do
    it 'retrieves data from the given endpoint' do
      response = client.get('/properties')
      expect(response).to be_an_instance_of(Array)
      expect(response.first).to have_key('title')
    end
  end
end
