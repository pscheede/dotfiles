#!/usr/bin/fish

abbr -a -U -- dg++ 'g++ -Wall -Weffc++ -Wextra -Wsign-conversion -o'

abbr -a -U -- dugrepg du\ -had\ 1\ \|\ egrep\ \"\(\[0-9\]\{3\}M\\s\|G\\s\)\"
abbr -a -U -- dugrepgg du\ -had\ 1\ \|\ egrep\ \"G\\s\"
abbr -a -U -- dugrepm du\ -had\ 1\ \|\ egrep\ \"\(\[0-9\]\{2,\}M\\s\|G\\s\)\"

abbr -a -U -- gitdog git\ log\ --all\ --color\ --graph\ --pretty=format:\'\%Cred\%h\%Creset\ -\%C\(bold\ blue\)\%d\%Creset\ \%s\ \%Cgreen\(\%cr\)\ \%C\(yellow\)\<\%an\>\%Creset\'\ --abbrev-commit
abbr -a -U -- gl git\ log\ --color\ --graph\ --pretty=format:\'\%Cred\%h\%Creset\ -\%C\(bold\ blue\)\%d\%Creset\ \%s\ \%Cgreen\(\%cr\)\ \%C\(yellow\)\<\%an\>\%Creset\'\ --abbrev-commit
abbr -a -U -- gla git\ log\ --all\ --color\ --graph\ --pretty=format:\'\%Cred\%h\%Creset\ -\%C\(bold\ blue\)\%d\%Creset\ \%s\ \%Cgreen\(\%cr\)\ \%C\(yellow\)\<\%an\>\%Creset\'\ --abbrev-commit

abbr -a -U -- kl 'sl -halF'
abbr -a -U -- lk 'ls -halF'

abbr -a -U -- py python

abbr -a -U -- vimrc 'vim ~/.vimrc'
