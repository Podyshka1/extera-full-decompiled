package com.google.android.gms.cloudmessaging;

import android.content.Context;

/* JADX INFO: loaded from: classes4.dex */
public abstract class CloudMessaging {
    public static CloudMessagingClient getClient(Context context) {
        return new com.google.android.gms.internal.cloudmessaging.zzm(context);
    }
}
