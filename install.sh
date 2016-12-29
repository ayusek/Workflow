read -p "Should I install Anaconda? (Y|N)  " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
   ./anaconda.sh   
fi 

echo "Changing permissions for custom scripts"
echo "imgcat.sh..."
chmod +x ./scripts/imgcat.sh
