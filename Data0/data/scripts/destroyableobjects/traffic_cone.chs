import "chunk_objects_syntax.def"

sub main()
{
	Physics()
	{	
		EnablePhysicsThreshold(50.0);
		WakeUpPhysicsThreshold(10.0);
		Density(PLASTIC_BOX_DENSITY);
		CollisionsType(AVERAGE);
		PhysicsVolumeType(FROM_MESH_HELPERS);
		CollisionSound("hit_metal_post_po_XX.wav");
		CollisionSoundBig("hit_metal_post_po_XX.wav");
		
	}
}