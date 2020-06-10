class WdtmzsController < ApplicationController
  before_action :set_wdtmz, only: [:show, :edit, :update, :destroy]

  # GET /wdtmzs
  def index
    http_basic_authenticate_or_request_with :name => "chiragnayyar", :password => "cloud" 
    @wdtmzs = Wdtmz.all
  end

  # GET /wdtmzs/1
  def show
  end

  # GET /wdtmzs/new
  def new
    @wdtmz = Wdtmz.new
  end

  # GET /wdtmzs/1/edit
  def edit
  end

  def registered
  end

  # POST /wdtmzs
  def create
    @wdtmz = Wdtmz.new(wdtmz_params)
    respond_to do |format|
	if @wdtmz.save
		WdtmzMailer.welcome_email(@wdtmz).deliver_later
		flash[:notice] = "Dear, #{@wdtmz.name} your form was successfully submitted. Please check your email at #{@wdtmz.email} for further instructions"
		format.html { redirect_to(:action=>:registered)}
		format.xml { render :xml => @wdtmz, :status=>:created,:location=>@wdtmz}
	else
		format.html {render :action=>"new"}
		format.xml {render :xml=>@wdtmz.errors,:status=>:unprocessable_entity}
	end
    end	 
  end

  # PATCH/PUT /wdtmzs/1
  def update
    if @wdtmz.update(wdtmz_params)
      redirect_to(@wdtmz, notice: "#{@wdtmz.name} was successfully updated.")
    else
      render :edit
    end
  end

  # DELETE /wdtmzs/1
  def destroy
    @wdtmz.destroy
    redirect_to(wdtmzs_url, notice: "#{@wdtmz.name} was successfully destroyed.")
  end

  def myemail
    userid = params[:id]
    user = Wdtmz.where(id: userid).first
    AlieventmailerMailer.welcome_email(user).deliver_later
  end

  def mywhatsapp
    userid = params[:id]
    user = Wdtmz.where(id: userid).first
  end

  helper_method :myemail , :mywhatsapp

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wdtmz
      @wdtmz = Wdtmz.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def wdtmz_params
      params.require(:wdtmz).permit(:title, :name, :email, :number, :profession, :college, :branch, :suggestions)
    end
end
