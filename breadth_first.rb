def breadth_first(matrix, source, terminal)
    array_queue = [source]

    loop do
        current_node = array_queue.pop
        return false if current_node.nil?
        return true if current_node == terminal

        children = (0..matrix.length-1).to_a.select do |i|
            matrix[current_node][i] == 1
        end
        array_queue = children + array_queue
    end
end