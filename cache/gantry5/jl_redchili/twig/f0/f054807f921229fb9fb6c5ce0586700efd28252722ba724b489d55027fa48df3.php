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

/* @particles/jlheading.html.twig */
class __TwigTemplate_4a6137bd1edbd87389e124a1f87df9cc4bf578052ef192ad3e1facfa5e6f1331 extends \Twig\Template
{
    public function __construct(Environment $env)
    {
        parent::__construct($env);

        $this->blocks = [
            'stylesheets' => [$this, 'block_stylesheets'],
            'javascript' => [$this, 'block_javascript'],
            'particle' => [$this, 'block_particle'],
        ];
    }

    protected function doGetParent(array $context)
    {
        // line 1
        return "@nucleus/partials/particle.html.twig";
    }

    protected function doDisplay(array $context, array $blocks = [])
    {
        // line 2
        $context["Macros"] = $this->loadTemplate("@particles/macros_helper.html.twig", "@particles/jlheading.html.twig", 2)->unwrap();
        // line 23
        $context["linkscroll"] = (((preg_match("/#/", $this->getAttribute(($context["particle"] ?? null), "title_link", [])) && ($this->getAttribute(($context["particle"] ?? null), "title_link_target", []) != "_blank"))) ? (" jl-scroll") : (""));
        // line 26
        $context["title_text_transform"] = (($this->getAttribute(($context["particle"] ?? null), "title_text_transform", [])) ? ((" jl-text-" . $this->getAttribute(($context["particle"] ?? null), "title_text_transform", []))) : (""));
        // line 27
        $context["title_font_weight"] = (($this->getAttribute(($context["particle"] ?? null), "title_font_weight", [])) ? ((" jl-text-" . $this->getAttribute(($context["particle"] ?? null), "title_font_weight", []))) : (""));
        // line 28
        $context["heading_color"] = (($this->getAttribute(($context["particle"] ?? null), "heading_color", [])) ? ((" jl-text-" . $this->getAttribute(($context["particle"] ?? null), "heading_color", []))) : (""));
        // line 29
        $context["decoration_class"] = (($this->getAttribute(($context["particle"] ?? null), "decoration", [])) ? ((" jl-heading-" . $this->getAttribute(($context["particle"] ?? null), "decoration", []))) : (""));
        // line 30
        $context["style_class"] = ((($this->getAttribute(($context["particle"] ?? null), "style", []) != "default")) ? ((" jl-" . $this->getAttribute(($context["particle"] ?? null), "style", []))) : (""));
        // line 32
        $context["content_text_transform"] = (($this->getAttribute(($context["particle"] ?? null), "content_text_transform", [])) ? ((" jl-text-" . $this->getAttribute(($context["particle"] ?? null), "content_text_transform", []))) : (""));
        // line 33
        $context["meta_font_weight"] = (($this->getAttribute(($context["particle"] ?? null), "meta_font_weight", [])) ? ((" jl-text-" . $this->getAttribute(($context["particle"] ?? null), "meta_font_weight", []))) : (""));
        // line 34
        $context["des_dropcap"] = (($this->getAttribute(($context["particle"] ?? null), "description_dropcap", [])) ? (" jl-dropcap") : (""));
        // line 35
        $context["description_style"] = ((($this->getAttribute(($context["particle"] ?? null), "description_style", []) != "default")) ? ((" jl-" . $this->getAttribute(($context["particle"] ?? null), "description_style", []))) : (""));
        // line 36
        $context["margin_top"] = ((($this->getAttribute(($context["particle"] ?? null), "description_margin_top", []) == "default")) ? (" jl-margin-top") : (((" jl-margin-" . $this->getAttribute(($context["particle"] ?? null), "description_margin_top", [])) . "-top")));
        // line 37
        $context["description_color"] = ((($this->getAttribute(($context["particle"] ?? null), "description_color", []) != "default")) ? ((" jl-text-" . $this->getAttribute(($context["particle"] ?? null), "description_color", []))) : (""));
        // line 39
        $context["particle_classes"] = twig_trim_filter(twig_join_filter(twig_array_filter($this->env, [0 =>         // line 40
($context["id"] ?? null), 1 => (($this->getAttribute(        // line 41
($context["particle"] ?? null), "g_maxwidth", [])) ? (((("jl-width-" . $this->getAttribute(($context["particle"] ?? null), "g_maxwidth", [])) . (($this->getAttribute(($context["particle"] ?? null), "g_maxwidth_breakpoint", [])) ? (("@" . $this->getAttribute(($context["particle"] ?? null), "g_maxwidth_breakpoint", []))) : (""))) . ((($this->getAttribute(($context["particle"] ?? null), "g_maxwidth_alignment", []) == "center")) ? (" jl-margin-auto") : (((($this->getAttribute(($context["particle"] ?? null), "g_maxwidth_alignment", []) == "right")) ? (" jl-margin-auto-left") : ("")))))) : ("")), 2 => ((($this->getAttribute(        // line 42
($context["particle"] ?? null), "align", []) != "inherit")) ? ((("jl-text-" . $this->getAttribute(($context["particle"] ?? null), "align", [])) . ((($this->getAttribute(($context["particle"] ?? null), "breakpoint", []) != "always")) ? ((("@" . $this->getAttribute(($context["particle"] ?? null), "breakpoint", [])) . ((($this->getAttribute(($context["particle"] ?? null), "fallback", []) != "inherit")) ? ((" jl-text-" . $this->getAttribute(($context["particle"] ?? null), "fallback", []))) : ("")))) : ("")))) : ("")), 3 => (((($this->getAttribute(        // line 43
($context["particle"] ?? null), "animation", []) == "parallax") && $this->getAttribute(($context["particle"] ?? null), "pa_z_index", []))) ? ("jl-position-z-index jl-position-relative") : ("")), 4 => (((($this->getAttribute(        // line 44
($context["particle"] ?? null), "animation", []) == "parallax") && ($this->getAttribute(($context["particle"] ?? null), "parallax_transform_origin", []) != "center-center"))) ? (("jl-transform-origin-" . $this->getAttribute(($context["particle"] ?? null), "parallax_transform_origin", []))) : ("")), 5 => ((($this->getAttribute(        // line 45
($context["particle"] ?? null), "margin", []) != "inherit")) ? (((($this->getAttribute(($context["particle"] ?? null), "margin", []) != "default")) ? (("jl-margin-" . $this->getAttribute(($context["particle"] ?? null), "margin", []))) : ("jl-margin"))) : ("")), 6 => ((($this->getAttribute(        // line 46
($context["particle"] ?? null), "visibility", []) != "inherit")) ? (((twig_in_filter($this->getAttribute(($context["particle"] ?? null), "visibility", []), [0 => "s", 1 => "m", 2 => "l", 3 => "xl"])) ? (("jl-visible@" . $this->getAttribute(($context["particle"] ?? null), "visibility", []))) : (("jl-" . twig_replace_filter($this->getAttribute(($context["particle"] ?? null), "visibility", []), ["-" => "@"]))))) : ("")), 7 => (($this->getAttribute(        // line 47
($context["particle"] ?? null), "class", [], "any", true, true)) ? (_twig_default_filter($this->getAttribute(($context["particle"] ?? null), "class", []), "")) : (""))],         // line 48
function ($__v__) use ($context) { $context["v"] = $__v__; return ($context["v"] ?? null); }), " "));
        // line 50
        $context["attr_extra"] = $this->env->getExtension('Gantry\Component\Twig\TwigExtension')->attributeArrayFilter($this->getAttribute(($context["particle"] ?? null), "extra", []));
        // line 1
        $this->parent = $this->loadTemplate("@nucleus/partials/particle.html.twig", "@particles/jlheading.html.twig", 1);
        $this->parent->display($context, array_merge($this->blocks, $blocks));
    }

