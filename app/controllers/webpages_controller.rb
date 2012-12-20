# coding: utf-8
class WebpagesController < ApplicationController
  def index
    @webpages = Webpage.all
    @webpage = Webpage.new
  end

  def show id
    @webpage = Webpage.find id
  end

  def new
    @webpage = Webpage.new
  end

  def edit id
    @webpage = Webpage.find id
  end

  def create webpage
    @webpage = Webpage.new webpage

    if @webpage.save
      redirect_to @webpage, notice: 'Webpage was successfully created.'
    else
      render action: "new"
    end
  end

  def update id, webpage
    @webpage = Webpage.find id

    if @webpage.update_attributes webpage
      redirect_to @webpage, notice: 'Webpage was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy id
    @webpage = Webpage.find id
    @webpage.destroy
    redirect_to webpages_url
  end
end
