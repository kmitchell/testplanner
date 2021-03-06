module ApplicationHelper
  def link_to_add_fields(name, f, association, child_association = nil)
    new_object = f.object.send(association).klass.new

    if child_association
      3.times{ new_object.send(child_association).build } # builds 3 test cases
      #new_object.send(child_association).build # builds 1 test case
    end

    id = new_object.object_id

    fields = f.fields_for(association, new_object, child_index: id) do |builder|
      render(association.to_s.singularize + "_fields", f: builder)
    end

    link_to(name, '#', class: "add_fields", data: {id: id, fields: fields.gsub("\n", "")})
  end
end