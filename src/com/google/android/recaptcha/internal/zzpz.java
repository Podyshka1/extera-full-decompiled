package com.google.android.recaptcha.internal;

import java.io.Serializable;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzpz<K, V> extends zzoz<K, V> implements Serializable {
    final transient zzpw<K, ? extends zzpq<V>> map;
    final transient int size;

    public zzpz(zzpw zzpwVar, int i) {
        this.map = zzpwVar;
        this.size = i;
    }

    @Override // com.google.android.recaptcha.internal.zzoy, com.google.android.recaptcha.internal.zzqi
    public /* synthetic */ Map zza() {
        return this.map;
    }
}
