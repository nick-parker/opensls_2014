; generated by Alex on 7/11/2014

; layer_height = 0.05
; perimeters = 0
; top_solid_layers = 0
; bottom_solid_layers = 0
; fill_density = 1.0
; perimeter_speed = 30
; infill_speed = 60
; travel_speed = 130
; nozzle_diameter = 0.075
; filament_diameter = 2.86
; extrusion_multiplier = 1
; perimeters extrusion width = 0.09mm
; infill extrusion width = 0.09mm
; solid infill extrusion width = 0.09mm
; top infill extrusion width = 0.09mm
; first layer extrusion width = 0.10mm

G21 ; set units to millimeters

G90 ; use absolute coordinates
M83 ; i think this means turn the motors on for the powder distributor 
G0 X-100 F3000
T0 ;select E0 axis part bed piston
G0 E0.15 F200; lower part bed piston by 150 microns
T1 ;select E1 axis, feed piston 
G0 E0.45 F200; raise feed by 450 microns, this height gives better powder bed dispersion
G0 Z-244 F3000; move wiper to end 244 mm
G0 Z0 F3000; move wiper back to origin

M649 S18; set laser power to 18
G0 X10 Y50 F7800.000
G1 X10 Y50 F500.000; top left corner of rectangle
G1 X40 Y50 F500.000
G0 X10 Y49 F7800.00; move the laser to left and start the next line
G1 X10 Y49 F500.000;
G1 X40 Y49 F500.000
G0 X10 Y48 F7800.00; move the laser to left and start the next line
G1 X10 Y48 F500.000; 
G1 X40 Y48 F500.000
G0 X10 Y47 F7800.00; move the laser to left and start the next line
G1 X10 Y47 F500.000; 
G1 X40 Y47 F500.000
G0 X10 Y46 F7800.00; move the laser to left and start the next line
G1 X10 Y46 F500.000; 
G1 X40 Y46 F500.000
G0 X10 Y45 F7800.00; move the laser to left and start the next line
G1 X10 Y45 F500.000; 
G1 X40 Y45 F500.000
G0 X10 Y44 F7800.00; move the laser to left and start the next line
G1 X10 Y44 F500.000;
G1 X40 Y44 F500.000 
G0 X10 Y43 F7800.00; move the laser to left and start the next line
G1 X10 Y43 F500.000; 
G1 X40 Y43 F500.000
G0 X10 Y42 F7800.00; move the laser to left and start the next line
G1 X10 Y42 F500.000; 
G1 X40 Y42 F500.000
G0 X10 Y41 F7800.00; move the laser to left and start the next line
G1 X10 Y41 F500.000; 
G1 X40 Y41 F500.000
G0 X10 Y40 F7800.00; move the laser to left and start the next line
G1 X10 Y40 F500.000; 
G1 X40 Y40 F500.000
G0 X10 Y39 F7800.00; move the laser to left and start the next line
G1 X10 Y39 F500.000; 
G1 X40 Y39 F500.000
G0 X10 Y38 F7800.00; move the laser to left and start the next line
G1 X10 Y38 F500.000; 
G1 X40 Y38 F500.000
G0 X10 Y37 F7800.00; move the laser to left and start the next line
G1 X10 Y37 F500.000; 
G1 X40 Y37 F500.000
G0 X10 Y36 F7800.00; move the laser to left and start the next line
G1 X10 Y36 F500.000; 
G1 X40 Y36 F500.000
G0 X10 Y35 F7800.00; move the laser to left and start the next line
G1 X10 Y35 F500.000; 
G1 X40 Y35 F500.000



G0 X-200 F3000; turn off laser, done with build