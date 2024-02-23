if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Mrprofessor07/MS-Auto-Filter /MS-Auto-Filter 
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /MS-Auto-Filter
fi
cd /MS-Auto-Filter
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
