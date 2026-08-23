package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzoc implements Iterator {
    final /* synthetic */ zzoe zza;
    private int zzb;
    private boolean zzc;
    private Iterator zzd;

    /* synthetic */ zzoc(zzoe zzoeVar, byte[] bArr) {
        Objects.requireNonNull(zzoeVar);
        this.zza = zzoeVar;
        this.zzb = -1;
    }

    private final Iterator zza() {
        if (this.zzd == null) {
            this.zzd = this.zza.zzk().entrySet().iterator();
        }
        return this.zzd;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i = this.zzb + 1;
        zzoe zzoeVar = this.zza;
        if (i >= zzoeVar.zzj()) {
            return !zzoeVar.zzk().isEmpty() && zza().hasNext();
        }
        return true;
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        this.zzc = true;
        int i = this.zzb + 1;
        this.zzb = i;
        zzoe zzoeVar = this.zza;
        return i < zzoeVar.zzj() ? (zzob) zzoeVar.zzi()[i] : (Map.Entry) zza().next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.zzc) {
            throw new IllegalStateException("remove() was called before next()");
        }
        this.zzc = false;
        zzoe zzoeVar = this.zza;
        zzoeVar.zzh();
        int i = this.zzb;
        if (i >= zzoeVar.zzj()) {
            zza().remove();
        } else {
            this.zzb = i - 1;
            zzoeVar.zzg(i);
        }
    }
}
