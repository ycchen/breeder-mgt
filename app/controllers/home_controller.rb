class HomeController < ApplicationController
  
  def index
  	if current_user && current_user.admin?
  		# redirect_to pregnancies_path
  		@pregnancy = Pregnancy.already_due.order('due_date')
  		@colors = Charge.all.map{|c| ["##{rand(0xffffff).to_s(16)}"]}
		@puppy_by_color =  Color.all.map{|c| ["#{c.name}", c.litters.size]}.to_s.html_safe
		@puppy_by_gender = Litter.select('count(*) as gcount, gender, colors.name').joins(:color).where(survival: true).group('litters.gender, litters.color_id').map{|g| ["#{g.name}-#{g.gender}", g.gcount]} 
		# @puppy_data = Litter.joins(:color).group(:name).size.map{ |l| l}
		@litter_bitches = @pregnancy.map{|x| x.dog.call_name}.to_s.html_safe 

  	end
  end

end
