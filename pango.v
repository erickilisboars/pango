@[translated]
module pango

import cairo

#pkgconfig pango
#pkgconfig pangocairo
#include <pango/pango.h>
#include <pango/pangocairo.h>
#include <pango/pangoft2.h>

// Compatibility stubs for Pango dependencies

pub struct GList {}

pub struct GSList {}

pub struct GQueue {}

pub struct GObject {}

pub struct GObjectClass {}

pub struct GError {}

pub struct FT_Face {}

pub struct FT_Library {}

pub struct FT_Bitmap {}

pub struct GString {}

pub struct PangoAttrShape {}

pub struct GMarkupParseContext {}

pub struct PangoRendererPrivate {}

pub struct GBytes {}

pub struct GQuark {}

pub struct GTypeModule {}

pub struct Hb_feature_t {}

pub struct PangoAttrColor {}

pub struct PangoAttrFloat {}

pub struct PangoAttrFontDesc {}

pub struct PangoAttrFontFeatures {}

pub struct PangoAttrInt {}

pub struct PangoAttrLanguage {}

pub struct PangoAttrSize {}

pub struct PangoAttrString {}

pub struct PangoEngineClass {}

pub struct PangoEngineInfo {}

pub struct PangoEngineLang {}

pub struct PangoEngineScriptInfo {}

pub struct PangoEngineShape {}

pub struct PangoFontMetrics {}

pub struct PangoFontsetSimple {}

pub struct PangoGlyphGeometry {}

pub struct PangoGlyphInfo {}

pub struct PangoGlyphItemIter {}

pub struct PangoGlyphVisAttr {}

pub struct PangoScriptIter {}

pub fn g_object_unref(object voidptr) {
	C.g_object_unref(object)
}

fn C.g_object_unref(object voidptr)

pub type Gboolean = int
pub type GType = usize
pub type Gpointer = voidptr
pub type Gconstpointer = voidptr
pub type Gchar = i8
pub type Guchar = u8
pub type Gint = int
pub type Guint = u32
pub type Gshort = i16
pub type Gushort = u16
pub type Glong = int
pub type Gulong = u32
pub type Gint8 = i8
pub type Guint8 = u8
pub type Gint16 = i16
pub type Guint16 = u16
pub type Gint32 = int
pub type Guint32 = u32
pub type Gint64 = i64
pub type Guint64 = u64
pub type Gfloat = f32
pub type Gdouble = f64
pub type Gsize = usize
pub type Gssize = isize
pub type Gunichar = u32
pub type GDestroyNotify = fn (voidptr)

pub type GFunc = fn (voidptr, voidptr)

pub type GCompareFunc = fn (voidptr, voidptr) int

// Cairo Integration - Using types from the cairo module
pub type Cairo_t = cairo.Cairo
pub type Cairo_surface_t = cairo.Cairo_surface
pub type Cairo_font_options_t = cairo.Cairo_font_options
pub type Cairo_scaled_font_t = cairo.Cairo_scaled_font
pub type Cairo_matrix_t = cairo.Cairo_matrix_t
pub type Cairo_font_type_t = cairo.Cairo_font_type_t

// Pango Opaque Structs

pub struct PangoFontDescription {}

pub struct PangoContext {}

pub struct PangoLayout {}

pub struct PangoFontMap {}

pub struct PangoFont {}

pub struct PangoFontset {}

pub struct PangoFontFamily {}

pub struct PangoFontFace {}

pub struct PangoAttrList {}

pub struct PangoAttrIterator {}

pub struct PangoAttribute {}

pub struct PangoAttrClass {}

pub struct PangoCoverage {}

pub struct PangoRenderer {}

pub struct PangoGlyphString {}

pub struct PangoGlyphItem {}

pub struct PangoLayoutLine {}

pub struct PangoLayoutIter {}

pub struct PangoTabArray {}

pub struct PangoLanguage {}

pub struct PangoItem {}

pub struct PangoMatrix {}

pub struct PangoAnalysis {}

pub struct PangoLogAttr {}

pub struct PangoEngine {}

pub struct PangoCairoFontMap {}

pub struct PangoCairoFont {}

pub struct PangoFT2FontMap {}

pub struct PangoColor {}

pub struct PangoRectangle {}

pub struct FcPattern {}

pub struct FcConfig {}

pub struct FcCharSet {}

pub struct FcLangSet {}

pub struct FcChar8 {}

pub struct PangoFcDecoder {}

pub struct Hb_face_t {}

pub struct Hb_font_t {}

pub struct PangoFcFontMap {}

pub struct PangoFcFont {}

pub type PangoFcSubstituteFunc = fn (&FcPattern, Gpointer)

// Pango
// *pango-coverage.h: Coverage sets for fonts
// * *Copyright (C) 2000 Red Hat Software
// * *This library is free software; you can redistribute it and/or
// *modify it under the terms of the GNU Library General Public
// *License as published by the Free Software Foundation; either
// *version 2 of the License, or (at your option) any later version.
// * *This library is distributed in the hope that it will be useful,
// *but WITHOUT ANY WARRANTY; without even the implied warranty of
// *MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the GNU
// *Library General Public License for more details.
// * *You should have received a copy of the GNU Library General Public
// *License along with this library; if not, write to the
// *Free Software Foundation, Inc., 59 Temple Place - Suite 330,
// *Boston, MA 02111-1307, USA.
//
//* *PangoCoverage:
// * *A `PangoCoverage` structure is a map from Unicode characters
// *to [enum@Pango.CoverageLevel] values.
// * *It is often necessary in Pango to determine if a particular
// *font can represent a particular character, and also how well
// *it can represent that character. The `PangoCoverage` is a data
// *structure that is used to represent that information. It is an
// *opaque structure with no public fields.
//
//* *PangoCoverageLevel:
// *@PANGO_COVERAGE_NONE: The character is not representable with
// *  the font.
// *@PANGO_COVERAGE_FALLBACK: The character is represented in a
// *  way that may be comprehensible but is not the correct
// *  graphical form. For instance, a Hangul character represented
// *  as a a sequence of Jamos, or a Latin transliteration of a
// *  Cyrillic word.
// *@PANGO_COVERAGE_APPROXIMATE: The character is represented as
// *  basically the correct graphical form, but with a stylistic
// *  variant inappropriate for the current script.
// *@PANGO_COVERAGE_EXACT: The character is represented as the
// *  correct graphical form.
// * *`PangoCoverageLevel` is used to indicate how well a font can
// *represent a particular Unicode character for a particular script.
// * *Since 1.44, only %PANGO_COVERAGE_NONE and %PANGO_COVERAGE_EXACT
// *will be returned.
//
pub enum PangoCoverageLevel {
	pango_coverage_none
	pango_coverage_fallback
	pango_coverage_approximate
	pango_coverage_exact
}

fn C.pango_coverage_get_type() GType

pub fn pango_coverage_get_type() GType {
	return C.pango_coverage_get_type()
}

fn C.pango_coverage_new() &PangoCoverage

pub fn pango_coverage_new() &PangoCoverage {
	return C.pango_coverage_new()
}

fn C.pango_coverage_ref(coverage &PangoCoverage) &PangoCoverage

pub fn pango_coverage_ref(coverage &PangoCoverage) &PangoCoverage {
	return C.pango_coverage_ref(coverage)
}

fn C.pango_coverage_unref(coverage &PangoCoverage)

pub fn pango_coverage_unref(coverage &PangoCoverage) {
	C.pango_coverage_unref(coverage)
}

fn C.pango_coverage_copy(coverage &PangoCoverage) &PangoCoverage

pub fn pango_coverage_copy(coverage &PangoCoverage) &PangoCoverage {
	return C.pango_coverage_copy(coverage)
}

fn C.pango_coverage_get(coverage &PangoCoverage, index_ int) PangoCoverageLevel

pub fn pango_coverage_get(coverage &PangoCoverage, index_ int) PangoCoverageLevel {
	return C.pango_coverage_get(coverage, index_)
}

fn C.pango_coverage_set(coverage &PangoCoverage, index_ int, level PangoCoverageLevel)

pub fn pango_coverage_set(coverage &PangoCoverage, index_ int, level PangoCoverageLevel) {
	C.pango_coverage_set(coverage, index_, level)
}

fn C.pango_coverage_max(coverage &PangoCoverage, other &PangoCoverage)

pub fn pango_coverage_max(coverage &PangoCoverage, other &PangoCoverage) {
	C.pango_coverage_max(coverage, other)
}

fn C.pango_coverage_to_bytes(coverage &PangoCoverage, bytes &&Guchar, n_bytes &int)

pub fn pango_coverage_to_bytes(coverage &PangoCoverage, bytes &&Guchar, n_bytes &int) {
	C.pango_coverage_to_bytes(coverage, bytes, n_bytes)
}

fn C.pango_coverage_from_bytes(bytes &Guchar, n_bytes int) &PangoCoverage

pub fn pango_coverage_from_bytes(bytes &Guchar, n_bytes int) &PangoCoverage {
	return C.pango_coverage_from_bytes(bytes, n_bytes)
}

pub type PangoCoverage_autoptr = &PangoCoverage
pub type PangoCoverage_listautoptr = &GList
pub type PangoCoverage_slistautoptr = &GSList
pub type PangoCoverage_queueautoptr = &GQueue

// __PANGO_COVERAGE_H__
// Pango
// *pango-types.h:
// * *Copyright (C) 1999 Red Hat Software
// * *This library is free software; you can redistribute it and/or
// *modify it under the terms of the GNU Library General Public
// *License as published by the Free Software Foundation; either
// *version 2 of the License, or (at your option) any later version.
// * *This library is distributed in the hope that it will be useful,
// *but WITHOUT ANY WARRANTY; without even the implied warranty of
// *MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the GNU
// *Library General Public License for more details.
// * *You should have received a copy of the GNU Library General Public
// *License along with this library; if not, write to the
// *Free Software Foundation, Inc., 59 Temple Place - Suite 330,
// *Boston, MA 02111-1307, USA.
//
// A index of a glyph into a font. Rendering system dependent
//* *PangoGlyph:
// * *A `PangoGlyph` represents a single glyph in the output form of a string.
//
pub type PangoGlyph = u32

//* *PANGO_SCALE:
// * *The scale between dimensions used for Pango distances and device units.
// * *The definition of device units is dependent on the output device; it will
// *typically be pixels for a screen, and points for a printer. %PANGO_SCALE is
// *currently 1024, but this may be changed in the future.
// * *When setting font sizes, device units are always considered to be
// *points (as in "12 point font"), rather than pixels.
//
//* *PANGO_PIXELS:
// *@d: a dimension in Pango units.
// * *Converts a dimension to device units by rounding.
// * *Return value: rounded dimension in device units.
//
//* *PANGO_PIXELS_FLOOR:
// *@d: a dimension in Pango units.
// * *Converts a dimension to device units by flooring.
// * *Return value: floored dimension in device units.
// *Since: 1.14
//
//* *PANGO_PIXELS_CEIL:
// *@d: a dimension in Pango units.
// * *Converts a dimension to device units by ceiling.
// * *Return value: ceiled dimension in device units.
// *Since: 1.14
//
// The above expressions are just slightly wrong for floating point d;
// *For example we'd expect PANGO_PIXELS(-512.5) => -1 but instead we get 0.
// *That's unlikely to matter for practical use and the expression is much
// *more compact and faster than alternatives that work exactly for both
// *integers and floating point.
// * *PANGO_PIXELS also behaves differently for +512 and -512.
//
//* *PANGO_UNITS_FLOOR:
// *@d: a dimension in Pango units.
// * *Rounds a dimension down to whole device units, but does not
// *convert it to device units.
// * *Return value: rounded down dimension in Pango units.
// *Since: 1.50
//
//* *PANGO_UNITS_CEIL:
// *@d: a dimension in Pango units.
// * *Rounds a dimension up to whole device units, but does not
// *convert it to device units.
// * *Return value: rounded up dimension in Pango units.
// *Since: 1.50
//
//* *PANGO_UNITS_ROUND:
// *@d: a dimension in Pango units.
// * *Rounds a dimension to whole device units, but does not
// *convert it to device units.
// * *Return value: rounded dimension in Pango units.
// *Since: 1.18
//
fn C.pango_units_from_double(d f64) int

pub fn pango_units_from_double(d f64) int {
	return C.pango_units_from_double(d)
}

fn C.pango_units_to_double(i int) f64

pub fn pango_units_to_double(i int) f64 {
	return C.pango_units_to_double(i)
}

//* *PangoRectangle:
// *@x: X coordinate of the left side of the rectangle.
// *@y: Y coordinate of the the top side of the rectangle.
// *@width: width of the rectangle.
// *@height: height of the rectangle.
// * *The `PangoRectangle` structure represents a rectangle.
// * *`PangoRectangle` is frequently used to represent the logical or ink
// *extents of a single glyph or section of text. (See, for instance,
// *[method@Pango.Font.get_glyph_extents].)
//
pub struct PangoRectangle_vdup0 {
	x      int
	y      int
	width  int
	height int
}

// Macros to translate from extents rectangles to ascent/descent/lbearing/rbearing
//
//* *PANGO_ASCENT:
// *@rect: a `PangoRectangle`
// * *Extracts the *scent*from a `PangoRectangle`
// *representing glyph extents.
// * *The ascent is the distance from the baseline to the
// *highest point of the character. This is positive if the
// *glyph ascends above the baseline.
//
//* *PANGO_DESCENT:
// *@rect: a `PangoRectangle`
// * *Extracts the *escent*from a `PangoRectangle`
// *representing glyph extents.
// * *The descent is the distance from the baseline to the
// *lowest point of the character. This is positive if the
// *glyph descends below the baseline.
//
//* *PANGO_LBEARING:
// *@rect: a `PangoRectangle`
// * *Extracts the *eft bearing*from a `PangoRectangle`
// *representing glyph extents.
// * *The left bearing is the distance from the horizontal
// *origin to the farthest left point of the character.
// *This is positive for characters drawn completely to
// *the right of the glyph origin.
//
//* *PANGO_RBEARING:
// *@rect: a `PangoRectangle`
// * *Extracts the *ight bearing*from a `PangoRectangle`
// *representing glyph extents.
// * *The right bearing is the distance from the horizontal
// *origin to the farthest right point of the character.
// *This is positive except for characters drawn completely
// *to the left of the horizontal origin.
//
fn C.pango_extents_to_pixels(inclusive &PangoRectangle, nearest &PangoRectangle)

pub fn pango_extents_to_pixels(inclusive &PangoRectangle, nearest &PangoRectangle) {
	C.pango_extents_to_pixels(inclusive, nearest)
}

// __PANGO_TYPES_H__
// Pango
// *pango-gravity.h: Gravity routines
// * *Copyright (C) 2006, 2007 Red Hat Software
// * *This library is free software; you can redistribute it and/or
// *modify it under the terms of the GNU Library General Public
// *License as published by the Free Software Foundation; either
// *version 2 of the License, or (at your option) any later version.
// * *This library is distributed in the hope that it will be useful,
// *but WITHOUT ANY WARRANTY; without even the implied warranty of
// *MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the GNU
// *Library General Public License for more details.
// * *You should have received a copy of the GNU Library General Public
// *License along with this library; if not, write to the
// *Free Software Foundation, Inc., 59 Temple Place - Suite 330,
// *Boston, MA 02111-1307, USA.
//
//* *PangoGravity:
// *@PANGO_GRAVITY_SOUTH: Glyphs stand upright (default) <img align="right" valign="center" src="m-south.png">
// *@PANGO_GRAVITY_EAST: Glyphs are rotated 90 degrees counter-clockwise. <img align="right" valign="center" src="m-east.png">
// *@PANGO_GRAVITY_NORTH: Glyphs are upside-down. <img align="right" valign="cener" src="m-north.png">
// *@PANGO_GRAVITY_WEST: Glyphs are rotated 90 degrees clockwise. <img align="right" valign="center" src="m-west.png">
// *@PANGO_GRAVITY_AUTO: Gravity is resolved from the context matrix
// * *`PangoGravity` represents the orientation of glyphs in a segment
// *of text.
// * *This is useful when rendering vertical text layouts. In those situations,
// *the layout is rotated using a non-identity [struct@Pango.Matrix], and then
// *glyph orientation is controlled using `PangoGravity`.
// * *Not every value in this enumeration makes sense for every usage of
// *`PangoGravity`; for example, %PANGO_GRAVITY_AUTO only can be passed to
// *[method@Pango.Context.set_base_gravity] and can only be returned by
// *[method@Pango.Context.get_base_gravity].
// * *See also: [enum@Pango.GravityHint]
// * *Since: 1.16
//
pub enum PangoGravity {
	pango_gravity_south
	pango_gravity_east
	pango_gravity_north
	pango_gravity_west
	pango_gravity_auto
}

//* *PangoGravityHint:
// *@PANGO_GRAVITY_HINT_NATURAL: scripts will take their natural gravity based
// *  on the base gravity and the script.  This is the default.
// *@PANGO_GRAVITY_HINT_STRONG: always use the base gravity set, regardless of
// *  the script.
// *@PANGO_GRAVITY_HINT_LINE: for scripts not in their natural direction (eg.
// *  Latin in East gravity), choose per-script gravity such that every script
// *  respects the line progression. This means, Latin and Arabic will take
// *  opposite gravities and both flow top-to-bottom for example.
// * *`PangoGravityHint` defines how horizontal scripts should behave in a
// *vertical context.
// * *That is, English excerpts in a vertical paragraph for example.
// * *See also [enum@Pango.Gravity]
// * *Since: 1.16
//
pub enum PangoGravityHint {
	pango_gravity_hint_natural
	pango_gravity_hint_strong
	pango_gravity_hint_line
}

//* *PANGO_GRAVITY_IS_VERTICAL:
// *@gravity: the `PangoGravity` to check
// * *Whether a `PangoGravity` represents vertical writing directions.
// * *Returns: %TRUE if @gravity is %PANGO_GRAVITY_EAST or %PANGO_GRAVITY_WEST,
// *  %FALSE otherwise.
// * *Since: 1.16
//
//* *PANGO_GRAVITY_IS_IMPROPER:
// *@gravity: the `PangoGravity` to check
// * *Whether a `PangoGravity` represents a gravity that results in reversal
// *of text direction.
// * *Returns: %TRUE if @gravity is %PANGO_GRAVITY_WEST or %PANGO_GRAVITY_NORTH,
// *  %FALSE otherwise.
// * *Since: 1.32
//
// __PANGO_GRAVITY_H__
// Pango
// *pango-matrix.h: Matrix manipulation routines
// * *Copyright (C) 2002, 2006 Red Hat Software
// * *This library is free software; you can redistribute it and/or
// *modify it under the terms of the GNU Library General Public
// *License as published by the Free Software Foundation; either
// *version 2 of the License, or (at your option) any later version.
// * *This library is distributed in the hope that it will be useful,
// *but WITHOUT ANY WARRANTY; without even the implied warranty of
// *MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the GNU
// *Library General Public License for more details.
// * *You should have received a copy of the GNU Library General Public
// *License along with this library; if not, write to the
// *Free Software Foundation, Inc., 59 Temple Place - Suite 330,
// *Boston, MA 02111-1307, USA.
//
//* *PangoMatrix:
// *@xx: 1st component of the transformation matrix
// *@xy: 2nd component of the transformation matrix
// *@yx: 3rd component of the transformation matrix
// *@yy: 4th component of the transformation matrix
// *@x0: x translation
// *@y0: y translation
// * *A `PangoMatrix` specifies a transformation between user-space
// *and device coordinates.
// * *The transformation is given by
// * *```
// *x_device = x_user *matrix->xx + y_user *matrix->xy + matrix->x0;
// *y_device = x_user *matrix->yx + y_user *matrix->yy + matrix->y0;
// *```
// * *Since: 1.6
//
pub struct PangoMatrix_vdup1 {
	xx f64
	xy f64
	yx f64
	yy f64
	x0 f64
	y0 f64
}

//* *PANGO_MATRIX_INIT:
// * *Constant that can be used to initialize a `PangoMatrix` to
// *the identity transform.
// * *```
// *PangoMatrix matrix = PANGO_MATRIX_INIT;
// *pango_matrix_rotate (&matrix, 45.);
// *```
// * *Since: 1.6
// */
//#define PANGO_MATRIX_INIT { 1., 0., 0., 1., 0., 0. }
//
///*for PangoRectangle
fn C.pango_matrix_get_type() GType

pub fn pango_matrix_get_type() GType {
	return C.pango_matrix_get_type()
}

fn C.pango_matrix_copy(matrix &PangoMatrix) &PangoMatrix

pub fn pango_matrix_copy(matrix &PangoMatrix) &PangoMatrix {
	return C.pango_matrix_copy(matrix)
}

fn C.pango_matrix_free(matrix &PangoMatrix)

pub fn pango_matrix_free(matrix &PangoMatrix) {
	C.pango_matrix_free(matrix)
}

fn C.pango_matrix_translate(matrix &PangoMatrix, tx f64, ty f64)

pub fn pango_matrix_translate(matrix &PangoMatrix, tx f64, ty f64) {
	C.pango_matrix_translate(matrix, tx, ty)
}

fn C.pango_matrix_scale(matrix &PangoMatrix, scale_x f64, scale_y f64)

pub fn pango_matrix_scale(matrix &PangoMatrix, scale_x f64, scale_y f64) {
	C.pango_matrix_scale(matrix, scale_x, scale_y)
}

fn C.pango_matrix_rotate(matrix &PangoMatrix, degrees f64)

pub fn pango_matrix_rotate(matrix &PangoMatrix, degrees f64) {
	C.pango_matrix_rotate(matrix, degrees)
}

fn C.pango_matrix_concat(matrix &PangoMatrix, new_matrix &PangoMatrix)

pub fn pango_matrix_concat(matrix &PangoMatrix, new_matrix &PangoMatrix) {
	C.pango_matrix_concat(matrix, new_matrix)
}

fn C.pango_matrix_transform_point(matrix &PangoMatrix, x &f64, y &f64)

pub fn pango_matrix_transform_point(matrix &PangoMatrix, x &f64, y &f64) {
	C.pango_matrix_transform_point(matrix, x, y)
}

fn C.pango_matrix_transform_distance(matrix &PangoMatrix, dx &f64, dy &f64)

pub fn pango_matrix_transform_distance(matrix &PangoMatrix, dx &f64, dy &f64) {
	C.pango_matrix_transform_distance(matrix, dx, dy)
}

fn C.pango_matrix_transform_rectangle(matrix &PangoMatrix, rect &PangoRectangle)

pub fn pango_matrix_transform_rectangle(matrix &PangoMatrix, rect &PangoRectangle) {
	C.pango_matrix_transform_rectangle(matrix, rect)
}

fn C.pango_matrix_transform_pixel_rectangle(matrix &PangoMatrix, rect &PangoRectangle)

pub fn pango_matrix_transform_pixel_rectangle(matrix &PangoMatrix, rect &PangoRectangle) {
	C.pango_matrix_transform_pixel_rectangle(matrix, rect)
}

fn C.pango_matrix_get_font_scale_factor(matrix &PangoMatrix) f64

pub fn pango_matrix_get_font_scale_factor(matrix &PangoMatrix) f64 {
	return C.pango_matrix_get_font_scale_factor(matrix)
}

fn C.pango_matrix_get_font_scale_factors(matrix &PangoMatrix, xscale &f64, yscale &f64)

pub fn pango_matrix_get_font_scale_factors(matrix &PangoMatrix, xscale &f64, yscale &f64) {
	C.pango_matrix_get_font_scale_factors(matrix, xscale, yscale)
}

fn C.pango_matrix_get_slant_ratio(matrix &PangoMatrix) f64

pub fn pango_matrix_get_slant_ratio(matrix &PangoMatrix) f64 {
	return C.pango_matrix_get_slant_ratio(matrix)
}

// __PANGO_MATRIX_H__
// Pango
// *pango-script.h: Script tag handling
// * *Copyright (C) 2002 Red Hat Software
// * *This library is free software; you can redistribute it and/or
// *modify it under the terms of the GNU Library General Public
// *License as published by the Free Software Foundation; either
// *version 2 of the License, or (at your option) any later version.
// * *This library is distributed in the hope that it will be useful,
// *but WITHOUT ANY WARRANTY; without even the implied warranty of
// *MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the GNU
// *Library General Public License for more details.
// * *You should have received a copy of the GNU Library General Public
// *License along with this library; if not, write to the
// *Free Software Foundation, Inc., 59 Temple Place - Suite 330,
// *Boston, MA 02111-1307, USA.
//
//* *PangoScriptIter:
// * *A `PangoScriptIter` is used to iterate through a string
// *and identify ranges in different scripts.
// */
// typedef struct _PangoScriptIter PangoScriptIter;
//
///*
// *PangoScript:
// *@PANGO_SCRIPT_INVALID_CODE: a value never returned from pango_script_for_unichar()
// *@PANGO_SCRIPT_COMMON: a character used by multiple different scripts
// *@PANGO_SCRIPT_INHERITED: a mark glyph that takes its script from the
// *base glyph to which it is attached
// *@PANGO_SCRIPT_ARABIC:        Arabic
// *@PANGO_SCRIPT_ARMENIAN: Armenian
// *@PANGO_SCRIPT_BENGALI:       Bengali
// *@PANGO_SCRIPT_BOPOMOFO: Bopomofo
// *@PANGO_SCRIPT_CHEROKEE:      Cherokee
// *@PANGO_SCRIPT_COPTIC:        Coptic
// *@PANGO_SCRIPT_CYRILLIC:      Cyrillic
// *@PANGO_SCRIPT_DESERET:       Deseret
// *@PANGO_SCRIPT_DEVANAGARI:    Devanagari
// *@PANGO_SCRIPT_ETHIOPIC:      Ethiopic
// *@PANGO_SCRIPT_GEORGIAN:      Georgian
// *@PANGO_SCRIPT_GOTHIC:        Gothic
// *@PANGO_SCRIPT_GREEK:         Greek
// *@PANGO_SCRIPT_GUJARATI:      Gujarati
// *@PANGO_SCRIPT_GURMUKHI:      Gurmukhi
// *@PANGO_SCRIPT_HAN:   Han
// *@PANGO_SCRIPT_HANGUL:        Hangul
// *@PANGO_SCRIPT_HEBREW:        Hebrew
// *@PANGO_SCRIPT_HIRAGANA:      Hiragana
// *@PANGO_SCRIPT_KANNADA:       Kannada
// *@PANGO_SCRIPT_KATAKANA:      Katakana
// *@PANGO_SCRIPT_KHMER:         Khmer
// *@PANGO_SCRIPT_LAO:   Lao
// *@PANGO_SCRIPT_LATIN:         Latin
// *@PANGO_SCRIPT_MALAYALAM:     Malayalam
// *@PANGO_SCRIPT_MONGOLIAN:     Mongolian
// *@PANGO_SCRIPT_MYANMAR:       Myanmar
// *@PANGO_SCRIPT_OGHAM:         Ogham
// *@PANGO_SCRIPT_OLD_ITALIC:    Old Italic
// *@PANGO_SCRIPT_ORIYA:         Oriya
// *@PANGO_SCRIPT_RUNIC:         Runic
// *@PANGO_SCRIPT_SINHALA:       Sinhala
// *@PANGO_SCRIPT_SYRIAC:        Syriac
// *@PANGO_SCRIPT_TAMIL:         Tamil
// *@PANGO_SCRIPT_TELUGU:        Telugu
// *@PANGO_SCRIPT_THAANA:        Thaana
// *@PANGO_SCRIPT_THAI:  Thai
// *@PANGO_SCRIPT_TIBETAN:       Tibetan
// *@PANGO_SCRIPT_CANADIAN_ABORIGINAL:   Canadian Aboriginal
// *@PANGO_SCRIPT_YI:    Yi
// *@PANGO_SCRIPT_TAGALOG:       Tagalog
// *@PANGO_SCRIPT_HANUNOO:       Hanunoo
// *@PANGO_SCRIPT_BUHID:         Buhid
// *@PANGO_SCRIPT_TAGBANWA:      Tagbanwa
// *@PANGO_SCRIPT_BRAILLE:       Braille
// *@PANGO_SCRIPT_CYPRIOT:       Cypriot
// *@PANGO_SCRIPT_LIMBU:         Limbu
// *@PANGO_SCRIPT_OSMANYA:       Osmanya
// *@PANGO_SCRIPT_SHAVIAN:       Shavian
// *@PANGO_SCRIPT_LINEAR_B:      Linear B
// *@PANGO_SCRIPT_TAI_LE:        Tai Le
// *@PANGO_SCRIPT_UGARITIC:      Ugaritic
// *@PANGO_SCRIPT_NEW_TAI_LUE:   New Tai Lue. Since 1.10
// *@PANGO_SCRIPT_BUGINESE:      Buginese. Since 1.10
// *@PANGO_SCRIPT_GLAGOLITIC:    Glagolitic. Since 1.10
// *@PANGO_SCRIPT_TIFINAGH:      Tifinagh. Since 1.10
// *@PANGO_SCRIPT_SYLOTI_NAGRI:  Syloti Nagri. Since 1.10
// *@PANGO_SCRIPT_OLD_PERSIAN:   Old Persian. Since 1.10
// *@PANGO_SCRIPT_KHAROSHTHI:    Kharoshthi. Since 1.10
// *@PANGO_SCRIPT_UNKNOWN:               an unassigned code point. Since 1.14
// *@PANGO_SCRIPT_BALINESE:              Balinese. Since 1.14
// *@PANGO_SCRIPT_CUNEIFORM:     Cuneiform. Since 1.14
// *@PANGO_SCRIPT_PHOENICIAN:    Phoenician. Since 1.14
// *@PANGO_SCRIPT_PHAGS_PA:              Phags-pa. Since 1.14
// *@PANGO_SCRIPT_NKO:           N'Ko. Since 1.14
// *@PANGO_SCRIPT_KAYAH_LI:   Kayah Li. Since 1.20.1
// *@PANGO_SCRIPT_LEPCHA:     Lepcha. Since 1.20.1
// *@PANGO_SCRIPT_REJANG:     Rejang. Since 1.20.1
// *@PANGO_SCRIPT_SUNDANESE:  Sundanese. Since 1.20.1
// *@PANGO_SCRIPT_SAURASHTRA: Saurashtra. Since 1.20.1
// *@PANGO_SCRIPT_CHAM:       Cham. Since 1.20.1
// *@PANGO_SCRIPT_OL_CHIKI:   Ol Chiki. Since 1.20.1
// *@PANGO_SCRIPT_VAI:        Vai. Since 1.20.1
// *@PANGO_SCRIPT_CARIAN:     Carian. Since 1.20.1
// *@PANGO_SCRIPT_LYCIAN:     Lycian. Since 1.20.1
// *@PANGO_SCRIPT_LYDIAN:     Lydian. Since 1.20.1
// *@PANGO_SCRIPT_BATAK:      Batak. Since 1.32
// *@PANGO_SCRIPT_BRAHMI:     Brahmi. Since 1.32
// *@PANGO_SCRIPT_MANDAIC:    Mandaic. Since 1.32
// *@PANGO_SCRIPT_CHAKMA:               Chakma. Since: 1.32
// *@PANGO_SCRIPT_MEROITIC_CURSIVE:     Meroitic Cursive. Since: 1.32
// *@PANGO_SCRIPT_MEROITIC_HIEROGLYPHS: Meroitic Hieroglyphs. Since: 1.32
// *@PANGO_SCRIPT_MIAO:                 Miao. Since: 1.32
// *@PANGO_SCRIPT_SHARADA:              Sharada. Since: 1.32
// *@PANGO_SCRIPT_SORA_SOMPENG:         Sora Sompeng. Since: 1.32
// *@PANGO_SCRIPT_TAKRI:                Takri. Since: 1.32
// *@PANGO_SCRIPT_BASSA_VAH:            Bassa. Since: 1.40
// *@PANGO_SCRIPT_CAUCASIAN_ALBANIAN:   Caucasian Albanian. Since: 1.40
// *@PANGO_SCRIPT_DUPLOYAN:             Duployan. Since: 1.40
// *@PANGO_SCRIPT_ELBASAN:              Elbasan. Since: 1.40
// *@PANGO_SCRIPT_GRANTHA:              Grantha. Since: 1.40
// *@PANGO_SCRIPT_KHOJKI:               Kjohki. Since: 1.40
// *@PANGO_SCRIPT_KHUDAWADI:            Khudawadi, Sindhi. Since: 1.40
// *@PANGO_SCRIPT_LINEAR_A:             Linear A. Since: 1.40
// *@PANGO_SCRIPT_MAHAJANI:             Mahajani. Since: 1.40
// *@PANGO_SCRIPT_MANICHAEAN:           Manichaean. Since: 1.40
// *@PANGO_SCRIPT_MENDE_KIKAKUI:        Mende Kikakui. Since: 1.40
// *@PANGO_SCRIPT_MODI:                 Modi. Since: 1.40
// *@PANGO_SCRIPT_MRO:                  Mro. Since: 1.40
// *@PANGO_SCRIPT_NABATAEAN:            Nabataean. Since: 1.40
// *@PANGO_SCRIPT_OLD_NORTH_ARABIAN:    Old North Arabian. Since: 1.40
// *@PANGO_SCRIPT_OLD_PERMIC:           Old Permic. Since: 1.40
// *@PANGO_SCRIPT_PAHAWH_HMONG:         Pahawh Hmong. Since: 1.40
// *@PANGO_SCRIPT_PALMYRENE:            Palmyrene. Since: 1.40
// *@PANGO_SCRIPT_PAU_CIN_HAU:          Pau Cin Hau. Since: 1.40
// *@PANGO_SCRIPT_PSALTER_PAHLAVI:      Psalter Pahlavi. Since: 1.40
// *@PANGO_SCRIPT_SIDDHAM:              Siddham. Since: 1.40
// *@PANGO_SCRIPT_TIRHUTA:              Tirhuta. Since: 1.40
// *@PANGO_SCRIPT_WARANG_CITI:          Warang Citi. Since: 1.40
// *@PANGO_SCRIPT_AHOM:                 Ahom. Since: 1.40
// *@PANGO_SCRIPT_ANATOLIAN_HIEROGLYPHS: Anatolian Hieroglyphs. Since: 1.40
// *@PANGO_SCRIPT_HATRAN:               Hatran. Since: 1.40
// *@PANGO_SCRIPT_MULTANI:              Multani. Since: 1.40
// *@PANGO_SCRIPT_OLD_HUNGARIAN:        Old Hungarian. Since: 1.40
// *@PANGO_SCRIPT_SIGNWRITING:          Signwriting. Since: 1.40
// * *The `PangoScript` enumeration identifies different writing
// *systems.
// * *The values correspond to the names as defined in the Unicode standard. See
// *[Unicode Standard Annex 24: Script names](http://www.unicode.org/reports/tr24/)
// * *Note that this enumeration is deprecated and will not be updated to include values
// *in newer versions of the Unicode standard. Applications should use the
// *[enum@GLib.UnicodeScript] enumeration instead,
// *whose values are interchangeable with `PangoScript`.
//
pub enum PangoScript {
	// ISO 15924 code
	pango_script_invalid_code = -1
	pango_script_common       = 0
	// Zyyy
	pango_script_inherited
	// Qaai
	pango_script_arabic
	// Arab
	pango_script_armenian
	// Armn
	pango_script_bengali
	// Beng
	pango_script_bopomofo
	// Bopo
	pango_script_cherokee
	// Cher
	pango_script_coptic
	// Qaac
	pango_script_cyrillic
	// Cyrl (Cyrs)
	pango_script_deseret
	// Dsrt
	pango_script_devanagari
	// Deva
	pango_script_ethiopic
	// Ethi
	pango_script_georgian
	// Geor (Geon, Geoa)
	pango_script_gothic
	// Goth
	pango_script_greek
	// Grek
	pango_script_gujarati
	// Gujr
	pango_script_gurmukhi
	// Guru
	pango_script_han
	// Hani
	pango_script_hangul
	// Hang
	pango_script_hebrew
	// Hebr
	pango_script_hiragana
	// Hira
	pango_script_kannada
	// Knda
	pango_script_katakana
	// Kana
	pango_script_khmer
	// Khmr
	pango_script_lao
	// Laoo
	pango_script_latin
	// Latn (Latf, Latg)
	pango_script_malayalam
	// Mlym
	pango_script_mongolian
	// Mong
	pango_script_myanmar
	// Mymr
	pango_script_ogham
	// Ogam
	pango_script_old_italic
	// Ital
	pango_script_oriya
	// Orya
	pango_script_runic
	// Runr
	pango_script_sinhala
	// Sinh
	pango_script_syriac
	// Syrc (Syrj, Syrn, Syre)
	pango_script_tamil
	// Taml
	pango_script_telugu
	// Telu
	pango_script_thaana
	// Thaa
	pango_script_thai
	// Thai
	pango_script_tibetan
	// Tibt
	pango_script_canadian_aboriginal
	// Cans
	pango_script_yi
	// Yiii
	pango_script_tagalog
	// Tglg
	pango_script_hanunoo
	// Hano
	pango_script_buhid
	// Buhd
	pango_script_tagbanwa
	// Tagb
	// Unicode-4.0 additions
	pango_script_braille
	// Brai
	pango_script_cypriot
	// Cprt
	pango_script_limbu
	// Limb
	pango_script_osmanya
	// Osma
	pango_script_shavian
	// Shaw
	pango_script_linear_b
	// Linb
	pango_script_tai_le
	// Tale
	pango_script_ugaritic
	// Ugar
	// Unicode-4.1 additions
	pango_script_new_tai_lue
	// Talu
	pango_script_buginese
	// Bugi
	pango_script_glagolitic
	// Glag
	pango_script_tifinagh
	// Tfng
	pango_script_syloti_nagri
	// Sylo
	pango_script_old_persian
	// Xpeo
	pango_script_kharoshthi
	// Khar
	// Unicode-5.0 additions
	pango_script_unknown
	// Zzzz
	pango_script_balinese
	// Bali
	pango_script_cuneiform
	// Xsux
	pango_script_phoenician
	// Phnx
	pango_script_phags_pa
	// Phag
	pango_script_nko
	// Nkoo
	// Unicode-5.1 additions
	pango_script_kayah_li
	// Kali
	pango_script_lepcha
	// Lepc
	pango_script_rejang
	// Rjng
	pango_script_sundanese
	// Sund
	pango_script_saurashtra
	// Saur
	pango_script_cham
	// Cham
	pango_script_ol_chiki
	// Olck
	pango_script_vai
	// Vaii
	pango_script_carian
	// Cari
	pango_script_lycian
	// Lyci
	pango_script_lydian
	// Lydi
	// Unicode-6.0 additions
	pango_script_batak
	// Batk
	pango_script_brahmi
	// Brah
	pango_script_mandaic
	// Mand
	// Unicode-6.1 additions
	pango_script_chakma
	// Cakm
	pango_script_meroitic_cursive
	// Merc
	pango_script_meroitic_hieroglyphs
	// Mero
	pango_script_miao
	// Plrd
	pango_script_sharada
	// Shrd
	pango_script_sora_sompeng
	// Sora
	pango_script_takri
	// Takr
	// Unicode 7.0 additions
	pango_script_bassa_vah
	// Bass
	pango_script_caucasian_albanian
	// Aghb
	pango_script_duployan
	// Dupl
	pango_script_elbasan
	// Elba
	pango_script_grantha
	// Gran
	pango_script_khojki
	// Khoj
	pango_script_khudawadi
	// Sind
	pango_script_linear_a
	// Lina
	pango_script_mahajani
	// Mahj
	pango_script_manichaean
	// Manu
	pango_script_mende_kikakui
	// Mend
	pango_script_modi
	// Modi
	pango_script_mro
	// Mroo
	pango_script_nabataean
	// Nbat
	pango_script_old_north_arabian
	// Narb
	pango_script_old_permic
	// Perm
	pango_script_pahawh_hmong
	// Hmng
	pango_script_palmyrene
	// Palm
	pango_script_pau_cin_hau
	// Pauc
	pango_script_psalter_pahlavi
	// Phlp
	pango_script_siddham
	// Sidd
	pango_script_tirhuta
	// Tirh
	pango_script_warang_citi
	// Wara
	// Unicode 8.0 additions
	pango_script_ahom
	// Ahom
	pango_script_anatolian_hieroglyphs
	// Hluw
	pango_script_hatran
	// Hatr
	pango_script_multani
	// Mult
	pango_script_old_hungarian
	// Hung
	pango_script_signwriting
	// Sgnw
}

