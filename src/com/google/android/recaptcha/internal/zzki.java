package com.google.android.recaptcha.internal;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
final class zzki implements zzkr {
    private final zzke zza;
    private final zzll zzb;
    private final boolean zzc;
    private final zzif zzd;

    private zzki(zzll zzllVar, zzif zzifVar, zzke zzkeVar) {
        this.zzb = zzllVar;
        this.zzc = zzifVar.zzj(zzkeVar);
        this.zzd = zzifVar;
        this.zza = zzkeVar;
    }

    static zzki zzc(zzll zzllVar, zzif zzifVar, zzke zzkeVar) {
        return new zzki(zzllVar, zzifVar, zzkeVar);
    }

    @Override // com.google.android.recaptcha.internal.zzkr
    public final int zza(Object obj) {
        zzll zzllVar = this.zzb;
        int iZzb = zzllVar.zzb(zzllVar.zzd(obj));
        return this.zzc ? iZzb + this.zzd.zzb(obj).zzb() : iZzb;
    }

    @Override // com.google.android.recaptcha.internal.zzkr
    public final int zzb(Object obj) {
        int iHashCode = this.zzb.zzd(obj).hashCode();
        return this.zzc ? (iHashCode * 53) + this.zzd.zzb(obj).zza.hashCode() : iHashCode;
    }

    @Override // com.google.android.recaptcha.internal.zzkr
    public final Object zze() {
        zzke zzkeVar = this.zza;
        return zzkeVar instanceof zzit ? ((zzit) zzkeVar).zzs() : zzkeVar.zzW().zzk();
    }

    @Override // com.google.android.recaptcha.internal.zzkr
    public final void zzf(Object obj) {
        this.zzb.zzm(obj);
        this.zzd.zzf(obj);
    }

    @Override // com.google.android.recaptcha.internal.zzkr
    public final void zzg(Object obj, Object obj2) {
        zzkt.zzr(this.zzb, obj, obj2);
        if (this.zzc) {
            zzkt.zzq(this.zzd, obj, obj2);
        }
    }

