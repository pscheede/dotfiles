function fish_prompt --description 'Write out the prompt'
	if not set -q __fish_prompt_normal
        set -g __fish_prompt_normal (set_color normal)
    end

    if not set -q __fish_prompt_cwd
        set -g __fish_prompt_cwd (set_color $fish_color_cwd)
    end

    if test (pyenv version-name) != 'system'
        set __prompt_python_version '('(pyenv version-name)') '
    else
        set __prompt_python_verison ''
    end

    echo -n -s "$__prompt_python_version" "$USER" @ (prompt_hostname) ' ' "$__fish_prompt_cwd" (prompt_pwd) (__fish_vcs_prompt) "$__fish_prompt_normal" '> '
end
