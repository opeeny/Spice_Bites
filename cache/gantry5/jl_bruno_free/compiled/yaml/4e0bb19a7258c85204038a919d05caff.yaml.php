<?php
return [
    '@class' => 'Gantry\\Component\\File\\CompiledYamlFile',
    'filename' => 'D:\\Apache24\\htdocs\\Spice_Bites/templates/jl_bruno_free/particles/jldivider.yaml',
    'modified' => 1775727462,
    'data' => [
        'name' => 'JL Divider',
        'description' => 'Display a horizontal divider.',
        'type' => 'particle',
        'icon' => 'fa-minus',
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
                    'description' => 'Globally enable to the particles.',
                    'default' => true
                ],
                '_tabs' => [
                    'type' => 'container.tabs',
                    'fields' => [
                        '_tab_content' => [
                            'label' => 'Content',
                            'fields' => [
                                'divider_style' => [
                                    'type' => 'select.select',
                                    'label' => 'Style',
                                    'description' => 'Choose a divider style.',
                                    'default' => 'default',
                                    'options' => [
                                        'default' => 'None',
                                        'icon' => 'Icon',
                                        'small' => 'Small',
                                        'vertical' => 'Vertical'
                                    ]
                                ],
                                'divider_element' => [
                                    'type' => 'select.select',
                                    'label' => 'HTML Element',
                                    'description' => 'Choose the divider element to fit your semantic structure. Use the hr element for a thematic break and the div element for decorative reasons.',
                                    'default' => 'hr',
                                    'options' => [
                                        'hr' => 'Hr',
                                        'div' => 'Div'
                                    ]
                                ],
                                'divider_align' => [
                                    'type' => 'select.select',
                                    'label' => 'Alignment',
                                    'description' => 'Center, left and right alignment may depend on a breakpoint and require a fallback. This option won\'t have any effect unless Small style is selected.',
                                    'default' => 'inherit',
                                    'options' => [
                                        'inherit' => 'None',
                                        'left' => 'Left',
                                        'center' => 'Center',
                                        'right' => 'Right'
                                    ]
                                ],
                                'divider_breakpoint' => [
                                    'type' => 'select.select',
                                    'label' => 'Alignment Breakpoint',
                                    'description' => 'Define the device width from which the alignment will apply. This option won\'t have any effect unless Small style is selected.',
                                    'default' => 'always',
                                    'options' => [
                                        'always' => 'Always',
                                        's' => 'Small (Phone Landscape)',
                                        'm' => 'Medium (Tablet Landscape)',
                                        'l' => 'Large (Desktop)',
                                        'xl' => 'X-Large (Large Screens)'
                                    ]
                                ],
                                'divider_fallback' => [
                                    'type' => 'select.select',
                                    'label' => 'Alignment Fallback',
                                    'description' => 'Define an alignment fallback for device widths below the breakpoint. This option won\'t have any effect unless Small style is selected.',
                                    'default' => 'inherit',
                                    'options' => [
                                        'inherit' => 'None',
                                        'left' => 'Left',
                                        'center' => 'Center',
                                        'right' => 'Right'
                                    ]
                                ],
                                'divider_border' => [
                                    'type' => 'input.number',
                                    'label' => 'Border Width',
                                    'description' => 'Customize the border top width.',
                                    'default' => 1
                                ],
                                'divider_color' => [
                                    'type' => 'input.colorpicker',
                                    'label' => 'Border Color',
                                    'description' => 'Customize the divider color.'
                                ],
                                'class' => [
                                    'type' => 'input.selectize',
                                    'label' => 'CSS Classes',
                                    'description' => 'CSS class name for the particle.'
                                ]
                            ]
                        ],
                        '_tab_general' => [
                            'label' => 'General',
                            'overridable' => false,
                            'fields' => [
                                'particle_title_info' => [
                                    'type' => 'separator.note',
                                    'class' => 'alert alert-info',
                                    'content' => 'Particle Title Style'
                                ],
                                'particle_title' => [
                                    'type' => 'input.text',
                                    'label' => 'Title',
                                    'description' => 'Add an optional particle title.',
                                    'placeholder' => 'Enter particle title'
                                ],
                                'particle_title_style' => [
                                    'type' => 'select.select',
                                    'label' => 'Style',
                                    'description' => 'Title styles differ in font-size but may also come with a predefined color, size and font.',
                                    'default' => 'h3',
                                    'options' => [
                                        'default' => 'None',
                                        'text-meta' => 'Text Meta',
                                        'text-lead' => 'Text Lead',
                                        'text-small' => 'Text Small',
                                        'text-large' => 'Text Large',
                                        'heading-3xlarge' => 'Heading 3X-Large',
                                        'heading-2xlarge' => 'Heading 2X-Large',
                                        'heading-xlarge' => 'Heading X-Large',
                                        'heading-large' => 'Heading Large',
                                        'heading-medium' => 'Heading Medium',
                                        'heading-small' => 'Heading Small',
                                        'h1' => 'Heading H1',
                                        'h2' => 'Heading H2',
                                        'h3' => 'Heading H3',
                                        'h4' => 'Heading H4',
                                        'h5' => 'Heading H5',
                                        'h6' => 'Heading H6'
                                    ]
                                ],
                                'particle_title_decoration' => [
                                    'type' => 'select.select',
                                    'label' => 'Decoration',
                                    'description' => 'Decorate the headline with a divider, bullet or a line that is vertically centered to the heading.',
                                    'default' => 'none',
                                    'options' => [
                                        'none' => 'None',
                                        'divider' => 'Divider',
                                        'bullet' => 'Bullet',
                                        'line' => 'Line'
                                    ]
                                ],
                                'particle_title_align' => [
                                    'type' => 'select.select',
                                    'label' => 'Alignment',
                                    'description' => 'Center, left and right alignment for Particle title.',
                                    'default' => 'inherit',
                                    'options' => [
                                        'inherit' => 'Inherit',
                                        'left' => 'Left',
                                        'center' => 'Center',
                                        'right' => 'Right',
                                        'justify' => 'Justify'
                                    ]
                                ],
                                'particle_predefined_color' => [
                                    'type' => 'select.select',
                                    'label' => 'Predefined Color',
                                    'description' => 'Select the text color. If the Background option is selected, styles that don\'t apply a background image use the primary color instead.',
                                    'default' => 'default',
                                    'options' => [
                                        'default' => 'None',
                                        'muted' => 'Muted',
                                        'emphasis' => 'Emphasis',
                                        'primary' => 'Primary',
                                        'secondary' => 'Secondary',
                                        'success' => 'Success',
                                        'warning' => 'Warning',
                                        'danger' => 'Danger',
                                        'background' => 'Background'
                                    ]
                                ],
                                'particle_title_color' => [
                                    'type' => 'input.colorpicker',
                                    'label' => 'Custom Color',
                                    'description' => 'Customize the title color instead using predefined color mode. Set the Predefined color to None before using this color customization mode.'
                                ],
                                'particle_title_fontsize' => [
                                    'type' => 'input.number',
                                    'label' => 'Font Size',
                                    'description' => 'Customize the particle title font size.',
                                    'min' => 0
                                ],
                                'particle_title_text_transform' => [
                                    'type' => 'select.select',
                                    'label' => 'Transform',
                                    'description' => 'The following options will transform text into uppercased, capitalized or lowercased characters.',
                                    'default' => '',
                                    'options' => [
                                        '' => 'Inherit',
                                        'uppercase' => 'UPPERCASE',
                                        'capitalize' => 'Capitalize',
                                        'lowercase' => 'lowercase'
                                    ]
                                ],
                                'particle_title_font_weight' => [
                                    'type' => 'select.select',
                                    'label' => 'Font weight',
                                    'description' => 'Add one of the following classes to modify the font weight of your text.',
                                    'default' => '',
                                    'options' => [
                                        '' => 'Inherit',
                                        'light' => 'Light',
                                        'normal' => 'Normal',
                                        'bold' => 'Bold',
                                        'lighter' => 'Lighter',
                                        'bolder' => 'Bolder'
                                    ]
                                ],
                                'particle_title_element' => [
                                    'type' => 'select.select',
                                    'label' => 'HTML Element',
                                    'description' => 'Choose one of the elements to fit your semantic structure.',
                                    'default' => 'h3',
                                    'options' => [
                                        'h1' => 'h1',
                                        'h2' => 'h2',
                                        'h3' => 'h3',
                                        'h4' => 'h4',
                                        'h5' => 'h5',
                                        'h6' => 'h6',
                                        'div' => 'div'
                                    ]
                                ],
                                'general_content_info' => [
                                    'type' => 'separator.note',
                                    'class' => 'alert alert-info',
                                    'content' => 'General Particle Settings'
                                ],
                                'align' => [
                                    'type' => 'select.select',
                                    'label' => 'Text Alignment',
                                    'description' => 'Center, left and right alignment may depend on a breakpoint and require a fallback.',
                                    'default' => 'inherit',
                                    'options' => [
                                        'inherit' => 'None',
                                        'left' => 'Left',
                                        'center' => 'Center',
                                        'right' => 'Right',
                                        'justify' => 'Justify'
                                    ]
                                ],
                                'breakpoint' => [
                                    'type' => 'select.select',
                                    'label' => 'Alignment Breakpoint',
                                    'description' => 'Define the device width from which the alignment will apply.',
                                    'default' => 'always',
                                    'options' => [
                                        'always' => 'Always',
                                        's' => 'Small (Phone Landscape)',
                                        'm' => 'Medium (Tablet Landscape)',
                                        'l' => 'Large (Desktop)',
                                        'xl' => 'X-Large (Large Screens)'
                                    ]
                                ],
                                'fallback' => [
                                    'type' => 'select.select',
                                    'label' => 'Alignment Fallback',
                                    'description' => 'Define an alignment fallback for device widths below the breakpoint.',
                                    'default' => 'inherit',
                                    'options' => [
                                        'inherit' => 'None',
                                        'left' => 'Left',
                                        'center' => 'Center',
                                        'right' => 'Right',
                                        'justify' => 'Justify'
                                    ]
                                ],
                                'g_maxwidth' => [
                                    'type' => 'select.select',
                                    'label' => 'Max Width',
                                    'description' => 'Set the maximum content width.',
                                    'default' => 'inherit',
                                    'options' => [
                                        'inherit' => 'None',
                                        'small' => 'Small',
                                        'medium' => 'Medium',
                                        'large' => 'Large',
                                        'xlarge' => 'X-Large',
                                        '2xlarge' => '2X-Large'
                                    ]
                                ],
                                'g_maxwidth_alignment' => [
                                    'type' => 'select.select',
                                    'label' => 'Max Width Alignment',
                                    'description' => 'Define the alignment in case the container exceeds the element\'s max-width.',
                                    'default' => 'left',
                                    'options' => [
                                        'left' => 'Left',
                                        'center' => 'Center',
                                        'right' => 'Right'
                                    ]
                                ],
                                'g_maxwidth_breakpoint' => [
                                    'type' => 'select.select',
                                    'label' => 'Max Width Breakpoint',
                                    'description' => 'Define the device width from which the element\'s max-width will apply.',
                                    'default' => 'always',
                                    'options' => [
                                        'always' => 'Always',
                                        's' => 'Small (Phone Landscape)',
                                        'm' => 'Medium (Tablet Landscape)',
                                        'l' => 'Large (Desktop)',
                                        'xl' => 'X-Large (Large Screens)'
                                    ]
                                ],
                                'margin' => [
                                    'type' => 'select.select',
                                    'label' => 'Margin',
                                    'description' => 'Set the vertical margin.',
                                    'default' => 'inherit',
                                    'options' => [
                                        'inherit' => 'Keep existing',
                                        'small' => 'Small',
                                        'default' => 'Default',
                                        'medium' => 'Medium',
                                        'large' => 'Large',
                                        'xlarge' => 'X-Large',
                                        'remove-vertical' => 'None'
                                    ]
                                ],
                                'visibility' => [
                                    'type' => 'select.select',
                                    'label' => 'Visibility',
                                    'description' => 'Display the element only on this device width and larger.',
                                    'default' => 'inherit',
                                    'options' => [
                                        'inherit' => 'Always',
                                        's' => 'Visible Small (Phone Landscape)',
                                        'm' => 'Visible Medium (Tablet Landscape)',
                                        'l' => 'Visible Large (Desktop)',
                                        'xl' => 'Visible X-Large (Large Screens)',
                                        'hidden-s' => 'Hidden Small (Phone Landscape)',
                                        'hidden-m' => 'Hidden Medium (Tablet Landscape)',
                                        'hidden-l' => 'Hidden Large (Desktop)',
                                        'hidden-xl' => 'Hidden X-Large (Large Screens)'
                                    ]
                                ],
                                'extra' => [
                                    'type' => 'collection.keyvalue',
                                    'label' => 'Tag Attributes',
                                    'description' => 'Extra Tag attributes.',
                                    'key_placeholder' => 'Key (data-*, style, ...)',
                                    'value_placeholder' => 'Value',
                                    'exclude' => [
                                        0 => 'id',
                                        1 => 'class'
                                    ]
                                ],
                                'general_animation_info' => [
                                    'type' => 'separator.note',
                                    'class' => 'alert alert-info',
                                    'content' => 'Animation Settings'
                                ],
                                'animation' => [
                                    'type' => 'select.select',
                                    'label' => 'Animation',
                                    'description' => 'Apply an animation to particles once they enter the viewport. This will animate all particles inside the section.',
                                    'default' => 'inherit',
                                    'options' => [
                                        'inherit' => 'None',
                                        'fade' => 'Fade',
                                        'scale-up' => 'Scale Up',
                                        'scale-down' => 'Scale Down',
                                        'slide-top-small' => 'Slide Top Small',
                                        'slide-bottom-small' => 'Slide Bottom Small',
                                        'slide-left-small' => 'Slide Left Small',
                                        'slide-right-small' => 'Slide Right Small',
                                        'slide-top-medium' => 'Slide Top Medium',
                                        'slide-bottom-medium' => 'Slide Bottom Medium',
                                        'slide-left-medium' => 'Slide Left Medium',
                                        'slide-right-medium' => 'Slide Right Medium',
                                        'slide-top' => 'Slide Top 100%',
                                        'slide-bottom' => 'Slide Bottom 100%',
                                        'slide-left' => 'Slide Left 100%',
                                        'slide-right' => 'Slide Right 100%',
                                        'parallax' => 'Parallax'
                                    ]
                                ],
                                'animation_delay' => [
                                    'type' => 'input.number',
                                    'label' => 'Animation Delay',
                                    'description' => 'Set the delay animations for particle. Delay time in ms.',
                                    'min' => 0,
                                    'placeholder' => 200
                                ],
                                'animation_repeat' => [
                                    'type' => 'select.select',
                                    'label' => 'Animation Repeat',
                                    'description' => 'Repeat an animation to particle once it enter the viewport.',
                                    'default' => 'disabled',
                                    'options' => [
                                        'enabled' => 'Enable',
                                        'disabled' => 'Disable'
                                    ]
                                ]
                            ]
                        ],
                        '_tab_parallax_animation' => [
                            'label' => 'Parallax',
                            'overridable' => false,
                            'fields' => [
                                'parallax_info' => [
                                    'type' => 'separator.note',
                                    'class' => 'alert alert-info',
                                    'content' => 'Customize the parallax animation, make sure the animation is set to <i>Parallax</i> in <i>General</i> tab. <a href="https://joomlead.com/gantry-5-particles/particles-documentation/#parallax-settings" target="_blank">Learn more</a>'
                                ],
                                'pa_horizontal_start' => [
                                    'type' => 'input.text',
                                    'label' => 'Horizontal Start',
                                    'description' => 'Animate the horizontal position. Optional units are %, vw and vh',
                                    'pattern' => '^-?\\d+(\\.\\d+){0,1}(|vw|vh|%)'
                                ],
                                'pa_horizontal_end' => [
                                    'type' => 'input.text',
                                    'label' => 'Horizontal End',
                                    'description' => 'Animate the horizontal position. Optional units are %, vw and vh',
                                    'pattern' => '^-?\\d+(\\.\\d+){0,1}(|vw|vh|%)'
                                ],
                                'pa_vertical_start' => [
                                    'type' => 'input.text',
                                    'label' => 'Vertical Start',
                                    'description' => 'Animate the vertical position. Optional units are %, vw and vh',
                                    'pattern' => '^-?\\d+(\\.\\d+){0,1}(|vw|vh|%)'
                                ],
                                'pa_vertical_end' => [
                                    'type' => 'input.text',
                                    'label' => 'Vertical End',
                                    'description' => 'Animate the vertical position. Optional units are %, vw and vh',
                                    'pattern' => '^-?\\d+(\\.\\d+){0,1}(|vw|vh|%)'
                                ],
                                'scale_start' => [
                                    'type' => 'input.number',
                                    'label' => 'Scale Start',
                                    'description' => 'Animate the scaling vector, e.g. 2 is 200% and 0.5 is 50% scale.',
                                    'min' => 0.5,
                                    'max' => 2,
                                    'step' => 0.1
                                ],
                                'scale_end' => [
                                    'type' => 'input.number',
                                    'label' => 'Scale End',
                                    'description' => 'Animate the scaling vector, e.g. 2 is 200% and 0.5 is 50% scale.',
                                    'min' => 0.5,
                                    'max' => 2,
                                    'step' => 0.1
                                ],
                                'rotate_start' => [
                                    'type' => 'input.number',
                                    'label' => 'Rotate Start',
                                    'description' => 'Animate the rotation clockwise in degrees. Min 0 and Max 360',
                                    'min' => 0,
                                    'max' => 360
                                ],
                                'rotate_end' => [
                                    'type' => 'input.number',
                                    'label' => 'Rotate End',
                                    'description' => 'Animate the rotation clockwise in degrees. Min 0 and Max 360',
                                    'min' => 0,
                                    'max' => 360
                                ],
                                'opacity_start' => [
                                    'type' => 'input.number',
                                    'label' => 'Opacity Start',
                                    'description' => 'Animate the opacity, e.g. 0 is 0% and 1 is 100% opacity.',
                                    'min' => 0,
                                    'max' => 1,
                                    'step' => 0.1
                                ],
                                'opacity_end' => [
                                    'type' => 'input.number',
                                    'label' => 'Opacity End',
                                    'description' => 'Animate the opacity, e.g. 0 is 0% and 1 is 100% opacity.',
                                    'min' => 0,
                                    'max' => 1,
                                    'step' => 0.1
                                ],
                                'blur_start' => [
                                    'type' => 'input.number',
                                    'label' => 'Blur',
                                    'description' => 'Animate the Gaussian blur in pixels.',
                                    'min' => 0,
                                    'max' => 360
                                ],
                                'blur_end' => [
                                    'type' => 'input.number',
                                    'label' => 'Blur Position',
                                    'description' => 'The position value is set in percent without the percent unit.',
                                    'placeholder' => '%',
                                    'min' => 0,
                                    'max' => 100
                                ],
                                'parallax_transform_origin' => [
                                    'type' => 'select.select',
                                    'label' => 'Transform Origin',
                                    'description' => 'Define the origin of the element\'s transformation when scaling or rotating the element.',
                                    'default' => 'center-center',
                                    'options' => [
                                        'top-left' => 'Top Left',
                                        'top-center' => 'Top Center',
                                        'top-right' => 'Top Right',
                                        'center-left' => 'Center Left',
                                        'center-center' => 'Center Center',
                                        'center-right' => 'Center Right',
                                        'bottom-left' => 'Bottom Left',
                                        'bottom-center' => 'Bottom Center',
                                        'bottom-right' => 'Bottom Right'
                                    ]
                                ],
                                'easing' => [
                                    'type' => 'input.number',
                                    'label' => 'Easing',
                                    'description' => 'Set the animation easing. Zero transitions at an even speed, a negative value starts off quickly while a positive value starts off slowly.',
                                    'min' => -2,
                                    'max' => 2,
                                    'step' => 0.1
                                ],
                                'parallax_start' => [
                                    'type' => 'input.text',
                                    'label' => 'Start',
                                    'description' => 'The animation starts when the element enters the viewport and ends when it leaves the viewport. Optionally, set a start and end offset, e.g. <code>100px</code>, <code>50vh</code> or <code>50vh + 50%</code>. Percent relates to the target\'s height.'
                                ],
                                'parallax_end' => [
                                    'type' => 'input.text',
                                    'label' => 'End',
                                    'description' => 'The animation starts when the element enters the viewport and ends when it leaves the viewport. Optionally, set a start and end offset, e.g. <code>100px</code>, <code>50vh</code> or <code>50vh + 50%</code>. Percent relates to the target\'s height.'
                                ],
                                'pa_z_index' => [
                                    'type' => 'input.checkbox',
                                    'label' => 'Higher Z Index',
                                    'description' => 'Set a higher stacking order.',
                                    'default' => false
                                ],
                                'pa_breakpoint' => [
                                    'type' => 'select.select',
                                    'label' => 'Breakpoint',
                                    'description' => 'Display the parallax effect only on this device width and larger.',
                                    'default' => 'always',
                                    'options' => [
                                        'always' => 'Always',
                                        's' => 'Small (Phone Landscape)',
                                        'm' => 'Medium (Tablet Landscape)',
                                        'l' => 'Large (Desktop)',
                                        'xl' => 'X-Large (Large Screens)'
                                    ]
                                ]
                            ]
                        ]
                    ]
                ],
                'copyright' => [
                    'type' => 'separator.note',
                    'class' => 'alert alert-success',
                    'content' => 'JL Divider <strong>Version: 2.3.4</strong> by <a href="https://joomlead.com" target="_blank">Joomlead</a> | <a href="https://joomlead.com/g5/docs/divider-particle-documentation/" target="_blank">Documentation</a>'
                ]
            ]
        ]
    ]
];
