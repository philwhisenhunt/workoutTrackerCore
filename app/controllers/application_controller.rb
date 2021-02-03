class ApplicationController < ActionController::Base
# before_action :set_cors

skip_before_action :verify_authenticity_token

end
