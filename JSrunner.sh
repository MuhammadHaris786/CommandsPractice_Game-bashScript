#!/bin/bash
chown $USER:$USER $PWD
echo -e "***  Let's Create a Bash Script!  ****\n"
echo -e "How many Processes you want to open?"
read processes
  echo -e "Name for your new Bash Script: "
  read bashName
  a=$bashName
  touch $a.sh
  echo '#!/bin/bash' >>$a.sh
  for ((i = 1; i <= $processes; i++)); do

    echo -e "Which Program You want to open?"
    read Pname
    program=$Pname
    echo -n $program >>$a.sh
    if [[ i -lt $processes ]]; then
      echo -n " &" >>$a.sh
    fi

  done
  chmod +744 $a.sh
  bash $a.sh
