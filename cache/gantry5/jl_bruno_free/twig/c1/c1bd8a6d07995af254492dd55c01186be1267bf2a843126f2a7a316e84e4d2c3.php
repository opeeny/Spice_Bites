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

/* @nucleus/layout/section.html.twig */
class __TwigTemplate_f5f0715d42025f12127e4725db66a73fd35af6e80947e471ab99c7e842c1c251 extends \Twig\Template
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
        // line 1
        $context["tag_type"] = (($this->getAttribute(($context["segment"] ?? null), "subtype", [], "any", true, true)) ? (_twig_default_filter($this->getAttribute(($context["segment"] ?? null), "subtype", []), "section")) : ("section"));
        // line 2
        $context["attr_id"] = (($this->getAttribute($this->getAttribute(($context["segment"] ?? null), "attributes", []), "id", [])) ? ($this->getAttribute($this->getAttribute(($context["segment"] ?? null), "attributes", []), "id", [])) : (("g-" . $this->getAttribute(($context["segment"] ?? null), "id", []))));
        // line 3
        $context["attr_class"] = ($this->getAttribute($this->getAttribute(($context["segment"] ?? null), "attributes", []), "class", []) . (($this->getAttribute($this->getAttribute(        // line 4
($context["segment"] ?? null), "attributes", []), "variations", [])) ? ((" " . twig_join_filter($this->getAttribute($this->getAttribute(($context["segment"] ?? null), "attributes", []), "variations", []), " "))) : ("")));
        // line 5
        echo "

";
        // line 7
        $context["attr_background"] = $this->getAttribute($this->getAttribute(($context["segment"] ?? null), "attributes", []), "background", []);
        // line 8
        $context["attr_background_position"] = $this->getAttribute($this->getAttribute(($context["segment"] ?? null), "attributes", []), "background_position", []);
        // line 9
        $context["attr_background_image_size"] = $this->getAttribute($this->getAttribute(($context["segment"] ?? null), "attributes", []), "background_image_size", []);
        // line 10
        $context["attr_background_image_visibility"] = $this->getAttribute($this->getAttribute(($context["segment"] ?? null), "attributes", []), "background_image_visibility", []);
        // line 11
        $context["attr_background_color"] = $this->getAttribute($this->getAttribute(($context["segment"] ?? null), "attributes", []), "background_color", []);
        // line 12
        $context["attr_background_blendmode"] = $this->getAttribute($this->getAttribute(($context["segment"] ?? null), "attributes", []), "background_blendmode", []);
        // line 13
        $context["attr_background_effect"] = $this->getAttribute($this->getAttribute(($context["segment"] ?? null), "attributes", []), "background_effect", []);
        // line 14
        $context["attr_horizontal_start"] = $this->getAttribute($this->getAttribute(($context["segment"] ?? null), "attributes", []), "horizontal_start", []);
        // line 15
        $context["attr_horizontal_end"] = $this->getAttribute($this->getAttribute(($context["segment"] ?? null), "attributes", []), "horizontal_end", []);
        // line 16
        $context["attr_vertical_start"] = $this->getAttribute($this->getAttribute(($context["segment"] ?? null), "attributes", []), "vertical_start", []);
        // line 17
        $context["attr_vertical_end"] = $this->getAttribute($this->getAttribute(($context["segment"] ?? null), "attributes", []), "vertical_end", []);
        // line 18
        $context["attr_parallax_bg_breakpoint"] = $this->getAttribute($this->getAttribute(($context["segment"] ?? null), "attributes", []), "parallax_bg_breakpoint", []);
        // line 19
        echo "
";
        // line 20
        $context["attr_background_overlay"] = $this->getAttribute($this->getAttribute(($context["segment"] ?? null), "attributes", []), "background_overlay", []);
        // line 21
        echo "
";
        // line 23
        ob_start(function () { return ''; });
        // line 24
        if ((((($context["attr_horizontal_start"] ?? null) || ($context["attr_horizontal_end"] ?? null)) || ($context["attr_vertical_start"] ?? null)) || ($context["attr_vertical_end"] ?? null))) {
            echo " jl-parallax=\"";
            if ((($context["attr_horizontal_start"] ?? null) || ($context["attr_horizontal_end"] ?? null))) {
                echo "bgx: ";
                echo twig_escape_filter($this->env, ($context["attr_horizontal_start"] ?? null));
                echo ",";
                echo twig_escape_filter($this->env, ($context["attr_horizontal_end"] ?? null));
                echo ";";
            }
            if ((($context["attr_vertical_start"] ?? null) || ($context["attr_vertical_end"] ?? null))) {
                echo "bgy: ";
                echo twig_escape_filter($this->env, ($context["attr_vertical_start"] ?? null));
                echo ",";
                echo twig_escape_filter($this->env, ($context["attr_vertical_end"] ?? null));
                echo ";";
            }
            if ((($context["attr_parallax_bg_breakpoint"] ?? null) != "always")) {
                echo " media: @";
                echo twig_escape_filter($this->env, ($context["attr_parallax_bg_breakpoint"] ?? null));
            }
            echo "\"";
        }
        $context["section_parallax_background"] = ('' === $tmp = ob_get_clean()) ? '' : new Markup($tmp, $this->env->getCharset());
        // line 26
        echo "

