require 'spec_helper'

require 'foaas-client/client'

describe Foaas::Client do

  it 'raises an exception if a method is unsupported' do
    expect { client.not_a_foaas_method }.to raise_error NoMethodError
  end

  let(:client) { Foaas::Client.new }

  Foaas::Client::METHODS_THREE_PARAMS.each do |method|
    describe "##{method}" do

      before do
        RestClient.should_receive(:get).with(url, { accept: accept }).and_return('{ "message" : "", "subtitle" : ""}')
      end

      let(:name) { 'name' }
      let(:from) { 'from' }
      let(:other) { 'other' }
      let(:type) { nil }

      let(:url) { "http://foaas.com/#{method}/#{name}/#{from}/#{other}" }

      context 'type is' do

        context 'not specified' do

          let(:accept) { :json }

          it 'defaults to JSON' do
            client.send(method, name, from, other, type)
          end

        end

        context 'is specified' do

          context 'as HTML' do

            let(:type) { :html }
            let(:accept) { :html }

            it 'specifies text/html as the accept type' do
              client.send(method, name, from, other, type)
            end
          end

          context 'as JSON' do

            let(:type) { :json }
            let(:accept) { :json}

            it 'specifies application/json as the accept type' do
              client.send(method, name, from, other, type)
            end

            it 'parses the response into a hash' do
              client.send(method, name, from, other, type).should == { 'message' => '', 'subtitle' => ''}
            end

          end

          context 'as text' do

            let(:type) { :text }
            let(:accept) { 'text/plain' }

            it 'specifies text/plain as the accept type' do
              client.send(method, name, from, other, type)
            end
          end

          context 'as xml' do

            let(:type) { :xml }
            let(:accept) { :xml }

            it 'specifies application/xml as the acccept type' do
              client.send(method, name, from, other, type)
            end
          end

        end

      end
      
    end
  end


  Foaas::Client::METHODS_TWO_PARAMS.each do |method|
    describe "##{method}" do

      before do
        RestClient.should_receive(:get).with(url, { accept: accept }).and_return('{ "message" : "", "subtitle" : ""}')
      end

      let(:name) { 'name' }
      let(:from) { 'from' }
      let(:type) { nil }

      let(:url) { "http://foaas.com/#{method}/#{name}/#{from}" }

      context 'type is' do

        context 'not specified' do

          let(:accept) { :json }

          it 'defaults to JSON' do
            client.send(method, name, from, type)
          end

        end

        context 'is specified' do

          context 'as HTML' do

            let(:type) { :html }
            let(:accept) { :html }

            it 'specifies text/html as the accept type' do
              client.send(method, name, from, type)
            end
          end

          context 'as JSON' do

            let(:type) { :json }
            let(:accept) { :json}

            it 'specifies application/json as the accept type' do
              client.send(method, name, from, type)
            end

            it 'parses the response into a hash' do
              client.send(method, name, from, type).should == { 'message' => '', 'subtitle' => ''}
            end

          end

          context 'as text' do

            let(:type) { :text }
            let(:accept) { 'text/plain' }

            it 'specifies text/plain as the accept type' do
              client.send(method, name, from, type)
            end
          end

          context 'as xml' do

            let(:type) { :xml }
            let(:accept) { :xml }

            it 'specifies application/xml as the acccept type' do
              client.send(method, name, from, type)
            end
          end

        end

      end
      
    end
  end


  Foaas::Client::METHODS_ONE_PARAM.each do |method|
    describe "##{method}" do

      before do
        RestClient.should_receive(:get).with(url, { accept: accept }).and_return('{ "message" : "", "subtitle" : ""}')
      end

      let(:url) { "http://foaas.com/#{method}/#{from}" }
      let(:from) { 'from' }
      let(:type) { nil }

      context 'type is' do

        context 'not specified' do

          let(:accept) { :json }

          it 'defaults to JSON' do
            client.send(method, from, type)
          end

        end

        context 'is specified' do

          context 'as HTML' do

            let(:type) { :html }
            let(:accept) { :html }

            it 'specifies text/html as the accept type' do
              client.send(method, from, type)
            end
          end

          context 'as JSON' do

            let(:type) { :json }
            let(:accept) { :json }

            it 'specifies application/json as the accept type' do
              client.send(method, from, type)
            end

            it 'parses the response into a hash' do
              client.send(method, from, type).should == { 'message' => '', 'subtitle' => ''}
            end

          end

          context 'as text' do

            let(:type) { :text }
            let(:accept) { 'text/plain'}

            it 'specifies text/plain as the accept type' do
              client.send(method, from, type)
            end
          end

          context 'as xml' do
            let(:type) { :xml }
            let(:accept) { :xml }

            it 'specifies application/xml as the accept type' do
              client.send(method, from, type)
            end
          end
        end

      end
      
    end
  end

  describe '#thing' do

    before do
      RestClient.should_receive(:get).with(url, { accept: accept }).and_return('{ "message" : "", "subtitle" : ""}')
    end

    let(:url) { "http://foaas.com/#{thing}/#{from}" }
    let(:thing) { 'thing' }
    let(:from) { 'from' }
    let(:type) { nil }

    context 'type is' do

      context 'not specified' do

        let(:accept) { :json }

        it 'defaults to JSON' do
          client.thing(thing, from, type)
        end
      end

      context 'is specified' do

        context 'as HTML' do

          let(:type) { :html }
          let(:accept) { :html }

          it 'specifies text/html as the accept type' do
            client.thing(thing, from, type)
          end
        end

        context 'as JSON' do

          let(:type) { :json }
          let(:accept) { :json }

          it 'specifies application/json as the accept type' do
            client.thing(thing, from, type)
          end

          it 'parses the response into a hash' do
            client.thing(thing, from, type).should == { 'message' => '', 'subtitle' => ''}
          end
          
        end

        context 'as text' do

          let(:type) { :text }
          let(:accept) { 'text/plain' }

          it 'specifies text/plain as the accept type' do
            client.thing(thing, from, type)
          end
        end

        context 'as xml' do

          let(:type) { :xml }
          let(:accept) { :xml }

          it 'specifies application/xml as the accept type' do
            client.thing(thing, from, type)
          end
        end
      end

    end

  end

  describe '#respond_to?' do

    let(:sym) { nil }

    subject do
      client.respond_to?(sym)
    end

    (Foaas::Client::METHODS_ONE_PARAM + Foaas::Client::METHODS_TWO_PARAMS + [:thing]).each do |method|

      context "for :#{method}" do

        let(:sym) { method }

        it { should eq true }

      end

      context 'for non-FOAAS methods' do

        let(:sym) { :not_a_foaas_method }

        it { should eq false }

      end

    end

  end

  describe '#operations' do

    let(:url) { "http://foaas.com/operations/" }
    let(:accept) { :json }
    let(:response) { '[]' }

    it 'requests the operations from FOAAS' do
      RestClient.should_receive(:get).with(url, { accept: accept }).and_return(response)
      result = client.operations()
      result.should eq JSON.parse(response)
    end
  end

  describe '#version' do

    before do
      RestClient.should_receive(:get).with(url, { accept: accept }).and_return('{ "message" : "", "subtitle" : ""}')
    end

    let(:url) { "http://foaas.com/#{version}/" }
    let(:version) { 'version' }
    let(:type) { nil }

    context 'type is' do

      context 'not specified' do

        let(:accept) { :json }

        it 'defaults to JSON' do
          client.version()
        end
      end

      context 'is specified' do

        context 'as HTML' do

          let(:type) { :html }
          let(:accept) { :html }

          it 'specifies text/html as the accept type' do
            client.version(type)
          end
        end

        context 'as JSON' do

          let(:type) { :json }
          let(:accept) { :json }

          it 'specifies application/json as the accept type' do
            client.version(type)
          end

          it 'parses the response into a hash' do
            client.version(type).should == { 'message' => '', 'subtitle' => ''}
          end
          
        end

        context 'as text' do

          let(:type) { :text }
          let(:accept) { 'text/plain' }

          it 'specifies text/plain as the accept type' do
            client.version(type)
          end
        end

        context 'as xml' do

          let(:type) { :xml }
          let(:accept) { :xml }

          it 'specifies application/xml as the accept type' do
            client.version(type)
          end
        end
      end

    end
  end

end