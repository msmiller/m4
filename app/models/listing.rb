class Listing < ApplicationRecord

  include AlgoliaSearch

  has_many :attribs

  algoliasearch do
    attributes :name, :company, :state
    attributesToIndex ['name', 'company', 'unordered(state)']
    attribute :attribs do
      # build an array of public specialization (include only `title` and `another_attr`)
      #attribs.map do |s|
      #  { key: s.key, value: s.value } if s.value == 't'
      #end
      #attribs.map do |s|
      #  { key: s.key, value: s.value } if s.value == 't'
      #end.compact
      attribs.map do |s|
          { s.key => s.value }
      end.reduce Hash.new, :merge
    end

  end

end
