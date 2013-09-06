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

	# def currency_to(amount, currency)
	# 	if currency == 'TW'
	# 		number_to_currency(amount, :locale=>'zh-TW')
	# 	else
	# 		number_to_currency(amount)
	# 	end
	# end

	def currency_to(amount, currency)
		# currency == 'TW' ? number_to_currency(amount, {locale: 'zh-TW'}) : number_to_currency(amount)
		number_to_currency(amount, currency == 'TW' ? {locale: 'zh-TW'} : {})
	end

	def add_new_btn(path)
		link_to '<i class="icon-plus"></i> Add New'.html_safe, path , class: 'btn btn-large' 
	end
end
