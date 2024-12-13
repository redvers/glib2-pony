use "glib"
use "gobject"

use @g_list_model_get_item_type[U64](list: NullablePointer[GObjectS] tag)
use @g_list_model_get_object[NullablePointer[GObjectS]](list: NullablePointer[GObjectS] tag, posn: U32)

interface GListModelInterface
  fun ref get_ptr(): NullablePointer[GObjectS] tag

  fun ref get_item_type(): U64 =>
    GListModel.get_item_type(get_ptr())

  fun ref get_object(posn: U32): NullablePointer[GObjectS] =>
    GListModel.get_object(get_ptr(), posn)

primitive GListModel
  fun get_item_type(ptr: NullablePointer[GObjectS] tag): U64 =>
    @g_list_model_get_item_type(ptr)

  fun get_object(ptr: NullablePointer[GObjectS] tag, posn: U32): NullablePointer[GObjectS] =>
    @g_list_model_get_object(ptr, posn)

