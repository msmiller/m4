class Listing < ApplicationRecord

  include AlgoliaSearch

  has_many :attribs

  algoliasearch do
    attribute :listing do
      { name: listing.name, email: listing.compaany }
    end
    attribute :attribs do
      # build an array of public specialization (include only `title` and `another_attr`)
      specializations.select { |s| s.public? }.map do |s|
        { key: s.value, value: s.value }
      end
    end
  end

end
