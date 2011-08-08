class IssuersController < ApplicationController
  before_filter :set_issuer, :only => [ :show, :edit, :update, :destroy ]

  def index
    @issuers = Issuer.page params[:page]
  end
  
  def new
    @issuer = Issuer.new
  end

  def create
    @issuer = Issuer.new params[:issuer]
    if @issuer.save
      flash[:success] = t 'messages.success'
      redirect_to @issuer
    else
      render :new
    end
  end

  def update
    if @issuer.update_attributes params[:issuer]
      flash[:success] = t 'messages.success'
      redirect_to @issuer
    else
      render :edit
    end
  end

  def destroy
    @issuer.destroy
    flash[:success] = t 'messages.success'
    redirect_to issuers_path
  end

  private
  def set_issuer
    @issuer = Issuer.find params[:id]
  end
end
