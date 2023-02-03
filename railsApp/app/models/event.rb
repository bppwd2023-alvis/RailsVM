class Event < ApplicationRecord
    has_one_attached :photo
    validates :title, :eventstart, :eventend, presence: true
    validate :countFeatured

    def start_time
        eventstart
    end

    def countFeatured
        if Event.where(featured: true).length >= 4
            errors.add(:featured, "can't be greater than 4")
        end
    end
end