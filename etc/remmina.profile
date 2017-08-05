# Persistent global definitions go here
include /etc/firejail/globals.local

# This file is overwritten during software install.
# Persistent customizations should go in a .local file.
include /etc/firejail/remmina.local

# Firejail profile for Remmina
noblacklist ${HOME}/.ssh
noblacklist ${HOME}/.config/remmina
noblacklist ${HOME}/.local/share/remmina

include /etc/firejail/disable-common.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-programs.inc

caps.drop all
nogroups
nonewprivs
noroot
novideo
protocol unix,inet,inet6
seccomp
shell none

private-dev
private-tmp

noexec ${HOME}
noexec /tmp