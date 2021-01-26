class MailcontentController < ApplicationController
  
  def index
    mailcontets = Mailcontent.recent
    render json: mailcontets
  end

  def show
  end
end