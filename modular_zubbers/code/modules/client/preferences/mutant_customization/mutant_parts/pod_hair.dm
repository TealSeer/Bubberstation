/datum/preference/choiced/mutant/pod_hair
	savefile_key = "feature_pod_hair"
	main_feature_name = "Hairstyle"
	default_accessory_name = "Ivy"
	relevant_mutant_bodypart = "pod_hair"
	supplemental_features = list("pod_hair_color")
	var/datum/universal_icon/pod_head

/datum/preference/choiced/mutant/pod_hair/New()
	. = ..()
	pod_head = uni_icon('icons/mob/human/bodyparts_greyscale.dmi', "pod_head_m")
	pod_head.blend_color(COLOR_GREEN, ICON_MULTIPLY)

/datum/preference/choiced/mutant/pod_hair/generate_icon(datum/sprite_accessory/pod_hair, dir)
	var/datum/universal_icon/icon_with_hair = pod_head.copy()
	var/datum/universal_icon/icon_adj = uni_icon(pod_hair.icon, "m_pod_hair_[pod_hair.icon_state]_FRONT_OVER_HAIR")
	var/datum/universal_icon/icon_front = uni_icon(pod_hair.icon, "m_pod_hair_[pod_hair.icon_state]_FRONT_OVER")
	icon_front.blend_color(COLOR_MAGENTA, ICON_MULTIPLY)
	icon_adj.blend_color(COLOR_VIBRANT_LIME, ICON_MULTIPLY)
	icon_adj.blend_icon(icon_front, ICON_OVERLAY)
	icon_with_hair.blend_icon(icon_adj, ICON_OVERLAY)
	icon_with_hair.scale(64, 64)
	icon_with_hair.crop(15, 64 - 31, 15 + 31, 64)

	return icon_with_hair

/datum/preference/choiced/mutant/pod_hair/is_accessible(datum/preferences/preferences, check_page)
	if(!current_species_has_savekey(preferences))
		return FALSE
	. = ..()

/datum/preference/choiced/mutant/pod_hair/apply_to_human(mob/living/carbon/human/target, value, datum/preferences/preferences)
	var/species_path = preferences?.read_preference(/datum/preference/choiced/species)
	if(!ispath(species_path, /datum/species/pod)) // This is what we do so it doesn't show up on non-podpeople.
		return

	return ..()

/datum/preference/mutant_color/pod_hair_color
	savefile_key = "pod_hair_color"
	relevant_mutant_bodypart = "pod_hair"
	type_to_check = /datum/preference/choiced/mutant/pod_hair

/datum/preference/emissive_toggle/pod_hair_emissive
	savefile_key = "pod_hair_emissive"
	relevant_mutant_bodypart = "pod_hair"
	type_to_check = /datum/preference/choiced/mutant/pod_hair
