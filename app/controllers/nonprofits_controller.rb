class NonprofitsController < ApplicationController

  def index
    @nonprofits = Nonprofit.all
    @nonprofit= Nonprofit.new
  end

  def create
    @nonprofit = Nonprofit.create(strong)
    if @nonprofit.save
      redirect_to :back, notice: "Nonprofit was added."
    else
      redirect_to :back, alert: "Oops, something went wrong. Try again."
    end
  end

  def show
    @nonprofit = Nonprofit.find(params[:id])
    @contribution = Contribution.new
  end

  def update
    @nonprofit = Nonprofit.find(params[:id])
    if @nonprofit.update(strong)
      redirect_to :back, notice: "Nonprofit was updated."
    else
      redirect_to :back, alert: "Oops, something went wrong. Try again."
    end
  end

  def destroy
    @nonprofit = Nonprofit.find(params[:id])
    @nonprofit.destroy
    redirect_to root_url
  end
end


private

def strong
  params.require(:nonprofit).permit(:name)
end
