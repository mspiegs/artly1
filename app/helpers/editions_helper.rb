module EditionsHelper
	def art_piece_user
		@art_piece = ArtPiece.find(params[:art_piece_id])
	end

	def production_number
		@art_piece = ArtPiece.find(params[:art_piece_id])
		if @art_piece.productions == []
			@production_number = 1
		else
			@production = @art_piece.productions.maximum("number")
			@production_number = @production + 1
		end
	end

	def production_info
		@production = Production.find(params[:production_id])
	end
end
