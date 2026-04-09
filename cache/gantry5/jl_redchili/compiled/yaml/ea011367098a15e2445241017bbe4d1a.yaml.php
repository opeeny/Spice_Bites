<?php
return [
    '@class' => 'Gantry\\Component\\File\\CompiledYamlFile',
    'filename' => 'D:\\Apache24\\htdocs\\Spice_Bites/templates/jl_redchili/blueprints/styles/accent.yaml',
    'modified' => 1775728761,
    'data' => [
        'name' => 'Accent Colors',
        'description' => 'Accent colors for the theme',
        'type' => 'core',
        'form' => [
            'fields' => [
                'color-1' => [
                    'type' => 'input.colorpicker',
                    'label' => 'Accent Color 1',
                    'default' => '#0278ae'
                ],
                'color-2' => [
                    'type' => 'input.colorpicker',
                    'label' => 'Accent Color 2',
                    'default' => '#ef7171'
                ]
            ]
        ]
    ]
];
