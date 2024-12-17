/*
 * name: Bytes
 * c:type: GBytes
 * glib:is-gtype-struct-for: 
 * opaque: 1
 * disguised: 
 * glib:type-name: GBytes
 * glib:get-type: g_bytes_get_type
 * c:symbol-prefix: bytes
 * c:copy-function: g_bytes_ref
 * c:free-function: g_bytes_unref
 * deprecated: 
 */
struct GBytesStruct
"""
A simple reference counted data type representing an immutable sequence of
zero or more bytes from an unspecified origin.

The purpose of a `GBytes` is to keep the memory region that it holds
alive for as long as anyone holds a reference to the bytes.  When
the last reference count is dropped, the memory is released. Multiple
unrelated callers can use byte data in the `GBytes` without coordinating
their activities, resting assured that the byte data will not change or
move while they hold a reference.

A `GBytes` can come from many different origins that may have
different procedures for freeing the memory region.  Examples are
memory from [func@GLib.malloc], from memory slices, from a
[struct@GLib.MappedFile] or memory from other allocators.

`GBytes` work well as keys in [struct@GLib.HashTable]. Use
[method@GLib.Bytes.equal] and [method@GLib.Bytes.hash] as parameters to
[func@GLib.HashTable.new] or [func@GLib.HashTable.new_full].
`GBytes` can also be used as keys in a [struct@GLib.Tree] by passing the
[method@GLib.Bytes.compare] function to [ctor@GLib.Tree.new].

The data pointed to by this bytes must not be modified. For a mutable
array of bytes see [struct@GLib.ByteArray]. Use
[method@GLib.Bytes.unref_to_array] to create a mutable array for a `GBytes`
sequence. To create an immutable `GBytes` from a mutable
[struct@GLib.ByteArray], use the [func@GLib.ByteArray.free_to_bytes]
function.
"""

