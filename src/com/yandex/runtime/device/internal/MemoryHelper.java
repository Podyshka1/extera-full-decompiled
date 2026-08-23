package com.yandex.runtime.device.internal;

import android.app.ActivityManager;
import com.yandex.runtime.Runtime;

/* JADX INFO: loaded from: classes5.dex */
class MemoryHelper {
    public static int getAllowedMemorySize() {
        return ((ActivityManager) Runtime.getApplicationContext().getSystemService("activity")).getMemoryClass();
    }
}
