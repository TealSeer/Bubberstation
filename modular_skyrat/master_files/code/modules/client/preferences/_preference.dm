/datum/preference
	/// If the selected species has this in its /datum/species/mutant_bodyparts,
	/// will show the feature as selectable.
	var/relevant_mutant_bodypart = null
	/// Shortcut var for adding supplemental features to your preference
	var/list/supplemental_features

/datum/preference/choiced/compile_constant_data()
	var/list/data = ..()

	if(supplemental_features)
		data[SUPPLEMENTAL_FEATURE_KEY] = supplemental_features

	return data
