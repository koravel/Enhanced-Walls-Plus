plated_gate_tech_cost = settings.startup["plated-gate-tech-cost"].value
plated_gate_health = settings.startup["plated-gate-health"].value
plated_gate_mining_time = settings.startup["plated-gate-mining-time"].value
plated_gate_res_phys_flat = settings.startup["plated-gate-res-phys-flat"].value
plated_gate_res_phys_percent = settings.startup["plated-gate-res-phys-percent"].value
plated_gate_res_impact_flat = settings.startup["plated-gate-res-impact-flat"].value
plated_gate_res_impact_percent = settings.startup["plated-gate-res-impact-percent"].value
plated_gate_res_exp_flat = settings.startup["plated-gate-res-exp-flat"].value
plated_gate_res_exp_percent = settings.startup["plated-gate-res-exp-percent"].value
plated_gate_res_acid_flat = settings.startup["plated-gate-res-acid-flat"].value
plated_gate_res_acid_percent = settings.startup["plated-gate-res-acid-percent"].value


plated_gate_entity = table.deepcopy(data.raw["gate"]["gate"])
plated_gate_entity.name = "plated-gate"
plated_gate_entity.minable = {mining_time = 0.2, result = "plated-gate"}
plated_gate_entity.max_health = plated_gate_health
plated_gate_entity.corpse = "plated-gate-remnants"
plated_gate_entity.resistances = {
  {
    type = "physical",
    decrease = plated_gate_res_phys_flat,
    percent = plated_gate_res_phys_percent
  },
  {
    type = "impact",
    decrease = plated_gate_res_impact_flat,
    percent = plated_gate_res_impact_percent
  },
  {
    type = "explosion",
    decrease = plated_gate_res_exp_flat,
    percent = plated_gate_res_exp_percent
  },
  {
    type = "fire",
    percent = 100
  },
  {
    type = "acid",
    decrease = plated_gate_res_acid_flat,
    percent = plated_gate_res_acid_percent
  },
  {
    type = "laser",
    percent = 70
  }
}

plated_gate_entity.vertical_animation = {
    layers = {
        {
            filename = "__Enhanced-Walls-Plus__/graphics/entity/plated-gate/gate-vertical.png",
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

plated_gate_entity.horizontal_animation = {
    layers = {
        {
            filename = "__Enhanced-Walls-Plus__/graphics/entity/plated-gate/gate-horizontal.png",
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

plated_gate_entity.horizontal_rail_animation_left = {
    layers = {
        {
            filename = "__Enhanced-Walls-Plus__/graphics/entity/plated-gate/gate-rail-horizontal-left.png",
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
plated_gate_entity.horizontal_rail_animation_right = {
    layers = {
        {
            filename = "__Enhanced-Walls-Plus__/graphics/entity/plated-gate/gate-rail-horizontal-right.png",
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
plated_gate_entity.vertical_rail_animation_left = {
    layers = {
        {
            filename = "__Enhanced-Walls-Plus__/graphics/entity/plated-gate/gate-rail-vertical-left.png",
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
plated_gate_entity.vertical_rail_animation_right = {
    layers = {
        {
            filename = "__Enhanced-Walls-Plus__/graphics/entity/plated-gate/gate-rail-vertical-right.png",
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
plated_gate_entity.wall_patch = {
    layers = {
        {
            filename = "__Enhanced-Walls-Plus__/graphics/entity/plated-gate/gate-wall-patch.png",
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



plated_gate_remnants = table.deepcopy(data.raw["corpse"]["gate-remnants"])
plated_gate_remnants.name = "plated-gate-remnants"

plated_gate_item = table.deepcopy(data.raw["item"]["gate"])
plated_gate_item.name = "plated-gate"
plated_gate_item.place_result = "plated-gate"
plated_gate_item.icon = "__Enhanced-Walls-Plus__/graphics/icons/plated-gate.png"

data:extend{plated_gate_entity,plated_gate_remnants,plated_gate_item}

plated_gate_recipe = {
  type = "recipe",
  name = "plated-gate",
  energy_required = 2.0,
  enabled = false,
  ingredients =
  {
    {type = "item", name = "gate", amount = 1},
    {type = "item", name = "concrete", amount = 5},
    {type = "item", name = "steel-plate", amount = 2}
  },
  results = {{type="item", name="plated-gate", amount=1}}
}

plated_gate_tech = {
  type = "technology",
  name = "plated-gate",
  icon = "__Enhanced-Walls-Plus__/graphics/technology/plated-gate.png",
  icon_size = 256,
  effects =
  {
    {
      type = "unlock-recipe",
      recipe = "plated-gate"
    }
  },
  prerequisites = {"plated-wall","logistic-science-pack","steel-processing","military-science-pack","concrete"},
  unit =
  {
    count = plated_gate_tech_cost,
    ingredients = {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1},
      {"military-science-pack", 1}
    },
    time = 30
  }
}

data:extend{plated_gate_recipe,plated_gate_tech}