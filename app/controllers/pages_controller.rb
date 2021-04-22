class PagesController < ApplicationController
  def about
    @date = DateTime.now
  end

  def contact
    search = params[:member]
    @members = ["Ben", "Rebecca", "Stephanie", "Bob", "John"]

    if search.present?
      @members = @members.select { |member| member.downcase.start_with?(search.downcase) }
    end
  end

  def home
  end
end
