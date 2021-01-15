# Liquid::Render

**Update:** Liquid 5 is out now, thus rendering (haha) this gem unnecessary. I'll leave it up for the time being but there's really no more need for it.

This gem is simply a backport of code from the master branch of the [Liquid gem](https://github.com/shopify/liquid) to bring
support for the `render` tag to Liquid v4.0.3 (the current version released on
Rubygems).

## Installation

```ruby
# Gemfile
gem 'liquid'
gem 'liquid-render-tag'
```

Then require `liquid-render-tag` right after you require `liquid`.

## Usage

Information about the `render` tag can be found in [Shopify's Liquid Reference](https://shopify.dev/docs/themes/liquid/reference/tags/theme-tags#render).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
