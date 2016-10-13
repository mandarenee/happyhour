$(".inventory_categories.index").ready(function() {
	var classes = this.body.classList;
	var j;
	var is_inventory = false;
	for(j = 0; j < classes.length; j++) {
		if (classes[j] == "inventory_categories" || classes[j] == "accessory_categories") {
			is_inventory = true;
		}
	}
	if (is_inventory == false) {
		return;
	}

	var images = document.getElementsByTagName("img");
	var i;

	for(i = 0; i < images.length; i++) {
		if (images[i].height > images[i].width) {
			images[i].className += 'vertical-image';
			console.log("Vertical Image" + images[i].height);
		} else {
			images[i].className += 'horizontal-image';
			console.log("Horizontal Image" + images[i].height);
		}
	}
})