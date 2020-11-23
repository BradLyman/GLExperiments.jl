using GLExperiments
using Documenter

makedocs(;
    modules=[GLExperiments],
    authors="Bradley Lyman <lyman.brad3211@gmail.com> and contributors",
    repo="https://github.com/BradLyman/GLExperiments.jl/blob/{commit}{path}#L{line}",
    sitename="GLExperiments.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://BradLyman.github.io/GLExperiments.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/BradLyman/GLExperiments.jl",
)
