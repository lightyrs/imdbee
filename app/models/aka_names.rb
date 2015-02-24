class AkaNames < ActiveRecord::Base
  self.table_name='aka_name'
  self.primary_key='id'

  validates :id, :person_id, :name, presence: true

  belongs_to :name, foreign_key: 'person_id', class_name: 'Names', primary_key: 'id'
end
