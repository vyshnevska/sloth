class CrumbsController < ApplicationController
  before_action :set_crumb, only: [:show, :edit, :update, :destroy]

  # GET /crumbs
  def index
    @crumbs = Crumb.all
  end

  # GET /crumbs/1
  def show
  end

  # GET /crumbs/new
  def new
    @crumb = Crumb.new
  end

  # GET /crumbs/1/edit
  def edit
  end

  # POST /crumbs
  def create
    @crumb = Crumb.new(crumb_params)

    if @crumb.save
      redirect_to @crumb, notice: 'Crumb was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /crumbs/1
  def update
    if @crumb.update(crumb_params)
      redirect_to @crumb, notice: 'Crumb was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /crumbs/1
  def destroy
    @crumb.destroy
    redirect_to crumbs_url, notice: 'Crumb was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crumb
      @crumb = Crumb.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def crumb_params
      params.require(:crumb).permit(:number, :label, :visible)
    end
end
