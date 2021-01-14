class HomeController < ApplicationController
    def index
        @semeters = Semester.all.order(:sem_id)
    end
  end
  