    // line 4
    public function block_stylesheets($context, array $blocks = [])
    {
        // line 5
        $context["idclass"] = ("." . ($context["id"] ?? null));
        // line 6
        if ((((((((($this->getAttribute(($context["particle"] ?? null), "particle_title_color", []) || $this->getAttribute(($context["particle"] ?? null), "particle_title_fontsize", [])) || $this->getAttribute(($context["particle"] ?? null), "title_color", [])) || $this->getAttribute(($context["particle"] ?? null), "title_fontsize", [])) || $this->getAttribute(($context["particle"] ?? null), "subtitle_color", [])) || $this->getAttribute(($context["particle"] ?? null), "subtitle_fontsize", [])) || $this->getAttribute(($context["particle"] ?? null), "decoration_color", [])) || $this->getAttribute(($context["particle"] ?? null), "decoration_width", [])) || (($this->getAttribute(($context["particle"] ?? null), "parallax_image", []) && ($this->getAttribute(($context["particle"] ?? null), "container_maxwidth", []) == "custom")) &&  !twig_test_empty($this->getAttribute(($context["particle"] ?? null), "bg_container_width", []))))) {
            // line 7
            echo "<style>";
            // line 8
            if (($this->getAttribute(($context["particle"] ?? null), "particle_title_color", []) || $this->getAttribute(($context["particle"] ?? null), "particle_title_fontsize", []))) {
                echo "#el-";
                echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
                echo ".g5-title{ ";
                (($this->getAttribute(($context["particle"] ?? null), "particle_title_color", [])) ? (print (twig_escape_filter($this->env, (("color:" . $this->getAttribute(($context["particle"] ?? null), "particle_title_color", [])) . ";"), "html", null, true))) : (print ("")));
                (($this->getAttribute(($context["particle"] ?? null), "particle_title_fontsize", [])) ? (print (twig_escape_filter($this->env, (("font-size:" . $this->getAttribute(($context["particle"] ?? null), "particle_title_fontsize", [])) . "px;"), "html", null, true))) : (print ("")));
                echo " }";
            }
            // line 9
            if (($this->getAttribute(($context["particle"] ?? null), "title_color", []) || $this->getAttribute(($context["particle"] ?? null), "title_fontsize", []))) {
                echo twig_escape_filter($this->env, ($context["idclass"] ?? null), "html", null, true);
                echo " .tm-title{ ";
                (($this->getAttribute(($context["particle"] ?? null), "title_color", [])) ? (print (twig_escape_filter($this->env, (("color:" . $this->getAttribute(($context["particle"] ?? null), "title_color", [])) . ";"), "html", null, true))) : (print ("")));
                (($this->getAttribute(($context["particle"] ?? null), "title_fontsize", [])) ? (print (twig_escape_filter($this->env, (("font-size:" . $this->getAttribute(($context["particle"] ?? null), "title_fontsize", [])) . "px;"), "html", null, true))) : (print ("")));
                echo " }";
            }
            // line 10
            if (($this->getAttribute(($context["particle"] ?? null), "subtitle_color", []) || $this->getAttribute(($context["particle"] ?? null), "subtitle_fontsize", []))) {
                echo twig_escape_filter($this->env, ($context["idclass"] ?? null), "html", null, true);
                echo " .tm-description{ ";
                (($this->getAttribute(($context["particle"] ?? null), "subtitle_color", [])) ? (print (twig_escape_filter($this->env, (("color:" . $this->getAttribute(($context["particle"] ?? null), "subtitle_color", [])) . ";"), "html", null, true))) : (print ("")));
                (($this->getAttribute(($context["particle"] ?? null), "subtitle_fontsize", [])) ? (print (twig_escape_filter($this->env, (("font-size:" . $this->getAttribute(($context["particle"] ?? null), "subtitle_fontsize", [])) . "px;"), "html", null, true))) : (print ("")));
                echo " }";
            }
            // line 11
            if (($this->getAttribute(($context["particle"] ?? null), "decoration", []) == "divider")) {
                echo twig_escape_filter($this->env, ($context["idclass"] ?? null), "html", null, true);
                echo " .jl-heading-divider{ ";
                (($this->getAttribute(($context["particle"] ?? null), "decoration_color", [])) ? (print (twig_escape_filter($this->env, (("border-color:" . $this->getAttribute(($context["particle"] ?? null), "decoration_color", [])) . ";"), "html", null, true))) : (print ("")));
                (($this->getAttribute(($context["particle"] ?? null), "decoration_width", [])) ? (print (twig_escape_filter($this->env, (("border-width:" . $this->getAttribute(($context["particle"] ?? null), "decoration_width", [])) . "px;"), "html", null, true))) : (print ("")));
                echo " }";
            } elseif (($this->getAttribute(($context["particle"] ?? null), "decoration", []) == "bullet")) {
                echo twig_escape_filter($this->env, ($context["idclass"] ?? null), "html", null, true);
                echo " .jl-heading-bullet::before{ ";
                (($this->getAttribute(($context["particle"] ?? null), "decoration_color", [])) ? (print (twig_escape_filter($this->env, (("border-left-color:" . $this->getAttribute(($context["particle"] ?? null), "decoration_color", [])) . ";"), "html", null, true))) : (print ("")));
                (($this->getAttribute(($context["particle"] ?? null), "decoration_width", [])) ? (print (twig_escape_filter($this->env, (("border-width:" . $this->getAttribute(($context["particle"] ?? null), "decoration_width", [])) . "px;"), "html", null, true))) : (print ("")));
                echo " }";
            } elseif (($this->getAttribute(($context["particle"] ?? null), "decoration", []) == "line")) {
                echo twig_escape_filter($this->env, ($context["idclass"] ?? null), "html", null, true);
                echo " .jl-heading-line>::after,";
                echo twig_escape_filter($this->env, ($context["idclass"] ?? null), "html", null, true);
                echo " .jl-heading-line>::before{ ";
                (($this->getAttribute(($context["particle"] ?? null), "decoration_color", [])) ? (print (twig_escape_filter($this->env, (("border-bottom-color:" . $this->getAttribute(($context["particle"] ?? null), "decoration_color", [])) . ";"), "html", null, true))) : (print ("")));
                (($this->getAttribute(($context["particle"] ?? null), "decoration_width", [])) ? (print (twig_escape_filter($this->env, (("border-width:" . $this->getAttribute(($context["particle"] ?? null), "decoration_width", [])) . "px;"), "html", null, true))) : (print ("")));
                echo " }";
            }
            // line 12
            if ((($this->getAttribute(($context["particle"] ?? null), "parallax_image", []) && ($this->getAttribute(($context["particle"] ?? null), "container_maxwidth", []) == "custom")) &&  !twig_test_empty($this->getAttribute(($context["particle"] ?? null), "bg_container_width", [])))) {
                echo twig_escape_filter($this->env, ($context["idclass"] ?? null), "html", null, true);
                echo "-particle .g-container{max-width:";
                echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "bg_container_width", []));
                echo ";} ";
            }
            // line 13
            echo "</style>
";
        }
    }

    // line 17
    public function block_javascript($context, array $blocks = [])
    {
        // line 18
        if ((($this->getAttribute(($context["particle"] ?? null), "animation", []) == "parallax") || ($this->getAttribute(($context["particle"] ?? null), "bg_image_effect", []) == "parallax"))) {
            // line 19
            echo "    <script src=\"";
            echo twig_escape_filter($this->env, $this->env->getExtension('Gantry\Component\Twig\TwigExtension')->urlFunc("gantry-theme://js/jlcomponents/parallax.min.js"), "html", null, true);
            echo "\"></script>
";
        }
    }

    // line 52
    public function block_particle($context, array $blocks = [])
    {
        // line 53
        if ($this->getAttribute(($context["particle"] ?? null), "enabled", [])) {
            // line 54
            echo $context["Macros"]->getparallax_open(($context["particle"] ?? null), ($context["id"] ?? null));
            echo "
";
            // line 55
            echo $context["Macros"]->getparticle_title_style(($context["particle"] ?? null), ($context["id"] ?? null));
            echo "
<div class=\"";
            // line 56
            echo twig_escape_filter($this->env, ($context["particle_classes"] ?? null), "html", null, true);
            echo "\"";
            echo $context["Macros"]->getanimation_render(($context["particle"] ?? null), false);
            echo ($context["attr_extra"] ?? null);
            echo ">";
            // line 57
            if ($this->getAttribute(($context["particle"] ?? null), "title", [])) {
                // line 58
                echo "        <";
                echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "titletag", []));
                echo " class=\"tm-title jl-margin-remove-bottom";
                echo twig_escape_filter($this->env, ($context["title_text_transform"] ?? null), "html", null, true);
                echo twig_escape_filter($this->env, ($context["title_font_weight"] ?? null), "html", null, true);
                echo twig_escape_filter($this->env, ($context["heading_color"] ?? null), "html", null, true);
                echo twig_escape_filter($this->env, ($context["decoration_class"] ?? null), "html", null, true);
                echo twig_escape_filter($this->env, ($context["style_class"] ?? null), "html", null, true);
                echo "\">";
                // line 59
                if ($this->getAttribute(($context["particle"] ?? null), "title_link", [])) {
                    // line 60
                    echo "                <a target=\"";
                    echo twig_escape_filter($this->env, (($this->getAttribute(($context["particle"] ?? null), "title_link_target", [], "any", true, true)) ? (_twig_default_filter($this->getAttribute(($context["particle"] ?? null), "title_link_target", []), "_self")) : ("_self")), "html", null, true);
                    echo "\" href=\"";
                    echo twig_escape_filter($this->env, $this->env->getExtension('Gantry\Component\Twig\TwigExtension')->urlFunc($this->getAttribute(($context["particle"] ?? null), "title_link", [])), "html", null, true);
                    echo "\" class=\"";
                    echo (($this->getAttribute(($context["particle"] ?? null), "link_hover", [])) ? ("jl-link-heading") : ("jl-link-reset"));
                    echo "\"";
                    echo twig_escape_filter($this->env, ($context["linkscroll"] ?? null), "html", null, true);
                    echo ">
            ";
                }
                // line 63
                if (($this->getAttribute(($context["particle"] ?? null), "decoration", []) == "line")) {
                    // line 64
                    echo "                <span>";
                    echo $this->getAttribute(($context["particle"] ?? null), "title", []);
                    echo "</span>";
                } else {
                    // line 66
                    echo $this->getAttribute(($context["particle"] ?? null), "title", []);
                    echo "
            ";
                }
                // line 69
                if ($this->getAttribute(($context["particle"] ?? null), "title_link", [])) {
                    // line 70
                    echo "                </a>
            ";
                }
                // line 72
                echo "</";
                echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "titletag", []));
                echo ">
    ";
            }
            // line 74
            if ($this->getAttribute(($context["particle"] ?? null), "subtitle", [])) {
                // line 75
                echo "        <div class=\"tm-description";
                echo twig_escape_filter($this->env, ($context["content_text_transform"] ?? null), "html", null, true);
                echo twig_escape_filter($this->env, ($context["meta_font_weight"] ?? null), "html", null, true);
                echo twig_escape_filter($this->env, ($context["des_dropcap"] ?? null), "html", null, true);
                echo twig_escape_filter($this->env, ($context["description_style"] ?? null), "html", null, true);
                echo twig_escape_filter($this->env, ($context["margin_top"] ?? null), "html", null, true);
                echo twig_escape_filter($this->env, ($context["description_color"] ?? null), "html", null, true);
                echo "\">
            ";
                // line 76
                echo $this->getAttribute(($context["particle"] ?? null), "subtitle", []);
                echo "
        </div>
    ";
            }
            // line 79
            echo "</div>";
            // line 80
            echo $context["Macros"]->getparallax_close(($context["particle"] ?? null));
            echo "
