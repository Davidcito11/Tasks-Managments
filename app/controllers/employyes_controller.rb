class EmployyesController < ApplicationController
     # GET all
      def index
         @employyes = Employye.all
         render json: @employyes
      end 

      # GET filter by id
      def show
         render json: employye
      end    

      # POST Create new employye
      def create
         @employye = Employye.new(employye_params)
         if @employye.save
            render json: @employye, status: :created
         end
      end   

      # PUT update employye
      def update
        if employye.update(employye_params)
            render json: employye
        end
      end

      # PUT update enabled of the employye
      def update_enabled
         if employye.update(enable: !employye.enable)
            render json: employye
         end
      end

      # DELETE employye
      def destroy
         employye.destroy
      end

      private

      def employye_params
         params.require(:employye).permit(:name, :last_name, :document, :mobile, :salary)
      end
         
      def employye
         Employye.find(params[:id])
      end

end
