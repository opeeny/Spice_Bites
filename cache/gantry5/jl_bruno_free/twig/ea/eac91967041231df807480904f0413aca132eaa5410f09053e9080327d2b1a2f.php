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

/* @particles/jlnavbar.html.twig */
class __TwigTemplate_727a33b68187ffbf3b79f27e602bcb7ae2212afd4d81ca063b8bec75b3b298bf extends \Twig\Template
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
        try {            // line 2
            $context["menu"] = $this->getAttribute($this->getAttribute(($context["gantry"] ?? null), "menu", []), "instance", [0 => ($context["particle"] ?? null)], "method");
        } catch (\Exception $e) {
            if ($context['gantry']->debug()) throw $e;
            if (\GANTRY_DEBUGGER) \Gantry\Debugger::addException($e);
            $context['e'] = $e;
            // line 4
            echo "<div class=\"alert alert-error\">";
            echo twig_escape_filter($this->env, $this->getAttribute(($context["e"] ?? null), "getMessage", []), "html", null, true);
            echo "</div>
";
        }
        // line 7
        if ($this->getAttribute(($context["particle"] ?? null), "g5canvas", [])) {
            // line 8
            echo "    ";
            $context["section_prefix"] = (($this->getAttribute(($context["particle"] ?? null), "canvas_section", [])) ? ((twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "canvas_section", [])) . " ")) : (""));
            // line 9
            echo "    ";
            ob_start(function () { return ''; });
            echo twig_escape_filter($this->env, ($context["section_prefix"] ?? null), "html", null, true);
            echo ".g-block.hidden{display:block;visibility:visible}.g-offcanvas-open .jl-sticky{z-index:inherit}";
            echo twig_escape_filter($this->env, ($context["section_prefix"] ?? null), "html", null, true);
            echo ".g-offcanvas-toggle{position:relative;top:0;left:0;line-height:0;display:flex!important;justify-content:center;align-items:center;column-gap:.25em;box-sizing:border-box}";
            $context["mobile_menu_visibility"] = ('' === $tmp = ob_get_clean()) ? '' : new Markup($tmp, $this->env->getCharset());
            // line 10
            echo "    ";
            $this->getAttribute($this->getAttribute(($context["gantry"] ?? null), "document", []), "addInlineStyle", [0 => ($context["mobile_menu_visibility"] ?? null), 1 => 0], "method");
            // line 11
            echo "    ";
            $context["script"] = ('' === $tmp = "var el=document.getElementsByClassName(\"g-offcanvas-hide\");while(el.length>0)el[0].remove();") ? '' : new Markup($tmp, $this->env->getCharset());
            // line 12
            echo "    ";
            $this->getAttribute($this->getAttribute(($context["gantry"] ?? null), "document", []), "addInlineScript", [0 => ($context["script"] ?? null), 1 => 0, 2 => "footer"], "method");
        }
        // line 15
        $context["sec_id"] = twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "section", []));
        // line 16
        $context["layout"] = twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "layout", []));
        // line 17
        $context["is_horizontal"] = twig_in_filter(($context["layout"] ?? null), [0 => "left", 1 => "center", 2 => "right"]);
        // line 19
        $context["mobile_layout"] = twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "mobile_layout", []));
        // line 20
        echo "
";
        // line 22
        if (($this->getAttribute(($context["particle"] ?? null), "sticky", []) && $this->getAttribute(($context["particle"] ?? null), "section", []))) {
            // line 23
            echo "    ";
            ob_start(function () { return ''; });
            // line 24
            echo "        jlUIkit.sticky('";
            echo twig_escape_filter($this->env, ($context["sec_id"] ?? null), "html", null, true);
            echo "', {
        ";
            // line 25
            if (($this->getAttribute(($context["particle"] ?? null), "sticky", []) == "stickyonscroll")) {
                // line 26
                echo "        showOnUp: true,
        animation: 'jl-animation-slide-top',
        ";
            }
            // line 29
            echo "        ";
            if ($this->getAttribute(($context["particle"] ?? null), "media", [])) {
                // line 30
                echo "        media: '@";
                echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "media", []), "html", null, true);
                echo "',
        ";
            }
            // line 32
            echo "        top: '";
            echo twig_escape_filter($this->env, (($this->getAttribute(($context["particle"] ?? null), "top", [], "any", true, true)) ? (_twig_default_filter($this->getAttribute(($context["particle"] ?? null), "top", []), 0)) : (0)), "html", null, true);
            echo "',
        offset: ";
            // line 33
            echo twig_escape_filter($this->env, (($this->getAttribute(($context["particle"] ?? null), "offset", [], "any", true, true)) ? (_twig_default_filter($this->getAttribute(($context["particle"] ?? null), "offset", []), 0)) : (0)), "html", null, true);
            echo "
    } )
    ";
            $context["inline_js"] = ('' === $tmp = ob_get_clean()) ? '' : new Markup($tmp, $this->env->getCharset());
            // line 36
            echo "    ";
            $this->getAttribute($this->getAttribute(($context["gantry"] ?? null), "document", []), "addInlineScript", [0 => ($context["inline_js"] ?? null), 1 => 10, 2 => "footer"], "method");
        }
        // line 38
        echo "
";
        // line 39
        if (($this->getAttribute(($context["particle"] ?? null), "sticky", []) || $this->getAttribute(($context["particle"] ?? null), "m_sticky", []))) {
            // line 40
            echo "    ";
            $this->getAttribute($this->getAttribute(($context["gantry"] ?? null), "document", []), "addInlineStyle", [0 => "html {height: auto;}", 1 => 0], "method");
        }
        // line 42
        echo "
";
        // line 44
        $context["is_navbar_style"] = $this->getAttribute(($context["particle"] ?? null), "navbar_style", []);
        // line 45
        $context["is_secondary_nav"] = ($this->getAttribute(($context["particle"] ?? null), "dropdown_nav_style", []) == "secondary");
        // line 46
        echo "
";
        // line 47
        ob_start(function () { return ''; });
        // line 48
        if ($this->getAttribute(($context["particle"] ?? null), "search_pos", [])) {
            echo "#";
            echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
            echo " .jl-search .awesomplete{display:block;}.jl-search:has(.awesomplete) .jl-search-icon{z-index:1;}";
        }
        // line 49
        if (($this->getAttribute(($context["particle"] ?? null), "main_nav_margin", []) &&  !($context["is_navbar_style"] ?? null))) {
            echo "#";
            echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
            echo " .g-container .g-main-nav{margin:0;}";
        }
        // line 50
        if ($this->getAttribute(($context["particle"] ?? null), "transparent_header", [])) {
            echo ".jl-header-overlay{position:absolute;z-index:980;left:0;right:0;}";
        }
        // line 51
        if (($this->getAttribute(($context["particle"] ?? null), "dropdown_nav_divider", []) && $this->getAttribute(($context["particle"] ?? null), "dropdown_nav_divider_color", []))) {
            echo "#";
            echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
            echo " .jl-nav.jl-nav-divider>:not(.jl-nav-header,.jl-nav-divider)+:not(.jl-nav-header,.jl-nav-divider){border-top:1px solid ";
            echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "dropdown_nav_divider_color", []));
            echo ";}";
        }
        // line 52
        if ($this->getAttribute(($context["particle"] ?? null), "navbar_height", [])) {
            // line 53
            echo "#";
            echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
            echo " .jl-navbar-item,#";
            echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
            echo " .jl-navbar-nav>li>a,#";
            echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
            echo " .jl-navbar-nav>li>div.g-menu-item-container,#";
            echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
            echo " .jl-navbar-toggle{min-height:";
            echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "navbar_height", []));
            echo "}";
        }
        // line 55
        if (($context["is_navbar_style"] ?? null)) {
            // line 56
            if ($this->getAttribute(($context["particle"] ?? null), "navbar_color", [])) {
                echo "#";
                echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
                echo " .jl-navbar-nav>li>a{color:";
                echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "navbar_color", []), "html", null, true);
                echo ";}";
            }
            // line 57
            if ($this->getAttribute(($context["particle"] ?? null), "navbar_fontsize", [])) {
                // line 58
                echo "#";
                echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
                echo " .jl-navbar-item:not(.jl-logo),#";
                echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
                echo " .jl-navbar-nav>li>a,#";
                echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
                echo " .jl-navbar-toggle{font-size:";
                echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "navbar_fontsize", []), "html", null, true);
                echo ";}
