function git_staged_count --description 'Print count of staged files'
    git_is_repo; and begin
        command git diff --staged --name-status | count
    end
end
