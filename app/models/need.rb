class Need < ActiveRecord::Base
  attr_accessible :description, :final_req, :status, :submitter, :submitter_info, :title
end
