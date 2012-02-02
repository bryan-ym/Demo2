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
  
  def role_list
    @background_setup=BgSetup.find(1)
    @role_list=@background_setup.bg_role.split(/、/)
    
  end
  
  def dept1_list
    @background_setup=BgSetup.find(1)
    @dept1_list=@background_setup.bg_dept1.split(/、/)
    
  end
end