";
        }
    }

    public function getTemplateName()
    {
        return "@particles/jlheading.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  252 => 80,  250 => 79,  244 => 76,  234 => 75,  232 => 74,  226 => 72,  222 => 70,  220 => 69,  215 => 66,  210 => 64,  208 => 63,  196 => 60,  194 => 59,  184 => 58,  182 => 57,  176 => 56,  172 => 55,  168 => 54,  166 => 53,  163 => 52,  155 => 19,  153 => 18,  150 => 17,  144 => 13,  137 => 12,  115 => 11,  107 => 10,  99 => 9,  90 => 8,  88 => 7,  86 => 6,  84 => 5,  81 => 4,  76 => 1,  74 => 50,  72 => 48,  71 => 47,  70 => 46,  69 => 45,  68 => 44,  67 => 43,  66 => 42,  65 => 41,  64 => 40,  63 => 39,  61 => 37,  59 => 36,  57 => 35,  55 => 34,  53 => 33,  51 => 32,  49 => 30,  47 => 29,  45 => 28,  43 => 27,  41 => 26,  39 => 23,  37 => 2,  31 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Source("", "@particles/jlheading.html.twig", "D:\\Apache24\\htdocs\\Spice_Bites\\templates\\jl_redchili\\particles\\jlheading.html.twig");
    }
}
