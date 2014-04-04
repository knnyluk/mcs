class Question < ActiveRecord::Base
	
	def text_field
		if self.text
			self.text.split('taglist: ').first
		end
	end

	def tag_list
		if self.text
			self.text.split("taglist: ").last
		end
	end

end
