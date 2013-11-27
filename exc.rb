begin
nil.xxx
rescue Exception => exc
puts exc.class
puts exc.message
end

