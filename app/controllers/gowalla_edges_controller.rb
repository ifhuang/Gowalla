class GowallaEdgesController < ApplicationController
  # GET /gowalla_edges
  # GET /gowalla_edges.json
  def index
    @gowalla_edges = GowallaEdge.paginate(:page => params[:page], :per_page => 10, :total_entries => 100 )
    @nodes = Set.new
    @gowalla_edges.each do |gowalla_edge|
      @nodes.add(gowalla_edge.user1)
      @nodes.add(gowalla_edge.user2)
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json # index.json.erb
    end
  end

  # GET /gowalla_edges/1
  # GET /gowalla_edges/1.json
  def show
    @gowalla_edge = GowallaEdge.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gowalla_edge }
    end
  end

  # GET /gowalla_edges/new
  # GET /gowalla_edges/new.json
  def new
    @gowalla_edge = GowallaEdge.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gowalla_edge }
    end
  end

  # GET /gowalla_edges/1/edit
  def edit
    @gowalla_edge = GowallaEdge.find(params[:id])
  end

  # POST /gowalla_edges
  # POST /gowalla_edges.json
  def create
    @gowalla_edge = GowallaEdge.new(params[:gowalla_edge])

    respond_to do |format|
      if @gowalla_edge.save
        format.html { redirect_to @gowalla_edge, notice: 'Gowalla edge was successfully created.' }
        format.json { render json: @gowalla_edge, status: :created, location: @gowalla_edge }
      else
        format.html { render action: "new" }
        format.json { render json: @gowalla_edge.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /gowalla_edges/1
  # PUT /gowalla_edges/1.json
  def update
    @gowalla_edge = GowallaEdge.find(params[:id])

    respond_to do |format|
      if @gowalla_edge.update_attributes(params[:gowalla_edge])
        format.html { redirect_to @gowalla_edge, notice: 'Gowalla edge was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @gowalla_edge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gowalla_edges/1
  # DELETE /gowalla_edges/1.json
  def destroy
    @gowalla_edge = GowallaEdge.find(params[:id])
    @gowalla_edge.destroy

    respond_to do |format|
      format.html { redirect_to gowalla_edges_url }
      format.json { head :no_content }
    end
  end
end
