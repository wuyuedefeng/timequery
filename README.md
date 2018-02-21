# Timequery
time range query

## Usage
```
between_range_column column_name, begin_at, end_at
day_range_column column_name, time = Time.current
week_range_column column_name, time = Time.current
month_range_column column_name, time = Time.current
year_range_column column_name, time = Time.current
```

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'timequery'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install timequery
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
