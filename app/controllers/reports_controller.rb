class ReportsController < InheritedResources::Base

  private

    def report_params
      params.require(:report).permit(:title, :file, :content)
    end
end

