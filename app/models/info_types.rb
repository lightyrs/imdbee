class InfoTypes < ActiveRecord::Base
  self.table_name='info_type'
  self.primary_key='id'

  validates :id, :info, presence: true
  validates :info, uniqueness: true
end
