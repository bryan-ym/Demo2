class NeedsController < ApplicationController
  before_filter :login_required
  
  # GET /needs
  # GET /needs.xml
  def index
    @needs = Need.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @needs }
    end
  end

  # GET /needs/1
  # GET /needs/1.xml
  def show
    @need = Need.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @need }
    end
  end

  # GET /needs/new
  # GET /needs/new.xml
  def new
    @need = Need.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @need }
    end
  end

  # GET /needs/1/edit
  def edit
    @need = Need.find(params[:id])
    
  end

  # POST /needs
  # POST /needs.xml
  def create
    @need = Need.new(params[:need])
    
    respond_to do |format|
      if @need.save
        format.html { redirect_to(@need, :notice => 'Need was successfully created.') }
        format.xml  { render :xml => @need, :status => :created, :location => @need }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @need.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /needs/1
  # PUT /needs/1.xml
  def update
    @need = Need.find(params[:id])

    respond_to do |format|
      if @need.update_attributes(params[:need])
        format.html { redirect_to(@need, :notice => 'Need was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @need.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /needs/1
  # DELETE /needs/1.xml
  def destroy
    @need = Need.find(params[:id])
    @need.destroy

    respond_to do |format|
      format.html { redirect_to(needs_url) }
      format.xml  { head :ok }
    end
  end
  
 # GET /needs/1/clarify
  def clarify
    @need = Need.find(params[:id])
    
  end
  
  # GET /needs/1/submit
  def submit
    @need = Need.find(params[:id])
    if @need.status.blank? or @need.status=="草稿"
      @need.status ="待澄清"
      
    elsif @need.status =="待澄清" or @need.status=="待评论"
      @need.status="待评审"
      
    elsif @need.status =="待评审"
      @need.status="待分配"
      
    elsif @need.status =="待分配"
      @need.status="已关闭"  
    else
     
    end
    @need.save
    
  end
  
  # GET /needs/1/process
  def chuli
    @need = Need.find(params[:id])
    
  end
  
 def showall
    @need = Need.find(params[:id])
    
  end
  
end
