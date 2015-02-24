class CompanyNames < ActiveRecord::Base
  self.table_name='company_name'
  self.primary_key='id'

  validates :id, :name, presence: true
end
