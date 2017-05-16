# CsvCountrySelectorEn

Provide helpers and selectors for an English country and language list based on a csv file.

Based on: https://github.com/ikuseiGmbH/csv_country_selector

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'csv_country_selector_en'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install csv_country_selector_en

## Usage

```ruby
CsvCountrySelectorEn::Country.short_for("Germany") => "DE"
```

```ruby
CsvCountrySelectorEn::Country.long_for("DE") => "Germany"
```

```ruby
CsvCountrySelectorEn::Country.short_list => ["DE", "DK", "EE", ...]
```

```ruby
CsvCountrySelectorEn::Country.long_list => ["Germany", "Denmark", "Estonia", ...]
```

```ruby
CsvCountrySelectorEn::Country.codes => { de: "Germany", dk: "Denmark", ee: "Estonia", ... }
```

```ruby
CsvCountrySelectorEn::Country.is_in_eu?("de") => true
```

```ruby
CsvCountrySelectorEn::Country.is_in_eu?("DE") => true
```

```ruby
CsvCountrySelectorEn::Country.is_in_eu?("US") => false
```

## Development


## Contributing


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
