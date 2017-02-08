#!/bin/bash
cd ~/Library/Developer/Xcode/iOS\ DeviceSupport/
armv7_count=0
armv7s_count=0
arm64_count=0
armv7_arr=()
armv7s_arr=()
arm64_arr=()
mkdir -p ~/Documents/symbol_collection/armv7/
mkdir -p ~/Documents/symbol_collection/armv7s/
mkdir -p ~/Documents/symbol_collection/arm64/
for dir in ./*/
do
    tmp=${dir%*/}
    tmp=${tmp##*/}
    string_array=($tmp)
    version_string=${string_array[0]}
    cd "$dir"    
    uikit_dir="./Symbols/System/Library/Frameworks/UIKit.framework/UIKit"
    cf_dir="./Symbols/System/Library/Frameworks/CoreFoundation.framework/CoreFoundation"
    quartz_dir="./Symbols/System/Library/Frameworks/QuartzCore.framework/QuartzCore"
    gcd_path="./Symbols/usr/lib/system/libdispatch.dylib"
    objc_path="./Symbols/usr/lib/libobjc.A.dylib"
    system_kernel_path="./Symbols/usr/lib/system/libsystem_kernel.dylib"
    graphics_service_path="./Symbols/System/Library/PrivateFrameworks/GraphicsServices.framework/GraphicsServices"
    javascript_core_path="./Symbols/System/Library/Frameworks/JavaScriptCore.framework/JavaScriptCore"
    system_platform_path="./Symbols/usr/lib/system/libsystem_platform.dylib"
    system_c_path="./Symbols/usr/lib/system/libsystem_c.dylib"
    imageio_dir="./Symbols/System/Library/Frameworks/ImageIO.framework/ImageIO"
    webcore_path="./Symbols/System/Library/PrivateFrameworks/WebCore.framework/WebCore"
    webkit_path="./Symbols/System/Library/PrivateFrameworks/WebKit.framework/WebKit"
    webkit_legacy_path="./Symbols/System/Library/PrivateFrameworks/WebKitLegacy.framework/WebKitLegacy"
    system_pthread_path="./Symbols/usr/lib/system/libsystem_pthread.dylib"
    dyld_path="./Symbols/usr/lib/system/libdyld.dylib"
    cfnetwork_dir="./Symbols/System/Library/Frameworks/CFNetwork.framework/CFNetwork"
    photo_library_dir="./Symbols/System/Library/PrivateFrameworks/PhotoLibrary.framework/PhotoLibrary"
    Foundation_dir="./Symbols/System/Library/Frameworks/Foundation.framework/Foundation"
    libGPUSupportMercury_dir="./Symbols/System/Library/PrivateFrameworks/GPUSupport.framework/libGPUSupportMercury.dylib"
    IOMobileFramebuffer_dir="./Symbols/System/Library/PrivateFrameworks/IOMobileFramebuffer.framework/IOMobileFramebuffer"
    IOKit_dir="./Symbols/System/Library/Frameworks/IOKit.framework/IOKit"
    libicucore_path="./Symbols/usr/lib/libicucore.A.dylib"
    libsystem_malloc_path="./Symbols/usr/lib/system/libsystem_malloc.dylib"
    CoreServicesInternal_path="./Symbols/System/Library/PrivateFrameworks/CoreServicesInternal.framework/CoreServicesInternal"
    SpringBoardServices_path="./Symbols/System/Library/PrivateFrameworks/SpringBoardServices.framework/SpringBoardServices"
    libcompiler_rt_path="./Symbols/usr/lib/system/libcompiler_rt.dylib"
    CoreText_dir="./Symbols/System/Library/Frameworks/CoreText.framework/CoreText"
    UIFoundation_path="./Symbols/System/Library/PrivateFrameworks/UIFoundation.framework/UIFoundation"
    CoreGraphics_dir="./Symbols/System/Library/Frameworks/CoreGraphics.framework/CoreGraphics"
    libRIP_A_dylib_dir="./Symbols/System/Library/Frameworks/CoreGraphics.framework/Resources/libRIP.A.dylib"
    CoreVideo_dir="./Symbols/System/Library/Frameworks/CoreVideo.framework/CoreVideo"
    Celestial_path="./Symbols/System/Library/PrivateFrameworks/Celestial.framework/Celestial"
    libGFXShared_dylib_path="./Symbols/System/Library/Frameworks/OpenGLES.framework/libGFXShared.dylib"
    GLEngine_path="./Symbols/System/Library/Frameworks/OpenGLES.framework/GLEngine.bundle/GLEngine"
    OpenGLES_path="./Symbols/System/Library/Frameworks/OpenGLES.framework/OpenGLES"
    CoreLocation_path="./Symbols/System/Library/Frameworks/CoreLocation.framework/CoreLocation"
    AXRuntime_path="./Symbols/System/Library/PrivateFrameworks/AXRuntime.framework/AXRuntime"
    libxpc_path="./Symbols/usr/lib/system/libxpc.dylib"
    MobileKeyBag_path="./Symbols/System/Library/PrivateFrameworks/MobileKeyBag.framework/MobileKeyBag"
    Security_path="./Symbols/System/Library/Frameworks/Security.framework/Security"
    libnetwork_path="./Symbols/usr/lib/libnetwork.dylib"
    FrontBoardServices_path="./Symbols/System/Library/PrivateFrameworks/FrontBoardServices.framework/FrontBoardServices"
    CoreTelephony_path="./Symbols/System/Library/Frameworks/CoreTelephony.framework/CoreTelephony"
    CoreSpotlight_path="./Symbols/System/Library/Frameworks/CoreSpotlight.framework/CoreSpotlight"
    libsystem_network_path="./Symbols/usr/lib/system/libsystem_network.dylib"
    libsqlite3_path="./Symbols/usr/lib/libsqlite3.dylib"
    MobileSpotlightIndex_path="./Symbols/System/Library/PrivateFrameworks/MobileSpotlightIndex.framework/MobileSpotlightIndex"
    DataDetectorsCore_path="./Symbols/System/Library/PrivateFrameworks/DataDetectorsCore.framework/DataDetectorsCore"
    CoreUI_path="./Symbols/System/Library/PrivateFrameworks/CoreUI.framework/CoreUI"
    AGXGLDriver_path="./Symbols/System/Library/Extensions/AGXGLDriver.bundle/AGXGLDriver"
    MediaToolbox_path="./Symbols/System/Library/Frameworks/MediaToolbox.framework/MediaToolbox"
    BackBoardServices_path="./Symbols/System/Library/PrivateFrameworks/BackBoardServices.framework/BackBoardServices"
    AssetsLibrary_path="./Symbols/System/Library/Frameworks/AssetsLibrary.framework/AssetsLibrary"
    libsystem_trace_path="./Symbols/usr/lib/system/libsystem_trace.dylib"
    ColorSync_path="./Symbols/System/Library/PrivateFrameworks/ColorSync.framework/ColorSync"
    libmecab_em_path="./Symbols/usr/lib/libmecab_em.dylib"
    lib_cpp_1_path="./Symbols/usr/lib/libc++.1.dylib"
    libsystem_block_path="./Symbols/usr/lib/system/libsystem_blocks.dylib"
    UserNotifications_path="./Symbols/System/Library/Frameworks/UserNotifications.framework/UserNotifications"
    libsystem_coretls_path="./Symbols/usr/lib/system/libsystem_coretls.dylib"
    MediaPlayer_path="./Symbols/System/Library/Frameworks/MediaPlayer.framework/MediaPlayer"

    if [ -f "$uikit_dir" ]; then
       output=$(lipo -info "$uikit_dir")
       if [[ $output == *"armv7 "* ]]
       then
           ((armv7_count++))
           armv7_arr+=("$version_string")
           cp "$uikit_dir" ~/Documents/symbol_collection/armv7/UIKit_$version_string
           cp "$cf_dir" ~/Documents/symbol_collection/armv7/CoreFoundation_$version_string
           cp "$quartz_dir" ~/Documents/symbol_collection/armv7/QuartzCore_$version_string
           cp "$gcd_path" ~/Documents/symbol_collection/armv7/libdispatch.dylib_$version_string
           cp "$objc_path" ~/Documents/symbol_collection/armv7/libobjc.A.dylib_$version_string
           cp "$system_kernel_path" ~/Documents/symbol_collection/armv7/libsystem_kernel.dylib_$version_string
           cp "$graphics_service_path" ~/Documents/symbol_collection/armv7/GraphicsServices_$version_string
           cp "$javascript_core_path" ~/Documents/symbol_collection/armv7/JavaScriptCore_$version_string
           cp "$system_platform_path" ~/Documents/symbol_collection/armv7/libsystem_platform.dylib_$version_string
           cp "$system_c_path" ~/Documents/symbol_collection/armv7/libsystem_c.dylib_$version_string
           cp "$imageio_dir" ~/Documents/symbol_collection/armv7/ImageIO_$version_string
           cp "$webcore_path" ~/Documents/symbol_collection/armv7/WebCore_$version_string
           cp "$webkit_path" ~/Documents/symbol_collection/armv7/WebKit_$version_string
           cp "$webkit_path" ~/Documents/symbol_collection/armv7/WebKitLegacy_$version_string
           cp "$webkit_legacy_path" ~/Documents/symbol_collection/armv7/WebKit_$version_string
           cp "$webkit_legacy_path" ~/Documents/symbol_collection/armv7/WebKitLegacy_$version_string
           cp "$system_pthread_path" ~/Documents/symbol_collection/armv7/libsystem_pthread.dylib_$version_string
           cp "$dyld_path" ~/Documents/symbol_collection/armv7/libdyld.dylib_$version_string
           cp "$cfnetwork_dir" ~/Documents/symbol_collection/armv7/CFNetwork_$version_string
           cp "$photo_library_dir" ~/Documents/symbol_collection/armv7/PhotoLibrary_$version_string
           cp "$Foundation_dir" ~/Documents/symbol_collection/armv7/Foundation_$version_string
           cp "$libGPUSupportMercury_dir" ~/Documents/symbol_collection/armv7/libGPUSupportMercury.dylib_$version_string
           cp "$IOMobileFramebuffer_dir" ~/Documents/symbol_collection/armv7/IOMobileFramebuffer_$version_string
           cp "$IOKit_dir" ~/Documents/symbol_collection/armv7/IOKit_$version_string
           cp "$libicucore_path" ~/Documents/symbol_collection/armv7/libicucore.A.dylib_$version_string
           cp "$libsystem_malloc_path" ~/Documents/symbol_collection/armv7/libsystem_malloc.dylib_$version_string
           cp "$CoreServicesInternal_path" ~/Documents/symbol_collection/armv7/CoreServicesInternal_$version_string
           cp "$SpringBoardServices_path" ~/Documents/symbol_collection/armv7/SpringBoardServices_$version_string
           cp "$libcompiler_rt_path" ~/Documents/symbol_collection/armv7/libcompiler_rt.dylib_$version_string
           cp "$CoreText_dir" ~/Documents/symbol_collection/armv7/CoreText_$version_string
           cp "$UIFoundation_path" ~/Documents/symbol_collection/armv7/UIFoundation_$version_string
           cp "$CoreGraphics_dir" ~/Documents/symbol_collection/armv7/CoreGraphics_$version_string
           cp "$libRIP_A_dylib_dir" ~/Documents/symbol_collection/armv7/libRIP.A.dylib_$version_string
           cp "$CoreVideo_dir" ~/Documents/symbol_collection/armv7/CoreVideo_$version_string
           cp "$Celestial_path" ~/Documents/symbol_collection/armv7/Celestial_$version_string
           cp "$libGFXShared_dylib_path" ~/Documents/symbol_collection/armv7/libGFXShared.dylib_$version_string
           cp "$GLEngine_path" ~/Documents/symbol_collection/armv7/GLEngine_$version_string
           cp "$OpenGLES_path" ~/Documents/symbol_collection/armv7/OpenGLES_$version_string
           cp "$CoreLocation_path" ~/Documents/symbol_collection/armv7/CoreLocation_$version_string
           cp "$AXRuntime_path" ~/Documents/symbol_collection/armv7/AXRuntime_$version_string
           cp "$libxpc_path" ~/Documents/symbol_collection/armv7/libxpc.dylib_$version_string
           cp "$MobileKeyBag_path" ~/Documents/symbol_collection/armv7/MobileKeyBag_$version_string
           cp "$Security_path" ~/Documents/symbol_collection/armv7/Security_$version_string
           cp "$libnetwork_path" ~/Documents/symbol_collection/armv7/libnetwork.dylib_$version_string
           cp "$FrontBoardServices_path" ~/Documents/symbol_collection/armv7/FrontBoardServices_$version_string
           cp "$CoreTelephony_path" ~/Documents/symbol_collection/armv7/CoreTelephony_$version_string
           cp "$CoreSpotlight_path" ~/Documents/symbol_collection/armv7/CoreSpotlight_$version_string
           cp "$libsystem_network_path" ~/Documents/symbol_collection/armv7/libsystem_network.dylib_$version_string
           cp "$libsqlite3_path" ~/Documents/symbol_collection/armv7/libsqlite3.dylib_$version_string
           cp "$MobileSpotlightIndex_path" ~/Documents/symbol_collection/armv7/MobileSpotlightIndex_$version_string
           cp "$DataDetectorsCore_path" ~/Documents/symbol_collection/armv7/DataDetectorsCore_$version_string
           cp "$CoreUI_path" ~/Documents/symbol_collection/armv7/CoreUI_$version_string
           cp "$AGXGLDriver_path" ~/Documents/symbol_collection/armv7/AGXGLDriver_$version_string
           cp "$MediaToolbox_path" ~/Documents/symbol_collection/armv7/MediaToolbox_$version_string
           cp "$BackBoardServices_path" ~/Documents/symbol_collection/armv7/BackBoardServices_$version_string
           cp "$AssetsLibrary_path" ~/Documents/symbol_collection/armv7/AssetsLibrary_$version_string
           cp "$libsystem_trace_path" ~/Documents/symbol_collection/armv7/libsystem_trace.dylib_$version_string
           cp "$ColorSync_path" ~/Documents/symbol_collection/armv7/ColorSync_$version_string
           cp "$libmecab_em_path" ~/Documents/symbol_collection/armv7/libmecab_em.dylib_$version_string
           cp "$lib_cpp_1_path" ~/Documents/symbol_collection/armv7/libc++.1.dylib_$version_string
           cp "$libsystem_block_path" ~/Documents/symbol_collection/armv7/libsystem_blocks.dylib_$version_string
           cp "$UserNotifications_path" ~/Documents/symbol_collection/armv7/UserNotifications_$version_string
           cp "$libsystem_coretls_path" ~/Documents/symbol_collection/armv7/libsystem_coretls.dylib_$version_string
           cp "$MediaPlayer_path" ~/Documents/symbol_collection/armv7/MediaPlayer_$version_string

       fi
       if [[ $output == *"armv7s "* ]]
       then
           ((armv7s_count++))
           armv7s_arr+=("$version_string")
           cp "$uikit_dir" ~/Documents/symbol_collection/armv7s/UIKit_$version_string
           cp "$cf_dir" ~/Documents/symbol_collection/armv7s/CoreFoundation_$version_string
           cp "$quartz_dir" ~/Documents/symbol_collection/armv7s/QuartzCore_$version_string
           cp "$gcd_path" ~/Documents/symbol_collection/armv7s/libdispatch.dylib_$version_string
           cp "$objc_path" ~/Documents/symbol_collection/armv7s/libobjc.A.dylib_$version_string
           cp "$system_kernel_path" ~/Documents/symbol_collection/armv7s/libsystem_kernel.dylib_$version_string
           cp "$graphics_service_path" ~/Documents/symbol_collection/armv7s/GraphicsServices_$version_string
           cp "$javascript_core_path" ~/Documents/symbol_collection/armv7s/JavaScriptCore_$version_string
           cp "$system_platform_path" ~/Documents/symbol_collection/armv7s/libsystem_platform.dylib_$version_string
           cp "$system_c_path" ~/Documents/symbol_collection/armv7s/libsystem_c.dylib_$version_string
           cp "$imageio_dir" ~/Documents/symbol_collection/armv7s/ImageIO_$version_string
           cp "$webcore_path" ~/Documents/symbol_collection/armv7s/WebCore_$version_string
           cp "$webkit_path" ~/Documents/symbol_collection/armv7s/WebKit_$version_string
           cp "$webkit_path" ~/Documents/symbol_collection/armv7s/WebKitLegacy_$version_string
           cp "$webkit_legacy_path" ~/Documents/symbol_collection/armv7s/WebKit_$version_string
           cp "$webkit_legacy_path" ~/Documents/symbol_collection/armv7s/WebKitLegacy_$version_string
           cp "$system_pthread_path" ~/Documents/symbol_collection/armv7s/libsystem_pthread.dylib_$version_string
           cp "$dyld_path" ~/Documents/symbol_collection/armv7s/libdyld.dylib_$version_string
           cp "$cfnetwork_dir" ~/Documents/symbol_collection/armv7s/CFNetwork_$version_string
           cp "$photo_library_dir" ~/Documents/symbol_collection/armv7s/PhotoLibrary_$version_string
           cp "$Foundation_dir" ~/Documents/symbol_collection/armv7s/Foundation_$version_string
           cp "$libGPUSupportMercury_dir" ~/Documents/symbol_collection/armv7s/libGPUSupportMercury.dylib_$version_string
           cp "$IOMobileFramebuffer_dir" ~/Documents/symbol_collection/armv7s/IOMobileFramebuffer_$version_string
           cp "$IOKit_dir" ~/Documents/symbol_collection/armv7s/IOKit_$version_string
           cp "$libicucore_path" ~/Documents/symbol_collection/armv7s/libicucore.A.dylib_$version_string
           cp "$libsystem_malloc_path" ~/Documents/symbol_collection/armv7s/libsystem_malloc.dylib_$version_string
           cp "$CoreServicesInternal_path" ~/Documents/symbol_collection/armv7s/CoreServicesInternal_$version_string
           cp "$SpringBoardServices_path" ~/Documents/symbol_collection/armv7s/SpringBoardServices_$version_string
           cp "$libcompiler_rt_path" ~/Documents/symbol_collection/armv7s/libcompiler_rt.dylib_$version_string
           cp "$CoreText_dir" ~/Documents/symbol_collection/armv7s/CoreText_$version_string
           cp "$UIFoundation_path" ~/Documents/symbol_collection/armv7s/UIFoundation_$version_string
           cp "$CoreGraphics_dir" ~/Documents/symbol_collection/armv7s/CoreGraphics_$version_string
           cp "$libRIP_A_dylib_dir" ~/Documents/symbol_collection/armv7s/libRIP.A.dylib_$version_string
           cp "$CoreVideo_dir" ~/Documents/symbol_collection/armv7s/CoreVideo_$version_string
           cp "$Celestial_path" ~/Documents/symbol_collection/armv7s/Celestial_$version_string
           cp "$libGFXShared_dylib_path" ~/Documents/symbol_collection/armv7s/libGFXShared.dylib_$version_string
           cp "$GLEngine_path" ~/Documents/symbol_collection/armv7s/GLEngine_$version_string
           cp "$OpenGLES_path" ~/Documents/symbol_collection/armv7s/OpenGLES_$version_string
           cp "$CoreLocation_path" ~/Documents/symbol_collection/armv7s/CoreLocation_$version_string
           cp "$AXRuntime_path" ~/Documents/symbol_collection/armv7s/AXRuntime_$version_string
           cp "$libxpc_path" ~/Documents/symbol_collection/armv7s/libxpc.dylib_$version_string
           cp "$MobileKeyBag_path" ~/Documents/symbol_collection/armv7s/MobileKeyBag_$version_string
           cp "$Security_path" ~/Documents/symbol_collection/armv7s/Security_$version_string
           cp "$libnetwork_path" ~/Documents/symbol_collection/armv7s/libnetwork.dylib_$version_string
           cp "$FrontBoardServices_path" ~/Documents/symbol_collection/armv7s/FrontBoardServices_$version_string
           cp "$CoreTelephony_path" ~/Documents/symbol_collection/armv7s/CoreTelephony_$version_string
           cp "$CoreSpotlight_path" ~/Documents/symbol_collection/armv7s/CoreSpotlight_$version_string
           cp "$libsystem_network_path" ~/Documents/symbol_collection/armv7s/libsystem_network.dylib_$version_string
           cp "$libsqlite3_path" ~/Documents/symbol_collection/armv7s/libsqlite3.dylib_$version_string
           cp "$MobileSpotlightIndex_path" ~/Documents/symbol_collection/armv7s/MobileSpotlightIndex_$version_string
           cp "$DataDetectorsCore_path" ~/Documents/symbol_collection/armv7s/DataDetectorsCore_$version_string
           cp "$CoreUI_path" ~/Documents/symbol_collection/armv7s/CoreUI_$version_string
           cp "$AGXGLDriver_path" ~/Documents/symbol_collection/armv7s/AGXGLDriver_$version_string
           cp "$MediaToolbox_path" ~/Documents/symbol_collection/armv7s/MediaToolbox_$version_string
           cp "$BackBoardServices_path" ~/Documents/symbol_collection/armv7s/BackBoardServices_$version_string
           cp "$AssetsLibrary_path" ~/Documents/symbol_collection/armv7s/AssetsLibrary_$version_string
           cp "$libsystem_trace_path" ~/Documents/symbol_collection/armv7s/libsystem_trace.dylib_$version_string
           cp "$ColorSync_path" ~/Documents/symbol_collection/armv7s/ColorSync_$version_string
           cp "$libmecab_em_path" ~/Documents/symbol_collection/armv7s/libmecab_em.dylib_$version_string
           cp "$lib_cpp_1_path" ~/Documents/symbol_collection/armv7s/libc++.1.dylib_$version_string
           cp "$libsystem_block_path" ~/Documents/symbol_collection/armv7s/libsystem_blocks.dylib_$version_string
           cp "$UserNotifications_path" ~/Documents/symbol_collection/armv7s/UserNotifications_$version_string
           cp "$libsystem_coretls_path" ~/Documents/symbol_collection/armv7s/libsystem_coretls.dylib_$version_string
           cp "$MediaPlayer_path" ~/Documents/symbol_collection/armv7s/MediaPlayer_$version_string      
       fi
       if [[ $output == *"arm64 "* ]]
       then
           ((arm64_count++))
           arm64_arr+=("$version_string")
           cp "$uikit_dir" ~/Documents/symbol_collection/arm64/UIKit_$version_string
           cp "$cf_dir" ~/Documents/symbol_collection/arm64/CoreFoundation_$version_string
           cp "$quartz_dir" ~/Documents/symbol_collection/arm64/QuartzCore_$version_string
           cp "$gcd_path" ~/Documents/symbol_collection/arm64/libdispatch.dylib_$version_string
           cp "$objc_path" ~/Documents/symbol_collection/arm64/libobjc.A.dylib_$version_string
           cp "$system_kernel_path" ~/Documents/symbol_collection/arm64/libsystem_kernel.dylib_$version_string
           cp "$graphics_service_path" ~/Documents/symbol_collection/arm64/GraphicsServices_$version_string
           cp "$javascript_core_path" ~/Documents/symbol_collection/arm64/JavaScriptCore_$version_string
           cp "$system_platform_path" ~/Documents/symbol_collection/arm64/libsystem_platform.dylib_$version_string
           cp "$system_c_path" ~/Documents/symbol_collection/arm64/libsystem_c.dylib_$version_string
           cp "$imageio_dir" ~/Documents/symbol_collection/arm64/ImageIO_$version_string
           cp "$webcore_path" ~/Documents/symbol_collection/arm64/WebCore_$version_string
           cp "$webkit_path" ~/Documents/symbol_collection/arm64/WebKit_$version_string
           cp "$webkit_path" ~/Documents/symbol_collection/arm64/WebKitLegacy_$version_string
           cp "$webkit_legacy_path" ~/Documents/symbol_collection/arm64/WebKit_$version_string
           cp "$webkit_legacy_path" ~/Documents/symbol_collection/arm64/WebKitLegacy_$version_string
           cp "$system_pthread_path" ~/Documents/symbol_collection/arm64/libsystem_pthread.dylib_$version_string
           cp "$dyld_path" ~/Documents/symbol_collection/arm64/libdyld.dylib_$version_string
           cp "$cfnetwork_dir" ~/Documents/symbol_collection/arm64/CFNetwork_$version_string
           cp "$photo_library_dir" ~/Documents/symbol_collection/arm64/PhotoLibrary_$version_string
           cp "$Foundation_dir" ~/Documents/symbol_collection/arm64/Foundation_$version_string
           cp "$libGPUSupportMercury_dir" ~/Documents/symbol_collection/arm64/libGPUSupportMercury.dylib_$version_string
           cp "$IOMobileFramebuffer_dir" ~/Documents/symbol_collection/arm64/IOMobileFramebuffer_$version_string
           cp "$IOKit_dir" ~/Documents/symbol_collection/arm64/IOKit_$version_string
           cp "$libicucore_path" ~/Documents/symbol_collection/arm64/libicucore.A.dylib_$version_string
           cp "$libsystem_malloc_path" ~/Documents/symbol_collection/arm64/libsystem_malloc.dylib_$version_string
           cp "$CoreServicesInternal_path" ~/Documents/symbol_collection/arm64/CoreServicesInternal_$version_string
           cp "$SpringBoardServices_path" ~/Documents/symbol_collection/arm64/SpringBoardServices_$version_string
           cp "$libcompiler_rt_path" ~/Documents/symbol_collection/arm64/libcompiler_rt.dylib_$version_string
           cp "$CoreText_dir" ~/Documents/symbol_collection/arm64/CoreText_$version_string
           cp "$UIFoundation_path" ~/Documents/symbol_collection/arm64/UIFoundation_$version_string
           cp "$CoreGraphics_dir" ~/Documents/symbol_collection/arm64/CoreGraphics_$version_string
           cp "$libRIP_A_dylib_dir" ~/Documents/symbol_collection/arm64/libRIP.A.dylib_$version_string
           cp "$CoreVideo_dir" ~/Documents/symbol_collection/arm64/CoreVideo_$version_string
           cp "$Celestial_path" ~/Documents/symbol_collection/arm64/Celestial_$version_string
           cp "$libGFXShared_dylib_path" ~/Documents/symbol_collection/arm64/libGFXShared.dylib_$version_string
           cp "$GLEngine_path" ~/Documents/symbol_collection/arm64/GLEngine_$version_string
           cp "$OpenGLES_path" ~/Documents/symbol_collection/arm64/OpenGLES_$version_string
           cp "$CoreLocation_path" ~/Documents/symbol_collection/arm64/CoreLocation_$version_string
           cp "$AXRuntime_path" ~/Documents/symbol_collection/arm64/AXRuntime_$version_string
           cp "$libxpc_path" ~/Documents/symbol_collection/arm64/libxpc.dylib_$version_string
           cp "$MobileKeyBag_path" ~/Documents/symbol_collection/arm64/MobileKeyBag_$version_string
           cp "$Security_path" ~/Documents/symbol_collection/arm64/Security_$version_string
           cp "$libnetwork_path" ~/Documents/symbol_collection/arm64/libnetwork.dylib_$version_string
           cp "$FrontBoardServices_path" ~/Documents/symbol_collection/arm64/FrontBoardServices_$version_string
           cp "$CoreTelephony_path" ~/Documents/symbol_collection/arm64/CoreTelephony_$version_string
           cp "$CoreSpotlight_path" ~/Documents/symbol_collection/arm64/CoreSpotlight_$version_string
           cp "$libsystem_network_path" ~/Documents/symbol_collection/arm64/libsystem_network.dylib_$version_string
           cp "$libsqlite3_path" ~/Documents/symbol_collection/arm64/libsqlite3.dylib_$version_string
           cp "$MobileSpotlightIndex_path" ~/Documents/symbol_collection/arm64/MobileSpotlightIndex_$version_string
           cp "$DataDetectorsCore_path" ~/Documents/symbol_collection/arm64/DataDetectorsCore_$version_string
           cp "$CoreUI_path" ~/Documents/symbol_collection/arm64/CoreUI_$version_string
           cp "$AGXGLDriver_path" ~/Documents/symbol_collection/arm64/AGXGLDriver_$version_string
           cp "$MediaToolbox_path" ~/Documents/symbol_collection/arm64/MediaToolbox_$version_string
           cp "$BackBoardServices_path" ~/Documents/symbol_collection/arm64/BackBoardServices_$version_string
           cp "$AssetsLibrary_path" ~/Documents/symbol_collection/arm64/AssetsLibrary_$version_string
           cp "$libsystem_trace_path" ~/Documents/symbol_collection/arm64/libsystem_trace.dylib_$version_string
           cp "$ColorSync_path" ~/Documents/symbol_collection/arm64/ColorSync_$version_string
           cp "$libmecab_em_path" ~/Documents/symbol_collection/arm64/libmecab_em.dylib_$version_string
           cp "$lib_cpp_1_path" ~/Documents/symbol_collection/arm64/libc++.1.dylib_$version_string
           cp "$libsystem_block_path" ~/Documents/symbol_collection/arm64/libsystem_blocks.dylib_$version_string
           cp "$UserNotifications_path" ~/Documents/symbol_collection/arm64/UserNotifications_$version_string
           cp "$libsystem_coretls_path" ~/Documents/symbol_collection/arm64/libsystem_coretls.dylib_$version_string
           cp "$MediaPlayer_path" ~/Documents/symbol_collection/arm64/MediaPlayer_$version_string
       fi
    fi
    cd ..
done
echo "armv7:" >> ~/Documents/device_arch_list.txt
for ((c=0;c<${armv7_count};c++))
do
    echo ${armv7_arr[c]} >> ~/Documents/device_arch_list.txt
done
echo "" >> ~/Documents/device_arch_list.txt
echo "armv7s:" >> ~/Documents/device_arch_list.txt
for ((c=0;c<${armv7s_count};c++))
do
    echo ${armv7s_arr[c]} >> ~/Documents/device_arch_list.txt
done
echo "" >> ~/Documents/device_arch_list.txt
echo "arm64:" >> ~/Documents/device_arch_list.txt
for ((c=0;c<${arm64_count};c++))
do
    echo ${arm64_arr[c]} >> ~/Documents/device_arch_list.txt
done
echo "" >> ~/Documents/device_arch_list.txt
