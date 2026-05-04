package com.google.android.gms.internal.play_billing;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzbi implements zzdj {
    zzbi() {
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzdj) {
            return zzc().equals(((zzdj) obj).zzc());
        }
        return false;
    }

    public final int hashCode() {
        return zzc().hashCode();
    }

    public final String toString() {
        return zzc().toString();
    }
}
