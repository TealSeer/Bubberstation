/datum/preference/toggle/mutant_toggle/wings
	savefile_key = "wings_toggle"
	relevant_mutant_bodypart = "wings"

/datum/preference/choiced/mutant/wings
	main_feature_name = "Wings"
	savefile_key = "feature_wings"
	relevant_mutant_bodypart = "wings"
	type_to_check = /datum/preference/toggle/mutant_toggle/wings
	greyscale_color = COLOR_AMETHYST
	sprite_direction = NORTH
	category = PREFERENCE_CATEGORY_SECONDARY_FEATURES
	supplemental_features = list()
	should_generate_icons = FALSE

/datum/preference/mutant_color/wings
	category = PREFERENCE_CATEGORY_SECONDARY_FEATURES
	savefile_key = "wings_color"
	relevant_mutant_bodypart = "wings"
	type_to_check = /datum/preference/toggle/mutant_toggle/wings

/datum/preference/emissive_toggle/wings
	category = PREFERENCE_CATEGORY_SECONDARY_FEATURES
	savefile_key = "wings_emissive"
	relevant_mutant_bodypart = "wings"
	type_to_check = /datum/preference/toggle/mutant_toggle/wings
