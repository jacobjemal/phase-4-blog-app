class User < ApplicationRecord
    has_many :blogs
    has_secure_password
    
    
    validates :username, presence: true, uniqueness: true
    validates :email, format: /\w+@\w+\.{1}[a-zA-Z]{2,}/, presence: true, uniqueness: true
    validate :permitted_emails

    def permitted_emails
        unless email.match?(/gmail.com|yahoo.com|icloud.com/)
            errors.add(:permitted_emails, "Sorry, that email isn't permitted. ONLY: gmail.com | yahoo.com | icloud.com")
        end
    end 
end
