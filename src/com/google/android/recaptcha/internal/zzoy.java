package com.google.android.recaptcha.internal;

import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
abstract class zzoy<K, V> implements zzqi<K, V> {
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzqi) {
            return zza().equals(((zzqi) obj).zza());
        }
        return false;
    }

    public final int hashCode() {
        return zza().hashCode();
    }

    public final String toString() {
        return zza().toString();
    }

    @Override // com.google.android.recaptcha.internal.zzqi
    public abstract Map zza();
}
