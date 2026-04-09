<?php
return [
    '@class' => 'Gantry\\Component\\File\\CompiledYamlFile',
    'filename' => 'D:\\Apache24\\htdocs\\Spice_Bites/templates/jl_bruno_free/particles/jlpreloader.yaml',
    'modified' => 1775727462,
    'data' => [
        'name' => 'JL Preloader',
        'description' => 'Create a simple preloader on the screen while the rest of the page’s content is still loading.',
        'type' => 'atom',
        'icon' => 'fa-image',
        'form' => [
            'overrideable' => false,
            'fields' => [
                'enabled' => [
                    'type' => 'input.checkbox',
                    'label' => 'Enabled',
                    'description' => 'Globally enable Lightcase atom.',
                    'default' => true
                ],
                '_tabs' => [
                    'type' => 'container.tabs',
                    'fields' => [
                        '_tab_topbar' => [
                            'label' => 'Topbar',
                            'overridable' => false,
                            'fields' => [
                                'preloader_type' => [
                                    'type' => 'select.select',
                                    'label' => 'Preloader Type',
                                    'default' => '',
                                    'options' => [
                                        '' => 'Topbar',
                                        'preloader' => 'Preloader'
                                    ]
                                ],
                                'element' => [
                                    'type' => 'input.text',
                                    'label' => 'Section ID',
                                    'placeholder' => '#g-page-surround',
                                    'description' => 'Enter your unique Section id for creating topbar progress indicator. ie <code>#g-page-surround</code>'
                                ],
                                'bar_thickness' => [
                                    'type' => 'input.number',
                                    'label' => 'Bar thickness',
                                    'min' => 1,
                                    'default' => 3,
                                    'description' => 'The progress bar thickness.'
                                ],
                                'shadowBlur' => [
                                    'type' => 'input.number',
                                    'label' => 'Shadow Blur',
                                    'min' => 1
                                ],
                                'shadowColor' => [
                                    'type' => 'input.colorpicker',
                                    'label' => 'Shadow Color',
                                    'default' => 'rgba(0, 0, 0, 0.6)'
                                ],
                                'gradient_info' => [
                                    'type' => 'separator.note',
                                    'class' => 'alert alert-info',
                                    'content' => 'List of gradient color stops used to draw the progress bar. See <a href="https://developer.mozilla.org/en-US/docs/Web/CSS/gradient/linear-gradient#description" target="_blank">Customizing Gradients</a>'
                                ],
                                'barColor0' => [
                                    'type' => 'input.colorpicker',
                                    'label' => 'Bar Red',
                                    'default' => 'rgba(211, 84, 0, 0.9)'
                                ],
                                'barColor25' => [
                                    'type' => 'input.colorpicker',
                                    'label' => 'Bar Orange',
                                    'default' => 'rgba(230, 126, 34, 0.9)'
                                ],
                                'barColor50' => [
                                    'type' => 'input.colorpicker',
                                    'label' => 'Bar Yellow',
                                    'default' => 'rgba(241, 196, 15, 0.9)'
                                ],
                                'barColor75' => [
                                    'type' => 'input.colorpicker',
                                    'label' => 'Bar Green',
                                    'default' => 'rgba(26, 188, 156, 0.9)'
                                ],
                                'barColor100' => [
                                    'type' => 'input.colorpicker',
                                    'label' => 'Bar Blue',
                                    'default' => 'rgba(52, 152, 219, 0.9)'
                                ]
                            ]
                        ],
                        '_tab_preloader' => [
                            'label' => 'Preloader',
                            'overridable' => false,
                            'fields' => [
                                'image' => [
                                    'type' => 'input.imagepicker',
                                    'label' => 'Preloader Image',
                                    'description' => 'Select desired image for preloader icon, default using Spinner icon from Uikit.'
                                ],
                                'image_width' => [
                                    'type' => 'input.number',
                                    'label' => 'Width',
                                    'description' => 'Enter the image\'s width.',
                                    'min' => 0,
                                    'placeholder' => 'auto'
                                ],
                                'image_height' => [
                                    'type' => 'input.number',
                                    'label' => 'Height',
                                    'description' => 'Enter the image\'s height.',
                                    'min' => 0,
                                    'placeholder' => 'auto'
                                ],
                                'background' => [
                                    'type' => 'input.colorpicker',
                                    'label' => 'Background Color',
                                    'description' => 'Customize the background color for body on load.'
                                ],
                                'fadeout' => [
                                    'type' => 'input.number',
                                    'label' => 'FadeOut',
                                    'description' => 'Changing the visibility of elements on the page with a fading effect.',
                                    'placeholder' => 200
                                ],
                                'color' => [
                                    'type' => 'input.colorpicker',
                                    'label' => 'Color',
                                    'description' => 'Customize the color for icon on load.(Use this option for spinner icon only)'
                                ]
                            ]
                        ]
                    ]
                ],
                'copyright' => [
                    'type' => 'separator.note',
                    'class' => 'alert alert-success',
                    'content' => 'JL Preloader Atom <strong>Version: 2.3.4</strong> by <a href="https://joomlead.com" target="_blank">Joomlead</a> | <a href="https://joomlead.com/g5/docs/preloader-atom/" target="_blank">Documentation</a>'
                ]
            ]
        ]
    ]
];
