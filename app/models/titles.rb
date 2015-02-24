class Titles < ActiveRecord::Base
  self.table_name='title'
  self.primary_key='id'

  validates :id, :title, :kind_id, presence: true

  belongs_to :title, foreign_key: 'episode_of_id', class_name: 'Titles', primary_key: 'id'
  belongs_to :kind_type, foreign_key: 'kind_id', class_name: 'KindTypes', primary_key: 'id'
end
