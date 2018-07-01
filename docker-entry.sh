echo "Update environment variables"
export MATTERMOST_TOKEN="$1"
export MATTERMOST_INCOME_URL="$2"
export MATTERMOST_ENDPOINT="$3"

echo "Starting hubot"
cd /home/hubot
exec bin/hubot --adapter mattermost