fn C.pango_script_for_unichar(ch Gunichar) PangoScript

pub fn pango_script_for_unichar(ch Gunichar) PangoScript {
	return C.pango_script_for_unichar(ch)
}

fn C.pango_script_iter_get_type() GType

pub fn pango_script_iter_get_type() GType {
	return C.pango_script_iter_get_type()
}

fn C.pango_script_iter_new(text &i8, length int) &PangoScriptIter

pub fn pango_script_iter_new(text &i8, length int) &PangoScriptIter {
	return C.pango_script_iter_new(text, length)
}

fn C.pango_script_iter_get_range(iter &PangoScriptIter, start &&u8, end &&u8, script &PangoScript)

pub fn pango_script_iter_get_range(iter &PangoScriptIter, start &&u8, end &&u8, script &PangoScript) {
	C.pango_script_iter_get_range(iter, start, end, script)
}

fn C.pango_script_iter_next(iter &PangoScriptIter) Gboolean

pub fn pango_script_iter_next(iter &PangoScriptIter) Gboolean {
	return C.pango_script_iter_next(iter)
}

fn C.pango_script_iter_free(iter &PangoScriptIter)

pub fn pango_script_iter_free(iter &PangoScriptIter) {
	C.pango_script_iter_free(iter)
}

// __PANGO_SCRIPT_H__
// Pango
// *pango-language.h: Language handling routines
// * *Copyright (C) 1999 Red Hat Software
// * *This library is free software; you can redistribute it and/or
// *modify it under the terms of the GNU Library General Public
// *License as published by the Free Software Foundation; either
// *version 2 of the License, or (at your option) any later version.
// * *This library is distributed in the hope that it will be useful,
// *but WITHOUT ANY WARRANTY; without even the implied warranty of
// *MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
// *Library General Public License for more details.
// * *You should have received a copy of the GNU Library General Public
// *License along with this library; if not, write to the
// *Free Software Foundation, Inc., 59 Temple Place - Suite 330,
// *Boston, MA 02111-1307, USA.
//
fn C.pango_language_get_type() GType

pub fn pango_language_get_type() GType {
	return C.pango_language_get_type()
}

fn C.pango_language_get_default() &PangoLanguage

pub fn pango_language_get_default() &PangoLanguage {
	return C.pango_language_get_default()
}

fn C.pango_language_get_preferred() &&PangoLanguage

pub fn pango_language_get_preferred() &&PangoLanguage {
	return C.pango_language_get_preferred()
}

fn C.pango_language_from_string(language &i8) &PangoLanguage

pub fn pango_language_from_string(language &i8) &PangoLanguage {
	return C.pango_language_from_string(language)
}

fn C.pango_language_to_string(language &PangoLanguage) &i8

pub fn pango_language_to_string(language &PangoLanguage) &i8 {
	return C.pango_language_to_string(language)
}

// For back compat.  Will have to keep indefinitely.
fn C.pango_language_get_sample_string(language &PangoLanguage) &i8

pub fn pango_language_get_sample_string(language &PangoLanguage) &i8 {
	return C.pango_language_get_sample_string(language)
}

fn C.pango_language_matches(language &PangoLanguage, range_list &i8) Gboolean

pub fn pango_language_matches(language &PangoLanguage, range_list &i8) Gboolean {
	return C.pango_language_matches(language, range_list)
}

fn C.pango_language_includes_script(language &PangoLanguage, script PangoScript) Gboolean

pub fn pango_language_includes_script(language &PangoLanguage, script PangoScript) Gboolean {
	return C.pango_language_includes_script(language, script)
}

fn C.pango_language_get_scripts(language &PangoLanguage, num_scripts &int) &PangoScript

pub fn pango_language_get_scripts(language &PangoLanguage, num_scripts &int) &PangoScript {
	return C.pango_language_get_scripts(language, num_scripts)
}

// __PANGO_LANGUAGE_H__
// Pango
// *pango-script.h: Script tag handling
// * *Copyright (C) 2002 Red Hat Software
// * *This library is free software; you can redistribute it and/or
// *modify it under the terms of the GNU Library General Public
// *License as published by the Free Software Foundation; either
// *version 2 of the License, or (at your option) any later version.
// * *This library is distributed in the hope that it will be useful,
// *but WITHOUT ANY WARRANTY; without even the implied warranty of
// *MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the GNU
// *Library General Public License for more details.
// * *You should have received a copy of the GNU Library General Public
// *License along with this library; if not, write to the
// *Free Software Foundation, Inc., 59 Temple Place - Suite 330,
// *Boston, MA 02111-1307, USA.
//
//* *PangoScriptIter:
// * *A `PangoScriptIter` is used to iterate through a string
// *and identify ranges in different scripts.
// */
// typedef struct _PangoScriptIter PangoScriptIter;
//
///*
// *PangoScript:
// *@PANGO_SCRIPT_INVALID_CODE: a value never returned from pango_script_for_unichar()
// *@PANGO_SCRIPT_COMMON: a character used by multiple different scripts
// *@PANGO_SCRIPT_INHERITED: a mark glyph that takes its script from the
// *base glyph to which it is attached
// *@PANGO_SCRIPT_ARABIC:        Arabic
// *@PANGO_SCRIPT_ARMENIAN: Armenian
// *@PANGO_SCRIPT_BENGALI:       Bengali
// *@PANGO_SCRIPT_BOPOMOFO: Bopomofo
// *@PANGO_SCRIPT_CHEROKEE:      Cherokee
// *@PANGO_SCRIPT_COPTIC:        Coptic
// *@PANGO_SCRIPT_CYRILLIC:      Cyrillic
// *@PANGO_SCRIPT_DESERET:       Deseret
// *@PANGO_SCRIPT_DEVANAGARI:    Devanagari
// *@PANGO_SCRIPT_ETHIOPIC:      Ethiopic
// *@PANGO_SCRIPT_GEORGIAN:      Georgian
// *@PANGO_SCRIPT_GOTHIC:        Gothic
// *@PANGO_SCRIPT_GREEK:         Greek
// *@PANGO_SCRIPT_GUJARATI:      Gujarati
// *@PANGO_SCRIPT_GURMUKHI:      Gurmukhi
// *@PANGO_SCRIPT_HAN:   Han
// *@PANGO_SCRIPT_HANGUL:        Hangul
// *@PANGO_SCRIPT_HEBREW:        Hebrew
// *@PANGO_SCRIPT_HIRAGANA:      Hiragana
// *@PANGO_SCRIPT_KANNADA:       Kannada
// *@PANGO_SCRIPT_KATAKANA:      Katakana
// *@PANGO_SCRIPT_KHMER:         Khmer
// *@PANGO_SCRIPT_LAO:   Lao
// *@PANGO_SCRIPT_LATIN:         Latin
// *@PANGO_SCRIPT_MALAYALAM:     Malayalam
// *@PANGO_SCRIPT_MONGOLIAN:     Mongolian
// *@PANGO_SCRIPT_MYANMAR:       Myanmar
// *@PANGO_SCRIPT_OGHAM:         Ogham
// *@PANGO_SCRIPT_OLD_ITALIC:    Old Italic
// *@PANGO_SCRIPT_ORIYA:         Oriya
// *@PANGO_SCRIPT_RUNIC:         Runic
// *@PANGO_SCRIPT_SINHALA:       Sinhala
// *@PANGO_SCRIPT_SYRIAC:        Syriac
// *@PANGO_SCRIPT_TAMIL:         Tamil
// *@PANGO_SCRIPT_TELUGU:        Telugu
// *@PANGO_SCRIPT_THAANA:        Thaana
// *@PANGO_SCRIPT_THAI:  Thai
// *@PANGO_SCRIPT_TIBETAN:       Tibetan
// *@PANGO_SCRIPT_CANADIAN_ABORIGINAL:   Canadian Aboriginal
// *@PANGO_SCRIPT_YI:    Yi
// *@PANGO_SCRIPT_TAGALOG:       Tagalog
// *@PANGO_SCRIPT_HANUNOO:       Hanunoo
// *@PANGO_SCRIPT_BUHID:         Buhid
// *@PANGO_SCRIPT_TAGBANWA:      Tagbanwa
// *@PANGO_SCRIPT_BRAILLE:       Braille
// *@PANGO_SCRIPT_CYPRIOT:       Cypriot
// *@PANGO_SCRIPT_LIMBU:         Limbu
// *@PANGO_SCRIPT_OSMANYA:       Osmanya
// *@PANGO_SCRIPT_SHAVIAN:       Shavian
// *@PANGO_SCRIPT_LINEAR_B:      Linear B
// *@PANGO_SCRIPT_TAI_LE:        Tai Le
// *@PANGO_SCRIPT_UGARITIC:      Ugaritic
// *@PANGO_SCRIPT_NEW_TAI_LUE:   New Tai Lue. Since 1.10
// *@PANGO_SCRIPT_BUGINESE:      Buginese. Since 1.10
// *@PANGO_SCRIPT_GLAGOLITIC:    Glagolitic. Since 1.10
// *@PANGO_SCRIPT_TIFINAGH:      Tifinagh. Since 1.10
// *@PANGO_SCRIPT_SYLOTI_NAGRI:  Syloti Nagri. Since 1.10
// *@PANGO_SCRIPT_OLD_PERSIAN:   Old Persian. Since 1.10
// *@PANGO_SCRIPT_KHAROSHTHI:    Kharoshthi. Since 1.10
// *@PANGO_SCRIPT_UNKNOWN:               an unassigned code point. Since 1.14
// *@PANGO_SCRIPT_BALINESE:              Balinese. Since 1.14
// *@PANGO_SCRIPT_CUNEIFORM:     Cuneiform. Since 1.14
// *@PANGO_SCRIPT_PHOENICIAN:    Phoenician. Since 1.14
// *@PANGO_SCRIPT_PHAGS_PA:              Phags-pa. Since 1.14
// *@PANGO_SCRIPT_NKO:           N'Ko. Since 1.14
// *@PANGO_SCRIPT_KAYAH_LI:   Kayah Li. Since 1.20.1
// *@PANGO_SCRIPT_LEPCHA:     Lepcha. Since 1.20.1
// *@PANGO_SCRIPT_REJANG:     Rejang. Since 1.20.1
// *@PANGO_SCRIPT_SUNDANESE:  Sundanese. Since 1.20.1
// *@PANGO_SCRIPT_SAURASHTRA: Saurashtra. Since 1.20.1
// *@PANGO_SCRIPT_CHAM:       Cham. Since 1.20.1
// *@PANGO_SCRIPT_OL_CHIKI:   Ol Chiki. Since 1.20.1
// *@PANGO_SCRIPT_VAI:        Vai. Since 1.20.1
// *@PANGO_SCRIPT_CARIAN:     Carian. Since 1.20.1
// *@PANGO_SCRIPT_LYCIAN:     Lycian. Since 1.20.1
// *@PANGO_SCRIPT_LYDIAN:     Lydian. Since 1.20.1
// *@PANGO_SCRIPT_BATAK:      Batak. Since 1.32
// *@PANGO_SCRIPT_BRAHMI:     Brahmi. Since 1.32
// *@PANGO_SCRIPT_MANDAIC:    Mandaic. Since 1.32
// *@PANGO_SCRIPT_CHAKMA:               Chakma. Since: 1.32
// *@PANGO_SCRIPT_MEROITIC_CURSIVE:     Meroitic Cursive. Since: 1.32
// *@PANGO_SCRIPT_MEROITIC_HIEROGLYPHS: Meroitic Hieroglyphs. Since: 1.32
// *@PANGO_SCRIPT_MIAO:                 Miao. Since: 1.32
// *@PANGO_SCRIPT_SHARADA:              Sharada. Since: 1.32
// *@PANGO_SCRIPT_SORA_SOMPENG:         Sora Sompeng. Since: 1.32
// *@PANGO_SCRIPT_TAKRI:                Takri. Since: 1.32
// *@PANGO_SCRIPT_BASSA_VAH:            Bassa. Since: 1.40
// *@PANGO_SCRIPT_CAUCASIAN_ALBANIAN:   Caucasian Albanian. Since: 1.40
// *@PANGO_SCRIPT_DUPLOYAN:             Duployan. Since: 1.40
// *@PANGO_SCRIPT_ELBASAN:              Elbasan. Since: 1.40
// *@PANGO_SCRIPT_GRANTHA:              Grantha. Since: 1.40
// *@PANGO_SCRIPT_KHOJKI:               Kjohki. Since: 1.40
// *@PANGO_SCRIPT_KHUDAWADI:            Khudawadi, Sindhi. Since: 1.40
// *@PANGO_SCRIPT_LINEAR_A:             Linear A. Since: 1.40
// *@PANGO_SCRIPT_MAHAJANI:             Mahajani. Since: 1.40
// *@PANGO_SCRIPT_MANICHAEAN:           Manichaean. Since: 1.40
// *@PANGO_SCRIPT_MENDE_KIKAKUI:        Mende Kikakui. Since: 1.40
// *@PANGO_SCRIPT_MODI:                 Modi. Since: 1.40
// *@PANGO_SCRIPT_MRO:                  Mro. Since: 1.40
// *@PANGO_SCRIPT_NABATAEAN:            Nabataean. Since: 1.40
// *@PANGO_SCRIPT_OLD_NORTH_ARABIAN:    Old North Arabian. Since: 1.40
// *@PANGO_SCRIPT_OLD_PERMIC:           Old Permic. Since: 1.40
// *@PANGO_SCRIPT_PAHAWH_HMONG:         Pahawh Hmong. Since: 1.40
// *@PANGO_SCRIPT_PALMYRENE:            Palmyrene. Since: 1.40
// *@PANGO_SCRIPT_PAU_CIN_HAU:          Pau Cin Hau. Since: 1.40
// *@PANGO_SCRIPT_PSALTER_PAHLAVI:      Psalter Pahlavi. Since: 1.40
// *@PANGO_SCRIPT_SIDDHAM:              Siddham. Since: 1.40
// *@PANGO_SCRIPT_TIRHUTA:              Tirhuta. Since: 1.40
// *@PANGO_SCRIPT_WARANG_CITI:          Warang Citi. Since: 1.40
// *@PANGO_SCRIPT_AHOM:                 Ahom. Since: 1.40
// *@PANGO_SCRIPT_ANATOLIAN_HIEROGLYPHS: Anatolian Hieroglyphs. Since: 1.40
// *@PANGO_SCRIPT_HATRAN:               Hatran. Since: 1.40
// *@PANGO_SCRIPT_MULTANI:              Multani. Since: 1.40
// *@PANGO_SCRIPT_OLD_HUNGARIAN:        Old Hungarian. Since: 1.40
// *@PANGO_SCRIPT_SIGNWRITING:          Signwriting. Since: 1.40
// * *The `PangoScript` enumeration identifies different writing
// *systems.
// * *The values correspond to the names as defined in the Unicode standard. See
// *[Unicode Standard Annex 24: Script names](http://www.unicode.org/reports/tr24/)
// * *Note that this enumeration is deprecated and will not be updated to include values
// *in newer versions of the Unicode standard. Applications should use the
// *[enum@GLib.UnicodeScript] enumeration instead,
// *whose values are interchangeable with `PangoScript`.
//
// ISO 15924 code
// Zyyy
// Qaai
// Arab
// Armn
// Beng
// Bopo
// Cher
// Qaac
// Cyrl (Cyrs)
// Dsrt
// Deva
// Ethi
// Geor (Geon, Geoa)
// Goth
// Grek
// Gujr
// Guru
// Hani
// Hang
// Hebr
// Hira
// Knda
// Kana
// Khmr
// Laoo
// Latn (Latf, Latg)
// Mlym
// Mong
// Mymr
// Ogam
// Ital
// Orya
// Runr
// Sinh
// Syrc (Syrj, Syrn, Syre)
// Taml
// Telu
// Thaa
// Thai
// Tibt
// Cans
// Yiii
// Tglg
// Hano
// Buhd
// Tagb
// Unicode-4.0 additions
// Brai
// Cprt
// Limb
// Osma
// Shaw
// Linb
// Tale
// Ugar
// Unicode-4.1 additions
// Talu
// Bugi
// Glag
// Tfng
// Sylo
// Xpeo
// Khar
// Unicode-5.0 additions
// Zzzz
// Bali
// Xsux
// Phnx
// Phag
// Nkoo
// Unicode-5.1 additions
// Kali
// Lepc
// Rjng
// Sund
// Saur
// Cham
// Olck
// Vaii
// Cari
// Lyci
// Lydi
// Unicode-6.0 additions
// Batk
// Brah
// Mand
// Unicode-6.1 additions
// Cakm
// Merc
// Mero
// Plrd
// Shrd
// Sora
// Takr
// Unicode 7.0 additions
// Bass
// Aghb
// Dupl
// Elba
// Gran
// Khoj
// Sind
// Lina
// Mahj
// Manu
// Mend
// Modi
// Mroo
// Nbat
// Narb
// Perm
// Hmng
// Palm
// Pauc
// Phlp
// Sidd
// Tirh
// Wara
// Unicode 8.0 additions
// Ahom
// Hluw
// Hatr
// Mult
// Hung
// Sgnw
fn C.pango_script_get_sample_language(script PangoScript) &PangoLanguage

pub fn pango_script_get_sample_language(script PangoScript) &PangoLanguage {
	return C.pango_script_get_sample_language(script)
}

// __PANGO_SCRIPT_H__
// Pango
// *pango-gravity.h: Gravity routines
// * *Copyright (C) 2006, 2007 Red Hat Software
// * *This library is free software; you can redistribute it and/or
// *modify it under the terms of the GNU Library General Public
// *License as published by the Free Software Foundation; either
// *version 2 of the License, or (at your option) any later version.
// * *This library is distributed in the hope that it will be useful,
// *but WITHOUT ANY WARRANTY; without even the implied warranty of
// *MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the GNU
// *Library General Public License for more details.
// * *You should have received a copy of the GNU Library General Public
// *License along with this library; if not, write to the
// *Free Software Foundation, Inc., 59 Temple Place - Suite 330,
// *Boston, MA 02111-1307, USA.
//
//* *PangoGravity:
// *@PANGO_GRAVITY_SOUTH: Glyphs stand upright (default) <img align="right" valign="center" src="m-south.png">
// *@PANGO_GRAVITY_EAST: Glyphs are rotated 90 degrees counter-clockwise. <img align="right" valign="center" src="m-east.png">
// *@PANGO_GRAVITY_NORTH: Glyphs are upside-down. <img align="right" valign="cener" src="m-north.png">
// *@PANGO_GRAVITY_WEST: Glyphs are rotated 90 degrees clockwise. <img align="right" valign="center" src="m-west.png">
// *@PANGO_GRAVITY_AUTO: Gravity is resolved from the context matrix
// * *`PangoGravity` represents the orientation of glyphs in a segment
// *of text.
// * *This is useful when rendering vertical text layouts. In those situations,
// *the layout is rotated using a non-identity [struct@Pango.Matrix], and then
// *glyph orientation is controlled using `PangoGravity`.
// * *Not every value in this enumeration makes sense for every usage of
// *`PangoGravity`; for example, %PANGO_GRAVITY_AUTO only can be passed to
// *[method@Pango.Context.set_base_gravity] and can only be returned by
// *[method@Pango.Context.get_base_gravity].
// * *See also: [enum@Pango.GravityHint]
// * *Since: 1.16
//
//* *PangoGravityHint:
// *@PANGO_GRAVITY_HINT_NATURAL: scripts will take their natural gravity based
// *  on the base gravity and the script.  This is the default.
// *@PANGO_GRAVITY_HINT_STRONG: always use the base gravity set, regardless of
// *  the script.
// *@PANGO_GRAVITY_HINT_LINE: for scripts not in their natural direction (eg.
// *  Latin in East gravity), choose per-script gravity such that every script
// *  respects the line progression. This means, Latin and Arabic will take
// *  opposite gravities and both flow top-to-bottom for example.
// * *`PangoGravityHint` defines how horizontal scripts should behave in a
// *vertical context.
// * *That is, English excerpts in a vertical paragraph for example.
// * *See also [enum@Pango.Gravity]
// * *Since: 1.16
//
//* *PANGO_GRAVITY_IS_VERTICAL:
// *@gravity: the `PangoGravity` to check
// * *Whether a `PangoGravity` represents vertical writing directions.
// * *Returns: %TRUE if @gravity is %PANGO_GRAVITY_EAST or %PANGO_GRAVITY_WEST,
// *  %FALSE otherwise.
// * *Since: 1.16
//
//* *PANGO_GRAVITY_IS_IMPROPER:
// *@gravity: the `PangoGravity` to check
// * *Whether a `PangoGravity` represents a gravity that results in reversal
// *of text direction.
// * *Returns: %TRUE if @gravity is %PANGO_GRAVITY_WEST or %PANGO_GRAVITY_NORTH,
// *  %FALSE otherwise.
// * *Since: 1.32
//
fn C.pango_gravity_to_rotation(gravity PangoGravity) f64

pub fn pango_gravity_to_rotation(gravity PangoGravity) f64 {
	return C.pango_gravity_to_rotation(gravity)
}

fn C.pango_gravity_get_for_matrix(matrix &PangoMatrix) PangoGravity

pub fn pango_gravity_get_for_matrix(matrix &PangoMatrix) PangoGravity {
	return C.pango_gravity_get_for_matrix(matrix)
}

fn C.pango_gravity_get_for_script(script PangoScript, base_gravity PangoGravity, hint PangoGravityHint) PangoGravity

pub fn pango_gravity_get_for_script(script PangoScript, base_gravity PangoGravity, hint PangoGravityHint) PangoGravity {
	return C.pango_gravity_get_for_script(script, base_gravity, hint)
}

fn C.pango_gravity_get_for_script_and_width(script PangoScript, wide Gboolean, base_gravity PangoGravity, hint PangoGravityHint) PangoGravity

pub fn pango_gravity_get_for_script_and_width(script PangoScript, wide Gboolean, base_gravity PangoGravity, hint PangoGravityHint) PangoGravity {
	return C.pango_gravity_get_for_script_and_width(script, wide, base_gravity, hint)
}

// __PANGO_GRAVITY_H__
// Pango
// *pango-direction.h: Unicode text direction
// * *Copyright (C) 2018 Matthias Clasen
// * *This library is free software; you can redistribute it and/or
// *modify it under the terms of the GNU Library General Public
// *License as published by the Free Software Foundation; either
// *version 2 of the License, or (at your option) any later version.
// * *This library is distributed in the hope that it will be useful,
// *but WITHOUT ANY WARRANTY; without even the implied warranty of
// *MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the GNU
// *Library General Public License for more details.
// * *You should have received a copy of the GNU Library General Public
// *License along with this library; if not, write to the
// *Free Software Foundation, Inc., 59 Temple Place - Suite 330,
// *Boston, MA 02111-1307, USA.
//
//* *PangoDirection:
// *@PANGO_DIRECTION_LTR: A strong left-to-right direction
// *@PANGO_DIRECTION_RTL: A strong right-to-left direction
// *@PANGO_DIRECTION_TTB_LTR: Deprecated value; treated the
// *  same as `PANGO_DIRECTION_RTL`.
// *@PANGO_DIRECTION_TTB_RTL: Deprecated value; treated the
// *  same as `PANGO_DIRECTION_LTR`
// *@PANGO_DIRECTION_WEAK_LTR: A weak left-to-right direction
// *@PANGO_DIRECTION_WEAK_RTL: A weak right-to-left direction
// *@PANGO_DIRECTION_NEUTRAL: No direction specified
// * *`PangoDirection` represents a direction in the Unicode bidirectional
// *algorithm.
// * *Not every value in this enumeration makes sense for every usage of
// *`PangoDirection`; for example, the return value of [func@unichar_direction]
// *and [func@find_base_dir] cannot be `PANGO_DIRECTION_WEAK_LTR` or
// *`PANGO_DIRECTION_WEAK_RTL`, since every character is either neutral
// *or has a strong direction; on the other hand `PANGO_DIRECTION_NEUTRAL`
// *doesn't make sense to pass to [func@itemize_with_base_dir].
// * *The `PANGO_DIRECTION_TTB_LTR`, `PANGO_DIRECTION_TTB_RTL` values come from
// *an earlier interpretation of this enumeration as the writing direction
// *of a block of text and are no longer used. See `PangoGravity` for how
// *vertical text is handled in Pango.
// * *If you are interested in text direction, you should really use fribidi
// *directly. `PangoDirection` is only retained because it is used in some
// *public apis.
//
pub enum PangoDirection {
	pango_direction_ltr
	pango_direction_rtl
	pango_direction_ttb_ltr
	pango_direction_ttb_rtl
	pango_direction_weak_ltr
	pango_direction_weak_rtl
	pango_direction_neutral
}

// __PANGO_DIRECTION_H__
// Pango
// *pango-bidi-type.h: Bidirectional Character Types
// * *Copyright (C) 2008 JÃ¼rg Billeter <j@bitron.ch>
// * *This library is free software; you can redistribute it and/or
// *modify it under the terms of the GNU Library General Public
// *License as published by the Free Software Foundation; either
// *version 2 of the License, or (at your option) any later version.
// * *This library is distributed in the hope that it will be useful,
// *but WITHOUT ANY WARRANTY; without even the implied warranty of
// *MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the GNU
// *Library General Public License for more details.
// * *You should have received a copy of the GNU Library General Public
// *License along with this library; if not, write to the
// *Free Software Foundation, Inc., 59 Temple Place - Suite 330,
// *Boston, MA 02111-1307, USA.
//
//* *PangoBidiType:
// *@PANGO_BIDI_TYPE_L: Left-to-Right
// *@PANGO_BIDI_TYPE_LRE: Left-to-Right Embedding
// *@PANGO_BIDI_TYPE_LRO: Left-to-Right Override
// *@PANGO_BIDI_TYPE_R: Right-to-Left
// *@PANGO_BIDI_TYPE_AL: Right-to-Left Arabic
// *@PANGO_BIDI_TYPE_RLE: Right-to-Left Embedding
// *@PANGO_BIDI_TYPE_RLO: Right-to-Left Override
// *@PANGO_BIDI_TYPE_PDF: Pop Directional Format
// *@PANGO_BIDI_TYPE_EN: European Number
// *@PANGO_BIDI_TYPE_ES: European Number Separator
// *@PANGO_BIDI_TYPE_ET: European Number Terminator
// *@PANGO_BIDI_TYPE_AN: Arabic Number
// *@PANGO_BIDI_TYPE_CS: Common Number Separator
// *@PANGO_BIDI_TYPE_NSM: Nonspacing Mark
// *@PANGO_BIDI_TYPE_BN: Boundary Neutral
// *@PANGO_BIDI_TYPE_B: Paragraph Separator
// *@PANGO_BIDI_TYPE_S: Segment Separator
// *@PANGO_BIDI_TYPE_WS: Whitespace
// *@PANGO_BIDI_TYPE_ON: Other Neutrals
// *@PANGO_BIDI_TYPE_LRI: Left-to-Right isolate. Since 1.48.6
// *@PANGO_BIDI_TYPE_RLI: Right-to-Left isolate. Since 1.48.6
// *@PANGO_BIDI_TYPE_FSI: First strong isolate. Since 1.48.6
// *@PANGO_BIDI_TYPE_PDI: Pop directional isolate. Since 1.48.6
// * *`PangoBidiType` represents the bidirectional character
// *type of a Unicode character.
// * *The values in this enumeration are specified by the
// *[Unicode bidirectional algorithm](http://www.unicode.org/reports/tr9/).
// * *Since: 1.22
// *Deprecated: 1.44: Use fribidi for this information
// */
// typedef enum {
//  /*Strong types
pub enum PangoBidiType {
	pango_bidi_type_l
	pango_bidi_type_lre
	pango_bidi_type_lro
	pango_bidi_type_r
	pango_bidi_type_al
	pango_bidi_type_rle
	pango_bidi_type_rlo
	// Weak types
	pango_bidi_type_pdf
	pango_bidi_type_en
	pango_bidi_type_es
	pango_bidi_type_et
	pango_bidi_type_an
	pango_bidi_type_cs
	pango_bidi_type_nsm
	pango_bidi_type_bn
	// Neutral types
	pango_bidi_type_b
	pango_bidi_type_s
	pango_bidi_type_ws
	pango_bidi_type_on
	// Explicit formatting
	pango_bidi_type_lri
	pango_bidi_type_rli
	pango_bidi_type_fsi
	pango_bidi_type_pdi
}

fn C.pango_bidi_type_for_unichar(ch Gunichar) PangoBidiType

pub fn pango_bidi_type_for_unichar(ch Gunichar) PangoBidiType {
	return C.pango_bidi_type_for_unichar(ch)
}

fn C.pango_unichar_direction(ch Gunichar) PangoDirection

pub fn pango_unichar_direction(ch Gunichar) PangoDirection {
	return C.pango_unichar_direction(ch)
}

fn C.pango_find_base_dir(text &Gchar, length Gint) PangoDirection

pub fn pango_find_base_dir(text &Gchar, length Gint) PangoDirection {
	return C.pango_find_base_dir(text, length)
}

fn C.pango_get_mirror_char(ch Gunichar, mirrored_ch &Gunichar) Gboolean

pub fn pango_get_mirror_char(ch Gunichar, mirrored_ch &Gunichar) Gboolean {
	return C.pango_get_mirror_char(ch, mirrored_ch)
}

// __PANGO_BIDI_TYPE_H__
// Pango
// *pango-font.h: Font handling
// * *Copyright (C) 2000 Red Hat Software
// * *This library is free software; you can redistribute it and/or
// *modify it under the terms of the GNU Library General Public
// *License as published by the Free Software Foundation; either
// *version 2 of the License, or (at your option) any later version.
// * *This library is distributed in the hope that it will be useful,
// *but WITHOUT ANY WARRANTY; without even the implied warranty of
// *MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
// *Library General Public License for more details.
// * *You should have received a copy of the GNU Library General Public
// *License along with this library; if not, write to the
// *Free Software Foundation, Inc., 59 Temple Place - Suite 330,
// *Boston, MA 02111-1307, USA.
//
//* *PangoFontDescription:
// * *A `PangoFontDescription` describes a font in an implementation-independent
// *manner.
// * *`PangoFontDescription` structures are used both to list what fonts are
// *available on the system and also for specifying the characteristics of
// *a font to load.
//
//* *PangoFontMetrics:
// * *A `PangoFontMetrics` structure holds the overall metric information
// *for a font.
// * *The information in a `PangoFontMetrics` structure may be restricted
// *to a script. The fields of this structure are private to implementations
// *of a font backend. See the documentation of the corresponding getters
// *for documentation of their meaning.
// * *For an overview of the most important metrics, see:
// * *<picture>
// *  <source srcset="fontmetrics-dark.png" media="(prefers-color-scheme: dark)">
// *  <img alt="Font metrics" src="fontmetrics-light.png">
// *</picture>
//
//
//* *PangoStyle:
// *@PANGO_STYLE_NORMAL: the font is upright.
// *@PANGO_STYLE_OBLIQUE: the font is slanted, but in a roman style.
// *@PANGO_STYLE_ITALIC: the font is slanted in an italic style.
// * *An enumeration specifying the various slant styles possible for a font.
// */
// typedef enum {
//  PANGO_STYLE_NORMAL,
//  PANGO_STYLE_OBLIQUE,
//  PANGO_STYLE_ITALIC
//} PangoStyle;
//
///*
// *PangoVariant:
// *@PANGO_VARIANT_NORMAL: A normal font.
// *@PANGO_VARIANT_SMALL_CAPS: A font with the lower case characters
// *  replaced by smaller variants of the capital characters.
// *@PANGO_VARIANT_ALL_SMALL_CAPS: A font with all characters
// *  replaced by smaller variants of the capital characters. Since: 1.50
// *@PANGO_VARIANT_PETITE_CAPS: A font with the lower case characters
// *  replaced by smaller variants of the capital characters.
// *  Petite Caps can be even smaller than Small Caps. Since: 1.50
// *@PANGO_VARIANT_ALL_PETITE_CAPS: A font with all characters
// *  replaced by smaller variants of the capital characters.
// *  Petite Caps can be even smaller than Small Caps. Since: 1.50
// *@PANGO_VARIANT_UNICASE: A font with the upper case characters
// *  replaced by smaller variants of the capital letters. Since: 1.50
// *@PANGO_VARIANT_TITLE_CAPS: A font with capital letters that
// *  are more suitable for all-uppercase titles. Since: 1.50
// * *An enumeration specifying capitalization variant of the font.
//
pub enum PangoStyle {
	pango_style_normal
	pango_style_oblique
	pango_style_italic
}

pub enum PangoVariant {
	pango_variant_normal
	pango_variant_small_caps
	pango_variant_all_small_caps
	pango_variant_petite_caps
	pango_variant_all_petite_caps
	pango_variant_unicase
	pango_variant_title_caps
}

//* *PangoWeight:
// *@PANGO_WEIGHT_THIN: the thin weight (= 100) Since: 1.24
// *@PANGO_WEIGHT_ULTRALIGHT: the ultralight weight (= 200)
// *@PANGO_WEIGHT_LIGHT: the light weight (= 300)
// *@PANGO_WEIGHT_SEMILIGHT: the semilight weight (= 350) Since: 1.36.7
// *@PANGO_WEIGHT_BOOK: the book weight (= 380) Since: 1.24)
// *@PANGO_WEIGHT_NORMAL: the default weight (= 400)
// *@PANGO_WEIGHT_MEDIUM: the medium weight (= 500) Since: 1.24
// *@PANGO_WEIGHT_SEMIBOLD: the semibold weight (= 600)
// *@PANGO_WEIGHT_BOLD: the bold weight (= 700)
// *@PANGO_WEIGHT_ULTRABOLD: the ultrabold weight (= 800)
// *@PANGO_WEIGHT_HEAVY: the heavy weight (= 900)
// *@PANGO_WEIGHT_ULTRAHEAVY: the ultraheavy weight (= 1000) Since: 1.24
// * *An enumeration specifying the weight (boldness) of a font.
// * *Weight is specified as a numeric value ranging from 100 to 1000.
// *This enumeration simply provides some common, predefined values.
//
pub enum PangoWeight {
	pango_weight_thin       = 100
	pango_weight_ultralight = 200
	pango_weight_light      = 300
	pango_weight_semilight  = 350
	pango_weight_book       = 380
	pango_weight_normal     = 400
	pango_weight_medium     = 500
	pango_weight_semibold   = 600
	pango_weight_bold       = 700
	pango_weight_ultrabold  = 800
	pango_weight_heavy      = 900
	pango_weight_ultraheavy = 1000
}

