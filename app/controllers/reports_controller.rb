class ReportsController < ApplicationController

	def pregnancies
		@pregnancies = Pregnancy.all
	end

	def dogs
		@dogs = Dog.all
	end

	def sales
		@dsles = Sale.all
	end
end
