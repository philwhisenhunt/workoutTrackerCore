class ExerciseSetsController < ApplicationController
  before_action :get_exercise_set, only: %i[show edit delete update]
  
  def new
    @exercise_set = ExerciseSet.new
  end

  def create
    @exercise_set = ExerciseSet.new(exercise_set_params)
    if @exercise_set.save
      redirect_to @exercise_set
    else
      flash[:error] = "Didn't save"
      render :new
    end
  end

  def edit

  end

  def destroy
    ExerciseSet.find_by(params)

    ExerciseSet.destroy
  end

  def update
   
  end

  def show
    
  end

  def exercise_set_params
    params.require(:exercise_set).permit(
      :exercise_type,
      :rep_count
    )
  end

  private
  def get_exercise_set
    @exercise_set = ExerciseSet.find(params[:id])
  end
end
