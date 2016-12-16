# OperatorFinder

Operator Finder is a flixable solution for finding mobile operator and its circle.
Our gem using Pay2All api for finding mobile operator and its circle.

## Getting started

OperatorFinder 0.1.0 works with rails 4 and above. You can add it to your Gemfile with:

```gem 'operator_finder' ```

Run the bundle command to install it.

After you install OperatorFinder and add it to your Gemfile, you need to run the generator:

``` rails generate operator_finder:instal ```

The generator will install an initializer which describes pay2all api token configuration option. It is imperative that you take a look at it and add your pay2all api token. When you are done, you are ready to use OperatorFinder.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

