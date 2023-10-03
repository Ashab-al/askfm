class Post < ApplicationRecord
    belongs_to :user

    validates :text, presence: true, length: { in: 100..1500 }
    validates :title, presence: true, length: { in: 10..100 }

end
