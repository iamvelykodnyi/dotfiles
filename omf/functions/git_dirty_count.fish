function git_dirty_count --description 'Print count of changed files'
    git_is_repo; and begin
        command git diff --name-status | count
    end
end
