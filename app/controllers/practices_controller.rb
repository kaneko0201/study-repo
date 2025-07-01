class PracticesController < ApplicationController
  def new
    @practices = Practice.new
  end

  def index
    @practices = Practice.all
  end

  def show
    @practice = Practice.find_by(id: params[:id])
    if @practice.nil?
      flash[:danger] = "記事が見つかりませんでした。"
      redirect_to root_path
    end
  end

  def create
    @practice = Practice.new(practice_params)
    if @practice.save
      flash[:success] = "記事が作成できました"
      redirect_to @practice
    else
      flash[:danger] = "記事の作成が失敗しました。"
      render :new, status: :unprocessable_entity
    end
  end

  private

  def practice_params
    params.require(:practice).permit(:title, :body)
  end
end
