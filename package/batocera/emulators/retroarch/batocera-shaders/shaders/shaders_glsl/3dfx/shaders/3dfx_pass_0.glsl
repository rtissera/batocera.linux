// GLSL shader autogenerated by cg2glsl.py.
#if defined(VERTEX)

#if __VERSION__ >= 130
#define COMPAT_VARYING out
#define COMPAT_ATTRIBUTE in
#define COMPAT_TEXTURE texture
#else
#define COMPAT_VARYING varying
#define COMPAT_ATTRIBUTE attribute
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     float _frame_rotation;
COMPAT_VARYING     vec4 _color1;
struct output_dummy {
    vec4 _color1;
};
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
vec4 _oPosition1;
vec4 _r0006;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 COLOR;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 COL0;
COMPAT_VARYING vec4 TEX0;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec4 _oColor;
    vec2 _otexCoord;
    _r0006 = VertexCoord.x*MVPMatrix[0];
    _r0006 = _r0006 + VertexCoord.y*MVPMatrix[1];
    _r0006 = _r0006 + VertexCoord.z*MVPMatrix[2];
    _r0006 = _r0006 + VertexCoord.w*MVPMatrix[3];
    _oPosition1 = _r0006;
    _oColor = COLOR;
    _otexCoord = TexCoord.xy;
    gl_Position = _r0006;
    COL0 = COLOR;
    TEX0.xy = TexCoord.xy;
} 
#elif defined(FRAGMENT)

#if __VERSION__ >= 130
#define COMPAT_VARYING in
#define COMPAT_TEXTURE texture
out vec4 FragColor;
#else
#define COMPAT_VARYING varying
#define FragColor gl_FragColor
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#ifdef GL_FRAGMENT_PRECISION_HIGH
precision highp float;
#else
precision mediump float;
#endif
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     float _frame_rotation;
COMPAT_VARYING     vec4 _color1;
struct output_dummy {
    vec4 _color1;
};
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
float _TMP37;
float _TMP36;
float _TMP35;
float _TMP34;
float _TMP17;
float _TMP16;
uniform sampler2D Texture;
input_dummy _IN1;
float _x0046;
float _x0050;
float _x0060;
COMPAT_VARYING vec4 TEX0;
uniform float _erroredtable[16];
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    output_dummy _OUT;
    vec2 _ditheu;
    int _ditdex;
    ivec3 _color;
    ivec3 _colord;
    int _ohyes;
    vec3 _reduceme;
    float _leifx_linegamma1;
    float _horzline11;
    _OUT._color1 = COMPAT_TEXTURE(Texture, TEX0.xy);
    _ditheu.x = TEX0.x*TextureSize.x;
    _ditheu.y = TEX0.y*TextureSize.y;
    _x0046 = _ditheu.x/4.00000000E+00;
    _TMP37 = floor(_x0046);
    _TMP16 = _ditheu.x - 4.00000000E+00*_TMP37;
    _x0050 = _ditheu.y/4.00000000E+00;
    _TMP37 = floor(_x0050);
    _TMP17 = _ditheu.y - 4.00000000E+00*_TMP37;
    _ditdex = int(_TMP16)*4 + int(_TMP17);
    _color.x = int((_OUT._color1.x*2.55000000E+02));
    _color.y = int((_OUT._color1.y*2.55000000E+02));
    _color.z = int((_OUT._color1.z*2.55000000E+02));
    _ohyes = 0;
    if (0 == _ditdex) { 
        _ohyes = int(_erroredtable[0]);
    } else {
        if (1 == _ditdex) { 
            _ohyes = int(_erroredtable[1]);
        } else {
            if (2 == _ditdex) { 
                _ohyes = int(_erroredtable[2]);
            } else {
                if (3 == _ditdex) { 
                    _ohyes = int(_erroredtable[3]);
                } else {
                    if (4 == _ditdex) { 
                        _ohyes = int(_erroredtable[4]);
                    } else {
                        if (5 == _ditdex) { 
                            _ohyes = int(_erroredtable[5]);
                        } else {
                            if (6 == _ditdex) { 
                                _ohyes = int(_erroredtable[6]);
                            } else {
                                if (7 == _ditdex) { 
                                    _ohyes = int(_erroredtable[7]);
                                } else {
                                    if (8 == _ditdex) { 
                                        _ohyes = int(_erroredtable[8]);
                                    } else {
                                        if (9 == _ditdex) { 
                                            _ohyes = int(_erroredtable[9]);
                                        } else {
                                            if (10 == _ditdex) { 
                                                _ohyes = int(_erroredtable[10]);
                                            } else {
                                                if (11 == _ditdex) { 
                                                    _ohyes = int(_erroredtable[11]);
                                                } else {
                                                    if (12 == _ditdex) { 
                                                        _ohyes = int(_erroredtable[12]);
                                                    } else {
                                                        if (13 == _ditdex) { 
                                                            _ohyes = int(_erroredtable[13]);
                                                        } else {
                                                            if (14 == _ditdex) { 
                                                                _ohyes = int(_erroredtable[14]);
                                                            } else {
                                                                if (15 == _ditdex) { 
                                                                    _ohyes = int(_erroredtable[15]);
                                                                } 
                                                            } 
                                                        } 
                                                    } 
                                                } 
                                            } 
                                        } 
                                    } 
                                } 
                            } 
                        } 
                    } 
                } 
            } 
        } 
    } 
    _ohyes = 17 - (_ohyes - 1);
    _ohyes = int((float(_ohyes)*5.00000000E-01));
    _ohyes = _ohyes + -1;
    _colord.x = _color.x + _ohyes;
    _colord.y = _color.y + _ohyes/2;
    _colord.z = _color.z + _ohyes;
    _OUT._color1.xyz = vec3(float((vec3(float(_colord.x), float(_colord.y), float(_colord.z))*3.92156886E-03).x), float((vec3(float(_colord.x), float(_colord.y), float(_colord.z))*3.92156886E-03).y), float((vec3(float(_colord.x), float(_colord.y), float(_colord.z))*3.92156886E-03).z));
    _reduceme.x = _OUT._color1.x*3.20000000E+01;
    _TMP34 = floor(_reduceme.x);
    _reduceme.x = float(int(_TMP34));
    _reduceme.x = _reduceme.x/3.20000000E+01;
    _reduceme.y = _OUT._color1.y*6.40000000E+01;
    _TMP35 = floor(_reduceme.y);
    _reduceme.y = float(int(_TMP35));
    _reduceme.y = _reduceme.y/6.40000000E+01;
    _reduceme.z = _OUT._color1.z*3.20000000E+01;
    _TMP36 = floor(_reduceme.z);
    _reduceme.z = float(int(_TMP36));
    _reduceme.z = _reduceme.z/3.20000000E+01;
    _OUT._color1.xyz = _reduceme.xyz;
    _leifx_linegamma1 = 4.99999989E-03;
    _x0060 = _ditheu.y/2.00000000E+00;
    _TMP37 = floor(_x0060);
    _horzline11 = _ditheu.y - 2.00000000E+00*_TMP37;
    if (_horzline11 < 1.00000000E+00) { 
        _leifx_linegamma1 = 0.00000000E+00;
    } 
    _OUT._color1.x = _reduceme.x + _leifx_linegamma1;
    _OUT._color1.z = _reduceme.z + _leifx_linegamma1;
    FragColor = _OUT._color1;
    return;
} 
#endif