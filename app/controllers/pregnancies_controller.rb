class PregnanciesController < ApplicationController
  before_action :set_pregnancy, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /pregnancies
  # GET /pregnancies.json
  def index
    @pregnancies = Pregnancy.order('heat_start_date, surgery_date')

    @plist = @pregnancies.already_due.order('due_date').map{|x| x.dog.call_name}.to_s.html_safe 
    @colors = [ [ "#8a10ae" ],[ "#f45a39" ],[ "#fa7083" ],[ "#b8ad3c" ],[ "#2babf2" ],[ "#1dae30" ],[ "#b6932d" ],[ "#e24436" ]]
    @puppy_count = Color.all.map{|c| ["#{c.name} - (#{c.litters.size})", c.litters.size]}.to_s.html_safe
    
   
    # @chart = LazyHighCharts::HighChart.new('graph') do |f|
    #   f.chart({:type => "column"})
    #   f.title(:text => "Pregnancies in 2003 as #{Date.today}")
    #   f.xAxis(:categories => @pregnancies.already_due.order('due_date').map{|x| x.dog.call_name})
      
    #   # f.tooltip(:formatter => "function() { return this.x +' '+ this.y + '<br>'+' Total:' + this.point.stackTotal;}".js_code)

    #   f.series(:name => "Puppies survive", :data => @pregnancies.already_due.order('due_date').map{|x| x.litters.where(survival: true).size})
    #   f.series(:name => "Puppies not survive", :data => @pregnancies.already_due.order('due_date').map{|x| x.litters.where(survival: false).size})
      
    #   f.plotOptions({column:{
    #     stacking: 'normal',
    #     # pointPadding: 0,
    #     groupPadding: 0, 
    #     dataLabels:{
    #       enabled: true,
    #       color: 'white'}
    #       }})

    #   f.yAxis( 
    #      title: { text: "Puppies", margin: 50},
    #      stackLabels: {
    #         style: {color: 'gray'},
    #         enabled: true}
    #     )

    #   f.series(:type => "pie", :name=> 'puppies', 
    #     :center=> [150, 80], :size=> 150, :showInLegend=> false,
    #     :data =>Color.all.map{|c| ["#{c.name} - (#{c.litters.size})", c.litters.size]},
    #     :colors => @colors)
    # end

    # @colors = Color.all.map{|c| ["##{rand(0xffffff).to_s(16)}"]}
    # @chart3 = LazyHighCharts::HighChart.new('pie') do |f|
    #   f.chart({:defaultSeriesType=>"pie" , :margin=> [50, 50, 50, 50]})
    #   series = {
    #     :type=> 'pie',
    #     :name=> 'Browser share',
    #     :data=> Color.all.map{|c| ["#{c.name} - (#{c.litters.size})", c.litters.size]},
    #     # :data => Pregnancy.set_value( Color.all.map{|c| [c.name, c.litters.size]} ),
    #     :colors => @colors,
    #     showInLegend: false
    #   }

    #   f.series(series)
    #   f.options[:title][:text] = "Puppies by colors"
    #   f.legend(:layout=> 'vertical',:width => 220,:borderWidth => 0, align: 'left', verticalAlign: 'middle') 
    #   f.plot_options(:pie=>{
    #     :allowPointSelect=>true, 
    #     :cursor=>"pointer" , 
    #     :dataLabels=>{
    #       :enabled=>true,
    #       :color=>"black"
    #     }
    #   })
    #  end

    # @chart1 = LazyHighCharts::HighChart.new('graph') do |f|
    #   f.title({ :text=>"Combination chart"})
    #   f.options[:xAxis][:categories] = ['Apples', 'Oranges', 'Pears', 'Bananas', 'Plums']
    #   f.labels(:items=>[:html=>"Total fruit consumption", :style=>{:left=>"40px", :top=>"8px", :color=>"black"} ]) 
    #   f.series(:type=> 'column',:name=> 'Jane',:data=> [3, 2, 1, 3, 4])
    #   f.series(:type=> 'column',:name=> 'John',:data=> [2, 3, 5, 7, 6])
    #   f.series(:type=> 'column', :name=> 'Joe',:data=> [4, 3, 3, 9, 0])
    #   f.series(:type=> 'column', :name=> 'Joe',:data=> [4, 3, 3, 9, 0])
    #   f.series(:type=> 'spline',:name=> 'Average', :data=> [3, 2.67, 3, 6.33, 3.33])
    #   f.series(:type=> 'pie',:name=> 'Total consumption', 
    #   :data=> [
    #     {:name=> 'Jane', :y=> 13, :color=> 'red'}, 
    #     {:name=> 'John', :y=> 23,:color=> 'green'},
    #     {:name=> 'Joe', :y=> 19,:color=> 'blue'}
    #   ],
    #   :center=> [100, 80], :size=> 100, :showInLegend=> false)
    # end  

    # @chart2 = LazyHighCharts::HighChart.new('graph') do |f|
    #   f.title(:text => "Population vs GDP For 5 Big Countries [2009]")
    #   f.xAxis(:categories => ["United States", "Japan", "China", "Germany", "France"])
    #   f.series(:name => "GDP in Billions", :yAxis => 0, :data => [14119, 5068, 4985, 3399, 2656])
    #   f.series(:name => "Population in Millions", :yAxis => 1, :data => [310,127,1340,81,65])

    #   f.yAxis [
    #     {:title => {:text => "GDP in Billions", :margin => 70}},
    #     {:title => {:text => "Population in Millions"}, :opposite => true},
    #   ]
    #   f.legend(:align => 'right', :verticalAlign => 'top', :y => 75, :x  => -50, :layout => 'vertical',)
    #   f.chart({:defaultSeriesType => "column"})
    # end
    # @chart3 = LazyHighCharts::HighChart.new('pie') do |f|
    #   f.chart({:defaultSeriesType=>"pie" , :margin=> [50, 200, 60, 170]} )
    #   series = {
    #     :type=> 'pie',
    #     :name=> 'Browser share',
    #     :data=> [
    #       ['Firefox', 45.0],
    #       ['IE', 26.8],
    #      {
    #         :name=> 'Chrome', 
    #         :y=> 12.8,
    #         :sliced=> true,
    #         :selected=> true
    #      },
    #       ['Safari', 8.5],
    #       ['Opera', 6.2],
    #       ['Others', 0.7]
    #     ]
    #   }
    #   f.series(series)
    #   f.options[:title][:text] = "THA PIE"
    #   f.legend(:layout=> 'vertical',:style=> {:left=> 'auto', :bottom=> 'auto',:right=> '50px',:top=> '100px'}) 
    #   f.plot_options(:pie=>{
    #     :allowPointSelect=>true, 
    #     :cursor=>"pointer" , 
    #     :dataLabels=>{
    #       :enabled=>true,
    #       :color=>"black",
    #       :style=>{
    #         :font=>"13px Trebuchet MS, Verdana, sans-serif"
    #       }
    #     }
    #   })
    #  end

    # @chart4 = LazyHighCharts::HighChart.new('column') do |f|
    #   f.series(:name=>'John',:data=> [3, 20, 3, 5, 4, 10, 12 ])
    #   f.series(:name=>'Jane',:data=>[1, 3, 4, 3, 3, 5, 4,-46] ) 
    #   f.title({ :text=>"example test title from controller"})

    #   ### Options for Bar
    #   ### f.options[:chart][:defaultSeriesType] = "bar"
    #   ### f.plot_options({:series=>{:stacking=>"normal"}})

    #   ## or options for column
    #   f.options[:chart][:defaultSeriesType] = "column"
    #   f.plot_options({:column=>{:stacking=>"percent"}})
    #  end


    

    respond_to do |format|
      format.html
      format.csv {send_data @pregnancies.to_csv}
      format.xls #{send_data @pregnancies.to_csv(col_sep: "\t")}
    end
  end

  # GET /pregnancies/1
  # GET /pregnancies/1.json
  def show
  end

  # GET /pregnancies/new
  def new
    @pregnancy = Pregnancy.new
  end

  # GET /pregnancies/1/edit
  def edit
  end

  # POST /pregnancies
  # POST /pregnancies.json
  def create
    @pregnancy = Pregnancy.new(pregnancy_params)

    respond_to do |format|
      if @pregnancy.save
        format.html { redirect_to @pregnancy, notice: 'Pregnancy was successfully created.' }
        format.json { render action: 'show', status: :created, location: @pregnancy }
      else
        format.html { render action: 'new' }
        format.json { render json: @pregnancy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pregnancies/1
  # PATCH/PUT /pregnancies/1.json
  def update
    respond_to do |format|
      if @pregnancy.update(pregnancy_params)
        format.html { redirect_to @pregnancy, notice: 'Pregnancy was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @pregnancy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pregnancies/1
  # DELETE /pregnancies/1.json
  def destroy
    @pregnancy.destroy
    respond_to do |format|
      format.html { redirect_to pregnancies_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pregnancy
      @pregnancy = Pregnancy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pregnancy_params
      params.require(:pregnancy).permit(:name, :dog_id, :heat_start_date, :due_date, :surgery_date, :total_puppy, :note, :pictures_attributes => [:id, :file, '_destroy'])
    end
end
