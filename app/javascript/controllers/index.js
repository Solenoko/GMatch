// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import HelloController from "./hello_controller"
import ReadMoreController from "./read_more_controller"
import ShowMoreController from "./show_more_controller"
import ExpandMoreController from "./expand_card_controller"
import ToggleController from "./toggle_controller"

application.register("hello", HelloController)
application.register("read-more", ReadMoreController)
application.register("show-more", ShowMoreController)
application.register("expand-card", ExpandMoreController)
application.register("toggle", ToggleController)
