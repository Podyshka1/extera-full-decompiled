package com.google.android.recaptcha.internal;

import java.util.ArrayDeque;
import java.util.Iterator;
import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
final class zzahl implements Iterator {
    private final ArrayDeque zza;
    private zzaeo zzb;

    public /* synthetic */ zzahl(zzaer zzaerVar, byte[] bArr) {
        if (!(zzaerVar instanceof zzahm)) {
            this.zza = null;
            this.zzb = (zzaeo) zzaerVar;
            return;
        }
        zzahm zzahmVar = (zzahm) zzaerVar;
        ArrayDeque arrayDeque = new ArrayDeque(zzahmVar.zzo());
        this.zza = arrayDeque;
        arrayDeque.push(zzahmVar);
        this.zzb = zzb(zzahmVar.zzn());
    }

    private final zzaeo zzb(zzaer zzaerVar) {
        while (zzaerVar instanceof zzahm) {
            zzahm zzahmVar = (zzahm) zzaerVar;
            this.zza.push(zzahmVar);
            zzaerVar = zzahmVar.zzn();
        }
        return (zzaeo) zzaerVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzb != null;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Iterator
    /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final zzaeo next() {
        zzaeo zzaeoVar = this.zzb;
        zzaeo zzaeoVar2 = null;
        if (zzaeoVar == null) {
            Utils$$ExternalSyntheticBUOutline0.m1121m();
            return null;
        }
        while (true) {
            ArrayDeque arrayDeque = this.zza;
            if (arrayDeque == null || arrayDeque.isEmpty()) {
                break;
            }
            zzaeo zzaeoVarZzb = zzb(((zzahm) arrayDeque.pop()).zzD());
            if (!zzaeoVarZzb.zzr()) {
                zzaeoVar2 = zzaeoVarZzb;
                break;
            }
        }
        this.zzb = zzaeoVar2;
        return zzaeoVar;
    }
}
