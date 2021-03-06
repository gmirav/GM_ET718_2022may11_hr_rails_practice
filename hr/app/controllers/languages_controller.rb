class LanguagesController < ApplicationController
  def create
    @resume = Resume.find(params[:resume_id])
    @language = @resume.languages.create(language_params)
    redirect_to resume_path(@resume)
  end
 
  private
    def language_params
      params.require(:language).permit(:language, :level)
    end
end