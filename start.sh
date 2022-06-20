if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone 
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /NE0-Auto-Filter-Robot
fi
cd /LuciferMoringstar-Robot
pip3 install -U -r requirements.txt
echo "Starting NE0-Auto-Filter-Robot...."
python3 main.py
