# Alias heroku for simpler multi-app projects
# source: https://gist.github.com/1857778

heroku-app() {
  args=("$@")
  if [ "${args[1]}" = "staging" ]; then
    args+=("--app" "salesteam-staging")
    index=1
  elif [ "${args[1]}" = "production" ]; then
    args+=("--app" "salesteam")
    index=1
  else
    index=0
  fi
  echo "Running heroku ${args[@]:$index}..."
  heroku ${args[@]:$index}
}
# alias heroku=heroku-app