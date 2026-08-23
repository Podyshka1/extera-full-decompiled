package com.yandex.runtime.view;

import android.app.ActivityManager;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import com.yandex.maps.mobile.R$styleable;
import com.yandex.runtime.graphics_state.GraphicsViewState;
import com.yandex.runtime.graphics_state.GraphicsViewType;
import com.yandex.runtime.logging.Logger;
import com.yandex.runtime.vulkan_launcher.VulkanLauncher;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public class PlatformViewFactory {
    private static final Set<String> VULKAN_WHITE_LIST = new HashSet(Arrays.asList("Nexus 5X"));

    public enum Attribute {
        MOVABLE,
        NONINTERACTIVE,
        OFFSCREEN_BUFFER_ENABLED,
        RENDER_DEBUG,
        VULKAN_ENABLED
    }

    private static boolean isAndroidGo(Context context) {
        return ((ActivityManager) context.getSystemService("activity")).isLowRamDevice();
    }

    public static PlatformView getPlatformView(Context context, Set<Attribute> set) {
        PlatformView platformVulkanSurfaceView;
        if (set == null) {
            set = new HashSet<>();
        }
        boolean zContains = set.contains(Attribute.RENDER_DEBUG);
        boolean z = Build.VERSION.SDK_INT >= 26 || VULKAN_WHITE_LIST.contains(Build.MODEL);
        boolean zIsAndroidGo = isAndroidGo(context);
        if (zIsAndroidGo) {
            Logger.warn("Android Go detected. Do not use vulkan.");
        }
        boolean z2 = z && !zIsAndroidGo;
        boolean z3 = set.contains(Attribute.VULKAN_ENABLED) || VulkanLauncher.isVulkanEnabled();
        if (!z3) {
            Logger.warn("Vulkan is not enabled. Do not use vulkan.");
        }
        if (set.contains(Attribute.MOVABLE)) {
            GraphicsViewState.logViewCreateAttempt(GraphicsViewType.OPEN_GL);
            platformVulkanSurfaceView = new PlatformGLTextureView(context, zContains);
        } else if (z2 && z3) {
            GraphicsViewState.logViewCreateAttempt(GraphicsViewType.VULKAN);
            try {
                platformVulkanSurfaceView = new PlatformVulkanSurfaceView(context, zContains);
            } catch (RuntimeException e) {
                Logger.error("Failed to create Vulkan view: " + e.getMessage());
                Logger.error("Falling back to OpenGL view");
                platformVulkanSurfaceView = null;
            }
        } else {
            platformVulkanSurfaceView = null;
        }
        if (platformVulkanSurfaceView == null) {
            GraphicsViewState.logViewCreateAttempt(GraphicsViewType.OPEN_GL);
            platformVulkanSurfaceView = createGLSurfaceView(context, Boolean.valueOf(zContains));
        }
        if (set.contains(Attribute.NONINTERACTIVE)) {
            platformVulkanSurfaceView.setNoninteractive(true);
        }
        if (set.contains(Attribute.OFFSCREEN_BUFFER_ENABLED)) {
            platformVulkanSurfaceView.setOffscreenBufferEnabled(true);
        }
        return platformVulkanSurfaceView;
    }

    public static final Set<Attribute> convertAttributeSet(Context context, AttributeSet attributeSet) {
        HashSet hashSet = new HashSet();
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R$styleable.PlatformView, 0, 0);
        try {
            if (typedArrayObtainStyledAttributes.getBoolean(R$styleable.PlatformView_movable, false)) {
                hashSet.add(Attribute.MOVABLE);
            }
            if (typedArrayObtainStyledAttributes.getBoolean(R$styleable.PlatformView_noninteractive, false)) {
                hashSet.add(Attribute.NONINTERACTIVE);
            }
            if (!typedArrayObtainStyledAttributes.getBoolean(R$styleable.PlatformView_offscreenBufferEnabled, true)) {
                hashSet.add(Attribute.OFFSCREEN_BUFFER_ENABLED);
            }
            if (typedArrayObtainStyledAttributes.getBoolean(R$styleable.PlatformView_renderDebug, false)) {
                hashSet.add(Attribute.RENDER_DEBUG);
            }
            if (typedArrayObtainStyledAttributes.getBoolean(R$styleable.PlatformView_vulkanPreferred, false)) {
                hashSet.add(Attribute.VULKAN_ENABLED);
            }
            typedArrayObtainStyledAttributes.recycle();
            return hashSet;
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    private static PlatformGLSurfaceView createGLSurfaceView(Context context, Boolean bool) {
        if (Build.VERSION.SDK_INT >= 34) {
            return new PlatformGLSurfaceView(context, bool.booleanValue());
        }
        return new PlatformGLSurfaceViewBelowApi34Workaround(context, bool.booleanValue());
    }
}
