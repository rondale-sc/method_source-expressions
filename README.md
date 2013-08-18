# MethodSource::Expressions

Small extension to [method_source](https://github.com/banister/method_source).  It adds `#expressions` to the Proc class.  This method returns a hash of expressions defined inside a given Proc/Lambda.  Each expression object knows its range of line numbers, its source, and its source_location.

## Installation

Add this line to your application's Gemfile:

    gem 'method_source-expressions'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install method_source-expressions

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
