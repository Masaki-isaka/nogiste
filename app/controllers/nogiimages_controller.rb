class PostsController < ApplicationController
  layout "nogizaka"
    
  def index
  end

  def new
    @post=Post.new
    @image=@post.image.build
  end

  def create
    @post=Post.new(post_params)
    @post.user_id=current_user.id
    @post.save!
    redirect_to "/nogiimages/2012/konno"
  end

  def destroy
    @post=Post.where(image.url)
    @post.destroy
    redirect_to "/nogiimages/2012/konno"
  end
  
  private
  def post_params
    params.require(:post).permit(images_attributes: [:file]).merge(user_id: current_user.id)
  end

end
