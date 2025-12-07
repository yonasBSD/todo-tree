; Match TODO tags with critical priority (red)
((comment) @comment.todo.critical
  (#match? @comment.todo.critical "\\b(BUG|FIXME|XXX)\\b"))

; Match TODO tags with high priority (yellow)
((comment) @comment.todo.high
  (#match? @comment.todo.high "\\b(HACK|WARN|WARNING)\\b"))

; Match TODO tags with medium priority (cyan)
((comment) @comment.todo.medium
  (#match? @comment.todo.medium "\\b(TODO|PERF)\\b"))

; Match TODO tags with low priority (green)
((comment) @comment.todo.low
  (#match? @comment.todo.low "\\b(NOTE|INFO|IDEA)\\b"))

; Generic fallback for any comment containing TODO-style patterns
((comment) @comment.todo
  (#match? @comment.todo "\\b(TODO|FIXME|BUG|NOTE|HACK|XXX|WARN|WARNING|PERF|INFO|IDEA)\\b"))
