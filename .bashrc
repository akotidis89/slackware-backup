# ~/.bashrc
# Sourcing some files
. /etc/profile
. ~/.bash_profile


# Add some useful aliases
alias off='sudo /sbin/shutdown -h now';
alias rm='rm -i';
alias mv='mv -i';
alias cp='cp -i';
alias l.='ls -d .* --color=auto'
alias ll='ls -l --color=auto'
alias grep='grep --color=auto'
alias suspend='sudo pm-suspend'
alias docs='cd ~/Documents'
alias mongod='mongod -f /etc/mongod.conf'

# Change umask to make directory sharing easier
umask 0002

# Declare functions
function clean_file {
	sed -i.bak '/^\s*#/d;/^$/d' $1
}

function ds {
	echo "Disk Space Utilization for $HOSTNAME"
	echo "+----------------------------------+"
	df -h
}

PATH="/home/anestis/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/anestis/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/anestis/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/anestis/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/anestis/perl5"; export PERL_MM_OPT;
