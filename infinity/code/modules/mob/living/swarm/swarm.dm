/mob/living/swarm
	name = "Swarmling"
	real_name = "Swarmling"
	voice_name = "Swarmling"
	icon = 'infinity/icons/swarm/mob.dmi'
	icon_state = "have_not"
	throw_range = 1
	throw_speed = 3

	//���������� ����������, ��������� �� �����, ����� � ����������� �������
	var/charge //����� ������������
	var/flow_charge //�������
	var/max_charge //������������ �����
	var/battary_overdrive //������� �� �����

	//���������� ��������� �� �������
	var/core_slot //����� ��� ����
	var/uni_slot //����� ��� ������ ������������
	var/attack_slot //����� ��� ���������� ������������
	var/def_slot //����� ��� ��������� ������������
	var/sup_slot //����� ��� ���������(�������������/�������)
	var/spec_slot //����������� �� ������������
	var/burn_resist //������ �� ��������� �����
	var/brute_resist //������ �� ����������� �����
	var/toxin_resist = 0 //��� ���������, �� � ���?

	var/list/hud_list[10]

	var/datum/species/species //Contains icon generation and language information, set during New().

/mob/living/swarm/New(var/new_loc, var/new_species = null)
	if(!species)
		if(new_species)
			set_species(new_species,1)
		else
			set_species()

	hud_list[HEALTH_HUD]      = new /image/hud_overlay('icons/mob/hud_med.dmi', src, "100")
	hud_list[STATUS_HUD]      = new /image/hud_overlay('icons/mob/hud.dmi', src, "hudhealthy")
	hud_list[LIFE_HUD]	      = new /image/hud_overlay('icons/mob/hud.dmi', src, "hudhealthy")
	hud_list[ID_HUD]          = new /image/hud_overlay(GLOB.using_map.id_hud_icons, src, "hudunknown")
	hud_list[WANTED_HUD]      = new /image/hud_overlay('icons/mob/hud.dmi', src, "hudblank")
	hud_list[IMPLOYAL_HUD]    = new /image/hud_overlay('icons/mob/hud.dmi', src, "hudblank")
	hud_list[IMPCHEM_HUD]     = new /image/hud_overlay('icons/mob/hud.dmi', src, "hudblank")
	hud_list[IMPTRACK_HUD]    = new /image/hud_overlay('icons/mob/hud.dmi', src, "hudblank")
	hud_list[SPECIALROLE_HUD] = new /image/hud_overlay('icons/mob/hud.dmi', src, "hudblank")
	hud_list[STATUS_HUD_OOC]  = new /image/hud_overlay('icons/mob/hud.dmi', src, "hudhealthy")
	..()

/mob/living/swarm/Stat()
	.=..()
	if(statpanel("Status"))
		stat("Intent:", "[a_intent]")
		stat("Move Mode:", "[move_intent.name]")
		stat("Battary charge:", "[charge]")
		stat("Flow charge:", "[flow_charge]")

/mob/living/swarm/proc/set_species(var/new_species, var/default_colour = 1)
	if(!new_species)
		new_species = SPECIES_SWARM

/mob/living/swarm/reset_view(atom/A, update_hud = 1)
	..()
	if(update_hud)
		handle_regular_hud_updates()