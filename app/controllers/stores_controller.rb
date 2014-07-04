class StoresController < ApplicationController

	def kroger
		@kroger_items = Store.find(1).categories
	end

end