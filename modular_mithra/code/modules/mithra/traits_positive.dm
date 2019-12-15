/*
		All positive traits go here. They are automagically sorted based off their cost, but seperating em this way is easier to search through.
*/

/datum/trait/speed_fast
	name = "Agile"
	desc = "You can move faster than everyone else."
	cost = 4
	var_changes = list("slowdown" = -0.5)

/* //Fairly certain this does nothing other than /lower/ your health, given that standard is 200. Will probably raise it later, but for now it's whatever. - C
/datum/trait/endurance_high
	name = "Tough"
	desc = "Your body is more resilliant to damage than the average joe."
	cost = 4
	var_changes = list("total_health" = 125)

	apply(var/datum/species/S,var/mob/living/carbon/human/H)
		..(S,H)
		H.setMaxHealth(S.total_health)
*/

/datum/trait/darksight
	name = "Tapeta Lucida"
	desc = "Your eyes have a marginally retroreflective layer within their strucuture, allowing you to see slightly better in the dark."
	cost = 1
	var_changes = list("darksight_range" = 3, "darksight_tint" = DARKTINT_MODERATE)

/datum/trait/darksight_plus
	name = "Tapeta Lucida Majoris"
	desc = "Your eyes have a retroreflective layer within their strucuture, allowing you to see much better in the dark."
	cost = 2
	var_changes = list("darksight_range" = 6, "darksight_tint" = DARKTINT_GOOD)

/datum/trait/nonconductive
	name = "Resistive Skin"
	desc = "Your skin has a higher electrical resistivity than normal, making you less conductive."
	cost = 2 //This effects tasers!
	var_changes = list("siemens_coefficient" = 0.75)

/datum/trait/melee_attack
	name = "Rending Claws"
	desc = "You have claws. You use them in unarmed combat."
	cost = 1
	var_changes = list("unarmed_types" = list(/datum/unarmed_attack/stomp, /datum/unarmed_attack/kick, /datum/unarmed_attack/claws, /datum/unarmed_attack/bite/sharp))

	apply(var/datum/species/S,var/mob/living/carbon/human/H)
		..(S,H)
		for(var/u_type in S.unarmed_types)
			S.unarmed_attacks += new u_type()

/datum/trait/minor_brute_resist
	name = "Thick Skin"
	desc = "Your skin is thicker than normal, making you slightly more resistant to physical damage."
	cost = 2
	var_changes = list("brute_mod" = 0.85)

/datum/trait/minor_burn_resist
	name = "Insulated Skin"
	desc = "You skin is somehow insulated, making you slightly more resistant to burns."
	cost = 2
	var_changes = list("burn_mod" = 0.85)

/datum/trait/photoresistant
	name = "Phototransductive Praesidium"
	desc = "Your eyes are slightly more resillient against bright lights."
	cost = 1
	var_changes = list("flash_mod" = 0.85)

/datum/trait/oxy_resist
	name = "Haemoglobin Melior"
	desc = "You can last a bit longer while aphyxiating due to higher blood-oxygen saturation."
	cost = 1
	var_changes = list("oxy_mod" = 0.75)

/datum/trait/toxin_resist
	name = "Iron Liver"
	desc = "Your metabolism processes toxins more efficiently, making you slightly more resistant to poisonings."
	cost = 1
	var_changes = list("toxins_mod" = 0.85)

/datum/trait/mussel
	name = "Muscular Hypertrophy"
	desc = "You have higher muscle mass than normal, giving you greater strength."
	cost = 4
	var_changes = list("strength" = STR_HIGH)

/////////////////////
// BoH Materials
/////////////////////

/* // Disabled for the moment. No functionality, considering the variables are missing to my knowledge. - C
/datum/trait/toxification_junky_posi
	name = "Addict"
	desc = "Your body had adjusted to frequent, if not habitual use of substances. When you overdose, it affects you much less than it would someone not quite as 'experienced' as you."
	cost = 2
	var_changes = list("chemOD_mod" = -2.0)


/datum/trait/hypercoag_posi
	name = "Inhuman Coagulation"
	desc = "You're either non-Human, or suffer some lesser form of hypercoagulation. When cut, or otherwise bleeding, your body is rather quick to react. You bleed out much slower than the average individual."
	cost = 3
	var_changes = list("bloodloss_rate" = 0.2)
*/

/datum/trait/commune
	name = "Telepathy"
	desc = "Quite simply, you've the ability to project thoughts into the minds of others. How you've come across this within the frontier of space will probably forever be a mystery. Especially so, given you're probably not a Psyker."
	cost = 8
/datum/trait/commune/apply(var/datum/species/S,var/mob/living/carbon/human/H)
	..(S,H)
	H.verbs |= /mob/living/carbon/human/proc/commune