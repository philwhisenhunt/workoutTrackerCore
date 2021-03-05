class ExerciseSetsController < ApplicationController
  before_action :get_exercise_set, only: %i[show edit delete update]
  
  def new
    @exercise_set = ExerciseSet.new
  end

  def create
    exercise_sets = []
    params[:exercises].each do |key, value|
    Rails.logger.info "#{key} -> #{value}"

    #try this out
    if current_set = ExerciseSet.find_by(exercise_type: key)
      current_rep_count = current_set.rep_count
      current_set.update(rep_count: current_rep_count + value)
    end

    exercise_set = ExerciseSet.create(exercise_type: key, rep_count: value, occured: Time.zone.now.beginning_of_day)
    exercise_sets << exercise_set
    end
    render json:{exercise_sets: exercise_sets}
    # @exercise_set = ExerciseSet.new(exercise_set_params)
    # respond_to do |format|
    #   format.html do 
    #     if @exercise_set.save
    #       redirect_to @exercise_set
    #     else
    #       flash[:error] = "Didn't save"
    #       render :new
    #     end
    #   end

    #   format.json do
    #     if @exercise_set.save
    #       render json: @exercise_set
    #     else
    #       render json: "Failed to save."
    #    end
    #   end
    # end
  end

  def edit

  end

  def destroy
    @ExerciseSet.destroy
  end

  def update
    if @exercise_set.save
      redirect_to @exercise_set
    else
      flash[:error] = "Didn't save changes"
      redirect_to @exercise_set
    end
  end

  def show
    respond_to do |format|
      format.html do 
      end
      format.json do
        render json: @exercise_set
       end
    end
  end

  def exercise_set_params
    params.require(:exercise_set).permit(
      :exercise_type,
      :weight,
      :rep_count
    )
  end

  private
  def get_exercise_set
    @exercise_set = ExerciseSet.find(params[:id])
  end
end
