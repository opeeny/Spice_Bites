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

/* @particles/jlimage.html.twig */
class __TwigTemplate_35e4a494826256f74e0b3a5ff86e560474b8e517175c7a725448bcb3ead2a757 extends \Twig\Template
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
        $context["Macros"] = $this->loadTemplate("@particles/macros_helper.html.twig", "@particles/jlimage.html.twig", 2)->unwrap();
        // line 17
        $context["linkscroll"] = (((preg_match("/#/", twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "link", []))) && ($this->getAttribute(($context["particle"] ?? null), "target", []) == "_self"))) ? (" jl-scroll") : (""));
        // line 18
        $context["image_viewport_height"] = (($this->getAttribute(($context["particle"] ?? null), "image_viewport_height", [])) ? (" jl-object-cover") : (""));
        // line 21
        $context["image_dimensions"] = ((($this->getAttribute(($context["particle"] ?? null), "image_width", [])) ? (((" width=\"" . $this->getAttribute(($context["particle"] ?? null), "image_width", [])) . "\"")) : ("")) . (($this->getAttribute(($context["particle"] ?? null), "image_height", [])) ? (((" height=\"" . $this->getAttribute(($context["particle"] ?? null), "image_height", [])) . "\"")) : ("")));
        // line 22
        $context["image_size"] = (((twig_test_empty($this->getAttribute(($context["particle"] ?? null), "image_width", [])) && twig_test_empty($this->getAttribute(($context["particle"] ?? null), "image_height", [])))) ? ((" " . $this->env->getExtension('Gantry\Component\Twig\TwigExtension')->imageSize($this->getAttribute(($context["particle"] ?? null), "image", [])))) : (""));
        // line 23
        $context["image_loading"] = (( !$this->getAttribute(($context["particle"] ?? null), "image_loading", [])) ? (" loading=\"lazy\"") : (""));
        // line 25
        $context["has_link_or_popup"] = ($this->getAttribute(($context["particle"] ?? null), "link", []) || $this->getAttribute(($context["particle"] ?? null), "image_popup", []));
        // line 26
        $context["image_transition"] = ((($this->getAttribute(($context["particle"] ?? null), "image_transition", []) && ($context["has_link_or_popup"] ?? null))) ? (((" jl-transition-" . twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "image_transition", []))) . " jl-transition-opaque")) : (""));
        // line 27
        $context["image_border_cls"] = ((($this->getAttribute(($context["particle"] ?? null), "border", []) != "none")) ? ((" jl-border-" . twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "border", [])))) : (""));
        // line 28
        $context["img_boxshadow"] = ((($this->getAttribute(($context["particle"] ?? null), "box_shadow", []) != "none")) ? ((" jl-box-shadow-" . twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "box_shadow", [])))) : (""));
        // line 29
        $context["img_boxshadow_hover"] = (((($this->getAttribute(($context["particle"] ?? null), "box_shadow_hover", []) != "none") && $this->getAttribute(($context["particle"] ?? null), "link", []))) ? ((" jl-box-shadow-hover-" . twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "box_shadow_hover", [])))) : (""));
        // line 30
        $context["link_transition"] = ((($this->getAttribute(($context["particle"] ?? null), "link", []) && $this->getAttribute(($context["particle"] ?? null), "image_transition", []))) ? (" jl-inline-clip jl-transition-toggle") : (""));
        // line 32
        $context["particle_classes"] = twig_trim_filter(twig_join_filter(twig_array_filter($this->env, [0 =>         // line 33
($context["id"] ?? null), 1 => ((((twig_test_empty($this->getAttribute(        // line 34
($context["particle"] ?? null), "link", [])) && twig_test_empty($this->getAttribute(($context["particle"] ?? null), "image_popup", []))) && $this->getAttribute(($context["particle"] ?? null), "extra_shadow", []))) ? ("jl-box-shadow-bottom") : ("")), 2 => ((($this->getAttribute(        // line 37
($context["particle"] ?? null), "g_maxwidth", []) != "inherit")) ? (((("jl-width-" . $this->getAttribute(($context["particle"] ?? null), "g_maxwidth", [])) . ((($this->getAttribute(($context["particle"] ?? null), "g_maxwidth_breakpoint", []) != "always")) ? (("@" . $this->getAttribute(($context["particle"] ?? null), "g_maxwidth_breakpoint", []))) : (""))) . ((($this->getAttribute(($context["particle"] ?? null), "g_maxwidth_alignment", []) == "center")) ? (" jl-margin-auto") : (((($this->getAttribute(($context["particle"] ?? null), "g_maxwidth_alignment", []) == "right")) ? (" jl-margin-auto-left") : ("")))))) : ("")), 3 => ((($this->getAttribute(        // line 38
($context["particle"] ?? null), "align", []) != "inherit")) ? ((("jl-text-" . $this->getAttribute(($context["particle"] ?? null), "align", [])) . ((($this->getAttribute(($context["particle"] ?? null), "breakpoint", []) != "always")) ? ((("@" . $this->getAttribute(($context["particle"] ?? null), "breakpoint", [])) . ((($this->getAttribute(($context["particle"] ?? null), "fallback", []) != "inherit")) ? ((" jl-text-" . $this->getAttribute(($context["particle"] ?? null), "fallback", []))) : ("")))) : ("")))) : ("")), 4 => (((($this->getAttribute(        // line 39
($context["particle"] ?? null), "animation", []) == "parallax") && $this->getAttribute(($context["particle"] ?? null), "pa_z_index", []))) ? ("jl-position-z-index jl-position-relative") : ("")), 5 => (((($this->getAttribute(        // line 40
($context["particle"] ?? null), "animation", []) == "parallax") && ($this->getAttribute(($context["particle"] ?? null), "parallax_transform_origin", []) != "center-center"))) ? (("jl-transform-origin-" . $this->getAttribute(($context["particle"] ?? null), "parallax_transform_origin", []))) : ("")), 6 => ((($this->getAttribute(        // line 41
($context["particle"] ?? null), "margin", []) != "inherit")) ? (((($this->getAttribute(($context["particle"] ?? null), "margin", []) != "default")) ? (("jl-margin-" . $this->getAttribute(($context["particle"] ?? null), "margin", []))) : ("jl-margin"))) : ("")), 7 => ((($this->getAttribute(        // line 42
($context["particle"] ?? null), "visibility", []) != "inherit")) ? (((twig_in_filter($this->getAttribute(($context["particle"] ?? null), "visibility", []), [0 => "s", 1 => "m", 2 => "l", 3 => "xl"])) ? (("jl-visible@" . $this->getAttribute(($context["particle"] ?? null), "visibility", []))) : (("jl-" . twig_replace_filter($this->getAttribute(($context["particle"] ?? null), "visibility", []), ["-" => "@"]))))) : ("")), 8 => (($this->getAttribute(        // line 43
($context["particle"] ?? null), "class", [], "any", true, true)) ? (_twig_default_filter($this->getAttribute(($context["particle"] ?? null), "class", []), "")) : (""))],         // line 44
function ($__v__) use ($context) { $context["v"] = $__v__; return ($context["v"] ?? null); }), " "));
        // line 46
        $context["attr_extra"] = $this->env->getExtension('Gantry\Component\Twig\TwigExtension')->attributeArrayFilter($this->getAttribute(($context["particle"] ?? null), "extra", []));
        // line 1
        $this->parent = $this->loadTemplate("@nucleus/partials/particle.html.twig", "@particles/jlimage.html.twig", 1);
        $this->parent->display($context, array_merge($this->blocks, $blocks));
    }

    // line 4
    public function block_stylesheets($context, array $blocks = [])
    {
        // line 5
        if ((($this->getAttribute(($context["particle"] ?? null), "particle_title_color", []) || $this->getAttribute(($context["particle"] ?? null), "particle_title_fontsize", [])) || (($this->getAttribute(($context["particle"] ?? null), "parallax_image", []) && ($this->getAttribute(($context["particle"] ?? null), "container_maxwidth", []) == "custom")) &&  !twig_test_empty($this->getAttribute(($context["particle"] ?? null), "bg_container_width", []))))) {
            // line 6
            echo "<style>";
            if (($this->getAttribute(($context["particle"] ?? null), "particle_title_color", []) || $this->getAttribute(($context["particle"] ?? null), "particle_title_fontsize", []))) {
                echo "#el-";
                echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
                echo ".g5-title{ ";
                if ($this->getAttribute(($context["particle"] ?? null), "particle_title_color", [])) {
                    echo "color:";
                    echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "particle_title_color", []), "html", null, true);
                    echo ";";
                }
                if ($this->getAttribute(($context["particle"] ?? null), "particle_title_fontsize", [])) {
                    echo "font-size:";
                    echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "particle_title_fontsize", []), "html", null, true);
                    echo "px;";
                }
                echo " }";
            }
            if ((($this->getAttribute(($context["particle"] ?? null), "parallax_image", []) && ($this->getAttribute(($context["particle"] ?? null), "container_maxwidth", []) == "custom")) &&  !twig_test_empty($this->getAttribute(($context["particle"] ?? null), "bg_container_width", [])))) {
                echo "#";
                echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
                echo "-particle .g-container{max-width:";
                echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "bg_container_width", []));
                echo ";} ";
            }
            echo "</style>
