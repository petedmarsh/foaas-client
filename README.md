# Foaas Client

[![Build Status](https://travis-ci.org/petedmarsh/foaas-client.png)](https://travis-ci.org/petedmarsh/foaas-client)
[![Code Climate](https://codeclimate.com/github/petedmarsh/foaas-client.png)](https://codeclimate.com/github/petedmarsh/foaas-client)

A client for [FOAAS](http://foaas.com).

## API Version

Version `0.0.2` of the FOAAS API is supported.

## Usage

### Basic Example

    require 'foaas-client'

    fuck = Foaas::Client.new
    fuck.off('Bob', 'Alice')

### Response Types

	fuck.off('Bob', 'Alice', :json) # { 'message' => 'Fuck off, Bob.' 'subtitle' => '- Alice'}

	fuck.off('Bob', 'Alice', :text) # 'Fuck off, Bob. - Alice'

	fuck.off('Bob', 'Alice', :html) # '<html>...</html>'

### Methods


#### Everyone

	fuck.everyone('Alice') # { 'message' => 'Everyone can go and fuck off.', 'subtitle' => '- Alice'}

#### Everything

	fuck.everything('Alice') # { 'message' => 'Fuck everything.', 'subtitle' => '- Alice'}

#### Life

	fuck.donut('Alice') # { 'message' => 'Fuck my life.', 'subtitle' => '- Alice'}

#### Pink

	fuck.donut('Alice') # { 'message' => 'Well, Fuck me pink.', 'subtitle' => '- Alice'}


#### That

	fuck.that('Alice') # { 'message' => 'Fuck that', 'subtitle' => '- Alice'}


#### This

	fuck.this(Alice') # { 'message' => 'Fuck this.', 'subtitle' => '- Alice'}

#### Chainsaw

	fuck.chainsaw('Bob', 'Alice') # { 'message' => 'Fuck me gently with a chainsaw, Bob. Do I look like Mother Teresa?', 'subtitle' => '- Alice'}

#### Donut

	fuck.donut('Bob', 'Alice') # { 'message' => 'Bob, go and take a flying fuck at a rolling donut.', 'subtitle' => '- Alice'}

#### King

	fuck.king('Bob', 'Alice') # { 'message' => 'Oh fuck off, just really fuck off you total dickface. Christ Bob, you are fucking thick.', 'subtitle' => '- Alice'}


#### Linus

	fuck.linus('Bob', 'Alice') # { 'message' => 'Bob, there aren't enough swear-words in the English language, so now I'll have to call you perkeleen vittupää just to express my disgust and frustration with this crap.', 'subtitle' => '- Alice'}

#### Off

	fuck.off('Bob', 'Alice') # { 'message' => 'Fuck off, Bob.', 'subtitle' => '- Alice'}


#### Shakespeare

	fuck.shakespeare('Bob', 'Alice') # { 'message' => 'Thou clay-brained guts, thou knotty-pated fool, thou whoreson obscene greasy tallow-catch!', 'subtitle' => '- Alice'}


#### Thanks

	fuck.thanks('Bob', 'Alice') # { 'message' => 'Fuck you very much', 'subtitle' => '- Alice'}

#### You

	fuck.you('Bob', 'Alice') # { 'message' => 'Fuck you, Bob.', 'subtitle' => '- Alice'}

#### Thing

	fuck.thing('it', 'Alice') # { 'message' => 'Fuck it.', 'subtitle' => '- Alice'}
