function fish_prompt
    set -l last_pipestatus $pipestatus
    set -lx __fish_last_status $status # Export for __fish_print_pipestatus.

    set_color --bold 86ffff
    echo -n "$USER "
    set_color $fish_color_cwd
    if functions -q fish_is_root_user; and fish_is_root_user
        if set -q fish_color_cwd_root
            set_color $fish_color_cwd_root
        end
    end
    printf "[%s]" (prompt_pwd)
    
    echo -n (fish_vcs_prompt)
    
    # Write pipestatus
    # If the status was carried over (if no command is issued or if `set` leaves the status untouched), don't bold it.
    set -l bold_flag --bold
    set -q __fish_prompt_status_generation; or set -g __fish_prompt_status_generation $status_generation
    if test $__fish_prompt_status_generation = $status_generation
        set bold_flag
    end
    set __fish_prompt_status_generation $status_generation
    set -l status_color (set_color $fish_color_status)
    set -l statusb_color (set_color $bold_flag $fish_color_status)
    set -l prompt_status (__fish_print_pipestatus " " "" "|" "$status_color" "$statusb_color" $last_pipestatus)

    echo -n "$prompt_status"

    set_color 86ffff
    echo -n ' $ '
    set_color normal
end