";
        // line 29
        ob_start(function () { return ''; });
        // line 30
        if (($context["attr_background_color"] ?? null)) {
            echo " style=\"background-color: ";
            echo twig_escape_filter($this->env, ($context["attr_background_color"] ?? null), "html", null, true);
            echo ";\"";
        }
        $context["background_color"] = ('' === $tmp = ob_get_clean()) ? '' : new Markup($tmp, $this->env->getCharset());
        // line 32
        echo "
";
        // line 33
        $context["attr_extra"] = $this->env->getExtension('Gantry\Component\Twig\TwigExtension')->attributeArrayFilter($this->getAttribute($this->getAttribute(($context["segment"] ?? null), "attributes", []), "extra", []));
        // line 34
        $context["boxed"] = $this->getAttribute($this->getAttribute(($context["segment"] ?? null), "attributes", []), "boxed", []);
        // line 35
        if ( !(null === ($context["boxed"] ?? null))) {
            // line 36
            $context["boxed"] = (((twig_trim_filter(($context["boxed"] ?? null)) == "")) ? ($this->getAttribute($this->getAttribute($this->getAttribute($this->getAttribute($this->getAttribute(($context["gantry"] ?? null), "config", []), "page", []), "body", []), "layout", []), "sections", [])) : (($context["boxed"] ?? null)));
        }
        // line 39
        ob_start(function () { return ''; });
        // line 40
        if ($this->getAttribute(($context["segment"] ?? null), "children", [])) {
            // line 41
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["segments"] ?? null));
            $context['loop'] = [
              'parent' => $context['_parent'],
              'index0' => 0,
              'index'  => 1,
              'first'  => true,
            ];
            if (is_array($context['_seq']) || (is_object($context['_seq']) && $context['_seq'] instanceof \Countable)) {
                $length = count($context['_seq']);
                $context['loop']['revindex0'] = $length - 1;
                $context['loop']['revindex'] = $length;
                $context['loop']['length'] = $length;
                $context['loop']['last'] = 1 === $length;
            }
            foreach ($context['_seq'] as $context["_key"] => $context["segment"]) {
                // line 42
                $this->loadTemplate((("@nucleus/layout/" . $this->getAttribute($context["segment"], "type", [])) . ".html.twig"), "@nucleus/layout/section.html.twig", 42)->display(twig_array_merge($context, ["segments" => $this->getAttribute($context["segment"], "children", [])]));
                ++$context['loop']['index0'];
                ++$context['loop']['index'];
                $context['loop']['first'] = false;
                if (isset($context['loop']['length'])) {
                    --$context['loop']['revindex0'];
                    --$context['loop']['revindex'];
                    $context['loop']['last'] = 0 === $context['loop']['revindex0'];
                }
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['segment'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
        }
        $context["html"] = ('' === $tmp = ob_get_clean()) ? '' : new Markup($tmp, $this->env->getCharset());
        // line 47
        if (($this->getAttribute($this->getAttribute(($context["segment"] ?? null), "attributes", []), "sticky", []) || twig_trim_filter(($context["html"] ?? null)))) {
            // line 48
            if (( !(null === ($context["boxed"] ?? null)) && ((($context["boxed"] ?? null) == 0) || (($context["boxed"] ?? null) == 2)))) {
                // line 49
                ob_start(function () { return ''; });
                // line 50
                if (($context["attr_background_overlay"] ?? null)) {
                    echo "<div class=\"g-container jl-position-relative\">";
                    echo ($context["html"] ?? null);
                    echo "</div>";
                } else {
                    echo "<div class=\"g-container\">";
                    echo ($context["html"] ?? null);
                    echo "</div>";
                }
                $context["html"] = ('' === $tmp = ob_get_clean()) ? '' : new Markup($tmp, $this->env->getCharset());
            }
            // line 53
            echo "
";
            // line 54
            ob_start(function () { return ''; });
            // line 55
            if ((($context["boxed"] ?? null) == 2)) {
                $context["attr_class"] = (($context["attr_class"] ?? null) . " g-flushed");
            }
            // line 56
            $context["attr_class_bg"] = ((($context["attr_class"] ?? null)) ? ((("" . twig_trim_filter(($context["attr_class"] ?? null))) . " ")) : (""));
            // line 57
            $context["attr_class"] = ((($context["attr_class"] ?? null)) ? (((" class=\"" . twig_trim_filter(($context["attr_class"] ?? null))) . "\"")) : (""));
            // line 60
            if (($context["attr_background"] ?? null)) {
                // line 61
                echo "<";
                echo twig_escape_filter($this->env, ($context["tag_type"] ?? null), "html", null, true);
                echo " id=\"";
                echo twig_escape_filter($this->env, ($context["attr_id"] ?? null), "html", null, true);
                echo "\" class=\"";
                if (((($context["boxed"] ?? null) == 1) || (($context["boxed"] ?? null) == 3))) {
                    echo "bg-overlay ";
                }
                if (($context["attr_background_overlay"] ?? null)) {
                    echo "jl-position-relative";
                }
                echo "\"";
                echo ($context["attr_extra"] ?? null);
                echo ">
<div class=\"";
                // line 62
                echo ($context["attr_class_bg"] ?? null);
                echo "jl-background-norepeat jl-background-";
                echo twig_escape_filter($this->env, ($context["attr_background_position"] ?? null), "html", null, true);
                if ((($context["attr_background_image_size"] ?? null) != "auto")) {
                    echo " jl-background-";
                    echo twig_escape_filter($this->env, ($context["attr_background_image_size"] ?? null));
                }
                if ((($context["attr_background_effect"] ?? null) == "fixed")) {
                    echo " jl-background-fixed";
                }
                if ((($context["attr_background_image_visibility"] ?? null) != "always")) {
                    echo " jl-background-image@";
                    echo twig_escape_filter($this->env, ($context["attr_background_image_visibility"] ?? null));
                }
                if ((($context["attr_background_blendmode"] ?? null) != "inherit")) {
                    echo " jl-background-blend-";
                    echo twig_escape_filter($this->env, ($context["attr_background_blendmode"] ?? null));
                }
                echo "\"";
                echo twig_escape_filter($this->env, ($context["background_color"] ?? null), "html", null, true);
                echo " data-src=\"";
                echo twig_escape_filter($this->env, $this->env->getExtension('Gantry\Component\Twig\TwigExtension')->urlFunc(($context["attr_background"] ?? null)), "html", null, true);
                echo "\" jl-img";
                if ((($context["attr_background_effect"] ?? null) == "parallax")) {
                    echo twig_escape_filter($this->env, ($context["section_parallax_background"] ?? null), "html", null, true);
                }
                echo ">
";
                // line 63
                if (($context["attr_background_overlay"] ?? null)) {
                    echo "<div class=\"jl-position-cover\" style=\"background-color: ";
                    echo twig_escape_filter($this->env, ($context["attr_background_overlay"] ?? null), "html", null, true);
                    echo ";\"></div>";
                }
            } else {
                // line 65
                echo "<";
                echo twig_escape_filter($this->env, ($context["tag_type"] ?? null), "html", null, true);
                echo " id=\"";
                echo twig_escape_filter($this->env, ($context["attr_id"] ?? null), "html", null, true);
                echo "\" ";
                echo ($context["attr_class"] ?? null);
                echo ($context["attr_extra"] ?? null);
                echo ">
";
            }
            // line 67
            echo "
";
            // line 68
            echo ($context["html"] ?? null);
            echo "

";
            // line 70
            if (($context["attr_background"] ?? null)) {
                echo "</div></";
                echo twig_escape_filter($this->env, ($context["tag_type"] ?? null), "html", null, true);
                echo ">
";
            } else {
                // line 72
                echo "</";
                echo twig_escape_filter($this->env, ($context["tag_type"] ?? null), "html", null, true);
                echo ">
";
            }
            $context["html"] = ('' === $tmp = ob_get_clean()) ? '' : new Markup($tmp, $this->env->getCharset());
            // line 76
            if ((($context["boxed"] ?? null) == 1)) {
                // line 77
                echo "<div class=\"g-container\">";
                echo ($context["html"] ?? null);
                echo "</div>
";
            } else {
                // line 79
                echo ($context["html"] ?? null);
                echo "
";
            }
        }
    }

    public function getTemplateName()
    {
        return "@nucleus/layout/section.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  287 => 79,  281 => 77,  279 => 76,  272 => 72,  265 => 70,  260 => 68,  257 => 67,  246 => 65,  239 => 63,  210 => 62,  194 => 61,  192 => 60,  190 => 57,  188 => 56,  184 => 55,  182 => 54,  179 => 53,  167 => 50,  165 => 49,  163 => 48,  161 => 47,  145 => 42,  128 => 41,  126 => 40,  124 => 39,  121 => 36,  119 => 35,  117 => 34,  115 => 33,  112 => 32,  105 => 30,  103 => 29,  99 => 26,  75 => 24,  73 => 23,  70 => 21,  68 => 20,  65 => 19,  63 => 18,  61 => 17,  59 => 16,  57 => 15,  55 => 14,  53 => 13,  51 => 12,  49 => 11,  47 => 10,  45 => 9,  43 => 8,  41 => 7,  37 => 5,  35 => 4,  34 => 3,  32 => 2,  30 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Source("", "@nucleus/layout/section.html.twig", "D:\\Apache24\\htdocs\\Spice_Bites\\templates\\jl_bruno_free\\common\\engine\\templates\\layout\\section.html.twig");
    }
}
