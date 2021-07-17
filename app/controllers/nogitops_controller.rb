class NogitopsController < ApplicationController
  layout "nogizaka"
  before_action :authenticate_user!, only: :index
  def index
  end
end
