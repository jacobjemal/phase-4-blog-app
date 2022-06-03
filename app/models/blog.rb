class Blog < ApplicationRecord
    belongs_to :user #, dependent: :destroy
    has_many :comments #, dependent: :destroy

    validates :title, presence: true, uniqueness: true
end
