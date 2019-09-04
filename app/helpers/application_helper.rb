module ApplicationHelper
    # def link_to_add_row(name, form, association)
    #     new_object = form.object.send(association).klass.new
    #     id = new_object.object_id
    #     fields = form.fields_for(association, new_object, child_index: id) do |p|
    #       render(association.to_s.singularize, form: p)
    #     end
    #     link_to(name, '#', class: "new_player ", data: {id: id, fields: fields.gsub("\n", "")})
    #   end
end
