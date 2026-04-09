<?php
return [
    '@class' => 'Gantry\\Component\\File\\CompiledYamlFile',
    'filename' => 'D:/Apache24/htdocs/Spice_Bites/templates/jl_bruno_free/blueprints/styles/copyright.yaml',
    'modified' => 1775727461,
    'data' => [
        'name' => 'Copyright Styles',
        'description' => 'Copyright styles for the theme',
        'type' => 'section',
        'form' => [
            'fields' => [
                'background' => [
                    'type' => 'input.colorpicker',
                    'label' => 'Background',
                    'default' => '#ffffff'
                ],
                'text-color' => [
                    'type' => 'input.colorpicker',
                    'label' => 'Text Color',
                    'default' => '#030303'
                ],
                'link-color' => [
                    'type' => 'input.colorpicker',
                    'label' => 'Link Color',
                    'default' => '#030303'
                ],
                'link-hover-color' => [
                    'type' => 'input.colorpicker',
                    'label' => 'Link Hover Color',
                    'default' => '#c59d5f'
                ]
            ]
        ]
    ]
];
