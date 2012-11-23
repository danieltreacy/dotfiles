# show directory contents when changing directory
function cd()
{
 builtin cd "$*" && ls
}