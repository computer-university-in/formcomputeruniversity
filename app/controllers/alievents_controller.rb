class AlieventsController < ApplicationController
  before_action :set_alievent, only:
    [:show, :edit, :update, :destroy]

  # GET /alievents
  def index
    http_basic_authenticate_or_request_with :name => "vaibhav", :password => "said"
    @alievents = Alievent.all
  end

  # GET /alievents/1
  def show
  end

  # GET /alievents/new
  def new
    @alievent = Alievent.new
  end

  # GET /alievents/1/edit
  def edit
  end

  def registered
  end
  # POST /alievents
  def create
    @alievent = Alievent.new(alievent_params)
    respond_to do |format|
	if @alievent.save
		AlieventmailerMailer.welcome_email(@alievent).deliver_later
		flash[:notice] = "Dear, #{@alievent.name} your form was successfully submitted. Please check your email at #{@alievent.email} for further instructions"
		format.html { redirect_to(:action=>:registered)}
		format.xml { render :xml => @alievent, :status=>:created,:location=>@alievent}
	else
		format.html {render :action=>"new"}
		format.xml {render :xml=>@alievent.errors,:status=>:unprocessable_entity}
	end
    end	 
  end

  # PATCH/PUT /alievents/1
  def update
    if @alievent.update(alievent_params)
      redirect_to @alievent, notice: "#{@alievent.name} was successfully updated."
    else
      render :edit
    end
  end

  # DELETE /alievents/1
  def destroy
    @alievent.destroy
    redirect_to alievents_url, notice: "#{@alievent.name} was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alievent
      @alievent = Alievent.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def alievent_params
      params.require(:alievent).permit(:name, :email, :number, :company, :branch, :suggestions)
    end
end
