/datum/preference/toggle/mutant_toggle/moth_antennae
	savefile_key = "moth_antennae_toggle"
	relevant_mutant_bodypart = "moth_antennae"

/datum/preference/choiced/mutant/moth_antennae
	main_feature_name = "Moth Antennae"
	savefile_key = "feature_moth_antennae"
	relevant_mutant_bodypart = "moth_antennae"
	type_to_check = /datum/preference/toggle/mutant_toggle/moth_antennae
	var/datum/universal_icon/moth_head

/datum/preference/choiced/mutant/moth_antennae/New()
	. = ..()
	moth_head = uni_icon('icons/mob/human/species/moth/bodyparts.dmi', "moth_head")
	moth_head.blend_icon(uni_icon('icons/mob/human/human_face.dmi', "motheyes_l"), ICON_OVERLAY)
	moth_head.blend_icon(uni_icon('icons/mob/human/human_face.dmi', "motheyes_r"), ICON_OVERLAY)

/datum/preference/choiced/mutant/moth_antennae/generate_icon(datum/sprite_accessory/sprite_accessory, dir)
	var/datum/universal_icon/icon_with_antennae = moth_head.copy()
	icon_with_antennae.blend_icon(uni_icon(sprite_accessory.icon, "m_moth_antennae_[sprite_accessory.icon_state]_FRONT"), ICON_OVERLAY)
	icon_with_antennae.scale(64, 64)
	icon_with_antennae.crop(15, 64, 15 + 31, 64 - 31)

	return icon_with_antennae

/datum/preference/mutant_color/moth_antennae
	savefile_key = "moth_antennae_color"
	relevant_mutant_bodypart = "moth_antennae"
	type_to_check = /datum/preference/toggle/mutant_toggle/moth_antennae

/datum/preference/emissive_toggle/moth_antennae
	savefile_key = "moth_antennae_emissive"
	relevant_mutant_bodypart = "moth_antennae"
	type_to_check = /datum/preference/toggle/mutant_toggle/moth_antennae
