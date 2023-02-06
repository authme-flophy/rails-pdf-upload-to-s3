class DocusController < ApplicationController
  def index
    @docus = Docu.all
  end

  def show
    @docu = Docu.find(params[:id])
  end

  def new
    @docu = Docu.new
  end

  def create
    @docu = Docu.new(docu_params)
    if @docu.save
      redirect_to @docu
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @docu = Docu.find(params[:id])
  end

  def update
    @docu = Docu.find(params[:id])

    if @docu.update(docu_params)
      redirect_to @docu
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @docu = Docu.find(params[:id])
    @docu.destroy
    redirect_to root_path, status: :see_other
  end

  private

  def docu_params
    params.require(:docu).permit(:name, :document_attached)
  end


end
