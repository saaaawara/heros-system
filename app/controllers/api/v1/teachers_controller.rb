module Api
    module V1
        class TeachersController < ApplicationController

            # GET /teachers
            def index
                @teachers = Teacher.all
                render 'api/v1/teachers/index', formats: 'json', handlers: 'jbuilder'
            end

            # POST /students
            def create
                @teacher = Teacher.new(teacher_params)
                if @teacher.save
                    render 'api/v1/teachers/create', formats: 'json', handlers: 'jbuilder'
                end
            end

            # GET /teachers/1
            def show
                @teacher = Teacher.find_by(id: params[:id].to_i)
                render 'api/v1/teachers/show', formats: 'json', handlers: 'jbuilder'
            end
            
            # DELETE /teachers/1
            def destroy
                @teacher = Student.find_by(id: params[:id].to_i)
                @teacher.destroy
            end

            def teacher_params
                params.require(:teacher).permit(:name)
            end
        end
    end
end