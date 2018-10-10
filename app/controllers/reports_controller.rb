class ReportsController < ApplicationController

  def index
    @reports = Report.all
  end


  def new

  end

  def show
      @report = Report.find(params[:id])
  end

  def create
      #render plain: params[:document].inspect
      @report = Report.new(report_params)

      @report.save
      redirect_to @report
  end

  def destroy
    @report = Report.find(params[:id])
    @report.destroy

    redirect_to @report, notice: "Delete success"
  end

  
  private

    def report_params
      params.require(:report).permit(:title, :file, :content, :date, :document)
    end


end

