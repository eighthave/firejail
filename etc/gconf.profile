# Firejail profile for gconf
# Description: An obsolete configuration database system
# This file is overwritten after every install/update
# Persistent local customizations
include gconf.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.config/gconf

# Allow python2 (blacklisted by disable-interpreters.inc)
noblacklist ${PATH}/python2*
#noblacklist ${PATH}/python3*
noblacklist /usr/lib/python2*
#noblacklist /usr/lib/python3*

include disable-common.inc
include disable-devel.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

mkdir ${HOME}/.config/gconf
whitelist ${HOME}/.config/gconf
include whitelist-common.inc

apparmor
caps.drop all
ipc-namespace
machine-id
net none
no3d
nodvd
nogroups
nonewprivs
noroot
nosound
notv
nou2f
novideo
protocol unix
seccomp
shell none
tracelog

disable-mnt
private-bin gconf-editor,gconf-merge-*,gconfpkg,gconftool-2,gsettings-*-convert,python2*
private-cache
private-dev
private-etc alternatives,fonts,gconf
private-lib libpython*,python2*
private-tmp

memory-deny-write-execute
noexec ${HOME}
noexec /tmp
