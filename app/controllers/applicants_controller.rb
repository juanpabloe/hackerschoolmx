class ApplicantsController < ApplicationController

  def new
    @applicant = Applicant.new
  end

  def create
    @applicant = Applicant.new(applicant_params)

    if @applicant.save
      redirect_to root_path, notice: 'Tu solicitud ha sido creada.'
    else
      render action: 'new'
    end
  end


  private

  def applicant_params
    params.require(:applicant).permit(
      :full_name, :email, :skype, :twitter, :birthdate, :current_location,
      :schooling_info, :reference, :why_us, :archive_through_hs,
      :previous_projects, :previous_tools, :most_admired_project
    )
  end

end
