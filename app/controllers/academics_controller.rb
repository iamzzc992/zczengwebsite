class AcademicsController < ApplicationController
  def index
    @academics = Academic.all
  end

  def show
    @academic = Academic.find(params[:id])
  end

  def new
  end

  def create
    @academic = Academic.new(academic_params)

    @academic.save
    redirect_to @academic
  end

  private
    def academic_params
      params.require(:academic).permit(:title)
    end
end
