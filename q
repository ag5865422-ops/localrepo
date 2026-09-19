[1mdiff --git a/cls b/cls[m
[1mdeleted file mode 100644[m
[1mindex 7ac7bed..0000000[m
[1m--- a/cls[m
[1m+++ /dev/null[m
[36m@@ -1,335 +0,0 @@[m
[31m-[m
[31m-                   SSUUMMMMAARRYY OOFF LLEESSSS CCOOMMMMAANNDDSS[m
[31m-[m
[31m-      Commands marked with * may be preceded by a number, _N.[m
[31m-      Notes in parentheses indicate the behavior if _N is given.[m
[31m-      A key preceded by a caret indicates the Ctrl key; thus ^K is ctrl-K.[m
[31m-[m
[31m-  h  H                 Display this help.[m
[31m-  q  :q  Q  :Q  ZZ     Exit.[m
[31m- ---------------------------------------------------------------------------[m
[31m-[m
[31m-                           MMOOVVIINNGG[m
[31m-[m
[31m-  e  ^E  j  ^N  CR  *  Forward  one line   (or _N lines).[m
[31m-  y  ^Y  k  ^K  ^P  *  Backward one line   (or _N lines).[m
[31m-  ESC-j             *  Forward  one file line (or _N file lines).[m
[31m-  ESC-k             *  Backward one file line (or _N file lines).[m
[31m-  f  ^F  ^V  SPACE  *  Forward  one window (or _N lines).[m
[31m-  b  ^B  ESC-v      *  Backward one window (or _N lines).[m
[31m-  z                 *  Forward  one window (and set window to _N).[m
[31m-  w                 *  Backward one window (and set window to _N).[m
[31m-  ESC-SPACE         *  Forward  one window, but don't stop at end-of-file.[m
[31m-  ESC-b             *  Backward one window, but don't stop at beginning-of-file.[m
[31m-  d  ^D             *  Forward  one half-window (and set half-window to _N).[m
[31m-  u  ^U             *  Backward one half-window (and set half-window to _N).[m
[31m-  ESC-)  RightArrow *  Right one half screen width (or _N positions).[m
[31m-  ESC-(  LeftArrow  *  Left  one half screen width (or _N positions).[m
[31m-  ESC-}  ^RightArrow   Right to last column displayed.[m
[31m-  ESC-{  ^LeftArrow    Left  to first column.[m
[31m-  F                    Forward forever; like "tail -f".[m
[31m-  ESC-F                Like F but stop when search pattern is found.[m
[31m-  ESC-f                Like F but ring the bell when search pattern is found.[m
[31m-  r  ^R  ^L            Repaint screen.[m
[31m-  R                    Repaint screen, discarding buffered input.[m
[31m-        ---------------------------------------------------[m
[31m-        Default "window" is the screen height.[m
[31m-        Default "half-window" is half of the screen height.[m
[31m- ---------------------------------------------------------------------------[m
[31m-[m
[31m-                          SSEEAARRCCHHIINNGG[m
[31m-[m
[31m-  /_p_a_t_t_e_r_n          *  Search forward for (_N-th) matching line.[m
[31m-  ?_p_a_t_t_e_r_n          *  Search backward for (_N-th) matching line.[m
[31m-  n                 *  Repeat previous search (for _N-th occurrence).[m
[31m-  N                 *  Repeat previous search in reverse direction.[m
[31m-  ESC-n             *  Repeat previous search, spanning files.[m
[31m-  ESC-N             *  Repeat previous search, reverse dir. & spanning files.[m
[31m-  ^O^N  ^On         *  Search forward for (_N-th) OSC8 hyperlink.[m
[31m-  ^O^P  ^Op         *  Search backward for (_N-th) OSC8 hyperlink.[m
[31m-  ^O^L  ^Ol            Jump to the currently selected OSC8 hyperlink.[m
[31m-  ESC-u                Undo (toggle) search highlighting.[m
[31m-  ESC-U                Clear search highlighting.[m
[31m-  &_p_a_t_t_e_r_n          *  Display only matching lines.[m
[31m-        ---------------------------------------------------[m
[31m-        Search is case-sensitive unless changed with -i or -I.[m
[31m-        A search pattern may begin with one or more of:[m
[31m-        ^N or !  Search for NON-matching lines.[m
[31m-        ^E or *  Search multiple files (pass thru END OF FILE).[m
[31m-        ^F or @  Start search at FIRST file (for /) or last file (for ?).[m
[31m-        ^K       Highlight matches, but don't move (KEEP position).[m
[31m-        ^R       Don't use REGULAR EXPRESSIONS.[m
[31m-        ^S _n     Search for match in _n-th parenthesized subpattern.[m
[31m-        ^W       WRAP search if no match found.[m
[31m-        ^L       Enter next character literally into pattern.[m
[31m- ---------------------------------------------------------------------------[m
[31m-[m
[31m-                           JJUUMMPPIINNGG[m
[31m-[m
[31m-  g  <  ESC-<  HOME *  Go to first line in file (or line _N).[m
[31m-  G  >  ESC->  END  *  Go to last line in file (or line _N).[m
[31m-  p  %              *  Go to beginning of file (or _N percent into file).[m
[31m-  t                 *  Go to the (_N-th) next tag.[m
[31m-  T                 *  Go to the (_N-th) previous tag.[m
[31m-  {  (  [           *  Find close bracket } ) ].[m
[31m-  }  )  ]           *  Find open bracket { ( [.[m
[31m-  ESC-^F _<_c_1_> _<_c_2_>  *  Find close bracket _<_c_2_>.[m
[31m-  ESC-^B _<_c_1_> _<_c_2_>  *  Find open bracket _<_c_1_>.[m
[31m-        ---------------------------------------------------[m
[31m-        Each "find close bracket" command goes forward to the close bracket [m
[31m-          matching the (_N-th) open bracket in the top line.[m
[31m-        Each "find open bracket" command goes backward to the open bracket [m
[31m-          matching the (_N-th) close bracket in the bottom line.[m
[31m-[m
[31m-  m_<_l_e_t_t_e_r_>         *  Mark the top line (or line _N) with <letter>.[m
[31m-  M_<_l_e_t_t_e_r_>         *  Mark the bottom line (or line _N) with <letter>.[m
[31m-  '_<_l_e_t_t_e_r_>         *  Go to a previously marked position (put on position _N).[m
[31m-  ''                *  Go to the previous position.[m
[31m-  ^X^X              *  Same as '.[m
[31m-  ESC-m_<_l_e_t_t_e_r_>        Clear a mark.[m
[31m-        ---------------------------------------------------[m
[31m-        A mark is any upper-case or lower-case letter.[m
[31m-        Certain marks are predefined:[m
[31m-             ^  means  beginning of the file[m
[31m-             $  means  end of the file[m
[31m- ---------------------------------------------------------------------------[m
[31m-[m
[31m-                        CCHHAANNGGIINNGG FFIILLEESS[m
[31m-[m
[31m-  :e [_f_i_l_e]            Examine a new file.[m
[31m-  ^X^V                 Same as :e.[m
[31m-  :n                *  Examine the (_N-th) next file from the command line.[m
[31m-  :p                *  Examine the (_N-th) previous file from the command line.[m
[31m-  :x                *  Examine the first (or _N-th) file from the command line.[m
[31m-  ^O^O                 Open the currently selected OSC8 hyperlink.[m
[31m-  :d                   Delete the current file from the command line list.[m
[31m-  =  ^G  :f            Print current file name.[m
[31m- ---------------------------------------------------------------------------[m
[31m-[m
[31m-                    MMIISSCCEELLLLAANNEEOOUUSS CCOOMMMMAANNDDSS[m
[31m-[m
[31m-  -_<_f_l_a_g_>              Toggle a command line option [see OPTIONS below].[m
[31m-  --_<_n_a_m_e_>             Toggle a command line option, by name.[m
[31m-  __<_f_l_a_g_>              Display the setting of a command line option.[m
[31m-  ___<_n_a_m_e_>             Display the setting of an option, by name.[m
[31m-  +_c_m_d                 Execute the less cmd each time a new file is examined.[m
[31m-[m
[31m-  !_c_o_m_m_a_n_d             Execute the shell command with $SHELL.[m
[31m-  #_c_o_m_m_a_n_d             Execute the shell command, expanded like a prompt.[m
[31m-  |XX_c_o_m_m_a_n_d            Pipe file between current pos & mark XX to shell command.[m
[31m-  s _f_i_l_e               Save input to a file.[m
[31m-  v                    Edit the current file with $VISUAL or $EDITOR.[m
[31m-  V                    Print version number of "less".[m
[31m- ---------------------------------------------------------------------------[m
[31m-[m
[31m-                           OOPPTTIIOONNSS[m
[31m-[m
[31m-        Most options may be changed either on the command line,[m
[31m-        or from within less by using the - or -- command.[m
[31m-        Options may be given in one of two forms: either a single[m
[31m-        character preceded by a -, or a name preceded by --.[m
[31m-[m
[31m-  -?  ........  --help[m
[31m-                  Display help (from command line).[m
[31m-  -a  ........  --search-skip-screen[m
[31m-                  Search skips current screen.[m
[31m-  -A  ........  --SEARCH-SKIP-SCREEN[m
[31m-                  Search starts just after target line.[m
[31m-  -b [_N]  ....  --buffers=[_N][m
[31m-                  Number of buffers.[m
[31m-  -B  ........  --auto-buffers[m
[31m-                  Don't automatically allocate buffers for pipes.[m
[31m-  -c  ........  --clear-screen[m
[31m-                  Repaint by clearing rather than scrolling.[m
[31m-  -d  ........  --dumb[m
[31m-                  Dumb terminal.[m
[31m-  -D xx_c_o_l_o_r  .  --color=xx_c_o_l_o_r[m
[31m-                  Set screen colors.[m
[31m-  -e  -E  ....  --quit-at-eof  --QUIT-AT-EOF[m
[31m-                  Quit at end of file.[m
[31m-  -f  ........  --force[m
[31m-                  Force open non-regular files.[m
[31m-  -F  ........  --quit-if-one-screen[m
[31m-                  Quit if entire file fits on first screen.[m
[31m-  -g  ........  --hilite-search[m
[31m-                  Highlight only last match for searches.[m
[31m-  -G  ........  --HILITE-SEARCH[m
[31m-                  Don't highlight any matches for searches.[m
[31m-  -h [_N]  ....  --max-back-scroll=[_N][m
[31m-                  Backward scroll limit.[m
[31m-  -i  ........  --ignore-case[m
[31m-                  Ignore case in searches that do not contain uppercase.[m
[31m-  -I  ........  --IGNORE-CASE[m
[31m-                  Ignore case in all searches.[m
[31m-  -j [_N]  ....  --jump-target=[_N][m
[31m-                  Screen position of target lines.[m
[31m-  -J  ........  --status-column[m
[31m-                  Display a status column at left edge of screen.[m
[31m-  -k _f_i_l_e  ...  --lesskey-file=_f_i_l_e[m
[31m-                  Use a compiled lesskey file.[m
[31m-  -K  ........  --quit-on-intr[m
[31m-                  Exit less in response to ctrl-C.[m
[31m-  -L  ........  --no-lessopen[m
[31m-                  Ignore the LESSOPEN environment variable.[m
[31m-  -m  -M  ....  --long-prompt  --LONG-PROMPT[m
[31m-                  Set prompt style.[m
[31m-  -n .........  --line-numbers[m
[31m-                  Suppress line numbers in prompts and messages.[m
[31m-  -N .........  --LINE-NUMBERS[m
[31m-                  Display line number at start of each line.[m
[31m-  -o [_f_i_l_e] ..  --log-file=[_f_i_l_e][m
[31m-                  Copy to log file (standard input only).[m
[31m-  -O [_f_i_l_e] ..  --LOG-FILE=[_f_i_l_e][m
[31m-                  Copy to log file (unconditionally overwrite).[m
[31m-  -p _p_a_t_t_e_r_n .  --pattern=[_p_a_t_t_e_r_n][m
[31m-                  Start at pattern (from command line).[m
[31m-  -P [_p_r_o_m_p_t]   --prompt=[_p_r_o_m_p_t][m
[31m-                  Define new prompt.[m
[31m-  -q  -Q  ....  --quiet  --QUIET  --silent --SILENT[m
[31m-                  Quiet the terminal bell.[m
[31m-  -r  -R  ....  --raw-control-chars  --RAW-CONTROL-CHARS[m
[31m-                  Output "raw" control characters.[m
[31m-  -s  ........  --squeeze-blank-lines[m
[31m-                  Squeeze multiple blank lines.[m
[31m-  -S  ........  --chop-long-lines[m
[31m-                  Chop (truncate) long lines rather than wrapping.[m
[31m-  -t _t_a_g  ....  --tag=[_t_a_g][m
[31m-                  Find a tag.[m
[31m-  -T [_t_a_g_s_f_i_l_e] --tag-file=[_t_a_g_s_f_i_l_e][m
[31m-                  Use an alternate tags file.[m
[31m-  -u  -U  ....  --underline-special  --UNDERLINE-SPECIAL[m
[31m-                  Change handling of backspaces, tabs and carriage returns.[m
[31m-  -V  ........  --version[m
[31m-                  Display the version number of "less".[m
[31m-  -w  ........  --hilite-unread[m
[31m-                  Highlight first new line after full screen movement.[m
[31m-  -W  ........  --HILITE-UNREAD[m
[31m-                  Highlight first new line after any movement.[m
[31m-  -x [_N[,...]]  --tabs=[_N[,...]][m
[31m-                  Set tab stops.[m
[31m-  -X  ........  --no-init[m
[31m-                  Don't use termcap init/deinit strings.[m
[31m-  -y [_N]  ....  --max-forw-scroll=[_N][m
[31m-                  Forward scroll limit.[m
[31m-  -z [_N]  ....  --window=[_N][m
[31m-                  Set size of window.[m
[31m-  -" [_c[_c]]  .  --quotes=[_c[_c]][m
[31m-                  Set shell quote characters.[m
[31m-  -~  ........  --tilde[m
[31m-                  Don't display tildes after end of file.[m
[31m-  -# [_N]  ....  --shift=[_N][m
[31m-                  Set horizontal scroll amount (0 = one half screen width).[m
[31m-[m
[31m-                --autosave=[_m_/_!_*][m
[31m-                  Actions which cause the history file to be saved.[m
[31m-                --emouse=[_v_s_c_r_o_l_l,_v_d_r_a_g,_h_s_c_r_o_l_l,_h_d_r_a_g,_l_c_l_i_c_k,_r_c_l_i_c_k][m
[31m-                  Enable mouse features.[m
[31m-                --end-prompt=[_s_t_r_i_n_g][m
[31m-                  String to be printed after erasing the prompt.[m
[31m-                --exit-follow-on-close[m
[31m-                  Exit F command on a pipe when writer closes pipe.[m
[31m-                --file-size[m
[31m-                  Automatically determine the size of the input file.[m
[31m-                --follow-name[m
[31m-                  The F command changes files if the input file is renamed.[m
[31m-                --form-feed[m
[31m-                  Stop scrolling when a form feed character is reached.[m
[31m-                --header=[_L[,_C[,_N]]][m
[31m-                  Use _L lines (starting at line _N) and _C columns as headers.[m
[31m-                --hilite-target[m
[31m-                  Highlight the target line.[m
[31m-                --incsearch[m
[31m-                  Search file as each pattern character is typed in.[m
[31m-                --intr=[_C][m
[31m-                  Use _C instead of ^X to interrupt a read.[m
[31m-                --lesskey-context=_t_e_x_t[m
[31m-                  Use lesskey source file contents.[m
[31m-                --lesskey-src=_f_i_l_e[m
[31m-                  Use a lesskey source file.[m
[31m-                --line-num-width=[_N][m
[31m-                  Set the width of the -N line number field to _N characters.[m
[31m-                --match-shift=[_N][m
[31m-                  Show at least _N characters to the left of a search match.[m
[31m-                --modelines=[_N][m
[31m-                  Read _N lines from the input file and look for vim modelines.[m
[31m-                --mouse[m
[31m-                  Enable mouse clicking and vertical scrolling.[m
[31m-                --no-edit-warn[m
[31m-                  Don't warn when using v command on a file opened via LESSOPEN.[m
[31m-                --no-keypad[m
[31m-                  Don't send termcap keypad init/deinit strings.[m
[31m-                --no-histdups[m
[31m-                  Remove duplicates from command history.[m
[31m-                --no-number-headers[m
[31m-                  Don't give line numbers to header lines.[m
[31m-                --no-paste[m
[31m-                  Ignore pasted input.[m
[31m-                --no-search-header-lines[m
[31m-                  Searches do not include header lines.[m
[31m-                --no-search-header-columns[m
[31m-                  Searches do not include header columns.[m
[31m-                --no-search-headers[m
[31m-                  Searches do not include header lines or columns.[m
[31m-                --no-vbell[m
[31m-                  Disable the terminal's visual bell.[m
[31m-                --redraw-on-quit[m
[31m-                  Redraw final screen when quitting.[m
[31m-                --rscroll=[_C][m
[31m-                  Set the character used to mark truncated lines.[m
[31m-                --save-marks[m
[31m-                  Retain marks across invocations of less.[m
[31m-                --search-options=[EFKNRW-][m
[31m-                  Set default options for every search.[m
[31m-                --show-preproc-errors[m
[31m-                  Display a message if preprocessor exits with an error status.[m
[31m-                --past-eof[m
[31m-                  Scrolling commands continue past end of file.[m
[31m-                --proc-backspace[m
[31m-                  Process backspaces for bold/underline.[m
[31m-                --PROC-BACKSPACE[m
[31m-                  Treat backspaces as control characters.[m
[31m-                --proc-return[m
[31m-                  Delete carriage returns before newline.[m
[31m-                --PROC-RETURN[m
[31m-                  Treat carriage returns as control characters.[m
[31m-                --proc-tab[m
[31m-                  Expand tabs to spaces.[m
[31m-                --PROC-TAB[m
[31m-                  Treat tabs as control characters.[m
[31m-                --status-col-width=[_N][m
[31m-                  Set the width of the -J status column to _N characters.[m
[31m-                --status-line[m
[31m-                  Highlight or color the entire line containing a mark.[m
[31m-                --use-backslash[m
[31m-                  Subsequent options use backslash as escape char.[m
[31m-                --use-color[m
[31m-                  Enables colored text.[m
[31m-                --wheel-lines=[_N][m
[31m-                  Each click of the mouse wheel moves _N lines.[m
[31m-                --wordwrap[m
[31m-                  Wrap lines at spaces.[m
[31m-[m
[31m-[m
[31m- ---------------------------------------------------------------------------[m
[31m-[m
[31m-                          LLIINNEE EEDDIITTIINNGG[m
[31m-[m
[31m-        These keys can be used to edit text being entered [m
[31m-        on the "command line" at the bottom of the screen.[m
[31m-[m
[31m- RightArrow ..................... ESC-l ... Move cursor right one character.[m
[31m- LeftArrow ...................... ESC-h ... Move cursor left one character.[m
[31m- ctrl-RightArrow  ESC-RightArrow  ESC-w ... Move cursor right one word.[m
[31m- ctrl-LeftArrow   ESC-LeftArrow   ESC-b ... Move cursor left one word.[m
[31m- HOME ........................... ESC-0 ... Move cursor to start of line.[m
[31m- END ............................ ESC-$ ... Move cursor to end of line.[m
[31m- BACKSPACE ................................ Delete char to left of cursor.[m
[31m- DELETE ......................... ESC-x ... Delete char under cursor.[m
[31m- ctrl-BACKSPACE   ESC-BACKSPACE ........... Delete word to left of cursor.[m
[31m- ctrl-DELETE .... ESC-DELETE .... ESC-X ... Delete word under cursor.[m
[31m- ctrl-U ......... ESC (MS-DOS only) ....... Delete entire line.[m
[31m- UpArrow ........................ ESC-k ... Retrieve previous command line.[m
[31m- DownArrow ...................... ESC-j ... Retrieve next command line.[m
[31m- TAB ...................................... Complete filename & cycle.[m
[31m- SHIFT-TAB ...................... ESC-TAB   Complete filename & reverse cycle.[m
[31m- ctrl-L ................................... Complete filename, list all.[m
[1mdiff --git a/index.html b/index.html[m
[1mindex 2619861..8d3f454 100644[m
[1m--- a/index.html[m
[1m+++ b/index.html[m
[36m@@ -1,4 +1,4 @@[m
 <p>[m
     this is aa new repo.[m
 </p>[m
[31m-<p>this is a new feature (button)</p>[m
\ No newline at end of file[m
[32m+[m[32m<p>this is a new feature(dropdown)</p>[m
\ No newline at end of file[m
