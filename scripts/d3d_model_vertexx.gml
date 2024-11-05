var n, rn;
n = 1 / (sqrt(argument1 * argument1 + argument2 * argument2 + argument3 * argument3))
rn = argument4 * n
d3d_model_vertex_normal(argument0, (argument1 * rn), (argument2 * rn), (argument3 * rn), (argument1 * n), (argument2 * n), (argument3 * n))
