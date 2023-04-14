class StorageItemsController < ApplicationController
  before_action :set_place 
  before_action :set_storage_item, only: %i[ show edit update destroy ]

  # GET /storage_items or /storage_items.json
  def index
    @storage_items = StorageItem.all
  end

  # GET /storage_items/1 or /storage_items/1.json
  def show
    @storage_item = StorageItem.find(params[:id])
    @place = @storage_item.place
  end

  # GET /storage_items/new
  def new
    @storage_item = StorageItem.new
  end

  # GET /storage_items/1/edit
  def edit
  end

  # POST /storage_items or /storage_items.json
  def create
    @storage_item = StorageItem.new(storage_item_params.merge(place: @place))

    respond_to do |format|
      if @storage_item.save
        format.html { redirect_to place_path(@place), notice: "Storage item was successfully created." }
        format.json { render :show, status: :created }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @storage_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /storage_items/1 or /storage_items/1.json
  def update
    respond_to do |format|
      if @storage_item.update(storage_item_params)
        format.html { redirect_to storage_items_path(@storage_item), notice: "Storage item was successfully updated." }
        format.json { render :show, status: :ok, location: @storage_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @storage_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /storage_items/1 or /storage_items/1.json
  def destroy
    place = @storage_item.place
    @storage_item.destroy

    respond_to do |format|
      format.html { redirect_to place_url(place), notice: "Storage item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_storage_item
      @storage_item = StorageItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def storage_item_params
      params.require(:storage_item).permit(:title, :body)
    end

    def set_place 
      @place = Place.find(params[:place_id])
    end
    
end
