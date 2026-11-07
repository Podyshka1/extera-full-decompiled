package androidx.core.view.accessibility;

import android.annotation.SuppressLint;
import android.view.accessibility.AccessibilityEvent;

/* JADX INFO: loaded from: classes.dex */
public abstract class AccessibilityEventCompat {
    @SuppressLint({"WrongConstant"})
    @Deprecated
    public static void setContentChangeTypes(AccessibilityEvent accessibilityEvent, int i) {
        accessibilityEvent.setContentChangeTypes(i);
    }

    @SuppressLint({"WrongConstant"})
    @Deprecated
    public static int getContentChangeTypes(AccessibilityEvent accessibilityEvent) {
        return accessibilityEvent.getContentChangeTypes();
    }
}
