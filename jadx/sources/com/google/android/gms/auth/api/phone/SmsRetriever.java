package com.google.android.gms.auth.api.phone;

import android.content.Context;
import com.google.android.gms.internal.p031authapiphone.zzab;

/* JADX INFO: loaded from: classes4.dex */
public abstract class SmsRetriever {
    public static SmsRetrieverClient getClient(Context context) {
        return new zzab(context);
    }
}
