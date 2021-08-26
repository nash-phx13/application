class TodolistsController < ApplicationController
  def new
    @list=List.new
  end
  
  def create
    list = List.new(list_params) #データを新規登録するためのインスタンス作成
    list.save                    #データをデータベースへ保存するためsaveメソッド実行　　　　　　　　　　　　
    redirect_to'/top'            #トップ画面へリダイレクト
  end

private #ストロングパラメータは
def list_params
  params.require(:list).permit(:title,:body) #requireでデータをオブジェクト名を指名し、permitでキーを指定する
end
end

