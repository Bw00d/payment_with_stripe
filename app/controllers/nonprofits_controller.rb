class NonprofitsController < ApplicationController

  def index
    @nonprofits = Nonprofit.all
    @nonprofit= Nonprofit.new
  end

  def create
    @nonprofit = Nonprofit.create(strong)
    redirect_to root_url
  end
end


private

def strong
  params.require(:nonprofit).permit(:name)
end
