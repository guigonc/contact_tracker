class Contact < ActiveRecord::Base
  has_many :page_views, foreign_key: :hash_identity, primary_key: :hash_identity
end
