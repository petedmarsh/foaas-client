# Foaas Client

[![Build Status](https://travis-ci.org/petedmarsh/foaas-client.png)](https://travis-ci.org/petedmarsh/foaas-client)
[![Code Climate](https://codeclimate.com/github/petedmarsh/foaas-client.png)](https://codeclimate.com/github/petedmarsh/foaas-client)

A client for [FOAAS](http://foaas.com).

## API Version

Version `0.0.4` of the FOAAS API is supported.

## Usage

### Basic Example

```ruby
require 'foaas-client'

fuck = Foaas::Client.new
fuck.off('Bob', 'Alice')
```

### Response Types

```ruby
fuck.off('Bob', 'Alice', :json)
#=> { 'message' => 'Fuck off, Bob.' 'subtitle' => '- Alice' }

fuck.off('Bob', 'Alice', :text)
#=> 'Fuck off, Bob. - Alice'

fuck.off('Bob', 'Alice', :html)
#=> '<html>...</html>'

fuck.off('Bob', 'Alice', :xml)
#=> '<?xml version="1.0" encoding="utf-8"?>'
```

### Methods

#### Ballmer

```ruby
fuck.ballmer('Bob', 'Alice', 'Clara')
#=> { 'message' => 'Fucking Bob is a fucking pussy. I'm going to fucking bury that guy, I have done it before, and I will do it again. I'm going to fucking kill Alice.', 'subtitle' => 'Clara' }
```

#### Because

```ruby
fuck.because('Alice')
#=> { 'message' => 'Why? Because Fuck you, that\'s why.', 'subtitle' => '- Alice' }
```

#### Bus

```ruby
fuck.bus('Bob', 'Alice')
#=> { 'message' => 'Christ on a bendy-bus, Bob, don\'t be such a fucking faff-arse', 'subtitle' => '- Alice' }
```

#### Bye

```ruby
fuck.bye('Alice')
#=> { 'message' => 'Fuckity bye!', 'subtitle' => '- Alice' }
```

#### Can I use?

```ruby
fuck.caniuse('Bob', 'Alice')
#=> { 'message' => 'Can you use Bob? Fuck no!', 'subtitle' => '- Alice' }
```

#### Chainsaw

```ruby
fuck.chainsaw('Bob', 'Alice')
#=> { 'message' => 'Fuck me gently with a chainsaw, Bob. Do I look like Mother Teresa?', 'subtitle' => '- Alice' }
```

#### Cool

```ruby
fuck.cool('Alice')
#=> { 'message' => 'Cool story, Bro', '- Alice' }
```

#### Diabetes

```ruby
fuck.diabetes('Alice')
#=> { 'message' => 'I\'d love to stop and chat to you but I\'d rather have type 2 diabetes.', 'subtitle' => '- Alice' }
```

#### Donut

```ruby
fuck.donut('Bob', 'Alice')
#=> { 'message' => 'Bob, go and take a flying fuck at a rolling donut.', 'subtitle' => '- Alice' }
```

#### Everyone

```ruby
fuck.everyone('Alice')
#=> { 'message' => 'Everyone can go and fuck off.', 'subtitle' => '- Alice' }
```

#### Everything

```ruby
fuck.everything('Alice')
#=> { 'message' => 'Fuck everything.', 'subtitle' => '- Alice' }
```

#### Fascinating

```ruby
fuck.fascinating('Alice')
#=> { 'message' => 'Fascinating story, in what chapter do you shut the fuck up?', 'subtitle' => '- Alice' }
```

#### Field

```ruby
fuck.field('Bob', 'Alice', 'Clara')
#=> { 'message' => 'And Alice said on to Bob, "Verily, cast thine eyes upon the field in which I grow my fucks", and Bobgave witness onto the field, and saw that it was barren.', 'subtitle' => '- Clara' }
```

#### Flying

```ruby
fuck.flying('Alice')
#=> { 'message' => 'I don\'t give a flying fuck.', 'subtitle' => '- Alice' }

#### King

```ruby
fuck.king('Bob', 'Alice')
#=> { 'message' => 'Oh fuck off, just really fuck off you total dickface. Christ Bob, you are fucking thick.', 'subtitle' => '- Alice' }
```

#### Life

```ruby
fuck.life('Alice')
#=> { 'message' => 'Fuck my life.', 'subtitle' => '- Alice' }
```

#### Linus

```ruby
fuck.linus('Bob', 'Alice')
#=> { 'message' => 'Bob, there aren't enough swear-words in the English language, so now I'll have to call you perkeleen vittupää just to express my disgust and frustration with this crap.', 'subtitle' => '- Alice' }
```

#### Madison

```ruby
fuck.madison('Bob', 'Alice')
#=> { 'What you\'ve said is one of the most insantely idiotic things I have ever heard, Bob. At no point in your rambling, incoherent response were you even close to anything that could be considered a rational thought. Everyone in this room is now dumber for having listened to it. I award you no points Bob, and may God have mercy on your soul.', 'subtitle' => '- Alice' }
```

#### Nugget

```ruby
fuck.nugget('Bob', 'Alice')
#=> { ''Well Bob, aren\'t you a shining example of a rancid fuck-nugget.', 'subtitle' => '- Alice' }
```

#### Off

```ruby
fuck.off('Bob', 'Alice')
#=> { 'message' => 'Fuck off, Bob.', 'subtitle' => '- Alice' }
```

#### Outside

```ruby
fuck.outside('Bob', 'Alice')
#=> { 'message' => 'Bob, why don\'t you go outside and play hide-and-go-fuck-yourself?', 'subtitle' => '- Alice' }
```

#### Pink

```ruby
fuck.pink('Alice')
#=> { 'message' => 'Well, Fuck me pink.', 'subtitle' => '- Alice' }
```

#### Shakespeare

```ruby
fuck.shakespeare('Bob', 'Alice')
#=> { 'message' => 'Thou clay-brained guts, thou knotty-pated fool, thou whoreson obscene greasy tallow-catch!', 'subtitle' => '- Alice' }
```

#### Thanks

```ruby
fuck.thanks('Bob', 'Alice')
#=> { 'message' => 'Fuck you very much', 'subtitle' => '- Alice' }
```

#### That

```ruby
fuck.that('Alice')
#=> { 'message' => 'Fuck that', 'subtitle' => '- Alice' }
```

#### Thing

```ruby
fuck.thing('it', 'Alice')
#=> { 'message' => 'Fuck it.', 'subtitle' => '- Alice' }
```

#### This

```ruby
fuck.this('Alice')
#=> { 'message' => 'Fuck this.', 'subtitle' => '- Alice' }
```

#### What

```ruby
fuck.what('Alice')
#=> { 'message' => 'What the fuck?!', 'subtitle' => '- Alice' }
```

#### Yoda

```ruby
fuck.yoda('Bob', 'Alice')
#=> { 'message' => 'Fuck off, you must, Bob', 'subtitle' => '- Alice' }
```

#### You

```ruby
fuck.you('Bob', 'Alice')
#=> { 'message' => 'Fuck you, Bob.', 'subtitle' => '- Alice' }
```
