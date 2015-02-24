class LinkTypes < ActiveRecord::Base
  self.table_name='link_type'
  self.primary_key='id'

  validates :id, :link, presence: true
  validates :link, uniqueness: true
end
