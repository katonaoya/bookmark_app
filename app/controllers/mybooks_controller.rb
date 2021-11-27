class MybooksController < ApplicationController
  def index
    @mybooks = current_user.mybooks
  end

  def readed
    mybooks = current_user.mybooks
    @mybooks = []
    mybooks.each do |mybook|
      unless mybook.feedback.present?
        @mybooks << mybook
      end
    end
    render "mybooks/index"
  end
    
  def unreaded
    mybooks = current_user.mybooks
    @mybooks = []
    mybooks.each do |mybook|
      if mybook.feedback.present?
        @mybooks << mybook
      end
    end
    render "mybooks/index"
  end

  def new
    @mybook = Mybook.new
  end

  def create
    @mybook = Mybook.new(mybook_params.merge(user_id: current_user.id))
    if @mybook.save
      redirect_to root_path, notice: "Mybookを登録しました。"
    else
      render :new
    end
  end

  def edit
    @mybook = Mybook.find(params[:id])
    @record = Record.new(mybook_id: @mybook.id)
  end

  def destroy
    mybook = Mybook.find(params[:id])
    mybook.destroy
    redirect_to root_path
  end

  def update
    @mybook = Mybook.find(params[:id])
    
    if @mybook.update(mybook_params)
      redirect_to mybook_path, notice: "「#{@mybook.title}」を更新しました。"
    else
      render :edit
    end
  end

  def show
    @mybook = Mybook.find(params[:id])
    @records = Record.where(mybook_id: params[:id])
  end

  def reading
    @mybook = Mybook.find(params[:id])
  end

  def reading_edit
    @mybook = Mybook.find(params[:id])
    @mybook.update(finish_params)
    if @mybook.feedback.present?
      redirect_to mybook_path, notice: "「#{@mybook.title}」を読了しました。"
    else
      render :reading
    end
  end

  private

  def mybook_params
    params.require(:mybook).permit(:title, :page, :memo)
  end

  def finish_params
    params.require(:mybook).permit(:feedback)
  end

end
