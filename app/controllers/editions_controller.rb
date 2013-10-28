class EditionsController < ApplicationController
	include EditionsHelper
	before_filter :production_info

	def show

		@edition = Edition.find(params[:id])

		respond_to do |format|
      		format.html # show.html.erb
      		format.json { render json: @piece }
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
		@edition = @art_piece.production.editions.new(params[:edition])

		respond_to do |format|
	      if @edition.save
	        format.html { redirect_to [@edition], notice: 'Production was successfully created.' }
	        format.json { render json: @edition, status: :created, location: @edition }
	      else
	        format.html { render action: "new" }
	        format.json { render json: @edition.errors, status: :unprocessable_entity }
	      end
	    end
	end
end
