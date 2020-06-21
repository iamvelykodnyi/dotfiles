function git_ahead_count --description 'Print behind/ahead counts as "↓00 ↑00"'
  not git_is_repo; and return

  set -l ahead  "↑"
  set -l behind "↓"
  set -l commit_count (command git rev-list --count --left-right "@{upstream}...HEAD" 2> /dev/null)
  echo $commit_count | read -d \t -l behind_count ahead_count
  switch "$commit_count"
    case ""
      # no upstream
    case "0"\t"0"
      echo ""
    case "*"\t"0"
      echo "$behind$behind_count"
    case "0"\t"*"
      echo "$ahead$ahead_count"
    case "*"
      echo "$ahead$ahead_count" "$behind$behind_count"
  end
end
