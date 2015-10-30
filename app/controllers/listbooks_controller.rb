class ListbooksController < ApplicationController
  before_action :set_listbook, only: [:show, :edit, :update, :destroy]

  # GET /listbooks
  # GET /listbooks.json
  def index
    # @listbooks = Listbook.all
    # @listbook should be only the one that has been selected before
    @listbooks = Listbook.all
    @current_list_id = session[:current_list_id]
    @current_list = session[:current_list] #List.where(:id => session[:current_list_id])
  end

  # GET /listbooks/1
  # GET /listbooks/1.json
  def show
  end

  # GET /listbooks/new
  def new
    @listbook = Listbook.new
    @current_list_id = session[:current_list_id]
    @current_list = session[:current_list]
  end

  # GET /listbooks/1/edit
  def edit
  end

  # POST /listbooks
  # POST /listbooks.json
  def create
    @listbook = Listbook.new(listbook_params)
    @listbook.list_id = session[:current_list_id]

    respond_to do |format|
      if @listbook.save
        format.html { redirect_to @listbook, notice: 'Book successfully added.' }
        format.json { render :show, status: :created, location: @listbook }
      else
        format.html { render :new }
        format.json { render json: @listbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /listbooks/1
  # PATCH/PUT /listbooks/1.json
  def update
    respond_to do |format|
      if @listbook.update(listbook_params)
        format.html { redirect_to @listbook, notice: 'Listbook was successfully updated.' }
        format.json { render :show, status: :ok, location: @listbook }
      else
        format.html { render :edit }
        format.json { render json: @listbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /listbooks/1
  # DELETE /listbooks/1.json
  def destroy
    @listbook.destroy
    respond_to do |format|
      format.html { redirect_to listbooks_url, notice: 'Book successfully removed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_listbook
      @listbook = Listbook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def listbook_params
      #params[:listbook]
      params.require(:listbook).permit(:list_id, :book_id)
    end
end
