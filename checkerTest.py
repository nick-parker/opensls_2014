output = file("checker.gcode",'w')
start = file("C:/Users/Nick/Documents/GitHub/opensls_2014/start.txt",'r')
for line in start:
    output.write(line)
start.close()
output.write('\n')
power = 18

output.write('M649 S' + str(power)+ '\n')

startx = 10
starty = 10
move = 7800
laser = 500
lw = 0.5
horiz = 40
vert = 15


#output.write('G0 X' + str(x) + ' Y' + str(y)+' F' + str(move)+'\n')
#output.write('G0 X' + str(x+horiz) + ' Y' + str(y)+' F' + str(laser)+'\n')

starts = ((0,0),(1,1),(1,0),(0,1))

def checker(starts,hSquares,vSquares,lineWidth,x0,y0):
    for h in range(starts[0],hSquares,2):
        for v in range(starts[1],vSquares,2):
            #Go unpowered to the -,- corner of the square
            output.write('G0 X' + str(x0+h*lineWidth) + ' Y' + str(y0+v*lineWidth)+' F' + str(move)+'\n')
            #Go +X with power
            output.write('G1 X' + str(x0+(h+1)*lineWidth) + ' Y' + str(y0+v*lineWidth)+' F' + str(move)+'\n')
            #Go +X +Y with power
            output.write('G1 X' + str(x0+(h+1)*lineWidth) + ' Y' + str(y0+(v+1)*lineWidth)+' F' + str(move)+'\n')
            #Go -X +Y with power
            output.write('G1 X' + str(x0+h*lineWidth) + ' Y' + str(y0+(v+1)*lineWidth)+' F' + str(move)+'\n')
            #Go halfway back to -- with power
            output.write('G1 X' + str(x0+h*lineWidth) + ' Y' + str(y0+(v+0.5)*lineWidth)+' F' + str(move)+'\n')
for start in starts:
    checker(start,horiz,vert,lw,startx,starty)
output.close()