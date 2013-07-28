class PhotosController < ApplicationController
  skip_before_filter :require_login, :except => [:gallery]
  def index
    @photos = Photo.all
    @uploader = Photo.new.image
    @uploader.success_action_redirect = new_photo_url
  end

  def gallery
    @photos = Photo.all
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def new
    @photo = Photo.new(key: params[:key])
  end

  def create
    @photo = Photo.new(params[:photo])
    if @photo.save
      redirect_to photos_url, notice: "photo was successfully created."
    else
      render :new
    end
  end

  def edit
    @photo = Photo.find(params[:id])
  end

  def update
    @photo = Photo.find(params[:id])
    if @photo.update_attributes(params[:photo])
      redirect_to photos_url, notice: "photo was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    redirect_to photos_url, notice: "photo was successfully destroyed."
  end
end