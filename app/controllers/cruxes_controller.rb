class CruxesController < ApplicationController

  before_action :authenticate_user!, only: [:index, :edit, :new, :create, :desotry]

  def index
    @user = current_user
    @cruxes = @user.cruxes
    @crux = Crux.new
  end

  def show
  end

  def new
    @crux = Crux.new
  end


  def create
    @crux = Crux.new(crux_params)
    @crux.user_id = current_user.id

    if @crux.save
      redirect_to root_path
    else
      render action: "index", notice: "There was an error adding the crux."
    end
  end

  def destroy
  end


  def reset_crux
    @crux = Crux.find(params[:id])
    @crux.created_at = Time.now
    @crux.save
    redirect_to root_path
  end



  def update
    @crux = Crux.find(params[:id])
    if @crux.update_attributes(crux_params)
      redirect_to root_path
    end
  end


  def edit_crux
    @crux = Crux.find(params[:id])
  end


  def delete_crux
    @crux = Crux.find(params[:id])
    @crux.destroy
    @crux.save
    redirect_to root_path
  end

  private

  def crux_params
    params.require(:crux).permit(:description)
  end
end
