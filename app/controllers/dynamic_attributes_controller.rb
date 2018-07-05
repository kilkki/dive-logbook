class DynamicAttributesController < ApplicationController
  before_action :set_dynamic_attribute, only: [:show]

  def show
    set_dynamic_attribute

    respond_to do |format|
      format.html    { render :show }
      format.json { render json: @dynamic_attribute }
    end
  end

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
