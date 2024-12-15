use "glib"
use "gobject"

use @g_list_store_new[GObjectStruct](itemtype: U64)
use @g_list_store_append[None](store: GObjectStruct tag, item: GObjectStruct tag)

class GListStore is (GObjectInterface & GListModelInterface)
  var ptr: GObjectStruct

  fun ref get_ptr(): GObjectStruct => ptr

  new create(itemtype: U64) =>
    ptr = @g_list_store_new(itemtype)
    ref_sink()

  fun ref append(item: GObjectStruct tag) =>
    @g_list_store_append(ptr, item)

  fun _final() =>
    GObject.unref(ptr)

