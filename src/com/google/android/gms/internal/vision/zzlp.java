package com.google.android.gms.internal.vision;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
final class zzlp implements Iterator {
    private int zza;
    private boolean zzb;
    private Iterator zzc;
    private final /* synthetic */ zzlh zzd;

    private zzlp(zzlh zzlhVar) {
        this.zzd = zzlhVar;
        this.zza = -1;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zza + 1 < this.zzd.zzb.size() || (!this.zzd.zzc.isEmpty() && zza().hasNext());
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.zzb) {
            throw new IllegalStateException("remove() was called before next()");
        }
        this.zzb = false;
        this.zzd.zzf();
        if (this.zza < this.zzd.zzb.size()) {
            zzlh zzlhVar = this.zzd;
            int i = this.zza;
            this.zza = i - 1;
            zzlhVar.zzc(i);
            return;
        }
        zza().remove();
    }

    private final Iterator zza() {
        if (this.zzc == null) {
            this.zzc = this.zzd.zzc.entrySet().iterator();
        }
        return this.zzc;
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        this.zzb = true;
        int i = this.zza + 1;
        this.zza = i;
        if (i >= this.zzd.zzb.size()) {
            return (Map.Entry) zza().next();
        }
        return (Map.Entry) this.zzd.zzb.get(this.zza);
    }

    /* synthetic */ zzlp(zzlh zzlhVar, zzlg zzlgVar) {
        this(zzlhVar);
    }
}
