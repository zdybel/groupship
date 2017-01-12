module ApplicationHelper
	def locations
		locations = ["Buenos Aires", "Cape Town", "Dubai", "Hong Kong", "Mombasa", "New York", "Shanghai", "Tokyo", "Philadelphia"].sort
	end

	def contain_max_random 
		rand(5..18000)
	end

	def contain_amount 
		rand(5..100)
	end

	def cost_amount
		rand(500..100000)
	end
end
