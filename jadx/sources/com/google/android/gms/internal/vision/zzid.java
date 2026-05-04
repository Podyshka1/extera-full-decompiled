package com.google.android.gms.internal.vision;

import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes4.dex */
class zzid extends zzia {
    protected final byte[] zzb;

    zzid(byte[] bArr) {
        bArr.getClass();
        this.zzb = bArr;
    }

    protected int zze() {
        return 0;
    }

    @Override // com.google.android.gms.internal.vision.zzht
    public byte zza(int i) {
        return this.zzb[i];
    }

    @Override // com.google.android.gms.internal.vision.zzht
    byte zzb(int i) {
        return this.zzb[i];
    }

    @Override // com.google.android.gms.internal.vision.zzht
    public int zza() {
        return this.zzb.length;
    }

    @Override // com.google.android.gms.internal.vision.zzht
    public final zzht zza(int i, int i2) {
        int iZzb = zzht.zzb(0, i2, zza());
        if (iZzb == 0) {
            return zzht.zza;
        }
        return new zzhw(this.zzb, zze(), iZzb);
    }

    @Override // com.google.android.gms.internal.vision.zzht
    final void zza(zzhq zzhqVar) {
        zzhqVar.zza(this.zzb, zze(), zza());
    }

    @Override // com.google.android.gms.internal.vision.zzht
    protected final String zza(Charset charset) {
        return new String(this.zzb, zze(), zza(), charset);
    }

    @Override // com.google.android.gms.internal.vision.zzht
    public final boolean zzc() {
        int iZze = zze();
        return zzmd.zza(this.zzb, iZze, zza() + iZze);
    }

    @Override // com.google.android.gms.internal.vision.zzht
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzht) || zza() != ((zzht) obj).zza()) {
            return false;
        }
        if (zza() == 0) {
            return true;
        }
        if (obj instanceof zzid) {
            zzid zzidVar = (zzid) obj;
            int iZzd = zzd();
            int iZzd2 = zzidVar.zzd();
            if (iZzd == 0 || iZzd2 == 0 || iZzd == iZzd2) {
                return zza(zzidVar, 0, zza());
            }
            return false;
        }
        return obj.equals(this);
    }

    @Override // com.google.android.gms.internal.vision.zzia
    final boolean zza(zzht zzhtVar, int i, int i2) {
        if (i2 > zzhtVar.zza()) {
            int iZza = zza();
            StringBuilder sb = new StringBuilder(40);
            sb.append("Length too large: ");
            sb.append(i2);
            sb.append(iZza);
            throw new IllegalArgumentException(sb.toString());
        }
        if (i2 > zzhtVar.zza()) {
            int iZza2 = zzhtVar.zza();
            StringBuilder sb2 = new StringBuilder(59);
            sb2.append("Ran off end of other: 0, ");
            sb2.append(i2);
            sb2.append(", ");
            sb2.append(iZza2);
            throw new IllegalArgumentException(sb2.toString());
        }
        if (zzhtVar instanceof zzid) {
            zzid zzidVar = (zzid) zzhtVar;
            byte[] bArr = this.zzb;
            byte[] bArr2 = zzidVar.zzb;
            int iZze = zze() + i2;
            int iZze2 = zze();
            int iZze3 = zzidVar.zze();
            while (iZze2 < iZze) {
                if (bArr[iZze2] != bArr2[iZze3]) {
                    return false;
                }
                iZze2++;
                iZze3++;
            }
            return true;
        }
        return zzhtVar.zza(0, i2).equals(zza(0, i2));
    }

    @Override // com.google.android.gms.internal.vision.zzht
    protected final int zza(int i, int i2, int i3) {
        return zzjf.zza(i, this.zzb, zze(), i3);
    }
}
