echo "This workflow was made my Ayush Sekhari."
echo "Running this script would make significant changes in your unix environment."
read -p "Do you want to continue ? (Y|N)  " -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then
   
      read -p "Should I install Anaconda? (Y|N)  " -n 1 -r
      echo    # (optional) move to a new line
      if [[ $REPLY =~ ^[Yy]$ ]]
      then
         ./anaconda.sh   
      fi 

      echo "Changing permissions for custom scripts"
      echo "imgcat.sh..."
      chmod +x ./scripts/imgcat.sh

      echo "Installing HomeBrew packages"
      if [ -f $HOME/Workflow/install_brew.sh ]; then
        source  "$HOME/Workflow/install_brew.sh"
      fi

fi 
