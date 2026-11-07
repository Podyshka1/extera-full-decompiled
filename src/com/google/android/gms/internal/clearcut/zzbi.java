package com.google.android.gms.internal.clearcut;

import com.google.android.gms.internal.cast.zzxg$$ExternalSyntheticBUOutline0;
import com.google.android.gms.internal.vision.zzid$$ExternalSyntheticBUOutline0;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes4.dex */
class zzbi extends zzbh {
    protected final byte[] zzfp;

    public zzbi(byte[] bArr) {
        this.zzfp = bArr;
    }

    @Override // com.google.android.gms.internal.clearcut.zzbb
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzbb) || size() != ((zzbb) obj).size()) {
            return false;
        }
        if (size() == 0) {
            return true;
        }
        if (!(obj instanceof zzbi)) {
            return obj.equals(this);
        }
        zzbi zzbiVar = (zzbi) obj;
        int iZzab = zzab();
        int iZzab2 = zzbiVar.zzab();
        if (iZzab == 0 || iZzab2 == 0 || iZzab == iZzab2) {
            return zza(zzbiVar, 0, size());
        }
        return false;
    }

    @Override // com.google.android.gms.internal.clearcut.zzbb
    public int size() {
        return this.zzfp.length;
    }

    @Override // com.google.android.gms.internal.clearcut.zzbb
    public final int zza(int i, int i2, int i3) {
        return zzci.zza(i, this.zzfp, zzac(), i3);
    }

    @Override // com.google.android.gms.internal.clearcut.zzbb
    public final zzbb zza(int i, int i2) {
        int iZzb = zzbb.zzb(0, i2, size());
        return iZzb == 0 ? zzbb.zzfi : new zzbe(this.zzfp, zzac(), iZzb);
    }

    @Override // com.google.android.gms.internal.clearcut.zzbb
    public final String zza(Charset charset) {
        return new String(this.zzfp, zzac(), size(), charset);
    }

    @Override // com.google.android.gms.internal.clearcut.zzbb
    public final void zza(zzba zzbaVar) {
        zzbaVar.zza(this.zzfp, zzac(), size());
    }

    @Override // com.google.android.gms.internal.clearcut.zzbh
    public final boolean zza(zzbb zzbbVar, int i, int i2) {
        if (i2 > zzbbVar.size()) {
            zzid$$ExternalSyntheticBUOutline0.m357m(40, i2, size());
            return false;
        }
        if (i2 > zzbbVar.size()) {
            zzxg$$ExternalSyntheticBUOutline0.m337m(59, "Ran off end of other: 0, ", i2, ", ", zzbbVar.size());
            return false;
        }
        if (!(zzbbVar instanceof zzbi)) {
            return zzbbVar.zza(0, i2).equals(zza(0, i2));
        }
        zzbi zzbiVar = (zzbi) zzbbVar;
        byte[] bArr = this.zzfp;
        byte[] bArr2 = zzbiVar.zzfp;
        int iZzac = zzac() + i2;
        int iZzac2 = zzac();
        int iZzac3 = zzbiVar.zzac();
        while (iZzac2 < iZzac) {
            if (bArr[iZzac2] != bArr2[iZzac3]) {
                return false;
            }
            iZzac2++;
            iZzac3++;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.clearcut.zzbb
    public final boolean zzaa() {
        int iZzac = zzac();
        return zzff.zze(this.zzfp, iZzac, size() + iZzac);
    }

    public int zzac() {
        return 0;
    }

    @Override // com.google.android.gms.internal.clearcut.zzbb
    public byte zzj(int i) {
        return this.zzfp[i];
    }
}
