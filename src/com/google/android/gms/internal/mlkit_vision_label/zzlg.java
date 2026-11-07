package com.google.android.gms.internal.mlkit_vision_label;

import com.google.android.gms.common.internal.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class zzlg {
    private final Integer zza = null;
    private final Float zzb;

    public /* synthetic */ zzlg(zzle zzleVar, zzlf zzlfVar) {
        this.zzb = zzleVar.zza;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzlg) {
            return Objects.equal(null, null) && Objects.equal(this.zzb, ((zzlg) obj).zzb) && Objects.equal(null, null);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(null, this.zzb, null);
    }

    @zzcm(zza = 2)
    public final Float zza() {
        return this.zzb;
    }
}
