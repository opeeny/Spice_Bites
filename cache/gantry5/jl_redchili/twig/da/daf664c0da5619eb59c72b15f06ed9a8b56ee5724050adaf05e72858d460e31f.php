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

/* @nucleus/content/missing.html.twig */
class __TwigTemplate_28fe855cd09977b9ff2566d9f9924f32c216a19746e985f98c2f1c342bb06bc0 extends \Twig\Template
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
        echo "<div class=\"alert alert-error\"><strong>Missing content:</strong> '";
        echo twig_escape_filter($this->env, $this->getAttribute(($context["segment"] ?? null), "subtype", []), "html", null, true);
        echo "' ";
        echo twig_escape_filter($this->env, $this->getAttribute(($context["segment"] ?? null), "type", []), "html", null, true);
        echo " cannot be found.</div>
";
    }

    public function getTemplateName()
    {
        return "@nucleus/content/missing.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  30 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Source("", "@nucleus/content/missing.html.twig", "D:\\Apache24\\htdocs\\Spice_Bites\\media\\gantry5\\engines\\nucleus\\templates\\content\\missing.html.twig");
    }
}
