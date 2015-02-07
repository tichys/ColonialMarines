/mob/living/simple_animal/hostile/alien
	name = "alien hunter"
	desc = "Hiss!"
	icon = 'icons/mob/alien.dmi'
	icon_state = "Hunter Running"
	icon_living = "Hunter Walking"
	icon_dead = "Hunter Dead"
	icon_gib = "syndicate_gib"
	response_help = "pokes the"
	response_disarm = "shoves the"
	response_harm = "hits the"
	speed = -1
	meat_type = /obj/item/weapon/reagent_containers/food/snacks/xenomeat
	maxHealth = 100
	health = 100
	harm_intent_damage = 5
	melee_damage_lower = 25
	melee_damage_upper = 25
	attacktext = "slashes"
	a_intent = "harm"
	attack_sound = 'sound/weapons/bladeslice.ogg'
	min_oxy = 0
	max_oxy = 0
	min_tox = 0
	max_tox = 0
	min_co2 = 0
	max_co2 = 0
	min_n2 = 0
	max_n2 = 0
	unsuitable_atoms_damage = 15
	faction = "alien"
	wall_smash = 1
	status_flags = CANPUSH
	minbodytemp = 0
	heat_damage_per_tick = 20


/mob/living/simple_animal/hostile/alien/drone
	name = "alien drone"
	icon_state = "Drone Running"
	icon_living = "Drone Walking"
	icon_dead = "Drone Dead"
	health = 60
	melee_damage_lower = 15
	melee_damage_upper = 15

/mob/living/simple_animal/hostile/alien/sentinel
	name = "alien sentinel"
	icon_state = "Sentinal Running"
	icon_living = "Sentinal Running"
	icon_dead = "Sentinal Dead"
	health = 120
	melee_damage_lower = 15
	melee_damage_upper = 15
	ranged = 1
	projectiletype = /obj/item/projectile/neurotox
	projectilesound = 'sound/weapons/pierce.ogg'


/mob/living/simple_animal/hostile/alien/queen
	name = "alien queen"
	icon_state = "alienq_running"
	icon_living = "alienq_running"
	icon_dead = "alienq_l"
	health = 250
	maxHealth = 250
	melee_damage_lower = 5
	melee_damage_upper = 10
	ranged = 0
	move_to_delay = 3
	projectiletype = /obj/item/projectile/neurotox
	projectilesound = 'sound/weapons/pierce.ogg'
	rapid = 0
	status_flags = 0

/mob/living/simple_animal/hostile/alien/queen/large
	name = "alien empress"
	icon = 'icons/mob/alienqueen.dmi'
	icon_state = "queen_s"
	icon_living = "queen_s"
	icon_dead = "queen_dead"
	move_to_delay = 4
	maxHealth = 400
	health = 400

/obj/item/projectile/neurotox
	damage = 30
	icon_state = "toxin"

/mob/living/simple_animal/hostile/alien/Die()
	..()
	visible_message("<b>[src]</b> lets out a waning guttural screech, green blood bubbling from its maw...")
	playsound(src, 'sound/voice/hiss6.ogg', 100, 1)