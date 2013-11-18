class CreateApplicants < ActiveRecord::Migration
  def change
    create_table :applicants do |t|
      t.string :full_name
      t.string :email
      t.string :skype
      t.string :twitter
      t.date :birthdate
      t.string :current_location
      t.text :schooling_info
      t.text :reference
      t.text :why_us
      t.text :archive_through_hs
      t.text :previous_projects
      t.text :previous_tools
      t.text :most_admired_project
      t.timestamps
    end
  end
end
