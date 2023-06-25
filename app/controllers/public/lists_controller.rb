class Public::ListsController < Public::ApplicationController
  # before_action :ensure_guest_user, only: [:edit]

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to lists_path
    else
      render "new"
    end
  end

  # Modalで食材を新規投稿するための記述
  def create_list
    @list = List.new(list_params)
    @list.save
  end

  def ajax_list
    # JSON形式のレスポンスを返す
    render json: List.all.map {|list| {value: list.id, text: list.name}}
  end

  def index
    @lists = List.order("name_kana").page(params[:page]).per(10)
  end

  def show
    @list = List.find(params[:id])
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    @list = List.find(params[:id])
    if @list.update(list_params)
      redirect_to lists_path
    else
      render :edit
    end
  end

  private

  def list_params
    params.require(:list).permit(:name, :name_kana, :supplier, :price, :lot, :unit)
  end

  # def ensure_guest_user
  #   if  current_member.name == "guestuser"
  #     redirect_to lists_path, notice: 'ゲストユーザーは編集画面へ遷移できません。'
  #   end
  # end

end
