# Foaas Client

[![Build Status](https://travis-ci.org/petedmarsh/foaas-client.png)](https://travis-ci.org/petedmarsh/foaas-client)
[![Code Climate](https://codeclimate.com/github/petedmarsh/foaas-client.png)](https://codeclimate.com/github/petedmarsh/foaas-client)

A client for [FOAAS](http://foaas.com).

## API Version

Version `0.0.2` of the FOAAS API is supported.

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

### Cool

```ruby
fuck.cool('Alice')
#=> { 'message' => 'Cool story, Bro', '- Alice' }
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

#### Life

```ruby
fuck.life('Alice')
#=> { 'message' => 'Fuck my life.', 'subtitle' => '- Alice' }
```

#### Pink

```ruby
fuck.pink('Alice')
#=> { 'message' => 'Well, Fuck me pink.', 'subtitle' => '- Alice' }
```

#### That

```ruby
fuck.that('Alice')
#=> { 'message' => 'Fuck that', 'subtitle' => '- Alice' }
```

#### This

```ruby
fuck.this('Alice')
#=> { 'message' => 'Fuck this.', 'subtitle' => '- Alice' }
```

#### Chainsaw

```ruby
fuck.chainsaw('Bob', 'Alice')
#=> { 'message' => 'Fuck me gently with a chainsaw, Bob. Do I look like Mother Teresa?', 'subtitle' => '- Alice' }
```

#### Donut

```ruby
fuck.donut('Bob', 'Alice')
#=> { 'message' => 'Bob, go and take a flying fuck at a rolling donut.', 'subtitle' => '- Alice' }
```

#### King

```ruby
fuck.king('Bob', 'Alice')
#=> { 'message' => 'Oh fuck off, just really fuck off you total dickface. Christ Bob, you are fucking thick.', 'subtitle' => '- Alice' }
```

#### Linus

```ruby
fuck.linus('Bob', 'Alice')
#=> { 'message' => 'Bob, there aren't enough swear-words in the English language, so now I'll have to call you perkeleen vittupää just to express my disgust and frustration with this crap.', 'subtitle' => '- Alice' }
```

### Madison

```ruby
fuck.madison('Bob', 'Alice')
#=> { 'What you\'ve said is one of the most insantely idiotic things I have ever heard, Bob. At no point in your rambling, incoherent response were you even close to anything that could be considered a rational thought. Everyone in this room is now dumber for having listened to it. I award you no points Bob, and may God have mercy on your soul.', 'subtitle' => '- Alice' }
```

### Nugget

```ruby
fuck.nugget('Bob', 'Alice')
#=> { ''Well Bob, aren\'t you a shining example of a rancid fuck-nugget.', 'subtitle' => '- Alice' }
```

#### Off

```ruby
fuck.off('Bob', 'Alice')
#=> { 'message' => 'Fuck off, Bob.', 'subtitle' => '- Alice' }
```

### Outside

```ruby
fuck.outside('Bob', 'Alice')
#=> { 'message' => 'Bob, why don\'t you go outside and play hide-and-go-fuck-yourself?', 'subtitle' => '- Alice' }
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

### Yoda

```ruby
fuck.yoda('Bob', 'Alice')
#=> { 'message' => 'Fuck off, you must, Bob', 'subtitle' => '- Alice' }
```

#### You

```ruby
fuck.you('Bob', 'Alice')
#=> { 'message' => 'Fuck you, Bob.', 'subtitle' => '- Alice' }
```

#### Thing

```ruby
fuck.thing('it', 'Alice')
#=> { 'message' => 'Fuck it.', 'subtitle' => '- Alice' }
```

### What

```ruby
fuck.what('Alice')
#=> { 'message' => 'What the fuck?!', 'subtitle' => '- Alice' }
```
