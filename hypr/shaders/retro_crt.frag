/* 
 * Retro CRT & Warm Phosphor Screen Shader for Hyprland
 * Provides subtle scanlines, CRT edge vignette, and warm phosphor glow.
 */

precision highp float;
varying vec2 v_texcoord;
uniform sampler2D tex;

void main() {
    vec2 uv = v_texcoord;
    vec4 color = texture2D(tex, uv);

    // Subtle horizontal scanline effect (non-intrusive)
    float scanline = sin(gl_FragCoord.y * 1.5707963) * 0.035;
    color.rgb -= scanline;

    // Subtle CRT corner vignette
    vec2 dist = uv - vec2(0.5);
    float vignette = 1.0 - dot(dist, dist) * 0.3;
    color.rgb *= clamp(vignette, 0.0, 1.0);

    // Gruvbox warm amber/phosphor grading
    color.r = clamp(color.r * 1.03, 0.0, 1.0);
    color.g = clamp(color.g * 1.01, 0.0, 1.0);
    color.b = clamp(color.b * 0.95, 0.0, 1.0);

    gl_FragColor = color;
}
