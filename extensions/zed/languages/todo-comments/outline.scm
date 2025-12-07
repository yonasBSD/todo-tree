; Critical priority items (BUG, FIXME, XXX)
((comment) @item
  (#match? @item "\\b(BUG|FIXME|XXX)\\b")
  (#set! "kind" "event"))

; High priority items (HACK, WARN, WARNING)
((comment) @item
  (#match? @item "\\b(HACK|WARN|WARNING)\\b")
  (#set! "kind" "event"))

; Medium priority items (TODO, PERF)
((comment) @item
  (#match? @item "\\b(TODO|PERF)\\b")
  (#set! "kind" "event"))

; Low priority items (NOTE, INFO, IDEA)
((comment) @item
  (#match? @item "\\b(NOTE|INFO|IDEA)\\b")
  (#set! "kind" "event"))
