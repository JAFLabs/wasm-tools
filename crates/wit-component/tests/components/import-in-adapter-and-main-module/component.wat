(component
  (type (;0;)
    (instance
      (type (;0;) (func))
      (export (;0;) "f1" (func (type 0)))
      (export (;1;) "f2" (func (type 0)))
      (export (;2;) "f3" (func (type 0)))
      (type (;1;) (func (result string)))
      (export (;3;) "g1" (func (type 1)))
      (export (;4;) "g2" (func (type 1)))
      (export (;5;) "g3" (func (type 1)))
    )
  )
  (import "foo:shared-dependency/doc" (instance (;0;) (type 0)))
  (type (;1;)
    (instance
      (type (;0;) u32)
      (export (;1;) "a-typedef" (type (eq 0)))
    )
  )
  (import "foo:shared-dependency/types" (instance (;1;) (type 1)))
  (alias export 1 "a-typedef" (type (;2;)))
  (type (;3;)
    (instance
      (alias outer 1 2 (type (;0;)))
      (export (;1;) "a-typedef" (type (eq 0)))
      (type (;2;) (func (result 1)))
      (export (;0;) "foo" (func (type 2)))
    )
  )
  (import "main-dep" (instance (;2;) (type 3)))
  (alias export 1 "a-typedef" (type (;4;)))
  (type (;5;)
    (instance
      (alias outer 1 4 (type (;0;)))
      (export (;1;) "a-typedef" (type (eq 0)))
      (type (;2;) (func (result 1)))
      (export (;0;) "foo" (func (type 2)))
    )
  )
  (import "adapter-dep" (instance (;3;) (type 5)))
  (core module (;0;)
    (type (;0;) (func))
    (type (;1;) (func (param i32)))
    (type (;2;) (func (result i32)))
    (type (;3;) (func (param i32 i32 i32 i32) (result i32)))
    (import "foo:shared-dependency/doc" "f1" (func (;0;) (type 0)))
    (import "foo:shared-dependency/doc" "f2" (func (;1;) (type 0)))
    (import "foo:shared-dependency/doc" "g1" (func (;2;) (type 1)))
    (import "foo:shared-dependency/doc" "g2" (func (;3;) (type 1)))
    (import "old" "adapter-f1" (func (;4;) (type 0)))
    (import "main-dep" "foo" (func (;5;) (type 2)))
    (memory (;0;) 1)
    (export "memory" (memory 0))
    (export "cabi_realloc" (func 6))
    (func (;6;) (type 3) (param i32 i32 i32 i32) (result i32)
      unreachable
    )
    (@producers
      (processed-by "wit-component" "$CARGO_PKG_VERSION")
      (processed-by "my-fake-bindgen" "123.45")
    )
  )
  (core module (;1;)
    (type (;0;) (func))
    (type (;1;) (func (param i32)))
    (type (;2;) (func (result i32)))
    (type (;3;) (func (param i32 i32 i32 i32) (result i32)))
    (import "foo:shared-dependency/doc" "f1" (func $f1 (;0;) (type 0)))
    (import "foo:shared-dependency/doc" "f3" (func $f3 (;1;) (type 0)))
    (import "foo:shared-dependency/doc" "g1" (func $g1 (;2;) (type 1)))
    (import "foo:shared-dependency/doc" "g3" (func $g3 (;3;) (type 1)))
    (import "adapter-dep" "foo" (func $foo (;4;) (type 2)))
    (export "adapter-f1" (func 5))
    (export "cabi_import_realloc" (func 6))
    (func (;5;) (type 0)
      call $f1
      call $f3
      i32.const 0
      call $g1
      i32.const 0
      call $g3
      call $foo
      drop
    )
    (func (;6;) (type 3) (param i32 i32 i32 i32) (result i32)
      unreachable
    )
  )
  (core module (;2;)
    (type (;0;) (func (param i32)))
    (type (;1;) (func))
    (table (;0;) 5 5 funcref)
    (export "0" (func $indirect-foo:shared-dependency/doc-g1))
    (export "1" (func $indirect-foo:shared-dependency/doc-g2))
    (export "2" (func $adapt-old-adapter-f1))
    (export "3" (func $"#func3 indirect-foo:shared-dependency/doc-g1"))
    (export "4" (func $indirect-foo:shared-dependency/doc-g3))
    (export "$imports" (table 0))
    (func $indirect-foo:shared-dependency/doc-g1 (;0;) (type 0) (param i32)
      local.get 0
      i32.const 0
      call_indirect (type 0)
    )
    (func $indirect-foo:shared-dependency/doc-g2 (;1;) (type 0) (param i32)
      local.get 0
      i32.const 1
      call_indirect (type 0)
    )
    (func $adapt-old-adapter-f1 (;2;) (type 1)
      i32.const 2
      call_indirect (type 1)
    )
    (func $"#func3 indirect-foo:shared-dependency/doc-g1" (@name "indirect-foo:shared-dependency/doc-g1") (;3;) (type 0) (param i32)
      local.get 0
      i32.const 3
      call_indirect (type 0)
    )
    (func $indirect-foo:shared-dependency/doc-g3 (;4;) (type 0) (param i32)
      local.get 0
      i32.const 4
      call_indirect (type 0)
    )
    (@producers
      (processed-by "wit-component" "$CARGO_PKG_VERSION")
    )
  )
  (core module (;3;)
    (type (;0;) (func (param i32)))
    (type (;1;) (func))
    (import "" "0" (func (;0;) (type 0)))
    (import "" "1" (func (;1;) (type 0)))
    (import "" "2" (func (;2;) (type 1)))
    (import "" "3" (func (;3;) (type 0)))
    (import "" "4" (func (;4;) (type 0)))
    (import "" "$imports" (table (;0;) 5 5 funcref))
    (elem (;0;) (i32.const 0) func 0 1 2 3 4)
    (@producers
      (processed-by "wit-component" "$CARGO_PKG_VERSION")
    )
  )
  (core instance (;0;) (instantiate 2))
  (alias export 0 "f1" (func (;0;)))
  (core func (;0;) (canon lower (func 0)))
  (alias export 0 "f2" (func (;1;)))
  (core func (;1;) (canon lower (func 1)))
  (alias core export 0 "0" (core func (;2;)))
  (alias core export 0 "1" (core func (;3;)))
  (core instance (;1;)
    (export "f1" (func 0))
    (export "f2" (func 1))
    (export "g1" (func 2))
    (export "g2" (func 3))
  )
  (alias core export 0 "2" (core func (;4;)))
  (core instance (;2;)
    (export "adapter-f1" (func 4))
  )
  (alias export 2 "foo" (func (;2;)))
  (core func (;5;) (canon lower (func 2)))
  (core instance (;3;)
    (export "foo" (func 5))
  )
  (core instance (;4;) (instantiate 0
      (with "foo:shared-dependency/doc" (instance 1))
      (with "old" (instance 2))
      (with "main-dep" (instance 3))
    )
  )
  (alias core export 4 "memory" (core memory (;0;)))
  (alias export 0 "f1" (func (;3;)))
  (core func (;6;) (canon lower (func 3)))
  (alias export 0 "f3" (func (;4;)))
  (core func (;7;) (canon lower (func 4)))
  (alias core export 0 "3" (core func (;8;)))
  (alias core export 0 "4" (core func (;9;)))
  (core instance (;5;)
    (export "f1" (func 6))
    (export "f3" (func 7))
    (export "g1" (func 8))
    (export "g3" (func 9))
  )
  (alias export 3 "foo" (func (;5;)))
  (core func (;10;) (canon lower (func 5)))
  (core instance (;6;)
    (export "foo" (func 10))
  )
  (core instance (;7;) (instantiate 1
      (with "foo:shared-dependency/doc" (instance 5))
      (with "adapter-dep" (instance 6))
    )
  )
  (alias core export 0 "$imports" (core table (;0;)))
  (alias export 0 "g1" (func (;6;)))
  (alias core export 4 "cabi_realloc" (core func (;11;)))
  (core func (;12;) (canon lower (func 6) (memory 0) (realloc 11) string-encoding=utf8))
  (alias export 0 "g2" (func (;7;)))
  (core func (;13;) (canon lower (func 7) (memory 0) (realloc 11) string-encoding=utf8))
  (alias core export 7 "adapter-f1" (core func (;14;)))
  (alias export 0 "g1" (func (;8;)))
  (alias core export 7 "cabi_import_realloc" (core func (;15;)))
  (core func (;16;) (canon lower (func 8) (memory 0) (realloc 15) string-encoding=utf8))
  (alias export 0 "g3" (func (;9;)))
  (core func (;17;) (canon lower (func 9) (memory 0) (realloc 15) string-encoding=utf8))
  (core instance (;8;)
    (export "$imports" (table 0))
    (export "0" (func 12))
    (export "1" (func 13))
    (export "2" (func 14))
    (export "3" (func 16))
    (export "4" (func 17))
  )
  (core instance (;9;) (instantiate 3
      (with "" (instance 8))
    )
  )
  (@producers
    (processed-by "wit-component" "$CARGO_PKG_VERSION")
  )
)
