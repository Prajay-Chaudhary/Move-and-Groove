class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:show, :edit, :update, :destroy]
  #before_action :require_user, except: [:show, :index]
  #before_action :require_same_user, only: [:edit, :update, :destroy]
  
  def show
  end

  def index
    @activities = Activity.all

  end

  def new
    @activity = Activity.new
  end

  def edit
  end

  def create
    @activity = Activity.new(activity_params)
    @activity.user = User.first

    if @activity.save
      flash[:notice] = "Activity was created successfully."
       redirect_to @activity
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def update
    if @activity.update(activity_params)
      flash[:notice] = "Activity was updated successfully"
      redirect_to @activity
    else
      render 'edit', status: :unprocessable_entity
    end
  end

  def destroy
    @activity.destroy
    redirect_to activities_path, status: :see_other
  end

  private

  def set_activity
    @activity = Activity.find(params[:id])
  end

  def activity_params
    params.require(:activity).permit(:activity_name, :activity_date, :duration)
  end

  #def require_same_user
    #if current_user != @activity.user
     # flash[:alert] = "You can only delete your own Activity"
      #redirect_to @activity
    #end
  #end


end
