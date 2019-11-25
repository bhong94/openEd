class Mentor < ApplicationRecord
    # class relationships -> this establishes foreign_key for user account
    belongs_to :user_id, class_name: 'User'

    # define "fullname"
    def fullname
        return self.firstName + " " + self.lastName
    end

    # algorithm for full text searching
    def self.text_search(query)
        if query.present?
            where("\"firstName\" @@ :q or \"lastName\" @@ :q or \"bio\" @@ :q or \"collegeName\" @@ :q or \"specialty\" @@ :q or \"collegeYear\" @@ :q or \"major\" @@ :q", q: query)
        else
            all
        end
    end
end
