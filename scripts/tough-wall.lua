tough_wall_tech_cost = settings.startup["tough-wall-tech-cost"].value
tough_wall_health = settings.startup["tough-wall-health"].value
tough_wall_mining_time = settings.startup["tough-wall-mining-time"].value
tough_wall_res_phys_flat = settings.startup["tough-wall-res-phys-flat"].value
tough_wall_res_phys_percent = settings.startup["tough-wall-res-phys-percent"].value
tough_wall_res_impact_flat = settings.startup["tough-wall-res-impact-flat"].value
tough_wall_res_impact_percent = settings.startup["tough-wall-res-impact-percent"].value
tough_wall_res_exp_flat = settings.startup["tough-wall-res-exp-flat"].value
tough_wall_res_exp_percent = settings.startup["tough-wall-res-exp-percent"].value
tough_wall_res_acid_flat = settings.startup["tough-wall-res-acid-flat"].value
tough_wall_res_acid_percent = settings.startup["tough-wall-res-acid-percent"].value


tough_wall_entity = table.deepcopy(data.raw["wall"]["stone-wall"])
tough_wall_entity.name = "tough-wall"
tough_wall_entity.minable = {mining_time = 0.2, result = "tough-wall"}
tough_wall_entity.max_health = tough_wall_health
tough_wall_entity.corpse = "tough-wall-remnants"
tough_wall_entity.resistances = {
  {
    type = "physical",
    decrease = tough_wall_res_phys_flat,
    percent = tough_wall_res_phys_percent
  },
  {
    type = "impact",
    decrease = tough_wall_res_impact_flat,
    percent = tough_wall_res_impact_percent
  },
  {
    type = "explosion",
    decrease = tough_wall_res_exp_flat,
    percent = tough_wall_res_exp_percent
  },
  {
    type = "fire",
    percent = 100
  },
  {
    type = "acid",
    decrease = tough_wall_res_acid_flat,
    percent = tough_wall_res_acid_percent
  },
  {
    type = "laser",
    percent = 70
  }
}
tough_wall_entity.pictures =
    {
      single =
      {
        layers =
        {
          {
            filename = "__Enhanced-Walls-Plus__/graphics/entity/tough-wall/tough-wall-single.png",
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
            filename = "__Enhanced-Walls-Plus__/graphics/entity/tough-wall/tough-wall-vertical.png",
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
            filename = "__Enhanced-Walls-Plus__/graphics/entity/tough-wall/tough-wall-horizontal.png",
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
            filename = "__Enhanced-Walls-Plus__/graphics/entity/tough-wall/tough-wall-corner-right.png",
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
            filename = "__Enhanced-Walls-Plus__/graphics/entity/tough-wall/tough-wall-corner-left.png",
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
            filename = "__Enhanced-Walls-Plus__/graphics/entity/tough-wall/tough-wall-t.png",
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
            filename = "__Enhanced-Walls-Plus__/graphics/entity/tough-wall/tough-wall-ending-right.png",
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
            filename = "__Enhanced-Walls-Plus__/graphics/entity/tough-wall/tough-wall-ending-left.png",
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
        filename = "__Enhanced-Walls-Plus__/graphics/entity/tough-wall/tough-wall-filling.png",
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
            filename = "__Enhanced-Walls-Plus__/graphics/entity/tough-wall/tough-wall-patch.png",
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
            filename = "__Enhanced-Walls-Plus__/graphics/entity/tough-wall/tough-wall-gate.png",
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

tough_wall_remnants = table.deepcopy(data.raw["corpse"]["wall-remnants"])
tough_wall_remnants.name = "tough-wall-remnants"

tough_wall_item = table.deepcopy(data.raw["item"]["stone-wall"])
tough_wall_item.name = "tough-wall"
tough_wall_item.place_result = "tough-wall"
tough_wall_item.icon = "__Enhanced-Walls-Plus__/graphics/icons/tough-wall.png"

data:extend{tough_wall_entity,tough_wall_remnants,tough_wall_item}

tough_wall_recipe = {
  type = "recipe",
  name = "tough-wall",
  energy_required = 1.0,
  enabled = false,
  ingredients =
  {
    {type = "item", name = "stone-wall", amount = 1},
    {type = "item", name = "stone-brick", amount = 5}
  },
  results = {{type="item", name="tough-wall", amount=1}}
}

tough_wall_tech = {
  type = "technology",
  name = "tough-wall",
  icon = "__Enhanced-Walls-Plus__/graphics/technology/tough-wall.png",
  icon_size = 256,
  effects =
  {
    {
      type = "unlock-recipe",
      recipe = "tough-wall"
    }
  },
  prerequisites = {"stone-wall","logistic-science-pack","military-science-pack"},
  unit =
  {
    count = tough_wall_tech_cost,
    ingredients = {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"military-science-pack", 1}
    },
    time = 30
  }
}

data:extend{tough_wall_recipe,tough_wall_tech}