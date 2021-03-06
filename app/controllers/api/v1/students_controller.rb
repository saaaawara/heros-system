module Api
    module V1
        class StudentsController < ApplicationController

            # GET /students
            def index
                @students = Student.all
                render 'api/v1/students/index', formats: 'json', handlers: 'jbuilder'
            end

            # POST /students
            def create 
                @student = Student.new(student_params)
                if @student.save
                    # 空の宿題を登録
                    @homework = Homework.new(student_id: @student[:id])                   
                    if @homework.save
                        render 'api/v1/students/create', formats: 'json', handlers: 'jbuilder'
                    end
                end
                    # render json: @student.errors, status: :unprocessable_entity
            end

            # GET /students/1
            def show
                @student = Student.find_by(id: params[:id].to_i)
                render 'api/v1/students/show', formats: 'json', handlers: 'jbuilder'
            end
            
            # DELETE /users/1
            def destroy
                @student = Student.find_by(id: params[:id].to_i)
                @student.destroy
            end

            def student_params
                params.require(:student).permit(:grade, :name)
            end
        end
    end
end
