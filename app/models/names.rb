class Names < ActiveRecord::Base
  self.table_name='name'
  self.primary_key='id'

  validates :id, :name, presence: true
end
