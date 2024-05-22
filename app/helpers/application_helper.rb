module ApplicationHelper
    def normalize(name)
        display_num = 10
        if name.length >= display_num
            name[0,display_num+1] + "..." 
        else
            name
        end
    end
end
