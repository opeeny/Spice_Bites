<?php
return [
    '@class' => 'Gantry\\Component\\File\\CompiledYamlFile',
    'filename' => 'D:\\Apache24\\htdocs\\Spice_Bites/templates/jl_bruno_free/particles/jlnavsticky.yaml',
    'modified' => 1775727462,
    'data' => [
        'name' => 'JL Nav Sticky',
        'description' => 'Make elements remain at the top of the viewport, like a sticky navigation.',
        'type' => 'atom',
        'configuration' => [
            'caching' => [
                'type' => 'static'
            ]
        ],
        'form' => [
            'overrideable' => false,
            'fields' => [
                'enabled' => [
                    'type' => 'input.checkbox',
                    'label' => 'Enabled',
                    'description' => 'Globally enable particle.',
                    'default' => true
                ],
                'section' => [
                    'type' => 'input.text',
                    'label' => 'Section',
                    'description' => 'Define the ID or class of the section that you want to set as fixed.',
                    'placeholder' => '#g-navigation'
                ],
                'sticky' => [
                    'type' => 'select.selectize',
                    'label' => 'Sticky',
                    'description' => 'Let the navbar stick at the top of the viewport while scrolling or only when scrolling up.',
                    'default' => 'sticky',
                    'options' => [
                        'sticky' => 'Sticky',
                        'stickyonscroll' => 'Sticky on scroll up'
                    ]
                ],
                'media' => [
                    'type' => 'select.selectize',
                    'label' => 'Media',
                    'description' => 'Select the device size for sticky.',
                    'default' => 'medium',
                    'selectize' => [
                        'allowEmptyOption' => true
                    ],
                    'options' => [
                        '' => 'Always',
                        's' => 'Small (Phone Landscape)',
                        'm' => 'Medium (Tablet Landscape)',
                        'l' => 'Large (Desktop)',
                        'xl' => 'X-Large (Large Screens)'
                    ]
                ],
                'top' => [
                    'type' => 'input.text',
                    'label' => 'Start',
                    'description' => 'To apply an offset to when the element should start being sticky. The value can be in vh, % and px, CSS selector like #your-css-id also supported'
                ],
                'end' => [
                    'type' => 'input.text',
                    'label' => 'End',
                    'description' => 'To apply an offset to when the element should stop being sticky. The value can be in vh, % and px, CSS selector like'
                ],
                'offset' => [
                    'type' => 'input.number',
                    'label' => 'Offset',
                    'description' => 'To set an offset to the viewport\'s edge when the element is sticky.',
                    'min' => 0,
                    'placeholder' => 0
                ],
                'copyright' => [
                    'type' => 'separator.note',
                    'class' => 'alert alert-success',
                    'content' => 'JL Sticky Atom <strong>Version: 2.3.4</strong> by <a href="https://joomlead.com" target="_blank">Joomlead</a> | <a href="https://joomlead.com/g5/docs/sticky-atom-documentation/" target="_blank">Documentation</a>'
                ]
            ]
        ]
    ]
];
