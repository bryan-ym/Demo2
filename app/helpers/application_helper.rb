module ApplicationHelper

  def productline_list
    @background_setup=BgSetup.find(1)
    @product_list=@background_setup.bg_prdocutline.split(/、/)
    
  end
  
  def reqstatus_list
    @background_setup=BgSetup.find(1)
    @status_list=@background_setup.bg_status.split(/、/)
    
  end
  
  def get_req_status
    @need = Need.find(params[:id])
    @need.status
    
  end
end
