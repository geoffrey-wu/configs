function ssh
    if test "$argv" = ornl
        eval command ssh neutrons-dgx01.ornl.gov
    else
        command ssh $argv
    end
end
