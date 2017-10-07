class SuplementsController < ApplicationController
  before_action :set_suplement, only: [:show, :edit, :update, :destroy]

  def index
    @suplement = Suplement.all
  end

  def new
    @suplement = Suplement.new
  end

  def create
    @suplement = Suplement.new(suplement_params)
    if @suplement.save
        redirect_to '/suplements'
      else
        redirect_to '/suplements/new'
      end
  end

  def show
  end

  def edit
  end

  def update
    if @suplement.update(suplement_params)
      redirect_to '/suplements'
    else
      redirect_to '/suplements/new'
    end
  end

  def destroy
    @suplement.destroy(suplement_params)
      redirect_to '/suplements'
  end

  private

    def set_suplement
      @suplement = Suplement.find(params[:id])
    end

    def suplement_params
      params.require(:suplement).permit(:name,
                                        :number_of_units,
                                        :daily_dosage_in_units,
                                        :start_date,
                                        :end_date,
                                        :suplement_cost
                                        )
    end
end