#";
                // line 59
                echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
                echo " .jl-navbar-item .tm-icon span{font-size:initial;}";
            }
            // line 61
            if ($this->getAttribute(($context["particle"] ?? null), "navbar_text_transform", [])) {
                echo "#";
                echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
                echo " .jl-navbar-nav>li>a{text-transform:";
                echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "navbar_text_transform", []), "html", null, true);
                echo ";}";
            }
            // line 62
            if ($this->getAttribute(($context["particle"] ?? null), "navbar_hover_color", [])) {
                echo "#";
                echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
                echo " .jl-navbar-nav>li:hover>a,#";
                echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
                echo " .jl-navbar-nav>li>a.jl-open,#";
                echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
                echo " .jl-navbar-nav>li>a:focus{color:";
                echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "navbar_hover_color", []), "html", null, true);
                echo ";}";
            }
            // line 63
            if ($this->getAttribute(($context["particle"] ?? null), "navbar_active_color", [])) {
                echo "#";
                echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
                echo " .jl-navbar-nav>li>a:active,#";
                echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
                echo " .jl-navbar-nav>li.jl-active>a{color:";
                echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "navbar_active_color", []), "html", null, true);
                echo ";}";
            }
            // line 64
            if (((($this->getAttribute(($context["particle"] ?? null), "dropdown_bg", []) || $this->getAttribute(($context["particle"] ?? null), "dropdown_color", [])) || $this->getAttribute(($context["particle"] ?? null), "dropdown_border_radius", [])) || $this->getAttribute(($context["particle"] ?? null), "dropdown_padding", []))) {
                // line 65
                echo "#";
                echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
                echo " .jl-navbar-dropdown,#";
                echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
                echo " .jl-navbar-dropbar{";
                if ($this->getAttribute(($context["particle"] ?? null), "dropdown_bg", [])) {
                    echo "background:";
                    echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "dropdown_bg", []), "html", null, true);
                    echo ";";
                }
                if ($this->getAttribute(($context["particle"] ?? null), "dropdown_color", [])) {
                    echo "color:";
                    echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "dropdown_color", []), "html", null, true);
                    echo ";";
                }
                if ($this->getAttribute(($context["particle"] ?? null), "dropdown_border_radius", [])) {
                    echo "border-radius:";
                    echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "dropdown_border_radius", []), "html", null, true);
                    echo ";";
                }
                if ($this->getAttribute(($context["particle"] ?? null), "dropdown_padding", [])) {
                    echo "padding:";
                    echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "dropdown_padding", []), "html", null, true);
                    echo ";";
                }
                echo "}";
            }
            // line 67
            if (($this->getAttribute(($context["particle"] ?? null), "dropbar", []) && $this->getAttribute(($context["particle"] ?? null), "dropdown_bg", []))) {
                echo "#";
                echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
                echo " .jl-navbar-dropbar{background:";
                echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "dropdown_bg", []), "html", null, true);
                echo ";}";
            }
            // line 68
            if ($this->getAttribute(($context["particle"] ?? null), "dropdown_nav_padding", [])) {
                echo "#";
                echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
                echo " .jl-nav>li>a{padding:";
                echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "dropdown_nav_padding", []));
                echo ";}";
            }
            // line 69
            if ($this->getAttribute(($context["particle"] ?? null), "dropdown_nav_color", [])) {
                echo "#";
                echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
                echo " .jl-navbar-dropdown-nav>li>a{";
                if ($this->getAttribute(($context["particle"] ?? null), "dropdown_nav_color", [])) {
                    echo "color:";
                    echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "dropdown_nav_color", []));
                    echo ";";
                }
                echo "}";
            }
            // line 70
            if ($this->getAttribute(($context["particle"] ?? null), "dropdown_navbar_fontsize", [])) {
                echo "#";
                echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
                echo " .jl-navbar-dropdown-nav>li>a{font-size:";
                echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "dropdown_navbar_fontsize", []), "html", null, true);
                echo ";}";
            }
            // line 71
            if ($this->getAttribute(($context["particle"] ?? null), "dropdown_navbar_hover_color", [])) {
                echo "#";
                echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
                echo " .jl-navbar-dropdown-nav>li>a:focus,#";
                echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
                echo " .jl-navbar-dropdown-nav>li>a:hover{color:";
                echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "dropdown_navbar_hover_color", []));
                echo ";}";
            }
            // line 72
            if ($this->getAttribute(($context["particle"] ?? null), "dropdown_navbar_active_color", [])) {
                echo "#";
                echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
                echo " .jl-navbar-dropdown-nav>li.jl-active>a{color:";
                echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "dropdown_navbar_active_color", []));
                echo ";}";
            }
            // line 73
            if (($context["is_secondary_nav"] ?? null)) {
                echo "#";
                echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
                echo " .jl-nav-secondary .jl-nav-header{padding-left:10px;}";
            }
            // line 74
            if ((($context["is_secondary_nav"] ?? null) && $this->getAttribute(($context["particle"] ?? null), "dropdown_item_hover_background", []))) {
                // line 75
                echo "#";
                echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
                echo " .jl-nav-secondary>li>a:hover,#";
                echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
                echo " .jl-nav-secondary>li.jl-active>a{background-color:";
                echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "dropdown_item_hover_background", []));
                echo ";}";
            }
        } else {
            // line 78
            if ($this->getAttribute(($context["particle"] ?? null), "navbar_color", [])) {
                echo "#";
                echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
                echo " .g-main-nav .g-toplevel>li>.g-menu-item-container,#";
                echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
                echo " .jl-logo{color:";
                echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "navbar_color", []), "html", null, true);
                echo ";}";
            }
            // line 79
            if ($this->getAttribute(($context["particle"] ?? null), "navbar_fontsize", [])) {
                echo "#";
                echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
                echo " .g-main-nav .g-toplevel>li>.g-menu-item-container,#";
                echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
                echo " .jl-navbar-toggle{font-size:";
                echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "navbar_fontsize", []), "html", null, true);
                echo ";}";
            }
            // line 80
            if ($this->getAttribute(($context["particle"] ?? null), "navbar_text_transform", [])) {
                echo "#";
                echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
                echo " .g-main-nav .g-toplevel>li>.g-menu-item-container{text-transform:";
                echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "navbar_text_transform", []), "html", null, true);
                echo ";}";
            }
            // line 81
            if ($this->getAttribute(($context["particle"] ?? null), "navbar_hover_color", [])) {
                echo "#";
                echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
                echo " .g-main-nav .g-toplevel>li:hover>.g-menu-item-container{color:";
                echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "navbar_hover_color", []), "html", null, true);
                echo ";}";
            }
            // line 82
            if ($this->getAttribute(($context["particle"] ?? null), "navbar_active_color", [])) {
                echo "#";
                echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
                echo " .g-main-nav .g-toplevel>li.active>.g-menu-item-container{color:";
                echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "navbar_active_color", []), "html", null, true);
                echo ";}#";
                echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
                echo " .g-main-nav .g-toplevel>li.active>.g-separator{color:";
                echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "navbar_active_color", []), "html", null, true);
                echo ";}";
                if ( !($context["is_navbar_style"] ?? null)) {
                    echo "#";
                    echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
                    echo " .g-main-nav .g-toplevel>li:not(.g-menu-item-type-particle):not(.g-menu-item-type-module).active>.g-menu-item-container{color:";
                    echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "navbar_active_color", []), "html", null, true);
                    echo ";}";
                }
            }
            // line 83
            if (((($this->getAttribute(($context["particle"] ?? null), "dropdown_bg", []) || $this->getAttribute(($context["particle"] ?? null), "dropdown_color", [])) || $this->getAttribute(($context["particle"] ?? null), "dropdown_border_radius", [])) || $this->getAttribute(($context["particle"] ?? null), "dropdown_padding", []))) {
                // line 84
                echo "#";
                echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
                echo " .g-main-nav .g-dropdown{";
                if ($this->getAttribute(($context["particle"] ?? null), "dropdown_bg", [])) {
                    echo "background:";
                    echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "dropdown_bg", []), "html", null, true);
                    echo ";";
                }
                if ($this->getAttribute(($context["particle"] ?? null), "dropdown_color", [])) {
                    echo "color:";
                    echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "dropdown_color", []), "html", null, true);
                    echo ";";
                }
                if ($this->getAttribute(($context["particle"] ?? null), "dropdown_border_radius", [])) {
                    echo "border-radius:";
                    echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "dropdown_border_radius", []), "html", null, true);
                    echo ";";
                }
                if ($this->getAttribute(($context["particle"] ?? null), "dropdown_padding", [])) {
                    echo "padding:";
                    echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "dropdown_padding", []), "html", null, true);
                    echo ";";
                }
                echo "}";
            }
            // line 86
            if ($this->getAttribute(($context["particle"] ?? null), "dropdown_nav_color", [])) {
                echo "#";
                echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
                echo " .g-main-nav .g-sublevel>li>.g-menu-item-container{";
                if ($this->getAttribute(($context["particle"] ?? null), "dropdown_nav_color", [])) {
                    echo "color:";
                    echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "dropdown_nav_color", []));
                    echo ";";
                }
                echo "}";
            }
            // line 87
            if ($this->getAttribute(($context["particle"] ?? null), "dropdown_navbar_fontsize", [])) {
                echo "#";
                echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
                echo " .g-main-nav .g-sublevel>li>.g-menu-item-container{font-size:";
                echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "dropdown_navbar_fontsize", []), "html", null, true);
                echo ";}";
            }
            // line 88
            if ($this->getAttribute(($context["particle"] ?? null), "dropdown_navbar_hover_color", [])) {
                echo "#";
                echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
                echo " .g-main-nav .g-sublevel>li>.g-menu-item-container:focus,#";
                echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
                echo " .g-main-nav .g-sublevel>li>.g-menu-item-container:hover{color:";
                echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "dropdown_navbar_hover_color", []));
                echo ";}";
            }
            // line 89
            if ($this->getAttribute(($context["particle"] ?? null), "dropdown_navbar_active_color", [])) {
                echo "#";
                echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
                echo " .g-main-nav .g-sublevel>li:not(.g-menu-item-type-particle):not(.g-menu-item-type-module).active .g-menu-item-container{color:";
                echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "dropdown_navbar_active_color", []));
                echo ";}";
            }
            // line 90
            if ($this->getAttribute(($context["particle"] ?? null), "dropdown_navbar_fontsize", [])) {
                echo "#";
                echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
                echo " .g-main-nav .g-sublevel>li>.g-menu-item-container{font-size:";
                echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "dropdown_navbar_fontsize", []));
                echo ";}";
            }
            // line 91
            if ($this->getAttribute(($context["particle"] ?? null), "dropdown_nav_padding", [])) {
                echo "#";
                echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
                echo " .g-main-nav .g-sublevel>li>.g-menu-item-container{padding:";
                echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "dropdown_nav_padding", []));
                echo ";}";
            }
        }
        // line 93
        if ($this->getAttribute(($context["particle"] ?? null), "nav_bg_color", [])) {
            echo "#";
            echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
            echo "-particle .jl-navbar-container:not(.jl-navbar-transparent){background-color:";
            echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "nav_bg_color", []), "html", null, true);
            echo ";}";
        }
        // line 94
        if (($context["is_secondary_nav"] ?? null)) {
            echo "#";
            echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
            echo " .g-main-nav .g-sublevel{padding:0;}#";
            echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
            echo " .g-main-nav .g-sublevel>li>.g-menu-item-container{padding:0.7815rem 1rem;}";
        }
        // line 95
        if ((($context["is_secondary_nav"] ?? null) && $this->getAttribute(($context["particle"] ?? null), "dropdown_item_hover_background", []))) {
            echo "#";
            echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
            echo " .g-main-nav .g-sublevel>li:not(.g-menu-item-type-particle):not(.g-menu-item-type-module):hover,#";
            echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
            echo " .g-main-nav .g-sublevel>li:not(.g-menu-item-type-particle):not(.g-menu-item-type-module).active{background:";
            echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "dropdown_item_hover_background", []));
            echo ";}";
        }
        // line 96
        if ($this->getAttribute(($context["particle"] ?? null), "dropdown_nav_divider", [])) {
            echo "#";
            echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
            echo " .g-main-nav .g-sublevel>li:not(.g-go-back)+:not(.g-go-back){border-top:1px solid ";
            echo twig_escape_filter($this->env, _twig_default_filter(twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "dropdown_nav_divider_color", [])), "#f5f5f5"), "html", null, true);
            echo ";}";
        }
        // line 97
        if ($this->getAttribute(($context["particle"] ?? null), "logo_color", [])) {
            echo "#";
            echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
            echo " .jl-logo{color:";
            echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "logo_color", []), "html", null, true);
            echo ";}";
        }
        // line 98
        if ($this->getAttribute(($context["particle"] ?? null), "mobile_text_color", [])) {
            echo "#";
            echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
            echo "-particle .tm-header-mobile .jl-logo{color:";
            echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "mobile_text_color", []), "html", null, true);
            echo ";}";
        }
        // line 99
        if (($this->getAttribute(($context["particle"] ?? null), "transparent_header", []) == "light")) {
            // line 100
            echo "#";
            echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
            echo ".tm-header .jl-light .jl-navbar-nav>li>a,#";
            echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
            echo ".tm-header .jl-light .jl-search-toggle,#";
            echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
            echo ".tm-header .jl-light .jl-navbar-toggle{color:rgba(255,255,255,0.8);}#";
            echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
            echo ".tm-header .jl-light .jl-search-toggle:hover,#";
            echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
            echo ".tm-header .jl-light .jl-search-toggle:focus,#";
            echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
            echo ".tm-header .jl-light .jl-navbar-toggle:hover,#";
            echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
            echo ".tm-header .jl-light .jl-navbar-toggle:focus{color:#ffffff;}#";
            echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
            echo ".tm-header .jl-light .jl-navbar-nav>li:hover>a,#";
            echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
            echo ".tm-header .jl-light .jl-navbar-nav>li>a:focus,#";
            echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
            echo ".tm-header .jl-light .jl-navbar-nav>li>a[aria-expanded=\"true\"]{color:#ffffff;}#";
            echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
            echo ".tm-header .jl-light .jl-navbar-nav>li>a:active,#";
            echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
            echo ".tm-header .jl-light .jl-navbar-nav>li.jl-active>a{color:#ffffff;}";
        }
        // line 102
        if (($this->getAttribute(($context["particle"] ?? null), "search_style", []) == "modal")) {
            // line 103
            echo "#js-search-";
            echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
            echo " .jl-search-large .jl-search-input{background:#f8f8f8;}#js-search-";
            echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
            echo " .jl-search-large .jl-search-input:focus{border-color:#ced4da}";
        }
        // line 105
        if ((($context["is_navbar_style"] ?? null) && ($this->getAttribute(($context["particle"] ?? null), "subnav_extended", []) == "drop"))) {
            echo "#";
            echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
            echo " .jl-navbar-dropdown-nav [aria-expanded=true]>.jl-drop-parent-icon{transform:rotate(-90deg)}";
        }
        // line 106
        if ((($this->getAttribute(($context["particle"] ?? null), "container_maxwidth", []) == "custom") &&  !twig_test_empty($this->getAttribute(($context["particle"] ?? null), "ct_container_width", [])))) {
            // line 107
            echo "@media only all and (min-width:";
            echo twig_escape_filter($this->env, (($this->getAttribute($this->getAttribute(($context["gantry"] ?? null), "config", [], "any", false, true), "get", [0 => "styles.breakpoints.large-desktop-container"], "method", true, true)) ? (_twig_default_filter($this->getAttribute($this->getAttribute(($context["gantry"] ?? null), "config", [], "any", false, true), "get", [0 => "styles.breakpoints.large-desktop-container"], "method"), "80rem")) : ("80rem")), "html", null, true);
            echo "){ #";
            echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
            echo "-particle .tm-header .g-container{max-width:";
            echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "ct_container_width", []));
            echo ";}}";
        }
        $context["inline_css"] = ('' === $tmp = ob_get_clean()) ? '' : new Markup($tmp, $this->env->getCharset());
        // line 110
        $this->getAttribute($this->getAttribute(($context["gantry"] ?? null), "document", []), "addInlineStyle", [0 => ($context["inline_css"] ?? null), 1 => 0], "method");
        echo " 

";
        // line 112
        ob_start(function () { return ''; });
        // line 113
        if ($this->getAttribute(($context["particle"] ?? null), "g5canvas", [])) {
            // line 114
            echo "<div class=\"g-offcanvas-toggle jl-navbar-toggle\" role=\"navigation\" data-offcanvas-toggle aria-controls=\"g-offcanvas\">
    <span jl-navbar-toggle-icon class=\"jl-icon jl-navbar-toggle-icon\"></span>
</div>
";
        } else {
            // line 118
            echo "<a class=\"jl-navbar-toggle jl-navbar-toggle-animate mobile-toggle\" href=\"#mobile-";
            echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
            echo "\" jl-toggle=\"animation: jl-animation-fade\">
";
            // line 119
            if (($this->getAttribute(($context["particle"] ?? null), "menu_text", []) && ($this->getAttribute(($context["particle"] ?? null), "mobile_menu_toggle", []) == "right"))) {
                echo "<span class=\"jl-margin-small-right jl-text-middle\">";
                echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "menu_text", []), "html", null, true);
                echo "</span>";
            }
            // line 120
            echo "<span jl-navbar-toggle-icon></span>
";
            // line 121
            if (($this->getAttribute(($context["particle"] ?? null), "menu_text", []) && ($this->getAttribute(($context["particle"] ?? null), "mobile_menu_toggle", []) == "left"))) {
                echo "<span class=\"jl-margin-small-left jl-text-middle\">";
                echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "menu_text", []), "html", null, true);
                echo "</span>";
            }
            // line 122
            echo "</a>
";
        }
        $context["menu_toggle"] = ('' === $tmp = ob_get_clean()) ? '' : new Markup($tmp, $this->env->getCharset());
        // line 125
        echo "
";
        // line 126
        if ($this->getAttribute(($context["particle"] ?? null), "sc_link_target", [])) {
            // line 127
            echo "    ";
            $context["targetAttrib"] = ((" target=\"" . twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "sc_link_target", []))) . "\"");
            // line 128
            echo "    ";
            $context["targetAttrib"] = ((($this->getAttribute(($context["particle"] ?? null), "sc_link_target", []) == "_blank")) ? ((($context["targetAttrib"] ?? null) . " rel=\"noopener noreferrer\"")) : (($context["targetAttrib"] ?? null)));
        }
        // line 130
        echo "
";
        // line 132
        $context["social_icons"] = "";
        // line 133
        if ($this->getAttribute(($context["particle"] ?? null), "social_items", [])) {
            // line 134
            ob_start(function () { return ''; });
            // line 135
            echo "<ul class=\"jl-flex-inline jl-flex-middle jl-flex-nowrap";
            if ($this->getAttribute(($context["particle"] ?? null), "social_icon_gap", [])) {
                echo " jl-grid-";
                echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "social_icon_gap", []));
            }
            if ($this->getAttribute(($context["particle"] ?? null), "social_inverse", [])) {
                echo " jl-";
                echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "social_inverse", []), "html", null, true);
            }
            echo "\" jl-grid>
";
            // line 136
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute(($context["particle"] ?? null), "social_items", []));
            foreach ($context['_seq'] as $context["_key"] => $context["item"]) {
                // line 137
                echo "    ";
                $context["title"] = (( !twig_test_empty($this->getAttribute($context["item"], "social_title", []))) ? (twig_escape_filter($this->env, $this->getAttribute($context["item"], "social_title", []))) : (twig_escape_filter($this->env, $this->getAttribute($context["item"], "social_text", []))));
                // line 138
                echo "    ";
                $context["titleAttrib"] = (( !twig_test_empty(($context["title"] ?? null))) ? (((((" title=\"" . ($context["title"] ?? null)) . "\" aria-label=\"") . ($context["title"] ?? null)) . "\"")) : (""));
                // line 139
                echo "    <li>
        <a class=\"tm-icon";
                // line 140
                echo ((($this->getAttribute(($context["particle"] ?? null), "sc_icon_button", []) && twig_in_filter($this->getAttribute(($context["particle"] ?? null), "display", []), [0 => "both", 1 => "icons_only"]))) ? (" jl-icon-button") : (""));
                echo "\" href=\"";
                echo twig_escape_filter($this->env, $this->getAttribute($context["item"], "social_link", []));
                echo "\"";
                echo ($context["targetAttrib"] ?? null);
                echo ($context["titleAttrib"] ?? null);
                echo ">
            ";
                // line 141
                if (twig_in_filter($this->getAttribute(($context["particle"] ?? null), "display", []), [0 => "both", 1 => "icons_only"])) {
                    echo "<span class=\"";
                    echo twig_escape_filter($this->env, $this->getAttribute($context["item"], "social_icon", []));
                    echo "\"></span>";
                }
                // line 142
                echo "            ";
                if (twig_in_filter($this->getAttribute(($context["particle"] ?? null), "display", []), [0 => "both", 1 => "text_only"])) {
                    echo "<span class=\"g-social-text\">";
                    echo twig_escape_filter($this->env, $this->getAttribute($context["item"], "social_text", []));
                    echo "</span>";
                }
                // line 143
                echo "        </a>
    </li>
";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['item'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 146
            echo "</ul>
";
            $context["social_icons"] = ('' === $tmp = ob_get_clean()) ? '' : new Markup($tmp, $this->env->getCharset());
        }
        // line 149
        echo "
