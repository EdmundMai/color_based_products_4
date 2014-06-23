class CollectionsController < ApplicationController
  
  def show
    @collection = Collection.find(params[:id])
  end
  
  def index
    @collections = Collection.where(active: true)
  end
  
end