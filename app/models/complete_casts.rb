class CompleteCasts < ActiveRecord::Base
  self.table_name='complete_cast'
  self.primary_key='id'

  validates :id, :subject_id, :status_id, presence: true

  belongs_to :title, foreign_key: 'movie_id', class_name: 'Titles', primary_key: 'id'
  belongs_to :comp_cast_type, foreign_key: 'status_id', class_name: 'CompCastTypes', primary_key: 'id'
  belongs_to :comp_cast_type, foreign_key: 'subject_id', class_name: 'CompCastTypes', primary_key: 'id'
end