";
        // line 150
        $context["theme_container"] = ((($this->getAttribute(($context["particle"] ?? null), "container_maxwidth", []) == "custom")) ? ("g-container") : (("jl-container" . ((twig_in_filter($this->getAttribute(        // line 152
($context["particle"] ?? null), "container_maxwidth", []), [0 => "small", 1 => "large", 2 => "xlarge", 3 => "expand"])) ? ((" jl-container-" . twig_escape_filter($this->env, $this->getAttribute(        // line 153
($context["particle"] ?? null), "container_maxwidth", [])))) : ("")))));
        // line 156
        if ($this->getAttribute(($context["particle"] ?? null), "search_pos", [])) {
            // line 157
            echo "    ";
            $context["search_style"] = $this->getAttribute(($context["particle"] ?? null), "search_style", []);
            // line 158
            echo "    ";
            $context["search_classes"] = (((($context["is_horizontal"] ?? null) || $this->getAttribute($this->getAttribute(($context["positions"] ?? null), "search", []), "navbar", []))) ? ("jl-navbar-toggle") : ("jl-search-toggle jl-display-block"));
            // line 159
            echo "    ";
            $context["search_placeholder"] = (($this->getAttribute(($context["particle"] ?? null), "placeholder", [], "any", true, true)) ? (_twig_default_filter($this->getAttribute(($context["particle"] ?? null), "placeholder", []), "Search...")) : ("Search..."));
            // line 160
            echo "    ";
            $context["search_action"] = $this->getAttribute(($context["joomla"] ?? null), "route", [0 => "index.php?option=com_finder&view=search"], "method");
            // line 161
            echo "    ";
            $context["search_id"] = ("search-" . ($context["id"] ?? null));
            // line 162
            echo "    ";
            $context["modal_id"] = ("js-search-" . ($context["id"] ?? null));
            // line 163
            echo "    ";
            ob_start(function () { return ''; });
            // line 164
            echo "        <form id=\"";
            echo twig_escape_filter($this->env, ($context["search_id"] ?? null), "html", null, true);
            echo "\" action=\"";
            echo twig_escape_filter($this->env, ($context["search_action"] ?? null), "html", null, true);
            echo "\" method=\"get\" role=\"search\" class=\"js-finder-searchform jl-search";
            if ((($context["search_style"] ?? null) == "default")) {
                echo ((twig_in_filter($this->getAttribute(($context["particle"] ?? null), "search_pos", []), [0 => "dialog_start", 1 => "dialog_end"])) ? (" jl-search-default jl-width-1-1") : (" jl-search-navbar"));
            }
            if ((($context["search_style"] ?? null) == "dropdown")) {
                echo " jl-width-1-1 jl-search-medium";
            }
            if ((($context["search_style"] ?? null) == "modal")) {
                echo " jl-search-large";
            }
            echo "\">
            ";
            // line 165
            if (($this->getAttribute(($context["particle"] ?? null), "search_icon", []) == "left")) {
                echo "<span jl-search-icon></span>";
            }
            // line 166
            echo "            <input type=\"search\" name=\"q\" class=\"js-finder-search-query jl-search-input\" value=\"\" placeholder=\"";
            echo twig_escape_filter($this->env, ($context["search_placeholder"] ?? null), "html", null, true);
            echo "\" required aria-label=\"Search\"";
            if ((($context["search_style"] ?? null) == "modal")) {
                echo " autofocus";
            }
            echo ">
            ";
            // line 167
            if (($this->getAttribute(($context["particle"] ?? null), "search_icon", []) == "right")) {
                echo "<button jl-search-icon class=\"jl-search-icon-flip\" type=\"submit\"></button>";
            }
            // line 168
            echo "        </form>
    ";
            $context["common_search_form"] = ('' === $tmp = ob_get_clean()) ? '' : new Markup($tmp, $this->env->getCharset());
            // line 170
            echo "
    ";
            // line 171
            ob_start(function () { return ''; });
            // line 172
            echo "        ";
            if (((($context["search_style"] ?? null) == "default") || twig_in_filter($this->getAttribute(($context["particle"] ?? null), "search_pos", []), [0 => "dialog_start", 1 => "dialog_end"]))) {
                // line 173
                echo "            ";
                echo twig_escape_filter($this->env, ($context["common_search_form"] ?? null), "html", null, true);
                echo "
        ";
            } elseif ((            // line 174
($context["search_style"] ?? null) == "dropdown")) {
                // line 175
                echo "            <a class=\"";
                echo twig_escape_filter($this->env, ($context["search_classes"] ?? null), "html", null, true);
                echo "\" id=\"";
                echo twig_escape_filter($this->env, ($context["search_id"] ?? null), "html", null, true);
                echo "\" href jl-search-icon></a>
            <div mode=\"click\" pos=\"bottom-left\" stretch=\"x\" boundary=\".tm-header .jl-navbar\" class=\"jl-drop jl-navbar-dropdown\">
                ";
                // line 177
                echo twig_escape_filter($this->env, ($context["common_search_form"] ?? null), "html", null, true);
                echo "
            </div>
        ";
            } else {
                // line 180
                echo "            <a href=\"#";
                echo twig_escape_filter($this->env, ($context["modal_id"] ?? null), "html", null, true);
                echo "\" class=\"";
                echo twig_escape_filter($this->env, ($context["search_classes"] ?? null), "html", null, true);
                echo "\" jl-search-icon jl-toggle title=\"Search Icon\"></a>
            <div id=\"";
                // line 181
                echo twig_escape_filter($this->env, ($context["modal_id"] ?? null), "html", null, true);
                echo "\" class=\"jl-modal-full jl-modal\" jl-modal>
                <div class=\"jl-modal-dialog jl-flex jl-flex-center jl-flex-middle\" jl-height-viewport>
                    <button class=\"jl-modal-close-full jl-close-large\" type=\"button\" jl-close></button>
                    ";
                // line 184
                echo twig_escape_filter($this->env, ($context["common_search_form"] ?? null), "html", null, true);
                echo "
                </div>
            </div>
        ";
            }
            // line 188
            echo "    ";
            $context["navbar_search"] = ('' === $tmp = ob_get_clean()) ? '' : new Markup($tmp, $this->env->getCharset());
        }
        // line 198
        echo "
";
        // line 206
        echo "
";
        // line 224
        echo "
";
        // line 235
        echo "
";
        // line 386
        echo "
";
        // line 424
        echo "
";
        // line 433
        echo "
";
        // line 463
        echo "
";
        // line 464
        $context["macro"] = $this;
        // line 465
        echo "
";
        // line 466
        $context["url"] = _twig_default_filter($this->env->getExtension('Gantry\Component\Twig\TwigExtension')->urlFunc($this->getAttribute(($context["particle"] ?? null), "url", [])), $this->getAttribute(($context["gantry"] ?? null), "siteUrl", [], "method"));
        // line 467
        if ((($context["url"] ?? null) == $this->getAttribute(($context["gantry"] ?? null), "siteUrl", [], "method"))) {
            $context["rel"] = "rel=\"home\"";
        }
        // line 468
        $context["logo_init"] = ($this->getAttribute(($context["particle"] ?? null), "image", []) || $this->getAttribute(($context["particle"] ?? null), "text", []));
        // line 469
        echo "
";
        // line 470
        ob_start(function () { return ''; });
        // line 471
        echo "    ";
        $context["height"] = (($this->getAttribute(($context["particle"] ?? null), "height", [])) ? ((("style=\"max-height: " . $this->getAttribute(        // line 472
($context["particle"] ?? null), "height", [])) . "\"")) : ((($this->getAttribute(        // line 473
($context["particle"] ?? null), "image", [])) ? ($this->env->getExtension('Gantry\Component\Twig\TwigExtension')->imageSize($this->getAttribute(($context["particle"] ?? null), "image", []))) : (""))));
        // line 474
        echo "
    ";
        // line 475
        if ($this->getAttribute(($context["particle"] ?? null), "image", [])) {
            // line 476
            echo "        <img src=\"";
            echo twig_escape_filter($this->env, $this->env->getExtension('Gantry\Component\Twig\TwigExtension')->urlFunc($this->getAttribute(($context["particle"] ?? null), "image", [])));
            echo "\" ";
            echo ((array_key_exists("height", $context)) ? (_twig_default_filter(($context["height"] ?? null), "")) : (""));
            echo " alt=\"";
            echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "text", []), "html", null, true);
            echo "\"";
            echo (($this->getAttribute(($context["particle"] ?? null), "svg_support", [])) ? (" jl-svg") : (""));
            echo ">
    ";
        } else {
            // line 478
            echo "        ";
            echo $this->getAttribute(($context["particle"] ?? null), "text", []);
            echo " 
    ";
        }
        // line 480
        echo "
";
        $context["logo_render"] = ('' === $tmp = ob_get_clean()) ? '' : new Markup($tmp, $this->env->getCharset());
        // line 482
        echo "
";
        // line 483
        ob_start(function () { return ''; });
        // line 484
        echo "    ";
        $context["image_height"] = (($this->getAttribute(($context["particle"] ?? null), "image_height", [])) ? ((("style=\"max-height: " . $this->getAttribute(($context["particle"] ?? null), "image_height", [])) . "\"")) : ($this->env->getExtension('Gantry\Component\Twig\TwigExtension')->imageSize($this->getAttribute(($context["particle"] ?? null), "mobile_logo_image", []))));
        // line 485
        echo "
    ";
        // line 486
        if ($this->getAttribute(($context["particle"] ?? null), "mobile_logo_image", [])) {
            // line 487
            echo "        <img src=\"";
            echo twig_escape_filter($this->env, $this->env->getExtension('Gantry\Component\Twig\TwigExtension')->urlFunc($this->getAttribute(($context["particle"] ?? null), "mobile_logo_image", [])));
            echo "\" ";
            echo ((array_key_exists("image_height", $context)) ? (_twig_default_filter(($context["image_height"] ?? null), "")) : (""));
            echo " alt=\"";
            echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "text", []), "html", null, true);
            echo "\"";
            echo (($this->getAttribute(($context["particle"] ?? null), "svg_support", [])) ? (" jl-svg") : (""));
            echo ">
    ";
        } else {
            // line 489
            echo "        ";
            echo $this->getAttribute(($context["particle"] ?? null), "text", []);
            echo " 
    ";
        }
        // line 491
        echo "
";
        $context["mobile_logo_render"] = ('' === $tmp = ob_get_clean()) ? '' : new Markup($tmp, $this->env->getCharset());
        // line 493
        echo "
";
        // line 495
        $context["isNavbarpos"] = (((($this->getAttribute(($context["particle"] ?? null), "search_pos", []) == "navbar") || (($this->getAttribute(($context["particle"] ?? null), "social_pos", []) == "navbar") && $this->getAttribute(($context["particle"] ?? null), "social_items", []))) || (($this->getAttribute(($context["particle"] ?? null), "html_pos", []) == "navbar") && $this->getAttribute(($context["particle"] ?? null), "html", []))) || $this->getAttribute($this->getAttribute(($context["menu"] ?? null), "root", []), "count", [], "method"));
        // line 496
        $context["isHeaderpos"] = ((($this->getAttribute(($context["particle"] ?? null), "search_pos", []) == "header") || (($this->getAttribute(($context["particle"] ?? null), "social_pos", []) == "header") && $this->getAttribute(($context["particle"] ?? null), "social_items", []))) || (($this->getAttribute(($context["particle"] ?? null), "html_pos", []) == "header") && $this->getAttribute(($context["particle"] ?? null), "html", [])));
        // line 497
        echo "
";
        // line 498
        $context["isTransparent"] = $this->getAttribute(($context["particle"] ?? null), "transparent_header", []);
        // line 500
        $context["sticky"] = ($this->getAttribute(($context["particle"] ?? null), "sticky", []) && twig_test_empty($this->getAttribute(($context["particle"] ?? null), "section", [])));
        // line 501
        $context["sticky_visibility"] = (($this->getAttribute(($context["particle"] ?? null), "menu_visibility", [])) ? (((" media=\"@" . twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "menu_visibility", []))) . "\"")) : (""));
        // line 503
        if (($context["sticky"] ?? null)) {
            // line 504
            ob_start(function () { return ''; });
            // line 505
            echo "<div jl-sticky";
            echo ($context["sticky_visibility"] ?? null);
            if (($this->getAttribute(($context["particle"] ?? null), "sticky", []) == "stickyonscroll")) {
                echo " show-on-up animation=\"jl-animation-slide-top\"";
            }
            if ($this->getAttribute(($context["particle"] ?? null), "top", [])) {
                echo " top=\"";
                echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "top", []));
                echo "\"";
            }
            if ($this->getAttribute(($context["particle"] ?? null), "offset", [])) {
                echo " offset=\"";
                echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "offset", []));
                echo "\"";
            }
            echo " cls-active=\"jl-navbar-sticky\"";
            if ($this->getAttribute(($context["particle"] ?? null), "transparent_header", [])) {
                echo " cls-inactive=\"jl-navbar-transparent jl-";
                echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "transparent_header", []));
                echo "\"";
            }
            echo " sel-target=\".jl-navbar-container\">";
            $context["attrs_sticky"] = ('' === $tmp = ob_get_clean()) ? '' : new Markup($tmp, $this->env->getCharset());
        }
        // line 509
        if ($this->getAttribute($this->getAttribute(($context["menu"] ?? null), "root", []), "count", [], "method")) {
            // line 510
            echo "
<div id=\"";
            // line 511
            echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
            echo "\" class=\"tm-header menu-";
            echo ((($context["is_navbar_style"] ?? null)) ? ("extended") : ("simple"));
            echo twig_escape_filter($this->env, ((($context["is_horizontal"] ?? null)) ? ((" horizontal-" . twig_escape_filter($this->env, ($context["layout"] ?? null)))) : ((" " . twig_escape_filter($this->env, ($context["layout"] ?? null))))), "html", null, true);
            (($this->getAttribute(($context["particle"] ?? null), "menu_visibility", [])) ? (print (twig_escape_filter($this->env, (" jl-visible@" . twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "menu_visibility", []))), "html", null, true))) : (print ("")));
            echo (($this->getAttribute(($context["particle"] ?? null), "transparent_header", [])) ? (" jl-header-overlay") : (""));
            echo "\"";
            echo (($this->getAttribute(($context["particle"] ?? null), "transparent_header", [])) ? (" jl-header") : (""));
            echo ">

";
            // line 513
            if (($context["sticky"] ?? null)) {
                echo ($context["attrs_sticky"] ?? null);
            }
            // line 514
            echo "
<div class=\"jl-navbar-container";
            // line 515
            if ((($context["isTransparent"] ?? null) &&  !$this->getAttribute(($context["particle"] ?? null), "sticky", []))) {
                echo " jl-navbar-transparent jl-";
                echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "transparent_header", []));
            }
            echo "\">

