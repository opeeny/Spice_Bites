<?php
return [
    '@class' => 'Gantry\\Component\\File\\CompiledYamlFile',
    'filename' => 'D:/Apache24/htdocs/Spice_Bites/templates/jl_bruno_free/gantry/theme.yaml',
    'modified' => 1775727462,
    'data' => [
        'details' => [
            'name' => 'Bruno Free',
            'version' => '1.2.5',
            'icon' => 'paper-plane',
            'date' => 'March 10, 2026',
            'author' => [
                'name' => 'JoomLead',
                'email' => 'support@joomlead.com',
                'link' => 'http://www.joomlead.com'
            ],
            'documentation' => [
                'link' => 'http://docs.gantry.org/gantry5'
            ],
            'support' => [
                'link' => 'https://gitter.im/gantry/gantry5'
            ],
            'copyright' => '(C) 2026 JoomLead. All rights reserved.',
            'license' => 'GPLv2',
            'description' => 'Bruno Free',
            'images' => [
                'thumbnail' => 'admin/images/preset1.png',
                'preview' => 'admin/images/preset1.png'
            ]
        ],
        'configuration' => [
            'gantry' => [
                'platform' => 'joomla',
                'engine' => 'nucleus'
            ],
            'theme' => [
                'parent' => 'jl_bruno_free',
                'base' => 'gantry-theme://common',
                'file' => 'gantry-theme://includes/theme.php',
                'class' => '\\Gantry\\Framework\\Theme'
            ],
            'fonts' => [
                'roboto' => [
                    400 => 'gantry-theme://fonts/roboto_regular_macroman/Roboto-Regular-webfont',
                    500 => 'gantry-theme://fonts/roboto_medium_macroman/Roboto-Medium-webfont',
                    700 => 'gantry-theme://fonts/roboto_bold_macroman/Roboto-Bold-webfont'
                ]
            ],
            'css' => [
                'compiler' => '\\Gantry\\Component\\Stylesheet\\ScssCompiler',
                'options' => [
                    'compatibility' => '5.5',
                    'deprecations' => true
                ],
                'paths' => [
                    0 => 'gantry-theme://scss',
                    1 => 'gantry-engine://scss'
                ],
                'files' => [
                    0 => 'bruno',
                    1 => 'bruno-joomla',
                    2 => 'custom'
                ],
                'persistent' => [
                    0 => 'bruno'
                ],
                'overrides' => [
                    0 => 'bruno-joomla',
                    1 => 'custom'
                ]
            ],
            'section-variations' => [
                'Padding Variations' => [
                    'jl-section' => 'Default',
                    'jl-section-xsmall' => 'X-Small',
                    'jl-section-small' => 'Small',
                    'jl-section-large' => 'Large',
                    'jl-section-xlarge' => 'X-Large',
                    'jl-padding-remove-vertical' => 'None'
                ],
                'Predefined Section Style' => [
                    'jl-section-default' => 'Default',
                    'jl-section-muted' => 'Muted',
                    'jl-section-primary' => 'Primary',
                    'jl-section-secondary' => 'Secondary'
                ],
                'Remove Padding / Margin' => [
                    'nomarginall' => 'No Margin All',
                    'nopaddingall' => 'No Padding All',
                    'nomargintop' => 'No Margin Top',
                    'nopaddingtop' => 'No Padding Top',
                    'nomarginbottom' => 'No Margin Bottom',
                    'nopaddingbottom' => 'No Padding Bottom',
                    'nomarginleft' => 'No Margin Left',
                    'nopaddingleft' => 'No Padding Left',
                    'nomarginright' => 'No Margin Right',
                    'nopaddingright' => 'No Padding Right'
                ],
                'Text Color' => [
                    'jl-light' => 'Light',
                    'jl-dark' => 'Dark'
                ],
                'Visibility' => [
                    'jl-visible@s' => 'Visible Small',
                    'jl-visible@m' => 'Visible Medium',
                    'jl-visible@l' => 'Visible Large',
                    'jl-visible@xl' => 'Visible X-Large',
                    'jl-hidden@s' => 'Hidden Small',
                    'jl-hidden@m' => 'Hidden Medium',
                    'jl-hidden@l' => 'Hidden Large',
                    'jl-hidden@xl' => 'Hidden X-Large'
                ]
            ],
            'block-variations' => [
                'Box Variations' => [
                    'box1' => 'Box 1',
                    'box2' => 'Box 2',
                    'box3' => 'Box 3',
                    'box4' => 'Box 4'
                ],
                'Effects' => [
                    'shadow' => 'Shadow 1',
                    'shadow2' => 'Shadow 2',
                    'rounded' => 'Rounded',
                    'square' => 'Square'
                ],
                'Utility' => [
                    'disabled' => 'Disabled',
                    'align-right' => 'Align Right',
                    'align-left' => 'Align Left',
                    'center' => 'Center',
                    'full-width' => 'Full Width',
                    'equal-height' => 'Equal Height'
                ],
                'Remove Padding / Margin' => [
                    'nomarginall' => 'No Margin All',
                    'nopaddingall' => 'No Padding All',
                    'nomargintop' => 'No Margin Top',
                    'nopaddingtop' => 'No Padding Top',
                    'nomarginbottom' => 'No Margin Bottom',
                    'nopaddingbottom' => 'No Padding Bottom',
                    'nomarginleft' => 'No Margin Left',
                    'nopaddingleft' => 'No Padding Left',
                    'nomarginright' => 'No Margin Right',
                    'nopaddingright' => 'No Padding Right'
                ],
                'Text Color' => [
                    'jl-light' => 'Light',
                    'jl-dark' => 'Dark'
                ],
                'Visibility' => [
                    'jl-visible@s' => 'Visible Small',
                    'jl-visible@m' => 'Visible Medium',
                    'jl-visible@l' => 'Visible Large',
                    'jl-visible@xl' => 'Visible X-Large',
                    'jl-hidden@s' => 'Hidden Small',
                    'jl-hidden@m' => 'Hidden Medium',
                    'jl-hidden@l' => 'Hidden Large',
                    'jl-hidden@xl' => 'Hidden X-Large'
                ]
            ],
            'dependencies' => [
                'gantry' => '5.5'
            ]
        ],
        'admin' => [
            'styles' => [
                'core' => [
                    0 => 'base',
                    1 => 'accent'
                ],
                'section' => [
                    0 => 'navigation',
                    1 => 'slideshow',
                    2 => 'hero',
                    3 => 'topa',
                    4 => 'topb',
                    5 => 'topc',
                    6 => 'topd',
                    7 => 'above',
                    8 => 'main',
                    9 => 'below',
                    10 => 'bottoma',
                    11 => 'bottomb',
                    12 => 'bottomc',
                    13 => 'bottomd',
                    14 => 'extended',
                    15 => 'footer',
                    16 => 'copyright'
                ],
                'configuration' => [
                    0 => 'breakpoints'
                ]
            ]
        ]
    ]
];
