class AuctioneersController < ApplicationController
  def index
    @auctioneers = Auctioneer.all
    
    @auctioneers = Auctioneer.search(params[:term])
  end


  def new
    
  end

  def show
      @auctioneer = Auctioneer.find(params[:id])
  end

  def create
      #render plain: params[:document].inspect
      @auctioneer = Auctioneer.new(auctioneer_params)

      @auctioneer.save
      redirect_to @auctioneer
  end

  def destroy
      @auctioneer = Auctioneer.find(params[:id])
      @auctioneer.destroy

      redirect_to @auctioneer, notice: "Delete success"
    end

 # def document_params
      #params.require(:document).permit(:name, :description, :document_type, :access, :uploaded_file, :term)
 # end

  private def auctioneer_params
      params.require(:auctioneer).permit(:doc_id, :name, :description, :document_type, :uploaded_file, :term)
  end
end