";
            // line 517
            if ($this->getAttribute(($context["particle"] ?? null), "container_maxwidth", [])) {
                // line 518
                echo "    <div class=\"";
                echo twig_escape_filter($this->env, ($context["theme_container"] ?? null), "html", null, true);
                echo "\">
        ";
                // line 519
                echo (((($this->getAttribute(($context["particle"] ?? null), "container_maxwidth", []) == "custom") &&  !$this->getAttribute(($context["particle"] ?? null), "navbar_style", []))) ? ("<div class=\"navbar-wrapper\">") : (""));
                echo "
";
            }
            // line 521
            echo "
    <nav class=\"jl-navbar";
            // line 522
            echo (($this->getAttribute(($context["particle"] ?? null), "navbar_style", [])) ? (" el-horiz-nav") : (" g-main-nav"));
            echo ((($this->getAttribute(($context["particle"] ?? null), "layout", []) == "justify")) ? (" jl-navbar-justify") : (""));
            echo "\"";
            if ($this->getAttribute(($context["particle"] ?? null), "navbar_style", [])) {
                echo " jl-navbar=\"align: ";
                echo ((twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "dropdown_alignment", []))) ? (twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "dropdown_alignment", []))) : ("left"));
                echo "; container: #";
                echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
                echo ".tm-header";
                echo (($this->getAttribute(($context["particle"] ?? null), "sticky", [])) ? (" > [jl-sticky]") : (""));
                echo "; boundary: #";
                echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
                echo ".tm-header .jl-";
                echo ((twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "dropdown_stretch_mode", []))) ? (twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "dropdown_stretch_mode", []))) : ("navbar-container"));
                echo ";";
                (($this->getAttribute(($context["particle"] ?? null), "navbar_alignment", [])) ? (print (twig_escape_filter($this->env, ((" target-x: #" . ($context["id"] ?? null)) . " .jl-navbar;"), "html", null, true))) : (print ("")));
                if ($this->getAttribute(($context["particle"] ?? null), "dropbar", [])) {
                    echo " target-y: #";
                    echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
                    echo ".tm-header .jl-navbar-container; dropbar: true; dropbar-anchor: #";
                    echo twig_escape_filter($this->env, ($context["id"] ?? null), "html", null, true);
                    echo ".tm-header .jl-navbar-container; dropbar-transparent-mode: ";
                    echo (($this->getAttribute(($context["particle"] ?? null), "transparent_header", [])) ? ("behind") : ("remove"));
                    echo ";";
                }
                echo (((($this->getAttribute(($context["particle"] ?? null), "hoverExpand", [], "any", true, true)) ? (_twig_default_filter($this->getAttribute(($context["particle"] ?? null), "hoverExpand", []), "true")) : ("true"))) ? ("") : (" mode: click"));
                echo "\"";
            } else {
                echo (($this->getAttribute(($context["particle"] ?? null), "mobileTarget", [])) ? (" data-g-mobile-target") : (""));
                echo " data-g-hover-expand=\"";
                echo (((($this->getAttribute(($context["particle"] ?? null), "hoverExpand", [], "any", true, true)) ? (_twig_default_filter($this->getAttribute(($context["particle"] ?? null), "hoverExpand", []), "true")) : ("true"))) ? ("true") : ("false"));
                echo "\"";
            }
            echo ">
        
        ";
            // line 524
            if ((($context["logo_init"] ?? null) || ($this->getAttribute(($context["particle"] ?? null), "layout", []) == "left"))) {
                // line 525
                echo "        <div class=\"jl-navbar-left\">

        ";
                // line 527
                if (($context["logo_init"] ?? null)) {
                    // line 528
                    echo "            <a class=\"jl-navbar-item jl-logo\" href=\"";
                    echo twig_escape_filter($this->env, ($context["url"] ?? null), "html", null, true);
                    echo "\"";
                    if ($this->getAttribute(($context["particle"] ?? null), "text", [])) {
                        echo " title=\"";
                        echo twig_escape_filter($this->env, strip_tags($this->getAttribute(($context["particle"] ?? null), "text", [])), "html", null, true);
                        echo "\"";
                    }
                    echo " aria-label=\"Back to the homepage\" rel=\"home\">
                ";
                    // line 529
                    echo twig_escape_filter($this->env, ($context["logo_render"] ?? null), "html", null, true);
                    echo "
            </a>
        ";
                }
                // line 532
                echo "
        ";
                // line 533
                if (($this->getAttribute(($context["particle"] ?? null), "layout", []) == "left")) {
                    // line 534
                    echo "        <ul class=\"";
                    echo ((twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "navbar_style", []))) ? ("jl-navbar-nav") : ("g-toplevel"));
                    echo "\">
            ";
                    // line 535
                    echo $context["macro"]->getdisplayItems($this->getAttribute(($context["menu"] ?? null), "root", []), ($context["menu"] ?? null), $context);
                    echo "
        </ul>
        ";
                }
                // line 538
                echo "
        ";
                // line 539
                if ((($this->getAttribute(($context["particle"] ?? null), "layout", []) == "left") && ($this->getAttribute(($context["particle"] ?? null), "search_pos", []) == "navbar"))) {
                    // line 540
                    echo "        <div class=\"jl-navbar-item\">
            ";
                    // line 541
                    echo twig_escape_filter($this->env, ($context["navbar_search"] ?? null), "html", null, true);
                    echo "
        </div>
        ";
                }
                // line 544
                echo "
        ";
                // line 545
                if (((($this->getAttribute(($context["particle"] ?? null), "layout", []) == "left") && ($this->getAttribute(($context["particle"] ?? null), "social_pos", []) == "navbar")) && $this->getAttribute(($context["particle"] ?? null), "social_items", []))) {
                    // line 546
                    echo "        <div class=\"jl-navbar-item\">
            <div class=\"jl-margin-remove-last-child custom\">
                ";
                    // line 548
                    echo twig_escape_filter($this->env, ($context["social_icons"] ?? null), "html", null, true);
                    echo "
            </div>
        </div>
        ";
                }
                // line 552
                echo "
        </div>
        ";
            }
            // line 555
            echo "
        ";
            // line 556
            if (($this->getAttribute(($context["particle"] ?? null), "layout", []) == "center")) {
                // line 557
                echo "
        <div class=\"jl-navbar-center\">

        ";
                // line 560
                if (($this->getAttribute(($context["particle"] ?? null), "layout", []) == "center")) {
                    // line 561
                    echo "        <ul class=\"";
                    echo ((twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "navbar_style", []))) ? ("jl-navbar-nav") : ("g-toplevel"));
                    echo "\">
            ";
                    // line 562
                    echo $context["macro"]->getdisplayItems($this->getAttribute(($context["menu"] ?? null), "root", []), ($context["menu"] ?? null), $context);
                    echo "
        </ul>
        ";
                }
                // line 565
                echo "
        ";
                // line 566
                if ((($this->getAttribute(($context["particle"] ?? null), "layout", []) == "center") && ($this->getAttribute(($context["particle"] ?? null), "search_pos", []) == "navbar"))) {
                    // line 567
                    echo "            ";
                    if ((($context["is_horizontal"] ?? null) && ($this->getAttribute(($context["particle"] ?? null), "search_style", []) == "default"))) {
                        echo "<div class=\"jl-navbar-item\">";
                    }
                    // line 568
                    echo "                ";
                    echo twig_escape_filter($this->env, ($context["navbar_search"] ?? null), "html", null, true);
                    echo "
            ";
                    // line 569
                    if ((($context["is_horizontal"] ?? null) && ($this->getAttribute(($context["particle"] ?? null), "search_style", []) == "default"))) {
                        echo "</div>";
                    }
                    // line 570
                    echo "        ";
                }
                // line 571
                echo "
        ";
                // line 572
                if (((($this->getAttribute(($context["particle"] ?? null), "layout", []) == "center") && ($this->getAttribute(($context["particle"] ?? null), "social_pos", []) == "navbar")) && $this->getAttribute(($context["particle"] ?? null), "social_items", []))) {
                    // line 573
                    echo "        <div class=\"jl-navbar-item\">
            <div class=\"jl-margin-remove-last-child\">
                ";
                    // line 575
                    echo twig_escape_filter($this->env, ($context["social_icons"] ?? null), "html", null, true);
                    echo "
            </div>
        </div>
        ";
                }
                // line 579
                echo "
        </div>
        ";
            }
            // line 582
            echo "
        ";
            // line 583
            if ((($context["isHeaderpos"] ?? null) || (($context["isNavbarpos"] ?? null) && ($this->getAttribute(($context["particle"] ?? null), "layout", []) == "right")))) {
                // line 584
                echo "        <div class=\"jl-navbar-right\">

        ";
                // line 586
                if (($this->getAttribute(($context["particle"] ?? null), "layout", []) == "right")) {
                    // line 587
                    echo "        <ul class=\"";
                    echo ((twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "navbar_style", []))) ? ("jl-navbar-nav") : ("g-toplevel"));
                    echo "\">
            ";
                    // line 588
                    echo $context["macro"]->getdisplayItems($this->getAttribute(($context["menu"] ?? null), "root", []), ($context["menu"] ?? null), $context);
                    echo "
        </ul>
        ";
                }
                // line 591
                echo "
        ";
                // line 592
                if ((($this->getAttribute(($context["particle"] ?? null), "layout", []) == "right") && ($this->getAttribute(($context["particle"] ?? null), "search_pos", []) == "navbar"))) {
                    // line 593
                    echo "            ";
                    if ((($context["is_horizontal"] ?? null) && ($this->getAttribute(($context["particle"] ?? null), "search_style", []) == "default"))) {
                        echo "<div class=\"jl-navbar-item\">";
                    }
                    // line 594
                    echo "                ";
                    echo twig_escape_filter($this->env, ($context["navbar_search"] ?? null), "html", null, true);
                    echo "
            ";
                    // line 595
                    if ((($context["is_horizontal"] ?? null) && ($this->getAttribute(($context["particle"] ?? null), "search_style", []) == "default"))) {
                        echo "</div>";
                    }
                    // line 596
                    echo "        ";
                }
                // line 597
                echo "
        ";
                // line 598
                if (((($this->getAttribute(($context["particle"] ?? null), "layout", []) == "right") && ($this->getAttribute(($context["particle"] ?? null), "social_pos", []) == "navbar")) && $this->getAttribute(($context["particle"] ?? null), "social_items", []))) {
                    // line 599
                    echo "        <div class=\"jl-navbar-item\">
            <div class=\"jl-margin-remove-last-child\">
                ";
                    // line 601
                    echo twig_escape_filter($this->env, ($context["social_icons"] ?? null), "html", null, true);
                    echo "
            </div>
        </div>
        ";
                }
                // line 605
                echo "
        ";
                // line 606
                if (($this->getAttribute(($context["particle"] ?? null), "search_pos", []) == "header")) {
                    // line 607
                    echo "            ";
                    if ((($context["is_horizontal"] ?? null) && ($this->getAttribute(($context["particle"] ?? null), "search_style", []) == "default"))) {
                        echo "<div class=\"jl-navbar-item\">";
                    }
                    // line 608
                    echo "                ";
                    echo twig_escape_filter($this->env, ($context["navbar_search"] ?? null), "html", null, true);
                    echo "
            ";
                    // line 609
                    if ((($context["is_horizontal"] ?? null) && ($this->getAttribute(($context["particle"] ?? null), "search_style", []) == "default"))) {
                        echo "</div>";
                    }
                    // line 610
                    echo "        ";
                }
                // line 611
                echo "
        ";
                // line 612
                if ((($this->getAttribute(($context["particle"] ?? null), "social_pos", []) == "header") && $this->getAttribute(($context["particle"] ?? null), "social_items", []))) {
                    // line 613
                    echo "        <div class=\"jl-navbar-item\">
            <div class=\"jl-margin-remove-last-child\">
                ";
                    // line 615
                    echo twig_escape_filter($this->env, ($context["social_icons"] ?? null), "html", null, true);
                    echo "
            </div>
        </div>
        ";
                }
                // line 619
                echo "
        </div>
        ";
            }
            // line 622
            echo "
    </nav>

";
            // line 625
            if ($this->getAttribute(($context["particle"] ?? null), "container_maxwidth", [])) {
                // line 626
                echo "        ";
                echo (((($this->getAttribute(($context["particle"] ?? null), "container_maxwidth", []) == "custom") &&  !$this->getAttribute(($context["particle"] ?? null), "navbar_style", []))) ? ("</div>") : (""));
                echo "
    </div>
";
            }
            // line 629
            echo "</div>

";
            // line 631
            if (($context["sticky"] ?? null)) {
                echo "</div>";
            }
            // line 632
            echo "
</div>
";
        }
        // line 635
        echo "
";
        // line 638
        if ($this->getAttribute(($context["particle"] ?? null), "menu_visibility", [])) {
            // line 639
            echo "
<div class=\"";
            // line 640
            echo (($this->getAttribute(($context["particle"] ?? null), "container_maxwidth", [])) ? ("tm-header-mobile ") : (""));
            (($this->getAttribute(($context["particle"] ?? null), "menu_visibility", [])) ? (print (twig_escape_filter($this->env, ("jl-hidden@" . twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "menu_visibility", []))), "html", null, true))) : (print ("")));
            echo "\">

";
            // line 642
            if ($this->getAttribute(($context["particle"] ?? null), "m_sticky", [])) {
                // line 643
                echo "<div jl-sticky";
                echo ((($this->getAttribute(($context["particle"] ?? null), "m_sticky", []) == "stickyonscroll")) ? (" show-on-up animation=\"jl-animation-slide-top\"") : (""));
                if ($this->getAttribute(($context["particle"] ?? null), "ms_top", [])) {
                    echo " top=\"";
                    echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "ms_top", []));
                    echo "\"";
                }
                if ($this->getAttribute(($context["particle"] ?? null), "ms_offset", [])) {
                    echo " offset=\"";
                    echo twig_escape_filter($this->env, $this->getAttribute(($context["particle"] ?? null), "ms_offset", []));
                    echo "\"";
                }
                echo " cls-active=\"jl-navbar-sticky\" sel-target=\".jl-navbar-container\">
";
            }
            // line 645
            echo "
<div class=\"jl-navbar-container\">

    ";
            // line 648
            if ($this->getAttribute(($context["particle"] ?? null), "container_maxwidth", [])) {
                // line 649
                echo "        <div class=\"";
                echo twig_escape_filter($this->env, ($context["theme_container"] ?? null), "html", null, true);
                echo "\">
    ";
            }
            // line 651
            echo "
        <nav class=\"jl-navbar el-horiz-nav\" jl-navbar=\"container: .tm-header-mobile\">

            ";
            // line 654
            if ((($this->getAttribute(($context["particle"] ?? null), "mobile_logo", []) == "left") || ($this->getAttribute(($context["particle"] ?? null), "mobile_menu_toggle", []) == "left"))) {
                // line 655
                echo "
                <div class=\"jl-navbar-left\">

                    ";
                // line 658
                if (($this->getAttribute(($context["particle"] ?? null), "mobile_logo", []) == "left")) {
                    // line 659
                    echo "                    <a class=\"jl-navbar-item jl-logo\" href=\"";
                    echo twig_escape_filter($this->env, ($context["url"] ?? null), "html", null, true);
                    echo "\"";
                    if ($this->getAttribute(($context["particle"] ?? null), "text", [])) {
                        echo " title=\"";
                        echo twig_escape_filter($this->env, strip_tags($this->getAttribute(($context["particle"] ?? null), "text", [])), "html", null, true);
                        echo "\"";
                    }
                    echo " aria-label=\"Back to the homepage\" rel=\"home\">
                        ";
                    // line 660
                    echo twig_escape_filter($this->env, (($this->getAttribute(($context["particle"] ?? null), "mobile_logo_image", [])) ? (($context["mobile_logo_render"] ?? null)) : (($context["logo_render"] ?? null))), "html", null, true);
                    echo "
                    </a>
                    ";
                }
                // line 663
                echo "
                    ";
                // line 664
                if (($this->getAttribute(($context["particle"] ?? null), "mobile_menu_toggle", []) == "left")) {
                    // line 665
                    echo "                        ";
                    echo twig_escape_filter($this->env, ($context["menu_toggle"] ?? null), "html", null, true);
                    echo "
                    ";
                }
                // line 667
                echo "
                </div>
            ";
            }
            // line 670
            echo "
            ";
            // line 671
            if (($this->getAttribute(($context["particle"] ?? null), "mobile_logo", []) == "center")) {
                // line 672
                echo "                <div class=\"jl-navbar-center\">
                    <a class=\"jl-navbar-item jl-logo\" href=\"";
                // line 673
                echo twig_escape_filter($this->env, ($context["url"] ?? null), "html", null, true);
                echo "\"";
                if ($this->getAttribute(($context["particle"] ?? null), "text", [])) {
                    echo " title=\"";
                    echo twig_escape_filter($this->env, strip_tags($this->getAttribute(($context["particle"] ?? null), "text", [])), "html", null, true);
                    echo "\"";
                }
                echo " aria-label=\"Back to the homepage\" rel=\"home\">
                        ";
                // line 674
                echo twig_escape_filter($this->env, (($this->getAttribute(($context["particle"] ?? null), "mobile_logo_image", [])) ? (($context["mobile_logo_render"] ?? null)) : (($context["logo_render"] ?? null))), "html", null, true);
                echo "
                    </a>
                </div>
            ";
            }
            // line 678
            echo "
            ";
            // line 679
            if ((($this->getAttribute(($context["particle"] ?? null), "mobile_logo", []) == "right") || ($this->getAttribute(($context["particle"] ?? null), "mobile_menu_toggle", []) == "right"))) {
                // line 680
                echo "                <div class=\"jl-navbar-right\">
                    ";
                // line 681
                if (($this->getAttribute(($context["particle"] ?? null), "mobile_logo", []) == "right")) {
                    // line 682
                    echo "                    <a class=\"jl-navbar-item jl-logo\" href=\"";
                    echo twig_escape_filter($this->env, ($context["url"] ?? null), "html", null, true);
                    echo "\"";
                    if ($this->getAttribute(($context["particle"] ?? null), "text", [])) {
                        echo " title=\"";
                        echo twig_escape_filter($this->env, strip_tags($this->getAttribute(($context["particle"] ?? null), "text", [])), "html", null, true);
                        echo "\"";
                    }
                    echo " aria-label=\"Back to the homepage\" rel=\"home\">
                        ";
                    // line 683
                    echo twig_escape_filter($this->env, (($this->getAttribute(($context["particle"] ?? null), "mobile_logo_image", [])) ? (($context["mobile_logo_render"] ?? null)) : (($context["logo_render"] ?? null))), "html", null, true);
                    echo "
                    </a>
                    ";
                }
                // line 686
                echo "
                    ";
                // line 687
                if (($this->getAttribute(($context["particle"] ?? null), "mobile_menu_toggle", []) == "right")) {
                    // line 688
                    echo "                        ";
                    echo twig_escape_filter($this->env, ($context["menu_toggle"] ?? null), "html", null, true);
                    echo "
                    ";
                }
                // line 690
                echo "                </div>
            ";
            }
            // line 692
            echo "
        </nav>

    ";
            // line 695
            if ($this->getAttribute(($context["particle"] ?? null), "container_maxwidth", [])) {
                // line 696
                echo "        </div>
    ";
            }
            // line 698
            echo "
