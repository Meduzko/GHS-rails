class HomepageController < ApplicationController
     
    def index
        @documents = Document.all
        @auctioneers = Auctioneer.all
        @reports = Report.all
    end
    


end