//* *PangoStretch:
// *@PANGO_STRETCH_ULTRA_CONDENSED: ultra condensed width
// *@PANGO_STRETCH_EXTRA_CONDENSED: extra condensed width
// *@PANGO_STRETCH_CONDENSED: condensed width
// *@PANGO_STRETCH_SEMI_CONDENSED: semi condensed width
// *@PANGO_STRETCH_NORMAL: the normal width
// *@PANGO_STRETCH_SEMI_EXPANDED: semi expanded width
// *@PANGO_STRETCH_EXPANDED: expanded width
// *@PANGO_STRETCH_EXTRA_EXPANDED: extra expanded width
// *@PANGO_STRETCH_ULTRA_EXPANDED: ultra expanded width
// * *An enumeration specifying the width of the font relative to other designs
// *within a family.
//
pub enum PangoStretch {
	pango_stretch_ultra_condensed
	pango_stretch_extra_condensed
	pango_stretch_condensed
	pango_stretch_semi_condensed
	pango_stretch_normal
	pango_stretch_semi_expanded
	pango_stretch_expanded
	pango_stretch_extra_expanded
	pango_stretch_ultra_expanded
}

//* *PangoFontMask:
// *@PANGO_FONT_MASK_FAMILY: the font family is specified.
// *@PANGO_FONT_MASK_STYLE: the font style is specified.
// *@PANGO_FONT_MASK_VARIANT: the font variant is specified.
// *@PANGO_FONT_MASK_WEIGHT: the font weight is specified.
// *@PANGO_FONT_MASK_STRETCH: the font stretch is specified.
// *@PANGO_FONT_MASK_SIZE: the font size is specified.
// *@PANGO_FONT_MASK_GRAVITY: the font gravity is specified (Since: 1.16.)
// *@PANGO_FONT_MASK_VARIATIONS: OpenType font variations are specified (Since: 1.42)
// * *The bits in a `PangoFontMask` correspond to the set fields in a
// *`PangoFontDescription`.
//
pub enum PangoFontMask {
	pango_font_mask_family     = 1 << 0
	pango_font_mask_style      = 1 << 1
	pango_font_mask_variant    = 1 << 2
	pango_font_mask_weight     = 1 << 3
	pango_font_mask_stretch    = 1 << 4
	pango_font_mask_size       = 1 << 5
	pango_font_mask_gravity    = 1 << 6
	pango_font_mask_variations = 1 << 7
}

// CSS scale factors (1.2 factor between each size)
//* *PANGO_SCALE_XX_SMALL:
// * *The scale factor for three shrinking steps (1 / (1.2 *1.2 *1.2)).
//
//* *PANGO_SCALE_X_SMALL:
// * *The scale factor for two shrinking steps (1 / (1.2 *1.2)).
//
//* *PANGO_SCALE_SMALL:
// * *The scale factor for one shrinking step (1 / 1.2).
//
//* *PANGO_SCALE_MEDIUM:
// * *The scale factor for normal size (1.0).
//
//* *PANGO_SCALE_LARGE:
// * *The scale factor for one magnification step (1.2).
//
//* *PANGO_SCALE_X_LARGE:
// * *The scale factor for two magnification steps (1.2 *1.2).
//
//* *PANGO_SCALE_XX_LARGE:
// * *The scale factor for three magnification steps (1.2 *1.2 *1.2).
//
//
// *PangoFontDescription
//
fn C.pango_font_description_get_type() GType

pub fn pango_font_description_get_type() GType {
	return C.pango_font_description_get_type()
}

fn C.pango_font_description_new() &PangoFontDescription

pub fn pango_font_description_new() &PangoFontDescription {
	return C.pango_font_description_new()
}

fn C.pango_font_description_copy(desc &PangoFontDescription) &PangoFontDescription

pub fn pango_font_description_copy(desc &PangoFontDescription) &PangoFontDescription {
	return C.pango_font_description_copy(desc)
}

fn C.pango_font_description_copy_static(desc &PangoFontDescription) &PangoFontDescription

pub fn pango_font_description_copy_static(desc &PangoFontDescription) &PangoFontDescription {
	return C.pango_font_description_copy_static(desc)
}

fn C.pango_font_description_hash(desc &PangoFontDescription) Guint

pub fn pango_font_description_hash(desc &PangoFontDescription) Guint {
	return C.pango_font_description_hash(desc)
}

fn C.pango_font_description_equal(desc1 &PangoFontDescription, desc2 &PangoFontDescription) Gboolean

pub fn pango_font_description_equal(desc1 &PangoFontDescription, desc2 &PangoFontDescription) Gboolean {
	return C.pango_font_description_equal(desc1, desc2)
}

fn C.pango_font_description_free(desc &PangoFontDescription)

pub fn pango_font_description_free(desc &PangoFontDescription) {
	C.pango_font_description_free(desc)
}

fn C.pango_font_descriptions_free(descs &&PangoFontDescription, n_descs int)

pub fn pango_font_descriptions_free(descs &&PangoFontDescription, n_descs int) {
	C.pango_font_descriptions_free(descs, n_descs)
}

fn C.pango_font_description_set_family(desc &PangoFontDescription, family &i8)

pub fn pango_font_description_set_family(desc &PangoFontDescription, family &i8) {
	C.pango_font_description_set_family(desc, family)
}

fn C.pango_font_description_set_family_static(desc &PangoFontDescription, family &i8)

pub fn pango_font_description_set_family_static(desc &PangoFontDescription, family &i8) {
	C.pango_font_description_set_family_static(desc, family)
}

fn C.pango_font_description_get_family(desc &PangoFontDescription) &i8

pub fn pango_font_description_get_family(desc &PangoFontDescription) &i8 {
	return C.pango_font_description_get_family(desc)
}

fn C.pango_font_description_set_style(desc &PangoFontDescription, style PangoStyle)

pub fn pango_font_description_set_style(desc &PangoFontDescription, style PangoStyle) {
	C.pango_font_description_set_style(desc, style)
}

fn C.pango_font_description_get_style(desc &PangoFontDescription) PangoStyle

pub fn pango_font_description_get_style(desc &PangoFontDescription) PangoStyle {
	return C.pango_font_description_get_style(desc)
}

fn C.pango_font_description_set_variant(desc &PangoFontDescription, variant PangoVariant)

pub fn pango_font_description_set_variant(desc &PangoFontDescription, variant PangoVariant) {
	C.pango_font_description_set_variant(desc, variant)
}

fn C.pango_font_description_get_variant(desc &PangoFontDescription) PangoVariant

pub fn pango_font_description_get_variant(desc &PangoFontDescription) PangoVariant {
	return C.pango_font_description_get_variant(desc)
}

fn C.pango_font_description_set_weight(desc &PangoFontDescription, weight PangoWeight)

pub fn pango_font_description_set_weight(desc &PangoFontDescription, weight PangoWeight) {
	C.pango_font_description_set_weight(desc, weight)
}

fn C.pango_font_description_get_weight(desc &PangoFontDescription) PangoWeight

pub fn pango_font_description_get_weight(desc &PangoFontDescription) PangoWeight {
	return C.pango_font_description_get_weight(desc)
}

fn C.pango_font_description_set_stretch(desc &PangoFontDescription, stretch PangoStretch)

pub fn pango_font_description_set_stretch(desc &PangoFontDescription, stretch PangoStretch) {
	C.pango_font_description_set_stretch(desc, stretch)
}

fn C.pango_font_description_get_stretch(desc &PangoFontDescription) PangoStretch

pub fn pango_font_description_get_stretch(desc &PangoFontDescription) PangoStretch {
	return C.pango_font_description_get_stretch(desc)
}

fn C.pango_font_description_set_size(desc &PangoFontDescription, size Gint)

pub fn pango_font_description_set_size(desc &PangoFontDescription, size Gint) {
	C.pango_font_description_set_size(desc, size)
}

fn C.pango_font_description_get_size(desc &PangoFontDescription) Gint

pub fn pango_font_description_get_size(desc &PangoFontDescription) Gint {
	return C.pango_font_description_get_size(desc)
}

fn C.pango_font_description_set_absolute_size(desc &PangoFontDescription, size f64)

pub fn pango_font_description_set_absolute_size(desc &PangoFontDescription, size f64) {
	C.pango_font_description_set_absolute_size(desc, size)
}

fn C.pango_font_description_get_size_is_absolute(desc &PangoFontDescription) Gboolean

pub fn pango_font_description_get_size_is_absolute(desc &PangoFontDescription) Gboolean {
	return C.pango_font_description_get_size_is_absolute(desc)
}

fn C.pango_font_description_set_gravity(desc &PangoFontDescription, gravity PangoGravity)

pub fn pango_font_description_set_gravity(desc &PangoFontDescription, gravity PangoGravity) {
	C.pango_font_description_set_gravity(desc, gravity)
}

fn C.pango_font_description_get_gravity(desc &PangoFontDescription) PangoGravity

pub fn pango_font_description_get_gravity(desc &PangoFontDescription) PangoGravity {
	return C.pango_font_description_get_gravity(desc)
}

fn C.pango_font_description_set_variations_static(desc &PangoFontDescription, variations &i8)

pub fn pango_font_description_set_variations_static(desc &PangoFontDescription, variations &i8) {
	C.pango_font_description_set_variations_static(desc, variations)
}

fn C.pango_font_description_set_variations(desc &PangoFontDescription, variations &i8)

pub fn pango_font_description_set_variations(desc &PangoFontDescription, variations &i8) {
	C.pango_font_description_set_variations(desc, variations)
}

fn C.pango_font_description_get_variations(desc &PangoFontDescription) &i8

pub fn pango_font_description_get_variations(desc &PangoFontDescription) &i8 {
	return C.pango_font_description_get_variations(desc)
}

fn C.pango_font_description_get_set_fields(desc &PangoFontDescription) PangoFontMask

pub fn pango_font_description_get_set_fields(desc &PangoFontDescription) PangoFontMask {
	return C.pango_font_description_get_set_fields(desc)
}

fn C.pango_font_description_unset_fields(desc &PangoFontDescription, to_unset PangoFontMask)

pub fn pango_font_description_unset_fields(desc &PangoFontDescription, to_unset PangoFontMask) {
	C.pango_font_description_unset_fields(desc, to_unset)
}

fn C.pango_font_description_merge(desc &PangoFontDescription, desc_to_merge &PangoFontDescription, replace_existing Gboolean)

pub fn pango_font_description_merge(desc &PangoFontDescription, desc_to_merge &PangoFontDescription, replace_existing Gboolean) {
	C.pango_font_description_merge(desc, desc_to_merge, replace_existing)
}

fn C.pango_font_description_merge_static(desc &PangoFontDescription, desc_to_merge &PangoFontDescription, replace_existing Gboolean)

pub fn pango_font_description_merge_static(desc &PangoFontDescription, desc_to_merge &PangoFontDescription, replace_existing Gboolean) {
	C.pango_font_description_merge_static(desc, desc_to_merge, replace_existing)
}

fn C.pango_font_description_better_match(desc &PangoFontDescription, old_match &PangoFontDescription, new_match &PangoFontDescription) Gboolean

pub fn pango_font_description_better_match(desc &PangoFontDescription, old_match &PangoFontDescription, new_match &PangoFontDescription) Gboolean {
	return C.pango_font_description_better_match(desc, old_match, new_match)
}

fn C.pango_font_description_from_string(str &i8) &PangoFontDescription

pub fn pango_font_description_from_string(str &i8) &PangoFontDescription {
	return C.pango_font_description_from_string(str)
}

fn C.pango_font_description_to_string(desc &PangoFontDescription) &i8

pub fn pango_font_description_to_string(desc &PangoFontDescription) &i8 {
	return C.pango_font_description_to_string(desc)
}

fn C.pango_font_description_to_filename(desc &PangoFontDescription) &i8

pub fn pango_font_description_to_filename(desc &PangoFontDescription) &i8 {
	return C.pango_font_description_to_filename(desc)
}

//
// *PangoFontMetrics
//
pub struct PangoFontMetrics_vdup2 {
	// <private>
	ref_count               Guint
	ascent                  int
	descent                 int
	height                  int
	approximate_char_width  int
	approximate_digit_width int
	underline_position      int
	underline_thickness     int
	strikethrough_position  int
	strikethrough_thickness int
}

fn C.pango_font_metrics_get_type() GType

pub fn pango_font_metrics_get_type() GType {
	return C.pango_font_metrics_get_type()
}

fn C.pango_font_metrics_ref(metrics &PangoFontMetrics) &PangoFontMetrics

pub fn pango_font_metrics_ref(metrics &PangoFontMetrics) &PangoFontMetrics {
	return C.pango_font_metrics_ref(metrics)
}

fn C.pango_font_metrics_unref(metrics &PangoFontMetrics)

pub fn pango_font_metrics_unref(metrics &PangoFontMetrics) {
	C.pango_font_metrics_unref(metrics)
}

fn C.pango_font_metrics_get_ascent(metrics &PangoFontMetrics) int

pub fn pango_font_metrics_get_ascent(metrics &PangoFontMetrics) int {
	return C.pango_font_metrics_get_ascent(metrics)
}

fn C.pango_font_metrics_get_descent(metrics &PangoFontMetrics) int

pub fn pango_font_metrics_get_descent(metrics &PangoFontMetrics) int {
	return C.pango_font_metrics_get_descent(metrics)
}

fn C.pango_font_metrics_get_height(metrics &PangoFontMetrics) int

pub fn pango_font_metrics_get_height(metrics &PangoFontMetrics) int {
	return C.pango_font_metrics_get_height(metrics)
}

fn C.pango_font_metrics_get_approximate_char_width(metrics &PangoFontMetrics) int

pub fn pango_font_metrics_get_approximate_char_width(metrics &PangoFontMetrics) int {
	return C.pango_font_metrics_get_approximate_char_width(metrics)
}

fn C.pango_font_metrics_get_approximate_digit_width(metrics &PangoFontMetrics) int

pub fn pango_font_metrics_get_approximate_digit_width(metrics &PangoFontMetrics) int {
	return C.pango_font_metrics_get_approximate_digit_width(metrics)
}

fn C.pango_font_metrics_get_underline_position(metrics &PangoFontMetrics) int

pub fn pango_font_metrics_get_underline_position(metrics &PangoFontMetrics) int {
	return C.pango_font_metrics_get_underline_position(metrics)
}

fn C.pango_font_metrics_get_underline_thickness(metrics &PangoFontMetrics) int

pub fn pango_font_metrics_get_underline_thickness(metrics &PangoFontMetrics) int {
	return C.pango_font_metrics_get_underline_thickness(metrics)
}

fn C.pango_font_metrics_get_strikethrough_position(metrics &PangoFontMetrics) int

pub fn pango_font_metrics_get_strikethrough_position(metrics &PangoFontMetrics) int {
	return C.pango_font_metrics_get_strikethrough_position(metrics)
}

fn C.pango_font_metrics_get_strikethrough_thickness(metrics &PangoFontMetrics) int

pub fn pango_font_metrics_get_strikethrough_thickness(metrics &PangoFontMetrics) int {
	return C.pango_font_metrics_get_strikethrough_thickness(metrics)
}

//
// *PangoFontFamily
//
//* *PangoFontFamily:
// * *A `PangoFontFamily` is used to represent a family of related
// *font faces.
// * *The font faces in a family share a common design, but differ in
// *slant, weight, width or other aspects.
//
pub struct PangoFontFamily_vdup3 {
	parent_instance GObject
}

pub struct PangoFontFamilyClass_vdup4 {
	parent_class GObjectClass
	//< public >
	list_faces   fn (&PangoFontFamily, &&&PangoFontFace, &int)
	get_name     fn (&PangoFontFamily) &i8
	is_monospace fn (&PangoFontFamily) Gboolean
	is_variable  fn (&PangoFontFamily) Gboolean
	get_face     fn (&PangoFontFamily, &i8) &PangoFontFace
	//< private >
	// Padding for future expansion
	_pango_reserved2 fn ()
}

// PANGO_DISABLE_DEPRECATED
fn C.pango_font_family_get_type() GType

pub fn pango_font_family_get_type() GType {
	return C.pango_font_family_get_type()
}

fn C.pango_font_family_list_faces(family &PangoFontFamily, faces &&&PangoFontFace, n_faces &int)

pub fn pango_font_family_list_faces(family &PangoFontFamily, faces &&&PangoFontFace, n_faces &int) {
	C.pango_font_family_list_faces(family, faces, n_faces)
}

fn C.pango_font_family_get_name(family &PangoFontFamily) &i8

pub fn pango_font_family_get_name(family &PangoFontFamily) &i8 {
	return C.pango_font_family_get_name(family)
}

fn C.pango_font_family_is_monospace(family &PangoFontFamily) Gboolean

pub fn pango_font_family_is_monospace(family &PangoFontFamily) Gboolean {
	return C.pango_font_family_is_monospace(family)
}

fn C.pango_font_family_is_variable(family &PangoFontFamily) Gboolean

pub fn pango_font_family_is_variable(family &PangoFontFamily) Gboolean {
	return C.pango_font_family_is_variable(family)
}

fn C.pango_font_family_get_face(family &PangoFontFamily, name &i8) &PangoFontFace

pub fn pango_font_family_get_face(family &PangoFontFamily, name &i8) &PangoFontFace {
	return C.pango_font_family_get_face(family, name)
}

//
// *PangoFontFace
//
//* *PangoFontFace:
// * *A `PangoFontFace` is used to represent a group of fonts with
// *the same family, slant, weight, and width, but varying sizes.
//
pub struct PangoFontFace_vdup5 {
	parent_instance GObject
}

pub struct PangoFontFaceClass_vdup6 {
	parent_class GObjectClass
	//< public >
	get_face_name  fn (&PangoFontFace) &i8
	describe       fn (&PangoFontFace) &PangoFontDescription
	list_sizes     fn (&PangoFontFace, &&int, &int)
	is_synthesized fn (&PangoFontFace) Gboolean
	get_family     fn (&PangoFontFace) &PangoFontFamily
	//< private >
	// Padding for future expansion
	_pango_reserved3 fn ()
	_pango_reserved4 fn ()
}

// PANGO_DISABLE_DEPRECATED
fn C.pango_font_face_get_type() GType

pub fn pango_font_face_get_type() GType {
	return C.pango_font_face_get_type()
}

fn C.pango_font_face_describe(face &PangoFontFace) &PangoFontDescription

pub fn pango_font_face_describe(face &PangoFontFace) &PangoFontDescription {
	return C.pango_font_face_describe(face)
}

fn C.pango_font_face_get_face_name(face &PangoFontFace) &i8

pub fn pango_font_face_get_face_name(face &PangoFontFace) &i8 {
	return C.pango_font_face_get_face_name(face)
}

fn C.pango_font_face_list_sizes(face &PangoFontFace, sizes &&int, n_sizes &int)

pub fn pango_font_face_list_sizes(face &PangoFontFace, sizes &&int, n_sizes &int) {
	C.pango_font_face_list_sizes(face, sizes, n_sizes)
}

fn C.pango_font_face_is_synthesized(face &PangoFontFace) Gboolean

pub fn pango_font_face_is_synthesized(face &PangoFontFace) Gboolean {
	return C.pango_font_face_is_synthesized(face)
}

fn C.pango_font_face_get_family(face &PangoFontFace) &PangoFontFamily

pub fn pango_font_face_get_family(face &PangoFontFace) &PangoFontFamily {
	return C.pango_font_face_get_family(face)
}

//
// *PangoFont
//
//* *PangoFont:
// * *A `PangoFont` is used to represent a font in a
// *rendering-system-independent manner.
//
pub struct PangoFont_vdup7 {
	parent_instance GObject
}

pub struct PangoFontClass_vdup8 {
	parent_class GObjectClass
	//< public >
	describe          fn (&PangoFont) &PangoFontDescription
	get_coverage      fn (&PangoFont, &PangoLanguage) &PangoCoverage
	get_glyph_extents fn (&PangoFont, PangoGlyph, &PangoRectangle, &PangoRectangle)
	get_metrics       fn (&PangoFont, &PangoLanguage) &PangoFontMetrics
	get_font_map      fn (&PangoFont) &PangoFontMap
	describe_absolute fn (&PangoFont) &PangoFontDescription
	get_features      fn (&PangoFont, &Hb_feature_t, Guint, &Guint)
	create_hb_font    fn (&PangoFont) &Hb_font_t
}

// PANGO_DISABLE_DEPRECATED
fn C.pango_font_get_type() GType

pub fn pango_font_get_type() GType {
	return C.pango_font_get_type()
}

fn C.pango_font_describe(font &PangoFont) &PangoFontDescription

pub fn pango_font_describe(font &PangoFont) &PangoFontDescription {
	return C.pango_font_describe(font)
}

fn C.pango_font_describe_with_absolute_size(font &PangoFont) &PangoFontDescription

pub fn pango_font_describe_with_absolute_size(font &PangoFont) &PangoFontDescription {
	return C.pango_font_describe_with_absolute_size(font)
}

fn C.pango_font_get_coverage(font &PangoFont, language &PangoLanguage) &PangoCoverage

pub fn pango_font_get_coverage(font &PangoFont, language &PangoLanguage) &PangoCoverage {
	return C.pango_font_get_coverage(font, language)
}

fn C.pango_font_find_shaper(font &PangoFont, language &PangoLanguage, ch Guint32) &PangoEngineShape

pub fn pango_font_find_shaper(font &PangoFont, language &PangoLanguage, ch Guint32) &PangoEngineShape {
	return C.pango_font_find_shaper(font, language, ch)
}

fn C.pango_font_get_metrics(font &PangoFont, language &PangoLanguage) &PangoFontMetrics

pub fn pango_font_get_metrics(font &PangoFont, language &PangoLanguage) &PangoFontMetrics {
	return C.pango_font_get_metrics(font, language)
}

fn C.pango_font_get_glyph_extents(font &PangoFont, glyph PangoGlyph, ink_rect &PangoRectangle, logical_rect &PangoRectangle)

pub fn pango_font_get_glyph_extents(font &PangoFont, glyph PangoGlyph, ink_rect &PangoRectangle, logical_rect &PangoRectangle) {
	C.pango_font_get_glyph_extents(font, glyph, ink_rect, logical_rect)
}

fn C.pango_font_get_font_map(font &PangoFont) &PangoFontMap

pub fn pango_font_get_font_map(font &PangoFont) &PangoFontMap {
	return C.pango_font_get_font_map(font)
}

fn C.pango_font_get_face(font &PangoFont) &PangoFontFace

pub fn pango_font_get_face(font &PangoFont) &PangoFontFace {
	return C.pango_font_get_face(font)
}

fn C.pango_font_has_char(font &PangoFont, wc Gunichar) Gboolean

pub fn pango_font_has_char(font &PangoFont, wc Gunichar) Gboolean {
	return C.pango_font_has_char(font, wc)
}

fn C.pango_font_get_features(font &PangoFont, features &Hb_feature_t, len Guint, num_features &Guint)

pub fn pango_font_get_features(font &PangoFont, features &Hb_feature_t, len Guint, num_features &Guint) {
	C.pango_font_get_features(font, features, len, num_features)
}

fn C.pango_font_get_hb_font(font &PangoFont) &Hb_font_t

pub fn pango_font_get_hb_font(font &PangoFont) &Hb_font_t {
	return C.pango_font_get_hb_font(font)
}

fn C.pango_font_get_languages(font &PangoFont) &&PangoLanguage

pub fn pango_font_get_languages(font &PangoFont) &&PangoLanguage {
	return C.pango_font_get_languages(font)
}

fn C.pango_font_serialize(font &PangoFont) &GBytes

pub fn pango_font_serialize(font &PangoFont) &GBytes {
	return C.pango_font_serialize(font)
}

fn C.pango_font_deserialize(context &PangoContext, bytes &GBytes, error &&GError) &PangoFont

pub fn pango_font_deserialize(context &PangoContext, bytes &GBytes, error &&GError) &PangoFont {
	return C.pango_font_deserialize(context, bytes, error)
}

//* *PANGO_GLYPH_EMPTY:
// * *A `PangoGlyph` value that indicates a zero-width empty glpyh.
// * *This is useful for example in shaper modules, to use as the glyph for
// *various zero-width Unicode characters (those passing [func@is_zero_width]).
//
//* *PANGO_GLYPH_INVALID_INPUT:
// * *A `PangoGlyph` value for invalid input.
// * *`PangoLayout` produces one such glyph per invalid input UTF-8 byte and such
// *a glyph is rendered as a crossed box.
// * *Note that this value is defined such that it has the %PANGO_GLYPH_UNKNOWN_FLAG
// *set.
// * *Since: 1.20
//
//* *PANGO_GLYPH_UNKNOWN_FLAG:
// * *Flag used in `PangoGlyph` to turn a `gunichar` value of a valid Unicode
// *character into an unknown-character glyph for that `gunichar`.
// * *Such unknown-character glyphs may be rendered as a 'hex box'.
//
//* *PANGO_GET_UNKNOWN_GLYPH:
// *@wc: a Unicode character
// * *The way this unknown glyphs are rendered is backend specific. For example,
// *a box with the hexadecimal Unicode code-point of the character written in it
// *is what is done in the most common backends.
// * *Returns: a `PangoGlyph` value that means no glyph was found for @wc.
//
pub type PangoFontFamily_autoptr = &PangoFontFamily
pub type PangoFontFamily_listautoptr = &GList
pub type PangoFontFamily_slistautoptr = &GSList
pub type PangoFontFamily_queueautoptr = &GQueue
pub type PangoFontFace_autoptr = &PangoFontFace
pub type PangoFontFace_listautoptr = &GList
pub type PangoFontFace_slistautoptr = &GSList
pub type PangoFontFace_queueautoptr = &GQueue
pub type PangoFont_autoptr = &PangoFont
pub type PangoFont_listautoptr = &GList
pub type PangoFont_slistautoptr = &GSList
pub type PangoFont_queueautoptr = &GQueue
pub type PangoFontDescription_autoptr = &PangoFontDescription
pub type PangoFontDescription_listautoptr = &GList
pub type PangoFontDescription_slistautoptr = &GSList
pub type PangoFontDescription_queueautoptr = &GQueue

// __PANGO_FONT_H__
// Pango
// *pango-color.h: A color struct
// * *Copyright (C) 2000 Red Hat Software
// * *This library is free software; you can redistribute it and/or
// *modify it under the terms of the GNU Library General Public
// *License as published by the Free Software Foundation; either
// *version 2 of the License, or (at your option) any later version.
// * *This library is distributed in the hope that it will be useful,
// *but WITHOUT ANY WARRANTY; without even the implied warranty of
// *MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the GNU
// *Library General Public License for more details.
// * *You should have received a copy of the GNU Library General Public
// *License along with this library; if not, write to the
// *Free Software Foundation, Inc., 59 Temple Place - Suite 330,
// *Boston, MA 02111-1307, USA.
//
//* *PangoColor:
// *@red: value of red component
// *@green: value of green component
// *@blue: value of blue component
// * *The `PangoColor` structure is used to
// *represent a color in an uncalibrated RGB color-space.
//
pub struct PangoColor_vdup9 {
	red   Guint16
	green Guint16
	blue  Guint16
}

fn C.pango_color_get_type() GType

pub fn pango_color_get_type() GType {
	return C.pango_color_get_type()
}

fn C.pango_color_copy(src &PangoColor) &PangoColor

pub fn pango_color_copy(src &PangoColor) &PangoColor {
	return C.pango_color_copy(src)
}

fn C.pango_color_free(color &PangoColor)

pub fn pango_color_free(color &PangoColor) {
	C.pango_color_free(color)
}

fn C.pango_color_parse(color &PangoColor, spec &i8) Gboolean

pub fn pango_color_parse(color &PangoColor, spec &i8) Gboolean {
	return C.pango_color_parse(color, spec)
}

fn C.pango_color_parse_with_alpha(color &PangoColor, alpha &Guint16, spec &i8) Gboolean

pub fn pango_color_parse_with_alpha(color &PangoColor, alpha &Guint16, spec &i8) Gboolean {
	return C.pango_color_parse_with_alpha(color, alpha, spec)
}

fn C.pango_color_to_string(color &PangoColor) &i8

pub fn pango_color_to_string(color &PangoColor) &i8 {
	return C.pango_color_to_string(color)
}

// __PANGO_COLOR_H__
// Pango
// *pango-attributes.h: Attributed text
// * *Copyright (C) 2000 Red Hat Software
// * *This library is free software; you can redistribute it and/or
// *modify it under the terms of the GNU Library General Public
// *License as published by the Free Software Foundation; either
// *version 2 of the License, or (at your option) any later version.
// * *This library is distributed in the hope that it will be useful,
// *but WITHOUT ANY WARRANTY; without even the implied warranty of
// *MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
// *Library General Public License for more details.
// * *You should have received a copy of the GNU Library General Public
// *License along with this library; if not, write to the
// *Free Software Foundation, Inc., 59 Temple Place - Suite 330,
// *Boston, MA 02111-1307, USA.
//
//* *PangoAttrType:
// *@PANGO_ATTR_INVALID: does not happen
// *@PANGO_ATTR_LANGUAGE: language ([struct@Pango.AttrLanguage])
// *@PANGO_ATTR_FAMILY: font family name list ([struct@Pango.AttrString])
// *@PANGO_ATTR_STYLE: font slant style ([struct@Pango.AttrInt])
// *@PANGO_ATTR_WEIGHT: font weight ([struct@Pango.AttrInt])
// *@PANGO_ATTR_VARIANT: font variant (normal or small caps) ([struct@Pango.AttrInt])
// *@PANGO_ATTR_STRETCH: font stretch ([struct@Pango.AttrInt])
// *@PANGO_ATTR_SIZE: font size in points scaled by %PANGO_SCALE ([struct@Pango.AttrInt])
// *@PANGO_ATTR_FONT_DESC: font description ([struct@Pango.AttrFontDesc])
// *@PANGO_ATTR_FOREGROUND: foreground color ([struct@Pango.AttrColor])
// *@PANGO_ATTR_BACKGROUND: background color ([struct@Pango.AttrColor])
// *@PANGO_ATTR_UNDERLINE: whether the text has an underline ([struct@Pango.AttrInt])
// *@PANGO_ATTR_STRIKETHROUGH: whether the text is struck-through ([struct@Pango.AttrInt])
// *@PANGO_ATTR_RISE: baseline displacement ([struct@Pango.AttrInt])
// *@PANGO_ATTR_SHAPE: shape ([struct@Pango.AttrShape])
// *@PANGO_ATTR_SCALE: font size scale factor ([struct@Pango.AttrFloat])
// *@PANGO_ATTR_FALLBACK: whether fallback is enabled ([struct@Pango.AttrInt])
// *@PANGO_ATTR_LETTER_SPACING: letter spacing ([struct@PangoAttrInt])
// *@PANGO_ATTR_UNDERLINE_COLOR: underline color ([struct@Pango.AttrColor])
// *@PANGO_ATTR_STRIKETHROUGH_COLOR: strikethrough color ([struct@Pango.AttrColor])
// *@PANGO_ATTR_ABSOLUTE_SIZE: font size in pixels scaled by %PANGO_SCALE ([struct@Pango.AttrInt])
// *@PANGO_ATTR_GRAVITY: base text gravity ([struct@Pango.AttrInt])
// *@PANGO_ATTR_GRAVITY_HINT: gravity hint ([struct@Pango.AttrInt])
// *@PANGO_ATTR_FONT_FEATURES: OpenType font features ([struct@Pango.AttrFontFeatures]). Since 1.38
// *@PANGO_ATTR_FOREGROUND_ALPHA: foreground alpha ([struct@Pango.AttrInt]). Since 1.38
// *@PANGO_ATTR_BACKGROUND_ALPHA: background alpha ([struct@Pango.AttrInt]). Since 1.38
// *@PANGO_ATTR_ALLOW_BREAKS: whether breaks are allowed ([struct@Pango.AttrInt]). Since 1.44
// *@PANGO_ATTR_SHOW: how to render invisible characters ([struct@Pango.AttrInt]). Since 1.44
// *@PANGO_ATTR_INSERT_HYPHENS: whether to insert hyphens at intra-word line breaks ([struct@Pango.AttrInt]). Since 1.44
// *@PANGO_ATTR_OVERLINE: whether the text has an overline ([struct@Pango.AttrInt]). Since 1.46
// *@PANGO_ATTR_OVERLINE_COLOR: overline color ([struct@Pango.AttrColor]). Since 1.46
// *@PANGO_ATTR_LINE_HEIGHT: line height factor ([struct@Pango.AttrFloat]). Since: 1.50
// *@PANGO_ATTR_ABSOLUTE_LINE_HEIGHT: line height ([struct@Pango.AttrInt]). Since: 1.50
// *@PANGO_ATTR_WORD: override segmentation to classify the range of the attribute as a single word ([struct@Pango.AttrInt]). Since 1.50
// *@PANGO_ATTR_SENTENCE: override segmentation to classify the range of the attribute as a single sentence ([struct@Pango.AttrInt]). Since 1.50
// *@PANGO_ATTR_BASELINE_SHIFT: baseline displacement ([struct@Pango.AttrInt]). Since 1.50
// *@PANGO_ATTR_FONT_SCALE: font-relative size change ([struct@Pango.AttrInt]). Since 1.50
// * *The `PangoAttrType` distinguishes between different types of attributes.
// * *Along with the predefined values, it is possible to allocate additional
// *values for custom attributes using [func@AttrType.register]. The predefined
// *values are given below. The type of structure used to store the attribute is
// *listed in parentheses after the description.
//
pub enum PangoAttrType {
	pango_attr_invalid
	// 0 is an invalid attribute type
	pango_attr_language
	// PangoAttrLanguage
	pango_attr_family
	// PangoAttrString
	pango_attr_style
	// PangoAttrInt
	pango_attr_weight
	// PangoAttrInt
	pango_attr_variant
	// PangoAttrInt
	pango_attr_stretch
	// PangoAttrInt
	pango_attr_size
	// PangoAttrSize
	pango_attr_font_desc
	// PangoAttrFontDesc
	pango_attr_foreground
	// PangoAttrColor
	pango_attr_background
	// PangoAttrColor
	pango_attr_underline
	// PangoAttrInt
	pango_attr_strikethrough
	// PangoAttrInt
	pango_attr_rise
	// PangoAttrInt
	pango_attr_shape
	// PangoAttrShape
	pango_attr_scale
	// PangoAttrFloat
	pango_attr_fallback
	// PangoAttrInt
	pango_attr_letter_spacing
	// PangoAttrInt
	pango_attr_underline_color
	// PangoAttrColor
	pango_attr_strikethrough_color
	// PangoAttrColor
	pango_attr_absolute_size
	// PangoAttrSize
	pango_attr_gravity
	// PangoAttrInt
	pango_attr_gravity_hint
	// PangoAttrInt
	pango_attr_font_features
	// PangoAttrFontFeatures
	pango_attr_foreground_alpha
	// PangoAttrInt
	pango_attr_background_alpha
	// PangoAttrInt
	pango_attr_allow_breaks
	// PangoAttrInt
	pango_attr_show
	// PangoAttrInt
	pango_attr_insert_hyphens
	// PangoAttrInt
	pango_attr_overline
	// PangoAttrInt
	pango_attr_overline_color
	// PangoAttrColor
	pango_attr_line_height
	// PangoAttrFloat
	pango_attr_absolute_line_height
	// PangoAttrInt
	pango_attr_text_transform
	// PangoAttrInt
	pango_attr_word
	// PangoAttrInt
	pango_attr_sentence
	// PangoAttrInt
	pango_attr_baseline_shift
	// PangoAttrSize
	pango_attr_font_scale
	// PangoAttrInt
}

//* *PangoUnderline:
// *@PANGO_UNDERLINE_NONE: no underline should be drawn
// *@PANGO_UNDERLINE_SINGLE: a single underline should be drawn
// *@PANGO_UNDERLINE_DOUBLE: a double underline should be drawn
// *@PANGO_UNDERLINE_LOW: a single underline should be drawn at a
// *  position beneath the ink extents of the text being
// *  underlined. This should be used only for underlining
// *  single characters, such as for keyboard accelerators.
// *  %PANGO_UNDERLINE_SINGLE should be used for extended
// *  portions of text.
// *@PANGO_UNDERLINE_ERROR: an underline indicating an error should
// *  be drawn below. The exact style of rendering is up to the
// *  `PangoRenderer` in use, but typical styles include wavy
// *  or dotted lines.
// *  This underline is typically used to indicate an error such
// *  as a possible mispelling; in some cases a contrasting color
// *  may automatically be used. This type of underlining is
// *  available since Pango 1.4.
// *@PANGO_UNDERLINE_SINGLE_LINE: Like @PANGO_UNDERLINE_SINGLE, but
// *  drawn continuously across multiple runs. This type
// *  of underlining is available since Pango 1.46.
// *@PANGO_UNDERLINE_DOUBLE_LINE: Like @PANGO_UNDERLINE_DOUBLE, but
// *  drawn continuously across multiple runs. This type
// *  of underlining is available since Pango 1.46.
// *@PANGO_UNDERLINE_ERROR_LINE: Like @PANGO_UNDERLINE_ERROR, but
// *  drawn continuously across multiple runs. This type
// *  of underlining is available since Pango 1.46.
// * *The `PangoUnderline` enumeration is used to specify whether text
// *should be underlined, and if so, the type of underlining.
//
pub enum PangoUnderline {
	pango_underline_none
	pango_underline_single
	pango_underline_double
	pango_underline_low
	pango_underline_error
	pango_underline_single_line
	pango_underline_double_line
	pango_underline_error_line
}

