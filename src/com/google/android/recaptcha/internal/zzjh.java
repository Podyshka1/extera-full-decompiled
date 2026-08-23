package com.google.android.recaptcha.internal;

import java.util.Map;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
final class zzjh implements Map.Entry {
    private final Map.Entry zza;

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.zza.getKey();
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (((zzjj) this.zza.getValue()) == null) {
            return null;
        }
        throw null;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (obj instanceof zzke) {
            return ((zzjj) this.zza.getValue()).zzc((zzke) obj);
        }
        f$$ExternalSyntheticBUOutline1.m178m("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
        return null;
    }

    public final zzjj zza() {
        return (zzjj) this.zza.getValue();
    }
}
