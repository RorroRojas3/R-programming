# Name: Rodrigo Ignacio Rojas Garcia
# Assignment 21

edge2adj = function(file_name)
{
    # Read file 
    input_file = read.table(file = file_name, header = FALSE, sep = ' ')
    
    # Obtain number of columns
    cols = length(input_file)
    
    # Obtain number of rows
    rows = nrow(input_file)
    
    # Get number of List
    list_num = max(input_file)
    
    # Create empty list of list_num
    adjacent_list = list(NULL)
    adjacent_list[[list_num + 1]] = 0
    
    for (i  in seq(1, rows))
    {
        adjacent_list[[input_file[i, 1]]] = c(adjacent_list[[input_file[i, 1]]], input_file[i, 2])
        adjacent_list[[input_file[i, 2]]] = c(adjacent_list[[input_file[i, 2]]], input_file[i, 1])
    }
    
    # Delete last element on List
    adjacent_list[list_num + 1] = NULL
    
    return(adjacent_list)
}