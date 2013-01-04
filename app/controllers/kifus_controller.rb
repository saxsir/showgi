# -*- coding: utf-8 -*-
class KifusController < ApplicationController
  # GET /kifus
  # GET /kifus.json
  def index
    @kifus = Kifu.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @kifus }
    end
  end

  # GET /kifus/1
  # GET /kifus/1.json
  def show
    @kifu = Kifu.find(params[:id])
    @kifu.view += 1
    @kifu.save
    rates = Rate.find_by_sql("SELECT * FROM rates WHERE kifu_id = '#{params[:id]}'")
    sum = 0.0
    rates.each do |r|
      sum += r.rate
    end
    # 小数点第1位で四捨五入
    @rate = ((sum / rates.length) * 10).round / 10.0

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @kifu }
    end
  end

  # GET /kifus/new
  # GET /kifus/new.json
  def new
    @kifu = Kifu.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @kifu }
    end
  end

  # GET /kifus/1/edit
  def edit
    @kifu = Kifu.find(params[:id])
  end

  # POST /kifus
  # POST /kifus.json
  def create
    @kifu = Kifu.new(params[:kifu])

    respond_to do |format|
      if @kifu.save
        format.html { redirect_to @kifu, :notice => 'Kifu was successfully created.' }
        format.json { render :json => @kifu, :status => :created, :location => @kifu }
      else
        format.html { render :action => "new" }
        format.json { render :json => @kifu.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /kifus/1
  # PUT /kifus/1.json
  def update
    @kifu = Kifu.find(params[:id])

    respond_to do |format|
      if @kifu.update_attributes(params[:kifu])
        format.html { redirect_to @kifu, :notice => 'Kifu was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @kifu.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /kifus/1
  # DELETE /kifus/1.json
  def destroy
    @kifu = Kifu.find(params[:id])
    @kifu.destroy

    respond_to do |format|
      format.html { redirect_to kifus_url }
      format.json { head :no_content }
    end
  end
end
