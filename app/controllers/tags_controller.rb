class TagsController < ApplicationController

    # GET all
    def index
        @Tags = Tag.all
        render json: @Tags
    end

    # GET filter by id
    def show
        render json: tag
    end

    # POST Create new tag
    def create
        @Tag = Tag.new.(tag_params)
        if @Tag.save
            render json: @Tag, status: :create          
        end
    end

    # PUT update tag
    def update
        if tag.update(tag_params)
            render json: tag
        end
    end

    # PUT update enabled of the tag
    def update_enabled
        if tag.update(enable: !tag.enable)
            render json: tag
        end
    end

    # DELETE tag
    def destroy
        tag.destroy
    end


    private

    def tag_params
        params.require(:tag).permit(:name, :color, :enable)
    end

    def tag
        @Tag = Tag.find(params[:id])
    end
end