//* *PangoOverline:
// *@PANGO_OVERLINE_NONE: no overline should be drawn
// *@PANGO_OVERLINE_SINGLE: Draw a single line above the ink
// *  extents of the text being underlined.
// * *The `PangoOverline` enumeration is used to specify whether text
// *should be overlined, and if so, the type of line.
// * *Since: 1.46
//
pub enum PangoOverline {
	pango_overline_none
	pango_overline_single
}

//* *PangoShowFlags:
// *@PANGO_SHOW_NONE: No special treatment for invisible characters
// *@PANGO_SHOW_SPACES: Render spaces, tabs and newlines visibly
// *@PANGO_SHOW_LINE_BREAKS: Render line breaks visibly
// *@PANGO_SHOW_IGNORABLES: Render default-ignorable Unicode
// *  characters visibly
// * *These flags affect how Pango treats characters that are normally
// *not visible in the output.
// * *Since: 1.44
//
pub enum PangoShowFlags {
	pango_show_none        = 0
	pango_show_spaces      = 1 << 0
	pango_show_line_breaks = 1 << 1
	pango_show_ignorables  = 1 << 2
}

//* *PangoTextTransform:
// *@PANGO_TEXT_TRANSFORM_NONE: Leave text unchanged
// *@PANGO_TEXT_TRANSFORM_LOWERCASE: Display letters and numbers as lowercase
// *@PANGO_TEXT_TRANSFORM_UPPERCASE: Display letters and numbers as uppercase
// *@PANGO_TEXT_TRANSFORM_CAPITALIZE: Display the first character of a word
// *  in titlecase
// * *An enumeration that affects how Pango treats characters during shaping.
// * *Since: 1.50
//
pub enum PangoTextTransform {
	pango_text_transform_none
	pango_text_transform_lowercase
	pango_text_transform_uppercase
	pango_text_transform_capitalize
}

//* *PangoBaselineShift:
// *@PANGO_BASELINE_SHIFT_NONE: Leave the baseline unchanged
// *@PANGO_BASELINE_SHIFT_SUPERSCRIPT: Shift the baseline to the superscript position,
// *  relative to the previous run
// *@PANGO_BASELINE_SHIFT_SUBSCRIPT: Shift the baseline to the subscript position,
// *  relative to the previous run
// * *An enumeration that affects baseline shifts between runs.
// * *Since: 1.50
//
pub enum PangoBaselineShift {
	pango_baseline_shift_none
	pango_baseline_shift_superscript
	pango_baseline_shift_subscript
}

//* *PangoFontScale:
// *@PANGO_FONT_SCALE_NONE: Leave the font size unchanged
// *@PANGO_FONT_SCALE_SUPERSCRIPT: Change the font to a size suitable for superscripts
// *@PANGO_FONT_SCALE_SUBSCRIPT: Change the font to a size suitable for subscripts
// *@PANGO_FONT_SCALE_SMALL_CAPS: Change the font to a size suitable for Small Caps
// * *An enumeration that affects font sizes for superscript
// *and subscript positioning and for (emulated) Small Caps.
// * *Since: 1.50
//
pub enum PangoFontScale {
	pango_font_scale_none
	pango_font_scale_superscript
	pango_font_scale_subscript
	pango_font_scale_small_caps
}

//* *PANGO_ATTR_INDEX_FROM_TEXT_BEGINNING:
// * *Value for @start_index in `PangoAttribute` that indicates
// *the beginning of the text.
// * *Since: 1.24
//
//* *PANGO_ATTR_INDEX_TO_TEXT_END: (value 4294967295)
// * *Value for @end_index in `PangoAttribute` that indicates
// *the end of the text.
// * *Since: 1.24
//
//* *PangoAttribute:
// *@klass: the class structure holding information about the type of the attribute
// *@start_index: the start index of the range (in bytes).
// *@end_index: end index of the range (in bytes). The character at this index
// *  is not included in the range.
// * *The `PangoAttribute` structure represents the common portions of all
// *attributes.
// * *Particular types of attributes include this structure as their initial
// *portion. The common portion of the attribute holds the range to which
// *the value in the type-specific part of the attribute applies and should
// *be initialized using [method@Pango.Attribute.init]. By default, an attribute
// *will have an all-inclusive range of [0,%G_MAXUINT].
//
pub struct PangoAttrFilterFunc {
	klass       &PangoAttrClass
	start_index Guint
	end_index   Guint
}

//* *PangoAttrFilterFunc:
// *@attribute: a Pango attribute
// *@user_data: user data passed to the function
// * *Type of a function filtering a list of attributes.
// * *Return value: %TRUE if the attribute should be selected for
// *  filtering, %FALSE otherwise.
//
//* *PangoAttrDataCopyFunc:
// *@user_data: user data to copy
// * *Type of a function that can duplicate user data for an attribute.
// * *Return value: new copy of @user_data.
// */
// typedef gpointer (*angoAttrDataCopyFunc) (gconstpointer user_data);
//
///*
// *PangoAttrClass:
// *@type: the type ID for this attribute
// *@copy: function to duplicate an attribute of this type
// *  (see [method@Pango.Attribute.copy])
// *@destroy: function to free an attribute of this type
// *  (see [method@Pango.Attribute.destroy])
// *@equal: function to check two attributes of this type for equality
// *  (see [method@Pango.Attribute.equal])
// * *The `PangoAttrClass` structure stores the type and operations for
// *a particular type of attribute.
// * *The functions in this structure should not be called directly. Instead,
// *one should use the wrapper functions provided for `PangoAttribute`.
//
pub type PangoAttrDataCopyFunc = fn (Gconstpointer) Gpointer

pub struct PangoAttrClass_vdup10 {
	//< public >
	type_   PangoAttrType
	copy    fn (&PangoAttribute) &PangoAttribute
	destroy fn (&PangoAttribute)
	equal   fn (&PangoAttribute, &PangoAttribute) Gboolean
}

//* *PangoAttrString:
// *@attr: the common portion of the attribute
// *@value: the string which is the value of the attribute
// * *The `PangoAttrString` structure is used to represent attributes with
// *a string value.
//
pub struct PangoAttrString_vdup11 {
	attr  PangoAttribute
	value &i8
}

//* *PangoAttrLanguage:
// *@attr: the common portion of the attribute
// *@value: the `PangoLanguage` which is the value of the attribute
// * *The `PangoAttrLanguage` structure is used to represent attributes that
// *are languages.
//
pub struct PangoAttrLanguage_vdup12 {
	attr  PangoAttribute
	value &PangoLanguage
}

//* *PangoAttrInt:
// *@attr: the common portion of the attribute
// *@value: the value of the attribute
// * *The `PangoAttrInt` structure is used to represent attributes with
// *an integer or enumeration value.
//
pub struct PangoAttrInt_vdup13 {
	attr  PangoAttribute
	value int
}

//* *PangoAttrFloat:
// *@attr: the common portion of the attribute
// *@value: the value of the attribute
// * *The `PangoAttrFloat` structure is used to represent attributes with
// *a float or double value.
//
pub struct PangoAttrFloat_vdup14 {
	attr  PangoAttribute
	value f64
}

//* *PangoAttrColor:
// *@attr: the common portion of the attribute
// *@color: the `PangoColor` which is the value of the attribute
// * *The `PangoAttrColor` structure is used to represent attributes that
// *are colors.
//
pub struct PangoAttrColor_vdup15 {
	attr  PangoAttribute
	color PangoColor
}

//* *PangoAttrSize:
// *@attr: the common portion of the attribute
// *@size: size of font, in units of 1/%PANGO_SCALE of a point (for
// *  %PANGO_ATTR_SIZE) or of a device unit (for %PANGO_ATTR_ABSOLUTE_SIZE)
// *@absolute: whether the font size is in device units or points.
// *  This field is only present for compatibility with Pango-1.8.0
// *  (%PANGO_ATTR_ABSOLUTE_SIZE was added in 1.8.1); and always will
// *  be %FALSE for %PANGO_ATTR_SIZE and %TRUE for %PANGO_ATTR_ABSOLUTE_SIZE.
// * *The `PangoAttrSize` structure is used to represent attributes which
// *set font size.
//
pub struct PangoAttrSize_vdup16 {
	attr     PangoAttribute
	size     int
	absolute Guint
}

//* *PangoAttrShape:
// *@attr: the common portion of the attribute
// *@ink_rect: the ink rectangle to restrict to
// *@logical_rect: the logical rectangle to restrict to
// *@data: user data set (see [func@Pango.AttrShape.new_with_data])
// *@copy_func: copy function for the user data
// *@destroy_func: destroy function for the user data
// * *The `PangoAttrShape` structure is used to represent attributes which
// *impose shape restrictions.
//
pub struct PangoAttrShape_vdup17 {
	attr         PangoAttribute
	ink_rect     PangoRectangle
	logical_rect PangoRectangle
	data         Gpointer
	copy_func    PangoAttrDataCopyFunc
	destroy_func GDestroyNotify
}

//* *PangoAttrFontDesc:
// *@attr: the common portion of the attribute
// *@desc: the font description which is the value of this attribute
// * *The `PangoAttrFontDesc` structure is used to store an attribute that
// *sets all aspects of the font description at once.
//
pub struct PangoAttrFontDesc_vdup18 {
	attr PangoAttribute
	desc &PangoFontDescription
}

//* *PangoAttrFontFeatures:
// *@attr: the common portion of the attribute
// *@features: the features, as a string in CSS syntax
// * *The `PangoAttrFontFeatures` structure is used to represent OpenType
// *font features as an attribute.
// * *Since: 1.38
//
pub struct PangoAttrFontFeatures_vdup19 {
	attr     PangoAttribute
	features &Gchar
}

fn C.pango_attribute_get_type() GType

pub fn pango_attribute_get_type() GType {
	return C.pango_attribute_get_type()
}

fn C.pango_attr_type_register(name &i8) PangoAttrType

pub fn pango_attr_type_register(name &i8) PangoAttrType {
	return C.pango_attr_type_register(name)
}

fn C.pango_attr_type_get_name(type_ PangoAttrType) &i8

pub fn pango_attr_type_get_name(type_ PangoAttrType) &i8 {
	return C.pango_attr_type_get_name(type_)
}

fn C.pango_attribute_init(attr &PangoAttribute, klass &PangoAttrClass)

pub fn pango_attribute_init(attr &PangoAttribute, klass &PangoAttrClass) {
	C.pango_attribute_init(attr, klass)
}

fn C.pango_attribute_copy(attr &PangoAttribute) &PangoAttribute

pub fn pango_attribute_copy(attr &PangoAttribute) &PangoAttribute {
	return C.pango_attribute_copy(attr)
}

fn C.pango_attribute_destroy(attr &PangoAttribute)

pub fn pango_attribute_destroy(attr &PangoAttribute) {
	C.pango_attribute_destroy(attr)
}

fn C.pango_attribute_equal(attr1 &PangoAttribute, attr2 &PangoAttribute) Gboolean

pub fn pango_attribute_equal(attr1 &PangoAttribute, attr2 &PangoAttribute) Gboolean {
	return C.pango_attribute_equal(attr1, attr2)
}

fn C.pango_attr_language_new(language &PangoLanguage) &PangoAttribute

pub fn pango_attr_language_new(language &PangoLanguage) &PangoAttribute {
	return C.pango_attr_language_new(language)
}

fn C.pango_attr_family_new(family &i8) &PangoAttribute

pub fn pango_attr_family_new(family &i8) &PangoAttribute {
	return C.pango_attr_family_new(family)
}

fn C.pango_attr_foreground_new(red Guint16, green Guint16, blue Guint16) &PangoAttribute

pub fn pango_attr_foreground_new(red Guint16, green Guint16, blue Guint16) &PangoAttribute {
	return C.pango_attr_foreground_new(red, green, blue)
}

fn C.pango_attr_background_new(red Guint16, green Guint16, blue Guint16) &PangoAttribute

pub fn pango_attr_background_new(red Guint16, green Guint16, blue Guint16) &PangoAttribute {
	return C.pango_attr_background_new(red, green, blue)
}

fn C.pango_attr_size_new(size int) &PangoAttribute

pub fn pango_attr_size_new(size int) &PangoAttribute {
	return C.pango_attr_size_new(size)
}

fn C.pango_attr_size_new_absolute(size int) &PangoAttribute

pub fn pango_attr_size_new_absolute(size int) &PangoAttribute {
	return C.pango_attr_size_new_absolute(size)
}

fn C.pango_attr_style_new(style PangoStyle) &PangoAttribute

pub fn pango_attr_style_new(style PangoStyle) &PangoAttribute {
	return C.pango_attr_style_new(style)
}

fn C.pango_attr_weight_new(weight PangoWeight) &PangoAttribute

pub fn pango_attr_weight_new(weight PangoWeight) &PangoAttribute {
	return C.pango_attr_weight_new(weight)
}

fn C.pango_attr_variant_new(variant PangoVariant) &PangoAttribute

pub fn pango_attr_variant_new(variant PangoVariant) &PangoAttribute {
	return C.pango_attr_variant_new(variant)
}

fn C.pango_attr_stretch_new(stretch PangoStretch) &PangoAttribute

pub fn pango_attr_stretch_new(stretch PangoStretch) &PangoAttribute {
	return C.pango_attr_stretch_new(stretch)
}

fn C.pango_attr_font_desc_new(desc &PangoFontDescription) &PangoAttribute

pub fn pango_attr_font_desc_new(desc &PangoFontDescription) &PangoAttribute {
	return C.pango_attr_font_desc_new(desc)
}

fn C.pango_attr_underline_new(underline PangoUnderline) &PangoAttribute

pub fn pango_attr_underline_new(underline PangoUnderline) &PangoAttribute {
	return C.pango_attr_underline_new(underline)
}

fn C.pango_attr_underline_color_new(red Guint16, green Guint16, blue Guint16) &PangoAttribute

pub fn pango_attr_underline_color_new(red Guint16, green Guint16, blue Guint16) &PangoAttribute {
	return C.pango_attr_underline_color_new(red, green, blue)
}

fn C.pango_attr_strikethrough_new(strikethrough Gboolean) &PangoAttribute

pub fn pango_attr_strikethrough_new(strikethrough Gboolean) &PangoAttribute {
	return C.pango_attr_strikethrough_new(strikethrough)
}

fn C.pango_attr_strikethrough_color_new(red Guint16, green Guint16, blue Guint16) &PangoAttribute

pub fn pango_attr_strikethrough_color_new(red Guint16, green Guint16, blue Guint16) &PangoAttribute {
	return C.pango_attr_strikethrough_color_new(red, green, blue)
}

fn C.pango_attr_rise_new(rise int) &PangoAttribute

pub fn pango_attr_rise_new(rise int) &PangoAttribute {
	return C.pango_attr_rise_new(rise)
}

fn C.pango_attr_baseline_shift_new(shift int) &PangoAttribute

pub fn pango_attr_baseline_shift_new(shift int) &PangoAttribute {
	return C.pango_attr_baseline_shift_new(shift)
}

fn C.pango_attr_font_scale_new(scale PangoFontScale) &PangoAttribute

pub fn pango_attr_font_scale_new(scale PangoFontScale) &PangoAttribute {
	return C.pango_attr_font_scale_new(scale)
}

fn C.pango_attr_scale_new(scale_factor f64) &PangoAttribute

pub fn pango_attr_scale_new(scale_factor f64) &PangoAttribute {
	return C.pango_attr_scale_new(scale_factor)
}

fn C.pango_attr_fallback_new(enable_fallback Gboolean) &PangoAttribute

pub fn pango_attr_fallback_new(enable_fallback Gboolean) &PangoAttribute {
	return C.pango_attr_fallback_new(enable_fallback)
}

fn C.pango_attr_letter_spacing_new(letter_spacing int) &PangoAttribute

pub fn pango_attr_letter_spacing_new(letter_spacing int) &PangoAttribute {
	return C.pango_attr_letter_spacing_new(letter_spacing)
}

fn C.pango_attr_shape_new(ink_rect &PangoRectangle, logical_rect &PangoRectangle) &PangoAttribute

pub fn pango_attr_shape_new(ink_rect &PangoRectangle, logical_rect &PangoRectangle) &PangoAttribute {
	return C.pango_attr_shape_new(ink_rect, logical_rect)
}

fn C.pango_attr_shape_new_with_data(ink_rect &PangoRectangle, logical_rect &PangoRectangle, data Gpointer, copy_func PangoAttrDataCopyFunc, destroy_func GDestroyNotify) &PangoAttribute

pub fn pango_attr_shape_new_with_data(ink_rect &PangoRectangle, logical_rect &PangoRectangle, data Gpointer, copy_func PangoAttrDataCopyFunc, destroy_func GDestroyNotify) &PangoAttribute {
	return C.pango_attr_shape_new_with_data(ink_rect, logical_rect, data, copy_func, destroy_func)
}

fn C.pango_attr_gravity_new(gravity PangoGravity) &PangoAttribute

pub fn pango_attr_gravity_new(gravity PangoGravity) &PangoAttribute {
	return C.pango_attr_gravity_new(gravity)
}

fn C.pango_attr_gravity_hint_new(hint PangoGravityHint) &PangoAttribute

pub fn pango_attr_gravity_hint_new(hint PangoGravityHint) &PangoAttribute {
	return C.pango_attr_gravity_hint_new(hint)
}

fn C.pango_attr_font_features_new(features &i8) &PangoAttribute

pub fn pango_attr_font_features_new(features &i8) &PangoAttribute {
	return C.pango_attr_font_features_new(features)
}

fn C.pango_attr_foreground_alpha_new(alpha Guint16) &PangoAttribute

pub fn pango_attr_foreground_alpha_new(alpha Guint16) &PangoAttribute {
	return C.pango_attr_foreground_alpha_new(alpha)
}

fn C.pango_attr_background_alpha_new(alpha Guint16) &PangoAttribute

pub fn pango_attr_background_alpha_new(alpha Guint16) &PangoAttribute {
	return C.pango_attr_background_alpha_new(alpha)
}

fn C.pango_attr_allow_breaks_new(allow_breaks Gboolean) &PangoAttribute

pub fn pango_attr_allow_breaks_new(allow_breaks Gboolean) &PangoAttribute {
	return C.pango_attr_allow_breaks_new(allow_breaks)
}

fn C.pango_attr_word_new() &PangoAttribute

pub fn pango_attr_word_new() &PangoAttribute {
	return C.pango_attr_word_new()
}

fn C.pango_attr_sentence_new() &PangoAttribute

pub fn pango_attr_sentence_new() &PangoAttribute {
	return C.pango_attr_sentence_new()
}

fn C.pango_attr_insert_hyphens_new(insert_hyphens Gboolean) &PangoAttribute

pub fn pango_attr_insert_hyphens_new(insert_hyphens Gboolean) &PangoAttribute {
	return C.pango_attr_insert_hyphens_new(insert_hyphens)
}

fn C.pango_attr_overline_new(overline PangoOverline) &PangoAttribute

pub fn pango_attr_overline_new(overline PangoOverline) &PangoAttribute {
	return C.pango_attr_overline_new(overline)
}

fn C.pango_attr_overline_color_new(red Guint16, green Guint16, blue Guint16) &PangoAttribute

pub fn pango_attr_overline_color_new(red Guint16, green Guint16, blue Guint16) &PangoAttribute {
	return C.pango_attr_overline_color_new(red, green, blue)
}

fn C.pango_attr_show_new(flags PangoShowFlags) &PangoAttribute

pub fn pango_attr_show_new(flags PangoShowFlags) &PangoAttribute {
	return C.pango_attr_show_new(flags)
}

fn C.pango_attr_line_height_new(factor f64) &PangoAttribute

pub fn pango_attr_line_height_new(factor f64) &PangoAttribute {
	return C.pango_attr_line_height_new(factor)
}

fn C.pango_attr_line_height_new_absolute(height int) &PangoAttribute

pub fn pango_attr_line_height_new_absolute(height int) &PangoAttribute {
	return C.pango_attr_line_height_new_absolute(height)
}

fn C.pango_attr_text_transform_new(transform PangoTextTransform) &PangoAttribute

pub fn pango_attr_text_transform_new(transform PangoTextTransform) &PangoAttribute {
	return C.pango_attr_text_transform_new(transform)
}

fn C.pango_attribute_as_string(attr &PangoAttribute) &PangoAttrString

pub fn pango_attribute_as_string(attr &PangoAttribute) &PangoAttrString {
	return C.pango_attribute_as_string(attr)
}

fn C.pango_attribute_as_language(attr &PangoAttribute) &PangoAttrLanguage

pub fn pango_attribute_as_language(attr &PangoAttribute) &PangoAttrLanguage {
	return C.pango_attribute_as_language(attr)
}

fn C.pango_attribute_as_int(attr &PangoAttribute) &PangoAttrInt

pub fn pango_attribute_as_int(attr &PangoAttribute) &PangoAttrInt {
	return C.pango_attribute_as_int(attr)
}

fn C.pango_attribute_as_size(attr &PangoAttribute) &PangoAttrSize

pub fn pango_attribute_as_size(attr &PangoAttribute) &PangoAttrSize {
	return C.pango_attribute_as_size(attr)
}

fn C.pango_attribute_as_float(attr &PangoAttribute) &PangoAttrFloat

pub fn pango_attribute_as_float(attr &PangoAttribute) &PangoAttrFloat {
	return C.pango_attribute_as_float(attr)
}

fn C.pango_attribute_as_color(attr &PangoAttribute) &PangoAttrColor

pub fn pango_attribute_as_color(attr &PangoAttribute) &PangoAttrColor {
	return C.pango_attribute_as_color(attr)
}

fn C.pango_attribute_as_font_desc(attr &PangoAttribute) &PangoAttrFontDesc

pub fn pango_attribute_as_font_desc(attr &PangoAttribute) &PangoAttrFontDesc {
	return C.pango_attribute_as_font_desc(attr)
}

fn C.pango_attribute_as_shape(attr &PangoAttribute) &PangoAttrShape

pub fn pango_attribute_as_shape(attr &PangoAttribute) &PangoAttrShape {
	return C.pango_attribute_as_shape(attr)
}

fn C.pango_attribute_as_font_features(attr &PangoAttribute) &PangoAttrFontFeatures

pub fn pango_attribute_as_font_features(attr &PangoAttribute) &PangoAttrFontFeatures {
	return C.pango_attribute_as_font_features(attr)
}

// Attribute lists
//* *PangoAttrIterator:
// * *A `PangoAttrIterator` is used to iterate through a `PangoAttrList`.
// * *A new iterator is created with [method@Pango.AttrList.get_iterator].
// *Once the iterator is created, it can be advanced through the style
// *changes in the text using [method@Pango.AttrIterator.next]. At each
// *style change, the range of the current style segment and the attributes
// *currently in effect can be queried.
//
//* *PangoAttrList:
// * *A `PangoAttrList` represents a list of attributes that apply to a section
// *of text.
// * *The attributes in a `PangoAttrList` are, in general, allowed to overlap in
// *an arbitrary fashion. However, if the attributes are manipulated only through
// *[method@Pango.AttrList.change], the overlap between properties will meet
// *stricter criteria.
// * *Since the `PangoAttrList` structure is stored as a linear list, it is not
// *suitable for storing attributes for large amounts of text. In general, you
// *should not use a single `PangoAttrList` for more than one paragraph of text.
//
fn C.pango_attr_list_get_type() GType

pub fn pango_attr_list_get_type() GType {
	return C.pango_attr_list_get_type()
}

fn C.pango_attr_list_new() &PangoAttrList

pub fn pango_attr_list_new() &PangoAttrList {
	return C.pango_attr_list_new()
}

fn C.pango_attr_list_ref(list &PangoAttrList) &PangoAttrList

pub fn pango_attr_list_ref(list &PangoAttrList) &PangoAttrList {
	return C.pango_attr_list_ref(list)
}

fn C.pango_attr_list_unref(list &PangoAttrList)

pub fn pango_attr_list_unref(list &PangoAttrList) {
	C.pango_attr_list_unref(list)
}

fn C.pango_attr_list_copy(list &PangoAttrList) &PangoAttrList

pub fn pango_attr_list_copy(list &PangoAttrList) &PangoAttrList {
	return C.pango_attr_list_copy(list)
}

fn C.pango_attr_list_insert(list &PangoAttrList, attr &PangoAttribute)

pub fn pango_attr_list_insert(list &PangoAttrList, attr &PangoAttribute) {
	C.pango_attr_list_insert(list, attr)
}

fn C.pango_attr_list_insert_before(list &PangoAttrList, attr &PangoAttribute)

pub fn pango_attr_list_insert_before(list &PangoAttrList, attr &PangoAttribute) {
	C.pango_attr_list_insert_before(list, attr)
}

fn C.pango_attr_list_change(list &PangoAttrList, attr &PangoAttribute)

pub fn pango_attr_list_change(list &PangoAttrList, attr &PangoAttribute) {
	C.pango_attr_list_change(list, attr)
}

fn C.pango_attr_list_splice(list &PangoAttrList, other &PangoAttrList, pos int, len int)

pub fn pango_attr_list_splice(list &PangoAttrList, other &PangoAttrList, pos int, len int) {
	C.pango_attr_list_splice(list, other, pos, len)
}

fn C.pango_attr_list_update(list &PangoAttrList, pos int, remove int, add int)

pub fn pango_attr_list_update(list &PangoAttrList, pos int, remove int, add int) {
	C.pango_attr_list_update(list, pos, remove, add)
}

fn C.pango_attr_list_filter(list &PangoAttrList, func PangoAttrFilterFunc, data Gpointer) &PangoAttrList

pub fn pango_attr_list_filter(list &PangoAttrList, func PangoAttrFilterFunc, data Gpointer) &PangoAttrList {
	return C.pango_attr_list_filter(list, func, data)
}

fn C.pango_attr_list_get_attributes(list &PangoAttrList) &GSList

pub fn pango_attr_list_get_attributes(list &PangoAttrList) &GSList {
	return C.pango_attr_list_get_attributes(list)
}

fn C.pango_attr_list_equal(list &PangoAttrList, other_list &PangoAttrList) Gboolean

pub fn pango_attr_list_equal(list &PangoAttrList, other_list &PangoAttrList) Gboolean {
	return C.pango_attr_list_equal(list, other_list)
}

fn C.pango_attr_list_to_string(list &PangoAttrList) &i8

pub fn pango_attr_list_to_string(list &PangoAttrList) &i8 {
	return C.pango_attr_list_to_string(list)
}

fn C.pango_attr_list_from_string(text &i8) &PangoAttrList

pub fn pango_attr_list_from_string(text &i8) &PangoAttrList {
	return C.pango_attr_list_from_string(text)
}

fn C.pango_attr_iterator_get_type() GType

pub fn pango_attr_iterator_get_type() GType {
	return C.pango_attr_iterator_get_type()
}

fn C.pango_attr_list_get_iterator(list &PangoAttrList) &PangoAttrIterator

pub fn pango_attr_list_get_iterator(list &PangoAttrList) &PangoAttrIterator {
	return C.pango_attr_list_get_iterator(list)
}

fn C.pango_attr_iterator_range(iterator &PangoAttrIterator, start &int, end &int)

pub fn pango_attr_iterator_range(iterator &PangoAttrIterator, start &int, end &int) {
	C.pango_attr_iterator_range(iterator, start, end)
}

fn C.pango_attr_iterator_next(iterator &PangoAttrIterator) Gboolean

pub fn pango_attr_iterator_next(iterator &PangoAttrIterator) Gboolean {
	return C.pango_attr_iterator_next(iterator)
}

fn C.pango_attr_iterator_copy(iterator &PangoAttrIterator) &PangoAttrIterator

pub fn pango_attr_iterator_copy(iterator &PangoAttrIterator) &PangoAttrIterator {
	return C.pango_attr_iterator_copy(iterator)
}

fn C.pango_attr_iterator_destroy(iterator &PangoAttrIterator)

pub fn pango_attr_iterator_destroy(iterator &PangoAttrIterator) {
	C.pango_attr_iterator_destroy(iterator)
}

fn C.pango_attr_iterator_get(iterator &PangoAttrIterator, type_ PangoAttrType) &PangoAttribute

pub fn pango_attr_iterator_get(iterator &PangoAttrIterator, type_ PangoAttrType) &PangoAttribute {
	return C.pango_attr_iterator_get(iterator, type_)
}

fn C.pango_attr_iterator_get_font(iterator &PangoAttrIterator, desc &PangoFontDescription, language &&PangoLanguage, extra_attrs &&GSList)

pub fn pango_attr_iterator_get_font(iterator &PangoAttrIterator, desc &PangoFontDescription, language &&PangoLanguage, extra_attrs &&GSList) {
	C.pango_attr_iterator_get_font(iterator, desc, language, extra_attrs)
}

fn C.pango_attr_iterator_get_attrs(iterator &PangoAttrIterator) &GSList

pub fn pango_attr_iterator_get_attrs(iterator &PangoAttrIterator) &GSList {
	return C.pango_attr_iterator_get_attrs(iterator)
}

pub type PangoAttribute_autoptr = &PangoAttribute
pub type PangoAttribute_listautoptr = &GList
pub type PangoAttribute_slistautoptr = &GSList
pub type PangoAttribute_queueautoptr = &GQueue
pub type PangoAttrList_autoptr = &PangoAttrList
pub type PangoAttrList_listautoptr = &GList
pub type PangoAttrList_slistautoptr = &GSList
pub type PangoAttrList_queueautoptr = &GQueue
pub type PangoAttrIterator_autoptr = &PangoAttrIterator
pub type PangoAttrIterator_listautoptr = &GList
pub type PangoAttrIterator_slistautoptr = &GSList
pub type PangoAttrIterator_queueautoptr = &GQueue

// __PANGO_ATTRIBUTES_H__
// Pango
// *pango-item.h: Structure for storing run information
// * *Copyright (C) 2000 Red Hat Software
// * *This library is free software; you can redistribute it and/or
// *modify it under the terms of the GNU Library General Public
// *License as published by the Free Software Foundation; either
// *version 2 of the License, or (at your option) any later version.
// * *This library is distributed in the hope that it will be useful,
// *but WITHOUT ANY WARRANTY; without even the implied warranty of
// *MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
// *Library General Public License for more details.
// * *You should have received a copy of the GNU Library General Public
// *License along with this library; if not, write to the
// *Free Software Foundation, Inc., 59 Temple Place - Suite 330,
// *Boston, MA 02111-1307, USA.
//
//* *PANGO_ANALYSIS_FLAG_CENTERED_BASELINE:
// * *Whether the segment should be shifted to center around the baseline.
// * *This is mainly used in vertical writing directions.
// * *Since: 1.16
//
//* *PANGO_ANALYSIS_FLAG_IS_ELLIPSIS:
// * *Whether this run holds ellipsized text.
// * *Since: 1.36.7
//
//* *PANGO_ANALYSIS_FLAG_NEED_HYPHEN:
// * *Whether to add a hyphen at the end of the run during shaping.
// * *Since: 1.44
//
//* *PangoAnalysis:
// *@shape_engine: unused, reserved
// *@lang_engine: unused, reserved
// *@font: the font for this segment.
// *@level: the bidirectional level for this segment.
// *@gravity: the glyph orientation for this segment (A `PangoGravity`).
// *@flags: boolean flags for this segment (Since: 1.16).
// *@script: the detected script for this segment (A `PangoScript`) (Since: 1.18).
// *@language: the detected language for this segment.
// *@extra_attrs: extra attributes for this segment.
// * *The `PangoAnalysis` structure stores information about
// *the properties of a segment of text.
//
pub struct PangoAnalysis_vdup20 {
	shape_engine &PangoEngineShape
	lang_engine  &PangoEngineLang
	font         &PangoFont
	level        Guint8
	gravity      Guint8
	flags        Guint8
	script       Guint8
	language     &PangoLanguage
	extra_attrs  &GSList
}

//* *PangoItem:
// *@offset: byte offset of the start of this item in text.
// *@length: length of this item in bytes.
// *@num_chars: number of Unicode characters in the item.
// *@char_offset: character offset of the start of this item in text. Since 1.50
// *@analysis: analysis results for the item.
// * *The `PangoItem` structure stores information about a segment of text.
// * *You typically obtain `PangoItems` by itemizing a piece of text
// *with [func@itemize].
//
pub struct PangoItem_vdup21 {
	offset    int
	length    int
	num_chars int
	analysis  PangoAnalysis
}

fn C.pango_item_get_type() GType

pub fn pango_item_get_type() GType {
	return C.pango_item_get_type()
}

fn C.pango_item_new() &PangoItem

pub fn pango_item_new() &PangoItem {
	return C.pango_item_new()
}

fn C.pango_item_copy(item &PangoItem) &PangoItem

pub fn pango_item_copy(item &PangoItem) &PangoItem {
	return C.pango_item_copy(item)
}

fn C.pango_item_free(item &PangoItem)

pub fn pango_item_free(item &PangoItem) {
	C.pango_item_free(item)
}

fn C.pango_item_split(orig &PangoItem, split_index int, split_offset int) &PangoItem

pub fn pango_item_split(orig &PangoItem, split_index int, split_offset int) &PangoItem {
	return C.pango_item_split(orig, split_index, split_offset)
}

fn C.pango_item_apply_attrs(item &PangoItem, iter &PangoAttrIterator)

pub fn pango_item_apply_attrs(item &PangoItem, iter &PangoAttrIterator) {
	C.pango_item_apply_attrs(item, iter)
}

fn C.pango_reorder_items(items &GList) &GList

pub fn pango_reorder_items(items &GList) &GList {
	return C.pango_reorder_items(items)
}

// Itemization
fn C.pango_itemize(context &PangoContext, text &i8, start_index int, length int, attrs &PangoAttrList, cached_iter &PangoAttrIterator) &GList

pub fn pango_itemize(context &PangoContext, text &i8, start_index int, length int, attrs &PangoAttrList, cached_iter &PangoAttrIterator) &GList {
	return C.pango_itemize(context, text, start_index, length, attrs, cached_iter)
}

fn C.pango_itemize_with_base_dir(context &PangoContext, base_dir PangoDirection, text &i8, start_index int, length int, attrs &PangoAttrList, cached_iter &PangoAttrIterator) &GList

pub fn pango_itemize_with_base_dir(context &PangoContext, base_dir PangoDirection, text &i8, start_index int, length int, attrs &PangoAttrList, cached_iter &PangoAttrIterator) &GList {
	return C.pango_itemize_with_base_dir(context, base_dir, text, start_index, length,
		attrs, cached_iter)
}

// __PANGO_ITEM_H__
// Pango
// *pango-break.h:
// * *Copyright (C) 1999 Red Hat Software
// * *This library is free software; you can redistribute it and/or
// *modify it under the terms of the GNU Library General Public
// *License as published by the Free Software Foundation; either
// *version 2 of the License, or (at your option) any later version.
// * *This library is distributed in the hope that it will be useful,
// *but WITHOUT ANY WARRANTY; without even the implied warranty of
// *MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
// *Library General Public License for more details.
// * *You should have received a copy of the GNU Library General Public
// *License along with this library; if not, write to the
// *Free Software Foundation, Inc., 59 Temple Place - Suite 330,
// *Boston, MA 02111-1307, USA.
//
// Logical attributes of a character.
//
//* *PangoLogAttr:
// *@is_line_break: if set, can break line in front of character
// *@is_mandatory_break: if set, must break line in front of character
// *@is_char_break: if set, can break here when doing character wrapping
// *@is_white: is whitespace character
// *@is_cursor_position: if set, cursor can appear in front of character.
// *  i.e. this is a grapheme boundary, or the first character in the text.
// *  This flag implements Unicode's
// *  [Grapheme Cluster Boundaries](http://www.unicode.org/reports/tr29/)
// *  semantics.
// *@is_word_start: is first character in a word
// *@is_word_end: is first non-word char after a word
// *  Note that in degenerate cases, you could have both @is_word_start
// *  and @is_word_end set for some character.
// *@is_sentence_boundary: is a sentence boundary.
// *  There are two ways to divide sentences. The first assigns all
// *  inter-sentence whitespace/control/format chars to some sentence,
// *  so all chars are in some sentence; @is_sentence_boundary denotes
// *  the boundaries there. The second way doesn't assign
// *  between-sentence spaces, etc. to any sentence, so
// *  @is_sentence_start/@is_sentence_end mark the boundaries of those sentences.
// *@is_sentence_start: is first character in a sentence
// *@is_sentence_end: is first char after a sentence.
// *  Note that in degenerate cases, you could have both @is_sentence_start
// *  and @is_sentence_end set for some character. (e.g. no space after a
// *  period, so the next sentence starts right away)
// *@backspace_deletes_character: if set, backspace deletes one character
// *  rather than the entire grapheme cluster. This field is only meaningful
// *  on grapheme boundaries (where @is_cursor_position is set). In some languages,
// *  the full grapheme (e.g. letter + diacritics) is considered a unit, while in
// *  others, each decomposed character in the grapheme is a unit. In the default
// *  implementation of [func@break], this bit is set on all grapheme boundaries
// *  except those following Latin, Cyrillic or Greek base characters.
// *@is_expandable_space: is a whitespace character that can possibly be
// *  expanded for justification purposes. (Since: 1.18)
// *@is_word_boundary: is a word boundary, as defined by UAX#29.
// *  More specifically, means that this is not a position in the middle of a word.
// *  For example, both sides of a punctuation mark are considered word boundaries.
// *  This flag is particularly useful when selecting text word-by-word. This flag
// *  implements Unicode's [Word Boundaries](http://www.unicode.org/reports/tr29/)
// *  semantics. (Since: 1.22)
// *@break_inserts_hyphen: when breaking lines before this char, insert a hyphen.
// *  Since: 1.50
// *@break_removes_preceding: when breaking lines before this char, remove the
// *  preceding char. Since 1.50
// * *The `PangoLogAttr` structure stores information about the attributes of a
// *single character.
//
pub struct PangoLogAttr_vdup22 {
	is_line_break               Guint
	is_mandatory_break          Guint
	is_char_break               Guint
	is_white                    Guint
	is_cursor_position          Guint
	is_word_start               Guint
	is_word_end                 Guint
	is_sentence_boundary        Guint
	is_sentence_start           Guint
	is_sentence_end             Guint
	backspace_deletes_character Guint
	is_expandable_space         Guint
	is_word_boundary            Guint
	break_inserts_hyphen        Guint
	break_removes_preceding     Guint
	reserved                    Guint
}