";
        }
    }

    // line 10
    public function block_javascript($context, array $blocks = [])
    {
        // line 11
        if ((($this->getAttribute(($context["particle"] ?? null), "animation", []) == "parallax") || ($this->getAttribute(($context["particle"] ?? null), "bg_image_effect", []) == "parallax"))) {
            // line 12
            echo "    <script src=\"";
            echo twig_escape_filter($this->env, $this->env->getExtension('Gantry\Component\Twig\TwigExtension')->urlFunc("gantry-theme://js/jlcomponents/parallax.min.js"), "html", null, true);
            echo "\"></script>
";
        }
    }

    // line 48
    public function block_particle($context, array $blocks = [])
    {
        // line 49
        if ($this->getAttribute(($context["particle"] ?? null), "enabled", [])) {
            // line 50
            echo $context["Macros"]->getparallax_open(($context["particle"] ?? null), ($context["id"] ?? null));
            echo "
";
            // line 51
            echo $context["Macros"]->getparticle_title_style(($context["particle"] ?? null), ($context["id"] ?? null));
            echo "
<div id=\"";
            // line 52
            echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
            echo "\" class=\"";
            echo twig_escape_filter($this->env, ($context["particle_classes"] ?? null), "html", null, true);
            echo "\"";
            echo $context["Macros"]->getanimation_render(($context["particle"] ?? null));
            echo ($context["attr_extra"] ?? null);
            echo ">
  
  ";
            // line 54
            if (($this->getAttribute(($context["particle"] ?? null), "link", []) || ($this->getAttribute(($context["particle"] ?? null), "target", []) == "modal"))) {
                // line 55
                echo "    <a class=\"tm-link";
                echo (($this->getAttribute(($context["particle"] ?? null), "extra_shadow", [])) ? (" jl-box-shadow-bottom") : (""));
                echo twig_escape_filter($this->env, (((($context["image_border_cls"] ?? null) . ($context["img_boxshadow"] ?? null)) . ($context["img_boxshadow_hover"] ?? null)) . ($context["link_transition"] ?? null)), "html", null, true);
                echo "\"";
                if (($this->getAttribute(($context["particle"] ?? null), "target", []) == "modal")) {
                    echo " href=\"#";
                    echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
                    echo "\" jl-toggle";
                } else {
                    echo " href=\"";
                    echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "link", []));
                    echo "\" target=\"";
                    echo twig_escape_filter($this->env, (($this->getAttribute(($context["particle"] ?? null), "target", [], "any", true, true)) ? (_twig_default_filter($this->getAttribute(($context["particle"] ?? null), "target", []), "_self")) : ("_self")));
                    echo "\"";
                    echo twig_escape_filter($this->env, ($context["linkscroll"] ?? null), "html", null, true);
                }
                if ($this->getAttribute(($context["particle"] ?? null), "link_aria_label", [])) {
                    echo " aria-label=\"";
                    echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "link_aria_label", []));
                    echo "\"";
                }
                echo ">
  ";
            }
            // line 57
            echo "
  <img src=\"";
            // line 58
            echo twig_escape_filter($this->env, $this->env->getExtension('Gantry\Component\Twig\TwigExtension')->urlFunc($this->getAttribute(($context["particle"] ?? null), "image", [])));
            echo "\"";
            echo ($context["image_dimensions"] ?? null);
            echo ($context["image_size"] ?? null);
            echo " alt=\"";
            echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "image_alt", []));
            echo "\" class=\"tm-image";
            echo twig_escape_filter($this->env, (($context["image_transition"] ?? null) . ($context["image_viewport_height"] ?? null)), "html", null, true);
            if (twig_test_empty($this->getAttribute(($context["particle"] ?? null), "link", []))) {
                echo twig_escape_filter($this->env, ((($context["image_border_cls"] ?? null) . ($context["img_boxshadow"] ?? null)) . ($context["img_boxshadow_hover"] ?? null)), "html", null, true);
            }
            echo "\"";
            echo (($this->getAttribute(($context["particle"] ?? null), "image_viewport_height", [])) ? (" style=\"height: 100vh\"") : (""));
            echo ($context["image_loading"] ?? null);
            echo ">

  ";
            // line 60
            if (($this->getAttribute(($context["particle"] ?? null), "link", []) || ($this->getAttribute(($context["particle"] ?? null), "target", []) == "modal"))) {
                // line 61
                echo "    </a>
  ";
            }
            // line 63
            echo "
  ";
            // line 64
            if (($this->getAttribute(($context["particle"] ?? null), "target", []) == "modal")) {
                // line 65
                echo "  <div id=\"";
                echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
                echo "\" class=\"jl-flex-top jl-modal\" jl-modal>
    <div class=\"jl-modal-dialog";
                // line 66
                if (($this->getAttribute(($context["particle"] ?? null), "md_title", []) || $this->getAttribute(($context["particle"] ?? null), "md_content", []))) {
                    echo " jl-modal-body";
                }
                if ($this->getAttribute(($context["particle"] ?? null), "center_modal", [])) {
                    echo " jl-margin-auto-vertical";
                }
                echo "\">
    <button class=\"jl-modal-close-";
                // line 67
                echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "close_button", []), "html", null, true);
                echo "\" type=\"button\" jl-close></button>
      ";
                // line 68
                if (($this->getAttribute(($context["particle"] ?? null), "md_title", []) || $this->getAttribute(($context["particle"] ?? null), "md_content", []))) {
                    // line 69
                    echo "\t\t\t";
                    if ($this->getAttribute(($context["particle"] ?? null), "md_title", [])) {
                        // line 70
                        echo "\t\t\t<";
                        echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "title_element", []));
                        echo " class=\"jl-modal-title";
                        if (($this->getAttribute(($context["particle"] ?? null), "title_color", []) != "default")) {
                            echo " jl-text-";
                            echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "title_color", []));
                        }
                        if (($this->getAttribute(($context["particle"] ?? null), "title_style", []) != "default")) {
                            echo " jl-";
                            echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "title_style", []));
                        }
                        if (($this->getAttribute(($context["particle"] ?? null), "title_decoration", []) != "none")) {
                            echo " jl-heading-";
                            echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "title_decoration", []));
                        }
                        echo "\">
