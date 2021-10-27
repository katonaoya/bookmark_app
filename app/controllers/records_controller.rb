class RecordsController < ApplicationController
  def index; end

  def new
    @mybook = Mybook.find(params[:mybook_id])
    @record = Record.new
  end

  def create
    @record = Record.new(record_params.merge(mybook_id: params[:mybook_id]))
    if @record.save
      redirect_to mybook_url(@record.mybook_id), notice: "しおりを#{@record.readed_page}ページに挟みました。"
    else
      @mybook = Mybook.find(params[:mybook_id])
      render :new
    end
  end

  def edit
    @record = Record.new
  end

  private

  def record_params
    params.require(:record).permit(:readed_page, :comment, :mybook_id)
  end
end
