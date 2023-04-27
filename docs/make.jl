using Documenter

push!(LOAD_PATH,  "../../src")

using Inflector

makedocs(
    sitename = "Inflector - Utility module for working with grammatical rules",
    format = Documenter.HTML(prettyurls = false),
    pages = [
        "Home" => "index.md",
        "Inflector API" => [
          "Inflector" => "API/inflector.md",
        ]
    ],
)

deploydocs(
  repo = "github.com/GenieFramework/Inflector.jl.git",
)
