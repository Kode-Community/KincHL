#include "kinchl.h"
#include "window.h"
#include <kinc/error.h>
#include <kinc/log.h>
#include <kinc/system.h>

HL_PRIM int HL_NAME(hl_init)(vstring* title, int w, int h, win_opts_hl* win, fb_opts_hl* fb) {
  // vdynamic *err = malloc(sizeof(vdynamic));
  // err->t = &hlt_i32;
  // err->v.i = 5;
  // hl_throw(err);
  return kinc_init(hl_to_utf8(title->bytes), w, h, convert_win_opts_hl(win), convert_fb_opts_hl(fb));
}
HL_PRIM void HL_NAME(hl_start)() { kinc_start(); }
HL_PRIM void HL_NAME(hl_stop)() { kinc_stop(); }
HL_PRIM void HL_NAME(hl_log)(int level, vstring* msg) { kinc_log(level, hl_to_utf8(msg->bytes)); }

HL_PRIM vstring* HL_NAME(hl_application_name)() { return (vstring*)hl_alloc_strbytes(hl_to_utf16(kinc_application_name())); }
HL_PRIM void HL_NAME(hl_set_application_name)(vstring* name) { kinc_set_application_name(hl_to_utf8(name->bytes)); }
HL_PRIM int HL_NAME(hl_width)() { return kinc_width(); }
HL_PRIM int HL_NAME(hl_height)() { return kinc_height(); }
HL_PRIM void HL_NAME(hl_load_url)(vstring* url) { kinc_load_url(hl_to_utf8(url->bytes)); }
HL_PRIM vstring* HL_NAME(hl_system_id)() { return (vstring*)hl_alloc_strbytes(hl_to_utf16(kinc_system_id())); }

HL_PRIM varray* HL_NAME(hl_video_formats)() {
  const char** formats = kinc_video_formats();
  int format_count = 0;
  while(formats[format_count] != NULL)
    format_count++;
  varray* ret = hl_alloc_array(&hlt_dyn, format_count);
  for (int x = 0; x < format_count; x++) {
    hl_aptr(ret, vstring*)[x] = (vstring*)hl_alloc_strbytes(hl_to_utf16(formats[x]));
  }
  return ret;
}
HL_PRIM vstring* HL_NAME(hl_language)() { return (vstring*)hl_alloc_strbytes(hl_to_utf16(kinc_language())); }
HL_PRIM void HL_NAME(hl_vibrate)(int milliseconds) { kinc_vibrate(milliseconds); }
HL_PRIM float HL_NAME(hl_safe_zone)() { return kinc_safe_zone(); }
HL_PRIM bool HL_NAME(hl_automatic_safe_zone)() { return kinc_automatic_safe_zone(); }
HL_PRIM void HL_NAME(hl_set_safe_zone)(float value) { kinc_set_safe_zone(value); }
HL_PRIM double HL_NAME(hl_frequency)() { return kinc_frequency(); }
HL_PRIM kinc_ticks_t HL_NAME(hl_timestamp)() { return kinc_timestamp(); }
HL_PRIM double HL_NAME(hl_time)() { return kinc_time(); }
HL_PRIM void HL_NAME(hl_login)() { kinc_login(); }
HL_PRIM bool HL_NAME(hl_waiting_for_login)() { return kinc_waiting_for_login(); }
HL_PRIM void HL_NAME(hl_unlock_achievement)(int id) { kinc_unlock_achievement(id); }
HL_PRIM void HL_NAME(hl_disallow_user_change)() { kinc_disallow_user_change(); }
HL_PRIM void HL_NAME(hl_allow_user_change)() { kinc_allow_user_change(); }
HL_PRIM void HL_NAME(hl_set_keep_screen_on)(bool on) { kinc_set_keep_screen_on(on); }

HL_PRIM int HL_NAME(hl_get_graphics_api)() {
#if KORE_DIRECT3D9
  return 0;
#elif KORE_DIRECT3D11
  return 1;
#elif KORE_DIRECT3D12
  return 2;
#elif KORE_OPENGL
  return 3;
#elif KORE_METAL
  return 4;
#elif KORE_VULKAN
  return 5;
#endif
}

DEFINE_PRIM(_VOID, hl_start, _NO_ARG)
DEFINE_PRIM(_I32, hl_init, _STRING _I32 _I32 HL_WINDOW_OPTS HL_FRAMEBUFFER_OPTS)
DEFINE_PRIM(_VOID, hl_stop, _NO_ARG)
DEFINE_PRIM(_VOID, hl_log, _I32 _STRING)
DEFINE_PRIM(_STRING, hl_application_name, _NO_ARG)
DEFINE_PRIM(_VOID, hl_set_application_name, _STRING)
DEFINE_PRIM(_I32, hl_width, _NO_ARG)
DEFINE_PRIM(_I32, hl_height, _NO_ARG)
DEFINE_PRIM(_VOID, hl_load_url, _STRING)
DEFINE_PRIM(_STRING, hl_system_id, _NO_ARG)
DEFINE_PRIM(_ARR, hl_video_formats, _NO_ARG)
DEFINE_PRIM(_STRING, hl_language, _NO_ARG)
DEFINE_PRIM(_VOID, hl_vibrate, _I32)
DEFINE_PRIM(_F32, hl_safe_zone, _NO_ARG)
DEFINE_PRIM(_BOOL, hl_automatic_safe_zone, _NO_ARG)
DEFINE_PRIM(_VOID, hl_set_safe_zone, _F32)
DEFINE_PRIM(_F64, hl_frequency, _NO_ARG)
DEFINE_PRIM(_I64, hl_timestamp, _NO_ARG)
DEFINE_PRIM(_F64, hl_time, _NO_ARG)

DEFINE_PRIM(_VOID, hl_login, _NO_ARG)
DEFINE_PRIM(_BOOL, hl_waiting_for_login, _NO_ARG)
DEFINE_PRIM(_VOID, hl_unlock_achievement, _I32)
DEFINE_PRIM(_VOID, hl_disallow_user_change, _NO_ARG)
DEFINE_PRIM(_VOID, hl_allow_user_change, _NO_ARG)
DEFINE_PRIM(_VOID, hl_set_keep_screen_on, _BOOL)
DEFINE_PRIM(_I32, hl_get_graphics_api, _NO_ARG)

void EMPTY_INIT(void* o) {}
void EMPTY_DESTROY(void* o) {}
void print_exception_stack(vdynamic* exc) {
  uchar* msg = hl_to_string(exc);
  varray* nstack = hl_exception_stack();
  uchar** stack = hl_aptr(nstack, uchar*);
  if (exc) { kinc_log(KINC_LOG_LEVEL_WARNING,"Uncaught exception : %s", hl_to_utf8(msg)); }
  for (int i = 0; i < nstack->size; i++) {
    kinc_log(KINC_LOG_LEVEL_INFO, "Called from %s",hl_to_utf8(stack[i]));
  }
}