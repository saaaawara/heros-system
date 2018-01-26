module Api
    module V1
        class ClassesController < ApplicationController

            # GET /classes
            def index
                @classes = Progress.all
                render 'api/v1/classes/index', formats: 'json', handlers: 'jbuilder'
            end

            # POST /classes
            def create 
                @class = Progress.new(class_params)
                if @class.save
                    render 'api/v1/classes/create', formats: 'json', handlers: 'jbuilder'
                end
                    # render json: @student.errors, status: :unprocessable_entity
            end

            # GET /classes/1
            def show
                @class = Progress.find_by(id: params[:id].to_i)
                render 'api/v1/classes/show', formats: 'json', handlers: 'jbuilder'
            end

            # DELETE /classes/1
            def destroy
                @class = Proress.find_by(id: params[:id].to_i)
                @class.destroy
            end

            def class_params
                params.require(:class).permit(:student_id, :teacher_id, :date,
                                                :content, :comment, :homework_id)
            end
        end
    end
end
