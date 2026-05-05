tough_gate_tech_cost = settings.startup["tough-gate-tech-cost"].value
tough_gate_health = settings.startup["tough-gate-health"].value
tough_gate_mining_time = settings.startup["tough-gate-mining-time"].value
tough_gate_res_phys_flat = settings.startup["tough-gate-res-phys-flat"].value
tough_gate_res_phys_percent = settings.startup["tough-gate-res-phys-percent"].value
tough_gate_res_impact_flat = settings.startup["tough-gate-res-impact-flat"].value
tough_gate_res_impact_percent = settings.startup["tough-gate-res-impact-percent"].value
tough_gate_res_exp_flat = settings.startup["tough-gate-res-exp-flat"].value
tough_gate_res_exp_percent = settings.startup["tough-gate-res-exp-percent"].value
tough_gate_res_acid_flat = settings.startup["tough-gate-res-acid-flat"].value
tough_gate_res_acid_percent = settings.startup["tough-gate-res-acid-percent"].value


tough_gate_entity = table.deepcopy(data.raw["gate"]["gate"])
tough_gate_entity.name = "tough-gate"
tough_gate_entity.minable = {mining_time = 0.2, result = "tough-gate"}
tough_gate_entity.max_health = tough_gate_health
tough_gate_entity.corpse = "tough-gate-remnants"
tough_gate_entity.resistances = {
  {
    type = "physical",
    decrease = tough_gate_res_phys_flat,
    percent = tough_gate_res_phys_percent
  },
  {
    type = "impact",
    decrease = tough_gate_res_impact_flat,
    percent = tough_gate_res_impact_percent
  },
  {
    type = "explosion",
    decrease = tough_gate_res_exp_flat,
    percent = tough_gate_res_exp_percent
  },
  {
    type = "fire",
    percent = 100
  },
  {
    type = "acid",
    decrease = tough_gate_res_acid_flat,
    percent = tough_gate_res_acid_percent
  },
  {
    type = "laser",
    percent = 70
  }
}

tough_gate_entity.vertical_animation = {
    layers = {
        {
            filename = "__Enhanced-Walls-Plus__/graphics/entity/tough-gate/gate-vertical.png",
            line_length = 8,
            width = 78,
            height = 120,
            frame_count = 16,
            shift = util.by_pixel(-1, -13),
            scale = 0.5
        },
        {
            filename = "__base__/graphics/entity/gate/gate-vertical-shadow.png",
            line_length = 8,
            width = 82,
            height = 104,
            frame_count = 16,
            shift = util.by_pixel(9, 9),
            draw_as_shadow = true,
            scale = 0.5
        }
    }
}

tough_gate_entity.horizontal_animation = {
    layers = {
        {
            filename = "__Enhanced-Walls-Plus__/graphics/entity/tough-gate/gate-horizontal.png",
            line_length = 8,
            width = 66,
            height = 90,
            frame_count = 16,
            shift = util.by_pixel(0, -3),
            scale = 0.5
        },
        {
            filename = "__base__/graphics/entity/gate/gate-horizontal-shadow.png",
            line_length = 8,
            width = 122,
            height = 60,
            frame_count = 16,
            shift = util.by_pixel(12, 10),
            draw_as_shadow = true,
            scale = 0.5
        }
    }
}

