class CompCastTypes < ActiveRecord::Base
  self.table_name='comp_cast_type'
  self.primary_key='id'

  validates :id, :kind, presence: true
  validates :kind, uniqueness: true
end
