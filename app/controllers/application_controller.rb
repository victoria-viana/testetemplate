class ApplicationController < ActionController::Base
  before_action :authenticate_admin!

  layout 'admin_lte_2'

end
