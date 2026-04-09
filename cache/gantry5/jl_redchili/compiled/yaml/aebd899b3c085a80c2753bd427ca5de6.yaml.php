<?php
return [
    '@class' => 'Gantry\\Component\\File\\CompiledYamlFile',
    'filename' => 'D:\\Apache24\\htdocs\\Spice_Bites/templates/jl_redchili/blueprints/styles/menustyle.yaml',
    'modified' => 1775728761,
    'data' => [
        'name' => 'Menu Styles',
        'description' => 'Set menu style options.',
        'type' => 'core',
        'form' => [
            'fields' => [
                '_tabs' => [
                    'type' => 'container.tabs',
                    'fields' => [
                        '_tab_toplevel' => [
                            'label' => 'Top Level',
                            'fields' => [
                                'font-families' => [
                                    'type' => 'select.selectize',
                                    'label' => 'Font Families',
                                    'description' => 'Choose the font family for menu items.',
                                    'default' => 2,
                                    'options' => [
                                        1 => 'Title Font',
                                        2 => 'Body Font'
                                    ]
                                ],
                                'text-color' => [
                                    'type' => 'input.colorpicker',
                                    'label' => 'Text',
                                    'default' => '#182333'
                                ],
                                'text-color-active' => [
                                    'type' => 'input.colorpicker',
                                    'label' => 'Hover & Active Text',
                                    'default' => '#182333'
                                ],
                                'item-gap' => [
                                    'type' => 'input.text',
                                    'label' => 'Menu Items Gap',
                                    'description' => 'Specify the default gap of menu items.',
                                    'default' => '30px',
                                    'pattern' => '\\d+(\\.\\d+){0,1}(px)'
                                ],
                                'item-height' => [
                                    'type' => 'input.text',
                                    'label' => 'Menu Items Height',
                                    'description' => 'Specify the default height of menu items.',
                                    'default' => '80px',
                                    'pattern' => '\\d+(\\.\\d+){0,1}(px)'
                                ]
                            ]
                        ],
                        '_tab_sublevel' => [
                            'label' => 'Sub Level',
                            'fields' => [
                                'sublevel-background' => [
                                    'type' => 'input.colorpicker',
                                    'label' => 'Background',
                                    'default' => '#ffffff'
                                ],
                                'sublevel-text-color' => [
                                    'type' => 'input.colorpicker',
                                    'label' => 'Text',
                                    'default' => '#999999'
                                ],
                                'sublevel-background-hover' => [
                                    'type' => 'input.colorpicker',
                                    'label' => 'Hover Background',
                                    'default' => 'rgba(255, 255, 255, 0)'
                                ],
                                'sublevel-text-color-hover' => [
                                    'type' => 'input.colorpicker',
                                    'label' => 'Hover Color',
                                    'default' => '#333333'
                                ],
                                'sublevel-text-color-active' => [
                                    'type' => 'input.colorpicker',
                                    'label' => 'Active Color',
                                    'default' => '#333333'
                                ]
                            ]
                        ]
                    ]
                ]
            ]
        ]
    ]
];
