module ApplicationHelper

    def auth_token
       html_safe +=  "<input type="hidden"
        name="authenticity_token"
        value="< form_authenticity_token: {form_authenticity_token: form_authenticity_token} >"
        />"
    end 
end
