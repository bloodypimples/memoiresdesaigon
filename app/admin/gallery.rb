ActiveAdmin.register Gallery do

permit_params :room_id, :name

index do
  selectable_column
  id_column
  column :name
  column :room
  actions
end

end
