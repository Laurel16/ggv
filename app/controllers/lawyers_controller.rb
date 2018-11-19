class LawyersController < ApplicationController

    def index
          @lawyers = Lawyer.all

    end


    def create
      @lawyer = Lawyer.new(lawyer_params)
      if @lawyer.save
      # Unless @restaurant.valid?, #save will return false,
      # and @restaurant is not persisted.
      # TODO: present the form again with error messages.
      redirect_to lawyer_path(@lawyer)
      else
        render :new
      end
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
      params.require(:lawyer).permit(:first_name, :last_name, :competences, :competences_details, :presentation, :picture, :langages, :bar, :course, :phone, :mail, :vCard, :pdf, :address, :stars)




end
