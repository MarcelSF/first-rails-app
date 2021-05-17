class PagesController < ApplicationController

  def about
    @members  = ['Francesca', 'Isabella', 'Lisa']
    @batch_number = '693'
  end

  def contact
    @members  = ['Francesca', 'Isabella', 'Lisa']

    if params[:member]
      @members = @members.select { |member| member.start_with?(params[:member]) }
    end
  end

  def home

  end
end
