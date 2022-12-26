class CampfiresController < ApplicationController
    def index
      @campfire = Campfire.all
    end  
    def new
        @campfire = Campfire.new
    end

    def create
        campfire = Campfire.new(campfire_params)
        if campfire.save
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
      end
    
      private
      def campfire_params
        params.require(:campfire).permit(:name,:shower,:gomi,:shop,:maki,:image)
      end
end