\t\t\t";
                        // line 71
                        if (($this->getAttribute(($context["particle"] ?? null), "title_decoration", []) == "line")) {
                            echo " <span>";
                            echo $this->getAttribute(($context["particle"] ?? null), "md_title", []);
                            echo "</span>
\t\t\t";
                        } else {
                            // line 73
                            echo "\t\t\t";
                            echo $this->getAttribute(($context["particle"] ?? null), "md_title", []);
                            echo "
\t\t\t";
                        }
                        // line 75
                        echo "\t\t\t</";
                        echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "title_element", []));
                        echo ">
\t\t\t";
                    }
                    // line 77
                    echo "\t\t\t<div class=\"jl-margin-";
                    ((($this->getAttribute(($context["particle"] ?? null), "content_margin_top", []) == "default")) ? (print ("top")) : (print (twig_escape_filter($this->env, (twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "content_margin_top", [])) . "-top"), "html", null, true))));
                    if (($this->getAttribute(($context["particle"] ?? null), "content_style", []) != "default")) {
                        echo " jl-text-";
                        echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "content_style", []));
                    }
                    echo "\">
        ";
                    // line 78
                    $context["md_content"] = (($this->getAttribute(($context["particle"] ?? null), "twig", [])) ? ($this->getAttribute($this->getAttribute(($context["gantry"] ?? null), "theme", []), "compile", [0 => $this->getAttribute(($context["particle"] ?? null), "md_content", [])], "method")) : ($this->getAttribute(($context["particle"] ?? null), "md_content", [])));
                    // line 79
                    echo "        ";
                    echo $this->env->getExtension('Gantry\Component\Twig\TwigExtension')->htmlFilter((($this->getAttribute(($context["particle"] ?? null), "filter", [])) ? ($this->getAttribute($this->getAttribute(($context["gantry"] ?? null), "platform", []), "filter", [0 => ($context["md_content"] ?? null)], "method")) : (($context["md_content"] ?? null))));
                    echo "
