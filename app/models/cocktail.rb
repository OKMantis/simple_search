class Cocktail < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :global_search,
  against: [:name, :preparation ],
  associated_against: {
    flavors: [:name],
    categories: [:name]
  },
  using: {
    tsearch: {any_word: true}
  }

  acts_as_taggable_on :categories
  acts_as_taggable_on :flavors

  $flavors = ['sweet', 'citrusy', 'sour', 'strong', 'bitter']
  $categories = ['Before Dinner Cocktail', 'All Day Cocktail',
    'Longdrink', 'Sparkling Cocktail', 'After Dinner Cocktail',
    'Hot Drink']
end


