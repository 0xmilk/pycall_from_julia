## EXAMPLE
# Running Python from Julia using PyCall.jl
# 2015-04-22 -- Florian Schild

using PyCall
unshift!(PyVector(pyimport("sys")["path"]), "")
@pyimport testpy

testpy.functionOne()
testpy.functionTwo("I'm a test argument!")