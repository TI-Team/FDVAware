class ClientsController < ApplicationController
  before_action :set_client, only: [:show, :edit, :update, :destroy]

  # GET /clients
  # GET /clients.json
  def index
    filter_index_department
  end

  # GET /clients/1
  # GET /clients/1.json
  def show
    @users = User.all
  end

  # GET /clients/new
  def new
    @client = Client.new
    @users = User.all
  end

  # GET /clients/1/edit
  def edit
    @users = User.all
    @clients = Client.all
  end

  # POST /clients
  # POST /clients.json
  def create
    @users = User.all
    @client = Client.new(client_params)

    respond_to do |format|
      if @client.save
        format.html { redirect_to @client, notice: 'Client was successfully created.' }
        format.json { render :show, status: :created, location: @client }
      else
        format.html { render :new }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clients/1
  # PATCH/PUT /clients/1.json
  def update
    @users = User.all
    respond_to do |format|
      if @client.update(client_params)
        format.html { redirect_to @client, notice: 'Client was successfully updated.' }
        format.json { render :show, status: :ok, location: @client }
      else
        format.html { render :edit }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clients/1
  # DELETE /clients/1.json
  def destroy
    @client.destroy
    respond_to do |format|
      format.html { redirect_to clients_url, notice: 'Client was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def search
    filter_search_department
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client
      @client = Client.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def client_params
      params.require(:client).permit(:cpf_cnpj, :name, :street, :number, :neighbourhood, :city, :email, :phone, :cep, :user_id)
    end

    def filter_index_department
      if current_user.department_id == 1 || current_user.department_id == 2 || current_user.department_id == 4
        @clients = Client.all
        @users = User.all
      else
        @clients = Client.order(:name).where("user_id = ?", current_user.id )
        @users = User.order(:name).where("user_id = ?", current_user.id )
      end
    end

    def filter_search_department
      if current_user.department_id == 1 || current_user.department_id == 2 || current_user.department_id == 4
        @name = params[:name]
        Client.where "name ilike ?", "%#{@name}%"
      else
        @name = params[:name]
        @clients = Client.where "name ilike ? and user_id = ?", "%#{@name}%", current_user.id
      end
    end
end
