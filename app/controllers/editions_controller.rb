class EditionsController < ApplicationController
	include EditionsHelper
	before_filter :production_info

	def show
		@art_piece = ArtPiece.find(params[:art_piece_id])
		@edition = Edition.find(params[:id])

		respond_to do |format|
      		format.html # show.html.erb
      		format.json { render json: @piece }
    	end
	end

	def edit
		@art_piece = ArtPiece.find(params[:art_piece_id])
		@production = Production.find(params[:production_id])
		@edition = Edition.find(params[:id])
	end

	def update
		@art_piece = ArtPiece.find(params[:art_piece_id])
		@production = Production.find(params[:production_id])
		@edition = Edition.find(params[:id])

		respond_to do |format|
	      if @edition.update_attributes(params[:edition])
	        format.html { redirect_to [@art_piece, @production, @edition], notice: 'Art piece was successfully updated.' }
	        format.json { head :no_content }
	      else
	        format.html { render action: "edit" }
	        format.json { render json: @art_piece.errors, status: :unprocessable_entity }
      	  end
    	end
	end

	def new
		
		@production = Production.find(params[:production_id])
		@art_piece = ArtPiece.where(:id => @production.art_piece_id).first
		@edition = Edition.new

		respond_to do |format|
			format.html
			format.json { render json: @edition }
		end
	end

	def create
		@art_piece = ArtPiece.find(params[:art_piece_id])
		@production = Production.find(params[:production_id])
		@edition = @production.editions.new(params[:edition])

		respond_to do |format|
	      if @edition.save
	        format.html { redirect_to [@art_piece, @production, @edition], notice: 'Production was successfully created.' }
	        format.json { render json: @edition, status: :created, location: @edition }
	      else
	        format.html { render action: "new" }
	        format.json { render json: @edition.errors, status: :unprocessable_entity }
	      end
	    end
	end

	def destroy
		@art_piece = ArtPiece.find(params[:art_piece_id])
		@production = Production.find(params[:production_id])
		@edition = Edition.find(params[:id])
		@edition.destroy

	  respond_to do |format|
    	format.html { redirect_to art_piece_path(@art_piece) }
    	format.json { head :no_content }
  	end
  end
end
