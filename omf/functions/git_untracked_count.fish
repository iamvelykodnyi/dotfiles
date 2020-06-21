function git_untracked_count --description 'Print count of untracked files'
    git_is_repo; and begin
        git_untracked | count
    end
end
