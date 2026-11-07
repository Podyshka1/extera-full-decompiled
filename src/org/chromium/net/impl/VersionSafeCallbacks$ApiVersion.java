package org.chromium.net.impl;

import org.chromium.net.ApiVersion;

/* JADX INFO: loaded from: classes5.dex */
public abstract class VersionSafeCallbacks$ApiVersion {
    public static int getMaximumAvailableApiLevel() {
        if (Integer.parseInt(getCronetVersion().split("\\.")[0]) < 59) {
            return ApiVersion.getApiLevel();
        }
        return ApiVersion.getMaximumAvailableApiLevel();
    }

    public static String getCronetVersion() {
        return ApiVersion.getCronetVersion();
    }
}
