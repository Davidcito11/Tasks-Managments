class EnterprisesController < ApplicationController
   
    # GET all
    def index
        @enterprises = Enterprise.all
        render json: @enterprises
    end

    # GET filter by id
    def show
       render json = enterprise
    end

    # POST Create new enterprise
    def create
        @enterprise = Enterprise.new(enterprise_params)
        if @enterprise.save
            render json: @enterprise, status: :create 
        end
    end

    # PUT update enterprise
    def update
        if enterprise.update(enterprise_params)
            render json: enterprise   
        end
    end
    
    # PUT update enabled of the enterprise
    def update_enabled
        if enterprise.update(enable: !enterprise.enable)
            render json: enterprise
        end
    end

    # DELETE enterprise
    def destroy
        enterprise.destroy
    end
    
    private

    def enterprise_params
        params.require(:enterprise).permit(:nit, :address, :mobile, :enable)        
    end

    def enterprise
        @enterprise = Enterprise.find(params[:id])
    end
    

end
