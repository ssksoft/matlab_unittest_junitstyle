function roots = quadraticSolver(a, b, c)
    checkInputs
    roots(1) = (-b + sqrt(b^2 - 4 * a * c)) / (2 * a);
    roots(2) = (-b - sqrt(b^2 - 4 * a * c)) / (2 * a);

    function checkInputs

        if ~isa(a, 'numeric') ||~isa(b, 'numeric') ||~isa(c, 'numeric')
            error('quadraticSolver:InputMustBeNumeric', ...
                'Coefficients must be numeric.')
        end

    end

end