    @Override // com.google.android.recaptcha.internal.zzkr
    public final void zzh(Object obj, zzkq zzkqVar, zzie zzieVar) {
        boolean zZzO;
        zzll zzllVar = this.zzb;
        Object objZzc = zzllVar.zzc(obj);
        zzif zzifVar = this.zzd;
        zzij zzijVarZzc = zzifVar.zzc(obj);
        while (zzkqVar.zzc() != Integer.MAX_VALUE) {
            try {
                int iZzd = zzkqVar.zzd();
                if (iZzd != 11) {
                    if ((iZzd & 7) == 2) {
                        Object objZzd = zzifVar.zzd(zzieVar, this.zza, iZzd >>> 3);
                        if (objZzd != null) {
                            zzifVar.zzg(zzkqVar, objZzd, zzieVar, zzijVarZzc);
                        } else {
                            zZzO = zzllVar.zzr(objZzc, zzkqVar);
                        }
                    } else {
                        zZzO = zzkqVar.zzO();
                    }
                    if (!zZzO) {
                        break;
                    }
                } else {
                    Object objZzd2 = null;
                    int iZzj = 0;
                    zzgw zzgwVarZzp = null;
                    while (zzkqVar.zzc() != Integer.MAX_VALUE) {
                        int iZzd2 = zzkqVar.zzd();
                        if (iZzd2 == 16) {
                            iZzj = zzkqVar.zzj();
                            objZzd2 = zzifVar.zzd(zzieVar, this.zza, iZzj);
                        } else if (iZzd2 == 26) {
                            if (objZzd2 != null) {
                                zzifVar.zzg(zzkqVar, objZzd2, zzieVar, zzijVarZzc);
                            } else {
                                zzgwVarZzp = zzkqVar.zzp();
                            }
                        } else if (!zzkqVar.zzO()) {
                            break;
                        }
                    }
                    if (zzkqVar.zzd() != 12) {
                        throw zzje.zzb();
                    }
                    if (zzgwVarZzp != null) {
                        if (objZzd2 != null) {
                            zzifVar.zzh(zzgwVarZzp, objZzd2, zzieVar, zzijVarZzc);
                        } else {
                            zzllVar.zzk(objZzc, iZzj, zzgwVarZzp);
                        }
                    }
                }
            } finally {
                zzllVar.zzn(obj, objZzc);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x008f, code lost:
    
        if (r12 == null) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0091, code lost:
    
        r6.zzj((r11 << 3) | 2, r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0097, code lost:
    
        r12 = r13;
        r11 = r3;
        r13 = r5;
        r14 = r7;
     */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x008f A[EDGE_INSN: B:58:0x008f->B:35:0x008f BREAK  A[LOOP:1: B:18:0x0050->B:63:0x0050], SYNTHETIC] */
    @Override // com.google.android.recaptcha.internal.zzkr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzi(Object obj, byte[] bArr, int i, int i2, zzgj zzgjVar) throws zzje {
        int iZzi;
        zzit zzitVar = (zzit) obj;
        zzlm zzlmVarZzf = zzitVar.zzc;
        if (zzlmVarZzf == zzlm.zzc()) {
            zzlmVarZzf = zzlm.zzf();
            zzitVar.zzc = zzlmVarZzf;
        }
        zzlm zzlmVar = zzlmVarZzf;
        ((zzip) obj).zzi();
        Object objZzd = null;
        while (i < i2) {
            int iZzi2 = zzgk.zzi(bArr, i, zzgjVar);
            int i3 = zzgjVar.zza;
            if (i3 == 11) {
                byte[] bArr2 = bArr;
                int i4 = i2;
                zzgj zzgjVar2 = zzgjVar;
                int i5 = 0;
                zzgw zzgwVar = null;
                while (true) {
                    if (iZzi2 >= i4) {
                        iZzi = iZzi2;
                        break;
                    }
                    iZzi = zzgk.zzi(bArr2, iZzi2, zzgjVar2);
                    int i6 = zzgjVar2.zza;
                    int i7 = i6 >>> 3;
                    int i8 = i6 & 7;
                    if (i7 != 2) {
                        if (i7 == 3) {
                            if (objZzd != null) {
                                int i9 = zzkn.zza;
                                throw null;
                            }
                            if (i8 == 2) {
                                iZzi2 = zzgk.zza(bArr2, iZzi, zzgjVar2);
                                zzgwVar = (zzgw) zzgjVar2.zzc;
                            }
                        }
                        if (i6 != 12) {
                            break;
                        } else {
                            iZzi2 = zzgk.zzo(i6, bArr2, iZzi, i4, zzgjVar2);
                        }
                    } else if (i8 == 0) {
                        iZzi2 = zzgk.zzi(bArr2, iZzi, zzgjVar2);
                        i5 = zzgjVar2.zza;
                        objZzd = this.zzd.zzd(zzgjVar2.zzd, this.zza, i5);
                    } else if (i6 != 12) {
                    }
                }
            } else if ((i3 & 7) == 2) {
                objZzd = this.zzd.zzd(zzgjVar.zzd, this.zza, i3 >>> 3);
                if (objZzd != null) {
                    int i10 = zzkn.zza;
                    throw null;
                }
                i = zzgk.zzh(i3, bArr, iZzi2, i2, zzlmVar, zzgjVar);
            } else {
                i = zzgk.zzo(i3, bArr, iZzi2, i2, zzgjVar);
            }
        }
        if (i != i2) {
            throw zzje.zzg();
        }
    }

    @Override // com.google.android.recaptcha.internal.zzkr
    public final void zzj(Object obj, zzmd zzmdVar) {
        Iterator itZzf = this.zzd.zzb(obj).zzf();
        while (itZzf.hasNext()) {
            Map.Entry entry = (Map.Entry) itZzf.next();
            zzii zziiVar = (zzii) entry.getKey();
            if (zziiVar.zze() != zzmc.MESSAGE) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            zziiVar.zzg();
            zziiVar.zzf();
            if (entry instanceof zzjh) {
                zzmdVar.zzw(zziiVar.zza(), ((zzjh) entry).zza().zzb());
            } else {
                zzmdVar.zzw(zziiVar.zza(), entry.getValue());
            }
        }
        zzll zzllVar = this.zzb;
        zzllVar.zzp(zzllVar.zzd(obj), zzmdVar);
    }

    @Override // com.google.android.recaptcha.internal.zzkr
    public final boolean zzk(Object obj, Object obj2) {
        zzll zzllVar = this.zzb;
        if (!zzllVar.zzd(obj).equals(zzllVar.zzd(obj2))) {
            return false;
        }
        if (this.zzc) {
            return this.zzd.zzb(obj).equals(this.zzd.zzb(obj2));
        }
        return true;
    }

    @Override // com.google.android.recaptcha.internal.zzkr
    public final boolean zzl(Object obj) {
        return this.zzd.zzb(obj).zzk();
    }
}
