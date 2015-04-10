class PagesController < ApplicationController
  def home
  end

  def membership
  end

  def contactus
  end

  def realestateservices
  	
  end

  def privacypolicy
    
  end
  def termsofuse
    
  end
  def search
  	if params[:search].present?
      @pages = Page.search(params[:search])
    else
      @pages = Page.all
    end
  end
end
