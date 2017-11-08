ActiveAdmin.register Gallery do

permit_params :room_id, :tour_id, :name

index do
  selectable_column
  id_column
  column :name
  actions
end

end
