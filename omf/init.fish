# TODO: move to custom theme.
# TODO: create functions for repository state counts.
# [⋊>] [~/Path/to/somewhere] [] [branch-name] [state:{+00*00?00$00}|""]|[↓/↑]
function fish_prompt
  set -l last_command_status $status
  set -l cwd

  if test "$theme_short_path" = 'yes'
    set cwd (basename (prompt_pwd))
  else
    set cwd (prompt_pwd)
  end

  set -l fish       "⋊>"
  set -l branch     ""
  set -l ahead      "↑"
  set -l behind     "↓"
  set -l diverged   "⥄ "
  set -l staged     "+"
  set -l dirty      "*"
  set -l untracked  "?"
  set -l stashed    "\$"
  set -l none       ""

  set -l normal_color           (set_color normal)
  set -l success_color          (set_color cyan --bold)
  set -l error_color            (set_color red --bold)
  set -l directory_color        (set_color green)
  set -l repository_color       (set_color purple)
  set -l repository_state_color (set_color yellow)

  if test $last_command_status -eq 0
    echo -n -s $success_color $fish $normal_color
  else
    echo -n -s $error_color $fish $normal_color
  end

  if git_is_repo
    if test "$theme_short_path" = 'yes'
      set root_folder (command git rev-parse --show-toplevel 2> /dev/null)
      set parent_root_folder (dirname $root_folder)
      set cwd (echo $PWD | sed -e "s|$parent_root_folder/||")
    end

    echo -n -s " " $directory_color $cwd $normal_color

    # Start: repository state marks.
    echo -n -s $repository_color " " $branch " " (git_branch_name) " " $repository_state_color

    if git_is_staged
      echo -n -s $staged (git diff --staged --name-status | count)
    end

    if git_is_dirty
      # echo -n -s test -n "$repository_state"; and echo ""; or echo ""
      echo -n -s $dirty (git diff --name-status | count)
    end

    if test (count (git_untracked)) -gt 0
      echo -n -s $untracked (count (git_untracked))
    end

    if git_is_stashed
      echo -n -s $stashed (git stash list | count)
    end

    echo -n -s " " $success_color (git_ahead $ahead $behind $diverged $none)

    # End: repository state marks.
    echo -n -s $normal_color
  else
    echo -n -s " " $directory_color $cwd $normal_color
  end

  echo -n -s -e "\n" $directory_color "=> " $normal_color
end
