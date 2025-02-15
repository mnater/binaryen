;; NOTE: Assertions have been generated by update_lit_checks.py --all-items and should not be edited.
;; NOTE: This test was ported using port_passes_tests_to_lit.py and could be cleaned up.

;; RUN: foreach %s %t wasm-opt --const-hoisting -S -o - | filecheck %s

(module
  ;; CHECK:      (type $none_=>_none (func))

  ;; CHECK:      (func $10-of-each
  ;; CHECK-NEXT:  (local $0 i32)
  ;; CHECK-NEXT:  (local $1 i32)
  ;; CHECK-NEXT:  (local $2 i32)
  ;; CHECK-NEXT:  (local $3 i32)
  ;; CHECK-NEXT:  (local $4 i32)
  ;; CHECK-NEXT:  (local $5 i32)
  ;; CHECK-NEXT:  (block
  ;; CHECK-NEXT:   (local.set $0
  ;; CHECK-NEXT:    (i32.const 8192)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (local.set $1
  ;; CHECK-NEXT:    (i32.const 1048575)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (local.set $2
  ;; CHECK-NEXT:    (i32.const 1048576)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (local.set $3
  ;; CHECK-NEXT:    (i32.const -8193)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (local.set $4
  ;; CHECK-NEXT:    (i32.const -1048576)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (local.set $5
  ;; CHECK-NEXT:    (i32.const -1048577)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:  )
  ;; CHECK-NEXT:  (block
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const 0)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const 63)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const 64)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const 8191)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $0)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $1)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $2)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const -64)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const -65)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const -8192)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $3)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $4)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $5)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const 0)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const 63)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const 64)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const 8191)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $0)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $1)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $2)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const -64)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const -65)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const -8192)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $3)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $4)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $5)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const 0)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const 63)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const 64)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const 8191)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $0)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $1)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $2)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const -64)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const -65)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const -8192)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $3)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $4)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $5)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const 0)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const 63)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const 64)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const 8191)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $0)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $1)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $2)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const -64)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const -65)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const -8192)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $3)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $4)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $5)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const 0)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const 63)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const 64)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const 8191)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $0)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $1)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $2)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const -64)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const -65)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const -8192)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $3)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $4)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $5)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const 0)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const 63)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const 64)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const 8191)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $0)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $1)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $2)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const -64)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const -65)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const -8192)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $3)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $4)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $5)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const 0)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const 63)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const 64)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const 8191)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $0)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $1)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $2)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const -64)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const -65)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const -8192)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $3)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $4)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $5)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const 0)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const 63)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const 64)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const 8191)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $0)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $1)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $2)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const -64)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const -65)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const -8192)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $3)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $4)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $5)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const 0)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const 63)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const 64)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const 8191)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $0)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $1)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $2)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const -64)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const -65)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const -8192)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $3)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $4)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $5)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const 0)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const 63)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const 64)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const 8191)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $0)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $1)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $2)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const -64)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const -65)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (i32.const -8192)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $3)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $4)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $5)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:  )
  ;; CHECK-NEXT: )
  (func $10-of-each
    (drop (i32.const 0)) ;; 1 byte
    (drop (i32.const 63)) ;; 1 byte
    (drop (i32.const 64)) ;; 2 bytes
    (drop (i32.const 8191)) ;; 2 bytes
    (drop (i32.const 8192)) ;; 3 bytes
    (drop (i32.const 1048575)) ;; 3 bytes
    (drop (i32.const 1048576)) ;; 4 bytes
    (drop (i32.const -64)) ;; 1 byte
    (drop (i32.const -65)) ;; 2 bytes
    (drop (i32.const -8192)) ;; 2 bytes
    (drop (i32.const -8193)) ;; 3 bytes
    (drop (i32.const -1048576)) ;; 3 bytes
    (drop (i32.const -1048577)) ;; 4 bytes
    (drop (i32.const 0)) ;; 1 byte
    (drop (i32.const 63)) ;; 1 byte
    (drop (i32.const 64)) ;; 2 bytes
    (drop (i32.const 8191)) ;; 2 bytes
    (drop (i32.const 8192)) ;; 3 bytes
    (drop (i32.const 1048575)) ;; 3 bytes
    (drop (i32.const 1048576)) ;; 4 bytes
    (drop (i32.const -64)) ;; 1 byte
    (drop (i32.const -65)) ;; 2 bytes
    (drop (i32.const -8192)) ;; 2 bytes
    (drop (i32.const -8193)) ;; 3 bytes
    (drop (i32.const -1048576)) ;; 3 bytes
    (drop (i32.const -1048577)) ;; 4 bytes
    (drop (i32.const 0)) ;; 1 byte
    (drop (i32.const 63)) ;; 1 byte
    (drop (i32.const 64)) ;; 2 bytes
    (drop (i32.const 8191)) ;; 2 bytes
    (drop (i32.const 8192)) ;; 3 bytes
    (drop (i32.const 1048575)) ;; 3 bytes
    (drop (i32.const 1048576)) ;; 4 bytes
    (drop (i32.const -64)) ;; 1 byte
    (drop (i32.const -65)) ;; 2 bytes
    (drop (i32.const -8192)) ;; 2 bytes
    (drop (i32.const -8193)) ;; 3 bytes
    (drop (i32.const -1048576)) ;; 3 bytes
    (drop (i32.const -1048577)) ;; 4 bytes
    (drop (i32.const 0)) ;; 1 byte
    (drop (i32.const 63)) ;; 1 byte
    (drop (i32.const 64)) ;; 2 bytes
    (drop (i32.const 8191)) ;; 2 bytes
    (drop (i32.const 8192)) ;; 3 bytes
    (drop (i32.const 1048575)) ;; 3 bytes
    (drop (i32.const 1048576)) ;; 4 bytes
    (drop (i32.const -64)) ;; 1 byte
    (drop (i32.const -65)) ;; 2 bytes
    (drop (i32.const -8192)) ;; 2 bytes
    (drop (i32.const -8193)) ;; 3 bytes
    (drop (i32.const -1048576)) ;; 3 bytes
    (drop (i32.const -1048577)) ;; 4 bytes
    (drop (i32.const 0)) ;; 1 byte
    (drop (i32.const 63)) ;; 1 byte
    (drop (i32.const 64)) ;; 2 bytes
    (drop (i32.const 8191)) ;; 2 bytes
    (drop (i32.const 8192)) ;; 3 bytes
    (drop (i32.const 1048575)) ;; 3 bytes
    (drop (i32.const 1048576)) ;; 4 bytes
    (drop (i32.const -64)) ;; 1 byte
    (drop (i32.const -65)) ;; 2 bytes
    (drop (i32.const -8192)) ;; 2 bytes
    (drop (i32.const -8193)) ;; 3 bytes
    (drop (i32.const -1048576)) ;; 3 bytes
    (drop (i32.const -1048577)) ;; 4 bytes
    (drop (i32.const 0)) ;; 1 byte
    (drop (i32.const 63)) ;; 1 byte
    (drop (i32.const 64)) ;; 2 bytes
    (drop (i32.const 8191)) ;; 2 bytes
    (drop (i32.const 8192)) ;; 3 bytes
    (drop (i32.const 1048575)) ;; 3 bytes
    (drop (i32.const 1048576)) ;; 4 bytes
    (drop (i32.const -64)) ;; 1 byte
    (drop (i32.const -65)) ;; 2 bytes
    (drop (i32.const -8192)) ;; 2 bytes
    (drop (i32.const -8193)) ;; 3 bytes
    (drop (i32.const -1048576)) ;; 3 bytes
    (drop (i32.const -1048577)) ;; 4 bytes
    (drop (i32.const 0)) ;; 1 byte
    (drop (i32.const 63)) ;; 1 byte
    (drop (i32.const 64)) ;; 2 bytes
    (drop (i32.const 8191)) ;; 2 bytes
    (drop (i32.const 8192)) ;; 3 bytes
    (drop (i32.const 1048575)) ;; 3 bytes
    (drop (i32.const 1048576)) ;; 4 bytes
    (drop (i32.const -64)) ;; 1 byte
    (drop (i32.const -65)) ;; 2 bytes
    (drop (i32.const -8192)) ;; 2 bytes
    (drop (i32.const -8193)) ;; 3 bytes
    (drop (i32.const -1048576)) ;; 3 bytes
    (drop (i32.const -1048577)) ;; 4 bytes
    (drop (i32.const 0)) ;; 1 byte
    (drop (i32.const 63)) ;; 1 byte
    (drop (i32.const 64)) ;; 2 bytes
    (drop (i32.const 8191)) ;; 2 bytes
    (drop (i32.const 8192)) ;; 3 bytes
    (drop (i32.const 1048575)) ;; 3 bytes
    (drop (i32.const 1048576)) ;; 4 bytes
    (drop (i32.const -64)) ;; 1 byte
    (drop (i32.const -65)) ;; 2 bytes
    (drop (i32.const -8192)) ;; 2 bytes
    (drop (i32.const -8193)) ;; 3 bytes
    (drop (i32.const -1048576)) ;; 3 bytes
    (drop (i32.const -1048577)) ;; 4 bytes
    (drop (i32.const 0)) ;; 1 byte
    (drop (i32.const 63)) ;; 1 byte
    (drop (i32.const 64)) ;; 2 bytes
    (drop (i32.const 8191)) ;; 2 bytes
    (drop (i32.const 8192)) ;; 3 bytes
    (drop (i32.const 1048575)) ;; 3 bytes
    (drop (i32.const 1048576)) ;; 4 bytes
    (drop (i32.const -64)) ;; 1 byte
    (drop (i32.const -65)) ;; 2 bytes
    (drop (i32.const -8192)) ;; 2 bytes
    (drop (i32.const -8193)) ;; 3 bytes
    (drop (i32.const -1048576)) ;; 3 bytes
    (drop (i32.const -1048577)) ;; 4 bytes
    (drop (i32.const 0)) ;; 1 byte
    (drop (i32.const 63)) ;; 1 byte
    (drop (i32.const 64)) ;; 2 bytes
    (drop (i32.const 8191)) ;; 2 bytes
    (drop (i32.const 8192)) ;; 3 bytes
    (drop (i32.const 1048575)) ;; 3 bytes
    (drop (i32.const 1048576)) ;; 4 bytes
    (drop (i32.const -64)) ;; 1 byte
    (drop (i32.const -65)) ;; 2 bytes
    (drop (i32.const -8192)) ;; 2 bytes
    (drop (i32.const -8193)) ;; 3 bytes
    (drop (i32.const -1048576)) ;; 3 bytes
    (drop (i32.const -1048577)) ;; 4 bytes
  )
  ;; CHECK:      (func $floats-10-times
  ;; CHECK-NEXT:  (local $0 f32)
  ;; CHECK-NEXT:  (local $1 f64)
  ;; CHECK-NEXT:  (block
  ;; CHECK-NEXT:   (local.set $0
  ;; CHECK-NEXT:    (f32.const 0)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (local.set $1
  ;; CHECK-NEXT:    (f64.const 0)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:  )
  ;; CHECK-NEXT:  (block
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $0)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $1)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $0)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $1)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $0)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $1)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $0)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $1)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $0)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $1)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $0)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $1)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $0)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $1)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $0)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $1)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $0)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $1)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $0)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $1)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:  )
  ;; CHECK-NEXT: )
  (func $floats-10-times
    (drop (f32.const 0)) ;; 4 bytes
    (drop (f64.const 0)) ;; 8 bytes
    (drop (f32.const 0)) ;; 4 bytes
    (drop (f64.const 0)) ;; 8 bytes
    (drop (f32.const 0)) ;; 4 bytes
    (drop (f64.const 0)) ;; 8 bytes
    (drop (f32.const 0)) ;; 4 bytes
    (drop (f64.const 0)) ;; 8 bytes
    (drop (f32.const 0)) ;; 4 bytes
    (drop (f64.const 0)) ;; 8 bytes
    (drop (f32.const 0)) ;; 4 bytes
    (drop (f64.const 0)) ;; 8 bytes
    (drop (f32.const 0)) ;; 4 bytes
    (drop (f64.const 0)) ;; 8 bytes
    (drop (f32.const 0)) ;; 4 bytes
    (drop (f64.const 0)) ;; 8 bytes
    (drop (f32.const 0)) ;; 4 bytes
    (drop (f64.const 0)) ;; 8 bytes
    (drop (f32.const 0)) ;; 4 bytes
    (drop (f64.const 0)) ;; 8 bytes
  )
  ;; CHECK:      (func $too-few
  ;; CHECK-NEXT:  (drop
  ;; CHECK-NEXT:   (i32.const 8192)
  ;; CHECK-NEXT:  )
  ;; CHECK-NEXT:  (drop
  ;; CHECK-NEXT:   (i32.const 8192)
  ;; CHECK-NEXT:  )
  ;; CHECK-NEXT:  (drop
  ;; CHECK-NEXT:   (i32.const 8192)
  ;; CHECK-NEXT:  )
  ;; CHECK-NEXT:  (drop
  ;; CHECK-NEXT:   (i32.const 8192)
  ;; CHECK-NEXT:  )
  ;; CHECK-NEXT:  (drop
  ;; CHECK-NEXT:   (i32.const 8192)
  ;; CHECK-NEXT:  )
  ;; CHECK-NEXT: )
  (func $too-few
    (drop (i32.const 8192)) ;; 3 bytes, need 6 appearances
    (drop (i32.const 8192))
    (drop (i32.const 8192))
    (drop (i32.const 8192))
    (drop (i32.const 8192))
  )
  ;; CHECK:      (func $just-enough
  ;; CHECK-NEXT:  (local $0 i32)
  ;; CHECK-NEXT:  (block
  ;; CHECK-NEXT:   (local.set $0
  ;; CHECK-NEXT:    (i32.const 8192)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:  )
  ;; CHECK-NEXT:  (block
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $0)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $0)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $0)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $0)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $0)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $0)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:  )
  ;; CHECK-NEXT: )
  (func $just-enough
    (drop (i32.const 8192)) ;; 3 bytes, need 6 appearances
    (drop (i32.const 8192))
    (drop (i32.const 8192))
    (drop (i32.const 8192))
    (drop (i32.const 8192))
    (drop (i32.const 8192))
  )
  ;; CHECK:      (func $too-few-b
  ;; CHECK-NEXT:  (drop
  ;; CHECK-NEXT:   (i32.const 1048576)
  ;; CHECK-NEXT:  )
  ;; CHECK-NEXT:  (drop
  ;; CHECK-NEXT:   (i32.const 1048576)
  ;; CHECK-NEXT:  )
  ;; CHECK-NEXT:  (drop
  ;; CHECK-NEXT:   (i32.const 1048576)
  ;; CHECK-NEXT:  )
  ;; CHECK-NEXT: )
  (func $too-few-b
    (drop (i32.const 1048576)) ;; 4 bytes, need 4 appearances
    (drop (i32.const 1048576))
    (drop (i32.const 1048576))
  )
  ;; CHECK:      (func $enough-b
  ;; CHECK-NEXT:  (local $0 i32)
  ;; CHECK-NEXT:  (block
  ;; CHECK-NEXT:   (local.set $0
  ;; CHECK-NEXT:    (i32.const 1048576)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:  )
  ;; CHECK-NEXT:  (block
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $0)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $0)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $0)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $0)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:  )
  ;; CHECK-NEXT: )
  (func $enough-b
    (drop (i32.const 1048576)) ;; 4 bytes, need 4 appearances
    (drop (i32.const 1048576))
    (drop (i32.const 1048576))
    (drop (i32.const 1048576))
  )
  ;; CHECK:      (func $too-few-c
  ;; CHECK-NEXT:  (drop
  ;; CHECK-NEXT:   (f32.const 0)
  ;; CHECK-NEXT:  )
  ;; CHECK-NEXT:  (drop
  ;; CHECK-NEXT:   (f32.const 0)
  ;; CHECK-NEXT:  )
  ;; CHECK-NEXT:  (drop
  ;; CHECK-NEXT:   (f32.const 0)
  ;; CHECK-NEXT:  )
  ;; CHECK-NEXT: )
  (func $too-few-c
    (drop (f32.const 0)) ;; 4 bytes, need 4 appearances
    (drop (f32.const 0))
    (drop (f32.const 0))
  )
  ;; CHECK:      (func $enough-c
  ;; CHECK-NEXT:  (local $0 f32)
  ;; CHECK-NEXT:  (block
  ;; CHECK-NEXT:   (local.set $0
  ;; CHECK-NEXT:    (f32.const 0)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:  )
  ;; CHECK-NEXT:  (block
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $0)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $0)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $0)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $0)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:  )
  ;; CHECK-NEXT: )
  (func $enough-c
    (drop (f32.const 0)) ;; 4 bytes, need 4 appearances
    (drop (f32.const 0))
    (drop (f32.const 0))
    (drop (f32.const 0))
  )
  ;; CHECK:      (func $too-few-d
  ;; CHECK-NEXT:  (drop
  ;; CHECK-NEXT:   (f64.const 0)
  ;; CHECK-NEXT:  )
  ;; CHECK-NEXT: )
  (func $too-few-d
    (drop (f64.const 0)) ;; 8 bytes, need 2 appearances
  )
  ;; CHECK:      (func $enough-d
  ;; CHECK-NEXT:  (local $0 f64)
  ;; CHECK-NEXT:  (block
  ;; CHECK-NEXT:   (local.set $0
  ;; CHECK-NEXT:    (f64.const 0)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:  )
  ;; CHECK-NEXT:  (block
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $0)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:   (drop
  ;; CHECK-NEXT:    (local.get $0)
  ;; CHECK-NEXT:   )
  ;; CHECK-NEXT:  )
  ;; CHECK-NEXT: )
  (func $enough-d
    (drop (f64.const 0)) ;; 4 bytes, need 4 appearances
    (drop (f64.const 0))
  )
)

