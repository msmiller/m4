#### RAILS GEM ####

Listing.first.attribs.map do |s|
  { s.key => s.value }
end.reduce Hash.new, :merge


#### BASE API GEM ####

reload!

require 'algoliasearch'

Algolia.init :application_id => "A6K37I7DGO",
             :api_key        => "07ae34b27bfa6859528d98b16dbfa2ba"

# List indexes
 Algolia.list_indexes

2.2.3 :011 > hits = Listing.search("Trump year office wall")