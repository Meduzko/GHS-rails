class SpecialinfosController < ApplicationController

  def index
    @specialinfos = Specialinfo.all
    
    #@documents = Document.search(params[:term])
end


def new

end

def show
    @specialinfo = Specialinfo.find(params[:id])
    render json: @specialinfo

   # respond_to do |format|
     #   format.json 
      #  render :partial => "documents/show.json"
   # end
end

def create
    #render plain: params[:document].inspect
    @specialinfo = Specialinfo.new(specialinfo_params)

    @specialinfo.save
    redirect_to @specialinfo
end

def destroy
    @specialinfo = Specialinfo.find(params[:id])
    @specialinfo.destroy

    redirect_to @specialinfo, notice: "Delete success"
  end




  private

    def specialinfo_params
      params.require(:specialinfo).permit(:name, :description, :document_type, :actioner_access)
    end
end

