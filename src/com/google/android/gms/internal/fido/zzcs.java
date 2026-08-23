package com.google.android.gms.internal.fido;

import java.util.Comparator;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzcs implements Comparator {
    @Override // java.util.Comparator
    public abstract int compare(Object obj, Object obj2);

    public zzcs zza() {
        return new zzcx(this);
    }
}
