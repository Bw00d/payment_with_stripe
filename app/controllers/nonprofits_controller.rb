class NonprofitsController < ApplicationController

  def index
    @nonprofits = Nonprofit.all
  end
end
