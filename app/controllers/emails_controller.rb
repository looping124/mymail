class EmailsController < ApplicationController
  def index
    @emails = Email.all
    # .order('updated_at DESC')
  end

  def new
    
  end

  def create
     @email = Email.create(object:Faker::Movies::StarWars.quote,body:Faker::Lorem.paragraph(sentence_count: 5))
    

    respond_to do |format|
      format.html do 
        #code en cas de requête classique
        redirect_to root_path
      end
      format.js do
        #code en cas de requête AJAX
      end
    end
  end

  def show
    @email = Email.find(params[:id])
    respond_to do |format|
      format.html { redirect_to email_path(params[:id]) }
      format.js { }
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @email = Email.find(params[:id])
    @email.destroy
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js { }
    end
  end
end
