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

            # POST /progress
            def progress
                @homework = Homework.new(student_id: params[:student_id],
                                    teacher_id: params[:teacher_id],
                                    date: params[:date],
                                    flag: params[:flag],
                                    content: params[:homework_content])
                if @homework.save
                    @class = Progress.new(student_id: params[:student_id],
                                        teacher_id: params[:teacher_id],
                                        date: params[:date],
                                        content: params[:content],
                                        comment: params[:comment],
                                        homework_id: @homework[:id])
                    if @class.save
                        render 'api/v1/classes/progress', formats: 'json', handlers: 'jbuilder'
                    else 
                        render 'api/v1/classes/noprogress', formats: 'json', handlers: 'jbuilder'
                    end
                else
                        render 'api/v1/classes/noprogress', formats: 'json', handlers: 'jbuilder'
                end
            end

            def class_params
                params.require(:class).permit(:student_id, :teacher_id, :date,
                                                :content, :comment, :homework_id)
            end
        end
    end
end
