<?php
return [
    '@class' => 'Gantry\\Component\\File\\CompiledYamlFile',
    'filename' => 'D:\\Apache24\\htdocs\\Spice_Bites/templates/jl_bruno_free/blueprints/styles/extended.yaml',
    'modified' => 1775727461,
    'data' => [
        'name' => 'Extended Section',
        'description' => 'Customizing style for Extended section',
        'type' => 'section',
        'form' => [
            'fields' => [
                'background' => [
                    'type' => 'input.colorpicker',
                    'label' => 'Background',
                    'default' => 'rgba(255,255,255, 0)'
                ],
                'text-color' => [
                    'type' => 'input.colorpicker',
                    'label' => 'Text',
                    'default' => '#030303'
                ]
            ]
        ]
    ]
];
