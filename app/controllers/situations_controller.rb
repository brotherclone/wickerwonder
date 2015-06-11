class SituationsController < ApplicationController
  http_basic_authenticate_with name: "gabe", password: "poopington"
  before_action :set_situation, only: [:show, :edit, :update, :destroy]

  def index
    @situations = Situation.all
  end


  def show
  end


  def new
    @situation = Situation.new
  end


  def edit
  end

  def create
    @situation = Situation.new(situation_params)

    respond_to do |format|
      if @situation.save
        format.html { redirect_to @situation, notice: 'Situation was successfully created.' }
        format.json { render :show, status: :created, location: @situation }
      else
        format.html { render :new }
        format.json { render json: @situation.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @situation.update(situation_params)
        format.html { redirect_to @situation, notice: 'Situation was successfully updated.' }
        format.json { render :show, status: :ok, location: @situation }
      else
        format.html { render :edit }
        format.json { render json: @situation.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @situation.destroy
    respond_to do |format|
      format.html { redirect_to situations_url, notice: 'Situation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_situation
      @situation = Situation.find(params[:id])
    end

    def situation_params
      params.require(:situation).permit(:name, :description, :situationimg, :situationthumbnail, :headingcolor)
    end
end
