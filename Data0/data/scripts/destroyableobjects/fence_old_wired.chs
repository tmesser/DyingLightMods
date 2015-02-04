import "chunk_objects_syntax.def"

sub ChunksSettings()
{

	Physics()
	{		
		Density(METAL_BOX_DENSITY);
    }
        
    Destroyable()
    {

 		DeathFx("wood_roof_collapse_sequence.fx");
 		DeathSound("");
           // BlastForceFromHit(1.2);
            // BlastForce(1.2);
             BlastVert(0.9);
             BlastHorz(1);
		AggroSoundType("DESTROYABLE_SMALL");	 
    }
}

sub main()
{
	Physics()
	{		
		PhysicsScript("single_dropped_inventory.phx");
		Density(METAL_BOX_DENSITY);
        WakeUpPhysicsThreshold(200.0);
		//EnablePhysicsThreshold(10.0);	
        //CollisionsType(TINY);      
	}
	
	NavMesh()
	{
        ModifyNavMeshWhenInactive(true);
		ModifyNavMeshWhenActive(true);
		ModifyNavMeshWhenDestroyed(false);
	}	
	
	Destroyable()
	{
		TakeDamageThreshold(10.0);
        Health(10.0);
        DeathFx("wood_box_destruct_big_sequence.fx");
        DeathSound("destroyable_wooden_box_XX.wav");
        
	}
 	
	Chunk("#01", "ChunkObject", "")
 	{
 		Physics()
 		{
            WakeUpPhysicsThreshold(0.0);
            PhysicsScript("single_dropped_inventory.phx");
            PhysicsVolumeType(BOX);
            CollisionsType(TINY);
 		}

 		Visibility()
 		{
 			//VanishTime(50.0);
 			VanishRange(55.0);
 		}
		Destroyable()
		{
        BlastForceFromHit(0);
        BlastForce(0);
        BlastVert(0);
        BlastHorz(0);
		}
 	}
    
    Chunk("#02", "ChunkObject", "")
 	{
 		Physics()
 		{
            WakeUpPhysicsThreshold(0.0);
            PhysicsScript("single_dropped_inventory.phx");
 			CollisionsType(TINY);
            PhysicsVolumeType(BOX);
 		}
 	

 
 		Visibility()
 		{
 			//VanishTime(50.0);
 			VanishRange(50.0);
 		}

		Destroyable()
		{

 		DeathFx("wood_roof_collapse_sequence.fx");
 		DeathSound("");
           // BlastForceFromHit(20);
            // BlastForce(10);
             BlastVert(3);
             BlastHorz(2);
		}
	
 	}
    Chunk("#03", "ChunkObject", "")
 	{
 		Physics()
 		{
            WakeUpPhysicsThreshold(0.0);
            PhysicsScript("single_dropped_inventory.phx");
 			CollisionsType(TINY);
            PhysicsVolumeType(BOX);
 		}
 	
 		use ChunksSettings();
 
 		Visibility()
 		{
 			VanishTime(20.0);
 			VanishRange(55.0);
 		}
		Destroyable()
		{

 		DeathFx("wood_roof_collapse_sequence.fx");
 		DeathSound("");

		}
 	}
    Chunk("#04", "ChunkObject", "")
 	{
 		Physics()
 		{
            WakeUpPhysicsThreshold(0.0);
            PhysicsScript("single_dropped_inventory.phx");
 			CollisionsType(TINY);
            PhysicsVolumeType(BOX);
 		}
 	

 
 		Visibility()
 		{
 			VanishTime(20.0);
 			VanishRange(55.0);
 		}
		Destroyable()
		{

 		DeathFx("wood_roof_collapse_sequence.fx");
 		DeathSound("");
           BlastForceFromHit(10);
            BlastForce(5);
             BlastVert(0);
             BlastHorz(5);
		}
 	}
}
