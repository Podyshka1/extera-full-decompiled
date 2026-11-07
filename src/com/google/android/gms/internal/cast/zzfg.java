package com.google.android.gms.internal.cast;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzfg {
    public static final /* synthetic */ int $r8$clinit = 0;

    public static PendingIntent zza(Context context, int i, Intent intent, int i2) {
        return PendingIntent.getActivity(context, 0, intent, 201326592);
    }

    public static PendingIntent zzb(Context context, int i, Intent intent, int i2) {
        return PendingIntent.getBroadcast(context, 0, intent, i2);
    }
}
