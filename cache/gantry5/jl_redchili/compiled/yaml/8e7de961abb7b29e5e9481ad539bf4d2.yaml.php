<?php
return [
    '@class' => 'Gantry\\Component\\File\\CompiledYamlFile',
    'filename' => 'D:\\Apache24\\htdocs\\Spice_Bites/templates/jl_redchili/blueprints/styles/copyright.yaml',
    'modified' => 1775728761,
    'data' => [
        'name' => 'Copyright Styles',
        'description' => 'Copyright styles for the theme',
        'type' => 'section',
        'form' => [
            'fields' => [
                'background' => [
                    'type' => 'input.colorpicker',
                    'label' => 'Background',
                    'default' => '#111111'
                ],
                'text-color' => [
                    'type' => 'input.colorpicker',
                    'label' => 'Text Color',
                    'default' => 'rgba(255, 255, 255, 0.5)'
                ],
                'link-color' => [
                    'type' => 'input.colorpicker',
                    'label' => 'Link Color',
                    'default' => 'rgba(255, 255, 255, 0.5)'
                ],
                'link-hover-color' => [
                    'type' => 'input.colorpicker',
                    'label' => 'Link Hover Color',
                    'default' => 'rgba(255, 255, 255, 0.5)'
                ]
            ]
        ]
    ]
];
