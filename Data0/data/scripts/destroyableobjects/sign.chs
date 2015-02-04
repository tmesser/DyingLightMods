import "chunk_objects_syntax.def"

sub main()
{
	Physics()
	{		
		EnablePhysicsThreshold(250.0);
		WakeUpPhysicsThreshold(10.0);
		Density(METAL_BOX_DENSITY);
		CollisionsType(LARGE);
		CollisionSound("hit_metal_post_po_XX.wav");
		CollisionSoundBig("hit_metal_post_po_XX.wav");
	}
}