package com.google.android.gms.internal.clearcut;

import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
final class zzdu implements zzef {
    private final zzdo zzmn;
    private final boolean zzmo;
    private final zzex zzmx;
    private final zzbu zzmy;

    private zzdu(zzex zzexVar, zzbu zzbuVar, zzdo zzdoVar) {
        this.zzmx = zzexVar;
        this.zzmo = zzbuVar.zze(zzdoVar);
        this.zzmy = zzbuVar;
        this.zzmn = zzdoVar;
    }

    static zzdu zza(zzex zzexVar, zzbu zzbuVar, zzdo zzdoVar) {
        return new zzdu(zzexVar, zzbuVar, zzdoVar);
    }

    @Override // com.google.android.gms.internal.clearcut.zzef
    public final boolean equals(Object obj, Object obj2) {
        if (!this.zzmx.zzq(obj).equals(this.zzmx.zzq(obj2))) {
            return false;
        }
        if (this.zzmo) {
            return this.zzmy.zza(obj).equals(this.zzmy.zza(obj2));
        }
        return true;
    }

    @Override // com.google.android.gms.internal.clearcut.zzef
    public final int hashCode(Object obj) {
        int iHashCode = this.zzmx.zzq(obj).hashCode();
        return this.zzmo ? (iHashCode * 53) + this.zzmy.zza(obj).hashCode() : iHashCode;
    }

    @Override // com.google.android.gms.internal.clearcut.zzef
    public final Object newInstance() {
        return this.zzmn.zzbd().zzbi();
    }

    @Override // com.google.android.gms.internal.clearcut.zzef
    public final void zza(Object obj, zzfr zzfrVar) {
        Iterator it = this.zzmy.zza(obj).iterator();
        if (it.hasNext()) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(((Map.Entry) it.next()).getKey());
            throw null;
        }
        zzex zzexVar = this.zzmx;
        zzexVar.zzc(zzexVar.zzq(obj), zzfrVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0064 A[EDGE_INSN: B:51:0x0064->B:28:0x0064 BREAK  A[LOOP:1: B:14:0x0034->B:54:0x0034], SYNTHETIC] */
    @Override // com.google.android.gms.internal.clearcut.zzef
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zza(Object obj, byte[] bArr, int i, int i2, zzay zzayVar) throws zzco {
        int iZza;
        zzcg zzcgVar = (zzcg) obj;
        zzey zzeyVarZzeb = zzcgVar.zzjp;
        if (zzeyVarZzeb == zzey.zzea()) {
            zzeyVarZzeb = zzey.zzeb();
            zzcgVar.zzjp = zzeyVarZzeb;
        }
        zzey zzeyVar = zzeyVarZzeb;
        while (i < i2) {
            int iZza2 = zzax.zza(bArr, i, zzayVar);
            int i3 = zzayVar.zzfd;
            if (i3 != 11) {
                byte[] bArr2 = bArr;
                int i4 = i2;
                zzay zzayVar2 = zzayVar;
                i = (i3 & 7) == 2 ? zzax.zza(i3, bArr2, iZza2, i4, zzeyVar, zzayVar2) : zzax.zza(i3, bArr2, iZza2, i4, zzayVar2);
            } else {
                byte[] bArr3 = bArr;
                int i5 = i2;
                zzay zzayVar3 = zzayVar;
                int i6 = 0;
                zzbb zzbbVar = null;
                while (true) {
                    if (iZza2 >= i5) {
                        iZza = iZza2;
                        break;
                    }
                    iZza = zzax.zza(bArr3, iZza2, zzayVar3);
                    int i7 = zzayVar3.zzfd;
                    int i8 = i7 >>> 3;
                    int i9 = i7 & 7;
                    if (i8 != 2) {
                        if (i8 != 3 || i9 != 2) {
                            if (i7 != 12) {
                                break;
                            } else {
                                iZza2 = zzax.zza(i7, bArr3, iZza, i5, zzayVar3);
                            }
                        } else {
                            iZza2 = zzax.zze(bArr3, iZza, zzayVar3);
                            zzbbVar = (zzbb) zzayVar3.zzff;
                        }
                    } else if (i9 == 0) {
                        iZza2 = zzax.zza(bArr3, iZza, zzayVar3);
                        i6 = zzayVar3.zzfd;
                    } else if (i7 != 12) {
                    }
                }
                if (zzbbVar != null) {
                    zzeyVar.zzb((i6 << 3) | 2, zzbbVar);
                }
                i = iZza;
                bArr = bArr3;
                i2 = i5;
                zzayVar = zzayVar3;
            }
        }
        if (i != i2) {
            throw zzco.zzbo();
        }
    }

    @Override // com.google.android.gms.internal.clearcut.zzef
    public final void zzc(Object obj) {
        this.zzmx.zzc(obj);
        this.zzmy.zzc(obj);
    }

    @Override // com.google.android.gms.internal.clearcut.zzef
    public final void zzc(Object obj, Object obj2) {
        zzeh.zza(this.zzmx, obj, obj2);
        if (this.zzmo) {
            zzeh.zza(this.zzmy, obj, obj2);
        }
    }

    @Override // com.google.android.gms.internal.clearcut.zzef
    public final int zzm(Object obj) {
        zzex zzexVar = this.zzmx;
        int iZzr = zzexVar.zzr(zzexVar.zzq(obj));
        return this.zzmo ? iZzr + this.zzmy.zza(obj).zzat() : iZzr;
    }

    @Override // com.google.android.gms.internal.clearcut.zzef
    public final boolean zzo(Object obj) {
        return this.zzmy.zza(obj).isInitialized();
    }
}
