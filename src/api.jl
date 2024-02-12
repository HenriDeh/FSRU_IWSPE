export generate_map_greenfield, generate_map_brownfield

function generate_map_greenfield()
    g, consumers_dict, domestic_dict, port_dict, import_dict, export_dict, ports_coordinates, penalized_arcs = solve_greenfield()
    FSRU_IWSPE.GLMakie.activate!(inline=false)
    display(map_network(g, consumers_dict, domestic_dict, port_dict, import_dict, export_dict, ports_coordinates, highlight_arcs = penalized_arcs))
end
function generate_map_brownfield()
    g, consumers_dict, domestic_dict, port_dict, import_dict, export_dict, ports_coordinates, penalized_arcs = solve_brownfield()
    FSRU_IWSPE.GLMakie.activate!(inline=false)
    display(map_network(g, consumers_dict, domestic_dict, port_dict, import_dict, export_dict, ports_coordinates, highlight_arcs = penalized_arcs))
end