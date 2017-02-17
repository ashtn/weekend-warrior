def hello_world name = nil #(adding a defult will allow you to run the method with or without an argument being passed through)
  if name == nil
    return "Hello, World!"
  elsif name == ""
    return "Hello, World!"
  else
    return "Hello, #{name}!"
  end
end


#chris' solution
# def hello_world name = nil
#   if name == nil || name == ""
#     return "Hello, World"
#   else
#     return "Hello, #{name}!"
#   end
# end
