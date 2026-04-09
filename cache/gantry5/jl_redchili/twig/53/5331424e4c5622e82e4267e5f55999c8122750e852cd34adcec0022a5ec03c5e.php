<?php

use Twig\Environment;
use Twig\Error\LoaderError;
use Twig\Error\RuntimeError;
use Twig\Markup;
use Twig\Sandbox\SecurityError;
use Twig\Sandbox\SecurityNotAllowedTagError;
use Twig\Sandbox\SecurityNotAllowedFilterError;
use Twig\Sandbox\SecurityNotAllowedFunctionError;
use Twig\Source;
use Twig\Template;

/* @particles/macros_helper.html.twig */
class __TwigTemplate_bac66134fa8237d56d38e3e98d8f15fc6007ec03ab789705a76b12057961a3df extends \Twig\Template
{
    public function __construct(Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = [
        ];
    }

    protected function doDisplay(array $context, array $blocks = [])
    {
        // line 8
        echo "
";
        // line 105
        echo "
";
        // line 114
        echo "
";
        // line 135
        echo "
";
        // line 184
        echo "
";
        // line 193
        echo "

";
    }

    // line 10
    public function getparallax_open($__particle__ = null, $__id__ = null, ...$__varargs__)
    {
        $context = $this->env->mergeGlobals([
            "particle" => $__particle__,
            "id" => $__id__,
            "varargs" => $__varargs__,
        ]);

        $blocks = [];

        ob_start(function () { return ''; });
        try {
            // line 11
            if ($this->getAttribute(($context["particle"] ?? null), "parallax_image", [])) {
                // line 14
                $context["viewport_height"] = (($this->getAttribute(["full" => " jl-height-viewport=\"offset-top: true\"", "percent" => " jl-height-viewport=\"offset-top: true; offset-bottom: 20\"", "section" => " jl-height-viewport=\"offset-top: true; offset-bottom: 50\"", "expand" => " jl-height-viewport=\"expand: true\""], $this->getAttribute(                // line 19
($context["particle"] ?? null), "viewport_height", []), [], "array", true, true)) ? (_twig_default_filter($this->getAttribute(["full" => " jl-height-viewport=\"offset-top: true\"", "percent" => " jl-height-viewport=\"offset-top: true; offset-bottom: 20\"", "section" => " jl-height-viewport=\"offset-top: true; offset-bottom: 50\"", "expand" => " jl-height-viewport=\"expand: true\""], $this->getAttribute(($context["particle"] ?? null), "viewport_height", []), [], "array"), "")) : (""));
                // line 22
                $context["padding"] = (" jl-section" . ((($this->getAttribute(                // line 23
($context["particle"] ?? null), "padding", []) == "none")) ? (" jl-padding-remove-vertical") : (((($this->getAttribute(                // line 24
($context["particle"] ?? null), "padding", []) != "default")) ? ((" jl-section-" . $this->getAttribute(($context["particle"] ?? null), "padding", []))) : ("")))));
                // line 28
                if ($this->getAttribute(($context["particle"] ?? null), "parallax_bg_color", [])) {
                    // line 29
                    ob_start(function () { return ''; });
                    echo " style=\"background-color: ";
                    echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "parallax_bg_color", []));
                    echo ";\"";
                    $context["parallax_bg_color"] = ('' === $tmp = ob_get_clean()) ? '' : new Markup($tmp, $this->env->getCharset());
                } else {
                    // line 31
                    $context["parallax_bg_color"] = "";
                }
                // line 35
                $context["parallax_overlay"] = (($this->getAttribute(($context["particle"] ?? null), "parallax_bg_overlay", [])) ? ((("<div class=\"jl-position-cover\" style=\"background-color: " . twig_escape_filter($this->env, $this->getAttribute(                // line 36
($context["particle"] ?? null), "parallax_bg_overlay", []))) . ";\"></div>")) : (""));
                // line 40
                $context["bg_container_maxwidth"] = ((twig_in_filter($this->getAttribute(($context["particle"] ?? null), "container_maxwidth", []), [0 => "custom", 1 => "default"])) ? ("g-container") : (("jl-container" . ((twig_in_filter($this->getAttribute(                // line 42
($context["particle"] ?? null), "container_maxwidth", []), [0 => "small", 1 => "large", 2 => "xlarge", 3 => "expand"])) ? ((" jl-container-" . $this->getAttribute(                // line 43
($context["particle"] ?? null), "container_maxwidth", []))) : ("")))));
                // line 47
                $context["parallax_bg_horizontal"] = ((($this->getAttribute(($context["particle"] ?? null), "horizontal_start", []) || $this->getAttribute(($context["particle"] ?? null), "horizontal_end", []))) ? ((((("bgx: " . (($this->getAttribute(                // line 48
($context["particle"] ?? null), "horizontal_start", [], "any", true, true)) ? (_twig_default_filter($this->getAttribute(($context["particle"] ?? null), "horizontal_start", []), "0")) : ("0"))) . ",") . (($this->getAttribute(($context["particle"] ?? null), "horizontal_end", [], "any", true, true)) ? (_twig_default_filter($this->getAttribute(($context["particle"] ?? null), "horizontal_end", []), "0")) : ("0"))) . ";")) : (""));
                // line 50
                $context["parallax_bg_vertical"] = ((($this->getAttribute(($context["particle"] ?? null), "vertical_start", []) || $this->getAttribute(($context["particle"] ?? null), "vertical_end", []))) ? ((((("bgy: " . (($this->getAttribute(                // line 51
($context["particle"] ?? null), "vertical_start", [], "any", true, true)) ? (_twig_default_filter($this->getAttribute(($context["particle"] ?? null), "vertical_start", []), "0")) : ("0"))) . ",") . (($this->getAttribute(($context["particle"] ?? null), "vertical_end", [], "any", true, true)) ? (_twig_default_filter($this->getAttribute(($context["particle"] ?? null), "vertical_end", []), "0")) : ("0"))) . ";")) : (""));
                // line 55
                $context["parallax_easing"] = (($this->getAttribute(($context["particle"] ?? null), "parallax_easing", [])) ? ((" easing: " . $this->getAttribute(                // line 56
($context["particle"] ?? null), "parallax_easing", []))) : (""));
                // line 60
                $context["has_parallax"] = (($this->getAttribute(($context["particle"] ?? null), "bg_image_effect", []) == "parallax") && (                // line 61
($context["parallax_bg_horizontal"] ?? null) || ($context["parallax_bg_vertical"] ?? null)));
                // line 64
                $context["parallax_media"] = ((( !twig_test_empty($this->getAttribute(($context["particle"] ?? null), "parallax_bg_breakpoint", [])) && ($this->getAttribute(($context["particle"] ?? null), "parallax_bg_breakpoint", []) != "always"))) ? ((" media: @" . $this->getAttribute(                // line 65
($context["particle"] ?? null), "parallax_bg_breakpoint", []))) : (""));
                // line 69
                if (($context["has_parallax"] ?? null)) {
                    // line 70
                    ob_start(function () { return ''; });
                    echo " jl-parallax=\"";
                    echo twig_escape_filter($this->env, ($context["parallax_bg_horizontal"] ?? null), "html", null, true);
                    echo twig_escape_filter($this->env, ($context["parallax_bg_vertical"] ?? null), "html", null, true);
                    echo twig_escape_filter($this->env, ($context["parallax_media"] ?? null), "html", null, true);
                    echo twig_escape_filter($this->env, ($context["parallax_easing"] ?? null), "html", null, true);
                    echo "\"";
                    $context["bgp_animation_cls"] = ('' === $tmp = ob_get_clean()) ? '' : new Markup($tmp, $this->env->getCharset());
                } else {
                    // line 72
                    $context["bgp_animation_cls"] = "";
                }
                // line 76
                $context["position_class"] = (($this->getAttribute(($context["particle"] ?? null), "parallax_bg_overlay", [])) ? (" jl-position-relative") : (""));
                // line 77
                $context["bg_fixed_class"] = ((($this->getAttribute(($context["particle"] ?? null), "bg_image_effect", []) == "fixed")) ? (" jl-background-fixed") : (""));
                // line 78
                $context["bg_size_class"] = ((($this->getAttribute(($context["particle"] ?? null), "background_image_size", []) != "auto")) ? ((" jl-background-" . $this->getAttribute(($context["particle"] ?? null), "background_image_size", []))) : (""));
                // line 79
                $context["bg_visibility_class"] = ((($this->getAttribute(($context["particle"] ?? null), "parallax_bg_visibility", []) != "always")) ? ((" jl-background-image@" . $this->getAttribute(($context["particle"] ?? null), "parallax_bg_visibility", []))) : (""));
                // line 80
                $context["vertical_align_class"] = (((($this->getAttribute(($context["particle"] ?? null), "vertical_alignment", []) != "none") && ($this->getAttribute(($context["particle"] ?? null), "viewport_height", []) != "none"))) ? ((" jl-flex jl-flex-" . $this->getAttribute(                // line 81
($context["particle"] ?? null), "vertical_alignment", []))) : (""));
                // line 82
                $context["text_color_class"] = ((($this->getAttribute(($context["particle"] ?? null), "parallax_text_color", []) != "default")) ? ((" jl-" . $this->getAttribute(($context["particle"] ?? null), "parallax_text_color", []))) : (""));
                // line 83
                $context["blend_mode_class"] = ((($this->getAttribute(($context["particle"] ?? null), "blendmode", []) != "inherit")) ? ((" jl-background-blend-" . $this->getAttribute(($context["particle"] ?? null), "blendmode", []))) : (""));
                // line 84
                $context["loading_attr"] = (($this->getAttribute(($context["particle"] ?? null), "bg_image_loading", [])) ? (" loading=\"eager\"") : (""));
                // line 87
                $context["wrapper_classes"] = (((((((((("jl-wrapper jl-background-norepeat" .                 // line 88
($context["position_class"] ?? null)) .                 // line 89
($context["bg_fixed_class"] ?? null)) .                 // line 90
($context["padding"] ?? null)) . " jl-background-") . $this->getAttribute(                // line 91
($context["particle"] ?? null), "background_image_position", [])) .                 // line 92
($context["bg_size_class"] ?? null)) .                 // line 93
($context["bg_visibility_class"] ?? null)) .                 // line 94
($context["vertical_align_class"] ?? null)) .                 // line 95
($context["text_color_class"] ?? null)) .                 // line 96
($context["blend_mode_class"] ?? null));
                // line 98
                echo "<div data-src=\"";
                echo twig_escape_filter($this->env, $this->env->getExtension('Gantry\Component\Twig\TwigExtension')->urlFunc($this->getAttribute(($context["particle"] ?? null), "parallax_image", [])), "html", null, true);
                echo "\"";
                echo ($context["loading_attr"] ?? null);
                echo " jl-img class=\"";
                echo twig_escape_filter($this->env, ($context["wrapper_classes"] ?? null), "html", null, true);
                echo "\"";
                echo ($context["parallax_bg_color"] ?? null);
                echo ($context["bgp_animation_cls"] ?? null);
                echo ($context["viewport_height"] ?? null);
                echo ">
    ";
                // line 99
                echo ($context["parallax_overlay"] ?? null);
                echo "
    <div class=\"";
                // line 100
                echo twig_escape_filter($this->env, ($context["bg_container_maxwidth"] ?? null), "html", null, true);
                echo twig_escape_filter($this->env, ($context["position_class"] ?? null), "html", null, true);
                echo "\">
        <div class=\"el-content\">";
            }
        } catch (\Exception $e) {
            ob_end_clean();

            throw $e;
        } catch (\Throwable $e) {
            ob_end_clean();

            throw $e;
        }

        return ('' === $tmp = ob_get_clean()) ? '' : new Markup($tmp, $this->env->getCharset());
    }

    // line 107
    public function getparallax_close($__particle__ = null, ...$__varargs__)
    {
        $context = $this->env->mergeGlobals([
            "particle" => $__particle__,
            "varargs" => $__varargs__,
        ]);

        $blocks = [];

        ob_start(function () { return ''; });
        try {
            // line 108
            if ($this->getAttribute(($context["particle"] ?? null), "parallax_image", [])) {
                // line 109
                echo "</div>
    </div>
</div>";
            }
        } catch (\Exception $e) {
            ob_end_clean();

            throw $e;
        } catch (\Throwable $e) {
            ob_end_clean();

            throw $e;
        }

        return ('' === $tmp = ob_get_clean()) ? '' : new Markup($tmp, $this->env->getCharset());
    }

    // line 116
    public function getparticle_title_style($__particle__ = null, $__id__ = null, ...$__varargs__)
    {
        $context = $this->env->mergeGlobals([
            "particle" => $__particle__,
            "id" => $__id__,
            "varargs" => $__varargs__,
        ]);

        $blocks = [];

        ob_start(function () { return ''; });
        try {
            // line 117
            if ($this->getAttribute(($context["particle"] ?? null), "particle_title", [])) {
                // line 118
                $context["allowed_elements"] = [0 => "h1", 1 => "h2", 2 => "h3", 3 => "h4", 4 => "h5", 5 => "h6", 6 => "p", 7 => "div", 8 => "span"];
                // line 119
                $context["el"] = ((twig_in_filter($this->getAttribute(($context["particle"] ?? null), "particle_title_element", []), ($context["allowed_elements"] ?? null))) ? ($this->getAttribute(                // line 120
($context["particle"] ?? null), "particle_title_element", [])) : ("h3"));
                // line 121
                $context["deco"] = $this->getAttribute(($context["particle"] ?? null), "particle_title_decoration", []);
                // line 122
                $context["cls_align"] = ((($this->getAttribute(($context["particle"] ?? null), "particle_title_align", []) != "inherit")) ? ((" jl-text-" . $this->getAttribute(($context["particle"] ?? null), "particle_title_align", []))) : (""));
                // line 123
                $context["cls_color"] = ((($this->getAttribute(($context["particle"] ?? null), "particle_predefined_color", []) != "default")) ? ((" jl-text-" . $this->getAttribute(($context["particle"] ?? null), "particle_predefined_color", []))) : (""));
                // line 124
                $context["cls_style"] = ((($this->getAttribute(($context["particle"] ?? null), "particle_title_style", []) != "default")) ? ((" jl-" . $this->getAttribute(($context["particle"] ?? null), "particle_title_style", []))) : (""));
                // line 125
                $context["cls_deco"] = (((($context["deco"] ?? null) != "none")) ? ((" jl-heading-" . ($context["deco"] ?? null))) : (""));
                // line 126
                $context["cls_trans"] = (($this->getAttribute(($context["particle"] ?? null), "particle_title_text_transform", [])) ? ((" jl-text-" . $this->getAttribute(($context["particle"] ?? null), "particle_title_text_transform", []))) : (""));
                // line 127
                $context["cls_weight"] = (($this->getAttribute(($context["particle"] ?? null), "particle_title_font_weight", [])) ? ((" jl-text-" . $this->getAttribute(($context["particle"] ?? null), "particle_title_font_weight", []))) : (""));
                // line 128
                echo "<";
                echo twig_escape_filter($this->env, ($context["el"] ?? null), "html", null, true);
                echo " id=\"el-";
                echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
                echo "\" class=\"g5-title";
                echo twig_escape_filter($this->env, ($context["cls_align"] ?? null), "html", null, true);
                echo twig_escape_filter($this->env, ($context["cls_color"] ?? null), "html", null, true);
                echo twig_escape_filter($this->env, ($context["cls_style"] ?? null), "html", null, true);
                echo twig_escape_filter($this->env, ($context["cls_deco"] ?? null), "html", null, true);
                echo twig_escape_filter($this->env, ($context["cls_trans"] ?? null), "html", null, true);
                echo twig_escape_filter($this->env, ($context["cls_weight"] ?? null), "html", null, true);
                echo "\">";
                // line 129
                if ((($context["deco"] ?? null) == "line")) {
                    echo "<span>";
                    echo $this->getAttribute(($context["particle"] ?? null), "particle_title", []);
                    echo "</span>";
                } else {
                    // line 130
                    echo $this->getAttribute(($context["particle"] ?? null), "particle_title", []);
                }
                // line 132
                echo "</";
                echo twig_escape_filter($this->env, ($context["el"] ?? null), "html", null, true);
                echo ">";
            }
        } catch (\Exception $e) {
            ob_end_clean();

            throw $e;
        } catch (\Throwable $e) {
            ob_end_clean();

            throw $e;
        }

        return ('' === $tmp = ob_get_clean()) ? '' : new Markup($tmp, $this->env->getCharset());
    }

    // line 137
    public function getanimation_render($__particle__ = null, $__has_children__ = null, ...$__varargs__)
    {
        $context = $this->env->mergeGlobals([
            "particle" => $__particle__,
            "has_children" => $__has_children__,
            "varargs" => $__varargs__,
        ]);

        $blocks = [];

        ob_start(function () { return ''; });
        try {
            // line 138
            if (($this->getAttribute(($context["particle"] ?? null), "animation", []) == "parallax")) {
                // line 140
                $context["parallax_parts"] = twig_array_filter($this->env, [0 => ((( !twig_test_empty($this->getAttribute(                // line 141
($context["particle"] ?? null), "pa_horizontal_start", [])) ||  !twig_test_empty($this->getAttribute(($context["particle"] ?? null), "pa_horizontal_end", [])))) ? (((("x: " . (($this->getAttribute(                // line 142
($context["particle"] ?? null), "pa_horizontal_start", [], "any", true, true)) ? (_twig_default_filter($this->getAttribute(($context["particle"] ?? null), "pa_horizontal_start", []), "0")) : ("0"))) . ",") . (($this->getAttribute(($context["particle"] ?? null), "pa_horizontal_end", [], "any", true, true)) ? (_twig_default_filter($this->getAttribute(($context["particle"] ?? null), "pa_horizontal_end", []), "0")) : ("0")))) : ("")), 1 => ((( !twig_test_empty($this->getAttribute(                // line 143
($context["particle"] ?? null), "pa_vertical_start", [])) ||  !twig_test_empty($this->getAttribute(($context["particle"] ?? null), "pa_vertical_end", [])))) ? (((("y: " . (($this->getAttribute(                // line 144
($context["particle"] ?? null), "pa_vertical_start", [], "any", true, true)) ? (_twig_default_filter($this->getAttribute(($context["particle"] ?? null), "pa_vertical_start", []), "0")) : ("0"))) . ",") . (($this->getAttribute(($context["particle"] ?? null), "pa_vertical_end", [], "any", true, true)) ? (_twig_default_filter($this->getAttribute(($context["particle"] ?? null), "pa_vertical_end", []), "0")) : ("0")))) : ("")), 2 => ((( !twig_test_empty($this->getAttribute(                // line 145
($context["particle"] ?? null), "scale_start", [])) ||  !twig_test_empty($this->getAttribute(($context["particle"] ?? null), "scale_end", [])))) ? (((("scale: " . (($this->getAttribute(                // line 146
($context["particle"] ?? null), "scale_start", [], "any", true, true)) ? (_twig_default_filter($this->getAttribute(($context["particle"] ?? null), "scale_start", []), "1")) : ("1"))) . ",") . (($this->getAttribute(($context["particle"] ?? null), "scale_end", [], "any", true, true)) ? (_twig_default_filter($this->getAttribute(($context["particle"] ?? null), "scale_end", []), "1")) : ("1")))) : ("")), 3 => ((( !twig_test_empty($this->getAttribute(                // line 147
($context["particle"] ?? null), "rotate_start", [])) ||  !twig_test_empty($this->getAttribute(($context["particle"] ?? null), "rotate_end", [])))) ? (((("rotate: " . (($this->getAttribute(                // line 148
($context["particle"] ?? null), "rotate_start", [], "any", true, true)) ? (_twig_default_filter($this->getAttribute(($context["particle"] ?? null), "rotate_start", []), "0")) : ("0"))) . ",") . (($this->getAttribute(($context["particle"] ?? null), "rotate_end", [], "any", true, true)) ? (_twig_default_filter($this->getAttribute(($context["particle"] ?? null), "rotate_end", []), "0")) : ("0")))) : ("")), 4 => ((( !twig_test_empty($this->getAttribute(                // line 149
($context["particle"] ?? null), "opacity_start", [])) ||  !twig_test_empty($this->getAttribute(($context["particle"] ?? null), "opacity_end", [])))) ? (((("opacity: " . (($this->getAttribute(                // line 150
($context["particle"] ?? null), "opacity_start", [], "any", true, true)) ? (_twig_default_filter($this->getAttribute(($context["particle"] ?? null), "opacity_start", []), "1")) : ("1"))) . ",") . (($this->getAttribute(($context["particle"] ?? null), "opacity_end", [], "any", true, true)) ? (_twig_default_filter($this->getAttribute(($context["particle"] ?? null), "opacity_end", []), "1")) : ("1")))) : ("")), 5 => (( !twig_test_empty($this->getAttribute(                // line 151
($context["particle"] ?? null), "blur_start", []))) ? ((("blur: " . $this->getAttribute(                // line 152
($context["particle"] ?? null), "blur_start", [])) . (( !twig_test_empty($this->getAttribute(($context["particle"] ?? null), "blur_end", []))) ? (((" " . $this->getAttribute(($context["particle"] ?? null), "blur_end", [])) . "%")) : ("")))) : (""))],                 // line 153
function ($__v__) use ($context) { $context["v"] = $__v__; return  !twig_test_empty(($context["v"] ?? null)); });
                // line 155
                if ( !twig_test_empty(($context["parallax_parts"] ?? null))) {
                    // line 156
                    $context["config_parts"] = twig_array_filter($this->env, [0 => ("easing: " . (($this->getAttribute(                    // line 157
($context["particle"] ?? null), "easing", [], "any", true, true)) ? (_twig_default_filter($this->getAttribute(($context["particle"] ?? null), "easing", []), "0")) : ("0"))), 1 => (( !twig_test_empty($this->getAttribute(                    // line 158
($context["particle"] ?? null), "parallax_start", []))) ? (("start: " . $this->getAttribute(($context["particle"] ?? null), "parallax_start", []))) : ("")), 2 => (( !twig_test_empty($this->getAttribute(                    // line 159
($context["particle"] ?? null), "parallax_end", []))) ? (("end: " . $this->getAttribute(($context["particle"] ?? null), "parallax_end", []))) : ("")), 3 => ((( !twig_test_empty($this->getAttribute(                    // line 160
($context["particle"] ?? null), "pa_breakpoint", [])) && ($this->getAttribute(($context["particle"] ?? null), "pa_breakpoint", []) != "always"))) ? (("media: @" . $this->getAttribute(                    // line 161
($context["particle"] ?? null), "pa_breakpoint", []))) : (""))],                     // line 162
function ($__v__) use ($context) { $context["v"] = $__v__; return  !twig_test_empty(($context["v"] ?? null)); });
                    // line 163
                    ob_start(function () { return ''; });
                    echo " jl-parallax=\"";
                    echo twig_escape_filter($this->env, twig_join_filter(twig_array_merge(($context["parallax_parts"] ?? null), ($context["config_parts"] ?? null)), "; "), "html", null, true);
                    echo "\"";
                    $context["attr"] = ('' === $tmp = ob_get_clean()) ? '' : new Markup($tmp, $this->env->getCharset());
                    // line 164
                    echo ($context["attr"] ?? null);
                }
            } elseif (( !twig_test_empty($this->getAttribute(            // line 167
($context["particle"] ?? null), "animation", [])) && ($this->getAttribute(($context["particle"] ?? null), "animation", []) != "inherit"))) {
                // line 169
                $context["delay"] = (($this->getAttribute(($context["particle"] ?? null), "delay_element_animations", [])) ? ((($this->getAttribute(                // line 170
($context["particle"] ?? null), "animation_delay", [], "any", true, true)) ? (_twig_default_filter($this->getAttribute(($context["particle"] ?? null), "animation_delay", []), "300")) : ("300"))) : ("false"));
                // line 173
                $context["scrollspy_parts"] = twig_array_filter($this->env, [0 => ((                // line 174
($context["has_children"] ?? null)) ? ("target: [jl-scrollspy-class]") : ("")), 1 => ("cls: jl-animation-" . $this->getAttribute(                // line 175
($context["particle"] ?? null), "animation", [])), 2 => ((($this->getAttribute(                // line 176
($context["particle"] ?? null), "animation_repeat", []) == "enabled")) ? ("repeat: true") : ("")), 3 => ("delay: " .                 // line 177
($context["delay"] ?? null))],                 // line 178
function ($__v__) use ($context) { $context["v"] = $__v__; return  !twig_test_empty(($context["v"] ?? null)); });
                // line 179
                ob_start(function () { return ''; });
                echo " jl-scrollspy=\"";
                echo twig_escape_filter($this->env, twig_join_filter(($context["scrollspy_parts"] ?? null), "; "), "html", null, true);
                echo "\"";
                $context["attr"] = ('' === $tmp = ob_get_clean()) ? '' : new Markup($tmp, $this->env->getCharset());
                // line 180
                echo ($context["attr"] ?? null);
            }
        } catch (\Exception $e) {
            ob_end_clean();

            throw $e;
        } catch (\Throwable $e) {
            ob_end_clean();

            throw $e;
        }

        return ('' === $tmp = ob_get_clean()) ? '' : new Markup($tmp, $this->env->getCharset());
    }

    // line 186
    public function getanimation_child($__particle__ = null, ...$__varargs__)
    {
        $context = $this->env->mergeGlobals([
            "particle" => $__particle__,
            "varargs" => $__varargs__,
        ]);

        $blocks = [];

        ob_start(function () { return ''; });
        try {
            // line 187
            if ((( !twig_test_empty($this->getAttribute(($context["particle"] ?? null), "animation", [])) && ($this->getAttribute(            // line 188
($context["particle"] ?? null), "animation", []) != "inherit")) && ($this->getAttribute(            // line 189
($context["particle"] ?? null), "animation", []) != "parallax"))) {
                // line 190
                echo " jl-scrollspy-class";
            }
        } catch (\Exception $e) {
            ob_end_clean();

            throw $e;
        } catch (\Throwable $e) {
            ob_end_clean();

            throw $e;
        }

        return ('' === $tmp = ob_get_clean()) ? '' : new Markup($tmp, $this->env->getCharset());
    }

    public function getTemplateName()
    {
        return "@particles/macros_helper.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  391 => 190,  389 => 189,  388 => 188,  387 => 187,  375 => 186,  359 => 180,  353 => 179,  351 => 178,  350 => 177,  349 => 176,  348 => 175,  347 => 174,  346 => 173,  344 => 170,  343 => 169,  341 => 167,  338 => 164,  332 => 163,  330 => 162,  329 => 161,  328 => 160,  327 => 159,  326 => 158,  325 => 157,  324 => 156,  322 => 155,  320 => 153,  319 => 152,  318 => 151,  317 => 150,  316 => 149,  315 => 148,  314 => 147,  313 => 146,  312 => 145,  311 => 144,  310 => 143,  309 => 142,  308 => 141,  307 => 140,  305 => 138,  292 => 137,  274 => 132,  271 => 130,  265 => 129,  252 => 128,  250 => 127,  248 => 126,  246 => 125,  244 => 124,  242 => 123,  240 => 122,  238 => 121,  236 => 120,  235 => 119,  233 => 118,  231 => 117,  218 => 116,  200 => 109,  198 => 108,  186 => 107,  167 => 100,  163 => 99,  150 => 98,  148 => 96,  147 => 95,  146 => 94,  145 => 93,  144 => 92,  143 => 91,  142 => 90,  141 => 89,  140 => 88,  139 => 87,  137 => 84,  135 => 83,  133 => 82,  131 => 81,  130 => 80,  128 => 79,  126 => 78,  124 => 77,  122 => 76,  119 => 72,  109 => 70,  107 => 69,  105 => 65,  104 => 64,  102 => 61,  101 => 60,  99 => 56,  98 => 55,  96 => 51,  95 => 50,  93 => 48,  92 => 47,  90 => 43,  89 => 42,  88 => 40,  86 => 36,  85 => 35,  82 => 31,  75 => 29,  73 => 28,  71 => 24,  70 => 23,  69 => 22,  67 => 19,  66 => 14,  64 => 11,  51 => 10,  45 => 193,  42 => 184,  39 => 135,  36 => 114,  33 => 105,  30 => 8,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Source("", "@particles/macros_helper.html.twig", "D:\\Apache24\\htdocs\\Spice_Bites\\templates\\jl_redchili\\particles\\macros_helper.html.twig");
    }
}
