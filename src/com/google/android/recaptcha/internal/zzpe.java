package com.google.android.recaptcha.internal;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
final class zzpe extends AbstractSet {
    final /* synthetic */ zzpj zza;

    public /* synthetic */ zzpe(zzpj zzpjVar, byte[] bArr) {
        Objects.requireNonNull(zzpjVar);
        this.zza = zzpjVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.zza.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        zzpj zzpjVar = this.zza;
        Map mapZzb = zzpjVar.zzb();
        if (mapZzb != null) {
            return mapZzb.entrySet().contains(obj);
        }
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            int iZzh = zzpjVar.zzh(entry.getKey());
            if (iZzh != -1 && Objects.equals(zzpjVar.zzo(iZzh), entry.getValue())) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        zzpj zzpjVar = this.zza;
        Map mapZzb = zzpjVar.zzb();
        return mapZzb != null ? mapZzb.entrySet().iterator() : new zzpc(zzpjVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        int iZzg;
        int iZze;
        zzpj zzpjVar = this.zza;
        Map mapZzb = zzpjVar.zzb();
        if (mapZzb != null) {
            return mapZzb.entrySet().remove(obj);
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (zzpjVar.zza() || (iZze = zzpk.zze(entry.getKey(), entry.getValue(), (iZzg = zzpjVar.zzg()), zzpjVar.zzj(), zzpjVar.zzk(), zzpjVar.zzl(), zzpjVar.zzm())) == -1) {
            return false;
        }
        zzpjVar.zzd(iZze, iZzg);
        zzpjVar.zzt(zzpjVar.zzs() - 1);
        zzpjVar.zzc();
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.zza.size();
    }
}
