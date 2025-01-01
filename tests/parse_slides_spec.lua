---@diagnostic disable: undefined-field
local parse = require "present"._parse_slides

local eq = assert.are.same

describe("present.parse_slides", function()
  it("should parse an empty file", function()
    eq({
      slides = {
        {
          title = '',
          body = {},
        }
      }
    }, parse({}))
  end)

  it("should parse a file with one slide", function()
    eq({
      slides = {
        {
          title = "# First slide title",
          body = {
            "First slide content"
          },
        }
      }
    }, parse({
      "# First slide title",
      "First slide content"
    }))
  end)
end)
