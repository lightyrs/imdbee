class MovieInfoIdxes < ActiveRecord::Base
  self.table_name='movie_info_idx'
  self.primary_key='id'

  validates :id, :movie_id, :info_type_id, :info, presence: true

  belongs_to :info_type, foreign_key: 'info_type_id', class_name: 'InfoTypes', primary_key: 'id'
  belongs_to :title, foreign_key: 'movie_id', class_name: 'Titles', primary_key: 'id'
end
