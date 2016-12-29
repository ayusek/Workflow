if [ -z "$space" ]; then 
  echo -e  "$space Installing Anaconda";
else
  $space='\t'
  echo -e "$space Installing Anaconda";
fi

cd ~

if [ -d "anaconda" ]; then
  echo "$space Anaconda Exists";
else
  echo "$space Download Anaconda for Python2.7"
  wget https://repo.continuum.io/archive/Anaconda2-4.1.1-MacOSX-x86_64.sh
  echo "Installing Anaconda"
  bash Anaconda2-4.1.1-MacOSX-x86_64.sh
  rm Anaconda2-4.1.1-MacOSX-x86_64.sh
  export PATH=$PATH:$HOME/anaconda/bin
  echo "$space Anaconda Installed";
fi

cd - 

