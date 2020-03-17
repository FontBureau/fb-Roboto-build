
#Make VF
fontmake -o ttf-interpolatable -m Roboto-min.designspace --no-production-names
fonttools varLib Roboto-min.designspace
mv Roboto-min-VF.ttf fonts/Roboto-min-VF.ttf

# Remove MVAR
ttx -x MVAR fonts/Roboto-min-VF.ttf
rm fonts/Roboto-min-VF.ttf
ttx fonts/Roboto-min-VF.ttx
rm fonts/Roboto-min-VF.ttx

# Merge Hints from VTT source
python -m vttLib dumpfile HintingSource/VTTSourceRoboto-min-VF.ttf

mv HintingSource/VTTSourceRoboto-min-VF_VTT_Hinting.ttx fonts/VTTSourceRoboto-min-VF_VTT_Hinting.ttx

python -m vttLib mergefile fonts/VTTSourceRoboto-min-VF_VTT_Hinting.ttx fonts/Roboto-min-VF.ttf

rm fonts/VTTSourceRoboto-min-VF_VTT_Hinting.ttx

python -m vttLib compile fonts/Roboto-min-VF.ttf

rm fonts/Roboto-min-VF.ttf

mv fonts/Roboto-min-VF#1.ttf fonts/Roboto-min-VF.ttf

#remove TSI tables from VF
ttx -x TSI1 -x TSI3 -x TSI5 fonts/Roboto-min-VF.ttf
rm fonts/Roboto-min-VF.ttf
ttx fonts/Roboto-min-VF.ttx
rm fonts/Roboto-min-VF.ttx