fn C.pango_break(text &i8, length int, analysis &PangoAnalysis, attrs &PangoLogAttr, attrs_len int)

pub fn pango_break(text &i8, length int, analysis &PangoAnalysis, attrs &PangoLogAttr, attrs_len int) {
	C.pango_break(text, length, analysis, attrs, attrs_len)
}

fn C.pango_get_log_attrs(text &i8, length int, level int, language &PangoLanguage, attrs &PangoLogAttr, attrs_len int)

pub fn pango_get_log_attrs(text &i8, length int, level int, language &PangoLanguage, attrs &PangoLogAttr, attrs_len int) {
	C.pango_get_log_attrs(text, length, level, language, attrs, attrs_len)
}

fn C.pango_default_break(text &i8, length int, analysis &PangoAnalysis, attrs &PangoLogAttr, attrs_len int)

pub fn pango_default_break(text &i8, length int, analysis &PangoAnalysis, attrs &PangoLogAttr, attrs_len int) {
	C.pango_default_break(text, length, analysis, attrs, attrs_len)
}

fn C.pango_tailor_break(text &i8, length int, analysis &PangoAnalysis, offset int, attrs &PangoLogAttr, attrs_len int)

pub fn pango_tailor_break(text &i8, length int, analysis &PangoAnalysis, offset int, attrs &PangoLogAttr, attrs_len int) {
	C.pango_tailor_break(text, length, analysis, offset, attrs, attrs_len)
}

fn C.pango_attr_break(text &i8, length int, attr_list &PangoAttrList, offset int, attrs &PangoLogAttr, attrs_len int)

pub fn pango_attr_break(text &i8, length int, attr_list &PangoAttrList, offset int, attrs &PangoLogAttr, attrs_len int) {
	C.pango_attr_break(text, length, attr_list, offset, attrs, attrs_len)
}

// __PANGO_BREAK_H__
// Pango
// *pango-fontset.h: Font set handling
// * *Copyright (C) 2001 Red Hat Software
// * *This library is free software; you can redistribute it and/or
// *modify it under the terms of the GNU Library General Public
// *License as published by the Free Software Foundation; either
// *version 2 of the License, or (at your option) any later version.
// * *This library is distributed in the hope that it will be useful,
// *but WITHOUT ANY WARRANTY; without even the implied warranty of
// *MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the GNU
// *Library General Public License for more details.
// * *You should have received a copy of the GNU Library General Public
// *License along with this library; if not, write to the
// *Free Software Foundation, Inc., 59 Temple Place - Suite 330,
// *Boston, MA 02111-1307, USA.
//
//
// *PangoFontset
//
fn C.pango_fontset_get_type() GType

pub fn pango_fontset_get_type() GType {
	return C.pango_fontset_get_type()
}

//* *PangoFontsetForeachFunc:
// *@fontset: a `PangoFontset`
// *@font: a font from @fontset
// *@user_data: callback data
// * *Callback used when enumerating fonts in a fontset.
// * *See [method@Pango.Fontset.foreach].
// * *Returns: if %TRUE, stop iteration and return immediately.
// * *Since: 1.4
//
pub type PangoFontsetForeachFunc = fn (&PangoFontset, &PangoFont, Gpointer) Gboolean

//* *PangoFontset:
// * *A `PangoFontset` represents a set of `PangoFont` to use when rendering text.
// * *A `PangoFontset` is the result of resolving a `PangoFontDescription`
// *against a particular `PangoContext`. It has operations for finding the
// *component font for a particular Unicode character, and for finding a
// *composite set of metrics for the entire fontset.
//
pub struct PangoFontset_vdup23 {
	parent_instance GObject
}

//* *PangoFontsetClass:
// *@parent_class: parent `GObjectClass`
// *@get_font: a function to get the font in the fontset that contains the
// *  best glyph for the given Unicode character; see [method@Pango.Fontset.get_font]
// *@get_metrics: a function to get overall metric information for the fonts
// *  in the fontset; see [method@Pango.Fontset.get_metrics]
// *@get_language: a function to get the language of the fontset.
// *@foreach: a function to loop over the fonts in the fontset. See
// *  [method@Pango.Fontset.foreach]
// * *The `PangoFontsetClass` structure holds the virtual functions for
// *a particular `PangoFontset` implementation.
//
pub struct PangoFontsetClass_vdup24 {
	parent_class GObjectClass
	//< public >
	get_font     fn (&PangoFontset, Guint) &PangoFont
	get_metrics  fn (&PangoFontset) &PangoFontMetrics
	get_language fn (&PangoFontset) &PangoLanguage
	foreach      fn (&PangoFontset, PangoFontsetForeachFunc, Gpointer)
	//< private >
	// Padding for future expansion
	_pango_reserved1 fn ()
	_pango_reserved2 fn ()
	_pango_reserved3 fn ()
	_pango_reserved4 fn ()
}

fn C.pango_fontset_get_font(fontset &PangoFontset, wc Guint) &PangoFont

pub fn pango_fontset_get_font(fontset &PangoFontset, wc Guint) &PangoFont {
	return C.pango_fontset_get_font(fontset, wc)
}

fn C.pango_fontset_get_metrics(fontset &PangoFontset) &PangoFontMetrics

pub fn pango_fontset_get_metrics(fontset &PangoFontset) &PangoFontMetrics {
	return C.pango_fontset_get_metrics(fontset)
}

fn C.pango_fontset_foreach(fontset &PangoFontset, func PangoFontsetForeachFunc, data Gpointer)

pub fn pango_fontset_foreach(fontset &PangoFontset, func PangoFontsetForeachFunc, data Gpointer) {
	C.pango_fontset_foreach(fontset, func, data)
}

// __PANGO_FONTSET_H__
// Pango
// *pango-font.h: Font handling
// * *Copyright (C) 2000 Red Hat Software
// * *This library is free software; you can redistribute it and/or
// *modify it under the terms of the GNU Library General Public
// *License as published by the Free Software Foundation; either
// *version 2 of the License, or (at your option) any later version.
// * *This library is distributed in the hope that it will be useful,
// *but WITHOUT ANY WARRANTY; without even the implied warranty of
// *MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the GNU
// *Library General Public License for more details.
// * *You should have received a copy of the GNU Library General Public
// *License along with this library; if not, write to the
// *Free Software Foundation, Inc., 59 Temple Place - Suite 330,
// *Boston, MA 02111-1307, USA.
//
//* *PangoFontMap:
// * *A `PangoFontMap` represents the set of fonts available for a
// *particular rendering system.
// * *This is a virtual object with implementations being specific to
// *particular rendering systems.
//
pub struct PangoFontMap_vdup25 {
	parent_instance GObject
}

//* *PangoFontMapClass:
// *@parent_class: parent `GObjectClass`
// *@load_font: a function to load a font with a given description. See
// *pango_font_map_load_font().
// *@list_families: A function to list available font families. See
// *pango_font_map_list_families().
// *@load_fontset: a function to load a fontset with a given given description
// *suitable for a particular language. See pango_font_map_load_fontset().
// *@shape_engine_type: the type of rendering-system-dependent engines that
// *can handle fonts of this fonts loaded with this fontmap.
// *@get_serial: a function to get the serial number of the fontmap.
// *See pango_font_map_get_serial().
// *@changed: See pango_font_map_changed()
// * *The `PangoFontMapClass` structure holds the virtual functions for
// *a particular `PangoFontMap` implementation.
//
pub struct PangoFontMapClass_vdup26 {
	parent_class GObjectClass
	//< public >
	load_font         fn (&PangoFontMap, &PangoContext, &PangoFontDescription) &PangoFont
	list_families     fn (&PangoFontMap, &&&PangoFontFamily, &int)
	load_fontset      fn (&PangoFontMap, &PangoContext, &PangoFontDescription, &PangoLanguage) &PangoFontset
	shape_engine_type &i8
	get_serial        fn (&PangoFontMap) Guint
	changed           fn (&PangoFontMap)
	get_family        fn (&PangoFontMap, &i8) &PangoFontFamily
	get_face          fn (&PangoFontMap, &PangoFont) &PangoFontFace
}

fn C.pango_font_map_get_type() GType

pub fn pango_font_map_get_type() GType {
	return C.pango_font_map_get_type()
}

fn C.pango_font_map_create_context(fontmap &PangoFontMap) &PangoContext

pub fn pango_font_map_create_context(fontmap &PangoFontMap) &PangoContext {
	return C.pango_font_map_create_context(fontmap)
}

fn C.pango_font_map_load_font(fontmap &PangoFontMap, context &PangoContext, desc &PangoFontDescription) &PangoFont

pub fn pango_font_map_load_font(fontmap &PangoFontMap, context &PangoContext, desc &PangoFontDescription) &PangoFont {
	return C.pango_font_map_load_font(fontmap, context, desc)
}

fn C.pango_font_map_load_fontset(fontmap &PangoFontMap, context &PangoContext, desc &PangoFontDescription, language &PangoLanguage) &PangoFontset

pub fn pango_font_map_load_fontset(fontmap &PangoFontMap, context &PangoContext, desc &PangoFontDescription, language &PangoLanguage) &PangoFontset {
	return C.pango_font_map_load_fontset(fontmap, context, desc, language)
}

fn C.pango_font_map_list_families(fontmap &PangoFontMap, families &&&PangoFontFamily, n_families &int)

pub fn pango_font_map_list_families(fontmap &PangoFontMap, families &&&PangoFontFamily, n_families &int) {
	C.pango_font_map_list_families(fontmap, families, n_families)
}

fn C.pango_font_map_get_serial(fontmap &PangoFontMap) Guint

pub fn pango_font_map_get_serial(fontmap &PangoFontMap) Guint {
	return C.pango_font_map_get_serial(fontmap)
}

fn C.pango_font_map_changed(fontmap &PangoFontMap)

pub fn pango_font_map_changed(fontmap &PangoFontMap) {
	C.pango_font_map_changed(fontmap)
}

fn C.pango_font_map_get_family(fontmap &PangoFontMap, name &i8) &PangoFontFamily

pub fn pango_font_map_get_family(fontmap &PangoFontMap, name &i8) &PangoFontFamily {
	return C.pango_font_map_get_family(fontmap, name)
}

fn C.pango_font_map_reload_font(fontmap &PangoFontMap, font &PangoFont, scale f64, context &PangoContext, variations &i8) &PangoFont

pub fn pango_font_map_reload_font(fontmap &PangoFontMap, font &PangoFont, scale f64, context &PangoContext, variations &i8) &PangoFont {
	return C.pango_font_map_reload_font(fontmap, font, scale, context, variations)
}

pub type PangoFontMap_autoptr = &PangoFontMap
pub type PangoFontMap_listautoptr = &GList
pub type PangoFontMap_slistautoptr = &GSList
pub type PangoFontMap_queueautoptr = &GQueue

// __PANGO_FONTMAP_H__
// Pango
// *pango-context.h: Rendering contexts
// * *Copyright (C) 2000 Red Hat Software
// * *This library is free software; you can redistribute it and/or
// *modify it under the terms of the GNU Library General Public
// *License as published by the Free Software Foundation; either
// *version 2 of the License, or (at your option) any later version.
// * *This library is distributed in the hope that it will be useful,
// *but WITHOUT ANY WARRANTY; without even the implied warranty of
// *MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
// *Library General Public License for more details.
// * *You should have received a copy of the GNU Library General Public
// *License along with this library; if not, write to the
// *Free Software Foundation, Inc., 59 Temple Place - Suite 330,
// *Boston, MA 02111-1307, USA.
//
fn C.pango_context_get_type() GType

pub fn pango_context_get_type() GType {
	return C.pango_context_get_type()
}

fn C.pango_context_new() &PangoContext

pub fn pango_context_new() &PangoContext {
	return C.pango_context_new()
}

fn C.pango_context_changed(context &PangoContext)

pub fn pango_context_changed(context &PangoContext) {
	C.pango_context_changed(context)
}

fn C.pango_context_set_font_map(context &PangoContext, font_map &PangoFontMap)

pub fn pango_context_set_font_map(context &PangoContext, font_map &PangoFontMap) {
	C.pango_context_set_font_map(context, font_map)
}

fn C.pango_context_get_font_map(context &PangoContext) &PangoFontMap

pub fn pango_context_get_font_map(context &PangoContext) &PangoFontMap {
	return C.pango_context_get_font_map(context)
}

fn C.pango_context_get_serial(context &PangoContext) Guint

pub fn pango_context_get_serial(context &PangoContext) Guint {
	return C.pango_context_get_serial(context)
}

fn C.pango_context_list_families(context &PangoContext, families &&&PangoFontFamily, n_families &int)

pub fn pango_context_list_families(context &PangoContext, families &&&PangoFontFamily, n_families &int) {
	C.pango_context_list_families(context, families, n_families)
}

fn C.pango_context_load_font(context &PangoContext, desc &PangoFontDescription) &PangoFont

pub fn pango_context_load_font(context &PangoContext, desc &PangoFontDescription) &PangoFont {
	return C.pango_context_load_font(context, desc)
}

fn C.pango_context_load_fontset(context &PangoContext, desc &PangoFontDescription, language &PangoLanguage) &PangoFontset

pub fn pango_context_load_fontset(context &PangoContext, desc &PangoFontDescription, language &PangoLanguage) &PangoFontset {
	return C.pango_context_load_fontset(context, desc, language)
}

fn C.pango_context_get_metrics(context &PangoContext, desc &PangoFontDescription, language &PangoLanguage) &PangoFontMetrics

pub fn pango_context_get_metrics(context &PangoContext, desc &PangoFontDescription, language &PangoLanguage) &PangoFontMetrics {
	return C.pango_context_get_metrics(context, desc, language)
}

fn C.pango_context_set_font_description(context &PangoContext, desc &PangoFontDescription)

pub fn pango_context_set_font_description(context &PangoContext, desc &PangoFontDescription) {
	C.pango_context_set_font_description(context, desc)
}

fn C.pango_context_get_font_description(context &PangoContext) &PangoFontDescription

pub fn pango_context_get_font_description(context &PangoContext) &PangoFontDescription {
	return C.pango_context_get_font_description(context)
}

fn C.pango_context_get_language(context &PangoContext) &PangoLanguage

pub fn pango_context_get_language(context &PangoContext) &PangoLanguage {
	return C.pango_context_get_language(context)
}

fn C.pango_context_set_language(context &PangoContext, language &PangoLanguage)

pub fn pango_context_set_language(context &PangoContext, language &PangoLanguage) {
	C.pango_context_set_language(context, language)
}

fn C.pango_context_set_base_dir(context &PangoContext, direction PangoDirection)

pub fn pango_context_set_base_dir(context &PangoContext, direction PangoDirection) {
	C.pango_context_set_base_dir(context, direction)
}

fn C.pango_context_get_base_dir(context &PangoContext) PangoDirection

pub fn pango_context_get_base_dir(context &PangoContext) PangoDirection {
	return C.pango_context_get_base_dir(context)
}

fn C.pango_context_set_base_gravity(context &PangoContext, gravity PangoGravity)

pub fn pango_context_set_base_gravity(context &PangoContext, gravity PangoGravity) {
	C.pango_context_set_base_gravity(context, gravity)
}

fn C.pango_context_get_base_gravity(context &PangoContext) PangoGravity

pub fn pango_context_get_base_gravity(context &PangoContext) PangoGravity {
	return C.pango_context_get_base_gravity(context)
}

fn C.pango_context_get_gravity(context &PangoContext) PangoGravity

pub fn pango_context_get_gravity(context &PangoContext) PangoGravity {
	return C.pango_context_get_gravity(context)
}

fn C.pango_context_set_gravity_hint(context &PangoContext, hint PangoGravityHint)

pub fn pango_context_set_gravity_hint(context &PangoContext, hint PangoGravityHint) {
	C.pango_context_set_gravity_hint(context, hint)
}

fn C.pango_context_get_gravity_hint(context &PangoContext) PangoGravityHint

pub fn pango_context_get_gravity_hint(context &PangoContext) PangoGravityHint {
	return C.pango_context_get_gravity_hint(context)
}

fn C.pango_context_set_matrix(context &PangoContext, matrix &PangoMatrix)

pub fn pango_context_set_matrix(context &PangoContext, matrix &PangoMatrix) {
	C.pango_context_set_matrix(context, matrix)
}

fn C.pango_context_get_matrix(context &PangoContext) &PangoMatrix

pub fn pango_context_get_matrix(context &PangoContext) &PangoMatrix {
	return C.pango_context_get_matrix(context)
}

fn C.pango_context_set_round_glyph_positions(context &PangoContext, round_positions Gboolean)

pub fn pango_context_set_round_glyph_positions(context &PangoContext, round_positions Gboolean) {
	C.pango_context_set_round_glyph_positions(context, round_positions)
}

fn C.pango_context_get_round_glyph_positions(context &PangoContext) Gboolean

pub fn pango_context_get_round_glyph_positions(context &PangoContext) Gboolean {
	return C.pango_context_get_round_glyph_positions(context)
}

// __PANGO_CONTEXT_H__
// Pango
// *pango-glyph.h: Glyph storage
// * *Copyright (C) 2000 Red Hat Software
// * *This library is free software; you can redistribute it and/or
// *modify it under the terms of the GNU Library General Public
// *License as published by the Free Software Foundation; either
// *version 2 of the License, or (at your option) any later version.
// * *This library is distributed in the hope that it will be useful,
// *but WITHOUT ANY WARRANTY; without even the implied warranty of
// *MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
// *Library General Public License for more details.
// * *You should have received a copy of the GNU Library General Public
// *License along with this library; if not, write to the
// *Free Software Foundation, Inc., 59 Temple Place - Suite 330,
// *Boston, MA 02111-1307, USA.
//
// 1024ths of a device unit
//* *PangoGlyphUnit:
// * *The `PangoGlyphUnit` type is used to store dimensions within
// *Pango.
// * *Dimensions are stored in 1/PANGO_SCALE of a device unit.
// *(A device unit might be a pixel for screen display, or
// *a point on a printer.) PANGO_SCALE is currently 1024, and
// *may change in the future (unlikely though), but you should not
// *depend on its exact value.
// * *The PANGO_PIXELS() macro can be used to convert from glyph units
// *into device units with correct rounding.
//
pub type PangoGlyphUnit = int

// Positioning information about a glyph
//
//* *PangoGlyphGeometry:
// *@width: the logical width to use for the the character.
// *@x_offset: horizontal offset from nominal character position.
// *@y_offset: vertical offset from nominal character position.
// * *The `PangoGlyphGeometry` structure contains width and positioning
// *information for a single glyph.
// * *Note that @width is not guaranteed to be the same as the glyph
// *extents. Kerning and other positioning applied during shaping will
// *affect both the @width and the @x_offset for the glyphs in the
// *glyph string that results from shaping.
// * *The information in this struct is intended for rendering the glyphs,
// *as follows:
// * *1. Assume the current point is (x, y)
// *2. Render the current glyph at (x + x_offset, y + y_offset),
// *3. Advance the current point to (x + width, y)
// *4. Render the next glyph
//
pub struct PangoGlyphGeometry_vdup27 {
	width    PangoGlyphUnit
	x_offset PangoGlyphUnit
	y_offset PangoGlyphUnit
}

// Visual attributes of a glyph
//
//* *PangoGlyphVisAttr:
// *@is_cluster_start: set for the first logical glyph in each cluster.
// *@is_color: set if the the font will render this glyph with color. Since 1.50
// * *A `PangoGlyphVisAttr` structure communicates information between
// *the shaping and rendering phases.
// * *Currently, it contains cluster start and color information.
// *More attributes may be added in the future.
// * *Clusters are stored in visual order, within the cluster, glyphs
// *are always ordered in logical order, since visual order is meaningless;
// *that is, in Arabic text, accent glyphs follow the glyphs for the
// *base character.
//
pub struct PangoGlyphVisAttr_vdup28 {
	is_cluster_start Guint
	is_color         Guint
}

// A single glyph
//
//* *PangoGlyphInfo:
// *@glyph: the glyph itself.
// *@geometry: the positional information about the glyph.
// *@attr: the visual attributes of the glyph.
// * *A `PangoGlyphInfo` structure represents a single glyph with
// *positioning information and visual attributes.
//
pub struct PangoGlyphInfo_vdup29 {
	glyph    PangoGlyph
	geometry PangoGlyphGeometry
	attr     PangoGlyphVisAttr
}

//* *PangoGlyphString:
// *@num_glyphs: number of glyphs in this glyph string
// *@glyphs: (array length=num_glyphs): array of glyph information
// *@log_clusters: logical cluster info, indexed by the byte index
// *  within the text corresponding to the glyph string
// * *A `PangoGlyphString` is used to store strings of glyphs with geometry
// *and visual attribute information.
// * *The storage for the glyph information is owned by the structure
// *which simplifies memory management.
//
pub struct PangoGlyphString_vdup30 {
	num_glyphs   int
	glyphs       &PangoGlyphInfo
	log_clusters &int
	//< private >
	space int
}

fn C.pango_glyph_string_get_type() GType

pub fn pango_glyph_string_get_type() GType {
	return C.pango_glyph_string_get_type()
}

fn C.pango_glyph_string_new() &PangoGlyphString

pub fn pango_glyph_string_new() &PangoGlyphString {
	return C.pango_glyph_string_new()
}

fn C.pango_glyph_string_set_size(string_ &PangoGlyphString, new_len int)

pub fn pango_glyph_string_set_size(string_ &PangoGlyphString, new_len int) {
	C.pango_glyph_string_set_size(string_, new_len)
}

fn C.pango_glyph_string_copy(string_ &PangoGlyphString) &PangoGlyphString

pub fn pango_glyph_string_copy(string_ &PangoGlyphString) &PangoGlyphString {
	return C.pango_glyph_string_copy(string_)
}

fn C.pango_glyph_string_free(string_ &PangoGlyphString)

pub fn pango_glyph_string_free(string_ &PangoGlyphString) {
	C.pango_glyph_string_free(string_)
}

fn C.pango_glyph_string_extents(glyphs &PangoGlyphString, font &PangoFont, ink_rect &PangoRectangle, logical_rect &PangoRectangle)

pub fn pango_glyph_string_extents(glyphs &PangoGlyphString, font &PangoFont, ink_rect &PangoRectangle, logical_rect &PangoRectangle) {
	C.pango_glyph_string_extents(glyphs, font, ink_rect, logical_rect)
}

fn C.pango_glyph_string_get_width(glyphs &PangoGlyphString) int

pub fn pango_glyph_string_get_width(glyphs &PangoGlyphString) int {
	return C.pango_glyph_string_get_width(glyphs)
}

fn C.pango_glyph_string_extents_range(glyphs &PangoGlyphString, start int, end int, font &PangoFont, ink_rect &PangoRectangle, logical_rect &PangoRectangle)

pub fn pango_glyph_string_extents_range(glyphs &PangoGlyphString, start int, end int, font &PangoFont, ink_rect &PangoRectangle, logical_rect &PangoRectangle) {
	C.pango_glyph_string_extents_range(glyphs, start, end, font, ink_rect, logical_rect)
}

fn C.pango_glyph_string_get_logical_widths(glyphs &PangoGlyphString, text &i8, length int, embedding_level int, logical_widths &int)

pub fn pango_glyph_string_get_logical_widths(glyphs &PangoGlyphString, text &i8, length int, embedding_level int, logical_widths &int) {
	C.pango_glyph_string_get_logical_widths(glyphs, text, length, embedding_level, logical_widths)
}

fn C.pango_glyph_string_index_to_x(glyphs &PangoGlyphString, text &i8, length int, analysis &PangoAnalysis, index_ int, trailing Gboolean, x_pos &int)

pub fn pango_glyph_string_index_to_x(glyphs &PangoGlyphString, text &i8, length int, analysis &PangoAnalysis, index_ int, trailing Gboolean, x_pos &int) {
	C.pango_glyph_string_index_to_x(glyphs, text, length, analysis, index_, trailing,
		x_pos)
}

fn C.pango_glyph_string_x_to_index(glyphs &PangoGlyphString, text &i8, length int, analysis &PangoAnalysis, x_pos int, index_ &int, trailing &int)

pub fn pango_glyph_string_x_to_index(glyphs &PangoGlyphString, text &i8, length int, analysis &PangoAnalysis, x_pos int, index_ &int, trailing &int) {
	C.pango_glyph_string_x_to_index(glyphs, text, length, analysis, x_pos, index_, trailing)
}

fn C.pango_glyph_string_index_to_x_full(glyphs &PangoGlyphString, text &i8, length int, analysis &PangoAnalysis, attrs &PangoLogAttr, index_ int, trailing Gboolean, x_pos &int)

pub fn pango_glyph_string_index_to_x_full(glyphs &PangoGlyphString, text &i8, length int, analysis &PangoAnalysis, attrs &PangoLogAttr, index_ int, trailing Gboolean, x_pos &int) {
	C.pango_glyph_string_index_to_x_full(glyphs, text, length, analysis, attrs, index_,
		trailing, x_pos)
}

// Shaping
//* *PangoShapeFlags:
// *@PANGO_SHAPE_NONE: Default value
// *@PANGO_SHAPE_ROUND_POSITIONS: Round glyph positions and widths to whole device units
// *  This option should be set if the target renderer can't do subpixel positioning of glyphs
// * *Flags influencing the shaping process.
// * *`PangoShapeFlags` can be passed to [func@Pango.shape_with_flags].
// * *Since: 1.44
//
pub enum PangoShapeFlags {
	pango_shape_none            = 0
	pango_shape_round_positions = 1 << 0
}

fn C.pango_shape(text &i8, length int, analysis &PangoAnalysis, glyphs &PangoGlyphString)

pub fn pango_shape(text &i8, length int, analysis &PangoAnalysis, glyphs &PangoGlyphString) {
	C.pango_shape(text, length, analysis, glyphs)
}

fn C.pango_shape_full(item_text &i8, item_length int, paragraph_text &i8, paragraph_length int, analysis &PangoAnalysis, glyphs &PangoGlyphString)

pub fn pango_shape_full(item_text &i8, item_length int, paragraph_text &i8, paragraph_length int, analysis &PangoAnalysis, glyphs &PangoGlyphString) {
	C.pango_shape_full(item_text, item_length, paragraph_text, paragraph_length, analysis,
		glyphs)
}

fn C.pango_shape_with_flags(item_text &i8, item_length int, paragraph_text &i8, paragraph_length int, analysis &PangoAnalysis, glyphs &PangoGlyphString, flags PangoShapeFlags)

pub fn pango_shape_with_flags(item_text &i8, item_length int, paragraph_text &i8, paragraph_length int, analysis &PangoAnalysis, glyphs &PangoGlyphString, flags PangoShapeFlags) {
	C.pango_shape_with_flags(item_text, item_length, paragraph_text, paragraph_length,
		analysis, glyphs, flags)
}

fn C.pango_shape_item(item &PangoItem, paragraph_text &i8, paragraph_length int, log_attrs &PangoLogAttr, glyphs &PangoGlyphString, flags PangoShapeFlags)

pub fn pango_shape_item(item &PangoItem, paragraph_text &i8, paragraph_length int, log_attrs &PangoLogAttr, glyphs &PangoGlyphString, flags PangoShapeFlags) {
	C.pango_shape_item(item, paragraph_text, paragraph_length, log_attrs, glyphs, flags)
}

// __PANGO_GLYPH_H__
// Pango
// *pango-engine.h: Engines for script and language specific processing
// * *Copyright (C) 2000,2003 Red Hat Software
// * *This library is free software; you can redistribute it and/or
// *modify it under the terms of the GNU Library General Public
// *License as published by the Free Software Foundation; either
// *version 2 of the License, or (at your option) any later version.
// * *This library is distributed in the hope that it will be useful,
// *but WITHOUT ANY WARRANTY; without even the implied warranty of
// *MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the GNU
// *Library General Public License for more details.
// * *You should have received a copy of the GNU Library General Public
// *License along with this library; if not, write to the
// *Free Software Foundation, Inc., 59 Temple Place - Suite 330,
// *Boston, MA 02111-1307, USA.
//
// All of this is deprecated and entirely useless for bindings.
// *Leave it out of the gir file.
//
//* *PANGO_RENDER_TYPE_NONE:
// * *A string constant defining the render type
// *for engines that are not rendering-system specific.
// * *Deprecated: 1.38
//
//* *PangoEngine:
// * *`PangoEngine` is the base class for all types of language and
// *script specific engines. It has no functionality by itself.
// * *Deprecated: 1.38
// */
// struct _PangoEngine
//{
//  /* private >
pub struct PangoEngine_vdup31 {
	parent_instance GObject
}

//* *PangoEngineClass:
// * *Class structure for `PangoEngine`
// * *Deprecated: 1.38
// */
// struct _PangoEngineClass
//{
//  /* private >
pub struct PangoEngineClass_vdup32 {
	parent_class GObjectClass
}

fn C.pango_engine_get_type() GType

pub fn pango_engine_get_type() GType {
	return C.pango_engine_get_type()
}

//* *PANGO_ENGINE_TYPE_LANG:
// * *A string constant defining the engine type for language engines.
// *These engines derive from `PangoEngineLang`.
// * *Deprecated: 1.38
//
//* *PangoEngineLang:
// * *The `PangoEngineLang` class is implemented by engines that
// *customize the rendering-system independent part of the
// *Pango pipeline for a particular script or language. For
// *instance, a custom `PangoEngineLang` could be provided for
// *Thai to implement the dictionary-based word boundary
// *lookups needed for that language.
// * *Deprecated: 1.38
// */
// struct _PangoEngineLang
//{
//  /* private >
pub struct PangoEngineLang_vdup33 {
	parent_instance PangoEngine
}

//* *PangoEngineLangClass:
// *@script_break: (nullable): Provides a custom implementation of
// *pango_break().  If %NULL, pango_default_break() is used instead. If
// *not %NULL, for Pango versions before 1.16 (module interface version
// *before 1.6.0), this was called instead of pango_default_break(),
// *but in newer versions, pango_default_break() is always called and
// *this is called after that to allow tailoring the breaking results.
// * *Class structure for `PangoEngineLang`
// * *Deprecated: 1.38
// */
// struct _PangoEngineLangClass
//{
//  /* private >
pub struct PangoEngineLangClass_vdup34 {
	parent_class PangoEngineClass
	//< public >
	script_break fn (&PangoEngineLang, &i8, int, &PangoAnalysis, &PangoLogAttr, int)
}

fn C.pango_engine_lang_get_type() GType

pub fn pango_engine_lang_get_type() GType {
	return C.pango_engine_lang_get_type()
}

//* *PANGO_ENGINE_TYPE_SHAPE:
// * *A string constant defining the engine type for shaping engines.
// *These engines derive from `PangoEngineShape`.
// * *Deprecated: 1.38
//
//* *PangoEngineShape:
// * *The `PangoEngineShape` class is implemented by engines that
// *customize the rendering-system dependent part of the
// *Pango pipeline for a particular script or language.
// *A `PangoEngineShape` implementation is then specific to both
// *a particular rendering system or group of rendering systems
// *and to a particular script. For instance, there is one
// *`PangoEngineShape` implementation to handle shaping Arabic
// *for Fontconfig-based backends.
// * *Deprecated: 1.38
// */
// struct _PangoEngineShape
//{
//  PangoEngine parent_instance;
//};
//
///*
// *PangoEngineShapeClass:
// *@script_shape: Given a font, a piece of text, and a `PangoAnalysis`
// *  structure, converts characters to glyphs and positions the
// *  resulting glyphs. The results are stored in the `PangoGlyphString`
// *  that is passed in. (The implementation should resize it
// *  appropriately using pango_glyph_string_set_size()). All fields
// *  of the @log_clusters and @glyphs array must be filled in, with
// *  the exception that Pango will automatically generate
// *  `glyphs->glyphs[i].attr.is_cluster_start`
// *  using the @log_clusters array. Each input character must occur in one
// *  of the output logical clusters;
// *  if no rendering is desired for a character, this may involve
// *  inserting glyphs with the `PangoGlyph` ID %PANGO_GLYPH_EMPTY, which
// *  is guaranteed never to render. If the shaping fails for any reason,
// *  the shaper should return with an empty (zero-size) glyph string.
// *  If the shaper has not set the size on the glyph string yet, simply
// *  returning signals the failure too.
// *@covers: Returns the characters that this engine can cover
// *  with a given font for a given language. If not overridden, the default
// *  implementation simply returns the coverage information for the
// *  font itself unmodified.
// * *Class structure for `PangoEngineShape`
// * *Deprecated: 1.38
// */
// struct _PangoEngineShapeClass
//{
//  /* private >
pub struct PangoEngineShape_vdup35 {
	parent_instance PangoEngine
}

pub struct PangoEngineShapeClass_vdup36 {
	parent_class PangoEngineClass
	//< public >
	script_shape fn (&PangoEngineShape, &PangoFont, &i8, u32, &PangoAnalysis, &PangoGlyphString, &i8, u32)
	covers       fn (&PangoEngineShape, &PangoFont, &PangoLanguage, Gunichar) PangoCoverageLevel
}

fn C.pango_engine_shape_get_type() GType

pub fn pango_engine_shape_get_type() GType {
	return C.pango_engine_shape_get_type()
}

//* *PangoEngineScriptInfo:
// *@script: a `PangoScript`. The value %PANGO_SCRIPT_COMMON has
// *the special meaning here of "all scripts"
// *@langs: a semicolon separated list of languages that this
// *engine handles for this script. This may be empty,
// *in which case the engine is saying that it is a
// *fallback choice for all languages for this range,
// *but should not be used if another engine
// *indicates that it is specific for the language for
// *a given code point. An entry in this list of "*
// *indicates that this engine is specific to all
// *languages for this range.
// * *The `PangoEngineScriptInfo` structure contains
// *information about how the shaper covers a particular script.
// * *Deprecated: 1.38
//
pub struct PangoEngineScriptInfo_vdup37 {
	script PangoScript
	langs  &Gchar
}

//* *PangoEngineInfo:
// *@id: a unique string ID for the engine.
// *@engine_type: a string identifying the engine type.
// *@render_type: a string identifying the render type.
// *@scripts: array of scripts this engine supports.
// *@n_scripts: number of items in @scripts.
// * *The `PangoEngineInfo` structure contains information about a particular
// *engine. It contains the following fields:
// * *Deprecated: 1.38
//
pub struct PangoEngineInfo_vdup38 {
	id          &Gchar
	engine_type &Gchar
	render_type &Gchar
	scripts     &PangoEngineScriptInfo
	n_scripts   Gint
}

//* *script_engine_list: (skip)
// *@engines: location to store a pointer to an array of engines.
// *@n_engines: location to store the number of elements in @engines.
// * *Do not use.
// * *Deprecated: 1.38
// */
// PANGO_DEPRECATED_IN_1_38
// void script_engine_list (PangoEngineInfo *engines,
//			 int              *_engines);
//
///*
// *script_engine_init: (skip)
// *@module: a `GTypeModule` structure used to associate any
// * GObject types created in this module with the module.
// * *Do not use.
// * *Deprecated: 1.38
// */
// PANGO_DEPRECATED_IN_1_38
// void script_engine_init (GTypeModule *odule);
//
//
///*
// *script_engine_exit: (skip)
// * *Do not use.
// * *Deprecated: 1.38
// */
// PANGO_DEPRECATED_IN_1_38
// void script_engine_exit (void);
//
///*
// *script_engine_create: (skip)
// *@id: the ID of an engine as reported by script_engine_list.
// * *Do not use.
// * *Deprecated: 1.38
// */
// PANGO_DEPRECATED_IN_1_38
// PangoEngine *cript_engine_create (const char *d);
//
///*Utility macro used by PANGO_ENGINE_LANG_DEFINE_TYPE and
// *PANGO_ENGINE_LANG_DEFINE_TYPE
//
fn C.script_engine_list(engines &&PangoEngineInfo, n_engines &int)

