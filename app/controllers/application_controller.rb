class ApplicationController < ActionController::API
  include Response
  include ExceptionHandler
  include DeviseTokenAuth::Concerns::SetUserByToken
  before_action :authenticate_user!
  
end
