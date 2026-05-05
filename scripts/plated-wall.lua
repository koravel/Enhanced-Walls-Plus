plated_wall_tech_cost = settings.startup["plated-wall-tech-cost"].value
plated_wall_health = settings.startup["plated-wall-health"].value
plated_wall_mining_time = settings.startup["plated-wall-mining-time"].value
plated_wall_res_phys_flat = settings.startup["plated-wall-res-phys-flat"].value
plated_wall_res_phys_percent = settings.startup["plated-wall-res-phys-percent"].value
plated_wall_res_impact_flat = settings.startup["plated-wall-res-impact-flat"].value
plated_wall_res_impact_percent = settings.startup["plated-wall-res-impact-percent"].value
plated_wall_res_exp_flat = settings.startup["plated-wall-res-exp-flat"].value
plated_wall_res_exp_percent = settings.startup["plated-wall-res-exp-percent"].value
plated_wall_res_acid_flat = settings.startup["plated-wall-res-acid-flat"].value
plated_wall_res_acid_percent = settings.startup["plated-wall-res-acid-percent"].value


plated_wall_entity = table.deepcopy(data.raw["wall"]["stone-wall"])
plated_wall_entity.name = "plated-wall"
plated_wall_entity.minable = {mining_time = 0.2, result = "plated-wall"}
plated_wall_entity.max_health = plated_wall_health
plated_wall_entity.corpse = "plated-wall-remnants"
plated_wall_entity.resistances = {
  {
    type = "physical",
    decrease = plated_wall_res_phys_flat,
    percent = plated_wall_res_phys_percent
  },
  {
    type = "impact",
    decrease = plated_wall_res_impact_flat,
    percent = plated_wall_res_impact_percent
  },
  {
    type = "explosion",
    decrease = plated_wall_res_exp_flat,
    percent = plated_wall_res_exp_percent
  },
  {
    type = "fire",
    percent = 100
  },
  {
    type = "acid",
    decrease = plated_wall_res_acid_flat,
    percent = plated_wall_res_acid_percent
  },
  {
    type = "laser",
    percent = 70
  }
}
plated_wall_entity.pictures =
    {
      single =
      {
        layers =
        {
          {
            filename = "__Enhanced-Walls-Plus__/graphics/entity/plated-wall/plated-wall-single.png",
            priority = "extra-high",
            width = 64,
            height = 86,
            variation_count = 2,
            line_length = 2,
            shift = util.by_pixel(0, -5),
            scale = 0.5
          },
          {
            filename = "__base__/graphics/entity/wall/wall-single-shadow.png",
            priority = "extra-high",
            width = 98,
            height = 60,
            repeat_count = 2,
            shift = util.by_pixel(10, 17),
            draw_as_shadow = true,
            scale = 0.5
          }
        }
      },
      straight_vertical =
      {
        layers =
        {
          {
            filename = "__Enhanced-Walls-Plus__/graphics/entity/plated-wall/plated-wall-vertical.png",
            priority = "extra-high",
            width = 64,
            height = 134,
            variation_count = 5,
            line_length = 5,
            shift = util.by_pixel(0, 8),
            scale = 0.5
          },
          {
            filename = "__base__/graphics/entity/wall/wall-vertical-shadow.png",
            priority = "extra-high",
            width = 98,
            height = 110,
            repeat_count = 5,
            shift = util.by_pixel(10, 29),
            draw_as_shadow = true,
            scale = 0.5
          }
        }
      },
      straight_horizontal =
      {
        layers =
        {
          {
            filename = "__Enhanced-Walls-Plus__/graphics/entity/plated-wall/plated-wall-horizontal.png",
            priority = "extra-high",
            width = 64,
            height = 92,
            variation_count = 6,
            line_length = 6,
            shift = util.by_pixel(0, -2),
            scale = 0.5
          },
          {
            filename = "__base__/graphics/entity/wall/wall-horizontal-shadow.png",
            priority = "extra-high",
            width = 124,
            height = 68,
            repeat_count = 6,
            shift = util.by_pixel(14, 15),
            draw_as_shadow = true,
            scale = 0.5
          }
        }
      },
      corner_right_down =
      {
        layers =
        {
          {
            filename = "__Enhanced-Walls-Plus__/graphics/entity/plated-wall/plated-wall-corner-right.png",
            priority = "extra-high",
            width = 64,
            height = 128,
            variation_count = 2,
            line_length = 2,
            shift = util.by_pixel(0, 7),
            scale = 0.5
          },
          {
            filename = "__base__/graphics/entity/wall/wall-corner-right-shadow.png",
            priority = "extra-high",
            width = 124,
            height = 120,
            repeat_count = 2,
            shift = util.by_pixel(17, 28),
            draw_as_shadow = true,
            scale = 0.5
          }
        }
      },
      corner_left_down =
      {
        layers =
        {
          {
            filename = "__Enhanced-Walls-Plus__/graphics/entity/plated-wall/plated-wall-corner-left.png",
            priority = "extra-high",
            width = 64,
            height = 134,
            variation_count = 2,
            line_length = 2,
            shift = util.by_pixel(0, 7),
            scale = 0.5
          },
          {
            filename = "__base__/graphics/entity/wall/wall-corner-left-shadow.png",
            priority = "extra-high",
            width = 102,
            height = 120,
            repeat_count = 2,
            shift = util.by_pixel(9, 28),
            draw_as_shadow = true,
            scale = 0.5
          }
        }
      },
      t_up =
      {
        layers =
        {
          {
            filename = "__Enhanced-Walls-Plus__/graphics/entity/plated-wall/plated-wall-t.png",
            priority = "extra-high",
            width = 64,
            height = 134,
            variation_count = 4,
            line_length = 4,
            shift = util.by_pixel(0, 7),
            scale = 0.5
          },
          {
            filename = "__base__/graphics/entity/wall/wall-t-shadow.png",
            priority = "extra-high",
            width = 124,
            height = 120,
            repeat_count = 4,
            shift = util.by_pixel(14, 28),
            draw_as_shadow = true,
            scale = 0.5
          }
        }
      },
      ending_right =
      {
        layers =
        {
          {
            filename = "__Enhanced-Walls-Plus__/graphics/entity/plated-wall/plated-wall-ending-right.png",
            priority = "extra-high",
            width = 64,
            height = 92,
            variation_count = 2,
            line_length = 2,
            shift = util.by_pixel(0, -3),
            scale = 0.5
          },
          {
            filename = "__base__/graphics/entity/wall/wall-ending-right-shadow.png",
            priority = "extra-high",
            width = 124,
            height = 68,
            repeat_count = 2,
            shift = util.by_pixel(17, 15),
            draw_as_shadow = true,
            scale = 0.5
          }
        }
      },
      ending_left =
      {
        layers =
        {
          {
            filename = "__Enhanced-Walls-Plus__/graphics/entity/plated-wall/plated-wall-ending-left.png",
            priority = "extra-high",
            width = 64,
            height = 92,
            variation_count = 2,
            line_length = 2,
            shift = util.by_pixel(0, -3),
            scale = 0.5
          },
          {
            filename = "__base__/graphics/entity/wall/wall-ending-left-shadow.png",
            priority = "extra-high",
            width = 102,
            height = 68,
            repeat_count = 2,
            shift = util.by_pixel(9, 15),
            draw_as_shadow = true,
            scale = 0.5
          }
        }
      },
      filling =
      {
        filename = "__Enhanced-Walls-Plus__/graphics/entity/plated-wall/plated-wall-filling.png",
        priority = "extra-high",
        width = 48,
        height = 56,
        variation_count = 8,
        line_length = 8,
        shift = util.by_pixel(0, -1),
        scale = 0.5
      },
      water_connection_patch =
      {
        sheets =
        {
          {
            filename = "__Enhanced-Walls-Plus__/graphics/entity/plated-wall/plated-wall-patch.png",
            priority = "extra-high",
            width = 116,
            height = 128,
            shift = util.by_pixel(0, -2),
            scale = 0.5
          },
          {
            filename = "__base__/graphics/entity/wall/wall-patch-shadow.png",
            priority = "extra-high",
            width = 144,
            height = 100,
            shift = util.by_pixel(9, 15),
            draw_as_shadow = true,
            scale = 0.5
          }
        }
      },
      gate_connection_patch =
      {
        sheets =
        {
          {
            filename = "__Enhanced-Walls-Plus__/graphics/entity/plated-wall/plated-wall-gate.png",
            priority = "extra-high",
            width = 82,
            height = 108,
            shift = util.by_pixel(0, -7),
            scale = 0.5
          },
          {
            filename = "__base__/graphics/entity/wall/wall-gate-shadow.png",
            priority = "extra-high",
            width = 130,
            height = 78,
            shift = util.by_pixel(14, 18),
            draw_as_shadow = true,
            scale = 0.5
          }
        }
      }
    }

