module ApplicationHelper
	
	def flashes_helper
		results =[]
		flashes = [:alert, :warning, :info, :notice, :success]

		flashes.each do |name, msg|
			_type = name == :notice ? "success" : "danger"
			hidden = "hide" if flash[name].blank?
			results << content_tag(:div, content_tag(:p, flash[name]), class: "alert alert-#{_type} #{hidden} alert-block")
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
		link_to '<i class="icon-plus"></i> Add New'.html_safe, path , class: 'btn btn-default btn-lg' 
	end

	def date_value(date)
		date ? date.strftime("%Y-%m-%d") : Date.today.strftime("%Y-%m-%d")
	end

	def yesno(v)
		v ? "Yes" : "No"
	end

	def set_value(data)
		pie_data=[]
		data.each do |key, value|
			x = {y: value}
			# pie_data << {y: value, drilldown:{ name: key, category: ['Male', 'Female'], data: [2,4]}}
			pie_data << x
		end
		pie_data
	end

end
