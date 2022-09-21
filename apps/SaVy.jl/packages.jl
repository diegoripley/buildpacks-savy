using Pkg

dependencies = [
    "CSV",
    "ClusterManagers",
    "ColorSchemes",
    "Colors",
    "DataFrames",
    "Dates",
    "Distributed",
    "Distributions",
    "FAME",
    "Genie",
    "JLD2",
    "JSON",
    "JSON3",
#   "LENS",
    "MAT",
    "ModelBaseEcon",
    "Nettle",
    "OrderedCollections",
    "PackageCompiler",
    "Plots",
    "ProgressMeter",
#    "ProjUtils",
    "Revise",
    "StateSpaceEcon",
    "Statistics",
    "StatsPlots",
    "StringEncodings",
    "Suppressor",
    "TOML",
    "Test",
    "TimeSeriesEcon",
    "XLSX"
]

Pkg.add(dependencies)
