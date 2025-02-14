/datum/job/chaplain
	title = "Chaplain"
	department = "Service"
	department_flag = SRV
	total_positions = 1
	spawn_positions = 1
	minimum_character_age = list(SPECIES_HUMAN = 21)
	economic_power = 5
	minimal_player_age = 0
	supervisors = "the Executive Officer"
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/service/chaplain
	allowed_branches = list(
		/datum/mil_branch/civilian,
		/datum/mil_branch/expeditionary_corps = /decl/hierarchy/outfit/job/torch/crew/service/chaplain/ec,
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/service/chaplain/fleet)
	allowed_ranks = list(
		/datum/mil_rank/civ/contractor,
		/datum/mil_rank/fleet/o1,
		/datum/mil_rank/fleet/o2,
		/datum/mil_rank/ec/o1)
	min_skill = list(SKILL_BUREAUCRACY = SKILL_BASIC)
	access = list(access_morgue, access_chapel_office, access_crematorium, access_solgov_crew, access_medical, access_maint_tunnels)
	minimal_access = list()

/datum/job/janitor
	title = "uwu gyne maid C:"
	department = "Service"
	department_flag = SRV
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Executive Officer"
	minimum_character_age = list(SPECIES_HUMAN = 18)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/service/janitor
	allowed_branches = list(
		/datum/mil_branch/civilian,
		/datum/mil_branch/expeditionary_corps = /decl/hierarchy/outfit/job/torch/crew/service/janitor/ec,
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/service/janitor/fleet
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/contractor,
		/datum/mil_rank/fleet/e2,
		/datum/mil_rank/ec/e3,
		/datum/mil_rank/fleet/e3,
		/datum/mil_rank/fleet/e4
	)
	max_pow_cat = 1
	max_cit_rank = 1
	min_skill = list(   SKILL_HAULING = SKILL_BASIC)

	access = list(access_maint_tunnels, access_emergency_storage, access_janitor, access_solgov_crew, access_hangar)
	minimal_access = list()
	
/datum/job/janitor/handle_variant_join(var/mob/living/carbon/human/H, var/alt_title)
	H.set_species(SPECIES_MANTID_GYNE)
	
/datum/job/janitor/equip(var/mob/living/carbon/human/H) 
	..()
	qdel(H.internal_organs_by_name[BP_LUNGS]) //Delete the old lungs
	H.internal_organs_by_name[BP_LUNGS] = new /obj/item/organ/internal/lungs/tirolungs //Install new ones
	to_chat(H, SPAN_DANGER("The FUCKING HUMANS!!!!@!@!@!@ have altered you to breathe THEIR STINKY FARTDS :DDDDD"))
	
	
/datum/job/chef
	title = "Cook"
	department = "Service"
	department_flag = SRV
	total_positions = 2
	spawn_positions = 2
	minimum_character_age = list(SPECIES_HUMAN = 18)
	supervisors = "the Executive Officer"
	alt_titles = list(
		"Chef",
		"Culinary Specialist",
		"Apprentice Chef"
		)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/service/cook
	allowed_branches = list(
		/datum/mil_branch/civilian,
		/datum/mil_branch/expeditionary_corps = /decl/hierarchy/outfit/job/torch/crew/service/cook/ec,
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/service/cook/fleet
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/contractor,
		/datum/mil_rank/ec/e3,
		/datum/mil_rank/fleet/e2,
		/datum/mil_rank/fleet/e3,
		/datum/mil_rank/fleet/e4
	)
	min_skill = list(   SKILL_COOKING   = SKILL_ADEPT,
	                    SKILL_BOTANY    = SKILL_BASIC,
	                    SKILL_CHEMISTRY = SKILL_BASIC)
	access = list(access_maint_tunnels, access_hydroponics, access_kitchen, access_solgov_crew, access_bar, access_commissary)
	minimal_access = list()

/datum/job/bartender
	title = "Bartender"
	department = "Service"
	department_flag = SRV
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Executive Officer and the Corporate Liaison"
	minimum_character_age = list(SPECIES_HUMAN = 18)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/service/bartender
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(/datum/mil_rank/civ/contractor)
	alt_titles = list(
		"Mixologist",
		"Barista",
		"Apprentice Bartender"
		)
	access = list(access_hydroponics, access_bar, access_solgov_crew, access_kitchen, access_commissary, access_maint_tunnels)
	minimal_access = list()
	min_skill = list(   SKILL_COOKING   = SKILL_BASIC,
	                    SKILL_BOTANY    = SKILL_BASIC,
	                    SKILL_CHEMISTRY = SKILL_BASIC)

/datum/job/crew
	title = "Crewman"
	department = "Service"
	department_flag = SRV
	total_positions = 10
	spawn_positions = 10
	supervisors = "the Executive Officer and SolGov Personnel"
	minimum_character_age = list(SPECIES_HUMAN = 18)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/service/crewman
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/service/crewman/fleet
	)
	allowed_ranks = list(
		/datum/mil_rank/ec/e3,
		/datum/mil_rank/fleet/e2,
		/datum/mil_rank/fleet/e3,
		/datum/mil_rank/fleet/e4
	)

	access = list(access_maint_tunnels, access_emergency_storage, access_solgov_crew)
