class MovieLinks < ActiveRecord::Base
  self.table_name='movie_link'
  self.primary_key='id'

  validates :id, :movie_id, :linked_movie_id, :link_type_id, presence: true

  belongs_to :link_type, foreign_key: 'link_type_id', class_name: 'LinkTypes', primary_key: 'id'
  belongs_to :title, foreign_key: 'linked_movie_id', class_name: 'Titles', primary_key: 'id'
  belongs_to :title, foreign_key: 'movie_id', class_name: 'Titles', primary_key: 'id'
end
