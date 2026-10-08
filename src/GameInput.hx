import plib.engine.input.InputConfig;
import plib.engine.input.InputKey;

class GameInput
{
	public static final LEFT = new InputKey('left');
	public static final RIGHT = new InputKey('right');
	public static final UP = new InputKey('up');
	public static final DOWN = new InputKey('down');
	public static final JUMP = new InputKey('jump');

	public static function createConfig():InputConfig
	{
		var config = new InputConfig();

		config.action(LEFT);
		config.action(RIGHT);
		config.action(UP);
		config.action(DOWN);
		config.action(JUMP);

		var keyboard = config.keyboard('keyboard');
		keyboard.bind(LEFT, Key(hxd.Key.LEFT));
		keyboard.bind(LEFT, Key(hxd.Key.A));
		keyboard.bind(RIGHT, Key(hxd.Key.RIGHT));
		keyboard.bind(RIGHT, Key(hxd.Key.D));
		keyboard.bind(UP, Key(hxd.Key.W));
		keyboard.bind(UP, Key(hxd.Key.UP));
		keyboard.bind(DOWN, Key(hxd.Key.S));
		keyboard.bind(DOWN, Key(hxd.Key.DOWN));
		keyboard.bind(JUMP, Key(hxd.Key.SPACE));

		return config;
	}
}
