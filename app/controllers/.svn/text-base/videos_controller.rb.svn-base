class VideosController < ApplicationController
  include Cms::Authentication::Controller
  # GET /videos
  # GET /videos.xml
  #  def index
  #    @videos = Video.all
  #    
  #    respond_to do |format|
  #      format.html # index.html.erb
  #      format.xml  { render :xml => @videos }
  #    end
  #  end
  
  # GET /videos/1
  # GET /videos/1.xml
#  def show
#    require 'hpricot'
#    @video = Video.find(params[:id])
#    respond_to do |format|
#      format.html # show.html.erb
#      format.xml  { render :xml => @video }
#    end
#  end
  
  # GET /videos/new
  # GET /videos/new.xml
  #  def new
  #    @video = Video.new
  #    
  #    respond_to do |format|
  #      format.html # new.html.erb
  #      format.xml  { render :xml => @video }
  #    end
  #  end
  
  # GET /videos/1/edit
  #  def edit
  #    @video = Video.find(params[:id])
  #  end
  
  # POST /videos
  # POST /videos.xml
  def create
    @video = Video.new(params[:video])
    @video.uploaded_by = current_user.id 
    if @video.save
      flash[:notice] = 'Video was successfully created.'
      redirect_to "/members/profile"
    else
      flash[:record] = params[:video] 
      redirect_to "/members/upload-video"
    end
  end
  
  # PUT /videos/1
  # PUT /videos/1.xml
  #  def update
  #    @video = Video.find(params[:id])
  #    
  #    respond_to do |format|
  #      if @video.update_attributes(params[:video])
  #        flash[:notice] = 'Video was successfully updated.'
  #        format.html { redirect_to(@video) }
  #        format.xml  { head :ok }
  #      else
  #        format.html { render :action => "edit" }
  #        format.xml  { render :xml => @video.errors, :status => :unprocessable_entity }
  #      end
  #    end
  #  end
  
  # DELETE /videos/1
  # DELETE /videos/1.xml
  def destroy
    @video = Video.find(params[:id])
    @video.destroy
    flash[:notice] = 'Video was successfully deleted.'
    redirect_to "/"
  end
end
