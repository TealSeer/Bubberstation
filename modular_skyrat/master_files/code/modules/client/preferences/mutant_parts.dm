// Body Markings - This isn't used anymore and thus I'm making it not do anything.

/datum/preference/toggle/mutant_toggle/body_markings
	savefile_key = "body_markings_toggle"
	relevant_mutant_bodypart = "body_markings"

/datum/preference/toggle/mutant_toggle/body_markings/is_accessible(datum/preferences/preferences)
	. = ..() // Got to do this because of linters.
	return FALSE

/datum/preference/toggle/mutant_toggle/body_markings/apply_to_human(mob/living/carbon/human/target, value, datum/preferences/preferences)
	return FALSE

/datum/preference/choiced/mutant/body_markings
	savefile_key = "feature_body_markings"
	relevant_mutant_bodypart = "body_markings"
	type_to_check = /datum/preference/toggle/mutant_toggle/body_markings

/datum/preference/choiced/mutant/body_markings/is_accessible(datum/preferences/preferences)
	. = ..() // Got to do this because of linters.
	return FALSE

/datum/preference/choiced/mutant/body_markings/apply_to_human(mob/living/carbon/human/target, value, datum/preferences/preferences)
	return FALSE

/datum/preference/mutant_color/body_markings
	category = PREFERENCE_CATEGORY_SECONDARY_FEATURES
	savefile_identifier = PREFERENCE_CHARACTER
	savefile_key = "body_markings_color"
	relevant_mutant_bodypart = "body_markings"
	type_to_check = /datum/preference/toggle/mutant_toggle/body_markings

/datum/preference/mutant_color/body_markings/is_accessible(datum/preferences/preferences)
	. = ..() // Got to do this because of linters.
	return FALSE

/datum/preference/mutant_color/body_markings/apply_to_human(mob/living/carbon/human/target, value, datum/preferences/preferences)
	return FALSE

/datum/preference/emissive_toggle/body_markings
	category = PREFERENCE_CATEGORY_SECONDARY_FEATURES
	savefile_identifier = PREFERENCE_CHARACTER
	savefile_key = "body_markings_emissive"
	relevant_mutant_bodypart = "body_markings"
	type_to_check = /datum/preference/toggle/mutant_toggle/body_markings

/datum/preference/emissive_toggle/body_markings/is_accessible(datum/preferences/preferences)
	. = ..() // Got to do this because of linters.
	return FALSE

/datum/preference/emissive_toggle/body_markings/apply_to_human(mob/living/carbon/human/target, value, datum/preferences/preferences)
	return FALSE

/// Moth Markings - They don't work, and we use regular markings for those anyway, so we're going to disable them.

/datum/preference/toggle/mutant_toggle/moth_markings
	savefile_key = "moth_markings_toggle"
	relevant_mutant_bodypart = "moth_markings"

/datum/preference/toggle/mutant_toggle/moth_markings/is_accessible(datum/preferences/preferences)
	. = ..() // Got to do this because of linters.
	return FALSE

/datum/preference/choiced/mutant/moth_markings
	savefile_key = "feature_moth_markings"
	relevant_mutant_bodypart = "moth_markings"
	type_to_check = /datum/preference/toggle/mutant_toggle/moth_markings

/datum/preference/choiced/mutant/moth_markings/is_accessible(datum/preferences/preferences)
	. = ..() // Got to do this because of linters.
	return FALSE

/datum/preference/choiced/mutant/moth_markings/apply_to_human(mob/living/carbon/human/target, value, datum/preferences/preferences)
	return FALSE

/datum/preference/mutant_color/moth_markings
	category = PREFERENCE_CATEGORY_SECONDARY_FEATURES
	savefile_identifier = PREFERENCE_CHARACTER
	savefile_key = "moth_markings_color"
	relevant_mutant_bodypart = "moth_markings"
	type_to_check = /datum/preference/toggle/mutant_toggle/moth_markings

/datum/preference/mutant_color/moth_markings/is_accessible(datum/preferences/preferences)
	. = ..() // Got to do this because of linters.
	return FALSE

/datum/preference/mutant_color/moth_markings/apply_to_human(mob/living/carbon/human/target, value)
	return FALSE

/datum/preference/emissive_toggle/moth_markings
	category = PREFERENCE_CATEGORY_SECONDARY_FEATURES
	savefile_identifier = PREFERENCE_CHARACTER
	savefile_key = "moth_markings_emissive"
	relevant_mutant_bodypart = "moth_markings"
	type_to_check = /datum/preference/toggle/mutant_toggle/moth_markings

/datum/preference/emissive_toggle/moth_markings/is_accessible(datum/preferences/preferences)
	. = ..() // Got to do this because of linters.
	return FALSE

/datum/preference/emissive_toggle/moth_markings/apply_to_human(mob/living/carbon/human/target, value)
	return FALSE
