reinitialize

bg white
set depth_cue, 0
set dash_color, orange
set dash_gap, 0.1
set label_size, 15
set label_color, black
set ray_opaque_background, 1
hide dis

fetch 3h4e

select capsid_all, chain A + chain B + chain C + chain D + chain E + chain F

color gray70, chain A + chain C + chain E
color gray30, chain B + chain D + chain F

hide all
show cartoon, capsid_all
cartoon loop, capsid_all

select capsid, chain A
hide all
show cartoon, capsid

select pos86, capsid and resi 86
select pos98, capsid and resi 98
show stick, pos86
color red, pos86
show stick, pos98
color red, pos98
distance d_86_98, pos86 and name CA, pos98 and name OE1


select pos87, capsid and resi 87
select pos98, capsid and resi 98
show stick, pos87
color red, pos87
show stick, pos98
color red, pos98
distance d_87_98, pos87 and name CD2, pos98 and name OE1


select pos96, capsid and resi 96
select pos116, capsid and resi 116
show stick, pos96
color red, pos96
show stick, pos116
color red, pos116
distance d_96_116, pos96 and name SD, pos116 and name CA


select pos96, capsid and resi 96
select pos120, capsid and resi 120
show stick, pos96
color red, pos96
show stick, pos120
color red, pos120
distance d_96_120, pos96 and name CG, pos120 and name CD2


select pos209, capsid and resi 209
select pos214, capsid and resi 214
show stick, pos209
color red, pos209
show stick, pos214
color red, pos214
distance d_209_214, pos209 and name O, pos214 and name CE


select pos26, capsid and resi 26
select pos36, capsid and resi 36
show stick, pos26
color red, pos26
show stick, pos36
color red, pos36
distance d_26_36, pos26 and name CG1, pos36 and name CG2


select pos72, capsid and resi 72
select pos140, capsid and resi 140
show stick, pos72
color red, pos72
show stick, pos140
color red, pos140
distance d_72_140, pos72 and name OG1, pos140 and name NZ


select pos153, capsid and resi 153
select pos171, capsid and resi 171
show stick, pos153
color red, pos153
show stick, pos171
color red, pos171
distance d_153_171, pos153 and name CD1, pos171 and name OG1


hide labels

set_view (\
     0.318312824,   -0.872383952,   -0.370959550,\
    -0.339966089,   -0.470338255,    0.814369321,\
    -0.884927094,   -0.133110702,   -0.446297765,\
    -0.000261171,   -0.000254318, -212.174514771,\
     3.867044449,  -74.173889160,  -30.548633575,\
   107.790054321,  316.460906982,  -20.000000000 )

png monomer_lteq5.png,  1000, 1000,300, ray= 1
