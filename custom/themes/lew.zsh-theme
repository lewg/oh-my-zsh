# Lew's zsh theme
# Based heavily on https://github.com/blinks

wall="%{%F{green}%}|%{%f%}"

function _prompt_char() {
  if $(git rev-parse --is-inside-work-tree >/dev/null 2>&1); then
    echo "%{%F{blue}%}±%{%f%k%b%}"
  else
    echo ' '
  fi
}

function my_current_ruby() {
  echo "💎  %{%F{red}%}$(current_ruby)%{%f%}"
}

function current_docker() {
	if [[ $DOCKER_HOST ]]; then
		echo " ${wall} 🛥  $DOCKER_MACHINE_NAME"
	fi
}

function current_openstack() {
  if [[ $OS_TENANT_NAME ]]; then
    echo " ${wall} 🏘  %{%F{blue}%}$OS_TENANT_NAME - $OS_REGION_NAME%{%f%}" 
  fi
}

function current_deploy_env() {
  if [[ $DEPLOY_ENV ]]; then
    echo " ${wall} ☛ $DEPLOY_ENV"
  fi
}

# This theme works with both the "dark" and "light" variants of the
# Solarized color schema.  Set the SOLARIZED_THEME variable to one of
# these two values to choose.  If you don't specify, we'll assume you're
# using the "dark" variant.

case ${SOLARIZED_THEME:-dark} in
    light) bkg=white;;
    *)     bkg=black;;
esac

ZSH_THEME_GIT_PROMPT_PREFIX="%{%F{cyan}%}⚒  "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{%f%} %{%F{green}%}|%{%f%} "
ZSH_THEME_GIT_PROMPT_DIRTY="🔺 "
ZSH_THEME_GIT_PROMPT_CLEAN=""

PROMPT='%{%f%k%b%}
%{%K{${bkg}}%}$(git_prompt_info)$(my_current_ruby)$(current_docker)$(current_openstack)$(current_deploy_env)%E%{%f%k%b%}
%{%K{${bkg}}%B%F{green}%}%n%{%B%F{blue}%}@%{%B%F{cyan}%}%m%{%B%F{green}%} %{%b%F{yellow}%K{${bkg}}%}%~%{%B%F{green}%}%E%{%f%k%b%}
%{%K{${bkg}}%}$(_prompt_char)%{%K{${bkg}}%} %#%{%f%k%b%} '

RPROMPT='!%{%B%F{cyan}%}%!%{%f%k%b%}'


NOTHING='🔺 $(current_ruby) %{%B%F{green}%}| 🛥  $(current_docker)%E%{%f%k%b%}'
