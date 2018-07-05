class DynamicAttributesController < ApplicationController
  #before_action :set_dive, only: [:show, :update, :destroy]

  # def index
  #   @attributes = DynamicAttribute.all
  #
  #   respond_to do |format|
  #     format.html    { render :index }
  #     format.json { render json: @attributes }
  #   end
  # end
  #
  def show
    set_dynamic_attribute

    respond_to do |format|
      format.html    { render :show }
      format.json { render json: @dynamic_attribute }
    end
  end
  #
  # def new
  #   @dive = Dive.new
  # end
  #
  # def edit
  #
  # end
  #
  # def update
  #   respond_to do |format|
  #     if @dive.update(dive_params)
  #       format.html { redirect_to @dive, notice: 'Dive was successfully updated.' }
  #       format.json { render json: @dive, status: :created }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @dive.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
  #
  # def create
  #   @dive = Dive.new(dive_params)
  #
  #   respond_to do |format|
  #     if @dive.save
  #       format.html { redirect_to @dive, notice: 'Dive was successfully created.' }
  #       format.json { render json: @dive, status: :created }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @dive.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
  #
  # def destroy
  #   @dive.destroy
  #   respond_to do |format|
  #     format.html { redirect_to dives_url, notice: 'Dive  was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  #
  # end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_dynamic_attribute
    @dynamic_attribute = DynamicAttribute.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def dive_params
    #params.fetch(:dive, {})
    params.require(:dive).permit(:id, :time, :title)
  end

end
