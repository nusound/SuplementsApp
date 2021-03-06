class SuplementsController < ApplicationController
  before_action :set_suplement, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @suplements = Suplement.where(:user_id => current_user.id)
  end

  def new
    @suplement = Suplement.new
  end

  def create
    @suplement = current_user.suplements.build(suplement_params)
    if @suplement.save
        redirect_to '/suplements'
    else
      render '/suplements/new'
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
    @suplement.destroy
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
                                        :number_of_days,
                                        :suplement_cost
                                        )
    end
end
