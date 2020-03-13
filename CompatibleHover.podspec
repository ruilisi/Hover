Pod::Spec.new do |spec|
    spec.name = 'CompatibleHover'
    spec.version = '1.3.2'
    spec.license = { :type => 'MIT', :file => 'LICENSE' }
    spec.homepage = 'https://github.com/ruilisi/Hover'
    spec.authors = { 'Pedro Carrasco' => 'https://twitter.com/pedrommcarrasco' }
    spec.summary = '🎈 The smartest floating button'
    spec.description = "Hover is a draggable floating action button (FAB) inspired by Apple's session Designing Fluid Interfaces & Nathan Gitter's fluid-interfaces. Hover will always stick to the nearest corner to avoid blocking content and allows the user to send it to any other corner with a single swipe. This is a fork that compatible to ios 10"

    spec.source = { :git => 'https://github.com/ruilisi/Hover.git', :tag => spec.version.to_s }
    spec.swift_version = '5.0'

    spec.ios.deployment_target  = '10.0'

    spec.source_files = 'Hover/**/*'
    spec.exclude_files = "Hover/*.plist"
end