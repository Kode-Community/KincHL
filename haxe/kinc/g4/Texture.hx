package kinc.g4;

import kinc.Image.ImageFormat;

@:build(kinc.Macros.build_struct("g4_texture", true))
@:hlNative("kinc", "hl_g4_texture_")
abstract Texture(hl.Abstract<"g4_texture">) {
	public function new() {
		this = alloc();
	}

	public var tex_width(get, set):Int;
	public var tex_height(get, set):Int;
	public var tex_depth(get, set):Int;
	public var format(get, set):ImageFormat;

	public function init(width:Int, height:Int, format:ImageFormat):Void;

	public function init3d(width:Int, height:Int, depth:Int, format:ImageFormat):Void;

	public function initFromImage(img:kinc.Image):Void;

	public function initFromImage3d(img:kinc.Image):Void;

	public function lock():hl.BytesAccess<hl.UI8>;

	public function unlock():Void;

	public function clear(x:Int, y:Int, z:Int, width:Int, height:Int, depth:Int, color:Int):Void;

	public function generateMipmaps(levels:Int):Void;

	public function setMipmap(img:Image, level:Int):Void;

	public function stride():Int;
}
