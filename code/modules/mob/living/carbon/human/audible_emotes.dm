/mob/living/proc/agony_scream()
	if(stat || isMonkey())
		return
	var/scream_sound = null
	var/message = null

	if(ishuman(src))
		var/mob/living/carbon/human/H = src
		if(!is_muzzled())
			switch(gender)
				if(MALE)
					scream_sound = pick('infinity/sound/voice/pain_male_1.ogg','infinity/sound/voice/pain_male_2.ogg','infinity/sound/voice/pain_male_3.ogg')
				if(FEMALE)
					scream_sound = pick('infinity/sound/voice/agony_female_1.ogg','infinity/sound/voice/agony_female_1.ogg','infinity/sound/voice/agony_female_1.ogg')
			message = "������ �� ����!"
		else
			message = "������ ������� �������!"

		if(scream_sound)
			if(H.species.name in SOUNDED_SPECIES)
				playsound(src, scream_sound, 50, 0, 1)

	if(message)
		custom_emote(2, message)

/mob/living/proc/agony_moan()
	if(stat || isMonkey())
		return
	var/moan_sound = null
	var/message = null

	if(ishuman(src))
		var/mob/living/carbon/human/H = src
		if(!is_muzzled())
			switch(gender)
				if(MALE) moan_sound = pick('infinity/sound/voice/moan_male_1.ogg','infinity/sound/voice/moan_male_2.ogg','infinity/sound/voice/moan_male_3.ogg')
				if(FEMALE) moan_sound = pick('infinity/sound/voice/moan_female_1.ogg','infinity/sound/voice/moan_female_2.ogg','infinity/sound/voice/moan_female_3.ogg')
			message = "������ �� ����!"
		else
			message = "������ ������� �������!"

		if(moan_sound)
			if(H.species.name in SOUNDED_SPECIES)
				playsound(src, moan_sound, 50, 0, 1)

	if(message)
		custom_emote(2, message)