</div>

";
        }
        // line 703
        $__internal_f607aeef2c31a95a7bf963452dff024ffaeb6aafbe4603f9ca3bec57be8633f4 = null;
        try {
            $__internal_f607aeef2c31a95a7bf963452dff024ffaeb6aafbe4603f9ca3bec57be8633f4 =             $this->loadTemplate("@particles/jlnavcanvas.html.twig", "@particles/jlnavbar.html.twig", 703);
        } catch (LoaderError $e) {
            // ignore missing template
        }
        if ($__internal_f607aeef2c31a95a7bf963452dff024ffaeb6aafbe4603f9ca3bec57be8633f4) {
            $__internal_f607aeef2c31a95a7bf963452dff024ffaeb6aafbe4603f9ca3bec57be8633f4->display($context);
        }
        // line 705
        if ($this->getAttribute(($context["particle"] ?? null), "menu_visibility", [])) {
            // line 707
            if ($this->getAttribute(($context["particle"] ?? null), "m_sticky", [])) {
                // line 708
                echo "</div>
";
            }
            // line 711
            echo "</div>

";
        }
    }

    // line 191
    public function getgetCustomWidth($__item__ = null, $__menu__ = null, $__mode__ = null, $__dropdown_type__ = null, $__start_level__ = null, ...$__varargs__)
    {
        $context = $this->env->mergeGlobals([
            "item" => $__item__,
            "menu" => $__menu__,
            "mode" => $__mode__,
            "dropdown_type" => $__dropdown_type__,
            "start_level" => $__start_level__,
            "varargs" => $__varargs__,
        ]);

        $blocks = [];

        ob_start(function () { return ''; });
        try {
            // line 192
            if ((((($this->getAttribute(($context["item"] ?? null), "width", [], "any", true, true)) ? (_twig_default_filter($this->getAttribute(($context["item"] ?? null), "width", []), "auto")) : ("auto")) != "auto") &&  !((($context["dropdown_type"] ?? null) == "fullwidth") && ($this->getAttribute(($context["item"] ?? null), "level", []) > ($context["start_level"] ?? null))))) {
                // line 193
                if ((($context["mode"] ?? null) == "item")) {
                    echo " style=\"position: relative;\"";
                } elseif ((                // line 194
($context["mode"] ?? null) == "submenu")) {
                    echo " style=\"width:";
                    echo twig_escape_filter($this->env, $this->getAttribute(($context["item"] ?? null), "width", []), "html", null, true);
                    echo ";\" data-g-item-width=\"";
                    echo twig_escape_filter($this->env, $this->getAttribute(($context["item"] ?? null), "width", []), "html", null, true);
                    echo "\"";
                }
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

    // line 199
    public function getgetNavbarCustomWidth($__item__ = null, $__menu__ = null, $__mode__ = null, $__dropdown_type__ = null, $__start_level__ = null, $__context__ = null, ...$__varargs__)
    {
        $context = $this->env->mergeGlobals([
            "item" => $__item__,
            "menu" => $__menu__,
            "mode" => $__mode__,
            "dropdown_type" => $__dropdown_type__,
            "start_level" => $__start_level__,
            "context" => $__context__,
            "varargs" => $__varargs__,
        ]);

        $blocks = [];

        ob_start(function () { return ''; });
        try {
            // line 200
            if ((((($this->getAttribute(($context["item"] ?? null), "width", [], "any", true, true)) ? (_twig_default_filter($this->getAttribute(($context["item"] ?? null), "width", []), "auto")) : ("auto")) != "auto") &&  !((($context["dropdown_type"] ?? null) == "fullwidth") && ($this->getAttribute(($context["item"] ?? null), "level", []) > ($context["start_level"] ?? null))))) {
                // line 201
                if ((($context["mode"] ?? null) == "item")) {
                    echo " style=\"position: relative;\"";
                } elseif ((                // line 202
($context["mode"] ?? null) == "submenu")) {
                    echo "width:";
                    echo twig_escape_filter($this->env, $this->getAttribute(($context["item"] ?? null), "width", []), "html", null, true);
                    echo ";";
                }
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

    // line 207
    public function getdisplayParticle($__item__ = null, $__context__ = null, ...$__varargs__)
    {
        $context = $this->env->mergeGlobals([
            "item" => $__item__,
            "context" => $__context__,
            "varargs" => $__varargs__,
        ]);

        $blocks = [];

        ob_start(function () { return ''; });
        try {
            // line 208
            echo "    ";
            try {                // line 209
                echo "    ";
                $context["in_particle"] = (((($this->getAttribute(($context["context"] ?? null), "in_particle", [], "any", true, true) &&  !(null === $this->getAttribute(($context["context"] ?? null), "in_particle", [])))) ? ($this->getAttribute(($context["context"] ?? null), "in_particle", [])) : (0)) + 1);
                // line 210
                echo "    ";
                if ((($context["in_particle"] ?? null) > 5)) {
                    // line 211
                    echo "        ";
                    throw new \RuntimeException("Particle loop detected"                    ,                     500                    );
                    // line 212
                    echo "    ";
                }
                // line 213
                echo "
    ";
                // line 214
                $context["context"] = twig_array_merge(($context["context"] ?? null), ["particle" => $this->getAttribute($this->getAttribute(($context["item"] ?? null), "options", []), "particle", []), "in_particle" => ($context["in_particle"] ?? null)]);
                // line 215
                echo "    ";
                $context["classes"] = $this->getAttribute($this->getAttribute($this->getAttribute(($context["item"] ?? null), "options", []), "block", []), "class", []);
                // line 216
                echo "    <div class=\"menu-item-particle";
                ((($context["classes"] ?? null)) ? (print (twig_escape_filter($this->env, (" " . ($context["classes"] ?? null)), "html", null, true))) : (print ("")));
                echo "\">
        ";
                // line 217
                $__internal_62824350bc4502ee19dbc2e99fc6bdd3bd90e7d8dd6e72f42c35efd048542144 = null;
                try {
                    $__internal_62824350bc4502ee19dbc2e99fc6bdd3bd90e7d8dd6e72f42c35efd048542144 =                     $this->loadTemplate([0 => (("particles/" . $this->getAttribute(($context["item"] ?? null), "particle", [])) . ".html.twig"), 1 => (("@particles/" . $this->getAttribute(($context["item"] ?? null), "particle", [])) . ".html.twig")], "@particles/jlnavbar.html.twig", 217);
                } catch (LoaderError $e) {
                    // ignore missing template
                }
                if ($__internal_62824350bc4502ee19dbc2e99fc6bdd3bd90e7d8dd6e72f42c35efd048542144) {
                    $__internal_62824350bc4502ee19dbc2e99fc6bdd3bd90e7d8dd6e72f42c35efd048542144->display(twig_to_array(                    // line 218
($context["context"] ?? null)));
                }
                // line 219
                echo "    </div>
    ";
            } catch (\Exception $e) {
                if ($context['gantry']->debug()) throw $e;
                if (\GANTRY_DEBUGGER) \Gantry\Debugger::addException($e);
                $context['e'] = $e;
                // line 221
                echo "        <div class=\"alert alert-error\">";
                echo twig_escape_filter($this->env, $this->getAttribute(($context["e"] ?? null), "getMessage", []), "html", null, true);
                echo "</div>
    ";
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

    // line 225
    public function getdisplayTitle($__item__ = null, ...$__varargs__)
    {
        $context = $this->env->mergeGlobals([
            "item" => $__item__,
            "varargs" => $__varargs__,
        ]);

        $blocks = [];

        ob_start(function () { return ''; });
        try {
            // line 226
            echo "    ";
            if (( !$this->getAttribute(($context["item"] ?? null), "icon_only", []) ||  !($this->getAttribute(($context["item"] ?? null), "image", []) || $this->getAttribute(($context["item"] ?? null), "icon", [])))) {
                // line 227
                echo "        ";
                if ($this->getAttribute(($context["item"] ?? null), "subtitle", [])) {
                    // line 228
                    echo "        <div>";
                    echo twig_escape_filter($this->env, $this->getAttribute(($context["item"] ?? null), "title", []), "html", null, true);
                    echo "
        <div class=\"jl-navbar-subtitle\">";
                    // line 229
                    echo twig_escape_filter($this->env, $this->getAttribute(($context["item"] ?? null), "subtitle", []), "html", null, true);
                    echo "</div></div>
        ";
                } else {
                    // line 231
                    echo "        ";
                    echo twig_escape_filter($this->env, $this->getAttribute(($context["item"] ?? null), "title", []), "html", null, true);
                    echo "
        ";
                }
                // line 233
                echo "    ";
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

    // line 236
    public function getdisplayItem($__item__ = null, $__menu__ = null, $__context__ = null, $__dropdown_type__ = null, $__start_level__ = null, ...$__varargs__)
    {
        $context = $this->env->mergeGlobals([
            "item" => $__item__,
            "menu" => $__menu__,
            "context" => $__context__,
            "dropdown_type" => $__dropdown_type__,
            "start_level" => $__start_level__,
            "varargs" => $__varargs__,
        ]);

        $blocks = [];

        ob_start(function () { return ''; });
        try {
            // line 237
            echo "    ";
            $context["self"] = $this;
            // line 238
            echo "    ";
            if ((($this->getAttribute(($context["item"] ?? null), "type", []) == "particle") &&  !$this->getAttribute($this->getAttribute($this->getAttribute(($context["item"] ?? null), "options", []), "particle", []), "enabled", []))) {
                // line 239
                echo "        ";
                $context["enabled"] = 0;
                // line 240
                echo "    ";
            }
            // line 241
            echo "    ";
            if ((($this->getAttribute(($context["item"] ?? null), "visible", []) && $this->getAttribute(($context["item"] ?? null), "enabled", [])) && ((array_key_exists("enabled", $context)) ? (_twig_default_filter(($context["enabled"] ?? null), 1)) : (1)))) {
                // line 242
                echo "        ";
                $context["title"] = ((($this->getAttribute(($context["item"] ?? null), "icon_only", []) || $this->getAttribute(($context["item"] ?? null), "link_title", []))) ? (((" title=\"" . twig_escape_filter($this->env, (($this->getAttribute(($context["item"] ?? null), "link_title", [], "any", true, true)) ? (_twig_default_filter($this->getAttribute(($context["item"] ?? null), "link_title", []), $this->getAttribute(($context["item"] ?? null), "title", []))) : ($this->getAttribute(($context["item"] ?? null), "title", []))))) . "\"")) : (""));
                // line 243
                echo "        ";
                $context["label"] = ((($this->getAttribute(($context["item"] ?? null), "icon_only", []) && ($this->getAttribute(($context["item"] ?? null), "image", []) || $this->getAttribute(($context["item"] ?? null), "icon", [])))) ? (((" aria-label=\"" . twig_escape_filter($this->env, $this->getAttribute(($context["item"] ?? null), "title", []))) . "\"")) : (""));
                // line 244
                echo "        ";
                if ($this->getAttribute($this->getAttribute(($context["context"] ?? null), "particle", []), "navbar_style", [])) {
                    // line 245
                    echo "        ";
                    $context["active"] = (($this->getAttribute(($context["menu"] ?? null), "isActive", [0 => ($context["item"] ?? null)], "method")) ? (" jl-active") : (""));
                    // line 246
                    echo "        ";
                } else {
                    // line 247
                    echo "        ";
                    $context["active"] = (($this->getAttribute(($context["menu"] ?? null), "isActive", [0 => ($context["item"] ?? null)], "method")) ? (" active") : (""));
                    // line 248
                    echo "        ";
                }
                // line 249
                echo "        ";
                $context["dropdown"] = ((($this->getAttribute(($context["item"] ?? null), "level", []) == ($context["start_level"] ?? null))) ? ((" g-" . $this->getAttribute(($context["item"] ?? null), "getDropdown", [], "method"))) : (""));
                // line 250
                echo "        ";
                $context["parrentIcon"] = $this->getAttribute($this->getAttribute(($context["context"] ?? null), "particle", []), "parrentIcon", []);
                // line 251
                echo "        ";
                if ($this->getAttribute($this->getAttribute(($context["context"] ?? null), "particle", []), "navbar_style", [])) {
                    // line 252
                    echo "        ";
                    $context["parent"] = ((($this->getAttribute(($context["item"] ?? null), "hasChildren", [], "method") &&  !$this->getAttribute(($context["item"] ?? null), "dropdown_hide", []))) ? (" jl-parent") : (""));
                    // line 253
                    echo "        ";
                } else {
                    // line 254
                    echo "        ";
                    $context["parent"] = ((($this->getAttribute(($context["item"] ?? null), "hasChildren", [], "method") &&  !$this->getAttribute(($context["item"] ?? null), "dropdown_hide", []))) ? (" g-parent") : (""));
                    // line 255
                    echo "        ";
                }
                echo "        
        
        ";
                // line 257
                $context["target"] = (((($this->getAttribute(($context["item"] ?? null), "target", []) != "_self") || $this->getAttribute($this->getAttribute(($context["context"] ?? null), "particle", []), "forceTarget", []))) ? (((" target=\"" . twig_escape_filter($this->env, $this->getAttribute(($context["item"] ?? null), "target", []))) . "\"")) : (""));
                // line 258
                echo "        ";
                $context["rel"] = $this->getAttribute(($context["item"] ?? null), "rel", []);
                // line 259
                echo "
        ";
                // line 260
                if (($this->getAttribute(($context["item"] ?? null), "target", []) == "_blank")) {
                    // line 261
                    echo "            ";
                    if (!twig_in_filter("noopener", ($context["rel"] ?? null))) {
                        // line 262
                        echo "                ";
                        $context["rel"] = ((($context["rel"] ?? null)) ? ((($context["rel"] ?? null) . " ")) : (($context["rel"] ?? null)));
                        // line 263
                        echo "                ";
                        $context["rel"] = (($context["rel"] ?? null) . "noopener");
                        // line 264
                        echo "            ";
                    }
                    // line 265
                    echo "            ";
                    if (!twig_in_filter("noreferrer", ($context["rel"] ?? null))) {
                        // line 266
                        echo "                ";
                        $context["rel"] = ((($context["rel"] ?? null)) ? ((($context["rel"] ?? null) . " ")) : (($context["rel"] ?? null)));
                        // line 267
                        echo "                ";
                        $context["rel"] = (($context["rel"] ?? null) . "noreferrer");
                        // line 268
                        echo "            ";
                    }
                    // line 269
                    echo "        ";
                }
                // line 270
                echo "
        ";
                // line 271
                $context["listAttributes"] = $this->env->getExtension('Gantry\Component\Twig\TwigExtension')->attributeArrayFilter($this->getAttribute(($context["item"] ?? null), "attributes", []));
                // line 272
                echo "        ";
                $context["linkAttributes"] = "";
                // line 273
                echo "
        ";
                // line 274
                if ($this->getAttribute(($context["item"] ?? null), "link_attributes", [])) {
                    // line 275
                    echo "            ";
                    $context['_parent'] = $context;
                    $context['_seq'] = twig_ensure_traversable($this->getAttribute(($context["item"] ?? null), "link_attributes", []));
                    foreach ($context['_seq'] as $context["_key"] => $context["attribute"]) {
                        // line 276
                        echo "                ";
                        $context['_parent'] = $context;
                        $context['_seq'] = twig_ensure_traversable($context["attribute"]);
                        foreach ($context['_seq'] as $context["key"] => $context["value"]) {
                            // line 277
                            echo "                    ";
                            if (($context["key"] == "rel")) {
                                // line 278
                                echo "                        ";
                                $context['_parent'] = $context;
                                $context['_seq'] = twig_ensure_traversable(twig_split_filter($this->env, $context["value"], " "));
                                foreach ($context['_seq'] as $context["_key"] => $context["hVal"]) {
                                    // line 279
                                    echo "                            ";
                                    if (!twig_in_filter($context["hVal"], ($context["rel"] ?? null))) {
                                        // line 280
                                        echo "                                ";
                                        $context["rel"] = ((($context["rel"] ?? null)) ? ((($context["rel"] ?? null) . " ")) : (($context["rel"] ?? null)));
                                        // line 281
                                        echo "                                ";
                                        $context["rel"] = (($context["rel"] ?? null) . $context["hVal"]);
                                        // line 282
                                        echo "                            ";
                                    }
                                    // line 283
                                    echo "                        ";
                                }
                                $_parent = $context['_parent'];
                                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['hVal'], $context['_parent'], $context['loop']);
                                $context = array_intersect_key($context, $_parent) + $_parent;
                                // line 284
                                echo "                    ";
                            } else {
                                // line 285
                                echo "                        ";
                                $context["linkAttributes"] = (((((($context["linkAttributes"] ?? null) . " ") . twig_escape_filter($this->env, $context["key"])) . "=\"") . twig_escape_filter($this->env, $context["value"], "html_attr")) . "\"");
                                // line 286
                                echo "                    ";
                            }
                            // line 287
                            echo "                ";
                        }
                        $_parent = $context['_parent'];
                        unset($context['_seq'], $context['_iterated'], $context['key'], $context['value'], $context['_parent'], $context['loop']);
                        $context = array_intersect_key($context, $_parent) + $_parent;
                        // line 288
                        echo "            ";
                    }
                    $_parent = $context['_parent'];
                    unset($context['_seq'], $context['_iterated'], $context['_key'], $context['attribute'], $context['_parent'], $context['loop']);
                    $context = array_intersect_key($context, $_parent) + $_parent;
                    // line 289
                    echo "        ";
                }
                // line 290
                echo "
        ";
                // line 292
                echo "        ";
                if (($this->getAttribute(($context["item"] ?? null), "target", []) == "_nonav")) {
                    // line 293
                    echo "            ";
                    $context["target"] = "target=\"_blank\"";
                    // line 294
                    echo "            ";
                    $context["linkAttributes"] = (($context["linkAttributes"] ?? null) . " onclick=\"window.open(this.href, 'targetWindow', 'toolbar=no,location=no,status=no,menubar=no,scrollbars=yes,resizable=yes'); return false;\"");
                    // line 295
                    echo "        ";
                }
                // line 296
                echo "        ";
                $context["item_accordion"] = (((((($this->getAttribute(($context["item"] ?? null), "type", []) == "separator") || ($this->getAttribute(($context["item"] ?? null), "type", []) == "heading")) && ($this->getAttribute(($context["item"] ?? null), "level", []) > 1)) && ($context["parent"] ?? null))) ? (" js-accordion") : (""));
                // line 297
                echo "        ";
                $context["rel"] = ((($context["rel"] ?? null)) ? (((" rel=\"" . twig_escape_filter($this->env, ($context["rel"] ?? null), "html_attr")) . "\"")) : (""));
                // line 298
                echo "        ";
                if ($this->getAttribute($this->getAttribute(($context["context"] ?? null), "particle", []), "navbar_style", [])) {
                    // line 299
                    echo "        <li class=\"item-type-";
                    echo twig_escape_filter($this->env, $this->getAttribute(($context["item"] ?? null), "type", []), "html", null, true);
                    echo " item-";
                    echo twig_escape_filter($this->env, $this->getAttribute(($context["item"] ?? null), "id", []), "html", null, true);
                    if ( !$this->getAttribute(($context["item"] ?? null), "dropdown_hide", [])) {
                        echo twig_escape_filter($this->env, ($context["parent"] ?? null), "html", null, true);
                    }
                    echo twig_escape_filter($this->env, ($context["active"] ?? null), "html", null, true);
                    if ($this->getAttribute(($context["item"] ?? null), "class", [])) {
                        echo " ";
                        echo twig_escape_filter($this->env, (($this->getAttribute(($context["item"] ?? null), "class", [], "any", true, true)) ? (_twig_default_filter($this->getAttribute(($context["item"] ?? null), "class", []), "")) : ("")), "html", null, true);
                    }
                    if ( !($context["parent"] ?? null)) {
                        if ((($this->getAttribute(($context["item"] ?? null), "type", []) == "separator") && ($this->getAttribute(($context["item"] ?? null), "level", []) != 1))) {
                            echo " jl-nav-divider";
                        } elseif ((($this->getAttribute(($context["item"] ?? null), "type", []) == "heading") && ($this->getAttribute(($context["item"] ?? null), "level", []) != 1))) {
                            echo " jl-nav-header";
                        }
                    }
                    if ((($this->getAttribute(($context["item"] ?? null), "level", []) > 1) && ($this->getAttribute($this->getAttribute(($context["context"] ?? null), "particle", []), "subnav_extended", []) == "accordion"))) {
                        echo " ";
                        if ( !$this->getAttribute(($context["item"] ?? null), "dropdown_hide", [])) {
                            echo twig_escape_filter($this->env, ($context["item_accordion"] ?? null), "html", null, true);
                        }
                        echo ((((($context["parent"] ?? null) && ($context["item_accordion"] ?? null)) && ($context["active"] ?? null))) ? (" jl-open") : (""));
                    }
                    echo "\"";
                    // line 300
                    echo $context["self"]->getgetCustomWidth(($context["item"] ?? null), ($context["menu"] ?? null), "item", ($context["dropdown"] ?? null));
                    // line 301
                    if ((($this->getAttribute($this->getAttribute(($context["context"] ?? null), "particle", [], "any", false, true), "renderTitles", [], "any", true, true)) ? (_twig_default_filter($this->getAttribute($this->getAttribute(($context["context"] ?? null), "particle", [], "any", false, true), "renderTitles", []), 0)) : (0))) {
                        echo " title=\"";
                        echo twig_escape_filter($this->env, $this->getAttribute(($context["item"] ?? null), "title", []), "html", null, true);
                        echo "\"";
                    }
                    echo ($context["listAttributes"] ?? null);
                    echo ">
                ";
                    // line 302
                    if ($this->getAttribute(($context["item"] ?? null), "url", [])) {
                        // line 303
                        echo "                    <a";
                        if ($this->getAttribute(($context["item"] ?? null), "anchor_class", [])) {
                            echo " class=\"";
                            echo twig_escape_filter($this->env, $this->getAttribute(($context["item"] ?? null), "anchor_class", []), "html", null, true);
                            echo "\"";
                        }
                        echo " href=\"";
                        echo twig_escape_filter($this->env, $this->getAttribute(($context["item"] ?? null), "url", []), "html", null, true);
                        echo twig_escape_filter($this->env, $this->getAttribute(($context["item"] ?? null), "hash", []), "html", null, true);
                        echo "\"";
                        echo ((((($context["title"] ?? null) . ($context["label"] ?? null)) . ($context["target"] ?? null)) . ($context["rel"] ?? null)) . ($context["linkAttributes"] ?? null));
                        if ($this->getAttribute(($context["item"] ?? null), "hash", [])) {
                            echo " jl-scroll";
                        }
                        echo ">
                        ";
                        // line 304
                        if ($this->getAttribute(($context["item"] ?? null), "image", [])) {
                            // line 305
                            echo "                            <img src=\"";
                            echo twig_escape_filter($this->env, $this->env->getExtension('Gantry\Component\Twig\TwigExtension')->urlFunc($this->getAttribute(($context["item"] ?? null), "image", [])));
                            echo "\" alt=\"";
                            echo twig_escape_filter($this->env, $this->getAttribute(($context["item"] ?? null), "title", []));
                            echo "\" />
                        ";
                        } elseif ($this->getAttribute(                        // line 306
($context["item"] ?? null), "icon", [])) {
                            // line 307
                            echo "                            <i class=\"";
                            echo twig_escape_filter($this->env, $this->getAttribute(($context["item"] ?? null), "icon", []), "html", null, true);
                            echo "\" aria-hidden=\"true\"></i>
                        ";
                        }
                        // line 309
                        echo "                        ";
                        echo $context["self"]->getdisplayTitle(($context["item"] ?? null));
                        echo "
                        ";
                        // line 310
                        if (((($context["parent"] ?? null) &&  !$this->getAttribute(($context["item"] ?? null), "dropdown_hide", [])) && ($context["parrentIcon"] ?? null))) {
                            // line 311
                            echo "<span jl-drop-parent-icon></span>";
                        }
                        // line 313
                        echo "                    </a>
                ";
                    } else {
                        // line 315
                        echo "                    ";
                        if ((twig_length_filter($this->env, $this->getAttribute(($context["item"] ?? null), "children", [])) || ($this->getAttribute(($context["item"] ?? null), "level", []) == 1))) {
                            // line 316
                            echo "                        <a href=\"#\" class=\"menu__";
                            echo twig_escape_filter($this->env, $this->getAttribute(($context["item"] ?? null), "type", []), "html", null, true);
                            if ($this->getAttribute(($context["item"] ?? null), "anchor_class", [])) {
                                echo " ";
                                echo twig_escape_filter($this->env, $this->getAttribute(($context["item"] ?? null), "anchor_class", []), "html", null, true);
                            }
                            echo "\"";
                            echo (((($context["title"] ?? null) . ($context["label"] ?? null)) . ($context["rel"] ?? null)) . ($context["linkAttributes"] ?? null));
                            if ((( !twig_length_filter($this->env, $this->getAttribute(($context["item"] ?? null), "children", [])) && ($this->getAttribute(($context["item"] ?? null), "level", []) == 1)) && (($this->getAttribute(($context["item"] ?? null), "type", []) == "heading") || ($this->getAttribute(($context["item"] ?? null), "type", []) == "separator")))) {
                                echo " aria-haspopup=\"true\" aria-expanded=\"false\" tabindex=\"0\"";
                            }
                            echo ">
                    ";
                        }
                        // line 318
                        echo "                    ";
                        if ($this->getAttribute(($context["item"] ?? null), "image", [])) {
                            // line 319
                            echo "                        <img src=\"";
                            echo twig_escape_filter($this->env, $this->env->getExtension('Gantry\Component\Twig\TwigExtension')->urlFunc($this->getAttribute(($context["item"] ?? null), "image", [])));
                            echo "\" alt=\"";
                            echo twig_escape_filter($this->env, $this->getAttribute(($context["item"] ?? null), "title", []));
                            echo "\" />
                    ";
                        } elseif ($this->getAttribute(                        // line 320
($context["item"] ?? null), "icon", [])) {
                            // line 321
                            echo "                        <i class=\"";
                            echo twig_escape_filter($this->env, $this->getAttribute(($context["item"] ?? null), "icon", []), "html", null, true);
                            echo "\" aria-hidden=\"true\"></i>
                    ";
                        }
                        // line 323
                        echo "                    ";
                        if (($this->getAttribute(($context["item"] ?? null), "type", []) == "particle")) {
                            // line 324
                            echo "                        ";
                            echo $context["self"]->getdisplayParticle(($context["item"] ?? null), ($context["context"] ?? null));
                            echo "
                    ";
                        } elseif (($this->getAttribute(                        // line 325
($context["item"] ?? null), "type", []) == "heading")) {
                            // line 326
                            echo "                        ";
                            echo $context["self"]->getdisplayTitle(($context["item"] ?? null));
                            echo "
                    ";
                        } else {
                            // line 328
                            echo "                    
                    ";
                            // line 329
                            if ((($this->getAttribute(($context["item"] ?? null), "level", []) == 1) || ($context["parent"] ?? null))) {
                                // line 330
                                echo $context["self"]->getdisplayTitle(($context["item"] ?? null));
                            }
                            // line 332
                            echo "
                    ";
                        }
                        // line 334
                        echo "
                    ";
                        // line 335
                        if (((($context["parent"] ?? null) &&  !$this->getAttribute(($context["item"] ?? null), "dropdown_hide", [])) && ($context["parrentIcon"] ?? null))) {
                            // line 336
                            echo "<span jl-drop-parent-icon></span>";
                        }
                        // line 338
                        echo "
                    ";
                        // line 339
                        if ((twig_length_filter($this->env, $this->getAttribute(($context["item"] ?? null), "children", [])) || ($this->getAttribute(($context["item"] ?? null), "level", []) == 1))) {
                            // line 340
                            echo "                        </a>
                    ";
                        }
                        // line 342
                        echo " 
                ";
                    }
                    // line 344
                    echo "
        ";
                } else {
                    // line 346
                    echo "        <li class=\"g-menu-item g-menu-item-type-";
                    echo twig_escape_filter($this->env, $this->getAttribute(($context["item"] ?? null), "type", []), "html", null, true);
                    echo " g-menu-item-";
                    echo twig_escape_filter($this->env, $this->getAttribute(($context["item"] ?? null), "id", []), "html", null, true);
                    if ( !$this->getAttribute(($context["item"] ?? null), "dropdown_hide", [])) {
                        echo twig_escape_filter($this->env, ($context["parent"] ?? null), "html", null, true);
                    }
                    echo twig_escape_filter($this->env, ($context["active"] ?? null), "html", null, true);
                    echo twig_escape_filter($this->env, ($context["dropdown"] ?? null), "html", null, true);
                    echo " ";
                    if (($this->getAttribute(($context["item"] ?? null), "url", []) && ($context["parent"] ?? null))) {
                        if ( !$this->getAttribute(($context["item"] ?? null), "dropdown_hide", [])) {
                            echo "g-menu-item-link-parent";
                        }
                    }
                    echo " ";
                    echo twig_escape_filter($this->env, (($this->getAttribute(($context["item"] ?? null), "class", [], "any", true, true)) ? (_twig_default_filter($this->getAttribute(($context["item"] ?? null), "class", []), "")) : ("")), "html", null, true);
                    echo "\"";
                    // line 347
                    echo $context["self"]->getgetCustomWidth(($context["item"] ?? null), ($context["menu"] ?? null), "item", ($context["dropdown"] ?? null));
                    // line 348
                    if ((($this->getAttribute($this->getAttribute(($context["context"] ?? null), "particle", [], "any", false, true), "renderTitles", [], "any", true, true)) ? (_twig_default_filter($this->getAttribute($this->getAttribute(($context["context"] ?? null), "particle", [], "any", false, true), "renderTitles", []), 0)) : (0))) {
                        echo " title=\"";
                        echo twig_escape_filter($this->env, $this->getAttribute(($context["item"] ?? null), "title", []), "html", null, true);
                        echo "\"";
                    }
                    echo ($context["listAttributes"] ?? null);
                    echo ">
            ";
                    // line 349
                    if ($this->getAttribute(($context["item"] ?? null), "url", [])) {
                        // line 350
                        echo "                <a class=\"g-menu-item-container";
                        (($this->getAttribute(($context["item"] ?? null), "anchor_class", [])) ? (print (twig_escape_filter($this->env, (" " . $this->getAttribute(($context["item"] ?? null), "anchor_class", [])), "html", null, true))) : (print ("")));
                        echo "\" href=\"";
                        echo twig_escape_filter($this->env, $this->getAttribute(($context["item"] ?? null), "url", []), "html", null, true);
                        echo twig_escape_filter($this->env, $this->getAttribute(($context["item"] ?? null), "hash", []), "html", null, true);
                        echo "\"";
                        echo ((((($context["title"] ?? null) . ($context["label"] ?? null)) . ($context["target"] ?? null)) . ($context["rel"] ?? null)) . ($context["linkAttributes"] ?? null));
                        echo ">
            ";
                    } else {
                        // line 352
                        echo "                <div class=\"g-menu-item-container";
                        (($this->getAttribute(($context["item"] ?? null), "anchor_class", [])) ? (print (twig_escape_filter($this->env, (" " . $this->getAttribute(($context["item"] ?? null), "anchor_class", [])), "html", null, true))) : (print ("")));
                        echo "\" data-g-menuparent=\"\"";
                        echo ($context["label"] ?? null);
                        echo ">";
                    }
                    // line 353
                    echo "                ";
                    if ($this->getAttribute(($context["item"] ?? null), "image", [])) {
                        // line 354
                        echo "                    <img src=\"";
                        echo twig_escape_filter($this->env, $this->env->getExtension('Gantry\Component\Twig\TwigExtension')->urlFunc($this->getAttribute(($context["item"] ?? null), "image", [])));
                        echo "\" alt=\"";
                        echo twig_escape_filter($this->env, $this->getAttribute(($context["item"] ?? null), "title", []));
                        echo "\" />
                ";
                    } elseif ($this->getAttribute(                    // line 355
($context["item"] ?? null), "icon", [])) {
                        // line 356
                        echo "                    <i class=\"";
                        echo twig_escape_filter($this->env, $this->getAttribute(($context["item"] ?? null), "icon", []), "html", null, true);
                        echo "\" aria-hidden=\"true\"></i>
                ";
                    }
                    // line 358
                    echo "                ";
                    if ($this->getAttribute(($context["item"] ?? null), "url", [])) {
                        // line 359
                        echo "                    <span class=\"g-menu-item-content\">
                        ";
                        // line 360
                        echo $context["self"]->getdisplayTitle(($context["item"] ?? null));
                        echo "
                    </span>
                    ";
                        // line 362
                        if ((($context["parent"] ?? null) &&  !$this->getAttribute(($context["item"] ?? null), "dropdown_hide", []))) {
                            // line 363
                            echo "<span class=\"g-menu-parent-indicator\" jl-drop-parent-icon data-g-menuparent=\"\"></span>";
                        }
                        // line 365
                        echo "                ";
                    } else {
                        // line 366
                        echo "                    ";
                        if (($this->getAttribute(($context["item"] ?? null), "type", []) == "particle")) {
                            // line 367
                            echo "                        ";
                            echo $context["self"]->getdisplayParticle(($context["item"] ?? null), ($context["context"] ?? null));
                            echo "
                    ";
                        } elseif (($this->getAttribute(                        // line 368
($context["item"] ?? null), "type", []) == "heading")) {
                            // line 369
                            echo "                        <span class=\"g-nav-header g-menu-item-content\"";
                            echo ($context["title"] ?? null);
                            echo ">";
                            echo $context["self"]->getdisplayTitle(($context["item"] ?? null));
                            echo "</span>
                    ";
                        } else {
                            // line 371
                            echo "                        <span class=\"g-separator g-menu-item-content\"";
                            echo ($context["title"] ?? null);
                            echo ">";
                            echo $context["self"]->getdisplayTitle(($context["item"] ?? null));
                            echo "</span>
                    ";
                        }
                        // line 373
                        echo "                    ";
                        if ((($context["parent"] ?? null) &&  !$this->getAttribute(($context["item"] ?? null), "dropdown_hide", []))) {
                            // line 374
                            echo "<span class=\"g-menu-parent-indicator\" jl-drop-parent-icon></span>";
                        }
                        // line 376
                        echo "                ";
                    }
                    // line 377
                    echo "            ";
                    if ($this->getAttribute(($context["item"] ?? null), "url", [])) {
                        echo "</a>
            ";
                    } else {
                        // line 378
                        echo "</div>";
                    }
                    // line 379
                    echo "            ";
                }
                // line 380
                echo "            ";
                if (($context["parent"] ?? null)) {
                    // line 381
                    echo $context["self"]->getdisplaySubmenu(($context["item"] ?? null), ($context["menu"] ?? null), ($context["context"] ?? null), ($context["dropdown_type"] ?? null), ($context["start_level"] ?? null));
                }
                // line 383
                echo "        </li>
    ";
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

    // line 387
    public function getdisplayContainers($__item__ = null, $__menu__ = null, $__context__ = null, $__dropdown_type__ = null, $__start_level__ = null, ...$__varargs__)
    {
        $context = $this->env->mergeGlobals([
            "item" => $__item__,
            "menu" => $__menu__,
            "context" => $__context__,
            "dropdown_type" => $__dropdown_type__,
            "start_level" => $__start_level__,
            "varargs" => $__varargs__,
        ]);

        $blocks = [];

        ob_start(function () { return ''; });
        try {
            // line 388
            echo "    ";
            $context["self"] = $this;
            // line 389
            echo "    ";
            $context["groups"] = ((($this->getAttribute(($context["item"] ?? null), "getDropdown", [], "method") == "standard")) ? ([0 => ($context["item"] ?? null)]) : ($this->getAttribute(($context["item"] ?? null), "groups", [])));
            // line 390
            echo "    ";
            if ($this->getAttribute($this->getAttribute(($context["context"] ?? null), "particle", []), "navbar_style", [])) {
                // line 391
                echo "        ";
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable(($context["groups"] ?? null));
                foreach ($context['_seq'] as $context["column"] => $context["items"]) {
                    // line 392
                    echo "        ";
                    if ((twig_length_filter($this->env, $this->getAttribute(($context["item"] ?? null), "groups", [])) > 1)) {
                        echo "<div class=\"g-block ";
                        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('toGrid')->getCallable(), [$this->getAttribute(($context["item"] ?? null), "columnWidth", [0 => $context["column"]], "method")]), "html", null, true);
                        echo "\">";
                    }
                    // line 393
                    echo "            ";
                    if (($this->getAttribute(($context["item"] ?? null), "level", []) >= 2)) {
                        // line 394
                        echo "            ";
                        if (($this->getAttribute($this->getAttribute(($context["context"] ?? null), "particle", []), "subnav_extended", []) == "drop")) {
                            // line 395
                            echo "            ";
                            $context["navDropbar_animation"] = (($this->getAttribute($this->getAttribute(($context["context"] ?? null), "particle", []), "navbar_dropdown_animation", [])) ? (((" animation: " . $this->getAttribute($this->getAttribute(($context["context"] ?? null), "particle", []), "navbar_dropdown_animation", [])) . "; animate-out: true;")) : (""));
                            // line 396
                            echo "                <div class=\"jl-dropdown jl-drop\" jl-drop=\"pos: right-top;";
                            echo twig_escape_filter($this->env, ($context["navDropbar_animation"] ?? null), "html", null, true);
                            (($this->getAttribute($this->getAttribute(($context["context"] ?? null), "particle", []), "dropnav_offset", [])) ? (print (twig_escape_filter($this->env, (" offset:" . $this->getAttribute($this->getAttribute(($context["context"] ?? null), "particle", []), "dropnav_offset", [])), "html", null, true))) : (print ("")));
                            echo "\">
            ";
                        }
                        // line 398
                        echo "                <ul class=\"jl-nav-sub\">
            ";
                    } else {
                        // line 400
                        echo "                <ul class=\"jl-nav";
                        echo ((($this->getAttribute($this->getAttribute(($context["context"] ?? null), "particle", []), "subnav_extended", []) == "drop")) ? (" jl-dropdown-nav") : (""));
                        echo " jl-nav-";
                        echo (($this->getAttribute($this->getAttribute(($context["context"] ?? null), "particle", []), "dropdown_nav_style", [])) ? ("secondary") : ("default"));
                        echo (($this->getAttribute($this->getAttribute(($context["context"] ?? null), "particle", []), "dropdown_nav_divider", [])) ? (" jl-nav-divider") : (""));
                        echo " jl-navbar-dropdown-nav\"";
                        if ((($this->getAttribute(($context["item"] ?? null), "level", []) > 1) && ($this->getAttribute($this->getAttribute(($context["context"] ?? null), "particle", []), "subnav_extended", []) == "accordion"))) {
                            echo " jl-nav=\"targets: > .js-accordion\"";
                        }
                        echo ">
            ";
                    }
                    // line 402
                    echo "                ";
                    echo $context["self"]->getdisplayItems($context["items"], ($context["menu"] ?? null), ($context["context"] ?? null), ($context["dropdown_type"] ?? null), ($context["start_level"] ?? null));
                    echo "
            </ul>
            ";
                    // line 404
                    if ((($this->getAttribute(($context["item"] ?? null), "level", []) >= 2) && ($this->getAttribute($this->getAttribute(($context["context"] ?? null), "particle", []), "subnav_extended", []) == "drop"))) {
                        // line 405
                        echo "                </div>
            ";
                    }
                    // line 407
                    echo "        ";
                    if ((twig_length_filter($this->env, $this->getAttribute(($context["item"] ?? null), "groups", [])) > 1)) {
                        echo "</div>";
                    }
                    // line 408
                    echo "        ";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['column'], $context['items'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                echo "    
    ";
            } else {
                // line 410
                echo "        <div class=\"g-grid\">
        ";
                // line 411
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable(($context["groups"] ?? null));
                foreach ($context['_seq'] as $context["column"] => $context["items"]) {
                    // line 412
                    echo "            <div class=\"g-block ";
                    echo twig_escape_filter($this->env, call_user_func_array($this->env->getFilter('toGrid')->getCallable(), [$this->getAttribute(($context["item"] ?? null), "columnWidth", [0 => $context["column"]], "method")]), "html", null, true);
                    echo "\">
                <ul class=\"g-sublevel\">
                    <li class=\"g-level-";
                    // line 414
                    echo twig_escape_filter($this->env, (($this->getAttribute(($context["item"] ?? null), "level", []) - ($context["start_level"] ?? null)) + 1), "html", null, true);
                    echo " g-go-back\">
                        <a class=\"g-menu-item-container\" href=\"#\" data-g-menuparent=\"\" jl-drop-parent-icon><span>Back</span></a>
                    </li>
                    ";
                    // line 417
                    echo $context["self"]->getdisplayItems($context["items"], ($context["menu"] ?? null), ($context["context"] ?? null), ($context["dropdown_type"] ?? null), ($context["start_level"] ?? null));
                    echo "
                </ul>
            </div>
        ";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['column'], $context['items'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 421
                echo "        </div>
    ";
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

    // line 425
    public function getdisplayItems($__items__ = null, $__menu__ = null, $__context__ = null, $__dropdown_type__ = null, $__start_level__ = null, ...$__varargs__)
    {
        $context = $this->env->mergeGlobals([
            "items" => $__items__,
            "menu" => $__menu__,
            "context" => $__context__,
            "dropdown_type" => $__dropdown_type__,
            "start_level" => $__start_level__,
            "varargs" => $__varargs__,
        ]);

        $blocks = [];

        ob_start(function () { return ''; });
        try {
            // line 426
            echo "    ";
            $context["self"] = $this;
            // line 427
            echo "    ";
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["items"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["item"]) {
                // line 428
                echo "        ";
                $context["start_level"] = (($context["start_level"]) ?? ((($context["root_level"]) ?? ($this->getAttribute($context["item"], "level", [])))));
                // line 429
                echo "        ";
                $context["dropdown"] = (($context["dropdown_type"]) ?? ($this->getAttribute($context["item"], "dropdown", [])));
                // line 430
                echo "        ";
                echo $context["self"]->getdisplayItem($context["item"], ($context["menu"] ?? null), ($context["context"] ?? null), ($context["dropdown"] ?? null), ($context["start_level"] ?? null));
                echo "
    ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['item'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
        } catch (\Exception $e) {
            ob_end_clean();

            throw $e;
        } catch (\Throwable $e) {
            ob_end_clean();

            throw $e;
        }

        return ('' === $tmp = ob_get_clean()) ? '' : new Markup($tmp, $this->env->getCharset());
    }

    // line 434
    public function getdisplaySubmenu($__item__ = null, $__menu__ = null, $__context__ = null, $__dropdown_type__ = null, $__start_level__ = null, ...$__varargs__)
    {
        $context = $this->env->mergeGlobals([
            "item" => $__item__,
            "menu" => $__menu__,
            "context" => $__context__,
            "dropdown_type" => $__dropdown_type__,
            "start_level" => $__start_level__,
            "varargs" => $__varargs__,
        ]);

        $blocks = [];

        ob_start(function () { return ''; });
        try {
            // line 435
            echo "    ";
            $context["self"] = $this;
            // line 436
            echo "    ";
            if ( !$this->getAttribute(($context["item"] ?? null), "dropdown_hide", [])) {
                // line 437
                echo "        ";
                $context["animation"] = (($this->getAttribute($this->getAttribute($this->getAttribute(($context["context"] ?? null), "gantry", [], "any", false, true), "config", [], "any", false, true), "get", [0 => "styles.menu.animation"], "method", true, true)) ? (_twig_default_filter($this->getAttribute($this->getAttribute($this->getAttribute(($context["context"] ?? null), "gantry", [], "any", false, true), "config", [], "any", false, true), "get", [0 => "styles.menu.animation"], "method"), "g-fade")) : ("g-fade"));
                // line 438
                echo "        ";
                $context["dropdown_offset"] = ((twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["context"] ?? null), "particle", []), "dropdown_offset", []))) ? (((" offset=\"" . twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["context"] ?? null), "particle", []), "dropdown_offset", []))) . "\"")) : (""));
                // line 439
                echo "        ";
                $context["navbar_animation"] = ((($this->getAttribute($this->getAttribute(($context["context"] ?? null), "particle", []), "navbar_dropdown_animation", []) &&  !$this->getAttribute($this->getAttribute(($context["context"] ?? null), "particle", []), "dropbar", []))) ? (((" animation: " . $this->getAttribute($this->getAttribute(($context["context"] ?? null), "particle", []), "navbar_dropdown_animation", [])) . "; animate-out: true;")) : (""));
                // line 440
                echo "        ";
                if (((((twig_length_filter($this->env, $this->getAttribute(($context["item"] ?? null), "groups", [])) == 1) && ( !($context["dropdown_type"] ?? null) == "fullwidth")) || (($context["dropdown_type"] ?? null) == "standard")) || (((($this->getAttribute(($context["item"] ?? null), "width", [], "any", true, true)) ? (_twig_default_filter($this->getAttribute(($context["item"] ?? null), "width", []), "auto")) : ("auto")) != "auto") && (($context["dropdown_type"] ?? null) == "fullwidth")))) {
                    // line 441
                    echo "            ";
                    $context["dropdown_dir"] = ("g-dropdown-" . (($this->getAttribute(($context["item"] ?? null), "dropdown_dir", [], "any", true, true)) ? (_twig_default_filter($this->getAttribute(($context["item"] ?? null), "dropdown_dir", []), "right")) : ("right")));
                    // line 442
                    echo "        ";
                }
                // line 443
                echo "        ";
                if ($this->getAttribute($this->getAttribute(($context["context"] ?? null), "particle", []), "navbar_style", [])) {
                    // line 444
                    echo "        ";
                    if (($this->getAttribute(($context["item"] ?? null), "level", []) >= 2)) {
                        // line 445
                        echo "            ";
                        echo $context["self"]->getdisplayContainers(($context["item"] ?? null), ($context["menu"] ?? null), ($context["context"] ?? null), ($context["dropdown_type"] ?? null), ($context["start_level"] ?? null));
                        echo "
        ";
                    } else {
                        // line 447
                        echo "        <div class=\"jl-navbar-dropdown";
                        if ($this->getAttribute($this->getAttribute(($context["context"] ?? null), "particle", []), "dropdown_large", [])) {
                            echo (($this->getAttribute($this->getAttribute(($context["context"] ?? null), "particle", []), "dropbar", [])) ? (" jl-navbar-dropdown-dropbar-large") : (" jl-navbar-dropdown-large"));
                        }
                        if ((twig_length_filter($this->env, $this->getAttribute(($context["item"] ?? null), "groups", [])) > 1)) {
                            echo " jl-navbar-dropdown-width-";
                            echo twig_escape_filter($this->env, twig_length_filter($this->env, $this->getAttribute(($context["item"] ?? null), "groups", [])), "html", null, true);
                        }
                        if ($this->getAttribute($this->getAttribute(($context["context"] ?? null), "particle", []), "dropdown_navbar_text_transform", [])) {
                            echo " jl-text-";
                            echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["context"] ?? null), "particle", []), "dropdown_navbar_text_transform", []));
                        }
                        echo ((($this->getAttribute($this->getAttribute(($context["context"] ?? null), "particle", []), "dropbar", []) && (($this->getAttribute($this->getAttribute(($context["context"] ?? null), "particle", []), "dropdown_stretch_mode", []) == "navbar") || $this->getAttribute($this->getAttribute(($context["context"] ?? null), "particle", []), "navbar_alignment", [])))) ? (" el-navbar-dropbar") : (""));
                        echo ((($this->getAttribute($this->getAttribute(($context["context"] ?? null), "particle", []), "dropdown_rmh_padding", []) &&  !$this->getAttribute($this->getAttribute(($context["context"] ?? null), "particle", []), "dropbar", []))) ? (" jl-padding-remove-horizontal") : (""));
                        echo (($this->getAttribute($this->getAttribute(($context["context"] ?? null), "particle", []), "dropdown_rmv_padding", [])) ? (" jl-padding-remove-vertical") : (""));
                        echo "\"";
                        if ($this->getAttribute($this->getAttribute(($context["context"] ?? null), "particle", []), "dropdown_stretch_mode", [])) {
                            echo " pos=\"bottom-";
                            echo ((twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["context"] ?? null), "particle", []), "dropdown_alignment", []))) ? (twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["context"] ?? null), "particle", []), "dropdown_alignment", []))) : ("left"));
                            echo "\" stretch=\"x\" boundary=\"#";
                            echo twig_escape_filter($this->env, $this->getAttribute(($context["context"] ?? null), "id", []), "html", null, true);
                            echo ".tm-header .jl-";
                            echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["context"] ?? null), "particle", []), "dropdown_stretch_mode", []));
                            echo "\"";
                        }
                        echo twig_escape_filter($this->env, ($context["dropdown_offset"] ?? null), "html", null, true);
                        if (($this->getAttribute($this->getAttribute(($context["context"] ?? null), "particle", []), "navbar_dropdown_animation", []) &&  !$this->getAttribute($this->getAttribute(($context["context"] ?? null), "particle", []), "dropbar", []))) {
                            echo " jl-drop=\"cls-drop: jl-navbar-dropdown;";
                            echo twig_escape_filter($this->env, ($context["navbar_animation"] ?? null), "html", null, true);
                            echo "\"";
                        }
                        if ((( !$this->getAttribute($this->getAttribute(($context["context"] ?? null), "particle", []), "dropdown_stretch_mode", []) && ((($this->getAttribute(($context["item"] ?? null), "width", [], "any", true, true)) ? (_twig_default_filter($this->getAttribute(($context["item"] ?? null), "width", []), "auto")) : ("auto")) != "auto")) || ($this->getAttribute($this->getAttribute(($context["context"] ?? null), "particle", []), "dropbar", []) && $this->getAttribute($this->getAttribute(($context["context"] ?? null), "particle", []), "dropdown_rmh_padding", [])))) {
                            echo " style=\"";
                            if (( !$this->getAttribute($this->getAttribute(($context["context"] ?? null), "particle", []), "dropdown_stretch_mode", []) && ((($this->getAttribute(($context["item"] ?? null), "width", [], "any", true, true)) ? (_twig_default_filter($this->getAttribute(($context["item"] ?? null), "width", []), "auto")) : ("auto")) != "auto"))) {
                                echo $context["self"]->getgetNavbarCustomWidth(($context["item"] ?? null), ($context["menu"] ?? null), "submenu", ($context["dropdown_type"] ?? null), ($context["start_level"] ?? null));
                            }
                            echo ((($this->getAttribute($this->getAttribute(($context["context"] ?? null), "particle", []), "dropbar", []) && $this->getAttribute($this->getAttribute(($context["context"] ?? null), "particle", []), "dropdown_rmh_padding", []))) ? ("--jl-position-viewport-offset: 0;") : (""));
                            echo "\"";
                        }
                        echo ">
            ";
                        // line 448
                        if ((twig_length_filter($this->env, $this->getAttribute(($context["item"] ?? null), "groups", [])) > 1)) {
                            echo "<div class=\"jl-drop-grid jl-child-width-1-";
                            echo twig_escape_filter($this->env, twig_length_filter($this->env, $this->getAttribute(($context["item"] ?? null), "groups", [])), "html", null, true);
                            echo "\" jl-grid>";
                        }
                        // line 449
                        echo "                ";
                        echo $context["self"]->getdisplayContainers(($context["item"] ?? null), ($context["menu"] ?? null), ($context["context"] ?? null), ($context["dropdown_type"] ?? null), ($context["start_level"] ?? null));
                        echo "
            ";
                        // line 450
                        if ((twig_length_filter($this->env, $this->getAttribute(($context["item"] ?? null), "groups", [])) > 1)) {
                            echo "</div>";
                        }
                        // line 451
                        echo "        </div>
        ";
                    }
                    // line 453
                    echo "        ";
                } else {
                    // line 454
                    echo "        <ul class=\"g-dropdown g-inactive ";
                    echo twig_escape_filter($this->env, ($context["animation"] ?? null), "html", null, true);
                    echo " ";
                    echo twig_escape_filter($this->env, ($context["dropdown_dir"] ?? null), "html", null, true);
                    if ($this->getAttribute($this->getAttribute(($context["context"] ?? null), "particle", []), "dropdown_navbar_text_transform", [])) {
                        echo " jl-text-";
                        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["context"] ?? null), "particle", []), "dropdown_navbar_text_transform", []));
                    }
                    echo "\"";
                    echo $context["self"]->getgetCustomWidth(($context["item"] ?? null), ($context["menu"] ?? null), "submenu", ($context["dropdown_type"] ?? null), ($context["start_level"] ?? null));
                    echo ">
            <li class=\"g-dropdown-column\">
               ";
                    // line 456
                    echo $context["self"]->getdisplayContainers(($context["item"] ?? null), ($context["menu"] ?? null), ($context["context"] ?? null), ($context["dropdown_type"] ?? null), ($context["start_level"] ?? null));
                    echo "
            </li>
        </ul>        
        ";
                }
                // line 460
                echo "
    ";
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
        return "@particles/jlnavbar.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  2622 => 460,  2615 => 456,  2601 => 454,  2598 => 453,  2594 => 451,  2590 => 450,  2585 => 449,  2579 => 448,  2537 => 447,  2531 => 445,  2528 => 444,  2525 => 443,  2522 => 442,  2519 => 441,  2516 => 440,  2513 => 439,  2510 => 438,  2507 => 437,  2504 => 436,  2501 => 435,  2485 => 434,  2463 => 430,  2460 => 429,  2457 => 428,  2452 => 427,  2449 => 426,  2433 => 425,  2416 => 421,  2406 => 417,  2400 => 414,  2394 => 412,  2390 => 411,  2387 => 410,  2378 => 408,  2373 => 407,  2369 => 405,  2367 => 404,  2361 => 402,  2348 => 400,  2344 => 398,  2337 => 396,  2334 => 395,  2331 => 394,  2328 => 393,  2321 => 392,  2316 => 391,  2313 => 390,  2310 => 389,  2307 => 388,  2291 => 387,  2274 => 383,  2271 => 381,  2268 => 380,  2265 => 379,  2262 => 378,  2256 => 377,  2253 => 376,  2250 => 374,  2247 => 373,  2239 => 371,  2231 => 369,  2229 => 368,  2224 => 367,  2221 => 366,  2218 => 365,  2215 => 363,  2213 => 362,  2208 => 360,  2205 => 359,  2202 => 358,  2196 => 356,  2194 => 355,  2187 => 354,  2184 => 353,  2177 => 352,  2166 => 350,  2164 => 349,  2155 => 348,  2153 => 347,  2134 => 346,  2130 => 344,  2126 => 342,  2122 => 340,  2120 => 339,  2117 => 338,  2114 => 336,  2112 => 335,  2109 => 334,  2105 => 332,  2102 => 330,  2100 => 329,  2097 => 328,  2091 => 326,  2089 => 325,  2084 => 324,  2081 => 323,  2075 => 321,  2073 => 320,  2066 => 319,  2063 => 318,  2048 => 316,  2045 => 315,  2041 => 313,  2038 => 311,  2036 => 310,  2031 => 309,  2025 => 307,  2023 => 306,  2016 => 305,  2014 => 304,  1997 => 303,  1995 => 302,  1986 => 301,  1984 => 300,  1956 => 299,  1953 => 298,  1950 => 297,  1947 => 296,  1944 => 295,  1941 => 294,  1938 => 293,  1935 => 292,  1932 => 290,  1929 => 289,  1923 => 288,  1917 => 287,  1914 => 286,  1911 => 285,  1908 => 284,  1902 => 283,  1899 => 282,  1896 => 281,  1893 => 280,  1890 => 279,  1885 => 278,  1882 => 277,  1877 => 276,  1872 => 275,  1870 => 274,  1867 => 273,  1864 => 272,  1862 => 271,  1859 => 270,  1856 => 269,  1853 => 268,  1850 => 267,  1847 => 266,  1844 => 265,  1841 => 264,  1838 => 263,  1835 => 262,  1832 => 261,  1830 => 260,  1827 => 259,  1824 => 258,  1822 => 257,  1816 => 255,  1813 => 254,  1810 => 253,  1807 => 252,  1804 => 251,  1801 => 250,  1798 => 249,  1795 => 248,  1792 => 247,  1789 => 246,  1786 => 245,  1783 => 244,  1780 => 243,  1777 => 242,  1774 => 241,  1771 => 240,  1768 => 239,  1765 => 238,  1762 => 237,  1746 => 236,  1730 => 233,  1724 => 231,  1719 => 229,  1714 => 228,  1711 => 227,  1708 => 226,  1696 => 225,  1677 => 221,  1670 => 219,  1667 => 218,  1659 => 217,  1654 => 216,  1651 => 215,  1649 => 214,  1646 => 213,  1643 => 212,  1640 => 211,  1637 => 210,  1634 => 209,  1632 => 208,  1619 => 207,  1599 => 202,  1596 => 201,  1594 => 200,  1577 => 199,  1555 => 194,  1552 => 193,  1550 => 192,  1534 => 191,  1527 => 711,  1523 => 708,  1521 => 707,  1519 => 705,  1509 => 703,  1503 => 698,  1499 => 696,  1497 => 695,  1492 => 692,  1488 => 690,  1482 => 688,  1480 => 687,  1477 => 686,  1471 => 683,  1460 => 682,  1458 => 681,  1455 => 680,  1453 => 679,  1450 => 678,  1443 => 674,  1433 => 673,  1430 => 672,  1428 => 671,  1425 => 670,  1420 => 667,  1414 => 665,  1412 => 664,  1409 => 663,  1403 => 660,  1392 => 659,  1390 => 658,  1385 => 655,  1383 => 654,  1378 => 651,  1372 => 649,  1370 => 648,  1365 => 645,  1349 => 643,  1347 => 642,  1341 => 640,  1338 => 639,  1336 => 638,  1333 => 635,  1328 => 632,  1324 => 631,  1320 => 629,  1313 => 626,  1311 => 625,  1306 => 622,  1301 => 619,  1294 => 615,  1290 => 613,  1288 => 612,  1285 => 611,  1282 => 610,  1278 => 609,  1273 => 608,  1268 => 607,  1266 => 606,  1263 => 605,  1256 => 601,  1252 => 599,  1250 => 598,  1247 => 597,  1244 => 596,  1240 => 595,  1235 => 594,  1230 => 593,  1228 => 592,  1225 => 591,  1219 => 588,  1214 => 587,  1212 => 586,  1208 => 584,  1206 => 583,  1203 => 582,  1198 => 579,  1191 => 575,  1187 => 573,  1185 => 572,  1182 => 571,  1179 => 570,  1175 => 569,  1170 => 568,  1165 => 567,  1163 => 566,  1160 => 565,  1154 => 562,  1149 => 561,  1147 => 560,  1142 => 557,  1140 => 556,  1137 => 555,  1132 => 552,  1125 => 548,  1121 => 546,  1119 => 545,  1116 => 544,  1110 => 541,  1107 => 540,  1105 => 539,  1102 => 538,  1096 => 535,  1091 => 534,  1089 => 533,  1086 => 532,  1080 => 529,  1069 => 528,  1067 => 527,  1063 => 525,  1061 => 524,  1024 => 522,  1021 => 521,  1016 => 519,  1011 => 518,  1009 => 517,  1001 => 515,  998 => 514,  994 => 513,  982 => 511,  979 => 510,  977 => 509,  952 => 505,  950 => 504,  948 => 503,  946 => 501,  944 => 500,  942 => 498,  939 => 497,  937 => 496,  935 => 495,  932 => 493,  928 => 491,  922 => 489,  910 => 487,  908 => 486,  905 => 485,  902 => 484,  900 => 483,  897 => 482,  893 => 480,  887 => 478,  875 => 476,  873 => 475,  870 => 474,  868 => 473,  867 => 472,  865 => 471,  863 => 470,  860 => 469,  858 => 468,  854 => 467,  852 => 466,  849 => 465,  847 => 464,  844 => 463,  841 => 433,  838 => 424,  835 => 386,  832 => 235,  829 => 224,  826 => 206,  823 => 198,  819 => 188,  812 => 184,  806 => 181,  799 => 180,  793 => 177,  785 => 175,  783 => 174,  778 => 173,  775 => 172,  773 => 171,  770 => 170,  766 => 168,  762 => 167,  753 => 166,  749 => 165,  732 => 164,  729 => 163,  726 => 162,  723 => 161,  720 => 160,  717 => 159,  714 => 158,  711 => 157,  709 => 156,  707 => 153,  706 => 152,  705 => 150,  702 => 149,  697 => 146,  689 => 143,  682 => 142,  676 => 141,  667 => 140,  664 => 139,  661 => 138,  658 => 137,  654 => 136,  642 => 135,  640 => 134,  638 => 133,  636 => 132,  633 => 130,  629 => 128,  626 => 127,  624 => 126,  621 => 125,  616 => 122,  610 => 121,  607 => 120,  601 => 119,  596 => 118,  590 => 114,  588 => 113,  586 => 112,  581 => 110,  571 => 107,  569 => 106,  563 => 105,  556 => 103,  554 => 102,  527 => 100,  525 => 99,  517 => 98,  509 => 97,  501 => 96,  491 => 95,  483 => 94,  475 => 93,  466 => 91,  458 => 90,  450 => 89,  440 => 88,  432 => 87,  420 => 86,  394 => 84,  392 => 83,  373 => 82,  365 => 81,  357 => 80,  347 => 79,  337 => 78,  327 => 75,  325 => 74,  319 => 73,  311 => 72,  301 => 71,  293 => 70,  281 => 69,  273 => 68,  265 => 67,  237 => 65,  235 => 64,  225 => 63,  213 => 62,  205 => 61,  201 => 59,  190 => 58,  188 => 57,  180 => 56,  178 => 55,  165 => 53,  163 => 52,  155 => 51,  151 => 50,  145 => 49,  139 => 48,  137 => 47,  134 => 46,  132 => 45,  130 => 44,  127 => 42,  123 => 40,  121 => 39,  118 => 38,  114 => 36,  108 => 33,  103 => 32,  97 => 30,  94 => 29,  89 => 26,  87 => 25,  82 => 24,  79 => 23,  77 => 22,  74 => 20,  72 => 19,  70 => 17,  68 => 16,  66 => 15,  62 => 12,  59 => 11,  56 => 10,  48 => 9,  45 => 8,  43 => 7,  37 => 4,  31 => 2,  30 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Source("", "@particles/jlnavbar.html.twig", "D:\\Apache24\\htdocs\\Spice_Bites\\templates\\jl_bruno_free\\particles\\jlnavbar.html.twig");
    }
}
