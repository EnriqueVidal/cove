class ReceiversController < ApplicationController
  before_filter :set_receiver, :only => [ :show, :edit, :update, :destroy ]

  def index
    @receivers = Receiver.page params[:page]
  end
  
  def new
    @receiver = Receiver.new
  end

  def create
    @receiver = Receiver.new params[:receiver]
    if @receiver.save
      flash[:success] = t 'messages.success'
      redirect_to @receiver
    else
      render :new
    end
  end

  def update
    if @receiver.update_attributes params[:receiver]
      flash[:success] = t 'messages.success'
      redirect_to @receiver
    else
      render :edit
    end
  end

  def destroy
    @receiver.destroy
    flash[:success] = t 'messages.success'
    redirect_to receivers_path
  end

  private
  def set_receiver
    @receiver = Receiver.find params[:id]
  end
end