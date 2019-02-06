def depth_first(graph, source, terminal)
    array_stack = [source]

    loop do
        current_node = array_stack.pop
        return false if current_node.nil?
        return true if current_node == terminal

        children = (0..matrix.length-1).to_a.select do |i|
            matrix[current_node][i] == 1
        end
        array_stack += children
    end
end