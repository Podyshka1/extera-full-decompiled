package com.google.android.gms.internal.clearcut;

import com.google.android.gms.internal.clearcut.zzcg;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
final class zzbp implements zzfr {
    private final zzbn zzfo;

    private zzbp(zzbn zzbnVar) {
        zzbn zzbnVar2 = (zzbn) zzci.zza((Object) zzbnVar, "output");
        this.zzfo = zzbnVar2;
        zzbnVar2.zzfz = this;
    }

    public static zzbp zza(zzbn zzbnVar) {
        zzbp zzbpVar = zzbnVar.zzfz;
        return zzbpVar != null ? zzbpVar : new zzbp(zzbnVar);
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zza(int i, double d) {
        this.zzfo.zza(i, d);
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zza(int i, float f) {
        this.zzfo.zza(i, f);
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zza(int i, long j) {
        this.zzfo.zza(i, j);
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zza(int i, zzbb zzbbVar) {
        this.zzfo.zza(i, zzbbVar);
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zza(int i, zzdh zzdhVar, Map map) {
        for (Map.Entry entry : map.entrySet()) {
            this.zzfo.zzb(i, 2);
            this.zzfo.zzo(zzdg.zza(zzdhVar, entry.getKey(), entry.getValue()));
            zzdg.zza(this.zzfo, zzdhVar, entry.getKey(), entry.getValue());
        }
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zza(int i, Object obj) {
        if (obj instanceof zzbb) {
            this.zzfo.zzb(i, (zzbb) obj);
        } else {
            this.zzfo.zzb(i, (zzdo) obj);
        }
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zza(int i, Object obj, zzef zzefVar) {
        this.zzfo.zza(i, (zzdo) obj, zzefVar);
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zza(int i, String str) {
        this.zzfo.zza(i, str);
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zza(int i, List list) {
        int i2 = 0;
        if (!(list instanceof zzcx)) {
            while (i2 < list.size()) {
                this.zzfo.zza(i, (String) list.get(i2));
                i2++;
            }
            return;
        }
        zzcx zzcxVar = (zzcx) list;
        while (i2 < list.size()) {
            Object raw = zzcxVar.getRaw(i2);
            if (raw instanceof String) {
                this.zzfo.zza(i, (String) raw);
            } else {
                this.zzfo.zza(i, (zzbb) raw);
            }
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zza(int i, List list, zzef zzefVar) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            zza(i, list.get(i2), zzefVar);
        }
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zza(int i, List list, boolean z) {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.zzfo.zzc(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        this.zzfo.zzb(i, 2);
        int iZzs = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iZzs += zzbn.zzs(((Integer) list.get(i3)).intValue());
        }
        this.zzfo.zzo(iZzs);
        while (i2 < list.size()) {
            this.zzfo.zzn(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zzaa(int i) {
        this.zzfo.zzb(i, 3);
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zzab(int i) {
        this.zzfo.zzb(i, 4);
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final int zzaj() {
        return zzcg.zzg.zzko;
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zzb(int i, long j) {
        this.zzfo.zzb(i, j);
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zzb(int i, Object obj, zzef zzefVar) {
        zzbn zzbnVar = this.zzfo;
        zzbnVar.zzb(i, 3);
        zzefVar.zza((zzdo) obj, zzbnVar.zzfz);
        zzbnVar.zzb(i, 4);
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zzb(int i, List list) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.zzfo.zza(i, (zzbb) list.get(i2));
        }
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zzb(int i, List list, zzef zzefVar) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzb(i, list.get(i2), zzefVar);
        }
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zzb(int i, List list, boolean z) {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.zzfo.zzf(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        this.zzfo.zzb(i, 2);
        int iZzv = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iZzv += zzbn.zzv(((Integer) list.get(i3)).intValue());
        }
        this.zzfo.zzo(iZzv);
        while (i2 < list.size()) {
            this.zzfo.zzq(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zzb(int i, boolean z) {
        this.zzfo.zzb(i, z);
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zzc(int i, int i2) {
        this.zzfo.zzc(i, i2);
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zzc(int i, long j) {
        this.zzfo.zzc(i, j);
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zzc(int i, List list, boolean z) {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.zzfo.zza(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        this.zzfo.zzb(i, 2);
        int iZze = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iZze += zzbn.zze(((Long) list.get(i3)).longValue());
        }
        this.zzfo.zzo(iZze);
        while (i2 < list.size()) {
            this.zzfo.zzb(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zzd(int i, int i2) {
        this.zzfo.zzd(i, i2);
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zzd(int i, List list, boolean z) {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.zzfo.zza(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        this.zzfo.zzb(i, 2);
        int iZzf = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iZzf += zzbn.zzf(((Long) list.get(i3)).longValue());
        }
        this.zzfo.zzo(iZzf);
        while (i2 < list.size()) {
            this.zzfo.zzb(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zze(int i, int i2) {
        this.zzfo.zze(i, i2);
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zze(int i, List list, boolean z) {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.zzfo.zzc(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        this.zzfo.zzb(i, 2);
        int iZzh = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iZzh += zzbn.zzh(((Long) list.get(i3)).longValue());
        }
        this.zzfo.zzo(iZzh);
        while (i2 < list.size()) {
            this.zzfo.zzd(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zzf(int i, int i2) {
        this.zzfo.zzf(i, i2);
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zzf(int i, List list, boolean z) {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.zzfo.zza(i, ((Float) list.get(i2)).floatValue());
                i2++;
            }
            return;
        }
        this.zzfo.zzb(i, 2);
        int iZzb = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iZzb += zzbn.zzb(((Float) list.get(i3)).floatValue());
        }
        this.zzfo.zzo(iZzb);
        while (i2 < list.size()) {
            this.zzfo.zza(((Float) list.get(i2)).floatValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zzg(int i, List list, boolean z) {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.zzfo.zza(i, ((Double) list.get(i2)).doubleValue());
                i2++;
            }
            return;
        }
        this.zzfo.zzb(i, 2);
        int iZzb = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iZzb += zzbn.zzb(((Double) list.get(i3)).doubleValue());
        }
        this.zzfo.zzo(iZzb);
        while (i2 < list.size()) {
            this.zzfo.zza(((Double) list.get(i2)).doubleValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zzh(int i, List list, boolean z) {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.zzfo.zzc(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        this.zzfo.zzb(i, 2);
        int iZzx = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iZzx += zzbn.zzx(((Integer) list.get(i3)).intValue());
        }
        this.zzfo.zzo(iZzx);
        while (i2 < list.size()) {
            this.zzfo.zzn(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zzi(int i, long j) {
        this.zzfo.zza(i, j);
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zzi(int i, List list, boolean z) {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.zzfo.zzb(i, ((Boolean) list.get(i2)).booleanValue());
                i2++;
            }
            return;
        }
        this.zzfo.zzb(i, 2);
        int iZzb = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iZzb += zzbn.zzb(((Boolean) list.get(i3)).booleanValue());
        }
        this.zzfo.zzo(iZzb);
        while (i2 < list.size()) {
            this.zzfo.zza(((Boolean) list.get(i2)).booleanValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zzj(int i, long j) {
        this.zzfo.zzc(i, j);
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zzj(int i, List list, boolean z) {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.zzfo.zzd(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        this.zzfo.zzb(i, 2);
        int iZzt = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iZzt += zzbn.zzt(((Integer) list.get(i3)).intValue());
        }
        this.zzfo.zzo(iZzt);
        while (i2 < list.size()) {
            this.zzfo.zzo(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zzk(int i, List list, boolean z) {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.zzfo.zzf(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        this.zzfo.zzb(i, 2);
        int iZzw = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iZzw += zzbn.zzw(((Integer) list.get(i3)).intValue());
        }
        this.zzfo.zzo(iZzw);
        while (i2 < list.size()) {
            this.zzfo.zzq(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zzl(int i, List list, boolean z) {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.zzfo.zzc(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        this.zzfo.zzb(i, 2);
        int iZzi = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iZzi += zzbn.zzi(((Long) list.get(i3)).longValue());
        }
        this.zzfo.zzo(iZzi);
        while (i2 < list.size()) {
            this.zzfo.zzd(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zzm(int i, int i2) {
        this.zzfo.zzf(i, i2);
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zzm(int i, List list, boolean z) {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.zzfo.zze(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        this.zzfo.zzb(i, 2);
        int iZzu = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iZzu += zzbn.zzu(((Integer) list.get(i3)).intValue());
        }
        this.zzfo.zzo(iZzu);
        while (i2 < list.size()) {
            this.zzfo.zzp(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zzn(int i, int i2) {
        this.zzfo.zzc(i, i2);
    }

    @Override // com.google.android.gms.internal.clearcut.zzfr
    public final void zzn(int i, List list, boolean z) {
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                this.zzfo.zzb(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        this.zzfo.zzb(i, 2);
        int iZzg = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iZzg += zzbn.zzg(((Long) list.get(i3)).longValue());
        }
        this.zzfo.zzo(iZzg);
        while (i2 < list.size()) {
            this.zzfo.zzc(((Long) list.get(i2)).longValue());
            i2++;
        }
    }
}
