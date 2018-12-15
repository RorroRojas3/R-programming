# Name: Rodrigo Ignacio Rojas Garcia
# Assigment: Final Project

Exhaustive.Search.Minimal.Graph.Covering.Algorithm = function(file_name)
{
    E = read.table(file_name, header = FALSE, sep = " ")
  
    adj_table = edge2adj(E)
  
    for(i in seq(1, max(E)))
    {
        subsets = k.Subsets(i, max(E))
        
        for(j in seq(1, nrow(subsets)))
        {
                if(Graph.Cover(E, subsets[j,]))
                {
                    return(subsets[j,])
                }
        }
    }
}

k.Subsets = function(k, n)
{
    c = seq(1, k)
    j = 1
    M.row <- 1
    M <- matrix(0,nrow = choose(n,k), ncol = k)
    
    while (j != 0)
    {
        M[M.row,] = c
        M.row = M.row + 1
        
        j = k
        while((j > 0) && c[j] == (n - k + j))
        {
            j = j - 1
        }
        
        if (j == 0)
        {
            break
        }
        
        c[j] = c[j] + 1
        
        if ((j + 1) <= k)
        {
            for (i in seq(j + 1, k, 1))
            {
                if ((i - 1) > 0)
                {
                    c[i] = c[i - 1] + 1
                }
            }
        }
    }
    
    return(M)
}

edge2adj = function(E)
{
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
    
    return(adjacent_list)
}

Graph.Cover = function(E, S)
{
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