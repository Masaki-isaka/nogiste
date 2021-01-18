class NogitopsController < ApplicationController
  layout "nogizaka"
  before_action :authenticate_nogimasa!, only: :index
  def index
  end
end
