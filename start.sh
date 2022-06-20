if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/RealGaurv/NE0-Auto-Filter-Robot.git /NE0-Auto-Filter-Robot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /NE0-Auto-Filter-Robot
fi
cd /NE0-Auto-Filter-Robot
pip3 install -U -r requirements.txt
echo "Starting NEo RoBot...."
python3 main.py
