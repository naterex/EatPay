class QrCodesController < ApplicationController
  def new
  end

  def create
  	@qr = RQRCode::QRCode.new( qr_code_params[:order_id], size: 4)
  end

  private
  	def qr_code_params
  		params.require(:qr_code).permit(:order_id)
  	end
end
