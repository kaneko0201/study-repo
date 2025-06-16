class PracticesController < ApplicationController

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

end
