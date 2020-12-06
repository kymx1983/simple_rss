class PageController < ApplicationController
  def index
    @pages = Page.all
  end

  def show
    @page = Page.find_by(id: params[:id])
  end

  def new
    @page = Page.new
  end

  def edit
    @page = Page.find_by(id: params[:id])
  end

  def create

    @page = Page.new
    @page.title = params[:title]
    @page.url = params[:url]
    @page.memo = params[:memo]
    @page.page_type = 0

    if @page.save
      flash[:notice] = "「#{@page.title}」を追加しました。"
      redirect_to('/page/index')
    else
      flash[:alert] = "入力内容に誤りがあります。ご確認ください。"
      render("page/new")
    end
  end

  def update
    @page = Page.find_by(id: params[:id])
    @page.title = params[:title]
    @page.url = params[:url]
    @page.memo = params[:memo]
    @page.page_type = 0

    if @page.save
      flash[:notice] = "「#{@page.title}」を編集しました。"
      redirect_to('/page/index')
    else
      flash[:alert] = "入力内容に誤りがあります。ご確認ください。"
      render("page/edit")
    end
  end

  def destroy
    @page = Page.find_by(id: params[:id])
    @page.destroy

    flash[:notice] = "「#{@page.title}」を削除しました。"

    redirect_to("/page/index")
  end
end
