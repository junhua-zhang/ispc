//; RUN: %{ispc} %s -h %t.h -o /dev/null
//; RUN: FileCheck --input-file=%t.h %s

typedef void (*foo_fn)(const uniform int x);
//; CHECK: extern void call_foo(void ( * foo)(const int32_t x), const int32_t x)
export void call_foo(void (* uniform foo)(const uniform int x), const uniform int x)
{
    foo(x);
}