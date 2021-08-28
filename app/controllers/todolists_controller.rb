class TodolistsController < ApplicationController
  def new
    @list=List.new
  end
  
  def create
    list = List.new(list_params) #データを新規登録するためのインスタンス作成
    list.save                    #データをデータベースへ保存するためsaveメソッド実行　　　　　　　　　　　　
    redirect_to todolist_path(list.id) #引数(list.id)を記述しないとどの投稿を見えたら良いかわからないため
  end
  
  def index
    @lists = List.all
  end
  
  def show
    @list = List.find(params[:id])
  end
  
  def edit
   @list= List.find(params[:id])
  end
  
  def update
    list = List.find(params[:id])
    list.update(list_params)
    redirect_to todolist_path(list.id)
  end

private #ストロングパラメータは
def list_params
  params.require(:list).permit(:title,:body) #requireでデータをオブジェクト名を指名し、permitでキーを指定する
end
end

