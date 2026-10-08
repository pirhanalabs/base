package resources;

enum Font{
    Pixel8;
    Mystery8;
}

class FontResources{

    static var fonts:Map<Font, h2d.Font>;

    public static function initialize(){
        fonts = [];

        fonts.set(Pixel8, hxd.Res.fonts.pixelfont.pixelfont.toFont());
        fonts.set(Mystery8, hxd.Res.fonts.mysteryfont.mysteryfont_8.toFont());
    }

    public static function get(font:Font){
        return fonts.get(font);
    }
}

