use "glib"
use "gobject"

use @g_list_store_new[NullablePointer[GObjectS]](itemtype: U64)
use @g_list_store_append[None](store: NullablePointer[GObjectS] tag, item: NullablePointer[GObjectS] tag)

class GListStore is (GObjectInterface & GListModelInterface)
  var ptr: NullablePointer[GObjectS]

  fun ref get_ptr(): NullablePointer[GObjectS] => ptr

  new create(itemtype: U64) =>
    ptr = @g_list_store_new(itemtype)
    ref_sink()

  fun ref append(item: NullablePointer[GObjectS] tag) =>
    @g_list_store_append(ptr, item)

  fun _final() =>
    GObject.unref(ptr)

