<?php
return [
    '@class' => 'Gantry\\Component\\File\\CompiledYamlFile',
    'filename' => 'D:\\Apache24\\htdocs\\Spice_Bites/templates/jl_bruno_free/particles/jlonepage.yaml',
    'modified' => 1775727462,
    'data' => [
        'name' => 'Onepage Navigation',
        'description' => 'Add uikit smoothscroll to gantry menu',
        'type' => 'atom',
        'form' => [
            'fields' => [
                'enabled' => [
                    'type' => 'input.checkbox',
                    'label' => 'Enabled',
                    'description' => 'Globally enable to the particles.',
                    'default' => true
                ],
                'scroll_mode' => [
                    'type' => 'select.select',
                    'label' => 'Scroll Mode',
                    'description' => 'Choose between Uikit Smooth Scrollspy or OnePage Nav mode.',
                    'default' => 'uikit',
                    'options' => [
                        'uikit' => 'UiKit Scrollspy',
                        'onepage' => 'OnePage Nav'
                    ]
                ],
                'offset' => [
                    'type' => 'input.number',
                    'label' => 'Uikit Offset',
                    'description' => 'Pixel offset added to scroll top.',
                    'default' => 80
                ],
                'scroll_info' => [
                    'type' => 'separator.note',
                    'class' => 'alert alert-info',
                    'content' => 'All options listed below are only available in OnePage Nav mode.'
                ],
                'clsactive' => [
                    'type' => 'input.selectize',
                    'label' => 'Active Class',
                    'description' => 'Add the css class name to indicate an active menu item, default is jl-active.',
                    'default' => 'jl-active'
                ],
                'exception' => [
                    'type' => 'input.text',
                    'label' => 'Ignore Menu Items',
                    'description' => 'If you want to filter items out of your navigation, then pass in a selector to the filter option. Separate by comma (,).'
                ],
                'scrollSpeed' => [
                    'type' => 'input.number',
                    'label' => 'Scroll Speed',
                    'description' => 'Set the scroll speed.',
                    'default' => 750
                ],
                'scrollThreshold' => [
                    'type' => 'input.text',
                    'label' => 'Scroll Threshold',
                    'description' => 'Enhance your site with a nice effect that slows down the scrolling when jumping to another part of your page.',
                    'default' => 0.5
                ],
                'changeHash' => [
                    'type' => 'input.checkbox',
                    'label' => 'Change Hash',
                    'description' => 'Enable this if you want the hash to change when a user clicks on the navigation.',
                    'default' => false
                ],
                'copyright' => [
                    'type' => 'separator.note',
                    'class' => 'alert alert-success',
                    'content' => 'Onepage Navigation <strong>Version: 1.1.1</strong> by <a href="https://joomlead.com" target="_blank">Joomlead</a> | <a href="https://joomlead.com/g5/docs/onepage-navigation-particle/" target="_blank">Documentation</a>'
                ]
            ]
        ]
    ]
];
