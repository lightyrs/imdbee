class CharNames < ActiveRecord::Base
  self.table_name='char_name'
  self.primary_key='id'

  validates :id, :name, presence: true
end
