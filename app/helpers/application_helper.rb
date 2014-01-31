module ApplicationHelper

 def is_active?(link_path)
  if current_page?(link_path)
    "active"
  else
    ""
  end
 end


 def flash_class(type)
   case type
     when :alert
       "alert-danger"
     when :notice
       "alert-success"
     else
       ""
   end    
 end
 
 
end