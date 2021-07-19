class NogitopsController < ApplicationController
  layout "account"
  before_action :authenticate_user!
  def index
  end
end
