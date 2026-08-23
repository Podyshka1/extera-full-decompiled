package com.google.android.gms.internal.mlkit_common;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzsc implements zzrz {
    final List zza;

    public zzsc(Context context, zzsb zzsbVar) {
        ArrayList arrayList = new ArrayList();
        this.zza = arrayList;
        if (zzsbVar.zzc()) {
            arrayList.add(new zzsp(context, zzsbVar));
        }
    }
}
