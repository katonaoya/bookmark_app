class MybooksController < ApplicationController
  def index
    @mybooks = Mybook.all
  end

  def new
    @mybook = Mybook.new
  end

  def create
    @mybook = Mybook.new(mybook_params)
    if @mybook.save
      redirect_to root_path, notice: "Mybookを登録しました。"
    else
      render :new
    end
  end

  def edit
    @mybook = Mybook.find(params[:id])
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
  end

  def reading
    @mybook = Mybook.find(params[:id])
  end

  def reading_edit
    @mybook = Mybook.find(params[:id])
    @mybook.update(finish_params)
    redirect_to mybook_path, notice: "「#{@mybook.title}」を読了しました。"
    
    # if @mybook.update(finish_params)
    #   redirect_to mybook_path, notice: "「#{@mybook.title}」を読了しました。"
    # else
    #   render :reading, notice: "登録失敗"
    # end
  end

  private

  def mybook_params
    params.require(:mybook).permit(:title, :page, :memo)
  end

  def finish_params
    params.require(:mybook).permit(:title, :page, :memo, :feedback)
  end

end
