class CompanyTypes < ActiveRecord::Base
  self.table_name='company_type'
  self.primary_key='id'

  validates :id, :kind, presence: true
  validates :kind, uniqueness: true
end
