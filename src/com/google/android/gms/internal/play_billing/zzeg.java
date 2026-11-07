package com.google.android.gms.internal.play_billing;

import com.android.dex.Dex$$ExternalSyntheticBUOutline1;
import com.google.android.gms.internal.fido.zzgu$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
class zzeg extends zzef {
    protected final byte[] zza;

    public zzeg(byte[] bArr) {
        super(null);
        bArr.getClass();
        this.zza = bArr;
    }

    @Override // com.google.android.gms.internal.play_billing.zzei
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzei) || zzd() != ((zzei) obj).zzd()) {
            return false;
        }
        if (zzd() == 0) {
            return true;
        }
        if (!(obj instanceof zzeg)) {
            return obj.equals(this);
        }
        zzeg zzegVar = (zzeg) obj;
        int iZzi = zzi();
        int iZzi2 = zzegVar.zzi();
        if (iZzi != 0 && iZzi2 != 0 && iZzi != iZzi2) {
            return false;
        }
        int iZzd = zzd();
        if (iZzd > zzegVar.zzd()) {
            zzgu$$ExternalSyntheticBUOutline0.m347m(iZzd, zzd());
            return false;
        }
        if (iZzd > zzegVar.zzd()) {
            Dex$$ExternalSyntheticBUOutline1.m219m("Ran off end of other: 0, ", iZzd, ", ", zzegVar.zzd());
            return false;
        }
        byte[] bArr = this.zza;
        byte[] bArr2 = zzegVar.zza;
        zzegVar.zzc();
        int i = 0;
        int i2 = 0;
        while (i < iZzd) {
            if (bArr[i] != bArr2[i2]) {
                return false;
            }
            i++;
            i2++;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.play_billing.zzei
    public byte zza(int i) {
        return this.zza[i];
    }

    @Override // com.google.android.gms.internal.play_billing.zzei
    public byte zzb(int i) {
        return this.zza[i];
    }

    public int zzc() {
        return 0;
    }

    @Override // com.google.android.gms.internal.play_billing.zzei
    public int zzd() {
        return this.zza.length;
    }

    @Override // com.google.android.gms.internal.play_billing.zzei
    public final int zze(int i, int i2, int i3) {
        return zzfo.zzb(i, this.zza, 0, i3);
    }

    @Override // com.google.android.gms.internal.play_billing.zzei
    public final zzei zzf(int i, int i2) {
        int iZzh = zzei.zzh(0, i2, zzd());
        return iZzh == 0 ? zzei.zzb : new zzec(this.zza, 0, iZzh);
    }

    @Override // com.google.android.gms.internal.play_billing.zzei
    public final void zzg(zzdz zzdzVar) {
        ((zzem) zzdzVar).zzc(this.zza, 0, zzd());
    }
}
