package com.google.android.gms.common.util;

import android.os.Build;

/* JADX INFO: loaded from: classes.dex */
public abstract class PlatformVersion {
    public static boolean isAtLeastIceCreamSandwich() {
        return true;
    }

    public static boolean isAtLeastJellyBean() {
        return true;
    }

    public static boolean isAtLeastKitKatWatch() {
        return true;
    }

    public static boolean isAtLeastLollipop() {
        return true;
    }

    public static boolean isAtLeastN() {
        return Build.VERSION.SDK_INT >= 24;
    }

    public static boolean isAtLeastO() {
        return Build.VERSION.SDK_INT >= 26;
    }

    public static boolean isAtLeastP() {
        return Build.VERSION.SDK_INT >= 28;
    }

    public static boolean isAtLeastQ() {
        return Build.VERSION.SDK_INT >= 29;
    }

    public static boolean isAtLeastR() {
        return Build.VERSION.SDK_INT >= 30;
    }

    public static boolean isAtLeastS() {
        return Build.VERSION.SDK_INT >= 31;
    }

    public static boolean isAtLeastU() {
        return Build.VERSION.SDK_INT >= 34;
    }
}
