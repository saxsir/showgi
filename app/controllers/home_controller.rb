# -*- coding: utf-8 -*-
class HomeController < ApplicationController
  def index
    # 最近登録された順
    @kifus_order_by_created_at = Kifu.find(:all, :order => 'created_at desc')
    
    # View数が多い順
    @kifus_order_by_view = Kifu.find(:all, :order => 'view desc')
    
    respond_to do |format|
      format.html # index.html.erb
    end
  end
end
