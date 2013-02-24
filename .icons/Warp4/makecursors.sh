if command -v xcursorgen >/dev/null; then
  if mkdir -p cursors; then
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/X_cursor
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/arrow
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/based_arrow_down
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/based_arrow_up
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/boat
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/bogosity
echo "32  9  8 SIZENESW.png" | xcursorgen -p src > cursors/bottom_left_corner
echo "32  8  8 SIZENWSE.png" | xcursorgen -p src > cursors/bottom_right_corner
echo "32  6 10 SIZENS.png"   | xcursorgen -p src > cursors/bottom_side
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/bottom_tee
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/box_spiral
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/center_ptr
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/circle
echo "32 15 15 WAIT.png"     | xcursorgen -p src > cursors/clock
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/coffee_mug
echo "32 14 15 ILLEGAL.png"  | xcursorgen -p src > cursors/cross
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/cross_reverse
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/crosshair
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/diamond_cross
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/dot
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/dotbox
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/double_arrow
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/draft_large
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/draft_small
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/draped_box
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/exchange
#echo "32 15 15 MOVE.png"     | xcursorgen -p src > cursors/fleur
echo "32 28 4 ARROW.png"     | xcursorgen -p src > cursors/fleur
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/gobbler
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/gumby
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/hand1
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/hand2
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/heart
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/icon
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/iron_cross
echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/left_ptr
echo "32  9  7 SIZEWE.png"   | xcursorgen -p src > cursors/left_side
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/left_tee
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/leftbutton
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/ll_angle
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/lr_angle
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/man
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/middlebutton
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/mouse
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/pencil
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/pirate
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/plus
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/question_arrow
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/right_ptr
echo "32  9  7 SIZEWE.png"   | xcursorgen -p src > cursors/right_side
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/right_tee
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/rightbutton
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/rtl_logo
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/sailboat
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/sb_down_arrow
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/sb_h_double_arrow
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/sb_left_arrow
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/sb_right_arrow
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/sb_up_arrow
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/sb_v_double_arrow
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/shuttle
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/sizing
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/spider
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/spraycan
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/star
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/target
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/tcross
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/top_left_arrow
echo "32  8  8 SIZENWSE.png" | xcursorgen -p src > cursors/top_left_corner
echo "32  9  8 SIZENESW.png" | xcursorgen -p src > cursors/top_right_corner
echo "32  6 10 SIZENS.png"   | xcursorgen -p src > cursors/top_side
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/top_tee
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/trek
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/ul_angle
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/umbrella
#echo "32 28  4 ARROW.png"    | xcursorgen -p src > cursors/ur_angle
echo "32 15 15 WAIT.png"     | xcursorgen -p src > cursors/watch
echo "32  3  6 TEXT.png"     | xcursorgen -p src > cursors/xterm
  else
    echo "Failed to create 'cursors' directory"
  fi
else
  echo "Failed to find xcursorgen"
fi
