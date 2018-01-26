module Api 
    module V1 
        class HomeworksController < ApplicationController 

            # GET /homeworks 
            def index 
                @homeworks = Homework.all 
                render 'api/v1/homeworks/index', formats: 'json', handlers: 'jbuilder' 
            end 

            # POST /homeworks
            def create
                # @homeworks = Homework.new(student_id: params[:student_id], date: "2018-01-11")
                @homeworks = Homework.new(homework_params)
                @homeworks.save
            end

            # POST /pre_homework 
            def pre_homework 
                @homework = Homework.where(student_id: params[:student_id])
                                .order("date DESC").limit(1)
                p "start"
                p @homework
                p "end"
                render 'api/v1/homeworks/pre_homework', formats: 'json', handlers: 'jbuilder'
            end 

            def homework_params
                params.require(:homework).permit(:student_id, :teacher_id,
                                    :date, :flag,:content)
            end
        end 
    end 
end