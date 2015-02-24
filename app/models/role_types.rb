class RoleTypes < ActiveRecord::Base
  self.table_name='role_type'
  self.primary_key='id'
  validates :id, :role, presence: true
  validates :role, uniqueness: true
end
