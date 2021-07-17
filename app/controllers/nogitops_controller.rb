class NogitopsController < ApplicationController
  layout "account"
  before_action :authenticate_user!, only: :index
  def index
  end
end
