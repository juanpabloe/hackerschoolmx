class Applicant < ActiveRecord::Base

  validates :full_name, :email, :skype, :twitter, :birthdate,
            :current_location, :schooling_info, :reference, :why_us,
            :archive_through_hs, :previous_projects, :previous_tools,
            :most_admired_project, presence: true

  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }

end
