# -*- coding: utf-8 -*-
class HomeController < ApplicationController
  def index
    # 評価が高い順に棋譜を表示
    @kifus = Kifu.all
    
    # 最近登録された棋譜を表示

    respond_to do |format|
      format.html # index.html.erb
    end
  end
end
