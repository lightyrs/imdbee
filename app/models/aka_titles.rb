class AkaTitles < ActiveRecord::Base
  self.table_name='aka_title'
  self.primary_key='id'

  validates :id, :movie_id, :title, :kind_id, presence: true
end
