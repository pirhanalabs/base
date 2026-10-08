class Boot extends plib.engine.Application
{
	public static function main()
	{
		new Boot(256, 144, true); // Mina the Hollower
	}

	override function ready()
	{
		super.ready();

		hxd.Res.initEmbed();
		hxd.res.Resource.LIVE_UPDATE = true;
		resources.FontResources.initialize();
		inputs.configure(GameInput.createConfig());
	}
}
