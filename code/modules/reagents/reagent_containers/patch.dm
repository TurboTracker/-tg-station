/obj/item/weapon/reagent_containers/pill/patch
	name = "chemical patch"
	desc = "A chemical patch for touch based applications."
	icon = 'icons/obj/chemical.dmi'
	icon_state = "bandaid"
	item_state = "bandaid"
	possible_transfer_amounts = null
	volume = 50
	apply_type = TOUCH
	apply_method = "apply"

/obj/item/weapon/reagent_containers/pill/patch/New()
	..()
	icon_state = "bandaid" // thanks inheritance

/obj/item/weapon/reagent_containers/pill/patch/afterattack(obj/target, mob/user , proximity)
	return // thanks inheritance again

/obj/item/weapon/reagent_containers/pill/patch/canconsume(mob/eater, mob/user)
	if(!eater.SpeciesCanConsume())
		return 0
	return 1 // Masks were stopping people from "eating" patches. Thanks, inheritance.

/obj/item/weapon/reagent_containers/pill/patch/bicaridine
	name = "brute patch"
	desc = "Helps with brute injuries."
	list_reagents = list("bicaridine" = 50)

/obj/item/weapon/reagent_containers/pill/patch/kelotane
	name = "burn patch"
	desc = "Helps with burn injuries."
	list_reagents = list("kelotane" = 50)
