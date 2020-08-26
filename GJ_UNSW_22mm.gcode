; ###########################################################################################################
; GUIDELINES for WRITING CODE

; TIP EXTRUSION VOLUMES for 4x Multiplier
; white tip, 1uL = EE0.00452
; Lavendar tip, 1uL = E0.00254
; Red tip, 1uL = E0.00706
; Blue tip, 1uL = E0.05

; SPEEDS
; F60 = 1mm/second
; F120 = 2mm/second
; F180.....
; .
; .
; .
; F2400 = 20mm/second

; ###########################################################################################################

G21 ; set units to millimeters
G90 ; use absolute coordinates
M83 ; use relative distances for extrusion

T0
G92 X0 Y0 Z10 E0
G1 F180
G4 P1000
G1 E0.05
G4 P3000
G92 E0
T0




G1 F120 X0 Y0 Z0 
P1000
G1 F20 X0.5 Y0 Z0 E0.05
G1 F20 X2.5 Y0 Z0 E0.012
G1 F20 X3.25 Y0 Z0 E0.01
;G4 P1000                  ;SLIGHT pause for tight corner
G1 F20 X3.25 Y-0.5 Z0 E0.003         ;start U
G1 F20 X3.25 Y-2.75 Z0 E0.0135
G1 F20 X3.4 Y-3 Z0 E0.0017 
G1 F20 X3.8 Y-3.5 Z0 E0.0038
G1 F20 X4.9 Y-3.5 Z0 E0.0066
G1 F20 X5.3 Y-3 Z0 E0.0038
G1 F20 X5.5 Y-2.75 Z0 E0.0017
G1 F20 X5.5 Y-0.5 Z0 E0.0135
G1 F20 X5.5 Y0 Z0 E0.003          ;finish U
;G4 P1000
G1 F20 X7 Y0 Z0 E0.009          ;start N  
G1 F20 X7 Y-0.5 E0.003
G1 F20 X7 Y-3 E0.015
G1 F20 X7 Y-3.5 E0.003
;G4 P1000
G1 F20 X8.6 Y-0.7 E0.019            ;N diagonal
G1 F20 X9 Y0 E0.004
;G4 P1000
G1 F20 X9 Y-0.5 E0.003               ;N start descent
G1 F20 X9 Y-3 E0.015
G1 F20 X9 Y-3.5 E0.003          ;finish N
;G4 P1000
                                ;start S
G1 F20 X11.8 Y-3.5 E0.0168               ;bottom curve
G1 F20 X12.2 Y-3.25 E0.0028
G1 F20 X12.4 Y-3 E0.0019
G1 F20 X12.4 Y-2.25 E0.0105
G1 F20 X12.2 Y-2 E0.0019
G1 F20 X11.8 Y-1.75 E0.0028
G1 F20 X10.8 Y-1.75 E0.0067
G1 F20 X10.4 Y-1.5 E0.0028
G1 F20 X10.2 Y-1.25 E0.0019 
G1 F20 X10.2 Y-0.5 E0.0105
G1 F20 X10.4 Y-0.25 E0.0019
G1 F20 X10.8 Y0 E0.0028
G1 F20 X11.5 Y0 E0.0042
G1 F20 X12.5 Y0 E0.0067
G1 F20 X13 Y0 E0.003          ;finish S
;G4 P1000
G1 F20 X13 Y-0.5 E0.003       ;start W
G1 F20 X14 Y-3 E0.016
G1 F20 X14.3 Y-3.5 E0.003
;G4 P1000
G1 F20 X15.3 Y-1.5 E0.013             ;middle peak
P1000
G1 F20 X16.3 Y-3.5 E0.0013
;G4 P1000
G1 F20 X16.6 Y-3 E0.003
G1 F20 X17.6 Y-0.5 E0.016
G1 F20 X17.6 Y0 E0.003          ;finish W
;G4 P1000
G1 F20 X21 Y0 E0.05
G1 F20 X22 Y0 E0.07
P2000




; Filament-specific end gcode 
;END gcode for filament
G92 Z0
G1 Z10 F500
G92 Z0
M84       ;Motors off
M104 S0 ; set temperature
M140 S0 ; set bed temperature
; filament used = 0.0mm (0.0cm3)
; total filament cost = 0.0

