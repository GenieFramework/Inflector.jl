using Inflector
using Test

@testset "Inflector.jl" begin
    @testset "from_dashes" begin
        @test Inflector.from_dashes("foo-bar") == "FooBar"
        @test Inflector.from_dashes("foo-bar-baz") == "FooBarBaz"
    end

    @testset "from_underscores" begin
        @test Inflector.from_underscores("foo_bar") == "FooBar"
        @test Inflector.from_underscores("foo_bar_baz") == "FooBarBaz"
    end

    @testset "to_plural" begin
        @test Inflector.to_plural("category") == "categories"
        @test Inflector.to_plural("story") == "stories"
        @test Inflector.to_plural("thesis") == "theses"
    end

    @testset "to_singular" begin
        @test Inflector.to_singular("categories") == "category"
        @test Inflector.to_singular("stories") == "story"
        @test Inflector.to_singular("radii") == "radius"
    end
end
