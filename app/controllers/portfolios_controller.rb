class PortfoliosController < ApplicationController
  
  def index
    @portfolio_item = Portfolio.all
  end

  def angular
    @angular_portfolio_item = Portfolio.angular
  end

  def ruby
    @rails_portfolio_item = Portfolio.ruby
  end

  def new
    @portfolio_item = Portfolio.new
  end

  def create
    @portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body))

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'Se ha creado el objeto del Portfolio.' }
      else
        format.html { render :new }
      end
    end
  end  

  def edit
    @portfolio_item = Portfolio.find(params[:id])
  end

  def update
    @portfolio_item = Portfolio.find(params[:id])

    respond_to do |format|
      if @portfolio_item.update(params.require(:portfolio).permit(:title, :subtitle, :body))
        format.html { redirect_to portfolios_path, notice: 'Se ha modificado el artículo del Portfolio.' }
      else
        format.html { render :edit }
      end
    end
  end

  def show
    @portfolio_item = Portfolio.find(params[:id])
  end

  def destroy
    # Perform the lookout
    @portfolio_item = Portfolio.find(params[:id])

    # Destroy(delete) the record
    @portfolio_item.destroy

    # Redireccionar a la página
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: 'Se ha borrado el artículo del Portfolio.' }
    end
  end

end