pub fn script_engine_list(engines &&PangoEngineInfo, n_engines &int) {
	C.script_engine_list(engines, n_engines)
}

fn C.script_engine_init(module_ &GTypeModule)

pub fn script_engine_init(module_ &GTypeModule) {
	C.script_engine_init(module_)
}

fn C.script_engine_exit()

pub fn script_engine_exit() {
	C.script_engine_exit()
}

fn C.script_engine_create(id &i8) &PangoEngine

pub fn script_engine_create(id &i8) &PangoEngine {
	return C.script_engine_create(id)
}

// class_data
// n_prelocs
// value_table
//* *PANGO_ENGINE_LANG_DEFINE_TYPE:
// *@name: Name of the the type to register (for example:, ArabicEngineFc)
// *@prefix: Prefix for symbols that will be defined (for example:, arabic_engine_fc)
// *@class_init: (nullable): Class initialization function for the new type
// *@instance_init: (nullable): Instance initialization function for the new type
// * *Outputs the necessary code for GObject type registration for a
// *`PangoEngineLang` class defined in a module. Two static symbols
// *are defined.
// * *<programlisting>
// * static GType *refix*type;
// * static void *refix*register_type (GTypeModule module);
// * *The *refix*register_type()
// *function should be called in your script_engine_init() function for
// *each type that your module implements, and then your script_engine_create()
// *function can create instances of the object as follows:
// * *```
// *PangoEngine *ngine = g_object_new (prefix_type, NULL);
// *```
// * *Deprecated: 1.38
// */
//#define PANGO_ENGINE_LANG_DEFINE_TYPE(name, prefix, class_init, instance_init)	\
//  PANGO_ENGINE_DEFINE_TYPE (name, prefix,				\
//			    class_init, instance_init,			\
//			    PANGO_TYPE_ENGINE_LANG)
//
///*
// *PANGO_ENGINE_SHAPE_DEFINE_TYPE:
// *@name: Name of the the type to register (for example:, ArabicEngineFc)
// *@prefix: Prefix for symbols that will be defined (for example:, arabic_engine_fc)
// *@class_init: (nullable): Class initialization function for the new type
// *@instance_init: (nullable): Instance initialization function for the new type
// * *Outputs the necessary code for GObject type registration for a
// *`PangoEngineShape` class defined in a module. Two static symbols
// *are defined.
// * *<programlisting>
// * static GType *refix*type;
// * static void *refix*register_type (GTypeModule module);
// *</programlisting>
// * *The *refix*register_type()
// *function should be called in your script_engine_init() function for
// *each type that your module implements, and then your script_engine_create()
// *function can create instances of the object as follows:
// * *```
// *PangoEngine *ngine = g_object_new (prefix_type, NULL);
// *```
// * *Deprecated: 1.38
// */
//#define PANGO_ENGINE_SHAPE_DEFINE_TYPE(name, prefix, class_init, instance_init)	\
//  PANGO_ENGINE_DEFINE_TYPE (name, prefix,				\
//			    class_init, instance_init,			\
//			    PANGO_TYPE_ENGINE_SHAPE)
//
///*Macro used for possibly builtin Pango modules. Not useful
// *for externally build modules. If we are compiling a module standalone,
// *then we name the entry points script_engine_list, etc. But if we
// *are compiling it for inclusion directly in Pango, then we need them to
// *to have distinct names for this module, so we prepend a prefix.
// * *The two intermediate macros are to deal with details of the C
// *preprocessor; token pasting tokens must be function arguments,
// *and macro substitution isn't used on function arguments that
// *are used for token pasting.
//
// PANGO_DISABLE_DEPRECATED
// __GI_SCANNER__
// __PANGO_ENGINE_H__
// This file is generated by glib-mkenums, do not modify it. This code is licensed under the same license as the containing project. Note that it links to GLib, so must comply with the LGPL linking clauses.
// enumerations from "pango-attributes.h"
fn C.pango_attr_type_get_type() GType

pub fn pango_attr_type_get_type() GType {
	return C.pango_attr_type_get_type()
}

fn C.pango_underline_get_type() GType

pub fn pango_underline_get_type() GType {
	return C.pango_underline_get_type()
}

fn C.pango_overline_get_type() GType

pub fn pango_overline_get_type() GType {
	return C.pango_overline_get_type()
}

fn C.pango_show_flags_get_type() GType

pub fn pango_show_flags_get_type() GType {
	return C.pango_show_flags_get_type()
}

fn C.pango_text_transform_get_type() GType

pub fn pango_text_transform_get_type() GType {
	return C.pango_text_transform_get_type()
}

fn C.pango_baseline_shift_get_type() GType

pub fn pango_baseline_shift_get_type() GType {
	return C.pango_baseline_shift_get_type()
}

fn C.pango_font_scale_get_type() GType

pub fn pango_font_scale_get_type() GType {
	return C.pango_font_scale_get_type()
}

// enumerations from "pango-bidi-type.h"
fn C.pango_bidi_type_get_type() GType

pub fn pango_bidi_type_get_type() GType {
	return C.pango_bidi_type_get_type()
}

// enumerations from "pango-coverage.h"
fn C.pango_coverage_level_get_type() GType

pub fn pango_coverage_level_get_type() GType {
	return C.pango_coverage_level_get_type()
}

// enumerations from "pango-direction.h"
fn C.pango_direction_get_type() GType

pub fn pango_direction_get_type() GType {
	return C.pango_direction_get_type()
}

// enumerations from "pango-font.h"
fn C.pango_style_get_type() GType

pub fn pango_style_get_type() GType {
	return C.pango_style_get_type()
}

fn C.pango_variant_get_type() GType

pub fn pango_variant_get_type() GType {
	return C.pango_variant_get_type()
}

fn C.pango_weight_get_type() GType

pub fn pango_weight_get_type() GType {
	return C.pango_weight_get_type()
}

fn C.pango_stretch_get_type() GType

pub fn pango_stretch_get_type() GType {
	return C.pango_stretch_get_type()
}

fn C.pango_font_mask_get_type() GType

pub fn pango_font_mask_get_type() GType {
	return C.pango_font_mask_get_type()
}

// enumerations from "pango-glyph.h"
fn C.pango_shape_flags_get_type() GType

pub fn pango_shape_flags_get_type() GType {
	return C.pango_shape_flags_get_type()
}

// enumerations from "pango-gravity.h"
fn C.pango_gravity_get_type() GType

pub fn pango_gravity_get_type() GType {
	return C.pango_gravity_get_type()
}

fn C.pango_gravity_hint_get_type() GType

pub fn pango_gravity_hint_get_type() GType {
	return C.pango_gravity_hint_get_type()
}

// enumerations from "pango-layout.h"
fn C.pango_alignment_get_type() GType

pub fn pango_alignment_get_type() GType {
	return C.pango_alignment_get_type()
}

fn C.pango_wrap_mode_get_type() GType

pub fn pango_wrap_mode_get_type() GType {
	return C.pango_wrap_mode_get_type()
}

fn C.pango_ellipsize_mode_get_type() GType

pub fn pango_ellipsize_mode_get_type() GType {
	return C.pango_ellipsize_mode_get_type()
}

fn C.pango_layout_serialize_flags_get_type() GType

pub fn pango_layout_serialize_flags_get_type() GType {
	return C.pango_layout_serialize_flags_get_type()
}

fn C.pango_layout_deserialize_error_get_type() GType

pub fn pango_layout_deserialize_error_get_type() GType {
	return C.pango_layout_deserialize_error_get_type()
}

fn C.pango_layout_deserialize_flags_get_type() GType

pub fn pango_layout_deserialize_flags_get_type() GType {
	return C.pango_layout_deserialize_flags_get_type()
}

// enumerations from "pango-renderer.h"
fn C.pango_render_part_get_type() GType

pub fn pango_render_part_get_type() GType {
	return C.pango_render_part_get_type()
}

// enumerations from "pango-script.h"
fn C.pango_script_get_type() GType

pub fn pango_script_get_type() GType {
	return C.pango_script_get_type()
}

// enumerations from "pango-tabs.h"
fn C.pango_tab_align_get_type() GType

pub fn pango_tab_align_get_type() GType {
	return C.pango_tab_align_get_type()
}

// __PANGO_ENUM_TYPES_H__
// Generated data ends here
// Pango
// *pango-fontset-simple.h: Font set handling
// * *Copyright (C) 2001 Red Hat Software
// * *This library is free software; you can redistribute it and/or
// *modify it under the terms of the GNU Library General Public
// *License as published by the Free Software Foundation; either
// *version 2 of the License, or (at your option) any later version.
// * *This library is distributed in the hope that it will be useful,
// *but WITHOUT ANY WARRANTY; without even the implied warranty of
// *MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the GNU
// *Library General Public License for more details.
// * *You should have received a copy of the GNU Library General Public
// *License along with this library; if not, write to the
// *Free Software Foundation, Inc., 59 Temple Place - Suite 330,
// *Boston, MA 02111-1307, USA.
//
//* *PangoFontsetSimple:
// * *`PangoFontsetSimple` is a implementation of the abstract
// *`PangoFontset` base class as an array of fonts.
// * *When creating a `PangoFontsetSimple`, you have to provide
// *the array of fonts that make up the fontset.
//
fn C.pango_fontset_simple_get_type() GType

pub fn pango_fontset_simple_get_type() GType {
	return C.pango_fontset_simple_get_type()
}

fn C.pango_fontset_simple_new(language &PangoLanguage) &PangoFontsetSimple

pub fn pango_fontset_simple_new(language &PangoLanguage) &PangoFontsetSimple {
	return C.pango_fontset_simple_new(language)
}

fn C.pango_fontset_simple_append(fontset &PangoFontsetSimple, font &PangoFont)

pub fn pango_fontset_simple_append(fontset &PangoFontsetSimple, font &PangoFont) {
	C.pango_fontset_simple_append(fontset, font)
}

fn C.pango_fontset_simple_size(fontset &PangoFontsetSimple) int

pub fn pango_fontset_simple_size(fontset &PangoFontsetSimple) int {
	return C.pango_fontset_simple_size(fontset)
}

// __PANGO_FONTSET_SIMPLE_H__
// Pango
// *pango-glyph-item.h: Pair of PangoItem and a glyph string
// * *Copyright (C) 2002 Red Hat Software
// * *This library is free software; you can redistribute it and/or
// *modify it under the terms of the GNU Library General Public
// *License as published by the Free Software Foundation; either
// *version 2 of the License, or (at your option) any later version.
// * *This library is distributed in the hope that it will be useful,
// *but WITHOUT ANY WARRANTY; without even the implied warranty of
// *MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the GNU
// *Library General Public License for more details.
// * *You should have received a copy of the GNU Library General Public
// *License along with this library; if not, write to the
// *Free Software Foundation, Inc., 59 Temple Place - Suite 330,
// *Boston, MA 02111-1307, USA.
//
//* *PangoGlyphItem:
// *@item: corresponding `PangoItem`
// *@glyphs: corresponding `PangoGlyphString`
// *@y_offset: shift of the baseline, relative to the baseline
// *  of the containing line. Positive values shift upwards
// *@start_x_offset: horizontal displacement to apply before the
// *  glyph item. Positive values shift right
// *@end_x_offset: horizontal displacement to apply after th
// *  glyph item. Positive values shift right
// * *A `PangoGlyphItem` is a pair of a `PangoItem` and the glyphs
// *resulting from shaping the items text.
// * *As an example of the usage of `PangoGlyphItem`, the results
// *of shaping text with `PangoLayout` is a list of `PangoLayoutLine`,
// *each of which contains a list of `PangoGlyphItem`.
//
pub struct PangoGlyphItem_vdup39 {
	item           &PangoItem
	glyphs         &PangoGlyphString
	y_offset       int
	start_x_offset int
	end_x_offset   int
}

fn C.pango_glyph_item_get_type() GType

pub fn pango_glyph_item_get_type() GType {
	return C.pango_glyph_item_get_type()
}

fn C.pango_glyph_item_split(orig &PangoGlyphItem, text &i8, split_index int) &PangoGlyphItem

pub fn pango_glyph_item_split(orig &PangoGlyphItem, text &i8, split_index int) &PangoGlyphItem {
	return C.pango_glyph_item_split(orig, text, split_index)
}

fn C.pango_glyph_item_copy(orig &PangoGlyphItem) &PangoGlyphItem

pub fn pango_glyph_item_copy(orig &PangoGlyphItem) &PangoGlyphItem {
	return C.pango_glyph_item_copy(orig)
}

fn C.pango_glyph_item_free(glyph_item &PangoGlyphItem)

pub fn pango_glyph_item_free(glyph_item &PangoGlyphItem) {
	C.pango_glyph_item_free(glyph_item)
}

fn C.pango_glyph_item_apply_attrs(glyph_item &PangoGlyphItem, text &i8, list &PangoAttrList) &GSList

pub fn pango_glyph_item_apply_attrs(glyph_item &PangoGlyphItem, text &i8, list &PangoAttrList) &GSList {
	return C.pango_glyph_item_apply_attrs(glyph_item, text, list)
}

fn C.pango_glyph_item_letter_space(glyph_item &PangoGlyphItem, text &i8, log_attrs &PangoLogAttr, letter_spacing int)

pub fn pango_glyph_item_letter_space(glyph_item &PangoGlyphItem, text &i8, log_attrs &PangoLogAttr, letter_spacing int) {
	C.pango_glyph_item_letter_space(glyph_item, text, log_attrs, letter_spacing)
}

fn C.pango_glyph_item_get_logical_widths(glyph_item &PangoGlyphItem, text &i8, logical_widths &int)

pub fn pango_glyph_item_get_logical_widths(glyph_item &PangoGlyphItem, text &i8, logical_widths &int) {
	C.pango_glyph_item_get_logical_widths(glyph_item, text, logical_widths)
}

//* *PangoGlyphItemIter:
// * *A `PangoGlyphItemIter` is an iterator over the clusters in a
// *`PangoGlyphItem`.
// * *The *orward direction*of the iterator is the logical direction of text.
// *That is, with increasing @start_index and @start_char values. If @glyph_item
// *is right-to-left (that is, if `glyph_item->item->analysis.level` is odd),
// *then @start_glyph decreases as the iterator moves forward.  Moreover,
// *in right-to-left cases, @start_glyph is greater than @end_glyph.
// * *An iterator should be initialized using either
// *pango_glyph_item_iter_init_start() or
// *pango_glyph_item_iter_init_end(), for forward and backward iteration
// *respectively, and walked over using any desired mixture of
// *pango_glyph_item_iter_next_cluster() and
// *pango_glyph_item_iter_prev_cluster().
// * *A common idiom for doing a forward iteration over the clusters is:
// * *```
// *PangoGlyphItemIter cluster_iter;
// *gboolean have_cluster;
// * *for (have_cluster = pango_glyph_item_iter_init_start (&cluster_iter,
// *                                                      glyph_item, text);
// *     have_cluster;
// *     have_cluster = pango_glyph_item_iter_next_cluster (&cluster_iter))
// *{
// *  ...
// *}
// *```
// * *Note that @text is the start of the text for layout, which is then
// *indexed by `glyph_item->item->offset` to get to the text of @glyph_item.
// *The @start_index and @end_index values can directly index into @text. The
// *@start_glyph, @end_glyph, @start_char, and @end_char values however are
// *zero-based for the @glyph_item.  For each cluster, the item pointed at by
// *the start variables is included in the cluster while the one pointed at by
// *end variables is not.
// * *None of the members of a `PangoGlyphItemIter` should be modified manually.
// * *Since: 1.22
//
pub struct PangoGlyphItemIter_vdup40 {
	glyph_item  &PangoGlyphItem
	text        &Gchar
	start_glyph int
	start_index int
	start_char  int
	end_glyph   int
	end_index   int
	end_char    int
}

fn C.pango_glyph_item_iter_get_type() GType

pub fn pango_glyph_item_iter_get_type() GType {
	return C.pango_glyph_item_iter_get_type()
}

fn C.pango_glyph_item_iter_copy(orig &PangoGlyphItemIter) &PangoGlyphItemIter

pub fn pango_glyph_item_iter_copy(orig &PangoGlyphItemIter) &PangoGlyphItemIter {
	return C.pango_glyph_item_iter_copy(orig)
}

fn C.pango_glyph_item_iter_free(iter &PangoGlyphItemIter)

pub fn pango_glyph_item_iter_free(iter &PangoGlyphItemIter) {
	C.pango_glyph_item_iter_free(iter)
}

fn C.pango_glyph_item_iter_init_start(iter &PangoGlyphItemIter, glyph_item &PangoGlyphItem, text &i8) Gboolean

pub fn pango_glyph_item_iter_init_start(iter &PangoGlyphItemIter, glyph_item &PangoGlyphItem, text &i8) Gboolean {
	return C.pango_glyph_item_iter_init_start(iter, glyph_item, text)
}

fn C.pango_glyph_item_iter_init_end(iter &PangoGlyphItemIter, glyph_item &PangoGlyphItem, text &i8) Gboolean

pub fn pango_glyph_item_iter_init_end(iter &PangoGlyphItemIter, glyph_item &PangoGlyphItem, text &i8) Gboolean {
	return C.pango_glyph_item_iter_init_end(iter, glyph_item, text)
}

fn C.pango_glyph_item_iter_next_cluster(iter &PangoGlyphItemIter) Gboolean

pub fn pango_glyph_item_iter_next_cluster(iter &PangoGlyphItemIter) Gboolean {
	return C.pango_glyph_item_iter_next_cluster(iter)
}

fn C.pango_glyph_item_iter_prev_cluster(iter &PangoGlyphItemIter) Gboolean

pub fn pango_glyph_item_iter_prev_cluster(iter &PangoGlyphItemIter) Gboolean {
	return C.pango_glyph_item_iter_prev_cluster(iter)
}

// __PANGO_GLYPH_ITEM_H__
// Pango
// *pango-tabs.h: Tab-related stuff
// * *Copyright (C) 2000 Red Hat Software
// * *This library is free software; you can redistribute it and/or
// *modify it under the terms of the GNU Library General Public
// *License as published by the Free Software Foundation; either
// *version 2 of the License, or (at your option) any later version.
// * *This library is distributed in the hope that it will be useful,
// *but WITHOUT ANY WARRANTY; without even the implied warranty of
// *MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the GNU
// *Library General Public License for more details.
// * *You should have received a copy of the GNU Library General Public
// *License along with this library; if not, write to the
// *Free Software Foundation, Inc., 59 Temple Place - Suite 330,
// *Boston, MA 02111-1307, USA.
//
//* *PangoTabAlign:
// *@PANGO_TAB_LEFT: the text appears to the right of the tab stop position
// *@PANGO_TAB_RIGHT: the text appears to the left of the tab stop position
// *  until the available space is filled. Since: 1.50
// *@PANGO_TAB_CENTER: the text is centered at the tab stop position
// *  until the available space is filled. Since: 1.50
// *@PANGO_TAB_DECIMAL: text before the first occurrence of the decimal point
// *  character appears to the left of the tab stop position (until the available
// *  space is filled), the rest to the right. Since: 1.50
// * *`PangoTabAlign` specifies where the text appears relative to the tab stop
// *position.
//
pub enum PangoTabAlign {
	pango_tab_left
	pango_tab_right
	pango_tab_center
	pango_tab_decimal
}

fn C.pango_tab_array_new(initial_size Gint, positions_in_pixels Gboolean) &PangoTabArray

pub fn pango_tab_array_new(initial_size Gint, positions_in_pixels Gboolean) &PangoTabArray {
	return C.pango_tab_array_new(initial_size, positions_in_pixels)
}

@[c2v_variadic]
fn C.pango_tab_array_new_with_positions(size Gint, positions_in_pixels Gboolean, first_alignment PangoTabAlign, first_position ...Gint) &PangoTabArray

pub fn pango_tab_array_new_with_positions(size Gint, positions_in_pixels Gboolean, first_alignment PangoTabAlign, first_position Gint) &PangoTabArray {
	return C.pango_tab_array_new_with_positions(size, positions_in_pixels, first_alignment,
		first_position)
}

fn C.pango_tab_array_get_type() GType

pub fn pango_tab_array_get_type() GType {
	return C.pango_tab_array_get_type()
}

fn C.pango_tab_array_copy(src &PangoTabArray) &PangoTabArray

pub fn pango_tab_array_copy(src &PangoTabArray) &PangoTabArray {
	return C.pango_tab_array_copy(src)
}

fn C.pango_tab_array_free(tab_array &PangoTabArray)

pub fn pango_tab_array_free(tab_array &PangoTabArray) {
	C.pango_tab_array_free(tab_array)
}

fn C.pango_tab_array_get_size(tab_array &PangoTabArray) Gint

pub fn pango_tab_array_get_size(tab_array &PangoTabArray) Gint {
	return C.pango_tab_array_get_size(tab_array)
}

fn C.pango_tab_array_resize(tab_array &PangoTabArray, new_size Gint)

pub fn pango_tab_array_resize(tab_array &PangoTabArray, new_size Gint) {
	C.pango_tab_array_resize(tab_array, new_size)
}

fn C.pango_tab_array_set_tab(tab_array &PangoTabArray, tab_index Gint, alignment PangoTabAlign, location Gint)

pub fn pango_tab_array_set_tab(tab_array &PangoTabArray, tab_index Gint, alignment PangoTabAlign, location Gint) {
	C.pango_tab_array_set_tab(tab_array, tab_index, alignment, location)
}

fn C.pango_tab_array_get_tab(tab_array &PangoTabArray, tab_index Gint, alignment &PangoTabAlign, location &Gint)

pub fn pango_tab_array_get_tab(tab_array &PangoTabArray, tab_index Gint, alignment &PangoTabAlign, location &Gint) {
	C.pango_tab_array_get_tab(tab_array, tab_index, alignment, location)
}

fn C.pango_tab_array_get_tabs(tab_array &PangoTabArray, alignments &&PangoTabAlign, locations &&Gint)

pub fn pango_tab_array_get_tabs(tab_array &PangoTabArray, alignments &&PangoTabAlign, locations &&Gint) {
	C.pango_tab_array_get_tabs(tab_array, alignments, locations)
}

fn C.pango_tab_array_get_positions_in_pixels(tab_array &PangoTabArray) Gboolean

pub fn pango_tab_array_get_positions_in_pixels(tab_array &PangoTabArray) Gboolean {
	return C.pango_tab_array_get_positions_in_pixels(tab_array)
}

fn C.pango_tab_array_set_positions_in_pixels(tab_array &PangoTabArray, positions_in_pixels Gboolean)

pub fn pango_tab_array_set_positions_in_pixels(tab_array &PangoTabArray, positions_in_pixels Gboolean) {
	C.pango_tab_array_set_positions_in_pixels(tab_array, positions_in_pixels)
}

fn C.pango_tab_array_to_string(tab_array &PangoTabArray) &i8

pub fn pango_tab_array_to_string(tab_array &PangoTabArray) &i8 {
	return C.pango_tab_array_to_string(tab_array)
}

fn C.pango_tab_array_from_string(text &i8) &PangoTabArray

pub fn pango_tab_array_from_string(text &i8) &PangoTabArray {
	return C.pango_tab_array_from_string(text)
}

fn C.pango_tab_array_set_decimal_point(tab_array &PangoTabArray, tab_index int, decimal_point Gunichar)

pub fn pango_tab_array_set_decimal_point(tab_array &PangoTabArray, tab_index int, decimal_point Gunichar) {
	C.pango_tab_array_set_decimal_point(tab_array, tab_index, decimal_point)
}

fn C.pango_tab_array_get_decimal_point(tab_array &PangoTabArray, tab_index int) Gunichar

pub fn pango_tab_array_get_decimal_point(tab_array &PangoTabArray, tab_index int) Gunichar {
	return C.pango_tab_array_get_decimal_point(tab_array, tab_index)
}

fn C.pango_tab_array_sort(tab_array &PangoTabArray)

pub fn pango_tab_array_sort(tab_array &PangoTabArray) {
	C.pango_tab_array_sort(tab_array)
}

pub type PangoTabArray_autoptr = &PangoTabArray
pub type PangoTabArray_listautoptr = &GList
pub type PangoTabArray_slistautoptr = &GSList
pub type PangoTabArray_queueautoptr = &GQueue

// __PANGO_TABS_H__
// Pango
// *pango-layout.h: High-level layout driver
// * *Copyright (C) 2000 Red Hat Software
// * *This library is free software; you can redistribute it and/or
// *modify it under the terms of the GNU Library General Public
// *License as published by the Free Software Foundation; either
// *version 2 of the License, or (at your option) any later version.
// * *This library is distributed in the hope that it will be useful,
// *but WITHOUT ANY WARRANTY; without even the implied warranty of
// *MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the GNU
// *Library General Public License for more details.
// * *You should have received a copy of the GNU Library General Public
// *License along with this library; if not, write to the
// *Free Software Foundation, Inc., 59 Temple Place - Suite 330,
// *Boston, MA 02111-1307, USA.
//
//* *PangoLayoutRun:
// * *A `PangoLayoutRun` represents a single run within a `PangoLayoutLine`.
// * *It is simply an alternate name for [struct@Pango.GlyphItem].
// *See the [struct@Pango.GlyphItem] docs for details on the fields.
//
pub type PangoLayoutRun = PangoGlyphItem

//* *PangoAlignment:
// *@PANGO_ALIGN_LEFT: Put all available space on the right
// *@PANGO_ALIGN_CENTER: Center the line within the available space
// *@PANGO_ALIGN_RIGHT: Put all available space on the left
// * *`PangoAlignment` describes how to align the lines of a `PangoLayout`
// *within the available space.
// * *If the `PangoLayout` is set to justify using [method@Pango.Layout.set_justify],
// *this only affects partial lines.
// * *See [method@Pango.Layout.set_auto_dir] for how text direction affects
// *the interpretation of `PangoAlignment` values.
//
pub enum PangoAlignment {
	pango_align_left
	pango_align_center
	pango_align_right
}

//* *PangoWrapMode:
// *@PANGO_WRAP_WORD: wrap lines at word boundaries.
// *@PANGO_WRAP_CHAR: wrap lines at character boundaries.
// *@PANGO_WRAP_WORD_CHAR: wrap lines at word boundaries, but fall back to
// *  character boundaries if there is not enough space for a full word.
// * *`PangoWrapMode` describes how to wrap the lines of a `PangoLayout`
// *to the desired width.
// * *For @PANGO_WRAP_WORD, Pango uses break opportunities that are determined
// *by the Unicode line breaking algorithm. For @PANGO_WRAP_CHAR, Pango allows
// *breaking at grapheme boundaries that are determined by the Unicode text
// *segmentation algorithm.
//
pub enum PangoWrapMode {
	pango_wrap_word
	pango_wrap_char
	pango_wrap_word_char
}

//* *PangoEllipsizeMode:
// *@PANGO_ELLIPSIZE_NONE: No ellipsization
// *@PANGO_ELLIPSIZE_START: Omit characters at the start of the text
// *@PANGO_ELLIPSIZE_MIDDLE: Omit characters in the middle of the text
// *@PANGO_ELLIPSIZE_END: Omit characters at the end of the text
// * *`PangoEllipsizeMode` describes what sort of ellipsization
// *should be applied to text.
// * *In the ellipsization process characters are removed from the
// *text in order to make it fit to a given width and replaced
// *with an ellipsis.
//
pub enum PangoEllipsizeMode {
	pango_ellipsize_none
	pango_ellipsize_start
	pango_ellipsize_middle
	pango_ellipsize_end
}

//* *PangoLayoutLine:
// *@layout: (nullable): the layout this line belongs to, might be %NULL
// *@start_index: start of line as byte index into layout->text
// *@length: length of line in bytes
// *@runs: (nullable) (element-type Pango.LayoutRun): list of runs in the
// *  line, from left to right
// *@is_paragraph_start: #TRUE if this is the first line of the paragraph
// *@resolved_dir: #Resolved PangoDirection of line
// * *A `PangoLayoutLine` represents one of the lines resulting from laying
// *out a paragraph via `PangoLayout`.
// * *`PangoLayoutLine` structures are obtained by calling
// *[method@Pango.Layout.get_line] and are only valid until the text,
// *attributes, or settings of the parent `PangoLayout` are modified.
//
pub struct PangoLayoutLine_vdup41 {
	layout      &PangoLayout
	start_index Gint
	// start of line as byte index into layout->text
	length Gint
	// length of line in bytes
	runs               &GSList
	is_paragraph_start Guint
	// TRUE if this is the first line of the paragraph
	resolved_dir Guint
	// Resolved PangoDirection of line
}

// The PangoLayout and PangoLayoutClass structs are private; if you
// *need to create a subclass of these, file a bug.
//
fn C.pango_layout_get_type() GType

pub fn pango_layout_get_type() GType {
	return C.pango_layout_get_type()
}

fn C.pango_layout_new(context &PangoContext) &PangoLayout

pub fn pango_layout_new(context &PangoContext) &PangoLayout {
	return C.pango_layout_new(context)
}

fn C.pango_layout_copy(src &PangoLayout) &PangoLayout

pub fn pango_layout_copy(src &PangoLayout) &PangoLayout {
	return C.pango_layout_copy(src)
}

fn C.pango_layout_get_context(layout &PangoLayout) &PangoContext

pub fn pango_layout_get_context(layout &PangoLayout) &PangoContext {
	return C.pango_layout_get_context(layout)
}

fn C.pango_layout_set_attributes(layout &PangoLayout, attrs &PangoAttrList)

pub fn pango_layout_set_attributes(layout &PangoLayout, attrs &PangoAttrList) {
	C.pango_layout_set_attributes(layout, attrs)
}

fn C.pango_layout_get_attributes(layout &PangoLayout) &PangoAttrList

pub fn pango_layout_get_attributes(layout &PangoLayout) &PangoAttrList {
	return C.pango_layout_get_attributes(layout)
}

fn C.pango_layout_set_text(layout &PangoLayout, text &i8, length int)

pub fn pango_layout_set_text(layout &PangoLayout, text &i8, length int) {
	C.pango_layout_set_text(layout, text, length)
}

fn C.pango_layout_get_text(layout &PangoLayout) &i8

pub fn pango_layout_get_text(layout &PangoLayout) &i8 {
	return C.pango_layout_get_text(layout)
}

fn C.pango_layout_get_character_count(layout &PangoLayout) Gint

pub fn pango_layout_get_character_count(layout &PangoLayout) Gint {
	return C.pango_layout_get_character_count(layout)
}

fn C.pango_layout_set_markup(layout &PangoLayout, markup &i8, length int)

pub fn pango_layout_set_markup(layout &PangoLayout, markup &i8, length int) {
	C.pango_layout_set_markup(layout, markup, length)
}

fn C.pango_layout_set_markup_with_accel(layout &PangoLayout, markup &i8, length int, accel_marker Gunichar, accel_char &Gunichar)

pub fn pango_layout_set_markup_with_accel(layout &PangoLayout, markup &i8, length int, accel_marker Gunichar, accel_char &Gunichar) {
	C.pango_layout_set_markup_with_accel(layout, markup, length, accel_marker, accel_char)
}

fn C.pango_layout_set_font_description(layout &PangoLayout, desc &PangoFontDescription)

pub fn pango_layout_set_font_description(layout &PangoLayout, desc &PangoFontDescription) {
	C.pango_layout_set_font_description(layout, desc)
}

fn C.pango_layout_get_font_description(layout &PangoLayout) &PangoFontDescription

pub fn pango_layout_get_font_description(layout &PangoLayout) &PangoFontDescription {
	return C.pango_layout_get_font_description(layout)
}

fn C.pango_layout_set_width(layout &PangoLayout, width int)

pub fn pango_layout_set_width(layout &PangoLayout, width int) {
	C.pango_layout_set_width(layout, width)
}

fn C.pango_layout_get_width(layout &PangoLayout) int

pub fn pango_layout_get_width(layout &PangoLayout) int {
	return C.pango_layout_get_width(layout)
}

fn C.pango_layout_set_height(layout &PangoLayout, height int)

pub fn pango_layout_set_height(layout &PangoLayout, height int) {
	C.pango_layout_set_height(layout, height)
}

fn C.pango_layout_get_height(layout &PangoLayout) int

pub fn pango_layout_get_height(layout &PangoLayout) int {
	return C.pango_layout_get_height(layout)
}

fn C.pango_layout_set_wrap(layout &PangoLayout, wrap PangoWrapMode)

pub fn pango_layout_set_wrap(layout &PangoLayout, wrap PangoWrapMode) {
	C.pango_layout_set_wrap(layout, wrap)
}

fn C.pango_layout_get_wrap(layout &PangoLayout) PangoWrapMode

pub fn pango_layout_get_wrap(layout &PangoLayout) PangoWrapMode {
	return C.pango_layout_get_wrap(layout)
}

fn C.pango_layout_is_wrapped(layout &PangoLayout) Gboolean

pub fn pango_layout_is_wrapped(layout &PangoLayout) Gboolean {
	return C.pango_layout_is_wrapped(layout)
}

fn C.pango_layout_set_indent(layout &PangoLayout, indent int)

pub fn pango_layout_set_indent(layout &PangoLayout, indent int) {
	C.pango_layout_set_indent(layout, indent)
}

fn C.pango_layout_get_indent(layout &PangoLayout) int

pub fn pango_layout_get_indent(layout &PangoLayout) int {
	return C.pango_layout_get_indent(layout)
}

fn C.pango_layout_set_spacing(layout &PangoLayout, spacing int)

pub fn pango_layout_set_spacing(layout &PangoLayout, spacing int) {
	C.pango_layout_set_spacing(layout, spacing)
}

fn C.pango_layout_get_spacing(layout &PangoLayout) int

pub fn pango_layout_get_spacing(layout &PangoLayout) int {
	return C.pango_layout_get_spacing(layout)
}

fn C.pango_layout_set_line_spacing(layout &PangoLayout, factor f32)

pub fn pango_layout_set_line_spacing(layout &PangoLayout, factor f32) {
	C.pango_layout_set_line_spacing(layout, factor)
}

fn C.pango_layout_get_line_spacing(layout &PangoLayout) f32

pub fn pango_layout_get_line_spacing(layout &PangoLayout) f32 {
	return C.pango_layout_get_line_spacing(layout)
}

fn C.pango_layout_set_justify(layout &PangoLayout, justify Gboolean)

pub fn pango_layout_set_justify(layout &PangoLayout, justify Gboolean) {
	C.pango_layout_set_justify(layout, justify)
}

fn C.pango_layout_get_justify(layout &PangoLayout) Gboolean

pub fn pango_layout_get_justify(layout &PangoLayout) Gboolean {
	return C.pango_layout_get_justify(layout)
}

fn C.pango_layout_set_justify_last_line(layout &PangoLayout, justify Gboolean)

pub fn pango_layout_set_justify_last_line(layout &PangoLayout, justify Gboolean) {
	C.pango_layout_set_justify_last_line(layout, justify)
}

fn C.pango_layout_get_justify_last_line(layout &PangoLayout) Gboolean

pub fn pango_layout_get_justify_last_line(layout &PangoLayout) Gboolean {
	return C.pango_layout_get_justify_last_line(layout)
}

fn C.pango_layout_set_auto_dir(layout &PangoLayout, auto_dir Gboolean)

pub fn pango_layout_set_auto_dir(layout &PangoLayout, auto_dir Gboolean) {
	C.pango_layout_set_auto_dir(layout, auto_dir)
}

fn C.pango_layout_get_auto_dir(layout &PangoLayout) Gboolean

pub fn pango_layout_get_auto_dir(layout &PangoLayout) Gboolean {
	return C.pango_layout_get_auto_dir(layout)
}

fn C.pango_layout_set_alignment(layout &PangoLayout, alignment PangoAlignment)

pub fn pango_layout_set_alignment(layout &PangoLayout, alignment PangoAlignment) {
	C.pango_layout_set_alignment(layout, alignment)
}

fn C.pango_layout_get_alignment(layout &PangoLayout) PangoAlignment

pub fn pango_layout_get_alignment(layout &PangoLayout) PangoAlignment {
	return C.pango_layout_get_alignment(layout)
}

fn C.pango_layout_set_tabs(layout &PangoLayout, tabs &PangoTabArray)

pub fn pango_layout_set_tabs(layout &PangoLayout, tabs &PangoTabArray) {
	C.pango_layout_set_tabs(layout, tabs)
}

fn C.pango_layout_get_tabs(layout &PangoLayout) &PangoTabArray

pub fn pango_layout_get_tabs(layout &PangoLayout) &PangoTabArray {
	return C.pango_layout_get_tabs(layout)
}

fn C.pango_layout_set_single_paragraph_mode(layout &PangoLayout, setting Gboolean)

pub fn pango_layout_set_single_paragraph_mode(layout &PangoLayout, setting Gboolean) {
	C.pango_layout_set_single_paragraph_mode(layout, setting)
}

fn C.pango_layout_get_single_paragraph_mode(layout &PangoLayout) Gboolean

pub fn pango_layout_get_single_paragraph_mode(layout &PangoLayout) Gboolean {
	return C.pango_layout_get_single_paragraph_mode(layout)
}

fn C.pango_layout_set_ellipsize(layout &PangoLayout, ellipsize PangoEllipsizeMode)

pub fn pango_layout_set_ellipsize(layout &PangoLayout, ellipsize PangoEllipsizeMode) {
	C.pango_layout_set_ellipsize(layout, ellipsize)
}

