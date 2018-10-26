class DocumentsController < ApplicationController
   
    def index
        @documents = Document.all
        @reports = Report.all
        
        @documents = Document.search(params[:term])
    end
    

    def new

    end

    def show
        @document = Document.find(params[:id])
        render json: @document

       # respond_to do |format|
         #   format.json 
          #  render :partial => "documents/show.json"
       # end
    end

    def create
        #render plain: params[:document].inspect
        @document = Document.new(document_params)

        @document.save
        redirect_to @document
    end

    def destroy
        @document = Document.find(params[:id])
        @document.destroy

        redirect_to @document, notice: "Delete success"
      end

   # def document_params
        #params.require(:document).permit(:name, :description, :document_type, :access, :uploaded_file, :term)
   # end

    private def document_params
        params.require(:document).permit(:name, :description, :document_type, :actioner_access, :uploaded_file, :term)
    end
end
