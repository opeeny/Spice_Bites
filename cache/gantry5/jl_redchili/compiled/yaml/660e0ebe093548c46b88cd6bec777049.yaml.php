<?php
return [
    '@class' => 'Gantry\\Component\\File\\CompiledYamlFile',
    'filename' => 'D:/Apache24/htdocs/Spice_Bites/templates/jl_redchili/blueprints/styles/base.yaml',
    'modified' => 1775728761,
    'data' => [
        'name' => 'Base Styles',
        'description' => 'Base styles for the theme',
        'type' => 'core',
        'form' => [
            'fields' => [
                'text-color' => [
                    'type' => 'input.colorpicker',
                    'label' => 'Base Text Color',
                    'default' => '#464646'
                ],
                'background' => [
                    'type' => 'input.colorpicker',
                    'label' => 'Base Background',
                    'default' => '#f7f7f7'
                ],
                'heading-color' => [
                    'type' => 'input.colorpicker',
                    'label' => 'Base Heading Color',
                    'default' => '#464646'
                ]
            ]
        ]
    ]
];
