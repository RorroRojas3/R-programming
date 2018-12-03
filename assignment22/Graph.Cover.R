# Name: Rodrigo Ignacio Rojas Garcia
# Assignment #22

Graph.Cover = function(E, S)
{
    # Read file 
    #E = read.table(file = E, header = FALSE, sep = ' ')
    
    # Obtain number of columns
    cols = length(E)
    
    # Obtain number of rows
    rows = nrow(E)
    
    # Get number of List
    list_num = max(E)
    
    # Create empty list of list_num
    adjacent_list = list(NULL)
    adjacent_list[[list_num + 1]] = 0
    
    for (i  in seq(1, rows))
    {
        adjacent_list[[E[i, 1]]] = c(adjacent_list[[E[i, 1]]], E[i, 2])
        adjacent_list[[E[i, 2]]] = c(adjacent_list[[E[i, 2]]], E[i, 1])
    }
    
    # Delete last element on List
    adjacent_list[list_num + 1] = NULL
    
    # Create array of all FALSE of size of vertices
    Cover.Vertex = rep(FALSE, list_num)
    
    # Sets TRUE where vertices cover the Graph
    for(i in S)
    {
        values = c(i, adjacent_list[[i]])
        Cover.Vertex[values] = TRUE
    }
    
    # Returns TRUE or FALSE based if all Graph covered
    return(sum(Cover.Vertex) == length(Cover.Vertex))
}

