package org.telegram.p029ui.Components.FloatingDebug;

import android.widget.FrameLayout;
import org.telegram.messenger.SharedConfig;
import org.telegram.p029ui.Components.AnimationProperties;
import org.telegram.p029ui.LaunchActivity;

/* JADX INFO: loaded from: classes3.dex */
public abstract class FloatingDebugController {
    private static FloatingDebugView debugView;

    /* JADX INFO: loaded from: classes7.dex */
    public enum DebugItemType {
        SIMPLE,
        HEADER,
        SEEKBAR
    }

    public static boolean isActive() {
        return SharedConfig.isFloatingDebugActive;
    }

    public static boolean onBackPressed(boolean z) {
        FloatingDebugView floatingDebugView = debugView;
        return floatingDebugView != null && floatingDebugView.onBackPressed(z);
    }

    public static void onDestroy() {
        FloatingDebugView floatingDebugView = debugView;
        if (floatingDebugView != null) {
            floatingDebugView.saveConfig();
        }
        debugView = null;
    }

    public static void setActive(LaunchActivity launchActivity, boolean z) {
        setActive(launchActivity, z, true);
    }

    public static void setActive(final LaunchActivity launchActivity, boolean z, boolean z2) {
        FloatingDebugView floatingDebugView = debugView;
        if (z == (floatingDebugView != null)) {
            return;
        }
        if (z) {
            debugView = new FloatingDebugView(launchActivity);
            launchActivity.getMainContainerFrameLayout().addView(debugView, new FrameLayout.LayoutParams(-1, -1));
            debugView.showFab();
        } else {
            floatingDebugView.dismiss(new Runnable() { // from class: org.telegram.ui.Components.FloatingDebug.FloatingDebugController$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    FloatingDebugController.m10327$r8$lambda$vjnbHUwRPIFZGxpn6HtKtrH0fU(launchActivity);
                }
            });
        }
        if (z2) {
            SharedConfig.isFloatingDebugActive = z;
            SharedConfig.saveConfig();
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$vjnbHU-wRPIFZGxpn6HtKtrH0fU, reason: not valid java name */
    public static /* synthetic */ void m10327$r8$lambda$vjnbHUwRPIFZGxpn6HtKtrH0fU(LaunchActivity launchActivity) {
        launchActivity.getMainContainerFrameLayout().removeView(debugView);
        debugView = null;
    }

    /* JADX INFO: loaded from: classes7.dex */
    public static class DebugItem {
        Runnable action;
        AnimationProperties.FloatProperty floatProperty;
        float from;
        final CharSequence title;

        /* JADX INFO: renamed from: to */
        float f1968to;
        final DebugItemType type;

        public DebugItem(CharSequence charSequence, Runnable runnable) {
            this.type = DebugItemType.SIMPLE;
            this.title = charSequence;
            this.action = runnable;
        }

        public DebugItem(CharSequence charSequence) {
            this.type = DebugItemType.HEADER;
            this.title = charSequence;
        }

        public DebugItem(CharSequence charSequence, float f, float f2, AnimationProperties.FloatProperty floatProperty) {
            this.type = DebugItemType.SEEKBAR;
            this.title = charSequence;
            this.from = f;
            this.f1968to = f2;
            this.floatProperty = floatProperty;
        }
    }
}
