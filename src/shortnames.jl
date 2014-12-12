# shortnames.jl -- containing the code for the Shortname submodule of MathGL.jl
using MathGL
export MathGL

# Export all types with shorter names
typealias AbstractGraph MathGL.AbstractGraph 
typealias AbstractData MathGL.AbstractData 
typealias Graph MathGL.Graph 
typealias Data MathGL.Data 

export AbstractGraph, AbstractData, Graph, Data

# Export all macros
export @mglplot

# Export the remaining functions or at least many of them. Should be more selective.
adjust       =  MathGL.adjust
alpha        =  MathGL.alpha
ambient      =  MathGL.ambient
arc          =  MathGL.arc
arrowsize    =  MathGL.arrowsize
aspect       =  MathGL.aspect
axis         =  MathGL.axis
axisstl      =  MathGL.axisstl
background   =  MathGL.background
ball         =  MathGL.ball
barwidth     =  MathGL.barwidth
box          =  MathGL.box
calcscr      =  MathGL.calcscr
calcxyz      =  MathGL.calcxyz
circle       =  MathGL.circle
clearframe   =  MathGL.clearframe
clf          =  MathGL.clf
closegif     =  MathGL.closegif
colorid      =  MathGL.colorid
columnplot   =  MathGL.columnplot
combine      =  MathGL.combine
cone         =  MathGL.cone
crange       =  MathGL.crange
ctick        =  MathGL.ctick
curve        =  MathGL.curve
cut          =  MathGL.cut
defaultfont  =  MathGL.defaultfont
delframe     =  MathGL.delframe
diffuse      =  MathGL.diffuse
drop         =  MathGL.drop
ellipse      =  MathGL.ellipse
endframe     =  MathGL.endframe
endgroup     =  MathGL.endgroup
errbox       =  MathGL.errbox
#=eval         =  MathGL.eval=#
exportmgld   =  MathGL.exportmgld
face         =  MathGL.face
facenum      =  MathGL.facenum
fog          =  MathGL.fog
font         =  MathGL.font
getframe     =  MathGL.getframe
getheight    =  MathGL.getheight
getnumframe  =  MathGL.getnumframe
getrgb       =  MathGL.getrgb
getrgba      =  MathGL.getrgba
getwidth     =  MathGL.getwidth
gridplot     =  MathGL.gridplot
height       =  MathGL.height
importmgld   =  MathGL.importmgld
inplot       =  MathGL.inplot
light        =  MathGL.light
line         =  MathGL.line
loadfont     =  MathGL.loadfont
mark         =  MathGL.mark
marksize     =  MathGL.marksize
mask         =  MathGL.mask
meshnum      =  MathGL.meshnum
mgl          =  MathGL.mgl
mpirecv      =  MathGL.mpirecv
mpisend      =  MathGL.mpisend
multiplot    =  MathGL.multiplot
newframe     =  MathGL.newframe
numthr       =  MathGL.numthr
origin       =  MathGL.origin
origintick   =  MathGL.origintick
palette      =  MathGL.palette
perspective  =  MathGL.perspective
plotfactor   =  MathGL.plotfactor
plotid       =  MathGL.plotid
polygon      =  MathGL.polygon
quality      =  MathGL.quality
ranges       =  MathGL.ranges
rasterize    =  MathGL.rasterize
#=reset        =  MathGL.reset=#
resetframes  =  MathGL.resetframes
restorefont  =  MathGL.restorefont
rhomb        =  MathGL.rhomb
rotate       =  MathGL.rotate
rotatetext   =  MathGL.rotatetext
scheme       =  MathGL.scheme
setnumframe  =  MathGL.setnumframe
setsize      =  MathGL.setsize
showframe    =  MathGL.showframe
sphere       =  MathGL.sphere
startgif     =  MathGL.startgif
startgroup   =  MathGL.startgroup
stickplot    =  MathGL.stickplot
stop         =  MathGL.stop
subplot      =  MathGL.subplot
surf         =  MathGL.surf
ternary      =  MathGL.ternary
text         =  MathGL.text
ticklen      =  MathGL.ticklen
tickrotate   =  MathGL.tickrotate
tickshift    =  MathGL.tickshift
tickskip     =  MathGL.tickskip
title        =  MathGL.title
transptype   =  MathGL.transptype
tuneticks    =  MathGL.tuneticks
view         =  MathGL.view
width        =  MathGL.width
writebmp     =  MathGL.writebmp
writebps     =  MathGL.writebps
writeeps     =  MathGL.writeeps
writeframe   =  MathGL.writeframe
writegif     =  MathGL.writegif
writejpg     =  MathGL.writejpg
writejson    =  MathGL.writejson
writeobj     =  MathGL.writeobj
writeoff     =  MathGL.writeoff
writepng     =  MathGL.writepng
writeprc     =  MathGL.writeprc
writestl     =  MathGL.writestl
writesvg     =  MathGL.writesvg
writetex     =  MathGL.writetex
writetga     =  MathGL.writetga
writexyz     =  MathGL.writexyz
xrange       =  MathGL.xrange
xrotate      =  MathGL.xrotate
xtick        =  MathGL.xtick
yrange       =  MathGL.yrange
yrotate      =  MathGL.yrotate
ytick        =  MathGL.ytick
zoom         =  MathGL.zoom
zoomaxis     =  MathGL.zoomaxis
zrange       =  MathGL.zrange
zrotate      =  MathGL.zrotate
ztick        =  MathGL.ztick

export adjust
export alpha
export ambient
export arc
export arrowsize
export aspect
export axis
export axisstl
export background
export ball
export barwidth
export box
export calcscr
export calcxyz
export circle
export clearframe
export clf
export closegif
export colorid
export columnplot
export combine
export cone
export crange
export ctick
export curve
export cut
export defaultfont
export delframe
export diffuse
export drop
export ellipse
export endframe
export endgroup
export errbox
#=export eval=#
export exportmgld
export face
export facenum
export fog
export font
export getframe
export getheight
export getnumframe
export getrgb
export getrgba
export getwidth
export gridplot
export height
export importmgld
export inplot
export light
export line
export loadfont
export mark
export marksize
export mask
export meshnum
export mgl
export mpirecv
export mpisend
export multiplot
export newframe
export numthr
export origin
export origintick
export palette
export perspective
export plotfactor
export plotid
export polygon
export quality
export ranges
export rasterize
export reset
export resetframes
export restorefont
export rhomb
export rotate
export rotatetext
export scheme
export setnumframe
export setsize
export showframe
export sphere
export startgif
export startgroup
export stickplot
export stop
export subplot
export surf
export ternary
export text
export ticklen
export tickrotate
export tickshift
export tickskip
export title
export transptype
export tuneticks
export view
export width
export writebmp
export writebps
export writeeps
export writeframe
export writegif
export writejpg
export writejson
export writeobj
export writeoff
export writepng
export writeprc
export writestl
export writesvg
export writetex
export writetga
export writexyz
export xrange
export xrotate
export xtick
export yrange
export yrotate
export ytick
export zoom
export zoomaxis
export zrange
export zrotate
export ztick
