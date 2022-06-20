if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/RealGaurv/NE0-Auto-Filter-Robot.git /NE0-Auto-Filter-Robot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /NE0-Auto-Filter-Robot
fi
cd /LuciferMoringstar-Robot
pip3 install -U -r requirements.txt
echo "Starting NE0-Auto-Filter-Robot...."
python3 main.py
