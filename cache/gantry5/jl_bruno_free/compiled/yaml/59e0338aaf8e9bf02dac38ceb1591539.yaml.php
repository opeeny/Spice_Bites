<?php
return [
    '@class' => 'Gantry\\Component\\File\\CompiledYamlFile',
    'filename' => 'D:\\Apache24\\htdocs\\Spice_Bites/templates/jl_bruno_free/blueprints/styles/slideshow.yaml',
    'modified' => 1775727461,
    'data' => [
        'name' => 'Slideshow Section',
        'description' => 'Customizing style for Slideshow section',
        'type' => 'section',
        'form' => [
            'fields' => [
                'background' => [
                    'type' => 'input.colorpicker',
                    'label' => 'Background Color',
                    'default' => 'rgba(255,255,255, 0)'
                ],
                'text-color' => [
                    'type' => 'input.colorpicker',
                    'label' => 'Text Color',
                    'default' => '#030303'
                ]
            ]
        ]
    ]
];