fn C.pango_layout_get_ellipsize(layout &PangoLayout) PangoEllipsizeMode

pub fn pango_layout_get_ellipsize(layout &PangoLayout) PangoEllipsizeMode {
	return C.pango_layout_get_ellipsize(layout)
}

fn C.pango_layout_is_ellipsized(layout &PangoLayout) Gboolean

pub fn pango_layout_is_ellipsized(layout &PangoLayout) Gboolean {
	return C.pango_layout_is_ellipsized(layout)
}

fn C.pango_layout_get_unknown_glyphs_count(layout &PangoLayout) int

pub fn pango_layout_get_unknown_glyphs_count(layout &PangoLayout) int {
	return C.pango_layout_get_unknown_glyphs_count(layout)
}

fn C.pango_layout_get_direction(layout &PangoLayout, index int) PangoDirection

pub fn pango_layout_get_direction(layout &PangoLayout, index int) PangoDirection {
	return C.pango_layout_get_direction(layout, index)
}

fn C.pango_layout_context_changed(layout &PangoLayout)

pub fn pango_layout_context_changed(layout &PangoLayout) {
	C.pango_layout_context_changed(layout)
}

fn C.pango_layout_get_serial(layout &PangoLayout) Guint

pub fn pango_layout_get_serial(layout &PangoLayout) Guint {
	return C.pango_layout_get_serial(layout)
}

fn C.pango_layout_get_log_attrs(layout &PangoLayout, attrs &&PangoLogAttr, n_attrs &Gint)

pub fn pango_layout_get_log_attrs(layout &PangoLayout, attrs &&PangoLogAttr, n_attrs &Gint) {
	C.pango_layout_get_log_attrs(layout, attrs, n_attrs)
}

fn C.pango_layout_get_log_attrs_readonly(layout &PangoLayout, n_attrs &Gint) &PangoLogAttr

pub fn pango_layout_get_log_attrs_readonly(layout &PangoLayout, n_attrs &Gint) &PangoLogAttr {
	return C.pango_layout_get_log_attrs_readonly(layout, n_attrs)
}

fn C.pango_layout_index_to_pos(layout &PangoLayout, index_ int, pos &PangoRectangle)

pub fn pango_layout_index_to_pos(layout &PangoLayout, index_ int, pos &PangoRectangle) {
	C.pango_layout_index_to_pos(layout, index_, pos)
}

fn C.pango_layout_index_to_line_x(layout &PangoLayout, index_ int, trailing Gboolean, line &int, x_pos &int)

pub fn pango_layout_index_to_line_x(layout &PangoLayout, index_ int, trailing Gboolean, line &int, x_pos &int) {
	C.pango_layout_index_to_line_x(layout, index_, trailing, line, x_pos)
}

fn C.pango_layout_get_cursor_pos(layout &PangoLayout, index_ int, strong_pos &PangoRectangle, weak_pos &PangoRectangle)

pub fn pango_layout_get_cursor_pos(layout &PangoLayout, index_ int, strong_pos &PangoRectangle, weak_pos &PangoRectangle) {
	C.pango_layout_get_cursor_pos(layout, index_, strong_pos, weak_pos)
}

fn C.pango_layout_get_caret_pos(layout &PangoLayout, index_ int, strong_pos &PangoRectangle, weak_pos &PangoRectangle)

pub fn pango_layout_get_caret_pos(layout &PangoLayout, index_ int, strong_pos &PangoRectangle, weak_pos &PangoRectangle) {
	C.pango_layout_get_caret_pos(layout, index_, strong_pos, weak_pos)
}

fn C.pango_layout_move_cursor_visually(layout &PangoLayout, strong Gboolean, old_index int, old_trailing int, direction int, new_index &int, new_trailing &int)

pub fn pango_layout_move_cursor_visually(layout &PangoLayout, strong Gboolean, old_index int, old_trailing int, direction int, new_index &int, new_trailing &int) {
	C.pango_layout_move_cursor_visually(layout, strong, old_index, old_trailing, direction,
		new_index, new_trailing)
}

fn C.pango_layout_xy_to_index(layout &PangoLayout, x int, y int, index_ &int, trailing &int) Gboolean

pub fn pango_layout_xy_to_index(layout &PangoLayout, x int, y int, index_ &int, trailing &int) Gboolean {
	return C.pango_layout_xy_to_index(layout, x, y, index_, trailing)
}

fn C.pango_layout_get_extents(layout &PangoLayout, ink_rect &PangoRectangle, logical_rect &PangoRectangle)

pub fn pango_layout_get_extents(layout &PangoLayout, ink_rect &PangoRectangle, logical_rect &PangoRectangle) {
	C.pango_layout_get_extents(layout, ink_rect, logical_rect)
}

fn C.pango_layout_get_pixel_extents(layout &PangoLayout, ink_rect &PangoRectangle, logical_rect &PangoRectangle)

pub fn pango_layout_get_pixel_extents(layout &PangoLayout, ink_rect &PangoRectangle, logical_rect &PangoRectangle) {
	C.pango_layout_get_pixel_extents(layout, ink_rect, logical_rect)
}

fn C.pango_layout_get_size(layout &PangoLayout, width &int, height &int)

pub fn pango_layout_get_size(layout &PangoLayout, width &int, height &int) {
	C.pango_layout_get_size(layout, width, height)
}

fn C.pango_layout_get_pixel_size(layout &PangoLayout, width &int, height &int)

pub fn pango_layout_get_pixel_size(layout &PangoLayout, width &int, height &int) {
	C.pango_layout_get_pixel_size(layout, width, height)
}

fn C.pango_layout_get_baseline(layout &PangoLayout) int

pub fn pango_layout_get_baseline(layout &PangoLayout) int {
	return C.pango_layout_get_baseline(layout)
}

fn C.pango_layout_get_line_count(layout &PangoLayout) int

pub fn pango_layout_get_line_count(layout &PangoLayout) int {
	return C.pango_layout_get_line_count(layout)
}

fn C.pango_layout_get_line(layout &PangoLayout, line int) &PangoLayoutLine

pub fn pango_layout_get_line(layout &PangoLayout, line int) &PangoLayoutLine {
	return C.pango_layout_get_line(layout, line)
}

fn C.pango_layout_get_line_readonly(layout &PangoLayout, line int) &PangoLayoutLine

pub fn pango_layout_get_line_readonly(layout &PangoLayout, line int) &PangoLayoutLine {
	return C.pango_layout_get_line_readonly(layout, line)
}

fn C.pango_layout_get_lines(layout &PangoLayout) &GSList

pub fn pango_layout_get_lines(layout &PangoLayout) &GSList {
	return C.pango_layout_get_lines(layout)
}

fn C.pango_layout_get_lines_readonly(layout &PangoLayout) &GSList

pub fn pango_layout_get_lines_readonly(layout &PangoLayout) &GSList {
	return C.pango_layout_get_lines_readonly(layout)
}

//* *PangoLayoutSerializeFlags:
// *@PANGO_LAYOUT_SERIALIZE_DEFAULT: Default behavior
// *@PANGO_LAYOUT_SERIALIZE_CONTEXT: Include context information
// *@PANGO_LAYOUT_SERIALIZE_OUTPUT: Include information about the formatted output
// * *Flags that influence the behavior of [method@Pango.Layout.serialize].
// * *New members may be added to this enumeration over time.
// * *Since: 1.50
//
pub enum PangoLayoutSerializeFlags {
	pango_layout_serialize_default = 0
	pango_layout_serialize_context = 1 << 0
	pango_layout_serialize_output  = 1 << 1
}

fn C.pango_layout_serialize(layout &PangoLayout, flags PangoLayoutSerializeFlags) &GBytes

pub fn pango_layout_serialize(layout &PangoLayout, flags PangoLayoutSerializeFlags) &GBytes {
	return C.pango_layout_serialize(layout, flags)
}

fn C.pango_layout_write_to_file(layout &PangoLayout, flags PangoLayoutSerializeFlags, filename &i8, error &&GError) Gboolean

pub fn pango_layout_write_to_file(layout &PangoLayout, flags PangoLayoutSerializeFlags, filename &i8, error &&GError) Gboolean {
	return C.pango_layout_write_to_file(layout, flags, filename, error)
}

//* *PangoLayoutDeserializeError:
// *@PANGO_LAYOUT_DESERIALIZE_INVALID: Unspecified error
// *@PANGO_LAYOUT_DESERIALIZE_INVALID_VALUE: A JSon value could not be
// *  interpreted
// *@PANGO_LAYOUT_DESERIALIZE_MISSING_VALUE: A required JSon member was
// *  not found
// * *Errors that can be returned by [func@Pango.Layout.deserialize].
// * *Since: 1.50
//
pub enum PangoLayoutDeserializeError {
	pango_layout_deserialize_invalid
	pango_layout_deserialize_invalid_value
	pango_layout_deserialize_missing_value
}

fn C.pango_layout_deserialize_error_quark() GQuark

pub fn pango_layout_deserialize_error_quark() GQuark {
	return C.pango_layout_deserialize_error_quark()
}

//* *PangoLayoutDeserializeFlags:
// *@PANGO_LAYOUT_DESERIALIZE_DEFAULT: Default behavior
// *@PANGO_LAYOUT_DESERIALIZE_CONTEXT: Apply context information
// *  from the serialization to the `PangoContext`
// * *Flags that influence the behavior of [func@Pango.Layout.deserialize].
// * *New members may be added to this enumeration over time.
// * *Since: 1.50
//
pub enum PangoLayoutDeserializeFlags {
	pango_layout_deserialize_default = 0
	pango_layout_deserialize_context = 1 << 0
}

fn C.pango_layout_deserialize(context &PangoContext, bytes &GBytes, flags PangoLayoutDeserializeFlags, error &&GError) &PangoLayout

pub fn pango_layout_deserialize(context &PangoContext, bytes &GBytes, flags PangoLayoutDeserializeFlags, error &&GError) &PangoLayout {
	return C.pango_layout_deserialize(context, bytes, flags, error)
}

fn C.pango_layout_line_get_type() GType

pub fn pango_layout_line_get_type() GType {
	return C.pango_layout_line_get_type()
}

fn C.pango_layout_line_ref(line &PangoLayoutLine) &PangoLayoutLine

pub fn pango_layout_line_ref(line &PangoLayoutLine) &PangoLayoutLine {
	return C.pango_layout_line_ref(line)
}

fn C.pango_layout_line_unref(line &PangoLayoutLine)

pub fn pango_layout_line_unref(line &PangoLayoutLine) {
	C.pango_layout_line_unref(line)
}

fn C.pango_layout_line_get_start_index(line &PangoLayoutLine) int

pub fn pango_layout_line_get_start_index(line &PangoLayoutLine) int {
	return C.pango_layout_line_get_start_index(line)
}

fn C.pango_layout_line_get_length(line &PangoLayoutLine) int

pub fn pango_layout_line_get_length(line &PangoLayoutLine) int {
	return C.pango_layout_line_get_length(line)
}

fn C.pango_layout_line_is_paragraph_start(line &PangoLayoutLine) Gboolean

pub fn pango_layout_line_is_paragraph_start(line &PangoLayoutLine) Gboolean {
	return C.pango_layout_line_is_paragraph_start(line)
}

fn C.pango_layout_line_get_resolved_direction(line &PangoLayoutLine) PangoDirection

pub fn pango_layout_line_get_resolved_direction(line &PangoLayoutLine) PangoDirection {
	return C.pango_layout_line_get_resolved_direction(line)
}

fn C.pango_layout_line_x_to_index(line &PangoLayoutLine, x_pos int, index_ &int, trailing &int) Gboolean

pub fn pango_layout_line_x_to_index(line &PangoLayoutLine, x_pos int, index_ &int, trailing &int) Gboolean {
	return C.pango_layout_line_x_to_index(line, x_pos, index_, trailing)
}

fn C.pango_layout_line_index_to_x(line &PangoLayoutLine, index_ int, trailing Gboolean, x_pos &int)

pub fn pango_layout_line_index_to_x(line &PangoLayoutLine, index_ int, trailing Gboolean, x_pos &int) {
	C.pango_layout_line_index_to_x(line, index_, trailing, x_pos)
}

fn C.pango_layout_line_get_x_ranges(line &PangoLayoutLine, start_index int, end_index int, ranges &&int, n_ranges &int)

pub fn pango_layout_line_get_x_ranges(line &PangoLayoutLine, start_index int, end_index int, ranges &&int, n_ranges &int) {
	C.pango_layout_line_get_x_ranges(line, start_index, end_index, ranges, n_ranges)
}

fn C.pango_layout_line_get_extents(line &PangoLayoutLine, ink_rect &PangoRectangle, logical_rect &PangoRectangle)

pub fn pango_layout_line_get_extents(line &PangoLayoutLine, ink_rect &PangoRectangle, logical_rect &PangoRectangle) {
	C.pango_layout_line_get_extents(line, ink_rect, logical_rect)
}

fn C.pango_layout_line_get_height(line &PangoLayoutLine, height &int)

pub fn pango_layout_line_get_height(line &PangoLayoutLine, height &int) {
	C.pango_layout_line_get_height(line, height)
}

fn C.pango_layout_line_get_pixel_extents(layout_line &PangoLayoutLine, ink_rect &PangoRectangle, logical_rect &PangoRectangle)

pub fn pango_layout_line_get_pixel_extents(layout_line &PangoLayoutLine, ink_rect &PangoRectangle, logical_rect &PangoRectangle) {
	C.pango_layout_line_get_pixel_extents(layout_line, ink_rect, logical_rect)
}

fn C.pango_layout_iter_get_type() GType

pub fn pango_layout_iter_get_type() GType {
	return C.pango_layout_iter_get_type()
}

fn C.pango_layout_get_iter(layout &PangoLayout) &PangoLayoutIter

pub fn pango_layout_get_iter(layout &PangoLayout) &PangoLayoutIter {
	return C.pango_layout_get_iter(layout)
}

fn C.pango_layout_iter_copy(iter &PangoLayoutIter) &PangoLayoutIter

pub fn pango_layout_iter_copy(iter &PangoLayoutIter) &PangoLayoutIter {
	return C.pango_layout_iter_copy(iter)
}

fn C.pango_layout_iter_free(iter &PangoLayoutIter)

pub fn pango_layout_iter_free(iter &PangoLayoutIter) {
	C.pango_layout_iter_free(iter)
}

fn C.pango_layout_iter_get_index(iter &PangoLayoutIter) int

pub fn pango_layout_iter_get_index(iter &PangoLayoutIter) int {
	return C.pango_layout_iter_get_index(iter)
}

fn C.pango_layout_iter_get_run(iter &PangoLayoutIter) &PangoLayoutRun

pub fn pango_layout_iter_get_run(iter &PangoLayoutIter) &PangoLayoutRun {
	return C.pango_layout_iter_get_run(iter)
}

fn C.pango_layout_iter_get_run_readonly(iter &PangoLayoutIter) &PangoLayoutRun

pub fn pango_layout_iter_get_run_readonly(iter &PangoLayoutIter) &PangoLayoutRun {
	return C.pango_layout_iter_get_run_readonly(iter)
}

fn C.pango_layout_iter_get_line(iter &PangoLayoutIter) &PangoLayoutLine

pub fn pango_layout_iter_get_line(iter &PangoLayoutIter) &PangoLayoutLine {
	return C.pango_layout_iter_get_line(iter)
}

fn C.pango_layout_iter_get_line_readonly(iter &PangoLayoutIter) &PangoLayoutLine

pub fn pango_layout_iter_get_line_readonly(iter &PangoLayoutIter) &PangoLayoutLine {
	return C.pango_layout_iter_get_line_readonly(iter)
}

fn C.pango_layout_iter_at_last_line(iter &PangoLayoutIter) Gboolean

pub fn pango_layout_iter_at_last_line(iter &PangoLayoutIter) Gboolean {
	return C.pango_layout_iter_at_last_line(iter)
}

fn C.pango_layout_iter_get_layout(iter &PangoLayoutIter) &PangoLayout

pub fn pango_layout_iter_get_layout(iter &PangoLayoutIter) &PangoLayout {
	return C.pango_layout_iter_get_layout(iter)
}

fn C.pango_layout_iter_next_char(iter &PangoLayoutIter) Gboolean

pub fn pango_layout_iter_next_char(iter &PangoLayoutIter) Gboolean {
	return C.pango_layout_iter_next_char(iter)
}

fn C.pango_layout_iter_next_cluster(iter &PangoLayoutIter) Gboolean

pub fn pango_layout_iter_next_cluster(iter &PangoLayoutIter) Gboolean {
	return C.pango_layout_iter_next_cluster(iter)
}

fn C.pango_layout_iter_next_run(iter &PangoLayoutIter) Gboolean

pub fn pango_layout_iter_next_run(iter &PangoLayoutIter) Gboolean {
	return C.pango_layout_iter_next_run(iter)
}

fn C.pango_layout_iter_next_line(iter &PangoLayoutIter) Gboolean

pub fn pango_layout_iter_next_line(iter &PangoLayoutIter) Gboolean {
	return C.pango_layout_iter_next_line(iter)
}

fn C.pango_layout_iter_get_char_extents(iter &PangoLayoutIter, logical_rect &PangoRectangle)

pub fn pango_layout_iter_get_char_extents(iter &PangoLayoutIter, logical_rect &PangoRectangle) {
	C.pango_layout_iter_get_char_extents(iter, logical_rect)
}

fn C.pango_layout_iter_get_cluster_extents(iter &PangoLayoutIter, ink_rect &PangoRectangle, logical_rect &PangoRectangle)

pub fn pango_layout_iter_get_cluster_extents(iter &PangoLayoutIter, ink_rect &PangoRectangle, logical_rect &PangoRectangle) {
	C.pango_layout_iter_get_cluster_extents(iter, ink_rect, logical_rect)
}

fn C.pango_layout_iter_get_run_extents(iter &PangoLayoutIter, ink_rect &PangoRectangle, logical_rect &PangoRectangle)

pub fn pango_layout_iter_get_run_extents(iter &PangoLayoutIter, ink_rect &PangoRectangle, logical_rect &PangoRectangle) {
	C.pango_layout_iter_get_run_extents(iter, ink_rect, logical_rect)
}

fn C.pango_layout_iter_get_line_extents(iter &PangoLayoutIter, ink_rect &PangoRectangle, logical_rect &PangoRectangle)

pub fn pango_layout_iter_get_line_extents(iter &PangoLayoutIter, ink_rect &PangoRectangle, logical_rect &PangoRectangle) {
	C.pango_layout_iter_get_line_extents(iter, ink_rect, logical_rect)
}

// All the yranges meet, unlike the logical_rect's (i.e. the yranges
// *assign between-line spacing to the nearest line)
//
fn C.pango_layout_iter_get_line_yrange(iter &PangoLayoutIter, y0_ &int, y1_ &int)

pub fn pango_layout_iter_get_line_yrange(iter &PangoLayoutIter, y0_ &int, y1_ &int) {
	C.pango_layout_iter_get_line_yrange(iter, y0_, y1_)
}

fn C.pango_layout_iter_get_layout_extents(iter &PangoLayoutIter, ink_rect &PangoRectangle, logical_rect &PangoRectangle)

pub fn pango_layout_iter_get_layout_extents(iter &PangoLayoutIter, ink_rect &PangoRectangle, logical_rect &PangoRectangle) {
	C.pango_layout_iter_get_layout_extents(iter, ink_rect, logical_rect)
}

fn C.pango_layout_iter_get_baseline(iter &PangoLayoutIter) int

pub fn pango_layout_iter_get_baseline(iter &PangoLayoutIter) int {
	return C.pango_layout_iter_get_baseline(iter)
}

fn C.pango_layout_iter_get_run_baseline(iter &PangoLayoutIter) int

pub fn pango_layout_iter_get_run_baseline(iter &PangoLayoutIter) int {
	return C.pango_layout_iter_get_run_baseline(iter)
}

pub type PangoLayout_autoptr = &PangoLayout
pub type PangoLayout_listautoptr = &GList
pub type PangoLayout_slistautoptr = &GSList
pub type PangoLayout_queueautoptr = &GQueue
pub type PangoLayoutIter_autoptr = &PangoLayoutIter
pub type PangoLayoutIter_listautoptr = &GList
pub type PangoLayoutIter_slistautoptr = &GSList
pub type PangoLayoutIter_queueautoptr = &GQueue

// __PANGO_LAYOUT_H__
// Pango
// *pango-markup.h: Parser for attributed text
// * *Copyright (C) 2000 Red Hat Software
// * *This library is free software; you can redistribute it and/or
// *modify it under the terms of the GNU Library General Public
// *License as published by the Free Software Foundation; either
// *version 2 of the License, or (at your option) any later version.
// * *This library is distributed in the hope that it will be useful,
// *but WITHOUT ANY WARRANTY; without even the implied warranty of
// *MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
// *Library General Public License for more details.
// * *You should have received a copy of the GNU Library General Public
// *License along with this library; if not, write to the
// *Free Software Foundation, Inc., 59 Temple Place - Suite 330,
// *Boston, MA 02111-1307, USA.
//
fn C.pango_markup_parser_new(accel_marker Gunichar) &GMarkupParseContext

pub fn pango_markup_parser_new(accel_marker Gunichar) &GMarkupParseContext {
	return C.pango_markup_parser_new(accel_marker)
}

fn C.pango_markup_parser_finish(context &GMarkupParseContext, attr_list &&PangoAttrList, text &&u8, accel_char &Gunichar, error &&GError) Gboolean

pub fn pango_markup_parser_finish(context &GMarkupParseContext, attr_list &&PangoAttrList, text &&u8, accel_char &Gunichar, error &&GError) Gboolean {
	return C.pango_markup_parser_finish(context, attr_list, text, accel_char, error)
}

fn C.pango_parse_markup(markup_text &i8, length int, accel_marker Gunichar, attr_list &&PangoAttrList, text &&u8, accel_char &Gunichar, error &&GError) Gboolean

pub fn pango_parse_markup(markup_text &i8, length int, accel_marker Gunichar, attr_list &&PangoAttrList, text &&u8, accel_char &Gunichar, error &&GError) Gboolean {
	return C.pango_parse_markup(markup_text, length, accel_marker, attr_list, text, accel_char,
		error)
}

// __PANGO_MARKUP_H__
// Pango
// *pango-renderer.h: Base class for rendering
// * *Copyright (C) 2004, Red Hat, Inc.
// * *This library is free software; you can redistribute it and/or
// *modify it under the terms of the GNU Library General Public
// *License as published by the Free Software Foundation; either
// *version 2 of the License, or (at your option) any later version.
// * *This library is distributed in the hope that it will be useful,
// *but WITHOUT ANY WARRANTY; without even the implied warranty of
// *MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
// *Library General Public License for more details.
// * *You should have received a copy of the GNU Library General Public
// *License along with this library; if not, write to the
// *Free Software Foundation, Inc., 59 Temple Place - Suite 330,
// *Boston, MA 02111-1307, USA.
//
//* *PangoRenderPart:
// *@PANGO_RENDER_PART_FOREGROUND: the text itself
// *@PANGO_RENDER_PART_BACKGROUND: the area behind the text
// *@PANGO_RENDER_PART_UNDERLINE: underlines
// *@PANGO_RENDER_PART_STRIKETHROUGH: strikethrough lines
// *@PANGO_RENDER_PART_OVERLINE: overlines
// * *`PangoRenderPart` defines different items to render for such
// *purposes as setting colors.
// * *Since: 1.8
// */
///*When extending, note N_RENDER_PARTS #define in pango-renderer.c
pub enum PangoRenderPart {
	pango_render_part_foreground
	pango_render_part_background
	pango_render_part_underline
	pango_render_part_strikethrough
	pango_render_part_overline
}

//* *PangoRenderer:
// *@matrix: (nullable): the current transformation matrix for
// *  the Renderer; may be %NULL, which should be treated the
// *  same as the identity matrix.
// * *`PangoRenderer` is a base class for objects that can render text
// *provided as `PangoGlyphString` or `PangoLayout`.
// * *By subclassing `PangoRenderer` and overriding operations such as
// *@draw_glyphs and @draw_rectangle, renderers for particular font
// *backends and destinations can be created.
// * *Since: 1.8
//
pub struct PangoRenderer_vdup42 {
	//< private >
	parent_instance GObject
	underline       PangoUnderline
	strikethrough   Gboolean
	active_count    int
	//< public >
	matrix &PangoMatrix
	// May be NULL
	//< private >
	priv &PangoRendererPrivate
}

//* *PangoRendererClass:
// *@draw_glyphs: draws a `PangoGlyphString`
// *@draw_rectangle: draws a rectangle
// *@draw_error_underline: draws a squiggly line that approximately
// *covers the given rectangle in the style of an underline used to
// *indicate a spelling error.
// *@draw_shape: draw content for a glyph shaped with `PangoAttrShape`
// *  @x, @y are the coordinates of the left edge of the baseline,
// *  in user coordinates.
// *@draw_trapezoid: draws a trapezoidal filled area
// *@draw_glyph: draws a single glyph
// *@part_changed: do renderer specific processing when rendering
// * attributes change
// *@begin: Do renderer-specific initialization before drawing
// *@end: Do renderer-specific cleanup after drawing
// *@prepare_run: updates the renderer for a new run
// *@draw_glyph_item: draws a `PangoGlyphItem`
// * *Class structure for `PangoRenderer`.
// * *The following vfuncs take user space coordinates in Pango units
// *and have default implementations:
// *- draw_glyphs
// *- draw_rectangle
// *- draw_error_underline
// *- draw_shape
// *- draw_glyph_item
// * *The default draw_shape implementation draws nothing.
// * *The following vfuncs take device space coordinates as doubles
// *and must be implemented:
// *- draw_trapezoid
// *- draw_glyph
// * *Since: 1.8
//
pub struct PangoRendererClass_vdup43 {
	//< private >
	parent_class GObjectClass
	// vtable - not signals
	//< public >
	draw_glyphs          fn (&PangoRenderer, &PangoFont, &PangoGlyphString, int, int)
	draw_rectangle       fn (&PangoRenderer, PangoRenderPart, int, int, int, int)
	draw_error_underline fn (&PangoRenderer, int, int, int, int)
	draw_shape           fn (&PangoRenderer, &PangoAttrShape, int, int)
	draw_trapezoid       fn (&PangoRenderer, PangoRenderPart, f64, f64, f64, f64, f64, f64)
	draw_glyph           fn (&PangoRenderer, &PangoFont, PangoGlyph, f64, f64)
	part_changed         fn (&PangoRenderer, PangoRenderPart)
	begin                fn (&PangoRenderer)
	end                  fn (&PangoRenderer)
	prepare_run          fn (&PangoRenderer, &PangoLayoutRun)
	draw_glyph_item      fn (&PangoRenderer, &i8, &PangoGlyphItem, int, int)
	//< private >
	// Padding for future expansion
	_pango_reserved2 fn ()
	_pango_reserved3 fn ()
	_pango_reserved4 fn ()
}

fn C.pango_renderer_get_type() GType

pub fn pango_renderer_get_type() GType {
	return C.pango_renderer_get_type()
}

fn C.pango_renderer_draw_layout(renderer &PangoRenderer, layout &PangoLayout, x int, y int)

pub fn pango_renderer_draw_layout(renderer &PangoRenderer, layout &PangoLayout, x int, y int) {
	C.pango_renderer_draw_layout(renderer, layout, x, y)
}

fn C.pango_renderer_draw_layout_line(renderer &PangoRenderer, line &PangoLayoutLine, x int, y int)

pub fn pango_renderer_draw_layout_line(renderer &PangoRenderer, line &PangoLayoutLine, x int, y int) {
	C.pango_renderer_draw_layout_line(renderer, line, x, y)
}

fn C.pango_renderer_draw_glyphs(renderer &PangoRenderer, font &PangoFont, glyphs &PangoGlyphString, x int, y int)

pub fn pango_renderer_draw_glyphs(renderer &PangoRenderer, font &PangoFont, glyphs &PangoGlyphString, x int, y int) {
	C.pango_renderer_draw_glyphs(renderer, font, glyphs, x, y)
}

fn C.pango_renderer_draw_glyph_item(renderer &PangoRenderer, text &i8, glyph_item &PangoGlyphItem, x int, y int)

pub fn pango_renderer_draw_glyph_item(renderer &PangoRenderer, text &i8, glyph_item &PangoGlyphItem, x int, y int) {
	C.pango_renderer_draw_glyph_item(renderer, text, glyph_item, x, y)
}

fn C.pango_renderer_draw_rectangle(renderer &PangoRenderer, part PangoRenderPart, x int, y int, width int, height int)

pub fn pango_renderer_draw_rectangle(renderer &PangoRenderer, part PangoRenderPart, x int, y int, width int, height int) {
	C.pango_renderer_draw_rectangle(renderer, part, x, y, width, height)
}

fn C.pango_renderer_draw_error_underline(renderer &PangoRenderer, x int, y int, width int, height int)

pub fn pango_renderer_draw_error_underline(renderer &PangoRenderer, x int, y int, width int, height int) {
	C.pango_renderer_draw_error_underline(renderer, x, y, width, height)
}

fn C.pango_renderer_draw_trapezoid(renderer &PangoRenderer, part PangoRenderPart, y1_ f64, x11 f64, x21 f64, y2 f64, x12 f64, x22 f64)

pub fn pango_renderer_draw_trapezoid(renderer &PangoRenderer, part PangoRenderPart, y1_ f64, x11 f64, x21 f64, y2 f64, x12 f64, x22 f64) {
	C.pango_renderer_draw_trapezoid(renderer, part, y1_, x11, x21, y2, x12, x22)
}

fn C.pango_renderer_draw_glyph(renderer &PangoRenderer, font &PangoFont, glyph PangoGlyph, x f64, y f64)

pub fn pango_renderer_draw_glyph(renderer &PangoRenderer, font &PangoFont, glyph PangoGlyph, x f64, y f64) {
	C.pango_renderer_draw_glyph(renderer, font, glyph, x, y)
}

fn C.pango_renderer_activate(renderer &PangoRenderer)

pub fn pango_renderer_activate(renderer &PangoRenderer) {
	C.pango_renderer_activate(renderer)
}

fn C.pango_renderer_deactivate(renderer &PangoRenderer)

pub fn pango_renderer_deactivate(renderer &PangoRenderer) {
	C.pango_renderer_deactivate(renderer)
}

fn C.pango_renderer_part_changed(renderer &PangoRenderer, part PangoRenderPart)

pub fn pango_renderer_part_changed(renderer &PangoRenderer, part PangoRenderPart) {
	C.pango_renderer_part_changed(renderer, part)
}

fn C.pango_renderer_set_color(renderer &PangoRenderer, part PangoRenderPart, color &PangoColor)

pub fn pango_renderer_set_color(renderer &PangoRenderer, part PangoRenderPart, color &PangoColor) {
	C.pango_renderer_set_color(renderer, part, color)
}

fn C.pango_renderer_get_color(renderer &PangoRenderer, part PangoRenderPart) &PangoColor

pub fn pango_renderer_get_color(renderer &PangoRenderer, part PangoRenderPart) &PangoColor {
	return C.pango_renderer_get_color(renderer, part)
}

fn C.pango_renderer_set_alpha(renderer &PangoRenderer, part PangoRenderPart, alpha Guint16)

pub fn pango_renderer_set_alpha(renderer &PangoRenderer, part PangoRenderPart, alpha Guint16) {
	C.pango_renderer_set_alpha(renderer, part, alpha)
}

fn C.pango_renderer_get_alpha(renderer &PangoRenderer, part PangoRenderPart) Guint16

pub fn pango_renderer_get_alpha(renderer &PangoRenderer, part PangoRenderPart) Guint16 {
	return C.pango_renderer_get_alpha(renderer, part)
}

fn C.pango_renderer_set_matrix(renderer &PangoRenderer, matrix &PangoMatrix)

pub fn pango_renderer_set_matrix(renderer &PangoRenderer, matrix &PangoMatrix) {
	C.pango_renderer_set_matrix(renderer, matrix)
}

fn C.pango_renderer_get_matrix(renderer &PangoRenderer) &PangoMatrix

pub fn pango_renderer_get_matrix(renderer &PangoRenderer) &PangoMatrix {
	return C.pango_renderer_get_matrix(renderer)
}

fn C.pango_renderer_get_layout(renderer &PangoRenderer) &PangoLayout

pub fn pango_renderer_get_layout(renderer &PangoRenderer) &PangoLayout {
	return C.pango_renderer_get_layout(renderer)
}

fn C.pango_renderer_get_layout_line(renderer &PangoRenderer) &PangoLayoutLine

pub fn pango_renderer_get_layout_line(renderer &PangoRenderer) &PangoLayoutLine {
	return C.pango_renderer_get_layout_line(renderer)
}

// __PANGO_RENDERER_H_
// Pango
// *pango-utils.c: Utilities for internal functions and modules
// * *Copyright (C) 2000 Red Hat Software
// * *This library is free software; you can redistribute it and/or
// *modify it under the terms of the GNU Library General Public
// *License as published by the Free Software Foundation; either
// *version 2 of the License, or (at your option) any later version.
// * *This library is distributed in the hope that it will be useful,
// *but WITHOUT ANY WARRANTY; without even the implied warranty of
// *MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the GNU
// *Library General Public License for more details.
// * *You should have received a copy of the GNU Library General Public
// *License along with this library; if not, write to the
// *Free Software Foundation, Inc., 59 Temple Place - Suite 330,
// *Boston, MA 02111-1307, USA.
//
fn C.pango_split_file_list(str &i8) &&u8

pub fn pango_split_file_list(str &i8) &&u8 {
	return C.pango_split_file_list(str)
}

fn C.pango_trim_string(str &i8) &i8

pub fn pango_trim_string(str &i8) &i8 {
	return C.pango_trim_string(str)
}

fn C.pango_read_line(stream &C.FILE, str &GString) Gint

pub fn pango_read_line(stream &C.FILE, str &GString) Gint {
	return C.pango_read_line(stream, str)
}

fn C.pango_skip_space(pos &&u8) Gboolean

pub fn pango_skip_space(pos &&u8) Gboolean {
	return C.pango_skip_space(pos)
}

fn C.pango_scan_word(pos &&u8, out &GString) Gboolean

pub fn pango_scan_word(pos &&u8, out &GString) Gboolean {
	return C.pango_scan_word(pos, out)
}

fn C.pango_scan_string(pos &&u8, out &GString) Gboolean

pub fn pango_scan_string(pos &&u8, out &GString) Gboolean {
	return C.pango_scan_string(pos, out)
}

fn C.pango_scan_int(pos &&u8, out &int) Gboolean

pub fn pango_scan_int(pos &&u8, out &int) Gboolean {
	return C.pango_scan_int(pos, out)
}

fn C.pango_parse_enum(type_ GType, str &i8, value &int, warn Gboolean, possible_values &&u8) Gboolean

pub fn pango_parse_enum(type_ GType, str &i8, value &int, warn Gboolean, possible_values &&u8) Gboolean {
	return C.pango_parse_enum(type_, str, value, warn, possible_values)
}

// Functions for parsing textual representations
// *of PangoFontDescription fields. They return TRUE if the input string
// *contains a valid value, which then has been assigned to the corresponding
// *field in the PangoFontDescription. If the warn parameter is TRUE,
// *a warning is printed (with g_warning) if the string does not
// *contain a valid value.
//
fn C.pango_parse_style(str &i8, style &PangoStyle, warn Gboolean) Gboolean

pub fn pango_parse_style(str &i8, style &PangoStyle, warn Gboolean) Gboolean {
	return C.pango_parse_style(str, style, warn)
}

fn C.pango_parse_variant(str &i8, variant &PangoVariant, warn Gboolean) Gboolean

pub fn pango_parse_variant(str &i8, variant &PangoVariant, warn Gboolean) Gboolean {
	return C.pango_parse_variant(str, variant, warn)
}

fn C.pango_parse_weight(str &i8, weight &PangoWeight, warn Gboolean) Gboolean

pub fn pango_parse_weight(str &i8, weight &PangoWeight, warn Gboolean) Gboolean {
	return C.pango_parse_weight(str, weight, warn)
}

fn C.pango_parse_stretch(str &i8, stretch &PangoStretch, warn Gboolean) Gboolean

pub fn pango_parse_stretch(str &i8, stretch &PangoStretch, warn Gboolean) Gboolean {
	return C.pango_parse_stretch(str, stretch, warn)
}

// Hint line position and thickness.
//
fn C.pango_quantize_line_geometry(thickness &int, position &int)

pub fn pango_quantize_line_geometry(thickness &int, position &int) {
	C.pango_quantize_line_geometry(thickness, position)
}

// A routine from fribidi that we either wrap or provide ourselves.
//
fn C.pango_log2vis_get_embedding_levels(text &Gchar, length int, pbase_dir &PangoDirection) &Guint8

pub fn pango_log2vis_get_embedding_levels(text &Gchar, length int, pbase_dir &PangoDirection) &Guint8 {
	return C.pango_log2vis_get_embedding_levels(text, length, pbase_dir)
}

// Unicode characters that are zero-width and should not be rendered
// *normally.
//
fn C.pango_is_zero_width(ch Gunichar) Gboolean

pub fn pango_is_zero_width(ch Gunichar) Gboolean {
	return C.pango_is_zero_width(ch)
}

fn C.pango_find_paragraph_boundary(text &i8, length int, paragraph_delimiter_index &int, next_paragraph_start &int)

