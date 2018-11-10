ActiveAdmin.register_page "Dashboard" do
  menu priority: 1 , label: "Головна" #proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    #div class: "blank_slate_container", id: "dashboard_default_message" do
      #span class: "blank_slate" do
       # span I18n.t("active_admin.dashboard_welcome.welcome")
       # small I18n.t("active_admin.dashboard_welcome.call_to_action")
     # end
    #end

    # Here is an example of a simple dashboard with columns and panels.
    
    columns do
       column do
         panel "Недавні документи" do
           ul do
            Document.limit(10).order('name').each do |document|
               li link_to(document.name, admin_document_path(document))
             end
           end
         end
      end
      
 
        column do
          panel "Недавні Звіти" do
            ul do
             Report.limit(10).order('name').each do |report|
                li link_to(report.name, admin_report_path(report))
              end
            end
          end
       end

       column do
        panel "Недавня спеіальна інформація" do
          ul do
           Specialinfo.limit(10).order('name').each do |specialinfo|
              li link_to(specialinfo.name, admin_specialinfo_path(specialinfo))
            end
          end
        end
     end

     end
  end # content
end
