(component
  (core module (;0;)
    (type (;0;) (func (param i32) (result i32)))
    (type (;1;) (func (param i32)))
    (type (;2;) (func (result i32)))
    (import "[export]foo" "[resource-new]a" (func $new (;0;) (type 0)))
    (import "[export]foo" "[resource-rep]a" (func (;1;) (type 0)))
    (import "[export]foo" "[resource-drop]a" (func (;2;) (type 1)))
    (export "foo#[constructor]a" (func 3))
    (export "foo#[static]a.other-new" (func 4))
    (export "foo#[dtor]a" (func 5))
    (func (;3;) (type 2) (result i32)
      i32.const 100
      call $new
    )
    (func (;4;) (type 2) (result i32)
      i32.const 200
      call $new
    )
    (func (;5;) (type 1) (param i32))
    (@producers
      (processed-by "wit-component" "$CARGO_PKG_VERSION")
      (processed-by "my-fake-bindgen" "123.45")
    )
  )
  (core module (;1;)
    (type (;0;) (func (param i32)))
    (table (;0;) 1 1 funcref)
    (export "0" (func $dtor-a))
    (export "$imports" (table 0))
    (func $dtor-a (;0;) (type 0) (param i32)
      local.get 0
      i32.const 0
      call_indirect (type 0)
    )
    (@producers
      (processed-by "wit-component" "$CARGO_PKG_VERSION")
    )
  )
  (core module (;2;)
    (type (;0;) (func (param i32)))
    (import "" "0" (func (;0;) (type 0)))
    (import "" "$imports" (table (;0;) 1 1 funcref))
    (elem (;0;) (i32.const 0) func 0)
    (@producers
      (processed-by "wit-component" "$CARGO_PKG_VERSION")
    )
  )
  (core instance (;0;) (instantiate 1))
  (alias core export 0 "0" (core func (;0;)))
  (type (;0;) (resource (rep i32) (dtor (func 0))))
  (core func (;1;) (canon resource.new 0))
  (core func (;2;) (canon resource.rep 0))
  (core func (;3;) (canon resource.drop 0))
  (core instance (;1;)
    (export "[resource-new]a" (func 1))
    (export "[resource-rep]a" (func 2))
    (export "[resource-drop]a" (func 3))
  )
  (core instance (;2;) (instantiate 0
      (with "[export]foo" (instance 1))
    )
  )
  (alias core export 0 "$imports" (core table (;0;)))
  (alias core export 2 "foo#[dtor]a" (core func (;4;)))
  (core instance (;3;)
    (export "$imports" (table 0))
    (export "0" (func 4))
  )
  (core instance (;4;) (instantiate 2
      (with "" (instance 3))
    )
  )
  (type (;1;) (own 0))
  (type (;2;) (func (result 1)))
  (alias core export 2 "foo#[constructor]a" (core func (;5;)))
  (func (;0;) (type 2) (canon lift (core func 5)))
  (alias core export 2 "foo#[static]a.other-new" (core func (;6;)))
  (func (;1;) (type 2) (canon lift (core func 6)))
  (component (;0;)
    (import "import-type-a" (type (;0;) (sub resource)))
    (type (;1;) (own 0))
    (type (;2;) (func (result 1)))
    (import "import-constructor-a" (func (;0;) (type 2)))
    (import "import-static-a-other-new" (func (;1;) (type 2)))
    (export (;3;) "a" (type 0))
    (type (;4;) (own 3))
    (type (;5;) (func (result 4)))
    (export (;2;) "[constructor]a" (func 0) (func (type 5)))
    (export (;3;) "[static]a.other-new" (func 1) (func (type 5)))
  )
  (instance (;0;) (instantiate 0
      (with "import-constructor-a" (func 0))
      (with "import-static-a-other-new" (func 1))
      (with "import-type-a" (type 0))
    )
  )
  (export (;1;) "foo" (instance 0))
  (@producers
    (processed-by "wit-component" "$CARGO_PKG_VERSION")
  )
)
