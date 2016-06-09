# Changelog

## HEAD

* Implement the following FOAAS methods:
  * Back
  * Bday
  * Bm
  * Gfy
  * Give
  * Greed
  * Keep
  * Keep calm
  * Look
  * Looking
  * Me
  * Mornin
  * No
  * Single
  * Think

## v1.5.0

* Implement the following FOAAS methods:
  * Do something
  * Retard
  * Thumbs

## v1.4.0

* Implement the following FOAAS methods:
  * Family
  * Shutup
  * Zayn

## v1.3.0

* Implement the following FOAAS methods:
  * Bucket
  * Tucker

## v1.2.0

* Implement the following FOAAS methods:
  * Dalton
* Refactor the way the JSONP callback parameter is added to the FOAAS url
* Add support for i18n parameter
* Add support for shoutcloud parameter

## v1.1.0

* Fix example for JSONP response type (typo: `\` instead of `"`)
* Implement the following FOAAS methods:
  * Awesome
* Fix example for Ballmer method in README (subtile was missing '- ' prefix)
* Fix example for Field method in README (parameters incorrectly ordered)

## v1.0.0

* Fix formatting errors in README (heading level for method names)
* Add documentation for Flying method to README
* Fix documentation for Field method (key missing for subtitle)
* Fix documentation for Because method (missing dash in subtitle value)
* Alphabetise examples in Response Types section of README
* Update supported API version in README to `0.1.0`
* Implement the following FOAAS methods:
  * Bus
  * Bye
  * Diabetes
  * Operations (__Note:__ this is not an insult, it returns the avaialable methods)
  * Version (__Note:__ this is not an insult, it returns the FOAAS version)
  * Xmas
* Add support for JSONP response type
* Previously if the type was explicitly given as `:json` the reponse from FOAAS would
  be parsed and returned as a Hash. Now, if no type is specified a request is made to
  FOAAS with `accept/json` as the Accept-Type and the result **is** parsed and returned
  as a Hash but if type __is__ specified as `:json` then the raw JSON will be returned.
  This makes the responses for the various return types consistent. Example:

  ```ruby
  # Previous behaviour:

  fuck.because('Alice')
  #=> { 'message' => '...', ... }

  fuck.because('Alice', :json)
  #=> { 'message' => '...', ... }

  fuck.because('Alice', :xml)
  #=> '<?xml version="1.0" encoding="UTF-8"?>...'

  # New behaviour:

  fuck.because('Alice')
  #=> { 'message' => '...', ... }

  fuck.because('Alice', :json)
  #=> '{ "message": "...", ... }'

  fuck.because('Alice', :xml)
  #=> '<?xml version="1.0" encoding="UTF-8"?>...'
  ```

## v0.2.0

* Fix errors in README
* Add support for XML response type
* Implement the following FOAAS methods:
  * Ballmer
  * Field
  * Caniuse
  * Because
  * What
  * Yoda
  * Nugget
  * Cool
  * Madison

## v0.1.0

* Implement the following FOAAS methods:
  * Outside
  * Fascinating
* Raise `NoMethodError` if unsupported method is called on `Foaas::Client`
* Fix errors in README

## v0.0.0

* Implement the following FOAAS methods:
  * Everyone
  * Everything
  * Life
  * Pink
  * That
  * This
  * Chainsaw
  * Donut
  * King
  * Linus
  * Off
  * Shakespeare
  * Thanks
  * You
  * Thing
