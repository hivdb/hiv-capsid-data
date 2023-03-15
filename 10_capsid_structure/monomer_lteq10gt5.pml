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
# select capsid_2nd, chain F
hide all
show cartoon, capsid
# show cartoon, capsid_2nd

select pos41, (capsid and resi 41)
select pos132, (capsid and resi 132)
show stick, pos41
color red, pos41
show stick, pos132
color red, pos132
distance d_41_132, capsid and resi 41 and name OG, capsid and resi 132 and name N
# distance d_41_132, capsid_2nd and resi 41 and name OG, capsid_2nd and resi 132 and name N

select pos132, (capsid and resi 132)
select pos139, (capsid and resi 139)
show stick, pos132
color red, pos132
show stick, pos139
color red, pos139
distance d_132_139, capsid and resi 132 and name O, capsid and resi 139 and name ND2
# distance d_132_139, capsid_2nd and resi 132 and name O, capsid_2nd and resi 139 and name ND2

select pos112, (capsid and resi 112)
select pos118, (capsid and resi 118)
show stick, pos112
color red, pos112
show stick, pos118
color red, pos118
distance d_112_118, capsid and resi 112 and name O, capsid and resi 118 and name N
# distance d_112_118, capsid_2nd and resi 112 and name O, capsid_2nd and resi 118 and name N

select pos11, (capsid and resi 11)
select pos111, (capsid and resi 111)
show stick, pos11
color red, pos11
show stick, pos111
color red, pos111
distance d_11_111, capsid and resi 11 and name C, capsid and resi 111 and name CD1
# distance d_11_111, capsid_2nd and resi 11 and name C, capsid_2nd and resi 111 and name CD1

select pos187, (capsid and resi 187)
select pos207, (capsid and resi 207)
show stick, pos187
color red, pos187
show stick, pos207
color red, pos207
distance d_187_207, capsid and resi 187 and name CB, capsid and resi 207 and name CA
# distance d_187_207, capsid_2nd and resi 187 and name CB, capsid_2nd and resi 207 and name CA

select pos31, (capsid and resi 31)
select pos59, (capsid and resi 59)
show stick, pos31
color red, pos31
show stick, pos59
color red, pos59
distance d_31_59, capsid and resi 31 and name O, capsid and resi 59 and name CG1
# distance d_31_59, capsid_2nd and resi 31 and name O, capsid_2nd and resi 59 and name CG1

select pos91, (capsid and resi 91)
select pos120, (capsid and resi 120)
show stick, pos91
color red, pos91
show stick, pos120
color red, pos120
distance d_91_120, capsid and resi 91 and name CG2, capsid and resi 120 and name NE2
# distance d_91_120, capsid_2nd and resi 91 and name CG2, capsid_2nd and resi 120 and name NE2

select pos87, (capsid and resi 87)
select pos96, (capsid and resi 96)
show stick, pos87
color red, pos87
show stick, pos96
color red, pos96
distance d_87_96, capsid and resi 87 and name O, capsid and resi 96 and name O
# distance d_87_96, capsid_2nd and resi 87 and name O, capsid_2nd and resi 96 and name O
hide labels

set_view (\
     0.307829767,   -0.672568798,   -0.672961354,\
     0.211878702,   -0.641087115,    0.737631619,\
    -0.927541733,   -0.369652569,   -0.054840807,\
     0.000283957,    0.000002265, -246.939819336,\
     0.373395920,  -74.660781860,  -28.619306564,\
   142.555831909,  351.226654053,  -20.000000000 )

png monomer_lteq10gt5.png,  1000, 1000, 300, ray=1