tough_gate_entity.horizontal_rail_animation_left = {
    layers = {
        {
            filename = "__Enhanced-Walls-Plus__/graphics/entity/tough-gate/gate-rail-horizontal-left.png",
            line_length = 8,
            width = 66,
            height = 74,
            frame_count = 16,
            shift = util.by_pixel(0, -7),
            scale = 0.5
        },
        {
            filename = "__base__/graphics/entity/gate/gate-rail-horizontal-shadow-left.png",
            line_length = 8,
            width = 122,
            height = 60,
            frame_count = 16,
            shift = util.by_pixel(12, 10),
            draw_as_shadow = true,
            scale = 0.5
        }
    }
}
tough_gate_entity.horizontal_rail_animation_right = {
    layers = {
        {
            filename = "__Enhanced-Walls-Plus__/graphics/entity/tough-gate/gate-rail-horizontal-right.png",
            line_length = 8,
            width = 66,
            height = 74,
            frame_count = 16,
            shift = util.by_pixel(0, -7),
            scale = 0.5
        },
        {
            filename = "__base__/graphics/entity/gate/gate-rail-horizontal-shadow-right.png",
            line_length = 8,
            width = 122,
            height = 58,
            frame_count = 16,
            shift = util.by_pixel(12, 11),
            draw_as_shadow = true,
            scale = 0.5
        }
    }
}
tough_gate_entity.vertical_rail_animation_left = {
    layers = {
        {
            filename = "__Enhanced-Walls-Plus__/graphics/entity/tough-gate/gate-rail-vertical-left.png",
            line_length = 8,
            width = 42,
            height = 118,
            frame_count = 16,
            shift = util.by_pixel(0, -13),
            scale = 0.5
        },
        {
            filename = "__base__/graphics/entity/gate/gate-rail-vertical-shadow-left.png",
            line_length = 8,
            width = 82,
            height = 104,
            frame_count = 16,
            shift = util.by_pixel(9, 9),
            draw_as_shadow = true,
            scale = 0.5
        }
    }
}
tough_gate_entity.vertical_rail_animation_right = {
    layers = {
        {
            filename = "__Enhanced-Walls-Plus__/graphics/entity/tough-gate/gate-rail-vertical-right.png",
            line_length = 8,
            width = 42,
            height = 118,
            frame_count = 16,
            shift = util.by_pixel(0, -13),
            scale = 0.5
        },
        {
            filename = "__base__/graphics/entity/gate/gate-rail-vertical-shadow-right.png",
            line_length = 8,
            width = 82,
            height = 104,
            frame_count = 16,
            shift = util.by_pixel(9, 9),
            draw_as_shadow = true,
            scale = 0.5
        }
    }
}
tough_gate_entity.wall_patch = {
    layers = {
        {
            filename = "__Enhanced-Walls-Plus__/graphics/entity/tough-gate/gate-wall-patch.png",
            line_length = 8,
            width = 70,
            height = 94,
            frame_count = 16,
            shift = util.by_pixel(-1, 13),
            scale = 0.5
        },
        {
            filename = "__base__/graphics/entity/gate/gate-wall-patch-shadow.png",
            line_length = 8,
            width = 82,
            height = 72,
            frame_count = 16,
            shift = util.by_pixel(9, 33),
            draw_as_shadow = true,
            scale = 0.5
        }
    }
}

tough_gate_remnants = table.deepcopy(data.raw["corpse"]["gate-remnants"])
tough_gate_remnants.name = "tough-gate-remnants"

tough_gate_item = table.deepcopy(data.raw["item"]["gate"])
tough_gate_item.name = "tough-gate"
tough_gate_item.place_result = "tough-gate"
tough_gate_item.icon = "__Enhanced-Walls-Plus__/graphics/icons/tough-gate.png"

data:extend{tough_gate_entity,tough_gate_remnants,tough_gate_item}

tough_gate_recipe = {
  type = "recipe",
  name = "tough-gate",
  energy_required = 1.0,
  enabled = false,
  ingredients =
  {
    {type = "item", name = "gate", amount = 1},
    {type = "item", name = "stone-brick", amount = 5}
  },
  results = {{type="item", name="tough-gate", amount=1}}
}

tough_gate_tech = {
  type = "technology",
  name = "tough-gate",
  icon = "__Enhanced-Walls-Plus__/graphics/technology/tough-gate.png",
  icon_size = 256,
  effects =
  {
    {
      type = "unlock-recipe",
      recipe = "tough-gate"
    }
  },
  prerequisites = {"tough-wall","logistic-science-pack","military-science-pack"},
  unit =
  {
    count = tough_gate_tech_cost,
    ingredients = {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"military-science-pack", 1}
    },
    time = 30
  }
}

data:extend{tough_gate_recipe,tough_gate_tech}