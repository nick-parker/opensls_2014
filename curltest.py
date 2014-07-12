output = file("C:/Users/Nick/Documents/GitHub/opensls_2014/output.gcode",'w')
start = file("C:/Users/Nick/Documents/GitHub/opensls_2014/start.txt",'r')
for line in start:
    output.write(line)
output.write('\n')
power = 18

output.write('M649 S' + str(power)+ '\n')

horiz = 15
vert = 40
startx = 10
starty = 10
move = 7800
laser = 500

for x in range(startx,horiz+startx):
    for y in range(starty,vert+starty):
        output.write('G0 X' + str(x) + ' Y' + str(y)+' F' + str(move)+'\n')
        output.write('G0 X' + str(x+horiz) + ' Y' + str(y)+' F' + str(laser)+'\n')
output.write('G0 X-200 F3000; turn off laser, done with build')
output.close()