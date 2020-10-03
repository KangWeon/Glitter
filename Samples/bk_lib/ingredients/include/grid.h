#ifndef GLSLCOOKBOOK_GRID_H
#define GLSLCOOKBOOK_GRID_H

#include <glad/glad.h>
#include "drawable.h"

#include <vector>

namespace ogl4slc3rd {
    class Grid : public Drawable {
    private:
        std::vector<GLuint> buffers;
        GLuint vao;
        GLsizei nVerts;

    public:
        Grid( float size = 10.0f, int nDivisions = 10 );
        virtual ~Grid();
        void render() const override;
    };
}
#endif //GLSLCOOKBOOK_GRID_H
