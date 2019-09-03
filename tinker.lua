help([[
Tinker-HP molecular dynamics software 
]])

-- Whatis description
whatis('Description: Tinker-HP')
whatis('singularity pull shub://')

local dynamic = [==[
/usr/bin/singularity run --app dynamic /gpfs/group/hzn17/default/sw/singularity/tinker.simg "$@";
]==]

local minimize = [==[
/usr/bin/singularity run --app minimize /gpfs/group/hzn17/default/sw/singularity/tinker.simg "$@";
]==]

local analyze = [==[
/usr/bin/singularity run --app analyze /gpfs/group/hzn17/default/sw/singularity/tinker.simg "$@";
]==]

local testgrad = [==[
/usr/bin/singularity run --app testgrad /gpfs/group/hzn17/default/sw/singularity/tinker.simg "$@";
]==]

set_shell_function("dynamic",dynamic,dynamic)
set_shell_function("minimize",minimize,minimize)
set_shell_function("analyze",analyze,analyze)
set_shell_function("testgrad",testgrad,testgrad)