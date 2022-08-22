
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name DESS -dir "D:/Paul S/project/ME/TRE/des/planAhead_run_1" -part xc3s1600efg320-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/Paul S/project/ME/TRE/des/Des_Top.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/Paul S/project/ME/TRE/des} }
set_property target_constrs_file "Des_Top.ucf" [current_fileset -constrset]
add_files [list {Des_Top.ucf}] -fileset [get_property constrset [current_run]]
link_design
