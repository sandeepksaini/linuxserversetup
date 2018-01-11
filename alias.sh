#Generic alias for mundane administration tasks
#Clear Screen
alias c="clear";
#Moving around
alias cd1="cd ..";
alias cd2="cd ../../";
alias cd3="cd ../../../";
alias cd4="cd ../../../../";
alias home="cd ~"
#Listing of files
alias l='clear; ls -ltr';
alias li="clear;ls -iltr";
alias la='clear;ls -altr';
#Process related
alias p='clear; ps -ef | grep -v grep | grep -i';
alias ptre='ps -eaf --forest'
#History Teller
alias h="history|tail";
alias h2="history|tail -20";
alias run='. ~/.bash_profile';
alias le="less";
#Crunching ODBC commands
alias odbcj="odbcinst -j";
alias odbcs="odbcinst -q -s";
alias odbcd="odbcinst -q -d";
#Tell me my IP
alias myip='ping `hostname`|head -1|cut -d "(" -f2|cut -d ")" -f1'
#Terminal Name
export PS1="[sks@cloudspanner \${PWD/*\//}]#"
