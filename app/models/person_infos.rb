class PersonInfos < ActiveRecord::Base
  self.table_name='person_info'
  self.primary_key='id'

  validates :id, :person_id, :info_type_id, :info, presence: true

  belongs_to :info_type, foreign_key: 'info_type_id', class_name: 'InfoTypes', primary_key: 'id'
  belongs_to :name, foreign_key: 'person_id', class_name: 'Names', primary_key: 'id'
end
