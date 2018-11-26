class LawyersController < ApplicationController

  before_action :set_lawyer, only: [ :show, :edit, :update, :destroy]

  before_action :set_params, only: [:index]

  skip_before_action :verify_authenticity_token

    def index
        @lawyers = Lawyer.all


    end


    def create
      @lawyer = Lawyer.new(lawyer_params)
      @lawyer.save
      redirect_to lawyer_path(@lawyer)
    end

    def new
      @lawyer = Lawyer.new
    end

    def show
    @lawyer = Lawyer.find(params[:id])
    end

    def update
      if @lawyer.update(lawyer_params)
        redirect_to lawyer_path(@lawyer)
      else
        render :edit
      end
    end

    def destroy
    @lawyer.destroy
    redirect_to lawyers_path
    end


    private

    def lawyer_params
      params.require(:lawyer).permit(:first_name, :last_name, :competences, :competences_details, :presentation, :picture, :langages, :bar, :course, :phone, :mail, :vCard, :pdf, :address, :status, :picture_cache, :competences_2, :competences_3)

    end

    def set_params
    @params = params
    end

    def set_lawyer
    @lawyer = Lawyer.find(params[:id])

    end



end
