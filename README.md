# LinearLeastSquareHH

`LinearLeastSquareHH` is a MATLAB function that solves the linear least squares problem using Householder transformation. This method is particularly useful for numerical linear algebra tasks where stability and efficiency are important.

## Overview

The function `LinearLeastSquareHH` computes the solution to a linear least squares problem of the form \( A \mathbf{x} = \mathbf{b} \) by applying Householder transformations. The Householder method is used to orthogonalize the matrix \( A \) and transform it into an upper triangular matrix \( R \), making it easier to solve the system.

## Function Signature

```matlab
function x = LinearLeastSquareHH(A, b)
```

## Inputs

- `A` : A matrix of size \( m \times n \) where \( m \) is the number of equations and \( n \) is the number of unknowns.
- `b` : A vector of size \( m \times 1 \) representing the right-hand side of the linear system.

## Output

- `x` : A vector of size \( n \times 1 \) that represents the least squares solution to the system \( A \mathbf{x} = \mathbf{b} \).

## Description

The function performs the following steps:

1. **Initialization**: The function initializes variables and sets up the Householder matrix to reflect the first column of \( A \).

2. **Householder Transformations**: Iteratively applies Householder reflections to transform matrix \( A \) into an upper triangular matrix \( R \) while updating the right-hand side vector \( b \).

3. **Solution**: Once \( A \) is transformed into \( R \), the function solves the upper triangular system to find the least squares solution \( x \).

## Example Usage

Here's an example of how to use the `LinearLeastSquareHH` function:

```matlab
% Define matrix A and vector b
A = [1 2; 3 4; 5 6];
b = [7; 8; 9];

% Compute the least squares solution
x = LinearLeastSquareHH(A, b);

% Display the result
disp('Least squares solution:');
disp(x);
```

## Dependencies

- MATLAB (tested with versions R2020a and later)

## License

This code is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

## Author
Sorawit Chokphantavee

