class PetdetailsController < ApplicationController
  # GET /petdetails
  # GET /petdetails.json
  def index
    @petdetails = Petdetail.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @petdetails }
    end
  end

  # GET /petdetails/1
  # GET /petdetails/1.json
  def show
    @petdetail = Petdetail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @petdetail }
    end
  end

  # GET /petdetails/new
  # GET /petdetails/new.json
  def new
     # @petdetail = Petdetail.new
    
     @appointment = Appointment.find(params[:id])
     @petdetail=  @appointment.petdetails.build
     

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @petdetail }
    end
  end

  # GET /petdetails/1/edit
  def edit
    @petdetail = Petdetail.find(params[:id])
  end

  # POST /petdetails
  # POST /petdetails.json
  def create
 # @petdetail = Petdetail.new(params[:petdetail])
    @appointment = Appointment.find(params[:id])
    @petdetail=  @appointment.petdetails.build(params[:petdetail])

    respond_to do |format|
      if @petdetail.save
        format.html { redirect_to @petdetail, notice: 'Petdetail was successfully created.' }
        format.json { render json: @petdetail, status: :created, location: @petdetail }
      else
        format.html { render action: "new" }
        format.json { render json: @petdetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /petdetails/1
  # PUT /petdetails/1.json
  def update
    @petdetail = Petdetail.find(params[:id])

    respond_to do |format|
      if @petdetail.update_attributes(params[:petdetail])
        format.html { redirect_to @petdetail, notice: 'Petdetail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @petdetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /petdetails/1
  # DELETE /petdetails/1.json
  def destroy
    @petdetail = Petdetail.find(params[:id])
    @petdetail.destroy

    respond_to do |format|
      format.html { redirect_to petdetails_url }
      format.json { head :no_content }
    end
  end
end
