require 'spec_helper'

module Slash7
  describe Client do
    let (:client) { Client.new('CODE') }
    let (:event) do
      {
          '_event_name' => 'attack',
          '_app_user_id' => 'user100123',
          '_event_params' => {'weapon' => 'long sword'},
          'lv' => 21
      }
    end

    describe '#send_data' do
      it do
        mock(Net::HTTP).post_form.with_any_args { 1 }
        client.send_data(event)
      end
    end

    describe '#endpoint_url' do
      it 'returns a correct endpoint' do
        client.endpoint_url.should == 'http://tracker.slash-7.com/track/CODE'
      end
    end

    describe '#server' do
      it 'returns default server' do
        client.server.should == 'tracker.slash-7.com'
      end

      it 'returns customized server' do
        client = Client.new('CODE', server: 'example.com')
        client.server.should == 'example.com'
      end
    end

    describe '.encode' do
      it 'can be decoded' do
        encoded = Client.encode(event)
        base64_decoded = Base64.decode64(encoded)
        hash = JSON.parse(base64_decoded)
        hash.should == event
      end
    end
  end
end
