class ArtPiecesController < ApplicationController
  include ApplicationHelper
  def index
    @art_pieces = ArtPiece.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @art_pieces }
    end
  end

  # GET /art_pieces/1
  # GET /art_pieces/1.json
  def show
    @art_piece = ArtPiece.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @art_piece }
    end
  end

  # GET /art_pieces/new
  # GET /art_pieces/new.json
  def new
    @art_piece = ArtPiece.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @art_piece }
    end
  end

  # GET /art_pieces/1/edit
  def edit
    @art_piece = ArtPiece.find(params[:id])
  end

  # POST /art_pieces
  # POST /art_pieces.json
  def create
    @art_piece = ArtPiece.new(params[:art_piece])

    respond_to do |format|
      if @art_piece.save
        format.html { redirect_to @art_piece, notice: 'Art piece was successfully created.' }
        format.json { render json: @art_piece, status: :created, location: @art_piece }
      else
        format.html { render action: "new" }
        format.json { render json: @art_piece.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /art_pieces/1
  # PUT /art_pieces/1.json
  def update
    @art_piece = ArtPiece.find(params[:id])

    respond_to do |format|
      if @art_piece.update_attributes(params[:art_piece])
        format.html { redirect_to @art_piece, notice: 'Art piece was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @art_piece.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /art_pieces/1
  # DELETE /art_pieces/1.json
  def destroy
    @art_piece = ArtPiece.find(params[:id])
    @art_piece.destroy

    respond_to do |format|
      format.html { redirect_to art_pieces_url }
      format.json { head :no_content }
    end
  end
end
