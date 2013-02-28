class CommMethodsController < ApplicationController
  # GET /comm_methods
  # GET /comm_methods.json
  def index
    @comm_methods = CommMethod.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @comm_methods }
    end
  end

  # GET /comm_methods/1
  # GET /comm_methods/1.json
  def show
    @comm_method = CommMethod.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @comm_method }
    end
  end

  # GET /comm_methods/new
  # GET /comm_methods/new.json
  def new
    @comm_method = CommMethod.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @comm_method }
    end
  end

  # GET /comm_methods/1/edit
  def edit
    @comm_method = CommMethod.find(params[:id])
  end

  # POST /comm_methods
  # POST /comm_methods.json
  def create
    @comm_method = CommMethod.new(params[:comm_method])

    respond_to do |format|
      if @comm_method.save
        format.html { redirect_to @comm_method, notice: 'Comm method was successfully created.' }
        format.json { render json: @comm_method, status: :created, location: @comm_method }
      else
        format.html { render action: "new" }
        format.json { render json: @comm_method.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /comm_methods/1
  # PUT /comm_methods/1.json
  def update
    @comm_method = CommMethod.find(params[:id])

    respond_to do |format|
      if @comm_method.update_attributes(params[:comm_method])
        format.html { redirect_to @comm_method, notice: 'Comm method was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @comm_method.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comm_methods/1
  # DELETE /comm_methods/1.json
  def destroy
    @comm_method = CommMethod.find(params[:id])
    @comm_method.destroy

    respond_to do |format|
      format.html { redirect_to comm_methods_url }
      format.json { head :no_content }
    end
  end
end
