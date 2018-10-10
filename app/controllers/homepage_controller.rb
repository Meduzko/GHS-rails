class HomepageController < ApplicationController
     
    def index
        @documents = Document.all
        @reports = Report.all
    end
    


end
