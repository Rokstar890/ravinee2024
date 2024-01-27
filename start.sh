if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/rokstar890/rajbharrk.git /rajbharrk
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /rajbharrk
fi
cd /rajbharrk
pip3 install -U -r requirements.txt
echo "Starting rajbharrk...."
python3 bot.py
