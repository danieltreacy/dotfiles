# show directory contents when changing directory
function cd()
{
 builtin cd "$*" && ls
}

ssh_load()
{
  eval $(ssh-agent)
  ssh-add $HOME/.ssh/id_rsa
}
