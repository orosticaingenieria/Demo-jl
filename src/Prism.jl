module PrismMod

struct Prism

    # Fields
    length::Real
    width::Real
    height::Real

    # Inner constructor -- 3 arguments
    function Prism(l::Real, w::Real, h::Real)
        if l < 0 || w < 0 || h < 0
            error("Can't have negative values for lengths.")
        elseif l < w
            error("Can't have shorter length than width.")
        else
            new(l, w, h)
        end
    end

    # Inner constructor -- no arguments
    function Prism()
        new(1, 1, 1)
    end

end

# passing structs to functions
function volume(p::Prism)
    return p.length * p.width * p.height
end

function surface_area(p::Prism)
    s1 = p.length * p.width
    s2 = p.length * p.height
    s3 = p.width * p.height
    return 2 * (s1 + s2 + s3)
end

end
