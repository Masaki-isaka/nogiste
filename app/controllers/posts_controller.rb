class PostsController < ApplicationController
  before_action :detect_device
  before_action :set_s3_direct_post
    
  def index
  end

  def konno
    @image=Image.where(place: "[\"konno\"]")
  end

  def new_konno
    @post=Post.new
    @post.images.new
  end

  def create_konno
    @post=Post.new(post_params)
    if @post.save
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2012_konno_path
  end

  def destroy_konno
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2012_konno_path
  end

  def two
  end

  def zepptokyo
    @image=Image.where(place: "[\"zepptokyo\"]")
  end

  def new_zepptokyo
    @post=Post.new
    @post.images.new
  end

  def create_zepptokyo
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2012_zepptokyo_path
  end

  def destroy_zepptokyo
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2012_zepptokyo_path
  end

  def three
  end

  def first
    @image=Image.where(place: "[\"first\"]")
  end

  def new_first
    @post=Post.new
    @post.images.new
  end

  def create_first
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2013_first_path
  end

  def destroy_first
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2013_first_path
  end

  def three_summer_sapporo
    @image=Image.where(place: "[\"three_summer_sapporo\"]")
  end

  def new_three_summer_sapporo
    @post=Post.new
    @post.images.new
  end

  def create_three_summer_sapporo
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2013_three_summer_sapporo_path
  end

  def destroy_three_summer_sapporo
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2013_three_summer_sapporo
  end

  def three_summer_fukuoka
    @image=Image.where(place: "[\"three_summer_fukuoka\"]")
  end

  def new_three_summer_fukuoka
    @post=Post.new
    @post.images.new
  end

  def create_three_summer_fukuoka
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2013_three_summer_fukuoka_path
  end

  def destroy_three_summer_fukuoka
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2013_three_summer_fukuoka_path
  end

  def three_summer_osaka
    @image=Image.where(place: "[\"three_summer_osaka\"]")
  end

  def new_three_summer_osaka
    @post=Post.new
    @post.images.new
  end

  def create_three_summer_osaka
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2013_three_summer_osaka_path
  end

  def destroy_three_summer_osaka
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2013_three_summer_osaka_path
  end

  def three_summer_nagoya
    @image=Image.where(place: "[\"three_summer_nagoya\"]")
  end

  def new_three_summer_nagoya
    @post=Post.new
    @post.images.new
  end

  def create_three_summer_nagoya
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2013_three_summer_nagoya_path
  end

  def destroy_three_summer_nagoya
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2013_three_summer_nagoya_path
  end

  def three_summer_tokyo
    @image=Image.where(place: "[\"three_summer_tokyo\"]")
  end

  def new_three_summer_tokyo
    @post=Post.new
    @post.images.new
  end

  def create_three_summer_tokyo
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2013_three_summer_tokyo_path
  end

  def destroy_three_summer_tokyo
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2013_three_summer_tokyo_path
  end

  def three_summer_final
    @image=Image.where(place: "[\"three_summer_final\"]")
  end

  def new_three_summer_final
    @post=Post.new
    @post.images.new
  end

  def create_three_summer_final
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2013_three_summer_final_path
  end

  def destroy_three_summer_final
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2013_three_summer_final_path
  end

  def three_xmas
    @image=Image.where(place: "[\"three_xmas\"]")
  end

  def new_three_xmas
    @post=Post.new
    @post.images.new
  end

  def create_three_xmas
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2013_three_xmas_path
  end

  def destroy_three_xmas
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2013_three_xmas_path
  end

  def four
  end

  def second
    @image=Image.where(place: "[\"second\"]")
  end

  def new_second
    @post=Post.new
    @post.images.new
  end

  def create_second
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2014_second_path
  end

  def destroy_second
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2014_second_path
  end

  def four_under
    @image=Image.where(place: "[\"four_under\"]")
  end

  def new_four_under
    @post=Post.new
    @post.images.new
  end

  def create_four_under
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2014_four_under_path
  end

  def destroy_four_under
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2014_four_under_path
  end

  def four_summer_osaka
    @image=Image.where(place: "[\"four_summer_osaka\"]")
  end

  def new_four_summer_osaka
    @post=Post.new
    @post.images.new
  end

  def create_four_summer_osaka
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2014_four_summer_osaka_path
  end

  def destroy_four_summer_osaka
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2014_four_summer_osaka_path
  end

  def four_summer_fukuoka
    @image=Image.where(place: "[\"four_summer_fukuoka\"]")
  end

  def new_four_summer_fukuoka
    @post=Post.new
    @post.images.new
  end

  def create_four_summer_fukuoka
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2014_four_summer_fukuoka_path
  end

  def destroy_four_summer_fukuoka
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2014_four_summer_fukuoka_path
  end

  def four_summer_sendai
    @image=Image.where(place: "[\"four_summer_sendai\"]")
  end

  def new_four_summer_sendai
    @post=Post.new
    @post.images.new
  end

  def create_four_summer_sendai
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2014_four_summer_sendai_path
  end

  def destroy_four_summer_sendai
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2014_four_summer_sendai_path
  end

  def four_summer_nagoya
    @image=Image.where(place: "[\"four_summer_nagoya\"]")
  end

  def new_four_summer_nagoya
    @post=Post.new
    @post.images.new
  end

  def create_four_summer_nagoya
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2014_four_summer_nagoya_path
  end

  def destroy_four_summer_nagoya
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2014_four_summer_nagoya_path
  end

  def four_summer_tokyo
    @image=Image.where(place: "[\"four_summer_tokyo\"]")
  end

  def new_four_summer_tokyo
    @post=Post.new
    @post.images.new
  end

  def create_four_summer_tokyo
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2014_four_summer_tokyo_path
  end

  def destroy_four_summer_tokyo
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2014_four_summer_tokyo_path
  end

  def four_under_second
    @image=Image.where(place: "[\"four_under_second\"]")
  end

  def new_four_under_second
    @post=Post.new
    @post.images.new
  end

  def create_four_under_second
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2014_four_under_second_path
  end

  def destroy_four_under_second
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2014_four_under_second_path
  end

  def four_under_xmas
    @image=Image.where(place: "[\"four_under_xmas\"]")
  end

  def new_four_under_xmas
    @post=Post.new
    @post.images.new
  end

  def create_four_under_xmas
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2014_four_under_xmas_path
  end

  def destroy_four_under_xmas
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2014_four_under_xmas_path
  end

  def four_xmas
    @image=Image.where(place: "[\"four_xmas\"]")
  end

  def new_four_xmas
    @post=Post.new
    @post.images.new
  end

  def create_four_xmas
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2014_four_xmas_path
  end

  def destroy_four_xmas
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2014_four_xmas_path
  end

  def five
  end

  def third
    @image=Image.where(place: "[\"third\"]")
  end

  def new_third
    @post=Post.new
    @post.images.new
  end

  def create_third
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2015_third_path
  end

  def destroy_third
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2015_third_path
  end

  def five_summer_sendai
    @image=Image.where(place: "[\"five_summer_sendai\"]")
  end

  def new_five_summer_sendai
    @post=Post.new
    @post.images.new
  end

  def create_five_summer_sendai
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2015_five_summer_sendai_path
  end

  def destroy_five_summer_sendai
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2015_five_summer_sendai_path
  end

  def five_summer_nagoya
    @image=Image.where(place: "[\"five_summer_nagoya\"]")
  end

  def new_five_summer_nagoya
    @post=Post.new
    @post.images.new
  end

  def create_five_summer_nagoya    
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2015_five_summer_nagoya_path
  end

  def destroy_five_summer_nagoya
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2015_five_summer_nagoya_path
  end

  def five_summer_hirosima
    @image=Image.where(place: "[\"five_summer_hirosima\"]")
  end

  def new_five_summer_hirosima
    @post=Post.new
    @post.images.new
  end

  def create_five_summer_hirosima    
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2015_five_summer_hirosima_path
  end

  def destroy_five_summer_hirosima
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2015_five_summer_hirosima_path
  end

  def five_summer_fukuoka
    @image=Image.where(place: "[\"five_summer_fukuoka\"]")
  end

  def new_five_summer_fukuoka
    @post=Post.new
    @post.images.new
  end

  def create_five_summer_fukuoka    
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2015_five_summer_fukuoka_path
  end

  def destroy_five_summer_fukuoka
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2015_five_summer_fukuoka_path
  end

  def five_summer_osaka
    @image=Image.where(place: "[\"five_summer_osaka\"]")
  end

  def new_five_summer_osaka
    @post=Post.new
    @post.images.new
  end

  def create_five_summer_osaka    
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2015_five_summer_osaka_path
  end

  def destroy_five_summer_osaka
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2015_five_summer_osaka_path
  end

  def five_summer_tokyo
    @image=Image.where(place: "[\"five_summer_tokyo\"]")
  end

  def new_five_summer_tokyo
    @post=Post.new
    @post.images.new
  end

  def create_five_summer_tokyo    
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2015_five_summer_tokyo_path
  end

  def destroy_five_summer_tokyo
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2015_five_summer_tokyo_path
  end

  def five_under_four
    @image=Image.where(place: "[\"five_under_four\"]")
  end

  def new_five_under_four
    @post=Post.new
    @post.images.new
  end

  def create_five_under_four    
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2015_five_under_four_path
  end

  def destroy_five_under_four
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2015_five_under_four_path
  end

  def five_under_budo
    @image=Image.where(place: "[\"five_under_budo\"]")
  end

  def new_five_under_budo
    @post=Post.new
    @post.images.new
  end

  def create_five_under_budo    
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2015_five_under_budo_path
  end

  def destroy_five_under_budo
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2015_five_under_budo_path
  end

  def five_xmas
    @image=Image.where(place: "[\"five_xmas\"]")
  end

  def new_five_xmas
    @post=Post.new
    @post.images.new
  end

  def create_five_xmas    
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2015_five_xmas_path
  end

  def destroy_five_xmas
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2015_five_xmas_path
  end

  def six
  end

  def seira
    @image=Image.where(place: "[\"seira\"]")
  end

  def new_seira
    @post=Post.new
    @post.images.new
  end

  def create_seira    
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2016_seira_path
  end

  def destroy_seira
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2016_seira_path
  end

  def six_under_tohoku
    @image=Image.where(place: "[\"six_under_tohoku\"]")
  end

  def new_six_under_tohoku
    @post=Post.new
    @post.images.new
  end

  def create_six_under_tohoku   
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2016_six_under_tohoku_path
  end

  def destroy_six_under_tohoku
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2016_six_under_tohoku_path
  end

  def maimai
    @image=Image.where(place: "[\"maimai\"]")
  end

  def new_maimai
    @post=Post.new
    @post.images.new
  end

  def create_maimai  
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2016_maimai_path
  end

  def destroy_maimai
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2016_maimai_path
  end

  def six_summer_osaka
    @image=Image.where(place: "[\"six_summer_osaka\"]")
  end

  def new_six_summer_osaka
    @post=Post.new
    @post.images.new
  end

  def create_six_summer_osaka 
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2016_six_summer_osaka_path
  end

  def destroy_six_summer_osaka
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2016_six_summer_osaka_path
  end

  def six_summer_nagoya
    @image=Image.where(place: "[\"six_summer_nagoya\"]")
  end

  def new_six_summer_nagoya
    @post=Post.new
    @post.images.new
  end

  def create_six_summer_nagoya
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2016_six_summer_nagoya_path
  end

  def destroy_six_summer_nagoya
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2016_six_summer_nagoya_path
  end

  def six_summer_sendai
    @image=Image.where(place: "[\"six_summer_sendai\"]")
  end

  def new_six_summer_sendai
    @post=Post.new
    @post.images.new
  end

  def create_six_summer_sendai
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2016_six_summer_sendai_path
  end

  def destroy_six_summer_sendai
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2016_six_summer_sendai_path
  end

  def six_summer_fukuoka
    @image=Image.where(place: "[\"six_summer_fukuoka\"]")
  end

  def new_six_summer_fukuoka
    @post=Post.new
    @post.images.new
  end

  def create_six_summer_fukuoka
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2016_six_summer_fukuoka_path
  end

  def destroy_six_summer_fukuoka
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2016_six_summer_fukuoka_path
  end

  def six_summer_tokyo
    @image=Image.where(place: "[\"six_summer_tokyo\"]")
  end

  def new_six_summer_tokyo
    @post=Post.new
    @post.images.new
  end

  def create_six_summer_tokyo
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2016_six_summer_tokyo_path
  end

  def destroy_six_summer_tokyo
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2016_six_summer_tokyo_path
  end

  def six_under_tyugoku
    @image=Image.where(place: "[\"six_under_tyugoku\"]")
  end

  def new_six_under_tyugoku
    @post=Post.new
    @post.images.new
  end

  def create_six_under_tyugoku
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2016_six_under_tyugoku_path
  end

  def destroy_six_under_tyugoku
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2016_six_under_tyugoku_path
  end

  def six_senbatu_xmas
    @image=Image.where(place: "[\"six_senbatu_xmas\"]")
  end

  def new_six_senbatu_xmas
    @post=Post.new
    @post.images.new
  end

  def create_six_senbatu_xmas
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2016_six_senbatu_xmas_path
  end

  def destroy_six_senbatu_xmas
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2016_six_senbatu_xmas_path
  end

  def six_under_xmas
    @image=Image.where(place: "[\"six_under_xmas\"]")
  end

  def new_six_under_xmas
    @post=Post.new
    @post.images.new
  end

  def create_six_under_xmas
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2016_six_under_xmas_path
  end

  def destroy_six_under_xmas
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2016_six_under_xmas_path
  end

  def seven
  end

  def univ
    @image=Image.where(place: "[\"univ\"]")
  end

  def new_univ
    @post=Post.new
    @post.images.new
  end

  def create_univ
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2017_univ_path
  end

  def destroy_univ
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2017_univ_path
  end

  def fifth
    @image=Image.where(place: "[\"fifth\"]")
  end

  def new_fifth
    @post=Post.new
    @post.images.new
  end

  def create_fifth
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2017_fifth_path
  end

  def destroy_fifth
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2017_fifth_path
  end

  def under_tokyo
    @image=Image.where(place: "[\"under_tokyo\"]")
  end

  def new_under_tokyo
    @post=Post.new
    @post.images.new
  end

  def create_under_tokyo
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2017_under_tokyo_path
  end

  def destroy_under_tokyo
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2017_under_tokyo_path
  end

  def sanki
    @image=Image.where(place: "[\"sanki\"]")
  end

  def new_sanki
    @post=Post.new
    @post.images.new
  end

  def create_sanki
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2017_sanki_path
  end

  def destroy_sanki
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2017_sanki_path
  end

  def seven_summer_tokyo
    @image=Image.where(place: "[\"seven_summer_tokyo\"]")
  end

  def new_seven_summer_tokyo
    @post=Post.new
    @post.images.new
  end

  def create_seven_summer_tokyo
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2017_seven_summer_tokyo_path
  end

  def destroy_seven_summer_tokyo
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2017_seven_summer_tokyo_path
  end

  def seven_summer_sendai
    @image=Image.where(place: "[\"seven_summer_sendai\"]")
  end

  def new_seven_summer_sendai
    @post=Post.new
    @post.images.new
  end

  def create_seven_summer_sendai
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2017_seven_summer_sendai_path
  end

  def destroy_seven_summer_sendai
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2017_seven_summer_sendai_path
  end

  def seven_summer_osaka
    @image=Image.where(place: "[\"seven_summer_osaka\"]")
  end

  def new_seven_summer_osaka
    @post=Post.new
    @post.images.new
  end

  def create_seven_summer_osaka
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2017_seven_summer_osaka_path
  end

  def destroy_seven_summer_osaka
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2017_seven_summer_osaka_path
  end

  def seven_summer_nagoya
    @image=Image.where(place: "[\"seven_summer_nagoya\"]")
  end

  def new_seven_summer_nagoya
    @post=Post.new
    @post.images.new
  end

  def create_seven_summer_nagoya
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2017_seven_summer_nagoya_path
  end

  def destroy_seven_summer_nagoya
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2017_seven_summer_nagoya_path
  end

  def seven_summer_nigata
    @image=Image.where(place: "[\"seven_summer_nigata\"]")
  end

  def new_seven_summer_nigata
    @post=Post.new
    @post.images.new
  end

  def create_seven_summer_nigata
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2017_seven_summer_nigata_path
  end

  def destroy_seven_summer_nigata
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2017_seven_summer_nigata_path
  end

  def seven_summer_final
    @image=Image.where(place: "[\"seven_summer_final\"]")
  end

  def new_seven_summer_final
    @post=Post.new
    @post.images.new
  end

  def create_seven_summer_final
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2017_seven_summer_final_path
  end

  def destroy_seven_summer_final
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2017_seven_summer_final_path
  end

  def seven_under_kyusyu
    @image=Image.where(place: "[\"seven_under_kyusyu\"]")
  end

  def new_seven_under_kyusyu
    @post=Post.new
    @post.images.new
  end

  def create_seven_under_kyusyu
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2017_seven_under_kyusyu_path
  end

  def destroy_seven_under_kyusyu
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2017_seven_under_kyusyu_path
  end

  def seven_under_kinki
    @image=Image.where(place: "[\"seven_under_kinki\"]")
  end

  def new_seven_under_kinki
    @post=Post.new
    @post.images.new
  end

  def create_seven_under_kinki
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2017_seven_under_kinki_path
  end

  def destroy_seven_under_kinki
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2017_seven_under_kinki_path
  end

  def eight
  end

  def ikoma
    @image=Image.where(place: "[\"ikoma\"]")
  end

  def new_ikoma
    @post=Post.new
    @post.images.new
  end

  def create_ikoma
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2018_ikoma_path
  end

  def destroy_ikoma
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2018_ikoma_path
  end

  def under_tyubu
    @image=Image.where(place: "[\"under_tyubu\"]")
  end

  def new_under_tyubu
    @post=Post.new
    @post.images.new
  end

  def create_under_tyubu
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2018_under_tyubu_path
  end

  def destroy_under_tyubu
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2018_under_tyubu_path
  end
  
  def sixth
    @image=Image.where(place: "[\"sixth\"]")
  end

  def new_sixth
    @post=Post.new
    @post.images.new
  end

  def create_sixth
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2018_sixth_path
  end

  def destroy_sixth
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2018_sixth_path
  end

  def eight_summer_fukuoka
    @image=Image.where(place: "[\"eight_summer_fukuoka\"]")
  end

  def new_eight_summer_fukuoka
    @post=Post.new
    @post.images.new
  end

  def create_eight_summer_fukuoka
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2018_eight_summer_fukuoka_path
  end

  def destroy_eight_summer_fukuoka
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2018_eight_summer_fukuoka_path
  end

  def eight_summer_osaka
    @image=Image.where(place: "[\"eight_summer_osaka\"]")
  end

  def new_eight_summer_osaka
    @post=Post.new
    @post.images.new
  end

  def create_eight_summer_osaka
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2018_eight_summer_osaka_path
  end

  def destroy_eight_summer_osaka
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2018_eight_summer_osaka_path
  end

  def eight_summer_nagoya
    @image=Image.where(place: "[\"eight_summer_nagoya\"]")
  end

  def new_eight_summer_nagoya
    @post=Post.new
    @post.images.new
  end

  def create_eight_summer_nagoya
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2018_eight_summer_nagoya_path
  end

  def destroy_eight_summer_nagoya
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2018_eight_summer_nagoya_path
  end

  def eight_summer_sendai
    @image=Image.where(place: "[\"eight_summer_sendai\"]")
  end

  def new_eight_summer_sendai
    @post=Post.new
    @post.images.new
  end

  def create_eight_summer_sendai
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2018_eight_summer_sendai_path
  end

  def destroy_eight_summer_sendai
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2018_eight_summer_sendai_path
  end

  def under_hokkaido
    @image=Image.where(place: "[\"under_hokkaido\"]")
  end

  def new_under_hokkaido
    @post=Post.new
    @post.images.new
  end

  def create_under_hokkaido
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2018_under_hokkaido_path
  end

  def destroy_under_hokkaido
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2018_under_hokkaido_path
  end

  def eight_shanghai
    @image=Image.where(place: "[\"eight_shanghai\"]")
  end

  def new_eight_shanghai
    @post=Post.new
    @post.images.new
  end

  def create_eight_shanghai
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2018_eight_shanghai_path
  end

  def destroy_eight_shanghai
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2018_eight_shanghai_path
  end

  def waka
    @image=Image.where(place: "[\"waka\"]")
  end

  def new_waka
    @post=Post.new
    @post.images.new
  end

  def create_waka
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2018_waka_path
  end

  def destroy_waka
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2018_waka_path
  end

  def under_kanto
    @image=Image.where(place: "[\"under_kanto\"]")
  end

  def new_under_kanto
    @post=Post.new
    @post.images.new
  end

  def create_under_kanto
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2018_under_kanto_path
  end

  def destroy_under_kanto
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2018_under_kanto_path
  end

  def nine
  end

  def nine_taipei
    @image=Image.where(place: "[\"nine_taipei\"]")
  end

  def new_nine_taipei
    @post=Post.new
    @post.images.new
  end

  def create_nine_taipei
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2019_nine_taipei_path
  end

  def destroy_nine_taipei
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2019_nine_taipei_path
  end
 
  def seventh
    @image=Image.where(place: "[\"seventh\"]")
  end

  def new_seventh
    @post=Post.new
    @post.images.new
  end

  def create_seventh
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2019_seventh_path
  end

  def destroy_seventh
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2019_seventh_path
  end
 
  def misa
    @image=Image.where(place: "[\"misa\"]")
  end

  def new_misa
    @post=Post.new
    @post.images.new
  end

  def create_misa
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2019_misa_path
  end

  def destroy_misa
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2019_misa_path
  end

  def sing_out
    @image=Image.where(place: "[\"sing_out\"]")
  end

  def new_sing_out
    @post=Post.new
    @post.images.new
  end

  def create_sing_out
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2019_sing_out_path
  end

  def destroy_sing_out
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2019_sing_out_path
  end

  def nine_summer_nagoya
    @image=Image.where(place: "[\"nine_summer_nagoya\"]")
  end

  def new_nine_summer_nagoya
    @post=Post.new
    @post.images.new
  end

  def create_nine_summer_nagoya
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2019_nine_summer_nagoya_path
  end

  def destroy_nine_summer_nagoya
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2019_nine_summer_nagoya_path
  end

  def nine_summer_fukuoka
    @image=Image.where(place: "[\"nine_summer_fukuoka\"]")
  end

  def new_nine_summer_fukuoka
    @post=Post.new
    @post.images.new
  end

  def create_nine_summer_fukuoka
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2019_nine_summer_fukuoka_path
  end

  def destroy_nine_summer_fukuoka
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2019_nine_summer_fukuoka_path
  end

  def nine_summer_osaka
    @image=Image.where(place: "[\"nine_summer_osaka\"]")
  end

  def new_nine_summer_osaka
    @post=Post.new
    @post.images.new
  end

  def create_nine_summer_osaka
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2019_nine_summer_osaka_path
  end

  def destroy_nine_summer_osaka
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2019_nine_summer_osaka_path
  end

  def nine_summer_tokyo
    @image=Image.where(place: "[\"nine_summer_tokyo\"]")
  end

  def new_nine_summer_tokyo
    @post=Post.new
    @post.images.new
  end

  def create_nine_summer_tokyo
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2019_nine_summer_tokyo_path
  end

  def destroy_nine_summer_tokyo
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2019_nine_summer_tokyo_path
  end
  
  def nine_under
    @image=Image.where(place: "[\"nine_under\"]")
  end

  def new_nine_under
    @post=Post.new
    @post.images.new
  end

  def create_nine_under
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2019_nine_under_path
  end

  def destroy_nine_under
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2019_nine_under_path
  end

  def nine_shanghai
    @image=Image.where(place: "[\"nine_shanghai\"]")
  end

  def new_nine_shanghai
    @post=Post.new
    @post.images.new
  end

  def create_nine_shanghai
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2019_nine_shanghai_path
  end

  def destroy_nine_shanghai
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2019_nine_shanghai_path
  end

  def san_yonki
    @image=Image.where(place: "[\"san_yonki\"]")
  end

  def new_san_yonki
    @post=Post.new
    @post.images.new
  end

  def create_san_yonki
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2019_san_yonki_path
  end

  def destroy_san_yonki
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2019_san_yonki_path
  end

  def ten
  end

  def ten_taipei
    @image=Image.where(place: "[\"ten_taipei\"]")
  end

  def new_ten_taipei
    @post=Post.new
    @post.images.new
  end

  def create_ten_taipei
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2020_ten_taipei_path
  end

  def destroy_ten_taipei
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2020_ten_taipei_path
  end

  def eighth
    @image=Image.where(place: "[\"eighth\"]")
  end

  def new_eighth
    @post=Post.new
    @post.images.new
  end

  def create_eighth
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2020_eighth_path
  end

  def destroy_eighth
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2020_eighth_path
  end

  def ten_under
    @image=Image.where(place: "[\"ten_under\"]")
  end

  def new_ten_under
    @post=Post.new
    @post.images.new
  end

  def create_ten_under
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2020_ten_under_path
  end

  def destroy_ten_under
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2020_ten_under_path
  end

  def eleven
  end

  def mathu
    @image=Image.where(place: "[\"mathu\"]")
  end

  def new_mathu
    @post=Post.new
    @post.images.new
  end
  
  def create_mathu
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2021_mathu_path
  end

  def destroy_mathu
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2021_mathu_path
  end

  def eleven_summer_osaka
    @image=Image.where(place: "[\"eleven_summer_osaka\"]")
  end

  def new_eleven_summer_osaka
    @post=Post.new
    @post.images.new
  end
  
  def create_eleven_summer_osaka
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2021_eleven_summer_osaka_path
  end

  def destroy_eleven_summer_osaka
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2021_eleven_summer_osaka_path
  end

  def eleven_summer_sendai
    @image=Image.where(place: "[\"eleven_summer_sendai\"]")
  end

  def new_eleven_summer_sendai
    @post=Post.new
    @post.images.new
  end
  
  def create_eleven_summer_sendai
    @post=Post.new(post_params)
    if @post.save!
      upload=params[:images][:file].grep(/uploads/)
      upload.each do |a|
        @post.images.create!(file: a, post_id: @post.id, place: params[:images][:place])
      end
    end
    redirect_to posts_2021_eleven_summer_sendai_path
  end

  def destroy_eleven_summer_sendai
    @image=Image.find(params[:id])
    @image.destroy!
    redirect_to posts_2021_eleven_summer_sendai_path
  end


  

  private
  def post_params
    params.permit(images_attributes: [:file, :place, :file_tmp, :_destroy, :id]).merge(user_id: current_user.id)
  end


  def set_s3_direct_post
    @s3_direct_post = S3_BUCKET.presigned_post(key: "uploads/#{SecureRandom.uuid}/${filename}", success_action_status: "201", acl: 'public-read')
  end

  def detect_device
    case request.user_agent
    when /iPhone/
      request.variant= :mobile
    when /Android/
      request.variant= :mobile
    end
  end
end