; avoid_crossing_perimeters = 1
; bed_shape = -81x-81,81x-81,81x81,-81x81
; bed_temperature = 0
; before_layer_gcode = 
; between_objects_gcode = 
; bridge_acceleration = 0
; bridge_fan_speed = 100
; brim_connections_width = 0
; brim_width = 0
; complete_objects = 0
; cooling = 0
; default_acceleration = 0
; disable_fan_first_layers = 3
; duplicate_distance = 6
; end_filament_gcode = "; Filament-specific end gcode \n;END gcode for filament\n"
; end_gcode = G92 Z0\nG1 Z10 F500\nG92 Z0\nM84       ;Motors off
; extruder_clearance_height = 20
; extruder_clearance_radius = 20
; extruder_offset = 0x0
; extrusion_axis = E
; extrusion_multiplier = 3
; fan_always_on = 0
; fan_below_layer_time = 60
; filament_colour = #FFFFFF
; filament_cost = 0
; filament_density = 0
; filament_diameter = 7.285
; filament_max_volumetric_speed = 0
; filament_notes = ""
; first_layer_acceleration = 0
; first_layer_bed_temperature = 0
; first_layer_extrusion_width = 0
; first_layer_speed = 3
; first_layer_temperature = 0
; gcode_arcs = 0
; gcode_comments = 0
; gcode_flavor = reprap
; has_heatbed = 1
; infill_acceleration = 0
; infill_first = 0
; interior_brim_width = 0
; layer_gcode = 
; max_fan_speed = 100
; max_layer_height = 0.3
; max_print_speed = 175
; max_volumetric_speed = 0
; min_fan_speed = 35
; min_layer_height = 0.1
; min_print_speed = 10
; min_skirt_length = 0
; notes = 
; nozzle_diameter = 0.2
; only_retract_when_crossing_perimeters = 1
; ooze_prevention = 0
; output_filename_format = [input_filename_base]_[timestamp].gcode
; perimeter_acceleration = 0
; post_process = 
; pressure_advance = 0
; printer_notes = 
; resolution = 0.001
; retract_before_travel = 5
; retract_layer_change = 0
; retract_length = 0
; retract_length_toolchange = 10
; retract_lift = 0.15
; retract_lift_above = 0
; retract_lift_below = 0
; retract_restart_extra = 0
; retract_restart_extra_toolchange = 0
; retract_speed = 1
; skirt_distance = 0.3
; skirt_height = 1
; skirts = 0
; slowdown_below_layer_time = 5
; spiral_vase = 0
; standby_temperature_delta = -5
; start_filament_gcode = "; Filament gcode\n"
; start_gcode = T0\nG92 X0 Y0 Z0 E0\nG1 E0.09\nG92 E0\nT0\nM302 P1
; temperature = 0
; threads = 4
; toolchange_gcode = 
; travel_speed = 3
; use_firmware_retraction = 0
; use_relative_e_distances = 1
; use_set_and_wait_bed = 0
; use_set_and_wait_extruder = 0
; use_volumetric_e = 0
; vibration_limit = 0
; wipe = 0
; z_offset = 0
; z_steps_per_mm = 0
; adaptive_slicing = 0
; adaptive_slicing_quality = 75%
; dont_support_bridges = 1
; extrusion_width = 0
; first_layer_height = 100%
; infill_only_where_needed = 0
; interface_shells = 0
; layer_height = 0.2
; match_horizontal_surfaces = 0
; raft_layers = 0
; regions_overlap = 0
; seam_position = nearest
; sequential_print_priority = 0
; support_material = 0
; support_material_angle = 0
; support_material_buildplate_only = 0
; support_material_contact_distance = 0.2
; support_material_enforce_layers = 0
; support_material_extruder = 1
; support_material_extrusion_width = 0
; support_material_interface_extruder = 1
; support_material_interface_extrusion_width = 0
; support_material_interface_layers = 3
; support_material_interface_spacing = 0
; support_material_interface_speed = 100%
; support_material_max_layers = 0
; support_material_pattern = honeycomb
; support_material_spacing = 2.5
; support_material_speed = 40
; support_material_threshold = 60
; xy_size_compensation = 0
; bottom_infill_pattern = rectilinear
; bottom_solid_layers = 0
; bridge_flow_ratio = 1
; bridge_speed = 3
; external_perimeter_extrusion_width = 0
; external_perimeter_speed = 3
; external_perimeters_first = 0
; extra_perimeters = 0
; fill_angle = 45
; fill_density = 100%
; fill_gaps = 1
; fill_pattern = rectilinear
; gap_fill_speed = 3
; infill_every_layers = 1
; infill_extruder = 1
; infill_extrusion_width = 0
; infill_overlap = 15%
; infill_speed = 3
; overhangs = 1
; perimeter_extruder = 1
; perimeter_extrusion_width = 0
; perimeter_speed = 3
; perimeters = 2
; small_perimeter_speed = 3
; solid_infill_below_area = 0
; solid_infill_every_layers = 0
; solid_infill_extruder = 1
; solid_infill_extrusion_width = 0
; solid_infill_speed = 40
; thin_walls = 1
; top_infill_extrusion_width = 0
; top_infill_pattern = rectilinear
; top_solid_infill_speed = 40
; top_solid_layers = 0





