
puts "G'day world!" # check the console!

Document.ready? do
  Element.find('#manage_first').html = '<h1>Hi there!</h1>'
end
