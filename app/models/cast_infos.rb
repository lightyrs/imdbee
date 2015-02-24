class CastInfos < ActiveRecord::Base
  self.table_name='cast_info'
  self.primary_key='id'

  validates :id, :person_id, :movie_id, :role_id, presence: true

  belongs_to :title, foreign_key: 'movie_id', class_name: 'Titles', primary_key: 'id'
  belongs_to :name, foreign_key: 'person_id', class_name: 'Names', primary_key: 'id'
  belongs_to :char_name, foreign_key: 'person_role_id', class_name: 'CharNames', primary_key: 'id'
  belongs_to :role_type, foreign_key: 'role_id', class_name: 'RoleTypes', primary_key: 'id'
end
