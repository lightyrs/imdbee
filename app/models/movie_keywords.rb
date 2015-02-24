class MovieKeywords < ActiveRecord::Base
  self.table_name='movie_keyword'
  self.primary_key='id'
  validates :id, :movie_id, :keyword_id, presence: true

  belongs_to :keyword, foreign_key: 'keyword_id', class_name: 'Keyword', primary_key: 'id'
  belongs_to :title, foreign_key: 'movie_id', class_name: 'Titles', primary_key: 'id'
end
