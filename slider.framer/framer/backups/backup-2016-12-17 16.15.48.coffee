


# Slider =====================================================

slider = new SliderComponent
    min: 1
    max: 60
    value: 30
    height: 4

slider.center()
slider.backgroundColor = "#eee"
slider.knob.draggable.momentum = false
slider.knob.width = 32
slider.knob.height = 20
slider.width = 191

# Value
slider.on "change:value", ->
    sliderPrice.html = updateSliderPrice(slider.value)

# Functions
updateSliderPrice = (price) ->
	"$" + Math.round(price) + "K"

# Title =====================================================

sliderTitle = new Layer
    html: "MAX PRICE"
    scale: 0.4
    originX: 0.00
    originY: 0.00
    y: -50
    style:
        "fontSize" : "21pt",
        "color" : "#424242"
        "fontFamily" : "Gotham Narrow SS"
        "backgroundColor" : "rgba(255,255,255,0)"

sliderTitle.superLayer = slider



# Price =====================================================

sliderPrice = new Layer
	html: updateSliderPrice(slider.value)
	y: -30
	scale: 0.7
	originX: 0.00
	originY: 0.00
	style:
		"fontSize" : "21pt",
		"color" : "#424242"
		"backgroundColor" : "rgba(255,255,255,0)"

sliderPrice.style.fontFamily = "gotham"

sliderPrice.superLayer = slider
