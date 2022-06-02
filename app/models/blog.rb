class Blog < ApplicationRecord
    belongs_to :user
    has_many :comments

    validates :title, presence: true, uniqueness: true
end
