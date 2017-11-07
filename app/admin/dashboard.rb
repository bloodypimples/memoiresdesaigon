ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    # div class: "blank_slate_container", id: "dashboard_default_message" do
    #   span class: "blank_slate" do
    #     span I18n.t("active_admin.dashboard_welcome.welcome")
    #     small I18n.t("active_admin.dashboard_welcome.call_to_action")
    #   end
    # end

    columns do
      column do
        panel "Info" do
          para "Welcome to Memoires de Saigon admin lounge."
        end
      end
    end

    columns do
      column do
        panel "Recent Rooms" do
          ul do
            Room.last(5).map do |room|
              li link_to(room.name, admin_room_path(room))
            end
          end
        end
      end

      column do
        panel "Recent Galleries" do
          ul do
            Gallery.last(5).map do |g|
              li link_to(g.name, admin_gallery_path(g))
            end
          end
        end
      end

      column do
        panel "Recent Gallery Images" do
          ul do
            GalleryImage.last(5).map do |gi|
              li link_to(gi.image_file_name, admin_gallery_image_path(gi))
            end
          end
        end
      end
    end

    columns do

      column do
        panel "Recent Events" do
          ul do
            Event.last(5).map do |e|
              li link_to(e.name, admin_event_path(e))
            end
          end
        end
      end
    end
  end # content
end
