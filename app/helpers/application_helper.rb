module ApplicationHelper
	class Base
		def format_date(rec)
			rec.strftime("%m/%d/%Y")
		end
	end
end
