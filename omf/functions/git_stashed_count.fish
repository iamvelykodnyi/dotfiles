function git_stashed_count --description 'Print count of stashes'
    git_is_repo; and begin
        command git stash list | count
    end
end
