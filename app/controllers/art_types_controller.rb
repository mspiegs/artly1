class ArtTypesController < ApplicationController
  # GET /art_types
  # GET /art_types.json
  def index
    @art_types = ArtType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @art_types }
    end
  end

  # GET /art_types/1
  # GET /art_types/1.json
  def show
    @art_type = ArtType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @art_type }
    end
  end

  # GET /art_types/new
  # GET /art_types/new.json
  def new
    @art_type = ArtType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @art_type }
    end
  end

  # GET /art_types/1/edit
  def edit
    @art_type = ArtType.find(params[:id])
  end

  # POST /art_types
  # POST /art_types.json
  def create
    @art_type = ArtType.new(params[:art_type])

    respond_to do |format|
      if @art_type.save
        format.html { redirect_to @art_type, notice: 'Art type was successfully created.' }
        format.json { render json: @art_type, status: :created, location: @art_type }
      else
        format.html { render action: "new" }
        format.json { render json: @art_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /art_types/1
  # PUT /art_types/1.json
  def update
    @art_type = ArtType.find(params[:id])

    respond_to do |format|
      if @art_type.update_attributes(params[:art_type])
        format.html { redirect_to @art_type, notice: 'Art type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @art_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /art_types/1
  # DELETE /art_types/1.json
  def destroy
    @art_type = ArtType.find(params[:id])
    @art_type.destroy

    respond_to do |format|
      format.html { redirect_to art_types_url }
      format.json { head :no_content }
    end
  end
end
