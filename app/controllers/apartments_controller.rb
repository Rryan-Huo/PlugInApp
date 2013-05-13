class ApartmentsController < ApplicationController
  # GET /apartments
  # GET /apartments.json
  def index
    @apartments = Apartment.all

    if params[:search].present?
      k = params[:search]
      @apartments = Apartment.where("neighborhood LIKE ? OR zipcode = ?",
                                "%#{k}%", k)
    end
  end
  def show
    @apartment = Apartment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @apartment}
    end
  end
  def new
    @apartment = Apartment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @apartment }
    end
  end
  def create
    @apartment = Apartment.new(params[:apartment])
    @apartment.getNeighbor(@apartment.zipcode)
    respond_to do |format|
      if @apartment.save
        format.html { redirect_to @apartment, notice: 'Apartment was successfully created.' }
        format.json { render json: @apartment, status: :created, location: @apartment }
      else
        format.html { render action: "new" }
        format.json { render json: @apartment.errors, status: :unprocessable_entity }
      end
    end
  end
  def edit
    @apartment = Apartment.find(params[:id])
  end
  def update
    @apartment = Apartment.find(params[:id])

    respond_to do |format|
      if @apartment.update_attributes(params[:user])
        format.html { redirect_to @apartment, notice: 'Apartment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @apartment.errors, status: :unprocessable_entity }
      end
    end
  end
  def destroy
    @apartment = Apartment.find(params[:id])
    @apartment.destroy

    respond_to do |format|
      format.html { redirect_to root_url }
      format.json { head :no_content }
    end
  end
end
