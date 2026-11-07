package com.google.mlkit.genai.common.internal;

import android.content.Context;
import android.content.pm.PackageManager;

/* JADX INFO: loaded from: classes5.dex */
public abstract class GenAiUtils {
    public static boolean isAiCoreCompatible(Context context) {
        return zza(context) >= 193575;
    }

    public static boolean isSystemPromptSupported(Context context) {
        return zza(context) >= 457627;
    }

    public static boolean isThinkingModeSupported(Context context) {
        return zza(context) >= 457627;
    }

    private static int zza(Context context) {
        try {
            return context.getPackageManager().getPackageInfo("com.google.android.aicore", 0).versionCode;
        } catch (PackageManager.NameNotFoundException unused) {
            return 0;
        }
    }
}
