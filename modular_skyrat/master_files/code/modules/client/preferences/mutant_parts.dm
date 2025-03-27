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

// Synth Hair Opacity

/datum/preference/toggle/mutant_toggle/hair_opacity
	savefile_key = "feature_hair_opacity_toggle"
	relevant_mutant_bodypart = MUTANT_SYNTH_HAIR

/datum/preference/numeric/hair_opacity
	category = PREFERENCE_CATEGORY_SECONDARY_FEATURES
	savefile_identifier = PREFERENCE_CHARACTER
	savefile_key = "feature_hair_opacity"
	relevant_mutant_bodypart = MUTANT_SYNTH_HAIR
	maximum = 255
	minimum = 40 // Any lower, and hair's borderline invisible on lighter colours.

/datum/preference/numeric/hair_opacity/create_default_value()
	return maximum

/datum/preference/numeric/hair_opacity/is_accessible(datum/preferences/preferences)
	var/passed_initial_check = ..(preferences)
	var/allowed = preferences.read_preference(/datum/preference/toggle/allow_mismatched_parts) && preferences.read_preference(/datum/preference/toggle/mutant_toggle/hair_opacity)
	return passed_initial_check || allowed

/**
 * Actually applied. Slimmed down version of the logic in is_available() that actually works when spawning or drawing the character.
 *
 * Returns TRUE if feature is visible.
 *
 * Arguments:
 * * target - The character this is being applied to.
 * * preferences - The relevant character preferences.
 */
/datum/preference/numeric/hair_opacity/proc/is_visible(mob/living/carbon/human/target, datum/preferences/preferences)
	if(!preferences.read_preference(/datum/preference/toggle/mutant_toggle/hair_opacity))
		return FALSE

	if(preferences.read_preference(/datum/preference/toggle/allow_mismatched_parts))
		return TRUE

	var/datum/species/species = preferences.read_preference(/datum/preference/choiced/species)
	species = new species

	return (savefile_key in species.get_features())

/datum/preference/numeric/hair_opacity/apply_to_human(mob/living/carbon/human/target, value, datum/preferences/preferences)
	if(!preferences || !is_visible(target, preferences))
		return FALSE

	target.hair_alpha = value
	return TRUE
