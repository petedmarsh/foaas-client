require 'spec_helper'

require 'foaas-client/client'

describe Foaas::Client do

	let(:client) { Foaas::Client.new }

	before do
		RestClient.should_receive(:get).with(url, { accept: accept }).and_return('{ "message" : "", "subtitle" : ""}')
	end

	Foaas::Client::METHODS_TWO_PARAMS.each do |method|
		describe "##{method}" do

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
	
				end

			end
			
		end
	end


	Foaas::Client::METHODS_ONE_PARAM.each do |method|
		describe "##{method}" do

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
	
				end

			end
			
		end
	end

	describe '#thing' do

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
	
			end

		end

	end

end