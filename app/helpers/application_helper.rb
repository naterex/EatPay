module ApplicationHelper
	def link_to_add_fields(name, f, association)
    	new_object = f.object.send(association).klass.new
    	id = new_object.object_id
	    fields = f.fields_for(association, new_object, child_index: id) do |builder|
	      render(association.to_s.singularize + "_fields", f: builder)
	    end
    	link_to(name, '#', class: "add_fields btn btn-primary", data: {id: id, fields: fields.gsub("\n", "")})
	end

	# def flash_class(level)
	#     case level.to_sym
	# 	    when :notice then "alert alert-info"
	# 	    when :success then "alert alert-success"
	# 	    when :error then "alert alert-error"
	# 	    when :info then "alert alert-info"
	#     end
	# end

  def alert_class_for(flash_type)
    {
      :success => 'alert-success',
      :error => 'alert-danger',
      :alert => 'alert-warning',
      :notice => 'alert-info'
    }[flash_type.to_sym] || flash_type.to_s
  end

end
