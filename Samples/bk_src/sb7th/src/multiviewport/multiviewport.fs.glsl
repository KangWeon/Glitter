"#version 420 core                                                  \n"
"                                                                   \n"
"out vec4 color;                                                    \n"
"                                                                   \n"
"in GS_OUT                                                          \n"
"{                                                                  \n"
"    vec4 color;                                                    \n"
"} fs_in;                                                           \n"
"                                                                   \n"
"void main(void)                                                    \n"
"{                                                                  \n"
"    color = fs_in.color;                                           \n"
"}                                                                  \n"