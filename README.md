# Daslabs
Tools for streamlining and warpspeeding development for leapfrog scenarios

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'daslabs'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install daslabs

## Usage

==> gem install daslabs
Successfully installed daslabs-0.5.0
1 gem installed

==> gem list -r daslabs



*** REMOTE GEMS ***

daslabs (0.5.0)

==> irb
irb(main):001:0> require 'daslabs'
=> true


irb(main):007:0> DasLabs.hi("Hello")
=> nil
irb(main):008:0> quit()


The xml file should be in your pwd folder as output.html

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/daslabs. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Daslabs project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/daslabs/blob/master/CODE_OF_CONDUCT.md).

# Helpful Links

http://guides.rubygems.org/make-your-own-gem/

https://www.digitalocean.com/community/tutorials/how-to-package-and-distribute-ruby-applications-as-a-gem-using-rubygems

# Publishing

Make updates to gem

Update VERSION in version.rb

==> gem build daslabs.gemspec

==> gem push daslabs-0.x.0.gem


# Check version

==> gem list

or

==> gem list -r daslabs

# Debug and dev

==> bundler console
