class GowallaTotalCheckinsController < ApplicationController
  # GET /gowalla_total_checkins
  # GET /gowalla_total_checkins.json
  def index
    if params[:i_user].nil?
      @gowalla_total_checkins = GowallaTotalCheckin.limit(10)
    else
      @gowalla_total_checkins = GowallaTotalCheckin.where("user = ? AND check_in_time>= ? AND check_in_time <= ? AND latitude >= ? AND latitude <= ? AND longitude >= ? AND longitude <= ?", params[:i_user], params[:i_time_f], params[:i_time_t], params[:i_lat_f], params[:i_lat_t], params[:i_lon_f], params[:i_lon_t])
    end
    @gowalla_total_checkins_p = @gowalla_total_checkins.paginate(:page => params[:page], :per_page => 10, :total_entries => 100 )
    @json = @gowalla_total_checkins_p.to_gmaps4rails

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @gowalla_total_checkins }
    end
  end

  # GET /gowalla_total_checkins/1
  # GET /gowalla_total_checkins/1.json
  def show
    @gowalla_total_checkin = GowallaTotalCheckin.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gowalla_total_checkin }
    end
  end

  # GET /gowalla_total_checkins/new
  # GET /gowalla_total_checkins/new.json
  def new
    @gowalla_total_checkin = GowallaTotalCheckin.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gowalla_total_checkin }
    end
  end

  # GET /gowalla_total_checkins/1/edit
  def edit
    @gowalla_total_checkin = GowallaTotalCheckin.find(params[:id])
  end

  # POST /gowalla_total_checkins
  # POST /gowalla_total_checkins.json
  def create
    @gowalla_total_checkin = GowallaTotalCheckin.new(params[:gowalla_total_checkin])

    respond_to do |format|
      if @gowalla_total_checkin.save
        format.html { redirect_to @gowalla_total_checkin, notice: 'Gowalla total checkin was successfully created.' }
        format.json { render json: @gowalla_total_checkin, status: :created, location: @gowalla_total_checkin }
      else
        format.html { render action: "new" }
        format.json { render json: @gowalla_total_checkin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /gowalla_total_checkins/1
  # PUT /gowalla_total_checkins/1.json
  def update
    @gowalla_total_checkin = GowallaTotalCheckin.find(params[:id])

    respond_to do |format|
      if @gowalla_total_checkin.update_attributes(params[:gowalla_total_checkin])
        format.html { redirect_to @gowalla_total_checkin, notice: 'Gowalla total checkin was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @gowalla_total_checkin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gowalla_total_checkins/1
  # DELETE /gowalla_total_checkins/1.json
  def destroy
    @gowalla_total_checkin = GowallaTotalCheckin.find(params[:id])
    @gowalla_total_checkin.destroy

    respond_to do |format|
      format.html { redirect_to gowalla_total_checkins_url }
      format.json { head :no_content }
    end
  end
end
