if command -v xcursorgen >/dev/null; then
  if mkdir -p Warp4/cursors; then
    echo "14  7  7 SIZENESW.png" | xcursorgen -p src > Warp4/cursors/bottom_left_corner
    echo "14  6  6 SIZENWSE.png" | xcursorgen -p src > Warp4/cursors/bottom_right_corner
    echo "19  6  9 SIZENS.png"   | xcursorgen -p src > Warp4/cursors/bottom_side
    echo "25 12 11 WAIT.png"     | xcursorgen -p src > Warp4/cursors/clock
    echo "32 17 16 ILLEGAL.png"  | xcursorgen -p src > Warp4/cursors/cross
    echo "19  3  2 ARROW.png"    | xcursorgen -p src > Warp4/cursors/fleur
    echo "18  5  0 hand2.png"    | xcursorgen -p src > Warp4/cursors/hand2
    echo "19  3  2 ARROW.png"    | xcursorgen -p src > Warp4/cursors/left_ptr
    echo "19  9  7 SIZEWE.png"   | xcursorgen -p src > Warp4/cursors/left_side
    echo "19  9  7 SIZEWE.png"   | xcursorgen -p src > Warp4/cursors/right_side
    echo "16  7  7 sb_h_double_arrow.png" | xcursorgen -p src > Warp4/cursors/sb_h_double_arrow
    echo "16  7  7 sb_v_double_arrow.png" | xcursorgen -p src > Warp4/cursors/sb_v_double_arrow
    echo "14  6  6 SIZENWSE.png" | xcursorgen -p src > Warp4/cursors/top_left_corner
    echo "14  7  7 SIZENESW.png" | xcursorgen -p src > Warp4/cursors/top_right_corner
    echo "19  6  9 SIZENS.png"   | xcursorgen -p src > Warp4/cursors/top_side
    echo "25 12 11 WAIT.png"     | xcursorgen -p src > Warp4/cursors/watch
    echo "15  3  6 TEXT.png"     | xcursorgen -p src > Warp4/cursors/xterm
  else
    echo "Failed to create 'Warp4/cursors' directory"
  fi
  if mkdir -p Warp4LH/cursors; then
    echo "14  7  7 SIZENESW.png" | xcursorgen -p src > Warp4LH/cursors/bottom_left_corner
    echo "14  6  6 SIZENWSE.png" | xcursorgen -p src > Warp4LH/cursors/bottom_right_corner
    echo "19  6  9 SIZENS.png"   | xcursorgen -p src > Warp4LH/cursors/bottom_side
    echo "25 12 11 WAIT.png"     | xcursorgen -p src > Warp4LH/cursors/clock
    echo "32 14 15 ILLEGAL-left.png" | xcursorgen -p src > Warp4LH/cursors/cross
    echo "19 15  2 ARROW-left.png"   | xcursorgen -p src > Warp4LH/cursors/fleur
    echo "18  5  0 hand2.png"    | xcursorgen -p src > Warp4LH/cursors/hand2
    echo "19 15  2 ARROW-left.png"   | xcursorgen -p src > Warp4LH/cursors/left_ptr
    echo "19  9  7 SIZEWE.png"   | xcursorgen -p src > Warp4LH/cursors/left_side
    echo "19  9  7 SIZEWE.png"   | xcursorgen -p src > Warp4LH/cursors/right_side
    echo "16  7  7 sb_h_double_arrow.png" | xcursorgen -p src > Warp4LH/cursors/sb_h_double_arrow
    echo "16  7  7 sb_v_double_arrow.png" | xcursorgen -p src > Warp4LH/cursors/sb_v_double_arrow
    echo "14  6  6 SIZENWSE.png" | xcursorgen -p src > Warp4LH/cursors/top_left_corner
    echo "14  7  7 SIZENESW.png" | xcursorgen -p src > Warp4LH/cursors/top_right_corner
    echo "19  6  9 SIZENS.png"   | xcursorgen -p src > Warp4LH/cursors/top_side
    echo "25 12 11 WAIT.png"     | xcursorgen -p src > Warp4LH/cursors/watch
    echo "15  3  6 TEXT.png"     | xcursorgen -p src > Warp4LH/cursors/xterm
  else
    echo "Failed to create 'Warp4LH/cursors' directory"
  fi
else
  echo "Failed to find xcursorgen"
fi
