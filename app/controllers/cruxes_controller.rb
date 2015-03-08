class CruxesController < ApplicationController

  before_action :authenticate_user!, only: [:index, :edit, :new, :create, :desotry]

  def index
    @user = current_user
    @crux = @user.cruxes
  end

  def show
  end

  def new
  end

  def destroy
  end
end
