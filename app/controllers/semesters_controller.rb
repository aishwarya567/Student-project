class SemestersController < ApplicationController
    
    def index
        @semesters = Semester.all
    end
    
      def show
        @semesters = Semester.find(params[:id])
      end
    
      def new
        @semesters = Semester.new
      end

      def create
        @semesters = Semester.new(semester_params)
          if @semesters.save
            redirect_to semesters_path
          else
            render :new
          end

          def semester_params
            params.require(:semester).permit(:sem_name)
          end
      end
    

    
    
end
