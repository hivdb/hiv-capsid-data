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

color gray30, chain A + chain C + chain E
color gray70, chain B + chain D + chain F

hide all
show cartoon, capsid_all
cartoon loop, capsid_all

select capsid, chain A
select capsid_2nd, chain F
hide all
show cartoon, capsid
show cartoon, capsid_2nd


select pos144, capsid and resi 144
select pos162, capsid_2nd and resi 162
show stick, pos144
color red, pos144
show stick, pos162
color red, pos162
distance d_144_162, capsid and resi 144 and name O, capsid_2nd  and resi 162 and name NH2

select pos45, capsid_2nd and resi 45
select pos54, capsid and resi 54
show stick, pos45
color red, pos45
show stick, pos54
color red, pos54
distance d_45_54, capsid_2nd and resi 45 and name CA, capsid  and resi 54 and name CB

select pos71, capsid and resi 71
select pos169, capsid_2nd and resi 169
show stick, pos71
color red, pos71
show stick, pos169
color red, pos169
distance d_71_169, capsid and resi 71 and name OE2, capsid_2nd  and resi 169 and name OH

hide labels

set_view (\
     0.301157653,   -0.930401981,   -0.208929792,\
    -0.848514974,   -0.161494032,   -0.503921092,\
     0.435109675,    0.329042882,   -0.838098705,\
    -0.000240402,   -0.000029013, -246.987945557,\
    -5.037012100,  -55.131103516,  -36.810478210,\
   108.021102905,  385.761962891,  -20.000000000 )

png hexamer_lteq10.png,  1000, 1000,300, ray= 1