plated_wall_remnants = table.deepcopy(data.raw["corpse"]["wall-remnants"])
plated_wall_remnants.name = "plated-wall-remnants"

plated_wall_item = table.deepcopy(data.raw["item"]["stone-wall"])
plated_wall_item.name = "plated-wall"
plated_wall_item.place_result = "plated-wall"
plated_wall_item.icon = "__Enhanced-Walls-Plus__/graphics/icons/plated-wall.png"

data:extend{plated_wall_entity,plated_wall_remnants,plated_wall_item}

plated_wall_recipe = {
  type = "recipe",
  name = "plated-wall",
  energy_required = 2.0,
  enabled = false,
  ingredients =
  {
    {type = "item", name = "stone-wall", amount = 1},
    {type = "item", name = "concrete", amount = 5},
    {type = "item", name = "steel-plate", amount = 2}
  },
  results = {{type="item", name="plated-wall", amount=1}}
}

plated_wall_tech = {
  type = "technology",
  name = "plated-wall",
  icon = "__Enhanced-Walls-Plus__/graphics/technology/plated-wall.png",
  icon_size = 256,
  effects =
  {
    {
      type = "unlock-recipe",
      recipe = "plated-wall"
    }
  },
  prerequisites = {"stone-wall","logistic-science-pack","steel-processing","military-science-pack","concrete"},
  unit =
  {
    count = plated_wall_tech_cost,
    ingredients = {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1},
      {"military-science-pack", 1}
    },
    time = 30
  }
}

data:extend{plated_wall_recipe,plated_wall_tech}