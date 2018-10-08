class MeetingsController < InheritedResources::Base

  private

    def meeting_params
      params.require(:meeting).permit(:announcement, :agenda, :consideration_docs, :solutions, :accepted_solutions)
    end
end

