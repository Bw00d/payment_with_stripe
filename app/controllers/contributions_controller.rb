class ContributionsController < ApplicationController

  def create
    @contribution = Contribution.create(strong)
    redirect_to root_url
  end

  private

  def strong
    params.permit(:stripeToken)
  end
end
