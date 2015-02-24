class Keywords < ActiveRecord::Base
  self.table_name='keyword'
  self.primary_key='id'

  validates :id, :keyword, presence: true
end
