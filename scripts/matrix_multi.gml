var result, i, j, k;
result = ds_grid_create(3, 3)
for (i = 0; i < 3; i += 1)
{
    for (j = 0; j < 3; j += 1)
    {
        ds_grid_set(result, i, j, 0)
        for (k = 0; k < 3; k += 1)
            ds_grid_add(result, i, j, ((ds_grid_get(argument0, k, j)) * (ds_grid_get(argument1, i, k))))
    }
}
return result;