\t\t\t</div>
      ";
                } else {
                    // line 82
                    echo "      <img src=\"";
                    echo twig_escape_filter($this->env, $this->env->getExtension('Gantry\Component\Twig\TwigExtension')->urlFunc($this->getAttribute(($context["particle"] ?? null), "image", [])));
                    echo "\"";
                    echo ($context["image_size"] ?? null);
                    echo " class=\"tm-image\" alt=\"";
                    echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "image_alt", []));
                    echo "\">
  ";
                }
                // line 84
                echo "    </div>
    </div>
  ";
            }
            // line 87
            echo "
</div>";
            // line 89
            echo $context["Macros"]->getparallax_close(($context["particle"] ?? null));
            echo "
";
        }
    }

    public function getTemplateName()
    {
        return "@particles/jlimage.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  306 => 89,  303 => 87,  298 => 84,  288 => 82,  281 => 79,  279 => 78,  270 => 77,  264 => 75,  258 => 73,  251 => 71,  233 => 70,  230 => 69,  228 => 68,  224 => 67,  215 => 66,  210 => 65,  208 => 64,  205 => 63,  201 => 61,  199 => 60,  181 => 58,  178 => 57,  153 => 55,  151 => 54,  141 => 52,  137 => 51,  133 => 50,  131 => 49,  128 => 48,  120 => 12,  118 => 11,  115 => 10,  85 => 6,  83 => 5,  80 => 4,  75 => 1,  73 => 46,  71 => 44,  70 => 43,  69 => 42,  68 => 41,  67 => 40,  66 => 39,  65 => 38,  64 => 37,  63 => 34,  62 => 33,  61 => 32,  59 => 30,  57 => 29,  55 => 28,  53 => 27,  51 => 26,  49 => 25,  47 => 23,  45 => 22,  43 => 21,  41 => 18,  39 => 17,  37 => 2,  31 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Source("", "@particles/jlimage.html.twig", "D:\\Apache24\\htdocs\\Spice_Bites\\templates\\jl_redchili\\particles\\jlimage.html.twig");
    }
}
