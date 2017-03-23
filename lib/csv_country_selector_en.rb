require "csv_country_selector_en/version"
require "csv"

module CsvCountrySelectorEn
  class Country
    attr_reader :codes
    attr_reader :eu_codes

    def self.codes
      read_csv(countries_file_path).inject({}) do |a, b|
        a.merge!(b[0].force_encoding("UTF-8") => b[5].force_encoding("UTF-8"))
      end
    end

    def self.eu_codes
      read_csv(eu_countries_file_path).inject({}) do |a, b|
        a.merge!(b[0].force_encoding("UTF-8") => b[5].force_encoding("UTF-8"))
      end
    end

    def self.short_for(country_name)
      country = codes.select { |_k, v| v.casecmp(country_name).zero? }.first
      return unless country
      country.first
    end

    def self.long_for(country_name)
      country = codes.select { |k, _v| k.casecmp(country_name).zero? }.first
      return unless country
      country.last
    end

    def self.short_list
      codes.keys
    end

    def self.long_list
      codes.values
    end

    def self.in_eu?(country_short_name)
      eu_codes.keys.include?(country_short_name.upcase)
    end

    # private class methods

    def self.read_csv(file_path)
      ::CSV.read(file_path, col_sep: ";")
    end
    private_class_method(:read_csv)

    def self.countries_file_path
      "#{File.dirname(File.expand_path(__FILE__))}/csv_country_selector_en/countries.csv"
    end
    private_class_method(:countries_file_path)

    def self.eu_countries_file_path
      "#{File.dirname(File.expand_path(__FILE__))}/csv_country_selector_en/eu_countries.csv"
    end
    private_class_method(:eu_countries_file_path)
  end
end
