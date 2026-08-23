package com.google.android.gms.common.moduleinstall;

import android.content.Context;
import com.google.android.gms.common.moduleinstall.internal.zay;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ModuleInstall {
    public static ModuleInstallClient getClient(Context context) {
        return new zay(context);
    }
}
