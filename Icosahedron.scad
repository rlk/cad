// Icosahedron Implementation
// Based on three mutually perpendicular rectangles

module icosahedron(size = 1) {
    phi = (1 + sqrt(5)) / 2; // The Golden Ratio
    
    // Scale the coordinates by the size parameter
    s = size;

    vertices = [
        [0, -s, -s*phi], [0,  s, -s*phi], [0,  s,  s*phi], [0, -s,  s*phi], // Rectangle 1
        [-s, -s*phi, 0], [ s, -s*phi, 0], [ s,  s*phi, 0], [-s,  s*phi, 0], // Rectangle 2
        [-s*phi, 0, -s], [ s*phi, 0, -s], [ s*phi, 0,  s], [-s*phi, 0,  s]  // Rectangle 3
    ];

    faces = [
        [0, 8, 1], [1, 8, 7], [1, 7, 6], [1, 6, 9], [1, 9, 0], // Top around vertex 1
        [0, 4, 8], [8, 11, 7], [7, 2, 6], [6, 10, 9], [9, 5, 0], // Upper mid
        [2, 11, 3], [3, 11, 4], [4, 5, 3], [5, 10, 3], [10, 2, 3], // Bottom around vertex 3
        [11, 8, 4], [2, 7, 11], [10, 6, 2], [5, 9, 10], [4, 0, 5]  // Lower mid
    ];

    polyhedron(points = vertices, faces = faces);
}

// Call the module
icosahedron(size = 10);