pub fn pango_find_paragraph_boundary(text &i8, length int, paragraph_delimiter_index &int, next_paragraph_start &int) {
	C.pango_find_paragraph_boundary(text, length, paragraph_delimiter_index, next_paragraph_start)
}

// Pango version checking
// Encode a Pango version as an integer
//* *PANGO_VERSION_ENCODE:
// *@major: the major component of the version number
// *@minor: the minor component of the version number
// *@micro: the micro component of the version number
// * *This macro encodes the given Pango version into an integer.  The numbers
// *returned by %PANGO_VERSION and pango_version() are encoded using this macro.
// *Two encoded version numbers can be compared as integers.
//
// Encoded version of Pango at compile-time
//* *PANGO_VERSION:
// * *The version of Pango available at compile-time, encoded using PANGO_VERSION_ENCODE().
//
//* *PANGO_VERSION_STRING:
// * *A string literal containing the version of Pango available at compile-time.
//
//* *PANGO_VERSION_MAJOR:
// * *The major component of the version of Pango available at compile-time.
//
//* *PANGO_VERSION_MINOR:
// * *The minor component of the version of Pango available at compile-time.
//
//* *PANGO_VERSION_MICRO:
// * *The micro component of the version of Pango available at compile-time.
//
// Check that compile-time Pango is as new as required
//* *PANGO_VERSION_CHECK:
// *@major: the major component of the version number
// *@minor: the minor component of the version number
// *@micro: the micro component of the version number
// * *Checks that the version of Pango available at compile-time is not older than
// *the provided version number.
//
// Return encoded version of Pango at run-time
fn C.pango_version() int

pub fn pango_version() int {
	return C.pango_version()
}

// Return run-time Pango version as an string
fn C.pango_version_string() &i8

pub fn pango_version_string() &i8 {
	return C.pango_version_string()
}

// Check that run-time Pango is as new as required
fn C.pango_version_check(required_major int, required_minor int, required_micro int) &i8

pub fn pango_version_check(required_major int, required_minor int, required_micro int) &i8 {
	return C.pango_version_check(required_major, required_minor, required_micro)
}

// __PANGO_UTILS_H__
// Pango
// *pangocairo.h:
// * *Copyright (C) 1999, 2004 Red Hat, Inc.
// * *This library is free software; you can redistribute it and/or
// *modify it under the terms of the GNU Library General Public
// *License as published by the Free Software Foundation; either
// *version 2 of the License, or (at your option) any later version.
// * *This library is distributed in the hope that it will be useful,
// *but WITHOUT ANY WARRANTY; without even the implied warranty of
// *MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the GNU
// *Library General Public License for more details.
// * *You should have received a copy of the GNU Library General Public
// *License along with this library; if not, write to the
// *Free Software Foundation, Inc., 59 Temple Place - Suite 330,
// *Boston, MA 02111-1307, USA.
//
//* *PangoCairoFont:
// * *`PangoCairoFont` is an interface exported by fonts for
// *use with Cairo.
// * *The actual type of the font will depend on the particular
// *font technology Cairo was compiled to use.
// * *Since: 1.18
// */
// typedef struct _PangoCairoFont      PangoCairoFont;
//
///*This is a hack because PangoCairo is hijacking the Pango namespace, but
// *consumers of the PangoCairo API expect these symbols to live under the
// *PangoCairo namespace.
//
//* *PangoCairoFontMap:
// * *`PangoCairoFontMap` is an interface exported by font maps for
// *use with Cairo.
// * *The actual type of the font map will depend on the particular
// *font technology Cairo was compiled to use.
// * *Since: 1.10
// */
// typedef struct _PangoCairoFontMap        PangoCairoFontMap;
//
//#ifdef __GI_SCANNER__
//#define PANGO_CAIRO_TYPE_FONT_MAP       (pango_cairo_font_map_get_type())
//#define PANGO_CAIRO_FONT_MAP(obj)       (G_TYPE_CHECK_INSTANCE_CAST ((obj), PANGO_CAIRO_TYPE_FONT_MAP, PangoCairoFontMap))
//#define PANGO_CAIRO_IS_FONT_MAP(obj)    (G_TYPE_CHECK_INSTANCE_TYPE ((obj), PANGO_CAIRO_TYPE_FONT_MAP))
//#else
//#define PANGO_TYPE_CAIRO_FONT_MAP       (pango_cairo_font_map_get_type ())
//#define PANGO_CAIRO_FONT_MAP(object)    (G_TYPE_CHECK_INSTANCE_CAST ((object), PANGO_TYPE_CAIRO_FONT_MAP, PangoCairoFontMap))
//#define PANGO_IS_CAIRO_FONT_MAP(object) (G_TYPE_CHECK_INSTANCE_TYPE ((object), PANGO_TYPE_CAIRO_FONT_MAP))
//#endif
//
///*
// *PangoCairoShapeRendererFunc:
// *@cr: a Cairo context with current point set to where the shape should
// *be rendered
// *@attr: the %PANGO_ATTR_SHAPE to render
// *@do_path: whether only the shape path should be appended to current
// *path of @cr and no filling/stroking done.  This will be set
// *to %TRUE when called from pango_cairo_layout_path() and
// *pango_cairo_layout_line_path() rendering functions.
// *@data: (closure): user data passed to pango_cairo_context_set_shape_renderer()
// * *Function type for rendering attributes of type %PANGO_ATTR_SHAPE
// *with Pango's Cairo renderer.
//
pub type PangoCairoShapeRendererFunc = fn (&Cairo_t, &PangoAttrShape, Gboolean, Gpointer)

//
// *PangoCairoFontMap
//
fn C.pango_cairo_font_map_get_type() GType

pub fn pango_cairo_font_map_get_type() GType {
	return C.pango_cairo_font_map_get_type()
}

fn C.pango_cairo_font_map_new() &PangoFontMap

pub fn pango_cairo_font_map_new() &PangoFontMap {
	return C.pango_cairo_font_map_new()
}

fn C.pango_cairo_font_map_new_for_font_type(fonttype Cairo_font_type_t) &PangoFontMap

pub fn pango_cairo_font_map_new_for_font_type(fonttype Cairo_font_type_t) &PangoFontMap {
	return C.pango_cairo_font_map_new_for_font_type(fonttype)
}

fn C.pango_cairo_font_map_get_default() &PangoFontMap

pub fn pango_cairo_font_map_get_default() &PangoFontMap {
	return C.pango_cairo_font_map_get_default()
}

fn C.pango_cairo_font_map_set_default(fontmap &PangoCairoFontMap)

pub fn pango_cairo_font_map_set_default(fontmap &PangoCairoFontMap) {
	C.pango_cairo_font_map_set_default(fontmap)
}

fn C.pango_cairo_font_map_get_font_type(fontmap &PangoCairoFontMap) Cairo_font_type_t

pub fn pango_cairo_font_map_get_font_type(fontmap &PangoCairoFontMap) Cairo_font_type_t {
	return C.pango_cairo_font_map_get_font_type(fontmap)
}

fn C.pango_cairo_font_map_set_resolution(fontmap &PangoCairoFontMap, dpi f64)

pub fn pango_cairo_font_map_set_resolution(fontmap &PangoCairoFontMap, dpi f64) {
	C.pango_cairo_font_map_set_resolution(fontmap, dpi)
}

fn C.pango_cairo_font_map_get_resolution(fontmap &PangoCairoFontMap) f64

pub fn pango_cairo_font_map_get_resolution(fontmap &PangoCairoFontMap) f64 {
	return C.pango_cairo_font_map_get_resolution(fontmap)
}

fn C.pango_cairo_font_map_create_context(fontmap &PangoCairoFontMap) &PangoContext

pub fn pango_cairo_font_map_create_context(fontmap &PangoCairoFontMap) &PangoContext {
	return C.pango_cairo_font_map_create_context(fontmap)
}

//
// *PangoCairoFont
//
fn C.pango_cairo_font_get_type() GType

pub fn pango_cairo_font_get_type() GType {
	return C.pango_cairo_font_get_type()
}

fn C.pango_cairo_font_get_scaled_font(font &PangoCairoFont) &Cairo_scaled_font_t

pub fn pango_cairo_font_get_scaled_font(font &PangoCairoFont) &Cairo_scaled_font_t {
	return C.pango_cairo_font_get_scaled_font(font)
}

// Update a Pango context for the current state of a cairo context
//
fn C.pango_cairo_update_context(cr &Cairo_t, context &PangoContext)

pub fn pango_cairo_update_context(cr &Cairo_t, context &PangoContext) {
	C.pango_cairo_update_context(cr, context)
}

fn C.pango_cairo_context_set_font_options(context &PangoContext, options &Cairo_font_options_t)

pub fn pango_cairo_context_set_font_options(context &PangoContext, options &Cairo_font_options_t) {
	C.pango_cairo_context_set_font_options(context, options)
}

fn C.pango_cairo_context_get_font_options(context &PangoContext) &Cairo_font_options_t

pub fn pango_cairo_context_get_font_options(context &PangoContext) &Cairo_font_options_t {
	return C.pango_cairo_context_get_font_options(context)
}

fn C.pango_cairo_context_set_resolution(context &PangoContext, dpi f64)

pub fn pango_cairo_context_set_resolution(context &PangoContext, dpi f64) {
	C.pango_cairo_context_set_resolution(context, dpi)
}

fn C.pango_cairo_context_get_resolution(context &PangoContext) f64

pub fn pango_cairo_context_get_resolution(context &PangoContext) f64 {
	return C.pango_cairo_context_get_resolution(context)
}

fn C.pango_cairo_context_set_shape_renderer(context &PangoContext, func PangoCairoShapeRendererFunc, data Gpointer, dnotify GDestroyNotify)

pub fn pango_cairo_context_set_shape_renderer(context &PangoContext, func PangoCairoShapeRendererFunc, data Gpointer, dnotify GDestroyNotify) {
	C.pango_cairo_context_set_shape_renderer(context, func, data, dnotify)
}

fn C.pango_cairo_context_get_shape_renderer(context &PangoContext, data &Gpointer) PangoCairoShapeRendererFunc

pub fn pango_cairo_context_get_shape_renderer(context &PangoContext, data &Gpointer) PangoCairoShapeRendererFunc {
	return C.pango_cairo_context_get_shape_renderer(context, data)
}

// Convenience
//
fn C.pango_cairo_create_context(cr &Cairo_t) &PangoContext

pub fn pango_cairo_create_context(cr &Cairo_t) &PangoContext {
	return C.pango_cairo_create_context(cr)
}

fn C.pango_cairo_create_layout(cr voidptr) &PangoLayout

pub fn pango_cairo_create_layout(cr voidptr) &PangoLayout {
	return C.pango_cairo_create_layout(cr)
}

fn C.pango_cairo_update_layout(cr &Cairo_t, layout &PangoLayout)

pub fn pango_cairo_update_layout(cr &Cairo_t, layout &PangoLayout) {
	C.pango_cairo_update_layout(cr, layout)
}

//
// *Rendering
//
fn C.pango_cairo_show_glyph_string(cr &Cairo_t, font &PangoFont, glyphs &PangoGlyphString)

pub fn pango_cairo_show_glyph_string(cr &Cairo_t, font &PangoFont, glyphs &PangoGlyphString) {
	C.pango_cairo_show_glyph_string(cr, font, glyphs)
}

fn C.pango_cairo_show_glyph_item(cr &Cairo_t, text &i8, glyph_item &PangoGlyphItem)

pub fn pango_cairo_show_glyph_item(cr &Cairo_t, text &i8, glyph_item &PangoGlyphItem) {
	C.pango_cairo_show_glyph_item(cr, text, glyph_item)
}

fn C.pango_cairo_show_layout_line(cr &Cairo_t, line &PangoLayoutLine)

pub fn pango_cairo_show_layout_line(cr &Cairo_t, line &PangoLayoutLine) {
	C.pango_cairo_show_layout_line(cr, line)
}

fn C.g_object_unref(object voidptr)

fn C.pango_cairo_show_layout(cr voidptr, layout &PangoLayout)

pub fn pango_cairo_show_layout(cr voidptr, layout &PangoLayout) {
	C.pango_cairo_show_layout(cr, layout)
}

fn C.pango_cairo_show_error_underline(cr &Cairo_t, x f64, y f64, width f64, height f64)

pub fn pango_cairo_show_error_underline(cr &Cairo_t, x f64, y f64, width f64, height f64) {
	C.pango_cairo_show_error_underline(cr, x, y, width, height)
}

//
// *Rendering to a path
//
fn C.pango_cairo_glyph_string_path(cr &Cairo_t, font &PangoFont, glyphs &PangoGlyphString)

pub fn pango_cairo_glyph_string_path(cr &Cairo_t, font &PangoFont, glyphs &PangoGlyphString) {
	C.pango_cairo_glyph_string_path(cr, font, glyphs)
}

fn C.pango_cairo_layout_line_path(cr &Cairo_t, line &PangoLayoutLine)

pub fn pango_cairo_layout_line_path(cr &Cairo_t, line &PangoLayoutLine) {
	C.pango_cairo_layout_line_path(cr, line)
}

fn C.pango_cairo_layout_path(cr &Cairo_t, layout &PangoLayout)

pub fn pango_cairo_layout_path(cr &Cairo_t, layout &PangoLayout) {
	C.pango_cairo_layout_path(cr, layout)
}

fn C.pango_cairo_error_underline_path(cr &Cairo_t, x f64, y f64, width f64, height f64)

pub fn pango_cairo_error_underline_path(cr &Cairo_t, x f64, y f64, width f64, height f64) {
	C.pango_cairo_error_underline_path(cr, x, y, width, height)
}

// __PANGOCAIRO_H__
// Pango
// *pangofc-font.h: Base fontmap type for fontconfig-based backends
// * *Copyright (C) 2003 Red Hat Software
// * *This library is free software; you can redistribute it and/or
// *modify it under the terms of the GNU Library General Public
// *License as published by the Free Software Foundation; either
// *version 2 of the License, or (at your option) any later version.
// * *This library is distributed in the hope that it will be useful,
// *but WITHOUT ANY WARRANTY; without even the implied warranty of
// *MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the GNU
// *Library General Public License for more details.
// * *You should have received a copy of the GNU Library General Public
// *License along with this library; if not, write to the
// *Free Software Foundation, Inc., 59 Temple Place - Suite 330,
// *Boston, MA 02111-1307, USA.
//
// FreeType has undefined macros in its header
//* *PangoFcFont:
// * *`PangoFcFont` is a base class for font implementations
// *using the Fontconfig and FreeType libraries.
// * *It is used in onjunction with [class@PangoFc.FontMap].
// *When deriving from this class, you need to implement all
// *of its virtual functions other than shutdown() along with
// *the get_glyph_extents() virtual function from `PangoFont`.
//
pub struct PangoFcFont_vdup44 {
	parent_instance PangoFont
	font_pattern    &FcPattern
	// fully resolved pattern
	fontmap &PangoFontMap
	// associated map
	priv Gpointer
	// used internally
	matrix PangoMatrix
	// unused
	description     &PangoFontDescription
	metrics_by_lang &GSList
	is_hinted       Guint
	is_transformed  Guint
}

// PANGO_DISABLE_DEPRECATED
fn C.pango_fc_font_get_type() GType

pub fn pango_fc_font_get_type() GType {
	return C.pango_fc_font_get_type()
}

fn C.pango_fc_font_has_char(font &PangoFcFont, wc Gunichar) Gboolean

pub fn pango_fc_font_has_char(font &PangoFcFont, wc Gunichar) Gboolean {
	return C.pango_fc_font_has_char(font, wc)
}

fn C.pango_fc_font_get_glyph(font &PangoFcFont, wc Gunichar) Guint

pub fn pango_fc_font_get_glyph(font &PangoFcFont, wc Gunichar) Guint {
	return C.pango_fc_font_get_glyph(font, wc)
}

fn C.pango_fc_font_get_languages(font &PangoFcFont) &&PangoLanguage

pub fn pango_fc_font_get_languages(font &PangoFcFont) &&PangoLanguage {
	return C.pango_fc_font_get_languages(font)
}

fn C.pango_fc_font_get_pattern(font &PangoFcFont) &FcPattern

pub fn pango_fc_font_get_pattern(font &PangoFcFont) &FcPattern {
	return C.pango_fc_font_get_pattern(font)
}

fn C.pango_fc_font_get_unknown_glyph(font &PangoFcFont, wc Gunichar) PangoGlyph

pub fn pango_fc_font_get_unknown_glyph(font &PangoFcFont, wc Gunichar) PangoGlyph {
	return C.pango_fc_font_get_unknown_glyph(font, wc)
}

fn C.pango_fc_font_kern_glyphs(font &PangoFcFont, glyphs &PangoGlyphString)

pub fn pango_fc_font_kern_glyphs(font &PangoFcFont, glyphs &PangoGlyphString) {
	C.pango_fc_font_kern_glyphs(font, glyphs)
}

fn C.pango_fc_font_lock_face(font &PangoFcFont) FT_Face

pub fn pango_fc_font_lock_face(font &PangoFcFont) FT_Face {
	return C.pango_fc_font_lock_face(font)
}

fn C.pango_fc_font_unlock_face(font &PangoFcFont)

pub fn pango_fc_font_unlock_face(font &PangoFcFont) {
	C.pango_fc_font_unlock_face(font)
}

// __PANGO_FC_FONT_H__
// Pango
// *pangofc-decoder.h: Custom encoders/decoders on a per-font basis.
// * *Copyright (C) 2004 Red Hat Software
// * *This library is free software; you can redistribute it and/or
// *modify it under the terms of the GNU Library General Public
// *License as published by the Free Software Foundation; either
// *version 2 of the License, or (at your option) any later version.
// * *This library is distributed in the hope that it will be useful,
// *but WITHOUT ANY WARRANTY; without even the implied warranty of
// *MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the GNU
// *Library General Public License for more details.
// * *You should have received a copy of the GNU Library General Public
// *License along with this library; if not, write to the
// *Free Software Foundation, Inc., 59 Temple Place - Suite 330,
// *Boston, MA 02111-1307, USA.
//
//* *PangoFcDecoder:
// * *`PangoFcDecoder` is a virtual base class that implementations will
// *inherit from.
// * *It's the interface that is used to define a custom encoding for a font.
// *These objects are created in your code from a function callback that was
// *originally registered with [method@PangoFc.FontMap.add_decoder_find_func].
// *Pango requires information about the supported charset for a font as well
// *as the individual character to glyph conversions. Pango gets that
// *information via the #get_charset and #get_glyph callbacks into your
// *object implementation.
// * *Since: 1.6
// */
// struct _PangoFcDecoder
//{
//  /* private >
pub struct PangoFcDecoder_vdup45 {
	parent_instance GObject
}

//* *PangoFcDecoderClass:
// *@get_charset: This returns an `FcCharset` given a `PangoFcFont` that
// * includes a list of supported characters in the font.  The
// * #FcCharSet that is returned should be an internal reference to your
// * code.  Pango will not free this structure.  It is important that
// * you make this callback fast because this callback is called
// * separately for each character to determine Unicode coverage.
// *@get_glyph: This returns a single `PangoGlyph` for a given Unicode
// * code point.
// * *Class structure for `PangoFcDecoder`.
// * *Since: 1.6
// */
// struct _PangoFcDecoderClass
//{
//  /* private >
pub struct PangoFcDecoderClass_vdup46 {
	parent_class GObjectClass
	// vtable - not signals
	//< public >
	get_charset fn (&PangoFcDecoder, &PangoFcFont) &FcCharSet
	get_glyph   fn (&PangoFcDecoder, &PangoFcFont, Guint32) PangoGlyph
	//< private >
	// Padding for future expansion
	_pango_reserved1 fn ()
	_pango_reserved2 fn ()
	_pango_reserved3 fn ()
	_pango_reserved4 fn ()
}

fn C.pango_fc_decoder_get_type() GType

pub fn pango_fc_decoder_get_type() GType {
	return C.pango_fc_decoder_get_type()
}

fn C.pango_fc_decoder_get_charset(decoder &PangoFcDecoder, fcfont &PangoFcFont) &FcCharSet

pub fn pango_fc_decoder_get_charset(decoder &PangoFcDecoder, fcfont &PangoFcFont) &FcCharSet {
	return C.pango_fc_decoder_get_charset(decoder, fcfont)
}

fn C.pango_fc_decoder_get_glyph(decoder &PangoFcDecoder, fcfont &PangoFcFont, wc Guint32) PangoGlyph

pub fn pango_fc_decoder_get_glyph(decoder &PangoFcDecoder, fcfont &PangoFcFont, wc Guint32) PangoGlyph {
	return C.pango_fc_decoder_get_glyph(decoder, fcfont, wc)
}

// __PANGO_DECODER_H_
// Pango
// *pangofc-fontmap.h: Base fontmap type for fontconfig-based backends
// * *Copyright (C) 2003 Red Hat Software
// * *This library is free software; you can redistribute it and/or
// *modify it under the terms of the GNU Library General Public
// *License as published by the Free Software Foundation; either
// *version 2 of the License, or (at your option) any later version.
// * *This library is distributed in the hope that it will be useful,
// *but WITHOUT ANY WARRANTY; without even the implied warranty of
// *MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the GNU
// *Library General Public License for more details.
// * *You should have received a copy of the GNU Library General Public
// *License along with this library; if not, write to the
// *Free Software Foundation, Inc., 59 Temple Place - Suite 330,
// *Boston, MA 02111-1307, USA.
//
//
// *PangoFcFontMap
//
fn C.pango_fc_font_map_get_type() GType

pub fn pango_fc_font_map_get_type() GType {
	return C.pango_fc_font_map_get_type()
}

fn C.pango_fc_font_map_cache_clear(fcfontmap &PangoFcFontMap)

pub fn pango_fc_font_map_cache_clear(fcfontmap &PangoFcFontMap) {
	C.pango_fc_font_map_cache_clear(fcfontmap)
}

fn C.pango_fc_font_map_config_changed(fcfontmap &PangoFcFontMap)

pub fn pango_fc_font_map_config_changed(fcfontmap &PangoFcFontMap) {
	C.pango_fc_font_map_config_changed(fcfontmap)
}

fn C.pango_fc_font_map_set_config(fcfontmap &PangoFcFontMap, fcconfig &FcConfig)

pub fn pango_fc_font_map_set_config(fcfontmap &PangoFcFontMap, fcconfig &FcConfig) {
	C.pango_fc_font_map_set_config(fcfontmap, fcconfig)
}

fn C.pango_fc_font_map_get_config(fcfontmap &PangoFcFontMap) &FcConfig

pub fn pango_fc_font_map_get_config(fcfontmap &PangoFcFontMap) &FcConfig {
	return C.pango_fc_font_map_get_config(fcfontmap)
}

//* *PangoFcDecoderFindFunc:
// *@pattern: a fully resolved `FcPattern` specifying the font on the system
// *@user_data: user data passed to
// *  [method@PangoFc.FontMap.add_decoder_find_func]
// * *Callback function passed to [method@PangoFc.FontMap.add_decoder_find_func].
// * *Return value: a new reference to a custom decoder for this pattern,
// * or %NULL if the default decoder handling should be used.
// */
// typedef PangoFcDecoder *(*angoFcDecoderFindFunc) (FcPattern *attern,
//						    gpointer   user_data);
//
// PANGO_AVAILABLE_IN_1_6
// void pango_fc_font_map_add_decoder_find_func (PangoFcFontMap        *cfontmap,
//					      PangoFcDecoderFindFunc findfunc,
//					      gpointer               user_data,
//					      GDestroyNotify         dnotify);
// PANGO_AVAILABLE_IN_1_26
// PangoFcDecoder *ango_fc_font_map_find_decoder (PangoFcFontMap *cfontmap,
//					        FcPattern      *attern);
//
// PANGO_AVAILABLE_IN_1_4
// PangoFontDescription *ango_fc_font_description_from_pattern (FcPattern *attern,
//							      gboolean   include_size);
//
//#ifndef PANGO_DISABLE_DEPRECATED
// PANGO_DEPRECATED_IN_1_22_FOR(pango_font_map_create_context)
// PangoContext *pango_fc_font_map_create_context (PangoFcFontMap *cfontmap);
//#endif
// PANGO_AVAILABLE_IN_1_4
// void           pango_fc_font_map_shutdown       (PangoFcFontMap *cfontmap);
//
//
// PANGO_AVAILABLE_IN_1_44
// hb_face_t *pango_fc_font_map_get_hb_face (PangoFcFontMap *cfontmap,
//                                           PangoFcFont    *cfont);
//
///*
// *PangoFcSubstituteFunc:
// *@pattern: the FcPattern to tweak.
// *@data: user data.
// * *Function type for doing final config tweaking on prepared `FcPattern`s.
//
pub type PangoFcDecoderFindFunc = fn (&FcPattern, Gpointer) &PangoFcDecoder

fn C.pango_fc_font_map_add_decoder_find_func(fcfontmap &PangoFcFontMap, findfunc PangoFcDecoderFindFunc, user_data Gpointer, dnotify GDestroyNotify)

pub fn pango_fc_font_map_add_decoder_find_func(fcfontmap &PangoFcFontMap, findfunc PangoFcDecoderFindFunc, user_data Gpointer, dnotify GDestroyNotify) {
	C.pango_fc_font_map_add_decoder_find_func(fcfontmap, findfunc, user_data, dnotify)
}

fn C.pango_fc_font_map_find_decoder(fcfontmap &PangoFcFontMap, pattern &FcPattern) &PangoFcDecoder

pub fn pango_fc_font_map_find_decoder(fcfontmap &PangoFcFontMap, pattern &FcPattern) &PangoFcDecoder {
	return C.pango_fc_font_map_find_decoder(fcfontmap, pattern)
}

fn C.pango_fc_font_description_from_pattern(pattern &FcPattern, include_size Gboolean) &PangoFontDescription

pub fn pango_fc_font_description_from_pattern(pattern &FcPattern, include_size Gboolean) &PangoFontDescription {
	return C.pango_fc_font_description_from_pattern(pattern, include_size)
}

fn C.pango_fc_font_map_create_context(fcfontmap &PangoFcFontMap) &PangoContext

pub fn pango_fc_font_map_create_context(fcfontmap &PangoFcFontMap) &PangoContext {
	return C.pango_fc_font_map_create_context(fcfontmap)
}

fn C.pango_fc_font_map_shutdown(fcfontmap &PangoFcFontMap)

pub fn pango_fc_font_map_shutdown(fcfontmap &PangoFcFontMap) {
	C.pango_fc_font_map_shutdown(fcfontmap)
}

fn C.pango_fc_font_map_get_hb_face(fcfontmap &PangoFcFontMap, fcfont &PangoFcFont) &Hb_face_t

pub fn pango_fc_font_map_get_hb_face(fcfontmap &PangoFcFontMap, fcfont &PangoFcFont) &Hb_face_t {
	return C.pango_fc_font_map_get_hb_face(fcfontmap, fcfont)
}

pub type PangoFcSubstituteFunc = fn (&FcPattern, Gpointer)

//* *pango_fc_font_map_set_default_substitute:
// *@fontmap: a `PangoFcFontMap`
// *@func: function to call to to do final config tweaking on `FcPattern` objects
// *@data: data to pass to @func
// *@notify: function to call when @data is no longer used
// * *Sets a function that will be called to do final configuration
// *substitution on a `FcPattern` before it is used to load
// *the font.
// * *This function can be used to do things like set
// *hinting and antialiasing options.
// * *Since: 1.48
//
fn C.pango_fc_font_map_set_default_substitute(fontmap &PangoFcFontMap, func PangoFcSubstituteFunc, data Gpointer, notify GDestroyNotify)

pub fn pango_fc_font_map_set_default_substitute(fontmap &PangoFcFontMap, func PangoFcSubstituteFunc, data Gpointer, notify GDestroyNotify) {
	C.pango_fc_font_map_set_default_substitute(fontmap, func, data, notify)
}

//* *pango_fc_font_map_substitute_changed:
// *@fontmap: a `PangoFcFontMap`
// * *Call this function any time the results of the default
// *substitution function set with
// *[method@PangoFc.FontMap.set_default_substitute] change.
// * *That is, if your substitution function will return different
// *results for the same input pattern, you must call this function.
// * *Since: 1.48
//
fn C.pango_fc_font_map_substitute_changed(fontmap &PangoFcFontMap)

pub fn pango_fc_font_map_substitute_changed(fontmap &PangoFcFontMap) {
	C.pango_fc_font_map_substitute_changed(fontmap)
}

//* *PANGO_FC_GRAVITY:
// * *Fontconfig property that Pango sets on any
// *fontconfig pattern it passes to fontconfig
// *if a `PangoGravity` other than %PANGO_GRAVITY_SOUTH
// *is desired.
// * *The property will have a `PangoGravity` value as a string,
// *like "east". This can be used to write fontconfig configuration
// *rules to choose different fonts for horizontal and vertical
// *writing directions.
// * *Since: 1.20
//
//* *PANGO_FC_VERSION:
// * *Fontconfig property that Pango sets on any
// *fontconfig pattern it passes to fontconfig.
// * *The property will have an integer value equal to what
// *[func@Pango.version] returns. This can be used to write
// *fontconfig configuration rules that only affect certain
// *pango versions (or only pango-using applications, or only
// *non-pango-using applications).
// * *Since: 1.20
//
//* *PANGO_FC_PRGNAME:
// * *Fontconfig property that Pango sets on any
// *fontconfig pattern it passes to fontconfig.
// * *The property will have a string equal to what
// *g_get_prgname() returns. This can be used to write
// *fontconfig configuration rules that only affect
// *certain applications.
// * *This is equivalent to FC_PRGNAME in versions of
// *fontconfig that have that.
// * *Since: 1.24
//
//* *PANGO_FC_FONT_FEATURES:
// * *Fontconfig property that Pango reads from font
// *patterns to populate list of OpenType features
// *to be enabled for the font by default.
// * *The property will have a number of string elements,
// *each of which is the OpenType feature tag of one feature
// *to enable.
// * *This is equivalent to FC_FONT_FEATURES in versions of
// *fontconfig that have that.
// * *Since: 1.34
//
//* *PANGO_FC_FONT_VARIATIONS:
// * *Fontconfig property that Pango reads from font
// *patterns to populate list of OpenType font variations
// *to be used for a font.
// * *The property will have a string elements, each of which
// *a comma-separated list of OpenType axis setting of the
// *form AXIS=VALUE.
// * *This is equivalent to FC_FONT_VARIATIONS in versions of
// *fontconfig that have that.
//
// __PANGO_FC_FONT_MAP_H__
// Pango
// *pangoft2.h:
// * *Copyright (C) 1999 Red Hat Software
// *Copyright (C) 2000 Tor Lillqvist
// * *This library is free software; you can redistribute it and/or
// *modify it under the terms of the GNU Library General Public
// *License as published by the Free Software Foundation; either
// *version 2 of the License, or (at your option) any later version.
// * *This library is distributed in the hope that it will be useful,
// *but WITHOUT ANY WARRANTY; without even the implied warranty of
// *MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the GNU
// *Library General Public License for more details.
// * *You should have received a copy of the GNU Library General Public
// *License along with this library; if not, write to the
// *Free Software Foundation, Inc., 59 Temple Place - Suite 330,
// *Boston, MA 02111-1307, USA.
//
//* *PANGO_RENDER_TYPE_FT2: (skip)
// * *A string constant that was used to identify shape engines that work
// *with the FreeType backend. See %PANGO_RENDER_TYPE_FC for the replacement.
//
// __GI_SCANNER__
//* *PangoFT2SubstituteFunc:
// *@pattern: the FcPattern to tweak.
// *@data: user data.
// * *Function type for doing final config tweaking on prepared FcPatterns.
//
pub type PangoFT2SubstituteFunc = fn (&FcPattern, Gpointer)

// Calls for applications
fn C.pango_ft2_render(bitmap &FT_Bitmap, font &PangoFont, glyphs &PangoGlyphString, x Gint, y Gint)

pub fn pango_ft2_render(bitmap &FT_Bitmap, font &PangoFont, glyphs &PangoGlyphString, x Gint, y Gint) {
	C.pango_ft2_render(bitmap, font, glyphs, x, y)
}

fn C.pango_ft2_render_transformed(bitmap &FT_Bitmap, matrix &PangoMatrix, font &PangoFont, glyphs &PangoGlyphString, x int, y int)

pub fn pango_ft2_render_transformed(bitmap &FT_Bitmap, matrix &PangoMatrix, font &PangoFont, glyphs &PangoGlyphString, x int, y int) {
	C.pango_ft2_render_transformed(bitmap, matrix, font, glyphs, x, y)
}

fn C.pango_ft2_render_layout_line(bitmap &FT_Bitmap, line &PangoLayoutLine, x int, y int)

pub fn pango_ft2_render_layout_line(bitmap &FT_Bitmap, line &PangoLayoutLine, x int, y int) {
	C.pango_ft2_render_layout_line(bitmap, line, x, y)
}

fn C.pango_ft2_render_layout_line_subpixel(bitmap &FT_Bitmap, line &PangoLayoutLine, x int, y int)

pub fn pango_ft2_render_layout_line_subpixel(bitmap &FT_Bitmap, line &PangoLayoutLine, x int, y int) {
	C.pango_ft2_render_layout_line_subpixel(bitmap, line, x, y)
}

fn C.pango_ft2_render_layout(bitmap &FT_Bitmap, layout &PangoLayout, x int, y int)

pub fn pango_ft2_render_layout(bitmap &FT_Bitmap, layout &PangoLayout, x int, y int) {
	C.pango_ft2_render_layout(bitmap, layout, x, y)
}

fn C.pango_ft2_render_layout_subpixel(bitmap &FT_Bitmap, layout &PangoLayout, x int, y int)

pub fn pango_ft2_render_layout_subpixel(bitmap &FT_Bitmap, layout &PangoLayout, x int, y int) {
	C.pango_ft2_render_layout_subpixel(bitmap, layout, x, y)
}

fn C.pango_ft2_font_map_get_type() GType

pub fn pango_ft2_font_map_get_type() GType {
	return C.pango_ft2_font_map_get_type()
}

fn C.pango_ft2_font_map_new() &PangoFontMap

pub fn pango_ft2_font_map_new() &PangoFontMap {
	return C.pango_ft2_font_map_new()
}

fn C.pango_ft2_font_map_set_resolution(fontmap &PangoFT2FontMap, dpi_x f64, dpi_y f64)

pub fn pango_ft2_font_map_set_resolution(fontmap &PangoFT2FontMap, dpi_x f64, dpi_y f64) {
	C.pango_ft2_font_map_set_resolution(fontmap, dpi_x, dpi_y)
}

fn C.pango_ft2_font_map_set_default_substitute(fontmap &PangoFT2FontMap, func PangoFT2SubstituteFunc, data Gpointer, notify GDestroyNotify)

pub fn pango_ft2_font_map_set_default_substitute(fontmap &PangoFT2FontMap, func PangoFT2SubstituteFunc, data Gpointer, notify GDestroyNotify) {
	C.pango_ft2_font_map_set_default_substitute(fontmap, func, data, notify)
}

fn C.pango_ft2_font_map_substitute_changed(fontmap &PangoFT2FontMap)

pub fn pango_ft2_font_map_substitute_changed(fontmap &PangoFT2FontMap) {
	C.pango_ft2_font_map_substitute_changed(fontmap)
}

fn C.pango_ft2_font_map_create_context(fontmap &PangoFT2FontMap) &PangoContext

pub fn pango_ft2_font_map_create_context(fontmap &PangoFT2FontMap) &PangoContext {
	return C.pango_ft2_font_map_create_context(fontmap)
}

// API for rendering modules
//
fn C.pango_ft2_get_context(dpi_x f64, dpi_y f64) &PangoContext

pub fn pango_ft2_get_context(dpi_x f64, dpi_y f64) &PangoContext {
	return C.pango_ft2_get_context(dpi_x, dpi_y)
}

fn C.pango_ft2_font_map_for_display() &PangoFontMap

pub fn pango_ft2_font_map_for_display() &PangoFontMap {
	return C.pango_ft2_font_map_for_display()
}

fn C.pango_ft2_shutdown_display()

pub fn pango_ft2_shutdown_display() {
	C.pango_ft2_shutdown_display()
}

fn C.pango_ft2_get_unknown_glyph(font &PangoFont) PangoGlyph

pub fn pango_ft2_get_unknown_glyph(font &PangoFont) PangoGlyph {
	return C.pango_ft2_get_unknown_glyph(font)
}

fn C.pango_ft2_font_get_kerning(font &PangoFont, left PangoGlyph, right PangoGlyph) int

pub fn pango_ft2_font_get_kerning(font &PangoFont, left PangoGlyph, right PangoGlyph) int {
	return C.pango_ft2_font_get_kerning(font, left, right)
}

fn C.pango_ft2_font_get_face(font &PangoFont) FT_Face

pub fn pango_ft2_font_get_face(font &PangoFont) FT_Face {
	return C.pango_ft2_font_get_face(font)
}

fn C.pango_ft2_font_get_coverage(font &PangoFont, language &PangoLanguage) &PangoCoverage

pub fn pango_ft2_font_get_coverage(font &PangoFont, language &PangoLanguage) &PangoCoverage {
	return C.pango_ft2_font_get_coverage(font, language)
}

// PANGO_DISABLE_DEPRECATED
// __PANGOFT2_H__
