# Prompt sting template:
# [⋊>] [~/current/dir/path] [] [branch-name] [state:{+00/*00/?00/$00}|""]|[↓00 ↑00]
# +00 - count of staged files.
# *00 - count of changed files.
# ?00 - count of untracked files.
# $00 - count of stashes.
# ↓/↑ - ahead/behind commits.
function fish_prompt
  # TODO: move to custom theme.
  # TODO: add ahead/behind counts.
  # TODO: git_has_untracked functions.
  set -l last_command_status $status
  set -l cwd

  if test "$theme_short_path" = 'yes'
    set cwd (basename (prompt_pwd))
  else
    set cwd (prompt_pwd)
  end

  set -l fish      "⋊>"
  set -l branch    ""
  set -l staged    "+"
  set -l dirty     "*"
  set -l untracked "?"
  set -l stashed   "\$"
  set -l git_state ""

  set -l normal_color    (set_color normal)
  set -l success_color   (set_color green)
  set -l error_color     (set_color red)
  set -l directory_color (set_color green)
  set -l branch_color    (set_color blue)
  set -l git_state_color (set_color red)

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
    echo -n -s $branch_color " " $branch " " (git_branch_name) " "
    echo -n -s $git_state_color

    ### Set repository state symbols. ###
    # Add symbol and count of staged files.
    if git_is_staged
      set -a git_state $staged (git_staged_count)
    end

    # Add symbol and count of changed files.
    if git_is_dirty
      # Add separator symbol if outpun is not empty.
      if test -n "$git_state"
        set -a git_state "/"
      end

      set -a git_state $dirty (git_dirty_count)
    end

    # Add symbol and count of untracked files.
    if test (git_untracked_count) -gt 0
      # Add separator symbol if outpun is not empty.
      if test -n "$git_state"
        set -a git_state "/"
      end

      set -a git_state $untracked (git_untracked_count)
    end

    # Add symbol and count of stashed changes.
    if git_is_stashed
      # Add separator symbol if outpun is not empty.
      if test -n "$git_state"
        set -a git_state "/"
      end

      set -a git_state $stashed (git_stashed_count)
    end

    # Add separator symbol if outpun is not empty.
    if test -n "$git_state"
      set -a git_state " "
    end

    # Add ahead/behind symbols.
    set -a git_state $success_color (git_ahead_count)

    # Print repository state symbols.
    echo -n -s $git_state $normal_color
  else
    echo -n -s " " $directory_color $cwd $normal_color
  end

  echo -n -s -e "\n" $directory_color "=> " $normal_color
end
