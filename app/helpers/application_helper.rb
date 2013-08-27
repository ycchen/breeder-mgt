module ApplicationHelper
	
	def flashes_helper
		results =[]
		flashes = [:alert, :errors, :info, :notice, :success]

		flashes.each do |name, msg|
			hidden = "hide" if flash[name].blank?
			results << content_tag(:div, content_tag(:p, flash[name]), class: "alert alter-#{name} #{hidden} alert-block")
		end	
		results.join("").html_safe
	end

# 	def currency_to(amount, currency)
# 		number_to_currency(amount, currency == 'TW' ? locale: 'zh-TW' : {})
#     end

	def currency_to(amount, currency)
		if currency == 'TW'
			number_to_currency(amount, :locale=>'zh-TW')
		else
			number_to_currency(amount)
		end
	end

end
