(component
  (type (;0;)
    (instance
      (type (;0;) (record (field "s" string)))
      (export (;1;) "r" (type (eq 0)))
      (type (;2;) (variant (case "s" string)))
      (export (;3;) "v" (type (eq 2)))
      (type (;4;) (record (field "s" u32)))
      (export (;5;) "r-no-string" (type (eq 4)))
      (type (;6;) (variant (case "s" u32)))
      (export (;7;) "v-no-string" (type (eq 6)))
      (type (;8;) (func))
      (export (;0;) "a" (func (type 8)))
      (type (;9;) (list string))
      (type (;10;) (func (param "x" 9)))
      (export (;1;) "b" (func (type 10)))
      (type (;11;) (func (param "x" 1)))
      (export (;2;) "c" (func (type 11)))
      (type (;12;) (func (param "x" 3)))
      (export (;3;) "d" (func (type 12)))
      (type (;13;) (func (param "x" 5)))
      (export (;4;) "e" (func (type 13)))
      (type (;14;) (func (param "x" 7)))
      (export (;5;) "f" (func (type 14)))
      (type (;15;) (list 1))
      (type (;16;) (func (param "x" 15)))
      (export (;6;) "g" (func (type 16)))
      (type (;17;) (list 3))
      (type (;18;) (func (param "x" 17)))
      (export (;7;) "h" (func (type 18)))
      (type (;19;) (list u32))
      (type (;20;) (func (param "x" 19)))
      (export (;8;) "i" (func (type 20)))
      (type (;21;) (func (param "x" u32)))
      (export (;9;) "j" (func (type 21)))
      (type (;22;) (tuple u32 u32))
      (type (;23;) (func (result 22)))
      (export (;10;) "k" (func (type 23)))
      (type (;24;) (func (result string)))
      (export (;11;) "l" (func (type 24)))
      (type (;25;) (func (result 19)))
      (export (;12;) "m" (func (type 25)))
      (type (;26;) (func (result u32)))
      (export (;13;) "n" (func (type 26)))
      (type (;27;) (func (result 3)))
      (export (;14;) "o" (func (type 27)))
      (type (;28;) (list 7))
      (type (;29;) (func (result 28)))
      (export (;15;) "p" (func (type 29)))
    )
  )
  (import "foo:foo/foo" (instance (;0;) (type 0)))
  (core module (;0;)
    (type (;0;) (func))
    (type (;1;) (func (param i32 i32)))
    (type (;2;) (func (param i32 i32 i32)))
    (type (;3;) (func (param i32)))
    (type (;4;) (func (result i32)))
    (type (;5;) (func (param i32 i32 i32 i32) (result i32)))
    (import "foo:foo/foo" "a" (func (;0;) (type 0)))
    (import "foo:foo/foo" "b" (func (;1;) (type 1)))
    (import "foo:foo/foo" "c" (func (;2;) (type 1)))
    (import "foo:foo/foo" "d" (func (;3;) (type 2)))
    (import "foo:foo/foo" "e" (func (;4;) (type 3)))
    (import "foo:foo/foo" "f" (func (;5;) (type 1)))
    (import "foo:foo/foo" "g" (func (;6;) (type 1)))
    (import "foo:foo/foo" "h" (func (;7;) (type 1)))
    (import "foo:foo/foo" "i" (func (;8;) (type 1)))
    (import "foo:foo/foo" "j" (func (;9;) (type 3)))
    (import "foo:foo/foo" "k" (func (;10;) (type 3)))
    (import "foo:foo/foo" "l" (func (;11;) (type 3)))
    (import "foo:foo/foo" "m" (func (;12;) (type 3)))
    (import "foo:foo/foo" "n" (func (;13;) (type 4)))
    (import "foo:foo/foo" "o" (func (;14;) (type 3)))
    (import "foo:foo/foo" "p" (func (;15;) (type 3)))
    (memory (;0;) 1)
    (export "memory" (memory 0))
    (export "cabi_realloc" (func 16))
    (func (;16;) (type 5) (param i32 i32 i32 i32) (result i32)
      unreachable
    )
    (@producers
      (processed-by "wit-component" "$CARGO_PKG_VERSION")
      (processed-by "my-fake-bindgen" "123.45")
    )
  )
  (core module (;1;)
    (type (;0;) (func (param i32 i32)))
    (type (;1;) (func (param i32 i32 i32)))
    (type (;2;) (func (param i32)))
    (table (;0;) 11 11 funcref)
    (export "0" (func $indirect-foo:foo/foo-b))
    (export "1" (func $indirect-foo:foo/foo-c))
    (export "2" (func $indirect-foo:foo/foo-d))
    (export "3" (func $indirect-foo:foo/foo-g))
    (export "4" (func $indirect-foo:foo/foo-h))
    (export "5" (func $indirect-foo:foo/foo-i))
    (export "6" (func $indirect-foo:foo/foo-k))
    (export "7" (func $indirect-foo:foo/foo-l))
    (export "8" (func $indirect-foo:foo/foo-m))
    (export "9" (func $indirect-foo:foo/foo-o))
    (export "10" (func $indirect-foo:foo/foo-p))
    (export "$imports" (table 0))
    (func $indirect-foo:foo/foo-b (;0;) (type 0) (param i32 i32)
      local.get 0
      local.get 1
      i32.const 0
      call_indirect (type 0)
    )
    (func $indirect-foo:foo/foo-c (;1;) (type 0) (param i32 i32)
      local.get 0
      local.get 1
      i32.const 1
      call_indirect (type 0)
    )
    (func $indirect-foo:foo/foo-d (;2;) (type 1) (param i32 i32 i32)
      local.get 0
      local.get 1
      local.get 2
      i32.const 2
      call_indirect (type 1)
    )
    (func $indirect-foo:foo/foo-g (;3;) (type 0) (param i32 i32)
      local.get 0
      local.get 1
      i32.const 3
      call_indirect (type 0)
    )
    (func $indirect-foo:foo/foo-h (;4;) (type 0) (param i32 i32)
      local.get 0
      local.get 1
      i32.const 4
      call_indirect (type 0)
    )
    (func $indirect-foo:foo/foo-i (;5;) (type 0) (param i32 i32)
      local.get 0
      local.get 1
      i32.const 5
      call_indirect (type 0)
    )
    (func $indirect-foo:foo/foo-k (;6;) (type 2) (param i32)
      local.get 0
      i32.const 6
      call_indirect (type 2)
    )
    (func $indirect-foo:foo/foo-l (;7;) (type 2) (param i32)
      local.get 0
      i32.const 7
      call_indirect (type 2)
    )
    (func $indirect-foo:foo/foo-m (;8;) (type 2) (param i32)
      local.get 0
      i32.const 8
      call_indirect (type 2)
    )
    (func $indirect-foo:foo/foo-o (;9;) (type 2) (param i32)
      local.get 0
      i32.const 9
      call_indirect (type 2)
    )
    (func $indirect-foo:foo/foo-p (;10;) (type 2) (param i32)
      local.get 0
      i32.const 10
      call_indirect (type 2)
    )
    (@producers
      (processed-by "wit-component" "$CARGO_PKG_VERSION")
    )
  )
  (core module (;2;)
    (type (;0;) (func (param i32 i32)))
    (type (;1;) (func (param i32 i32 i32)))
    (type (;2;) (func (param i32)))
    (import "" "0" (func (;0;) (type 0)))
    (import "" "1" (func (;1;) (type 0)))
    (import "" "2" (func (;2;) (type 1)))
    (import "" "3" (func (;3;) (type 0)))
    (import "" "4" (func (;4;) (type 0)))
    (import "" "5" (func (;5;) (type 0)))
    (import "" "6" (func (;6;) (type 2)))
    (import "" "7" (func (;7;) (type 2)))
    (import "" "8" (func (;8;) (type 2)))
    (import "" "9" (func (;9;) (type 2)))
    (import "" "10" (func (;10;) (type 2)))
    (import "" "$imports" (table (;0;) 11 11 funcref))
    (elem (;0;) (i32.const 0) func 0 1 2 3 4 5 6 7 8 9 10)
    (@producers
      (processed-by "wit-component" "$CARGO_PKG_VERSION")
    )
  )
  (core instance (;0;) (instantiate 1))
  (alias export 0 "a" (func (;0;)))
  (core func (;0;) (canon lower (func 0)))
  (alias core export 0 "0" (core func (;1;)))
  (alias core export 0 "1" (core func (;2;)))
  (alias core export 0 "2" (core func (;3;)))
  (alias export 0 "e" (func (;1;)))
  (core func (;4;) (canon lower (func 1)))
  (alias export 0 "f" (func (;2;)))
  (core func (;5;) (canon lower (func 2)))
  (alias core export 0 "3" (core func (;6;)))
  (alias core export 0 "4" (core func (;7;)))
  (alias core export 0 "5" (core func (;8;)))
  (alias export 0 "j" (func (;3;)))
  (core func (;9;) (canon lower (func 3)))
  (alias core export 0 "6" (core func (;10;)))
  (alias core export 0 "7" (core func (;11;)))
  (alias core export 0 "8" (core func (;12;)))
  (alias export 0 "n" (func (;4;)))
  (core func (;13;) (canon lower (func 4)))
  (alias core export 0 "9" (core func (;14;)))
  (alias core export 0 "10" (core func (;15;)))
  (core instance (;1;)
    (export "a" (func 0))
    (export "b" (func 1))
    (export "c" (func 2))
    (export "d" (func 3))
    (export "e" (func 4))
    (export "f" (func 5))
    (export "g" (func 6))
    (export "h" (func 7))
    (export "i" (func 8))
    (export "j" (func 9))
    (export "k" (func 10))
    (export "l" (func 11))
    (export "m" (func 12))
    (export "n" (func 13))
    (export "o" (func 14))
    (export "p" (func 15))
  )
  (core instance (;2;) (instantiate 0
      (with "foo:foo/foo" (instance 1))
    )
  )
  (alias core export 2 "memory" (core memory (;0;)))
  (alias core export 0 "$imports" (core table (;0;)))
  (alias export 0 "b" (func (;5;)))
  (alias core export 2 "cabi_realloc" (core func (;16;)))
  (core func (;17;) (canon lower (func 5) (memory 0) string-encoding=utf8))
  (alias export 0 "c" (func (;6;)))
  (core func (;18;) (canon lower (func 6) (memory 0) string-encoding=utf8))
  (alias export 0 "d" (func (;7;)))
  (core func (;19;) (canon lower (func 7) (memory 0) string-encoding=utf8))
  (alias export 0 "g" (func (;8;)))
  (core func (;20;) (canon lower (func 8) (memory 0) string-encoding=utf8))
  (alias export 0 "h" (func (;9;)))
  (core func (;21;) (canon lower (func 9) (memory 0) string-encoding=utf8))
  (alias export 0 "i" (func (;10;)))
  (core func (;22;) (canon lower (func 10) (memory 0)))
  (alias export 0 "k" (func (;11;)))
  (core func (;23;) (canon lower (func 11) (memory 0)))
  (alias export 0 "l" (func (;12;)))
  (core func (;24;) (canon lower (func 12) (memory 0) (realloc 16) string-encoding=utf8))
  (alias export 0 "m" (func (;13;)))
  (core func (;25;) (canon lower (func 13) (memory 0) (realloc 16)))
  (alias export 0 "o" (func (;14;)))
  (core func (;26;) (canon lower (func 14) (memory 0) (realloc 16) string-encoding=utf8))
  (alias export 0 "p" (func (;15;)))
  (core func (;27;) (canon lower (func 15) (memory 0) (realloc 16)))
  (core instance (;3;)
    (export "$imports" (table 0))
    (export "0" (func 17))
    (export "1" (func 18))
    (export "2" (func 19))
    (export "3" (func 20))
    (export "4" (func 21))
    (export "5" (func 22))
    (export "6" (func 23))
    (export "7" (func 24))
    (export "8" (func 25))
    (export "9" (func 26))
    (export "10" (func 27))
  )
  (core instance (;4;) (instantiate 2
      (with "" (instance 3))
    )
  )
  (@producers
    (processed-by "wit-component" "$CARGO_PKG_VERSION")
  )
)
