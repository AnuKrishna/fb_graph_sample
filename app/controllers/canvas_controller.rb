class CanvasController < ApplicationController
  def create
    auth = Facebook.auth.from_signed_request(params[:signed_request])
    user = auth.user.fetch
    render :text => "Hello #{user.name}!"
  end
end
