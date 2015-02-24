class MovieCompanies < ActiveRecord::Base
  self.table_name='movie_companies'
  self.primary_key='id'

  validates :id, :movie_id, :company_id, :company_type_id, presence: true

  belongs_to :company_name, foreign_key: 'company_id', class_name: 'CompanyNames', primary_key: 'id'
  belongs_to :company_type, foreign_key: 'company_type_id', class_name: 'CompanyTypes', primary_key: 'id'
  belongs_to :title, foreign_key: 'movie_id', class_name: 'Titles', primary_key: 'id'
end
