package com.google.android.gms.internal.clearcut;

import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import com.google.android.gms.internal.clearcut.zzcg;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import okhttp3.internal.url._UrlKt;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes4.dex */
final class zzds implements zzef {
    private static final Unsafe zzmh = zzfd.zzef();
    private final int[] zzmi;
    private final Object[] zzmj;
    private final int zzmk;
    private final int zzml;
    private final int zzmm;
    private final zzdo zzmn;
    private final boolean zzmo;
    private final boolean zzmp;
    private final boolean zzmq;
    private final boolean zzmr;
    private final int[] zzms;
    private final int[] zzmt;
    private final int[] zzmu;
    private final zzdw zzmv;
    private final zzcy zzmw;
    private final zzex zzmx;
    private final zzbu zzmy;
    private final zzdj zzmz;

    private zzds(int[] iArr, Object[] objArr, int i, int i2, int i3, zzdo zzdoVar, boolean z, boolean z2, int[] iArr2, int[] iArr3, int[] iArr4, zzdw zzdwVar, zzcy zzcyVar, zzex zzexVar, zzbu zzbuVar, zzdj zzdjVar) {
        this.zzmi = iArr;
        this.zzmj = objArr;
        this.zzmk = i;
        this.zzml = i2;
        this.zzmm = i3;
        this.zzmp = zzdoVar instanceof zzcg;
        this.zzmq = z;
        this.zzmo = zzbuVar != null && zzbuVar.zze(zzdoVar);
        this.zzmr = false;
        this.zzms = iArr2;
        this.zzmt = iArr3;
        this.zzmu = iArr4;
        this.zzmv = zzdwVar;
        this.zzmw = zzcyVar;
        this.zzmx = zzexVar;
        this.zzmy = zzbuVar;
        this.zzmn = zzdoVar;
        this.zzmz = zzdjVar;
    }

    private static int zza(int i, byte[] bArr, int i2, int i3, Object obj, zzay zzayVar) {
        return zzax.zza(i, bArr, i2, i3, zzn(obj), zzayVar);
    }

    private static int zza(zzef zzefVar, int i, byte[] bArr, int i2, int i3, zzcn zzcnVar, zzay zzayVar) throws zzco {
        int iZza = zza(zzefVar, bArr, i2, i3, zzayVar);
        while (true) {
            zzcnVar.add(zzayVar.zzff);
            if (iZza >= i3) {
                break;
            }
            int iZza2 = zzax.zza(bArr, iZza, zzayVar);
            if (i != zzayVar.zzfd) {
                break;
            }
            iZza = zza(zzefVar, bArr, iZza2, i3, zzayVar);
        }
        return iZza;
    }

    private static int zza(zzef zzefVar, byte[] bArr, int i, int i2, int i3, zzay zzayVar) throws zzco {
        zzds zzdsVar = (zzds) zzefVar;
        Object objNewInstance = zzdsVar.newInstance();
        int iZza = zzdsVar.zza(objNewInstance, bArr, i, i2, i3, zzayVar);
        zzdsVar.zzc(objNewInstance);
        zzayVar.zzff = objNewInstance;
        return iZza;
    }

    private static int zza(zzef zzefVar, byte[] bArr, int i, int i2, zzay zzayVar) throws zzco {
        int iZza = i + 1;
        int i3 = bArr[i];
        if (i3 < 0) {
            iZza = zzax.zza(i3, bArr, iZza, zzayVar);
            i3 = zzayVar.zzfd;
        }
        int i4 = iZza;
        if (i3 < 0 || i3 > i2 - i4) {
            throw zzco.zzbl();
        }
        Object objNewInstance = zzefVar.newInstance();
        int i5 = i4 + i3;
        zzefVar.zza(objNewInstance, bArr, i4, i5, zzayVar);
        zzefVar.zzc(objNewInstance);
        zzayVar.zzff = objNewInstance;
        return i5;
    }

    private static int zza(zzex zzexVar, Object obj) {
        return zzexVar.zzm(zzexVar.zzq(obj));
    }

    private final int zza(Object obj, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, zzay zzayVar) throws zzco {
        int i9;
        Object objValueOf;
        int i10;
        Object objValueOf2;
        int iZzb;
        long jZza;
        int iZzm;
        Object objValueOf3;
        Object object;
        Unsafe unsafe = zzmh;
        long j2 = this.zzmi[i8 + 2] & 1048575;
        switch (i7) {
            case 51:
                i9 = i;
                if (i5 != 1) {
                    return i9;
                }
                objValueOf = Double.valueOf(zzax.zze(bArr, i));
                unsafe.putObject(obj, j, objValueOf);
                iZzb = i9 + 8;
                unsafe.putInt(obj, j2, i4);
                return iZzb;
            case 52:
                i10 = i;
                if (i5 != 5) {
                    return i10;
                }
                objValueOf2 = Float.valueOf(zzax.zzf(bArr, i));
                unsafe.putObject(obj, j, objValueOf2);
                iZzb = i10 + 4;
                unsafe.putInt(obj, j2, i4);
                return iZzb;
            case 53:
            case 54:
                if (i5 != 0) {
                    return i;
                }
                iZzb = zzax.zzb(bArr, i, zzayVar);
                jZza = zzayVar.zzfe;
                objValueOf3 = Long.valueOf(jZza);
                unsafe.putObject(obj, j, objValueOf3);
                unsafe.putInt(obj, j2, i4);
                return iZzb;
            case 55:
            case 62:
                if (i5 != 0) {
                    return i;
                }
                iZzb = zzax.zza(bArr, i, zzayVar);
                iZzm = zzayVar.zzfd;
                objValueOf3 = Integer.valueOf(iZzm);
                unsafe.putObject(obj, j, objValueOf3);
                unsafe.putInt(obj, j2, i4);
                return iZzb;
            case 56:
            case 65:
                i9 = i;
                if (i5 != 1) {
                    return i9;
                }
                objValueOf = Long.valueOf(zzax.zzd(bArr, i));
                unsafe.putObject(obj, j, objValueOf);
                iZzb = i9 + 8;
                unsafe.putInt(obj, j2, i4);
                return iZzb;
            case 57:
            case 64:
                i10 = i;
                if (i5 != 5) {
                    return i10;
                }
                objValueOf2 = Integer.valueOf(zzax.zzc(bArr, i));
                unsafe.putObject(obj, j, objValueOf2);
                iZzb = i10 + 4;
                unsafe.putInt(obj, j2, i4);
                return iZzb;
            case 58:
                if (i5 != 0) {
                    return i;
                }
                iZzb = zzax.zzb(bArr, i, zzayVar);
                objValueOf3 = Boolean.valueOf(zzayVar.zzfe != 0);
                unsafe.putObject(obj, j, objValueOf3);
                unsafe.putInt(obj, j2, i4);
                return iZzb;
            case 59:
                if (i5 != 2) {
                    return i;
                }
                int iZza = zzax.zza(bArr, i, zzayVar);
                int i11 = zzayVar.zzfd;
                if (i11 == 0) {
                    unsafe.putObject(obj, j, _UrlKt.FRAGMENT_ENCODE_SET);
                } else {
                    if ((i6 & 536870912) != 0 && !zzff.zze(bArr, iZza, iZza + i11)) {
                        throw zzco.zzbp();
                    }
                    unsafe.putObject(obj, j, new String(bArr, iZza, i11, zzci.UTF_8));
                    iZza += i11;
                }
                unsafe.putInt(obj, j2, i4);
                return iZza;
            case 60:
                if (i5 != 2) {
                    return i;
                }
                int iZza2 = zza(zzad(i8), bArr, i, i2, zzayVar);
                object = unsafe.getInt(obj, j2) == i4 ? unsafe.getObject(obj, j) : null;
                Object objZza = zzayVar.zzff;
                if (object != null) {
                    objZza = zzci.zza(object, objZza);
                }
                unsafe.putObject(obj, j, objZza);
                unsafe.putInt(obj, j2, i4);
                return iZza2;
            case 61:
                if (i5 != 2) {
                    return i;
                }
                int iZza3 = zzax.zza(bArr, i, zzayVar);
                int i12 = zzayVar.zzfd;
                if (i12 == 0) {
                    unsafe.putObject(obj, j, zzbb.zzfi);
                } else {
                    unsafe.putObject(obj, j, zzbb.zzb(bArr, iZza3, i12));
                    iZza3 += i12;
                }
                unsafe.putInt(obj, j2, i4);
                return iZza3;
            case 63:
                if (i5 != 0) {
                    return i;
                }
                int iZza4 = zzax.zza(bArr, i, zzayVar);
                int i13 = zzayVar.zzfd;
                zzck zzckVarZzaf = zzaf(i8);
                if (zzckVarZzaf != null && zzckVarZzaf.zzb(i13) == null) {
                    zzn(obj).zzb(i3, Long.valueOf(i13));
                    return iZza4;
                }
                unsafe.putObject(obj, j, Integer.valueOf(i13));
                iZzb = iZza4;
                unsafe.putInt(obj, j2, i4);
                return iZzb;
            case 66:
                if (i5 != 0) {
                    return i;
                }
                iZzb = zzax.zza(bArr, i, zzayVar);
                iZzm = zzbk.zzm(zzayVar.zzfd);
                objValueOf3 = Integer.valueOf(iZzm);
                unsafe.putObject(obj, j, objValueOf3);
                unsafe.putInt(obj, j2, i4);
                return iZzb;
            case 67:
                if (i5 != 0) {
                    return i;
                }
                iZzb = zzax.zzb(bArr, i, zzayVar);
                jZza = zzbk.zza(zzayVar.zzfe);
                objValueOf3 = Long.valueOf(jZza);
                unsafe.putObject(obj, j, objValueOf3);
                unsafe.putInt(obj, j2, i4);
                return iZzb;
            case 68:
                if (i5 == 3) {
                    iZzb = zza(zzad(i8), bArr, i, i2, (i3 & (-8)) | 4, zzayVar);
                    object = unsafe.getInt(obj, j2) == i4 ? unsafe.getObject(obj, j) : null;
                    objValueOf3 = zzayVar.zzff;
                    if (object != null) {
                        objValueOf3 = zzci.zza(object, objValueOf3);
                    }
                    unsafe.putObject(obj, j, objValueOf3);
                    unsafe.putInt(obj, j2, i4);
                    return iZzb;
                }
            default:
                return i;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:205:0x0129, code lost:
    
        r4.add(com.google.android.gms.internal.clearcut.zzbb.zzb(r13, r14, r1));
        r14 = r14 + r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0119, code lost:
    
        if (r1 == 0) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x011b, code lost:
    
        r4.add(com.google.android.gms.internal.clearcut.zzbb.zzfi);
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0121, code lost:
    
        r4.add(com.google.android.gms.internal.clearcut.zzbb.zzb(r13, r14, r1));
        r14 = r14 + r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0129, code lost:
    
        if (r14 >= r15) goto L210;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x012b, code lost:
    
        r1 = com.google.android.gms.internal.clearcut.zzax.zza(r13, r14, r25);
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0131, code lost:
    
        if (r16 != r25.zzfd) goto L211;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0133, code lost:
    
        r14 = com.google.android.gms.internal.clearcut.zzax.zza(r13, r1, r25);
        r1 = r25.zzfd;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0139, code lost:
    
        if (r1 != 0) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x013c, code lost:
    
        return r14;
     */
    /* JADX WARN: Removed duplicated region for block: B:101:0x01ba  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0185  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:104:0x01c8 -> B:95:0x01a1). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:71:0x0139 -> B:65:0x011b). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:90:0x0193 -> B:83:0x0174). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final int zza(Object obj, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, long j, int i7, long j2, zzay zzayVar) throws zzco {
        int iZza;
        Unsafe unsafe = zzmh;
        zzcn zzcnVarZzi = (zzcn) unsafe.getObject(obj, j2);
        if (!zzcnVarZzi.zzu()) {
            int size = zzcnVarZzi.size();
            zzcnVarZzi = zzcnVarZzi.zzi(size == 0 ? 10 : size << 1);
            unsafe.putObject(obj, j2, zzcnVarZzi);
        }
        zzcn zzcnVar = zzcnVarZzi;
        switch (i7) {
            case 18:
            case 35:
                if (i5 != 2) {
                    if (i5 == 1) {
                        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(zzcnVar);
                        zzax.zze(bArr, i);
                        throw null;
                    }
                    return i;
                }
                WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(zzcnVar);
                int iZza2 = zzax.zza(bArr, i, zzayVar);
                int i8 = zzayVar.zzfd + iZza2;
                if (iZza2 < i8) {
                    zzax.zze(bArr, iZza2);
                    throw null;
                }
                if (iZza2 == i8) {
                    return iZza2;
                }
                throw zzco.zzbl();
            case 19:
            case 36:
                if (i5 != 2) {
                    if (i5 == 5) {
                        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(zzcnVar);
                        zzax.zzf(bArr, i);
                        throw null;
                    }
                    return i;
                }
                WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(zzcnVar);
                int iZza3 = zzax.zza(bArr, i, zzayVar);
                int i9 = zzayVar.zzfd + iZza3;
                if (iZza3 < i9) {
                    zzax.zzf(bArr, iZza3);
                    throw null;
                }
                if (iZza3 == i9) {
                    return iZza3;
                }
                throw zzco.zzbl();
            case 20:
            case 21:
            case 37:
            case 38:
                if (i5 != 2) {
                    if (i5 == 0) {
                        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(zzcnVar);
                        zzax.zzb(bArr, i, zzayVar);
                        long j3 = zzayVar.zzfe;
                        throw null;
                    }
                    return i;
                }
                WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(zzcnVar);
                int iZza4 = zzax.zza(bArr, i, zzayVar);
                int i10 = zzayVar.zzfd + iZza4;
                if (iZza4 < i10) {
                    zzax.zzb(bArr, iZza4, zzayVar);
                    throw null;
                }
                if (iZza4 == i10) {
                    return iZza4;
                }
                throw zzco.zzbl();
            case 22:
            case 29:
            case 39:
            case 43:
                if (i5 == 2) {
                    return zzax.zza(bArr, i, zzcnVar, zzayVar);
                }
                if (i5 == 0) {
                    return zzax.zza(i3, bArr, i, i2, zzcnVar, zzayVar);
                }
                return i;
            case 23:
            case 32:
            case 40:
            case 46:
                if (i5 != 2) {
                    if (i5 == 1) {
                        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(zzcnVar);
                        zzax.zzd(bArr, i);
                        throw null;
                    }
                    return i;
                }
                WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(zzcnVar);
                int iZza5 = zzax.zza(bArr, i, zzayVar);
                int i11 = zzayVar.zzfd + iZza5;
                if (iZza5 < i11) {
                    zzax.zzd(bArr, iZza5);
                    throw null;
                }
                if (iZza5 == i11) {
                    return iZza5;
                }
                throw zzco.zzbl();
            case 24:
            case 31:
            case 41:
            case 45:
                if (i5 != 2) {
                    if (i5 == 5) {
                        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(zzcnVar);
                        zzax.zzc(bArr, i);
                        throw null;
                    }
                    return i;
                }
                WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(zzcnVar);
                int iZza6 = zzax.zza(bArr, i, zzayVar);
                int i12 = zzayVar.zzfd + iZza6;
                if (iZza6 < i12) {
                    zzax.zzc(bArr, iZza6);
                    throw null;
                }
                if (iZza6 == i12) {
                    return iZza6;
                }
                throw zzco.zzbl();
            case 25:
            case 42:
                if (i5 != 2) {
                    if (i5 == 0) {
                        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(zzcnVar);
                        zzax.zzb(bArr, i, zzayVar);
                        long j4 = zzayVar.zzfe;
                        throw null;
                    }
                    return i;
                }
                WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(zzcnVar);
                int iZza7 = zzax.zza(bArr, i, zzayVar);
                int i13 = zzayVar.zzfd + iZza7;
                if (iZza7 < i13) {
                    zzax.zzb(bArr, iZza7, zzayVar);
                    throw null;
                }
                if (iZza7 == i13) {
                    return iZza7;
                }
                throw zzco.zzbl();
            case 26:
                if (i5 == 2) {
                    long j5 = j & 536870912;
                    int iZza8 = zzax.zza(bArr, i, zzayVar);
                    int i14 = zzayVar.zzfd;
                    if (j5 == 0) {
                        if (i14 == 0) {
                            zzcnVar.add(_UrlKt.FRAGMENT_ENCODE_SET);
                        } else {
                            zzcnVar.add(new String(bArr, iZza8, i14, zzci.UTF_8));
                            iZza8 += i14;
                        }
                        while (iZza8 < i2) {
                            int iZza9 = zzax.zza(bArr, iZza8, zzayVar);
                            if (i3 != zzayVar.zzfd) {
                                return iZza8;
                            }
                            iZza8 = zzax.zza(bArr, iZza9, zzayVar);
                            int i15 = zzayVar.zzfd;
                            if (i15 == 0) {
                                zzcnVar.add(_UrlKt.FRAGMENT_ENCODE_SET);
                                while (iZza8 < i2) {
                                }
                            } else {
                                zzcnVar.add(new String(bArr, iZza8, i15, zzci.UTF_8));
                                iZza8 += i15;
                            }
                        }
                        return iZza8;
                    }
                    if (i14 == 0) {
                        zzcnVar.add(_UrlKt.FRAGMENT_ENCODE_SET);
                    } else {
                        int i16 = iZza8 + i14;
                        if (!zzff.zze(bArr, iZza8, i16)) {
                            throw zzco.zzbp();
                        }
                        zzcnVar.add(new String(bArr, iZza8, i14, zzci.UTF_8));
                        iZza8 = i16;
                    }
                    while (iZza8 < i2) {
                        int iZza10 = zzax.zza(bArr, iZza8, zzayVar);
                        if (i3 != zzayVar.zzfd) {
                            return iZza8;
                        }
                        iZza8 = zzax.zza(bArr, iZza10, zzayVar);
                        int i17 = zzayVar.zzfd;
                        if (i17 == 0) {
                            zzcnVar.add(_UrlKt.FRAGMENT_ENCODE_SET);
                            while (iZza8 < i2) {
                            }
                        } else {
                            int i18 = iZza8 + i17;
                            if (!zzff.zze(bArr, iZza8, i18)) {
                                throw zzco.zzbp();
                            }
                            zzcnVar.add(new String(bArr, iZza8, i17, zzci.UTF_8));
                            iZza8 = i18;
                        }
                    }
                    return iZza8;
                }
                return i;
            case 27:
                if (i5 == 2) {
                    return zza(zzad(i6), i3, bArr, i, i2, zzcnVar, zzayVar);
                }
                return i;
            case 28:
                if (i5 == 2) {
                    int iZza11 = zzax.zza(bArr, i, zzayVar);
                    int i19 = zzayVar.zzfd;
                    break;
                }
                return i;
            case 30:
            case 44:
                if (i5 != 2) {
                    if (i5 == 0) {
                        iZza = zzax.zza(i3, bArr, i, i2, zzcnVar, zzayVar);
                    }
                    return i;
                }
                iZza = zzax.zza(bArr, i, zzcnVar, zzayVar);
                zzcg zzcgVar = (zzcg) obj;
                zzey zzeyVar = zzcgVar.zzjp;
                zzey zzeyVar2 = (zzey) zzeh.zza(i4, zzcnVar, zzaf(i6), zzeyVar != zzey.zzea() ? zzeyVar : null, this.zzmx);
                if (zzeyVar2 != null) {
                    zzcgVar.zzjp = zzeyVar2;
                }
                return iZza;
            case 33:
            case 47:
                if (i5 != 2) {
                    if (i5 == 0) {
                        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(zzcnVar);
                        zzax.zza(bArr, i, zzayVar);
                        zzbk.zzm(zzayVar.zzfd);
                        throw null;
                    }
                    return i;
                }
                WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(zzcnVar);
                int iZza12 = zzax.zza(bArr, i, zzayVar);
                int i20 = zzayVar.zzfd + iZza12;
                if (iZza12 >= i20) {
                    if (iZza12 == i20) {
                        return iZza12;
                    }
                    throw zzco.zzbl();
                }
                zzax.zza(bArr, iZza12, zzayVar);
                zzbk.zzm(zzayVar.zzfd);
                throw null;
            case 34:
            case 48:
                if (i5 != 2) {
                    if (i5 == 0) {
                        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(zzcnVar);
                        zzax.zzb(bArr, i, zzayVar);
                        zzbk.zza(zzayVar.zzfe);
                        throw null;
                    }
                    return i;
                }
                WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(zzcnVar);
                int iZza13 = zzax.zza(bArr, i, zzayVar);
                int i21 = zzayVar.zzfd + iZza13;
                if (iZza13 >= i21) {
                    if (iZza13 == i21) {
                        return iZza13;
                    }
                    throw zzco.zzbl();
                }
                zzax.zzb(bArr, iZza13, zzayVar);
                zzbk.zza(zzayVar.zzfe);
                throw null;
            case 49:
                if (i5 == 3) {
                    zzef zzefVarZzad = zzad(i6);
                    int i22 = (i3 & (-8)) | 4;
                    int iZza14 = zza(zzefVarZzad, bArr, i, i2, i22, zzayVar);
                    int i23 = i22;
                    zzcnVar.add(zzayVar.zzff);
                    while (iZza14 < i2) {
                        int iZza15 = zzax.zza(bArr, iZza14, zzayVar);
                        if (i3 != zzayVar.zzfd) {
                            return iZza14;
                        }
                        int i24 = i23;
                        iZza14 = zza(zzefVarZzad, bArr, iZza15, i2, i24, zzayVar);
                        zzcnVar.add(zzayVar.zzff);
                        i23 = i24;
                    }
                    return iZza14;
                }
                return i;
            default:
                return i;
        }
    }

    private final int zza(Object obj, byte[] bArr, int i, int i2, int i3, int i4, long j, zzay zzayVar) throws zzco {
        Unsafe unsafe = zzmh;
        Object objZzae = zzae(i3);
        Object object = unsafe.getObject(obj, j);
        if (this.zzmz.zzi(object)) {
            Object objZzk = this.zzmz.zzk(objZzae);
            this.zzmz.zzb(objZzk, object);
            unsafe.putObject(obj, j, objZzk);
            object = objZzk;
        }
        this.zzmz.zzl(objZzae);
        this.zzmz.zzg(object);
        int iZza = zzax.zza(bArr, i, zzayVar);
        int i5 = zzayVar.zzfd;
        if (i5 < 0 || i5 > i2 - iZza) {
            throw zzco.zzbl();
        }
        throw null;
    }

    /* JADX WARN: Type update failed for variable: r22v0 'this'  ??, new type: com.google.android.gms.internal.clearcut.zzds
    jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 11581. Try increasing type updates limit count.
    	at jadx.core.dex.visitors.typeinference.TypeUpdateInfo.requestUpdate(TypeUpdateInfo.java:37)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:224)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.ifListener(TypeUpdate.java:640)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.suggestAllSameListener(TypeUpdate.java:513)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.arithListener(TypeUpdate.java:497)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.suggestAllSameListener(TypeUpdate.java:513)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.arithListener(TypeUpdate.java:497)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.ifListener(TypeUpdate.java:640)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.applyInvokeTypes(TypeUpdate.java:381)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.invokeListener(TypeUpdate.java:364)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
     */
    /*  JADX ERROR: Type inference failed with stack overflow
        jadx.core.utils.exceptions.JadxOverflowException
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:77)
        */
    private final int zza(java.lang.Object r23, byte[] r24, int r25, int r26, int r27, com.google.android.gms.internal.clearcut.zzay r28) throws com.google.android.gms.internal.clearcut.zzco {
        /*
            Method dump skipped, instruction units count: 1158
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.zzds.zza(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.clearcut.zzay):int");
    }

    static zzds zza(Class cls, zzdm zzdmVar, zzdw zzdwVar, zzcy zzcyVar, zzex zzexVar, zzbu zzbuVar, zzdj zzdjVar) {
        int iZzcu;
        int i;
        int i2;
        int iZza;
        int iZza2;
        int iZzdg;
        if (!(zzdmVar instanceof zzec)) {
            WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(zzdmVar);
            throw null;
        }
        zzec zzecVar = (zzec) zzdmVar;
        boolean z = zzecVar.zzcf() == zzcg.zzg.zzkm;
        if (zzecVar.getFieldCount() == 0) {
            iZzcu = 0;
            i = 0;
            i2 = 0;
        } else {
            int iZzcp = zzecVar.zzcp();
            int iZzcq = zzecVar.zzcq();
            iZzcu = zzecVar.zzcu();
            i = iZzcp;
            i2 = iZzcq;
        }
        int[] iArr = new int[iZzcu << 2];
        Object[] objArr = new Object[iZzcu << 1];
        int[] iArr2 = zzecVar.zzcr() > 0 ? new int[zzecVar.zzcr()] : null;
        int[] iArr3 = zzecVar.zzcs() > 0 ? new int[zzecVar.zzcs()] : null;
        zzed zzedVarZzco = zzecVar.zzco();
        if (zzedVarZzco.next()) {
            int iZzcx = zzedVarZzco.zzcx();
            int i3 = 0;
            int i4 = 0;
            int i5 = 0;
            while (true) {
                if (iZzcx >= zzecVar.zzcv() || i3 >= ((iZzcx - i) << 2)) {
                    if (zzedVarZzco.zzda()) {
                        iZza = (int) zzfd.zza(zzedVarZzco.zzdb());
                        iZza2 = (int) zzfd.zza(zzedVarZzco.zzdc());
                        iZzdg = 0;
                    } else {
                        iZza = (int) zzfd.zza(zzedVarZzco.zzdd());
                        if (zzedVarZzco.zzde()) {
                            iZza2 = (int) zzfd.zza(zzedVarZzco.zzdf());
                            iZzdg = zzedVarZzco.zzdg();
                        } else {
                            iZza2 = 0;
                            iZzdg = 0;
                        }
                    }
                    iArr[i3] = zzedVarZzco.zzcx();
                    int i6 = i3 + 1;
                    iArr[i6] = (zzedVarZzco.zzdi() ? 536870912 : 0) | (zzedVarZzco.zzdh() ? 268435456 : 0) | (zzedVarZzco.zzcy() << 20) | iZza;
                    iArr[i3 + 2] = iZza2 | (iZzdg << 20);
                    if (zzedVarZzco.zzdl() != null) {
                        int i7 = (i3 / 4) << 1;
                        objArr[i7] = zzedVarZzco.zzdl();
                        if (zzedVarZzco.zzdj() != null) {
                            objArr[i7 + 1] = zzedVarZzco.zzdj();
                        } else if (zzedVarZzco.zzdk() != null) {
                            objArr[i7 + 1] = zzedVarZzco.zzdk();
                        }
                    } else if (zzedVarZzco.zzdj() != null) {
                        objArr[((i3 / 4) << 1) + 1] = zzedVarZzco.zzdj();
                    } else if (zzedVarZzco.zzdk() != null) {
                        objArr[((i3 / 4) << 1) + 1] = zzedVarZzco.zzdk();
                    }
                    int iZzcy = zzedVarZzco.zzcy();
                    if (iZzcy == zzcb.zziw.ordinal()) {
                        iArr2[i4] = i3;
                        i4++;
                    } else if (iZzcy >= 18 && iZzcy <= 49) {
                        iArr3[i5] = iArr[i6] & 1048575;
                        i5++;
                    }
                    if (!zzedVarZzco.next()) {
                        break;
                    }
                    iZzcx = zzedVarZzco.zzcx();
                } else {
                    for (int i8 = 0; i8 < 4; i8++) {
                        iArr[i3 + i8] = -1;
                    }
                }
                i3 += 4;
            }
        }
        return new zzds(iArr, objArr, i, i2, zzecVar.zzcv(), zzecVar.zzch(), z, false, zzecVar.zzct(), iArr2, iArr3, zzdwVar, zzcyVar, zzexVar, zzbuVar, zzdjVar);
    }

    private final Object zza(int i, int i2, Map map, zzck zzckVar, Object obj, zzex zzexVar) {
        this.zzmz.zzl(zzae(i));
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            if (zzckVar.zzb(((Integer) entry.getValue()).intValue()) == null) {
                if (obj == null) {
                    obj = zzexVar.zzdz();
                }
                zzbg zzbgVarZzk = zzbb.zzk(zzdg.zza(null, entry.getKey(), entry.getValue()));
                try {
                    zzdg.zza(zzbgVarZzk.zzae(), null, entry.getKey(), entry.getValue());
                    zzexVar.zza(obj, i2, zzbgVarZzk.zzad());
                    it.remove();
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        return obj;
    }

    private static void zza(int i, Object obj, zzfr zzfrVar) {
        if (obj instanceof String) {
            zzfrVar.zza(i, (String) obj);
        } else {
            zzfrVar.zza(i, (zzbb) obj);
        }
    }

    private static void zza(zzex zzexVar, Object obj, zzfr zzfrVar) {
        zzexVar.zza(zzexVar.zzq(obj), zzfrVar);
    }

    private final void zza(zzfr zzfrVar, int i, Object obj, int i2) {
        if (obj != null) {
            this.zzmz.zzl(zzae(i2));
            zzfrVar.zza(i, (zzdh) null, this.zzmz.zzh(obj));
        }
    }

    private final void zza(Object obj, Object obj2, int i) {
        long jZzag = zzag(i) & 1048575;
        if (zza(obj2, i)) {
            Object objZzo = zzfd.zzo(obj, jZzag);
            Object objZzo2 = zzfd.zzo(obj2, jZzag);
            if (objZzo != null && objZzo2 != null) {
                objZzo2 = zzci.zza(objZzo, objZzo2);
            } else if (objZzo2 == null) {
                return;
            }
            zzfd.zza(obj, jZzag, objZzo2);
            zzb(obj, i);
        }
    }

    private final boolean zza(Object obj, int i) {
        if (!this.zzmq) {
            int iZzah = zzah(i);
            return (zzfd.zzj(obj, (long) (iZzah & 1048575)) & (1 << (iZzah >>> 20))) != 0;
        }
        int iZzag = zzag(i);
        long j = iZzag & 1048575;
        switch ((iZzag & 267386880) >>> 20) {
            case 0:
                return zzfd.zzn(obj, j) != 0.0d;
            case 1:
                return zzfd.zzm(obj, j) != 0.0f;
            case 2:
                return zzfd.zzk(obj, j) != 0;
            case 3:
                return zzfd.zzk(obj, j) != 0;
            case 4:
                return zzfd.zzj(obj, j) != 0;
            case 5:
                return zzfd.zzk(obj, j) != 0;
            case 6:
                return zzfd.zzj(obj, j) != 0;
            case 7:
                return zzfd.zzl(obj, j);
            case 8:
                Object objZzo = zzfd.zzo(obj, j);
                if (objZzo instanceof String) {
                    return !((String) objZzo).isEmpty();
                }
                if (objZzo instanceof zzbb) {
                    return !zzbb.zzfi.equals(objZzo);
                }
                throw new IllegalArgumentException();
            case 9:
                return zzfd.zzo(obj, j) != null;
            case 10:
                return !zzbb.zzfi.equals(zzfd.zzo(obj, j));
            case 11:
                return zzfd.zzj(obj, j) != 0;
            case 12:
                return zzfd.zzj(obj, j) != 0;
            case 13:
                return zzfd.zzj(obj, j) != 0;
            case 14:
                return zzfd.zzk(obj, j) != 0;
            case 15:
                return zzfd.zzj(obj, j) != 0;
            case 16:
                return zzfd.zzk(obj, j) != 0;
            case 17:
                return zzfd.zzo(obj, j) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final boolean zza(Object obj, int i, int i2) {
        return zzfd.zzj(obj, (long) (zzah(i2) & 1048575)) == i;
    }

    private final boolean zza(Object obj, int i, int i2, int i3) {
        return this.zzmq ? zza(obj, i) : (i2 & i3) != 0;
    }

    private static boolean zza(Object obj, int i, zzef zzefVar) {
        return zzefVar.zzo(zzfd.zzo(obj, i & 1048575));
    }

    private final zzef zzad(int i) {
        int i2 = (i / 4) << 1;
        zzef zzefVar = (zzef) this.zzmj[i2];
        if (zzefVar != null) {
            return zzefVar;
        }
        zzef zzefVarZze = zzea.zzcm().zze((Class) this.zzmj[i2 + 1]);
        this.zzmj[i2] = zzefVarZze;
        return zzefVarZze;
    }

    private final Object zzae(int i) {
        return this.zzmj[(i / 4) << 1];
    }

    private final zzck zzaf(int i) {
        return (zzck) this.zzmj[((i / 4) << 1) + 1];
    }

    private final int zzag(int i) {
        return this.zzmi[i + 1];
    }

    private final int zzah(int i) {
        return this.zzmi[i + 2];
    }

    private final int zzai(int i) {
        int i2 = this.zzmk;
        if (i >= i2) {
            int i3 = this.zzmm;
            if (i < i3) {
                int i4 = (i - i2) << 2;
                if (this.zzmi[i4] == i) {
                    return i4;
                }
                return -1;
            }
            if (i <= this.zzml) {
                int i5 = i3 - i2;
                int length = (this.zzmi.length / 4) - 1;
                while (i5 <= length) {
                    int i6 = (length + i5) >>> 1;
                    int i7 = i6 << 2;
                    int i8 = this.zzmi[i7];
                    if (i == i8) {
                        return i7;
                    }
                    if (i < i8) {
                        length = i6 - 1;
                    } else {
                        i5 = i6 + 1;
                    }
                }
            }
        }
        return -1;
    }

    private final void zzb(Object obj, int i) {
        if (this.zzmq) {
            return;
        }
        int iZzah = zzah(i);
        long j = iZzah & 1048575;
        zzfd.zza(obj, j, zzfd.zzj(obj, j) | (1 << (iZzah >>> 20)));
    }

    private final void zzb(Object obj, int i, int i2) {
        zzfd.zza(obj, zzah(i2) & 1048575, i);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void zzb(Object obj, zzfr zzfrVar) {
        Iterator it;
        Map.Entry entry;
        boolean z;
        int i;
        boolean z2;
        if (this.zzmo) {
            zzby zzbyVarZza = this.zzmy.zza(obj);
            if (zzbyVarZza.isEmpty()) {
                it = null;
                entry = null;
            } else {
                it = zzbyVarZza.iterator();
                entry = (Map.Entry) it.next();
            }
        }
        int length = this.zzmi.length;
        Unsafe unsafe = zzmh;
        int i2 = -1;
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4 += 4) {
            int iZzag = zzag(i4);
            int[] iArr = this.zzmi;
            int i5 = iArr[i4];
            int i6 = (267386880 & iZzag) >>> 20;
            if (this.zzmq || i6 > 17) {
                z = true;
                i = 0;
            } else {
                int i7 = iArr[i4 + 2];
                int i8 = i7 & 1048575;
                z = true;
                if (i8 != i2) {
                    i3 = unsafe.getInt(obj, i8);
                    i2 = i8;
                }
                i = 1 << (i7 >>> 20);
            }
            while (entry != null && this.zzmy.zza(entry) <= i5) {
                this.zzmy.zza(zzfrVar, entry);
                entry = it.hasNext() ? (Map.Entry) it.next() : null;
            }
            long j = iZzag & 1048575;
            switch (i6) {
                case 0:
                    if ((i & i3) != 0) {
                        zzfrVar.zza(i5, zzfd.zzn(obj, j));
                    }
                    break;
                case 1:
                    if ((i & i3) != 0) {
                        zzfrVar.zza(i5, zzfd.zzm(obj, j));
                    }
                    break;
                case 2:
                    if ((i & i3) != 0) {
                        zzfrVar.zzi(i5, unsafe.getLong(obj, j));
                    }
                    break;
                case 3:
                    if ((i & i3) != 0) {
                        zzfrVar.zza(i5, unsafe.getLong(obj, j));
                    }
                    break;
                case 4:
                    if ((i & i3) != 0) {
                        zzfrVar.zzc(i5, unsafe.getInt(obj, j));
                    }
                    break;
                case 5:
                    if ((i & i3) != 0) {
                        zzfrVar.zzc(i5, unsafe.getLong(obj, j));
                    }
                    break;
                case 6:
                    if ((i & i3) != 0) {
                        zzfrVar.zzf(i5, unsafe.getInt(obj, j));
                    }
                    break;
                case 7:
                    if ((i & i3) != 0) {
                        zzfrVar.zzb(i5, zzfd.zzl(obj, j));
                    }
                    break;
                case 8:
                    if ((i & i3) != 0) {
                        zza(i5, unsafe.getObject(obj, j), zzfrVar);
                    }
                    break;
                case 9:
                    if ((i & i3) != 0) {
                        zzfrVar.zza(i5, unsafe.getObject(obj, j), zzad(i4));
                    }
                    break;
                case 10:
                    if ((i & i3) != 0) {
                        zzfrVar.zza(i5, (zzbb) unsafe.getObject(obj, j));
                    }
                    break;
                case 11:
                    if ((i & i3) != 0) {
                        zzfrVar.zzd(i5, unsafe.getInt(obj, j));
                    }
                    break;
                case 12:
                    if ((i & i3) != 0) {
                        zzfrVar.zzn(i5, unsafe.getInt(obj, j));
                    }
                    break;
                case 13:
                    if ((i & i3) != 0) {
                        zzfrVar.zzm(i5, unsafe.getInt(obj, j));
                    }
                    break;
                case 14:
                    if ((i & i3) != 0) {
                        zzfrVar.zzj(i5, unsafe.getLong(obj, j));
                    }
                    break;
                case 15:
                    if ((i & i3) != 0) {
                        zzfrVar.zze(i5, unsafe.getInt(obj, j));
                    }
                    break;
                case 16:
                    if ((i & i3) != 0) {
                        zzfrVar.zzb(i5, unsafe.getLong(obj, j));
                    }
                    break;
                case 17:
                    if ((i & i3) != 0) {
                        zzfrVar.zzb(i5, unsafe.getObject(obj, j), zzad(i4));
                    }
                    break;
                case 18:
                    zzeh.zza(this.zzmi[i4], (List) unsafe.getObject(obj, j), zzfrVar, false);
                    break;
                case 19:
                    zzeh.zzb(this.zzmi[i4], (List) unsafe.getObject(obj, j), zzfrVar, false);
                    break;
                case 20:
                    zzeh.zzc(this.zzmi[i4], (List) unsafe.getObject(obj, j), zzfrVar, false);
                    break;
                case 21:
                    zzeh.zzd(this.zzmi[i4], (List) unsafe.getObject(obj, j), zzfrVar, false);
                    break;
                case 22:
                    zzeh.zzh(this.zzmi[i4], (List) unsafe.getObject(obj, j), zzfrVar, false);
                    break;
                case 23:
                    zzeh.zzf(this.zzmi[i4], (List) unsafe.getObject(obj, j), zzfrVar, false);
                    break;
                case 24:
                    zzeh.zzk(this.zzmi[i4], (List) unsafe.getObject(obj, j), zzfrVar, false);
                    break;
                case 25:
                    zzeh.zzn(this.zzmi[i4], (List) unsafe.getObject(obj, j), zzfrVar, false);
                    break;
                case 26:
                    zzeh.zza(this.zzmi[i4], (List) unsafe.getObject(obj, j), zzfrVar);
                    break;
                case 27:
                    zzeh.zza(this.zzmi[i4], (List) unsafe.getObject(obj, j), zzfrVar, zzad(i4));
                    break;
                case 28:
                    zzeh.zzb(this.zzmi[i4], (List) unsafe.getObject(obj, j), zzfrVar);
                    break;
                case 29:
                    z2 = false;
                    zzeh.zzi(this.zzmi[i4], (List) unsafe.getObject(obj, j), zzfrVar, false);
                    break;
                case 30:
                    z2 = false;
                    zzeh.zzm(this.zzmi[i4], (List) unsafe.getObject(obj, j), zzfrVar, false);
                    break;
                case 31:
                    z2 = false;
                    zzeh.zzl(this.zzmi[i4], (List) unsafe.getObject(obj, j), zzfrVar, false);
                    break;
                case 32:
                    z2 = false;
                    zzeh.zzg(this.zzmi[i4], (List) unsafe.getObject(obj, j), zzfrVar, false);
                    break;
                case 33:
                    z2 = false;
                    zzeh.zzj(this.zzmi[i4], (List) unsafe.getObject(obj, j), zzfrVar, false);
                    break;
                case 34:
                    z2 = false;
                    zzeh.zze(this.zzmi[i4], (List) unsafe.getObject(obj, j), zzfrVar, false);
                    break;
                case 35:
                    zzeh.zza(this.zzmi[i4], (List) unsafe.getObject(obj, j), zzfrVar, z);
                    break;
                case 36:
                    zzeh.zzb(this.zzmi[i4], (List) unsafe.getObject(obj, j), zzfrVar, z);
                    break;
                case 37:
                    zzeh.zzc(this.zzmi[i4], (List) unsafe.getObject(obj, j), zzfrVar, z);
                    break;
                case 38:
                    zzeh.zzd(this.zzmi[i4], (List) unsafe.getObject(obj, j), zzfrVar, z);
                    break;
                case 39:
                    zzeh.zzh(this.zzmi[i4], (List) unsafe.getObject(obj, j), zzfrVar, z);
                    break;
                case 40:
                    zzeh.zzf(this.zzmi[i4], (List) unsafe.getObject(obj, j), zzfrVar, z);
                    break;
                case 41:
                    zzeh.zzk(this.zzmi[i4], (List) unsafe.getObject(obj, j), zzfrVar, z);
                    break;
                case 42:
                    zzeh.zzn(this.zzmi[i4], (List) unsafe.getObject(obj, j), zzfrVar, z);
                    break;
                case 43:
                    zzeh.zzi(this.zzmi[i4], (List) unsafe.getObject(obj, j), zzfrVar, z);
                    break;
                case 44:
                    zzeh.zzm(this.zzmi[i4], (List) unsafe.getObject(obj, j), zzfrVar, z);
                    break;
                case 45:
                    zzeh.zzl(this.zzmi[i4], (List) unsafe.getObject(obj, j), zzfrVar, z);
                    break;
                case 46:
                    zzeh.zzg(this.zzmi[i4], (List) unsafe.getObject(obj, j), zzfrVar, z);
                    break;
                case 47:
                    zzeh.zzj(this.zzmi[i4], (List) unsafe.getObject(obj, j), zzfrVar, z);
                    break;
                case 48:
                    zzeh.zze(this.zzmi[i4], (List) unsafe.getObject(obj, j), zzfrVar, z);
                    break;
                case 49:
                    zzeh.zzb(this.zzmi[i4], (List) unsafe.getObject(obj, j), zzfrVar, zzad(i4));
                    break;
                case 50:
                    zza(zzfrVar, i5, unsafe.getObject(obj, j), i4);
                    break;
                case 51:
                    if (zza(obj, i5, i4)) {
                        zzfrVar.zza(i5, zze(obj, j));
                    }
                    break;
                case 52:
                    if (zza(obj, i5, i4)) {
                        zzfrVar.zza(i5, zzf(obj, j));
                    }
                    break;
                case 53:
                    if (zza(obj, i5, i4)) {
                        zzfrVar.zzi(i5, zzh(obj, j));
                    }
                    break;
                case 54:
                    if (zza(obj, i5, i4)) {
                        zzfrVar.zza(i5, zzh(obj, j));
                    }
                    break;
                case 55:
                    if (zza(obj, i5, i4)) {
                        zzfrVar.zzc(i5, zzg(obj, j));
                    }
                    break;
                case 56:
                    if (zza(obj, i5, i4)) {
                        zzfrVar.zzc(i5, zzh(obj, j));
                    }
                    break;
                case 57:
                    if (zza(obj, i5, i4)) {
                        zzfrVar.zzf(i5, zzg(obj, j));
                    }
                    break;
                case 58:
                    if (zza(obj, i5, i4)) {
                        zzfrVar.zzb(i5, zzi(obj, j));
                    }
                    break;
                case 59:
                    if (zza(obj, i5, i4)) {
                        zza(i5, unsafe.getObject(obj, j), zzfrVar);
                    }
                    break;
                case 60:
                    if (zza(obj, i5, i4)) {
                        zzfrVar.zza(i5, unsafe.getObject(obj, j), zzad(i4));
                    }
                    break;
                case 61:
                    if (zza(obj, i5, i4)) {
                        zzfrVar.zza(i5, (zzbb) unsafe.getObject(obj, j));
                    }
                    break;
                case 62:
                    if (zza(obj, i5, i4)) {
                        zzfrVar.zzd(i5, zzg(obj, j));
                    }
                    break;
                case 63:
                    if (zza(obj, i5, i4)) {
                        zzfrVar.zzn(i5, zzg(obj, j));
                    }
                    break;
                case 64:
                    if (zza(obj, i5, i4)) {
                        zzfrVar.zzm(i5, zzg(obj, j));
                    }
                    break;
                case 65:
                    if (zza(obj, i5, i4)) {
                        zzfrVar.zzj(i5, zzh(obj, j));
                    }
                    break;
                case 66:
                    if (zza(obj, i5, i4)) {
                        zzfrVar.zze(i5, zzg(obj, j));
                    }
                    break;
                case 67:
                    if (zza(obj, i5, i4)) {
                        zzfrVar.zzb(i5, zzh(obj, j));
                    }
                    break;
                case 68:
                    if (zza(obj, i5, i4)) {
                        zzfrVar.zzb(i5, unsafe.getObject(obj, j), zzad(i4));
                    }
                    break;
            }
        }
        while (entry != null) {
            this.zzmy.zza(zzfrVar, entry);
            entry = it.hasNext() ? (Map.Entry) it.next() : null;
        }
        zza(this.zzmx, obj, zzfrVar);
    }

    private final void zzb(Object obj, Object obj2, int i) {
        int iZzag = zzag(i);
        int i2 = this.zzmi[i];
        long j = iZzag & 1048575;
        if (zza(obj2, i2, i)) {
            Object objZzo = zzfd.zzo(obj, j);
            Object objZzo2 = zzfd.zzo(obj2, j);
            if (objZzo != null && objZzo2 != null) {
                objZzo2 = zzci.zza(objZzo, objZzo2);
            } else if (objZzo2 == null) {
                return;
            }
            zzfd.zza(obj, j, objZzo2);
            zzb(obj, i2, i);
        }
    }

    private final boolean zzc(Object obj, Object obj2, int i) {
        return zza(obj, i) == zza(obj2, i);
    }

    private static List zzd(Object obj, long j) {
        return (List) zzfd.zzo(obj, j);
    }

    private static double zze(Object obj, long j) {
        return ((Double) zzfd.zzo(obj, j)).doubleValue();
    }

    private static float zzf(Object obj, long j) {
        return ((Float) zzfd.zzo(obj, j)).floatValue();
    }

    private static int zzg(Object obj, long j) {
        return ((Integer) zzfd.zzo(obj, j)).intValue();
    }

    private static long zzh(Object obj, long j) {
        return ((Long) zzfd.zzo(obj, j)).longValue();
    }

    private static boolean zzi(Object obj, long j) {
        return ((Boolean) zzfd.zzo(obj, j)).booleanValue();
    }

    private static zzey zzn(Object obj) {
        zzcg zzcgVar = (zzcg) obj;
        zzey zzeyVar = zzcgVar.zzjp;
        if (zzeyVar != zzey.zzea()) {
            return zzeyVar;
        }
        zzey zzeyVarZzeb = zzey.zzeb();
        zzcgVar.zzjp = zzeyVarZzeb;
        return zzeyVarZzeb;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x003a  */
    @Override // com.google.android.gms.internal.clearcut.zzef
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean equals(Object obj, Object obj2) {
        int length = this.zzmi.length;
        int i = 0;
        while (true) {
            boolean zZzd = true;
            if (i >= length) {
                if (!this.zzmx.zzq(obj).equals(this.zzmx.zzq(obj2))) {
                    return false;
                }
                if (this.zzmo) {
                    return this.zzmy.zza(obj).equals(this.zzmy.zza(obj2));
                }
                return true;
            }
            int iZzag = zzag(i);
            long j = iZzag & 1048575;
            switch ((iZzag & 267386880) >>> 20) {
                case 0:
                    if (!zzc(obj, obj2, i) || zzfd.zzk(obj, j) != zzfd.zzk(obj2, j)) {
                        zZzd = false;
                    }
                    break;
                case 1:
                    if (!zzc(obj, obj2, i) || zzfd.zzj(obj, j) != zzfd.zzj(obj2, j)) {
                    }
                    break;
                case 2:
                    if (!zzc(obj, obj2, i) || zzfd.zzk(obj, j) != zzfd.zzk(obj2, j)) {
                    }
                    break;
                case 3:
                    if (!zzc(obj, obj2, i) || zzfd.zzk(obj, j) != zzfd.zzk(obj2, j)) {
                    }
                    break;
                case 4:
                    if (!zzc(obj, obj2, i) || zzfd.zzj(obj, j) != zzfd.zzj(obj2, j)) {
                    }
                    break;
                case 5:
                    if (!zzc(obj, obj2, i) || zzfd.zzk(obj, j) != zzfd.zzk(obj2, j)) {
                    }
                    break;
                case 6:
                    if (!zzc(obj, obj2, i) || zzfd.zzj(obj, j) != zzfd.zzj(obj2, j)) {
                    }
                    break;
                case 7:
                    if (!zzc(obj, obj2, i) || zzfd.zzl(obj, j) != zzfd.zzl(obj2, j)) {
                    }
                    break;
                case 8:
                    if (!zzc(obj, obj2, i) || !zzeh.zzd(zzfd.zzo(obj, j), zzfd.zzo(obj2, j))) {
                    }
                    break;
                case 9:
                    if (!zzc(obj, obj2, i) || !zzeh.zzd(zzfd.zzo(obj, j), zzfd.zzo(obj2, j))) {
                    }
                    break;
                case 10:
                    if (!zzc(obj, obj2, i) || !zzeh.zzd(zzfd.zzo(obj, j), zzfd.zzo(obj2, j))) {
                    }
                    break;
                case 11:
                    if (!zzc(obj, obj2, i) || zzfd.zzj(obj, j) != zzfd.zzj(obj2, j)) {
                    }
                    break;
                case 12:
                    if (!zzc(obj, obj2, i) || zzfd.zzj(obj, j) != zzfd.zzj(obj2, j)) {
                    }
                    break;
                case 13:
                    if (!zzc(obj, obj2, i) || zzfd.zzj(obj, j) != zzfd.zzj(obj2, j)) {
                    }
                    break;
                case 14:
                    if (!zzc(obj, obj2, i) || zzfd.zzk(obj, j) != zzfd.zzk(obj2, j)) {
                    }
                    break;
                case 15:
                    if (!zzc(obj, obj2, i) || zzfd.zzj(obj, j) != zzfd.zzj(obj2, j)) {
                    }
                    break;
                case 16:
                    if (!zzc(obj, obj2, i) || zzfd.zzk(obj, j) != zzfd.zzk(obj2, j)) {
                    }
                    break;
                case 17:
                    if (!zzc(obj, obj2, i) || !zzeh.zzd(zzfd.zzo(obj, j), zzfd.zzo(obj2, j))) {
                    }
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                case 50:
                    zZzd = zzeh.zzd(zzfd.zzo(obj, j), zzfd.zzo(obj2, j));
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                case 60:
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                case 68:
                    long jZzah = zzah(i) & 1048575;
                    if (zzfd.zzj(obj, jZzah) != zzfd.zzj(obj2, jZzah) || !zzeh.zzd(zzfd.zzo(obj, j), zzfd.zzo(obj2, j))) {
                    }
                    break;
            }
            if (!zZzd) {
                return false;
            }
            i += 4;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00f4 A[PHI: r3
  0x00f4: PHI (r3v9 java.lang.Object) = (r3v6 java.lang.Object), (r3v10 java.lang.Object) binds: [B:74:0x0110, B:68:0x00f2] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.google.android.gms.internal.clearcut.zzef
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int hashCode(Object obj) {
        int i;
        double dZzn;
        float fZzm;
        boolean zZzl;
        Object objZzo;
        int iZzj;
        long jZzk;
        Object objZzo2;
        int length = this.zzmi.length;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3 += 4) {
            int iZzag = zzag(i3);
            int i4 = this.zzmi[i3];
            long j = 1048575 & iZzag;
            int iHashCode = 37;
            switch ((iZzag & 267386880) >>> 20) {
                case 0:
                    i = i2 * 53;
                    dZzn = zzfd.zzn(obj, j);
                    jZzk = Double.doubleToLongBits(dZzn);
                    iZzj = zzci.zzl(jZzk);
                    i2 = i + iZzj;
                    break;
                case 1:
                    i = i2 * 53;
                    fZzm = zzfd.zzm(obj, j);
                    iZzj = Float.floatToIntBits(fZzm);
                    i2 = i + iZzj;
                    break;
                case 2:
                case 3:
                case 5:
                case 14:
                case 16:
                    i = i2 * 53;
                    jZzk = zzfd.zzk(obj, j);
                    iZzj = zzci.zzl(jZzk);
                    i2 = i + iZzj;
                    break;
                case 4:
                case 6:
                case 11:
                case 12:
                case 13:
                case 15:
                    i = i2 * 53;
                    iZzj = zzfd.zzj(obj, j);
                    i2 = i + iZzj;
                    break;
                case 7:
                    i = i2 * 53;
                    zZzl = zzfd.zzl(obj, j);
                    iZzj = zzci.zzc(zZzl);
                    i2 = i + iZzj;
                    break;
                case 8:
                    i = i2 * 53;
                    iZzj = ((String) zzfd.zzo(obj, j)).hashCode();
                    i2 = i + iZzj;
                    break;
                case 9:
                    objZzo = zzfd.zzo(obj, j);
                    if (objZzo != null) {
                        iHashCode = objZzo.hashCode();
                    }
                    i2 = (i2 * 53) + iHashCode;
                    break;
                case 10:
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                case 50:
                    i = i2 * 53;
                    objZzo2 = zzfd.zzo(obj, j);
                    iZzj = objZzo2.hashCode();
                    i2 = i + iZzj;
                    break;
                case 17:
                    objZzo = zzfd.zzo(obj, j);
                    if (objZzo != null) {
                    }
                    i2 = (i2 * 53) + iHashCode;
                    break;
                case 51:
                    if (zza(obj, i4, i3)) {
                        i = i2 * 53;
                        dZzn = zze(obj, j);
                        jZzk = Double.doubleToLongBits(dZzn);
                        iZzj = zzci.zzl(jZzk);
                        i2 = i + iZzj;
                    }
                    break;
                case 52:
                    if (zza(obj, i4, i3)) {
                        i = i2 * 53;
                        fZzm = zzf(obj, j);
                        iZzj = Float.floatToIntBits(fZzm);
                        i2 = i + iZzj;
                    }
                    break;
                case 53:
                    if (!zza(obj, i4, i3)) {
                    }
                    i = i2 * 53;
                    jZzk = zzh(obj, j);
                    iZzj = zzci.zzl(jZzk);
                    i2 = i + iZzj;
                    break;
                case 54:
                    if (!zza(obj, i4, i3)) {
                    }
                    i = i2 * 53;
                    jZzk = zzh(obj, j);
                    iZzj = zzci.zzl(jZzk);
                    i2 = i + iZzj;
                    break;
                case 55:
                    if (!zza(obj, i4, i3)) {
                    }
                    i = i2 * 53;
                    iZzj = zzg(obj, j);
                    i2 = i + iZzj;
                    break;
                case 56:
                    if (!zza(obj, i4, i3)) {
                    }
                    i = i2 * 53;
                    jZzk = zzh(obj, j);
                    iZzj = zzci.zzl(jZzk);
                    i2 = i + iZzj;
                    break;
                case 57:
                    if (!zza(obj, i4, i3)) {
                    }
                    i = i2 * 53;
                    iZzj = zzg(obj, j);
                    i2 = i + iZzj;
                    break;
                case 58:
                    if (zza(obj, i4, i3)) {
                        i = i2 * 53;
                        zZzl = zzi(obj, j);
                        iZzj = zzci.zzc(zZzl);
                        i2 = i + iZzj;
                    }
                    break;
                case 59:
                    if (!zza(obj, i4, i3)) {
                    }
                    i = i2 * 53;
                    iZzj = ((String) zzfd.zzo(obj, j)).hashCode();
                    i2 = i + iZzj;
                    break;
                case 60:
                    if (!zza(obj, i4, i3)) {
                    }
                    objZzo2 = zzfd.zzo(obj, j);
                    i = i2 * 53;
                    iZzj = objZzo2.hashCode();
                    i2 = i + iZzj;
                    break;
                case 61:
                    if (!zza(obj, i4, i3)) {
                    }
                    i = i2 * 53;
                    objZzo2 = zzfd.zzo(obj, j);
                    iZzj = objZzo2.hashCode();
                    i2 = i + iZzj;
                    break;
                case 62:
                    if (!zza(obj, i4, i3)) {
                    }
                    i = i2 * 53;
                    iZzj = zzg(obj, j);
                    i2 = i + iZzj;
                    break;
                case 63:
                    if (!zza(obj, i4, i3)) {
                    }
                    i = i2 * 53;
                    iZzj = zzg(obj, j);
                    i2 = i + iZzj;
                    break;
                case 64:
                    if (!zza(obj, i4, i3)) {
                    }
                    i = i2 * 53;
                    iZzj = zzg(obj, j);
                    i2 = i + iZzj;
                    break;
                case 65:
                    if (!zza(obj, i4, i3)) {
                    }
                    i = i2 * 53;
                    jZzk = zzh(obj, j);
                    iZzj = zzci.zzl(jZzk);
                    i2 = i + iZzj;
                    break;
                case 66:
                    if (!zza(obj, i4, i3)) {
                    }
                    i = i2 * 53;
                    iZzj = zzg(obj, j);
                    i2 = i + iZzj;
                    break;
                case 67:
                    if (!zza(obj, i4, i3)) {
                    }
                    i = i2 * 53;
                    jZzk = zzh(obj, j);
                    iZzj = zzci.zzl(jZzk);
                    i2 = i + iZzj;
                    break;
                case 68:
                    if (!zza(obj, i4, i3)) {
                    }
                    objZzo2 = zzfd.zzo(obj, j);
                    i = i2 * 53;
                    iZzj = objZzo2.hashCode();
                    i2 = i + iZzj;
                    break;
            }
        }
        int iHashCode2 = (i2 * 53) + this.zzmx.zzq(obj).hashCode();
        return this.zzmo ? (iHashCode2 * 53) + this.zzmy.zza(obj).hashCode() : iHashCode2;
    }

    @Override // com.google.android.gms.internal.clearcut.zzef
    public final Object newInstance() {
        return this.zzmv.newInstance(this.zzmn);
    }

    /* JADX WARN: Removed duplicated region for block: B:192:0x04f6  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x0533  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x05ae  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x05c1  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x05d6  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0030  */
    @Override // com.google.android.gms.internal.clearcut.zzef
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zza(Object obj, zzfr zzfrVar) {
        Iterator it;
        Map.Entry entry;
        double dZzn;
        float fZzm;
        long jZzk;
        long jZzk2;
        int iZzj;
        long jZzk3;
        int iZzj2;
        boolean zZzl;
        int iZzj3;
        int iZzj4;
        int iZzj5;
        long jZzk4;
        int iZzj6;
        long jZzk5;
        Iterator itDescendingIterator;
        Map.Entry entry2;
        double dZzn2;
        float fZzm2;
        long jZzk6;
        long jZzk7;
        int iZzj7;
        long jZzk8;
        int iZzj8;
        boolean zZzl2;
        int iZzj9;
        int iZzj10;
        int iZzj11;
        long jZzk9;
        int iZzj12;
        long jZzk10;
        if (zzfrVar.zzaj() == zzcg.zzg.zzkp) {
            zza(this.zzmx, obj, zzfrVar);
            if (this.zzmo) {
                zzby zzbyVarZza = this.zzmy.zza(obj);
                if (zzbyVarZza.isEmpty()) {
                    itDescendingIterator = null;
                    entry2 = null;
                } else {
                    itDescendingIterator = zzbyVarZza.descendingIterator();
                    entry2 = (Map.Entry) itDescendingIterator.next();
                }
            }
            for (int length = this.zzmi.length - 4; length >= 0; length -= 4) {
                int iZzag = zzag(length);
                int i = this.zzmi[length];
                while (entry2 != null && this.zzmy.zza(entry2) > i) {
                    this.zzmy.zza(zzfrVar, entry2);
                    entry2 = itDescendingIterator.hasNext() ? (Map.Entry) itDescendingIterator.next() : null;
                }
                switch ((iZzag & 267386880) >>> 20) {
                    case 0:
                        if (zza(obj, length)) {
                            dZzn2 = zzfd.zzn(obj, iZzag & 1048575);
                            zzfrVar.zza(i, dZzn2);
                        }
                        break;
                    case 1:
                        if (zza(obj, length)) {
                            fZzm2 = zzfd.zzm(obj, iZzag & 1048575);
                            zzfrVar.zza(i, fZzm2);
                        }
                        break;
                    case 2:
                        if (zza(obj, length)) {
                            jZzk6 = zzfd.zzk(obj, iZzag & 1048575);
                            zzfrVar.zzi(i, jZzk6);
                        }
                        break;
                    case 3:
                        if (zza(obj, length)) {
                            jZzk7 = zzfd.zzk(obj, iZzag & 1048575);
                            zzfrVar.zza(i, jZzk7);
                        }
                        break;
                    case 4:
                        if (zza(obj, length)) {
                            iZzj7 = zzfd.zzj(obj, iZzag & 1048575);
                            zzfrVar.zzc(i, iZzj7);
                        }
                        break;
                    case 5:
                        if (zza(obj, length)) {
                            jZzk8 = zzfd.zzk(obj, iZzag & 1048575);
                            zzfrVar.zzc(i, jZzk8);
                        }
                        break;
                    case 6:
                        if (zza(obj, length)) {
                            iZzj8 = zzfd.zzj(obj, iZzag & 1048575);
                            zzfrVar.zzf(i, iZzj8);
                        }
                        break;
                    case 7:
                        if (zza(obj, length)) {
                            zZzl2 = zzfd.zzl(obj, iZzag & 1048575);
                            zzfrVar.zzb(i, zZzl2);
                        }
                        break;
                    case 8:
                        if (zza(obj, length)) {
                            zza(i, zzfd.zzo(obj, iZzag & 1048575), zzfrVar);
                        }
                        break;
                    case 9:
                        if (zza(obj, length)) {
                            zzfrVar.zza(i, zzfd.zzo(obj, iZzag & 1048575), zzad(length));
                        }
                        break;
                    case 10:
                        if (zza(obj, length)) {
                            zzfrVar.zza(i, (zzbb) zzfd.zzo(obj, iZzag & 1048575));
                        }
                        break;
                    case 11:
                        if (zza(obj, length)) {
                            iZzj9 = zzfd.zzj(obj, iZzag & 1048575);
                            zzfrVar.zzd(i, iZzj9);
                        }
                        break;
                    case 12:
                        if (zza(obj, length)) {
                            iZzj10 = zzfd.zzj(obj, iZzag & 1048575);
                            zzfrVar.zzn(i, iZzj10);
                        }
                        break;
                    case 13:
                        if (zza(obj, length)) {
                            iZzj11 = zzfd.zzj(obj, iZzag & 1048575);
                            zzfrVar.zzm(i, iZzj11);
                        }
                        break;
                    case 14:
                        if (zza(obj, length)) {
                            jZzk9 = zzfd.zzk(obj, iZzag & 1048575);
                            zzfrVar.zzj(i, jZzk9);
                        }
                        break;
                    case 15:
                        if (zza(obj, length)) {
                            iZzj12 = zzfd.zzj(obj, iZzag & 1048575);
                            zzfrVar.zze(i, iZzj12);
                        }
                        break;
                    case 16:
                        if (zza(obj, length)) {
                            jZzk10 = zzfd.zzk(obj, iZzag & 1048575);
                            zzfrVar.zzb(i, jZzk10);
                        }
                        break;
                    case 17:
                        if (zza(obj, length)) {
                            zzfrVar.zzb(i, zzfd.zzo(obj, iZzag & 1048575), zzad(length));
                        }
                        break;
                    case 18:
                        zzeh.zza(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar, false);
                        break;
                    case 19:
                        zzeh.zzb(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar, false);
                        break;
                    case 20:
                        zzeh.zzc(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar, false);
                        break;
                    case 21:
                        zzeh.zzd(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar, false);
                        break;
                    case 22:
                        zzeh.zzh(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar, false);
                        break;
                    case 23:
                        zzeh.zzf(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar, false);
                        break;
                    case 24:
                        zzeh.zzk(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar, false);
                        break;
                    case 25:
                        zzeh.zzn(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar, false);
                        break;
                    case 26:
                        zzeh.zza(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar);
                        break;
                    case 27:
                        zzeh.zza(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar, zzad(length));
                        break;
                    case 28:
                        zzeh.zzb(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar);
                        break;
                    case 29:
                        zzeh.zzi(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar, false);
                        break;
                    case 30:
                        zzeh.zzm(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar, false);
                        break;
                    case 31:
                        zzeh.zzl(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar, false);
                        break;
                    case 32:
                        zzeh.zzg(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar, false);
                        break;
                    case 33:
                        zzeh.zzj(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar, false);
                        break;
                    case 34:
                        zzeh.zze(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar, false);
                        break;
                    case 35:
                        zzeh.zza(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar, true);
                        break;
                    case 36:
                        zzeh.zzb(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar, true);
                        break;
                    case 37:
                        zzeh.zzc(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar, true);
                        break;
                    case 38:
                        zzeh.zzd(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar, true);
                        break;
                    case 39:
                        zzeh.zzh(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar, true);
                        break;
                    case 40:
                        zzeh.zzf(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar, true);
                        break;
                    case 41:
                        zzeh.zzk(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar, true);
                        break;
                    case 42:
                        zzeh.zzn(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar, true);
                        break;
                    case 43:
                        zzeh.zzi(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar, true);
                        break;
                    case 44:
                        zzeh.zzm(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar, true);
                        break;
                    case 45:
                        zzeh.zzl(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar, true);
                        break;
                    case 46:
                        zzeh.zzg(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar, true);
                        break;
                    case 47:
                        zzeh.zzj(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar, true);
                        break;
                    case 48:
                        zzeh.zze(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar, true);
                        break;
                    case 49:
                        zzeh.zzb(this.zzmi[length], (List) zzfd.zzo(obj, iZzag & 1048575), zzfrVar, zzad(length));
                        break;
                    case 50:
                        zza(zzfrVar, i, zzfd.zzo(obj, iZzag & 1048575), length);
                        break;
                    case 51:
                        if (zza(obj, i, length)) {
                            dZzn2 = zze(obj, iZzag & 1048575);
                            zzfrVar.zza(i, dZzn2);
                        }
                        break;
                    case 52:
                        if (zza(obj, i, length)) {
                            fZzm2 = zzf(obj, iZzag & 1048575);
                            zzfrVar.zza(i, fZzm2);
                        }
                        break;
                    case 53:
                        if (zza(obj, i, length)) {
                            jZzk6 = zzh(obj, iZzag & 1048575);
                            zzfrVar.zzi(i, jZzk6);
                        }
                        break;
                    case 54:
                        if (zza(obj, i, length)) {
                            jZzk7 = zzh(obj, iZzag & 1048575);
                            zzfrVar.zza(i, jZzk7);
                        }
                        break;
                    case 55:
                        if (zza(obj, i, length)) {
                            iZzj7 = zzg(obj, iZzag & 1048575);
                            zzfrVar.zzc(i, iZzj7);
                        }
                        break;
                    case 56:
                        if (zza(obj, i, length)) {
                            jZzk8 = zzh(obj, iZzag & 1048575);
                            zzfrVar.zzc(i, jZzk8);
                        }
                        break;
                    case 57:
                        if (zza(obj, i, length)) {
                            iZzj8 = zzg(obj, iZzag & 1048575);
                            zzfrVar.zzf(i, iZzj8);
                        }
                        break;
                    case 58:
                        if (zza(obj, i, length)) {
                            zZzl2 = zzi(obj, iZzag & 1048575);
                            zzfrVar.zzb(i, zZzl2);
                        }
                        break;
                    case 59:
                        if (!zza(obj, i, length)) {
                            break;
                        }
                        break;
                    case 60:
                        if (!zza(obj, i, length)) {
                            break;
                        }
                        break;
                    case 61:
                        if (!zza(obj, i, length)) {
                            break;
                        }
                        break;
                    case 62:
                        if (zza(obj, i, length)) {
                            iZzj9 = zzg(obj, iZzag & 1048575);
                            zzfrVar.zzd(i, iZzj9);
                        }
                        break;
                    case 63:
                        if (zza(obj, i, length)) {
                            iZzj10 = zzg(obj, iZzag & 1048575);
                            zzfrVar.zzn(i, iZzj10);
                        }
                        break;
                    case 64:
                        if (zza(obj, i, length)) {
                            iZzj11 = zzg(obj, iZzag & 1048575);
                            zzfrVar.zzm(i, iZzj11);
                        }
                        break;
                    case 65:
                        if (zza(obj, i, length)) {
                            jZzk9 = zzh(obj, iZzag & 1048575);
                            zzfrVar.zzj(i, jZzk9);
                        }
                        break;
                    case 66:
                        if (zza(obj, i, length)) {
                            iZzj12 = zzg(obj, iZzag & 1048575);
                            zzfrVar.zze(i, iZzj12);
                        }
                        break;
                    case 67:
                        if (zza(obj, i, length)) {
                            jZzk10 = zzh(obj, iZzag & 1048575);
                            zzfrVar.zzb(i, jZzk10);
                        }
                        break;
                    case 68:
                        if (!zza(obj, i, length)) {
                            break;
                        }
                        break;
                }
            }
            while (entry2 != null) {
                this.zzmy.zza(zzfrVar, entry2);
                entry2 = itDescendingIterator.hasNext() ? (Map.Entry) itDescendingIterator.next() : null;
            }
            return;
        }
        if (!this.zzmq) {
            zzb(obj, zzfrVar);
            return;
        }
        if (this.zzmo) {
            zzby zzbyVarZza2 = this.zzmy.zza(obj);
            if (zzbyVarZza2.isEmpty()) {
                it = null;
                entry = null;
            } else {
                it = zzbyVarZza2.iterator();
                entry = (Map.Entry) it.next();
            }
        }
        int length2 = this.zzmi.length;
        for (int i2 = 0; i2 < length2; i2 += 4) {
            int iZzag2 = zzag(i2);
            int i3 = this.zzmi[i2];
            while (entry != null && this.zzmy.zza(entry) <= i3) {
                this.zzmy.zza(zzfrVar, entry);
                entry = it.hasNext() ? (Map.Entry) it.next() : null;
            }
            switch ((iZzag2 & 267386880) >>> 20) {
                case 0:
                    if (zza(obj, i2)) {
                        dZzn = zzfd.zzn(obj, iZzag2 & 1048575);
                        zzfrVar.zza(i3, dZzn);
                    }
                    break;
                case 1:
                    if (zza(obj, i2)) {
                        fZzm = zzfd.zzm(obj, iZzag2 & 1048575);
                        zzfrVar.zza(i3, fZzm);
                    }
                    break;
                case 2:
                    if (zza(obj, i2)) {
                        jZzk = zzfd.zzk(obj, iZzag2 & 1048575);
                        zzfrVar.zzi(i3, jZzk);
                    }
                    break;
                case 3:
                    if (zza(obj, i2)) {
                        jZzk2 = zzfd.zzk(obj, iZzag2 & 1048575);
                        zzfrVar.zza(i3, jZzk2);
                    }
                    break;
                case 4:
                    if (zza(obj, i2)) {
                        iZzj = zzfd.zzj(obj, iZzag2 & 1048575);
                        zzfrVar.zzc(i3, iZzj);
                    }
                    break;
                case 5:
                    if (zza(obj, i2)) {
                        jZzk3 = zzfd.zzk(obj, iZzag2 & 1048575);
                        zzfrVar.zzc(i3, jZzk3);
                    }
                    break;
                case 6:
                    if (zza(obj, i2)) {
                        iZzj2 = zzfd.zzj(obj, iZzag2 & 1048575);
                        zzfrVar.zzf(i3, iZzj2);
                    }
                    break;
                case 7:
                    if (zza(obj, i2)) {
                        zZzl = zzfd.zzl(obj, iZzag2 & 1048575);
                        zzfrVar.zzb(i3, zZzl);
                    }
                    break;
                case 8:
                    if (zza(obj, i2)) {
                        zza(i3, zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar);
                    }
                    break;
                case 9:
                    if (zza(obj, i2)) {
                        zzfrVar.zza(i3, zzfd.zzo(obj, iZzag2 & 1048575), zzad(i2));
                    }
                    break;
                case 10:
                    if (zza(obj, i2)) {
                        zzfrVar.zza(i3, (zzbb) zzfd.zzo(obj, iZzag2 & 1048575));
                    }
                    break;
                case 11:
                    if (zza(obj, i2)) {
                        iZzj3 = zzfd.zzj(obj, iZzag2 & 1048575);
                        zzfrVar.zzd(i3, iZzj3);
                    }
                    break;
                case 12:
                    if (zza(obj, i2)) {
                        iZzj4 = zzfd.zzj(obj, iZzag2 & 1048575);
                        zzfrVar.zzn(i3, iZzj4);
                    }
                    break;
                case 13:
                    if (zza(obj, i2)) {
                        iZzj5 = zzfd.zzj(obj, iZzag2 & 1048575);
                        zzfrVar.zzm(i3, iZzj5);
                    }
                    break;
                case 14:
                    if (zza(obj, i2)) {
                        jZzk4 = zzfd.zzk(obj, iZzag2 & 1048575);
                        zzfrVar.zzj(i3, jZzk4);
                    }
                    break;
                case 15:
                    if (zza(obj, i2)) {
                        iZzj6 = zzfd.zzj(obj, iZzag2 & 1048575);
                        zzfrVar.zze(i3, iZzj6);
                    }
                    break;
                case 16:
                    if (zza(obj, i2)) {
                        jZzk5 = zzfd.zzk(obj, iZzag2 & 1048575);
                        zzfrVar.zzb(i3, jZzk5);
                    }
                    break;
                case 17:
                    if (zza(obj, i2)) {
                        zzfrVar.zzb(i3, zzfd.zzo(obj, iZzag2 & 1048575), zzad(i2));
                    }
                    break;
                case 18:
                    zzeh.zza(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar, false);
                    break;
                case 19:
                    zzeh.zzb(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar, false);
                    break;
                case 20:
                    zzeh.zzc(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar, false);
                    break;
                case 21:
                    zzeh.zzd(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar, false);
                    break;
                case 22:
                    zzeh.zzh(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar, false);
                    break;
                case 23:
                    zzeh.zzf(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar, false);
                    break;
                case 24:
                    zzeh.zzk(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar, false);
                    break;
                case 25:
                    zzeh.zzn(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar, false);
                    break;
                case 26:
                    zzeh.zza(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar);
                    break;
                case 27:
                    zzeh.zza(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar, zzad(i2));
                    break;
                case 28:
                    zzeh.zzb(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar);
                    break;
                case 29:
                    zzeh.zzi(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar, false);
                    break;
                case 30:
                    zzeh.zzm(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar, false);
                    break;
                case 31:
                    zzeh.zzl(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar, false);
                    break;
                case 32:
                    zzeh.zzg(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar, false);
                    break;
                case 33:
                    zzeh.zzj(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar, false);
                    break;
                case 34:
                    zzeh.zze(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar, false);
                    break;
                case 35:
                    zzeh.zza(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar, true);
                    break;
                case 36:
                    zzeh.zzb(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar, true);
                    break;
                case 37:
                    zzeh.zzc(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar, true);
                    break;
                case 38:
                    zzeh.zzd(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar, true);
                    break;
                case 39:
                    zzeh.zzh(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar, true);
                    break;
                case 40:
                    zzeh.zzf(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar, true);
                    break;
                case 41:
                    zzeh.zzk(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar, true);
                    break;
                case 42:
                    zzeh.zzn(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar, true);
                    break;
                case 43:
                    zzeh.zzi(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar, true);
                    break;
                case 44:
                    zzeh.zzm(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar, true);
                    break;
                case 45:
                    zzeh.zzl(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar, true);
                    break;
                case 46:
                    zzeh.zzg(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar, true);
                    break;
                case 47:
                    zzeh.zzj(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar, true);
                    break;
                case 48:
                    zzeh.zze(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar, true);
                    break;
                case 49:
                    zzeh.zzb(this.zzmi[i2], (List) zzfd.zzo(obj, iZzag2 & 1048575), zzfrVar, zzad(i2));
                    break;
                case 50:
                    zza(zzfrVar, i3, zzfd.zzo(obj, iZzag2 & 1048575), i2);
                    break;
                case 51:
                    if (zza(obj, i3, i2)) {
                        dZzn = zze(obj, iZzag2 & 1048575);
                        zzfrVar.zza(i3, dZzn);
                    }
                    break;
                case 52:
                    if (zza(obj, i3, i2)) {
                        fZzm = zzf(obj, iZzag2 & 1048575);
                        zzfrVar.zza(i3, fZzm);
                    }
                    break;
                case 53:
                    if (zza(obj, i3, i2)) {
                        jZzk = zzh(obj, iZzag2 & 1048575);
                        zzfrVar.zzi(i3, jZzk);
                    }
                    break;
                case 54:
                    if (zza(obj, i3, i2)) {
                        jZzk2 = zzh(obj, iZzag2 & 1048575);
                        zzfrVar.zza(i3, jZzk2);
                    }
                    break;
                case 55:
                    if (zza(obj, i3, i2)) {
                        iZzj = zzg(obj, iZzag2 & 1048575);
                        zzfrVar.zzc(i3, iZzj);
                    }
                    break;
                case 56:
                    if (zza(obj, i3, i2)) {
                        jZzk3 = zzh(obj, iZzag2 & 1048575);
                        zzfrVar.zzc(i3, jZzk3);
                    }
                    break;
                case 57:
                    if (zza(obj, i3, i2)) {
                        iZzj2 = zzg(obj, iZzag2 & 1048575);
                        zzfrVar.zzf(i3, iZzj2);
                    }
                    break;
                case 58:
                    if (zza(obj, i3, i2)) {
                        zZzl = zzi(obj, iZzag2 & 1048575);
                        zzfrVar.zzb(i3, zZzl);
                    }
                    break;
                case 59:
                    if (!zza(obj, i3, i2)) {
                        break;
                    }
                    break;
                case 60:
                    if (!zza(obj, i3, i2)) {
                        break;
                    }
                    break;
                case 61:
                    if (!zza(obj, i3, i2)) {
                        break;
                    }
                    break;
                case 62:
                    if (zza(obj, i3, i2)) {
                        iZzj3 = zzg(obj, iZzag2 & 1048575);
                        zzfrVar.zzd(i3, iZzj3);
                    }
                    break;
                case 63:
                    if (zza(obj, i3, i2)) {
                        iZzj4 = zzg(obj, iZzag2 & 1048575);
                        zzfrVar.zzn(i3, iZzj4);
                    }
                    break;
                case 64:
                    if (zza(obj, i3, i2)) {
                        iZzj5 = zzg(obj, iZzag2 & 1048575);
                        zzfrVar.zzm(i3, iZzj5);
                    }
                    break;
                case 65:
                    if (zza(obj, i3, i2)) {
                        jZzk4 = zzh(obj, iZzag2 & 1048575);
                        zzfrVar.zzj(i3, jZzk4);
                    }
                    break;
                case 66:
                    if (zza(obj, i3, i2)) {
                        iZzj6 = zzg(obj, iZzag2 & 1048575);
                        zzfrVar.zze(i3, iZzj6);
                    }
                    break;
                case 67:
                    if (zza(obj, i3, i2)) {
                        jZzk5 = zzh(obj, iZzag2 & 1048575);
                        zzfrVar.zzb(i3, jZzk5);
                    }
                    break;
                case 68:
                    if (!zza(obj, i3, i2)) {
                        break;
                    }
                    break;
            }
        }
        while (entry != null) {
            this.zzmy.zza(zzfrVar, entry);
            entry = it.hasNext() ? (Map.Entry) it.next() : null;
        }
        zza(this.zzmx, obj, zzfrVar);
    }

    @Override // com.google.android.gms.internal.clearcut.zzef
    public final void zza(Object obj, byte[] bArr, int i, int i2, zzay zzayVar) throws zzco {
        Unsafe unsafe;
        zzay zzayVar2;
        Object obj2;
        int i3;
        int i4;
        byte[] bArr2;
        int i5;
        int i6;
        int iZza;
        Unsafe unsafe2;
        Object obj3;
        Object objZza;
        Object obj4;
        int iZzm;
        zzds zzdsVar = this;
        byte[] bArr3 = bArr;
        int i7 = i2;
        zzay zzayVar3 = zzayVar;
        if (!zzdsVar.zzmq) {
            zza(obj, bArr, i, i7, 0, zzayVar);
            return;
        }
        Unsafe unsafe3 = zzmh;
        int iZza2 = i;
        while (iZza2 < i7) {
            int iZza3 = iZza2 + 1;
            int i8 = bArr3[iZza2];
            if (i8 < 0) {
                iZza3 = zzax.zza(i8, bArr3, iZza3, zzayVar3);
                i8 = zzayVar3.zzfd;
            }
            int i9 = i8;
            int i10 = iZza3;
            int i11 = (i9 == true ? 1 : 0) >>> 3;
            int i12 = (i9 == true ? 1 : 0) & 7;
            int iZzai = zzdsVar.zzai(i11);
            if (iZzai >= 0) {
                int i13 = zzdsVar.zzmi[iZzai + 1];
                int i14 = (267386880 & i13) >>> 20;
                long j = 1048575 & i13;
                if (i14 <= 17) {
                    switch (i14) {
                        case 0:
                            unsafe = unsafe3;
                            if (i12 == 1) {
                                zzfd.zza(obj, j, zzax.zze(bArr3, i10));
                                iZza2 = i10 + 8;
                                unsafe3 = unsafe;
                            }
                            i6 = i10;
                            obj2 = obj;
                            bArr2 = bArr;
                            i4 = i6;
                            i5 = i9;
                            i3 = i2;
                            zzayVar2 = zzayVar;
                            iZza2 = zza(i5, bArr2, i4, i3, obj2, zzayVar2);
                            zzdsVar = this;
                            bArr3 = bArr;
                            zzayVar3 = zzayVar;
                            i7 = i3;
                            unsafe3 = unsafe;
                            break;
                        case 1:
                            unsafe = unsafe3;
                            if (i12 == 5) {
                                zzfd.zza(obj, j, zzax.zzf(bArr3, i10));
                                iZza2 = i10 + 4;
                                unsafe3 = unsafe;
                            }
                            i6 = i10;
                            obj2 = obj;
                            bArr2 = bArr;
                            i4 = i6;
                            i5 = i9;
                            i3 = i2;
                            zzayVar2 = zzayVar;
                            iZza2 = zza(i5, bArr2, i4, i3, obj2, zzayVar2);
                            zzdsVar = this;
                            bArr3 = bArr;
                            zzayVar3 = zzayVar;
                            i7 = i3;
                            unsafe3 = unsafe;
                            break;
                        case 2:
                        case 3:
                            Unsafe unsafe4 = unsafe3;
                            if (i12 != 0) {
                                unsafe = unsafe4;
                                i6 = i10;
                                obj2 = obj;
                                bArr2 = bArr;
                                i4 = i6;
                                i5 = i9;
                                i3 = i2;
                                zzayVar2 = zzayVar;
                                iZza2 = zza(i5, bArr2, i4, i3, obj2, zzayVar2);
                                zzdsVar = this;
                                bArr3 = bArr;
                                zzayVar3 = zzayVar;
                                i7 = i3;
                                unsafe3 = unsafe;
                            } else {
                                int iZzb = zzax.zzb(bArr3, i10, zzayVar3);
                                unsafe3 = unsafe4;
                                unsafe3.putLong(obj, j, zzayVar3.zzfe);
                                iZza2 = iZzb;
                            }
                            break;
                        case 4:
                        case 11:
                            unsafe2 = unsafe3;
                            if (i12 != 0) {
                                i6 = i10;
                                unsafe = unsafe2;
                                obj2 = obj;
                                bArr2 = bArr;
                                i4 = i6;
                                i5 = i9;
                                i3 = i2;
                                zzayVar2 = zzayVar;
                                iZza2 = zza(i5, bArr2, i4, i3, obj2, zzayVar2);
                                zzdsVar = this;
                                bArr3 = bArr;
                                zzayVar3 = zzayVar;
                                i7 = i3;
                                unsafe3 = unsafe;
                            } else {
                                iZza2 = zzax.zza(bArr3, i10, zzayVar3);
                                unsafe2.putInt(obj, j, zzayVar3.zzfd);
                                unsafe3 = unsafe2;
                            }
                            break;
                        case 5:
                        case 14:
                            unsafe2 = unsafe3;
                            if (i12 != 1) {
                                i6 = i10;
                                unsafe = unsafe2;
                                obj2 = obj;
                                bArr2 = bArr;
                                i4 = i6;
                                i5 = i9;
                                i3 = i2;
                                zzayVar2 = zzayVar;
                                iZza2 = zza(i5, bArr2, i4, i3, obj2, zzayVar2);
                                zzdsVar = this;
                                bArr3 = bArr;
                                zzayVar3 = zzayVar;
                                i7 = i3;
                                unsafe3 = unsafe;
                            } else {
                                unsafe2.putLong(obj, j, zzax.zzd(bArr3, i10));
                                iZza2 = i10 + 8;
                                unsafe3 = unsafe2;
                            }
                            break;
                        case 6:
                        case 13:
                            unsafe2 = unsafe3;
                            if (i12 != 5) {
                                i6 = i10;
                                unsafe = unsafe2;
                                obj2 = obj;
                                bArr2 = bArr;
                                i4 = i6;
                                i5 = i9;
                                i3 = i2;
                                zzayVar2 = zzayVar;
                                iZza2 = zza(i5, bArr2, i4, i3, obj2, zzayVar2);
                                zzdsVar = this;
                                bArr3 = bArr;
                                zzayVar3 = zzayVar;
                                i7 = i3;
                                unsafe3 = unsafe;
                            } else {
                                unsafe2.putInt(obj, j, zzax.zzc(bArr3, i10));
                                iZza2 = i10 + 4;
                                unsafe3 = unsafe2;
                            }
                            break;
                        case 7:
                            unsafe2 = unsafe3;
                            if (i12 != 0) {
                                i6 = i10;
                                unsafe = unsafe2;
                                obj2 = obj;
                                bArr2 = bArr;
                                i4 = i6;
                                i5 = i9;
                                i3 = i2;
                                zzayVar2 = zzayVar;
                                iZza2 = zza(i5, bArr2, i4, i3, obj2, zzayVar2);
                                zzdsVar = this;
                                bArr3 = bArr;
                                zzayVar3 = zzayVar;
                                i7 = i3;
                                unsafe3 = unsafe;
                            } else {
                                iZza2 = zzax.zzb(bArr3, i10, zzayVar3);
                                zzfd.zza(obj, j, zzayVar3.zzfe != 0);
                                unsafe3 = unsafe2;
                            }
                            break;
                        case 8:
                            unsafe2 = unsafe3;
                            obj3 = obj;
                            if (i12 != 2) {
                                i6 = i10;
                                unsafe = unsafe2;
                                obj2 = obj;
                                bArr2 = bArr;
                                i4 = i6;
                                i5 = i9;
                                i3 = i2;
                                zzayVar2 = zzayVar;
                                iZza2 = zza(i5, bArr2, i4, i3, obj2, zzayVar2);
                                zzdsVar = this;
                                bArr3 = bArr;
                                zzayVar3 = zzayVar;
                                i7 = i3;
                                unsafe3 = unsafe;
                            } else {
                                iZza2 = (536870912 & i13) == 0 ? zzax.zzc(bArr3, i10, zzayVar3) : zzax.zzd(bArr3, i10, zzayVar3);
                                objZza = zzayVar3.zzff;
                                unsafe2.putObject(obj3, j, objZza);
                                unsafe3 = unsafe2;
                            }
                            break;
                        case 9:
                            unsafe2 = unsafe3;
                            obj3 = obj;
                            if (i12 != 2) {
                                i6 = i10;
                                unsafe = unsafe2;
                                obj2 = obj;
                                bArr2 = bArr;
                                i4 = i6;
                                i5 = i9;
                                i3 = i2;
                                zzayVar2 = zzayVar;
                                iZza2 = zza(i5, bArr2, i4, i3, obj2, zzayVar2);
                                zzdsVar = this;
                                bArr3 = bArr;
                                zzayVar3 = zzayVar;
                                i7 = i3;
                                unsafe3 = unsafe;
                            } else {
                                iZza2 = zza(zzdsVar.zzad(iZzai), bArr3, i10, i7, zzayVar3);
                                Object object = unsafe2.getObject(obj3, j);
                                objZza = object == null ? zzayVar3.zzff : zzci.zza(object, zzayVar3.zzff);
                                unsafe2.putObject(obj3, j, objZza);
                                unsafe3 = unsafe2;
                            }
                            break;
                        case 10:
                            unsafe2 = unsafe3;
                            obj3 = obj;
                            if (i12 != 2) {
                                i6 = i10;
                                unsafe = unsafe2;
                                obj2 = obj;
                                bArr2 = bArr;
                                i4 = i6;
                                i5 = i9;
                                i3 = i2;
                                zzayVar2 = zzayVar;
                                iZza2 = zza(i5, bArr2, i4, i3, obj2, zzayVar2);
                                zzdsVar = this;
                                bArr3 = bArr;
                                zzayVar3 = zzayVar;
                                i7 = i3;
                                unsafe3 = unsafe;
                            } else {
                                iZza2 = zzax.zze(bArr3, i10, zzayVar3);
                                objZza = zzayVar3.zzff;
                                unsafe2.putObject(obj3, j, objZza);
                                unsafe3 = unsafe2;
                            }
                            break;
                        case 12:
                            unsafe2 = unsafe3;
                            obj4 = obj;
                            if (i12 != 0) {
                                i6 = i10;
                                unsafe = unsafe2;
                                obj2 = obj;
                                bArr2 = bArr;
                                i4 = i6;
                                i5 = i9;
                                i3 = i2;
                                zzayVar2 = zzayVar;
                                iZza2 = zza(i5, bArr2, i4, i3, obj2, zzayVar2);
                                zzdsVar = this;
                                bArr3 = bArr;
                                zzayVar3 = zzayVar;
                                i7 = i3;
                                unsafe3 = unsafe;
                            } else {
                                iZza2 = zzax.zza(bArr3, i10, zzayVar3);
                                iZzm = zzayVar3.zzfd;
                                unsafe2.putInt(obj4, j, iZzm);
                                unsafe3 = unsafe2;
                            }
                            break;
                        case 15:
                            unsafe2 = unsafe3;
                            obj4 = obj;
                            if (i12 != 0) {
                                i6 = i10;
                                unsafe = unsafe2;
                                obj2 = obj;
                                bArr2 = bArr;
                                i4 = i6;
                                i5 = i9;
                                i3 = i2;
                                zzayVar2 = zzayVar;
                                iZza2 = zza(i5, bArr2, i4, i3, obj2, zzayVar2);
                                zzdsVar = this;
                                bArr3 = bArr;
                                zzayVar3 = zzayVar;
                                i7 = i3;
                                unsafe3 = unsafe;
                            } else {
                                iZza2 = zzax.zza(bArr3, i10, zzayVar3);
                                iZzm = zzbk.zzm(zzayVar3.zzfd);
                                unsafe2.putInt(obj4, j, iZzm);
                                unsafe3 = unsafe2;
                            }
                            break;
                        case 16:
                            if (i12 != 0) {
                                unsafe2 = unsafe3;
                                i6 = i10;
                                unsafe = unsafe2;
                                obj2 = obj;
                                bArr2 = bArr;
                                i4 = i6;
                                i5 = i9;
                                i3 = i2;
                                zzayVar2 = zzayVar;
                                iZza2 = zza(i5, bArr2, i4, i3, obj2, zzayVar2);
                                zzdsVar = this;
                                bArr3 = bArr;
                                zzayVar3 = zzayVar;
                                i7 = i3;
                                unsafe3 = unsafe;
                            } else {
                                int iZzb2 = zzax.zzb(bArr3, i10, zzayVar3);
                                unsafe3.putLong(obj, j, zzbk.zza(zzayVar3.zzfe));
                                unsafe2 = unsafe3;
                                iZza2 = iZzb2;
                                unsafe3 = unsafe2;
                            }
                            break;
                    }
                } else {
                    unsafe = unsafe3;
                    if (i14 != 27) {
                        if (i14 <= 49) {
                            iZza = zzdsVar.zza(obj, bArr, i10, i2, i9 == true ? 1 : 0, i11, i12, iZzai, i13, i14, j, zzayVar);
                            if (iZza == i10) {
                                obj2 = obj;
                                bArr2 = bArr;
                                i3 = i2;
                                zzayVar2 = zzayVar;
                                i4 = iZza;
                                i5 = i9 == true ? 1 : 0;
                                iZza2 = zza(i5, bArr2, i4, i3, obj2, zzayVar2);
                                zzdsVar = this;
                                bArr3 = bArr;
                                zzayVar3 = zzayVar;
                                i7 = i3;
                            }
                        } else {
                            if (i14 != 50) {
                                iZza = zza(obj, bArr, i10, i2, i9 == true ? 1 : 0, i11, i12, i13, i14, j, iZzai, zzayVar);
                                if (iZza == i10) {
                                    obj2 = obj;
                                    bArr2 = bArr;
                                    i3 = i2;
                                    i5 = i9 == true ? 1 : 0;
                                    i4 = iZza;
                                }
                            } else if (i12 == 2) {
                                int iZza4 = zza(obj, bArr, i10, i2, iZzai, i11, j, zzayVar);
                                if (iZza4 == i10) {
                                    obj2 = obj;
                                    bArr2 = bArr;
                                    i3 = i2;
                                    i4 = iZza4;
                                    i5 = i9 == true ? 1 : 0;
                                } else {
                                    zzdsVar = this;
                                    bArr3 = bArr;
                                    i7 = i2;
                                    zzayVar3 = zzayVar;
                                    iZza2 = iZza4;
                                }
                            } else {
                                i6 = i10;
                                i9 = i9 == true ? 1 : 0;
                                obj2 = obj;
                                bArr2 = bArr;
                                i4 = i6;
                                i5 = i9;
                                i3 = i2;
                            }
                            zzayVar2 = zzayVar;
                            iZza2 = zza(i5, bArr2, i4, i3, obj2, zzayVar2);
                            zzdsVar = this;
                            bArr3 = bArr;
                            zzayVar3 = zzayVar;
                            i7 = i3;
                        }
                        zzdsVar = this;
                        bArr3 = bArr;
                        i7 = i2;
                        zzayVar3 = zzayVar;
                        iZza2 = iZza;
                    } else if (i12 == 2) {
                        zzcn zzcnVarZzi = (zzcn) unsafe.getObject(obj, j);
                        if (!zzcnVarZzi.zzu()) {
                            int size = zzcnVarZzi.size();
                            zzcnVarZzi = zzcnVarZzi.zzi(size == 0 ? 10 : size << 1);
                            unsafe.putObject(obj, j, zzcnVarZzi);
                        }
                        iZza2 = zza(zzdsVar.zzad(iZzai), i9 == true ? 1 : 0, bArr3, i10, i7, zzcnVarZzi, zzayVar3);
                        bArr3 = bArr;
                        i7 = i2;
                        zzayVar3 = zzayVar;
                    } else {
                        i9 = i9 == true ? 1 : 0;
                        i6 = i10;
                        obj2 = obj;
                        bArr2 = bArr;
                        i4 = i6;
                        i5 = i9;
                        i3 = i2;
                        zzayVar2 = zzayVar;
                        iZza2 = zza(i5, bArr2, i4, i3, obj2, zzayVar2);
                        zzdsVar = this;
                        bArr3 = bArr;
                        zzayVar3 = zzayVar;
                        i7 = i3;
                    }
                    unsafe3 = unsafe;
                }
            }
            unsafe = unsafe3;
            i6 = i10;
            obj2 = obj;
            bArr2 = bArr;
            i4 = i6;
            i5 = i9;
            i3 = i2;
            zzayVar2 = zzayVar;
            iZza2 = zza(i5, bArr2, i4, i3, obj2, zzayVar2);
            zzdsVar = this;
            bArr3 = bArr;
            zzayVar3 = zzayVar;
            i7 = i3;
            unsafe3 = unsafe;
        }
        if (iZza2 != i7) {
            throw zzco.zzbo();
        }
    }

    @Override // com.google.android.gms.internal.clearcut.zzef
    public final void zzc(Object obj) {
        int[] iArr = this.zzmt;
        if (iArr != null) {
            for (int i : iArr) {
                long jZzag = zzag(i) & 1048575;
                Object objZzo = zzfd.zzo(obj, jZzag);
                if (objZzo != null) {
                    zzfd.zza(obj, jZzag, this.zzmz.zzj(objZzo));
                }
            }
        }
        int[] iArr2 = this.zzmu;
        if (iArr2 != null) {
            for (int i2 : iArr2) {
                this.zzmw.zza(obj, i2);
            }
        }
        this.zzmx.zzc(obj);
        if (this.zzmo) {
            this.zzmy.zzc(obj);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002b  */
    @Override // com.google.android.gms.internal.clearcut.zzef
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzc(Object obj, Object obj2) {
        obj2.getClass();
        for (int i = 0; i < this.zzmi.length; i += 4) {
            int iZzag = zzag(i);
            long j = 1048575 & iZzag;
            int i2 = this.zzmi[i];
            switch ((iZzag & 267386880) >>> 20) {
                case 0:
                    if (zza(obj2, i)) {
                        zzfd.zza(obj, j, zzfd.zzn(obj2, j));
                        zzb(obj, i);
                    }
                    break;
                case 1:
                    if (zza(obj2, i)) {
                        zzfd.zza(obj, j, zzfd.zzm(obj2, j));
                        zzb(obj, i);
                    }
                    break;
                case 2:
                    if (!zza(obj2, i)) {
                    }
                    zzfd.zza(obj, j, zzfd.zzk(obj2, j));
                    zzb(obj, i);
                    break;
                case 3:
                    if (!zza(obj2, i)) {
                    }
                    zzfd.zza(obj, j, zzfd.zzk(obj2, j));
                    zzb(obj, i);
                    break;
                case 4:
                    if (!zza(obj2, i)) {
                    }
                    zzfd.zza(obj, j, zzfd.zzj(obj2, j));
                    zzb(obj, i);
                    break;
                case 5:
                    if (!zza(obj2, i)) {
                    }
                    zzfd.zza(obj, j, zzfd.zzk(obj2, j));
                    zzb(obj, i);
                    break;
                case 6:
                    if (!zza(obj2, i)) {
                    }
                    zzfd.zza(obj, j, zzfd.zzj(obj2, j));
                    zzb(obj, i);
                    break;
                case 7:
                    if (zza(obj2, i)) {
                        zzfd.zza(obj, j, zzfd.zzl(obj2, j));
                        zzb(obj, i);
                    }
                    break;
                case 8:
                    if (!zza(obj2, i)) {
                    }
                    zzfd.zza(obj, j, zzfd.zzo(obj2, j));
                    zzb(obj, i);
                    break;
                case 9:
                case 17:
                    zza(obj, obj2, i);
                    break;
                case 10:
                    if (!zza(obj2, i)) {
                    }
                    zzfd.zza(obj, j, zzfd.zzo(obj2, j));
                    zzb(obj, i);
                    break;
                case 11:
                    if (!zza(obj2, i)) {
                    }
                    zzfd.zza(obj, j, zzfd.zzj(obj2, j));
                    zzb(obj, i);
                    break;
                case 12:
                    if (!zza(obj2, i)) {
                    }
                    zzfd.zza(obj, j, zzfd.zzj(obj2, j));
                    zzb(obj, i);
                    break;
                case 13:
                    if (!zza(obj2, i)) {
                    }
                    zzfd.zza(obj, j, zzfd.zzj(obj2, j));
                    zzb(obj, i);
                    break;
                case 14:
                    if (!zza(obj2, i)) {
                    }
                    zzfd.zza(obj, j, zzfd.zzk(obj2, j));
                    zzb(obj, i);
                    break;
                case 15:
                    if (!zza(obj2, i)) {
                    }
                    zzfd.zza(obj, j, zzfd.zzj(obj2, j));
                    zzb(obj, i);
                    break;
                case 16:
                    if (!zza(obj2, i)) {
                    }
                    zzfd.zza(obj, j, zzfd.zzk(obj2, j));
                    zzb(obj, i);
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    this.zzmw.zza(obj, obj2, j);
                    break;
                case 50:
                    zzeh.zza(this.zzmz, obj, obj2, j);
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                    if (zza(obj2, i2, i)) {
                        zzfd.zza(obj, j, zzfd.zzo(obj2, j));
                        zzb(obj, i2, i);
                    }
                    break;
                case 60:
                case 68:
                    zzb(obj, obj2, i);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (!zza(obj2, i2, i)) {
                        break;
                    }
                    break;
            }
        }
        if (this.zzmq) {
            return;
        }
        zzeh.zza(this.zzmx, obj, obj2);
        if (this.zzmo) {
            zzeh.zza(this.zzmy, obj, obj2);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:197:0x0369, code lost:
    
        if ((r4 instanceof com.google.android.gms.internal.clearcut.zzbb) != false) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:247:0x0425, code lost:
    
        if (zza(r21, r15, r4) != false) goto L248;
     */
    /* JADX WARN: Code restructure failed: missing block: B:248:0x0427, code lost:
    
        r6 = com.google.android.gms.internal.clearcut.zzbn.zzc(r15, (com.google.android.gms.internal.clearcut.zzdo) r2.getObject(r21, r13), zzad(r4));
     */
    /* JADX WARN: Code restructure failed: missing block: B:262:0x045e, code lost:
    
        if (zza(r21, r15, r4) != false) goto L263;
     */
    /* JADX WARN: Code restructure failed: missing block: B:263:0x0460, code lost:
    
        r6 = com.google.android.gms.internal.clearcut.zzbn.zzh(r15, 0L);
     */
    /* JADX WARN: Code restructure failed: missing block: B:265:0x0469, code lost:
    
        if (zza(r21, r15, r4) != false) goto L266;
     */
    /* JADX WARN: Code restructure failed: missing block: B:266:0x046b, code lost:
    
        r8 = com.google.android.gms.internal.clearcut.zzbn.zzk(r15, 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:277:0x0494, code lost:
    
        if (zza(r21, r15, r4) != false) goto L278;
     */
    /* JADX WARN: Code restructure failed: missing block: B:278:0x0496, code lost:
    
        r6 = (com.google.android.gms.internal.clearcut.zzbb) r2.getObject(r21, r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:279:0x049c, code lost:
    
        r6 = com.google.android.gms.internal.clearcut.zzbn.zzc(r15, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:281:0x04a5, code lost:
    
        if (zza(r21, r15, r4) != false) goto L282;
     */
    /* JADX WARN: Code restructure failed: missing block: B:282:0x04a7, code lost:
    
        r6 = com.google.android.gms.internal.clearcut.zzeh.zzc(r15, r2.getObject(r21, r13), zzad(r4));
     */
    /* JADX WARN: Code restructure failed: missing block: B:286:0x04c0, code lost:
    
        if ((r6 instanceof com.google.android.gms.internal.clearcut.zzbb) != false) goto L287;
     */
    /* JADX WARN: Code restructure failed: missing block: B:287:0x04c2, code lost:
    
        r6 = (com.google.android.gms.internal.clearcut.zzbb) r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:288:0x04c5, code lost:
    
        r6 = com.google.android.gms.internal.clearcut.zzbn.zzb(r15, (java.lang.String) r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:290:0x04d1, code lost:
    
        if (zza(r21, r15, r4) != false) goto L291;
     */
    /* JADX WARN: Code restructure failed: missing block: B:291:0x04d3, code lost:
    
        r6 = com.google.android.gms.internal.clearcut.zzbn.zzc(r15, true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:402:0x0716, code lost:
    
        if ((r12 & r19) != 0) goto L248;
     */
    /* JADX WARN: Code restructure failed: missing block: B:411:0x0730, code lost:
    
        if ((r12 & r19) != 0) goto L263;
     */
    /* JADX WARN: Code restructure failed: missing block: B:414:0x0736, code lost:
    
        if ((r12 & r19) != 0) goto L266;
     */
    /* JADX WARN: Code restructure failed: missing block: B:423:0x0750, code lost:
    
        if ((r12 & r19) != 0) goto L278;
     */
    /* JADX WARN: Code restructure failed: missing block: B:426:0x0756, code lost:
    
        if ((r12 & r19) != 0) goto L282;
     */
    /* JADX WARN: Code restructure failed: missing block: B:431:0x0764, code lost:
    
        if ((r6 instanceof com.google.android.gms.internal.clearcut.zzbb) != false) goto L287;
     */
    /* JADX WARN: Code restructure failed: missing block: B:434:0x076a, code lost:
    
        if ((r12 & r19) != 0) goto L291;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00e2, code lost:
    
        if ((r4 instanceof com.google.android.gms.internal.clearcut.zzbb) != false) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00e4, code lost:
    
        r4 = (com.google.android.gms.internal.clearcut.zzbb) r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00e7, code lost:
    
        r3 = com.google.android.gms.internal.clearcut.zzbn.zzb(r3, (java.lang.String) r4);
     */
    /* JADX WARN: Removed duplicated region for block: B:319:0x056c A[PHI: r8
  0x056c: PHI (r8v75 int) = 
  (r8v37 int)
  (r8v40 int)
  (r8v43 int)
  (r8v46 int)
  (r8v49 int)
  (r8v52 int)
  (r8v55 int)
  (r8v58 int)
  (r8v61 int)
  (r8v64 int)
  (r8v67 int)
  (r8v70 int)
  (r8v73 int)
  (r8v78 int)
 binds: [B:384:0x065c, B:379:0x064a, B:374:0x0638, B:369:0x0626, B:364:0x0614, B:359:0x0602, B:354:0x05f0, B:349:0x05df, B:344:0x05ce, B:339:0x05bd, B:334:0x05ac, B:329:0x059b, B:324:0x058a, B:318:0x056a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x018b A[PHI: r4
  0x018b: PHI (r4v72 int) = 
  (r4v34 int)
  (r4v37 int)
  (r4v40 int)
  (r4v43 int)
  (r4v46 int)
  (r4v49 int)
  (r4v52 int)
  (r4v55 int)
  (r4v58 int)
  (r4v61 int)
  (r4v64 int)
  (r4v67 int)
  (r4v70 int)
  (r4v75 int)
 binds: [B:152:0x027b, B:147:0x0269, B:142:0x0257, B:137:0x0245, B:132:0x0233, B:127:0x0221, B:122:0x020f, B:117:0x01fe, B:112:0x01ed, B:107:0x01dc, B:102:0x01cb, B:97:0x01ba, B:92:0x01a9, B:86:0x0189] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.google.android.gms.internal.clearcut.zzef
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int zzm(Object obj) {
        int i;
        int i2;
        boolean z;
        boolean z2;
        int iZzd;
        Object object;
        int iZzg;
        int iZzg2;
        int iZzg3;
        long jZzh;
        int iZzw;
        boolean z3;
        int iZzo;
        int iZzi;
        int iZzb;
        long jZzk;
        long jZzk2;
        int iZzj;
        Object objZzo;
        int iZzj2;
        int iZzj3;
        int iZzj4;
        long jZzk3;
        int iZzo2;
        int iZzi2;
        int i3 = 267386880;
        int i4 = 1048575;
        if (this.zzmq) {
            Unsafe unsafe = zzmh;
            int i5 = 0;
            int i6 = 0;
            while (i5 < this.zzmi.length) {
                int iZzag = zzag(i5);
                int i7 = (iZzag & i3) >>> 20;
                int i8 = i3;
                int i9 = this.zzmi[i5];
                long j = iZzag & 1048575;
                int i10 = (i7 < zzcb.zzih.m353id() || i7 > zzcb.zziu.m353id()) ? 0 : this.zzmi[i5 + 2] & 1048575;
                switch (i7) {
                    case 0:
                        if (!zza(obj, i5)) {
                        }
                        iZzo2 = zzbn.zzb(i9, 0.0d);
                        i6 += iZzo2;
                        break;
                    case 1:
                        if (!zza(obj, i5)) {
                        }
                        iZzo2 = zzbn.zzb(i9, 0.0f);
                        i6 += iZzo2;
                        break;
                    case 2:
                        if (zza(obj, i5)) {
                            jZzk = zzfd.zzk(obj, j);
                            iZzo2 = zzbn.zzd(i9, jZzk);
                            i6 += iZzo2;
                        }
                        break;
                    case 3:
                        if (zza(obj, i5)) {
                            jZzk2 = zzfd.zzk(obj, j);
                            iZzo2 = zzbn.zze(i9, jZzk2);
                            i6 += iZzo2;
                        }
                        break;
                    case 4:
                        if (zza(obj, i5)) {
                            iZzj = zzfd.zzj(obj, j);
                            iZzo2 = zzbn.zzg(i9, iZzj);
                            i6 += iZzo2;
                        }
                        break;
                    case 5:
                        if (!zza(obj, i5)) {
                        }
                        iZzo2 = zzbn.zzg(i9, 0L);
                        i6 += iZzo2;
                        break;
                    case 6:
                        if (!zza(obj, i5)) {
                        }
                        iZzo2 = zzbn.zzj(i9, 0);
                        i6 += iZzo2;
                        break;
                    case 7:
                        if (!zza(obj, i5)) {
                        }
                        iZzo2 = zzbn.zzc(i9, true);
                        i6 += iZzo2;
                        break;
                    case 8:
                        if (zza(obj, i5)) {
                            objZzo = zzfd.zzo(obj, j);
                        }
                        break;
                    case 9:
                        if (!zza(obj, i5)) {
                        }
                        iZzo2 = zzeh.zzc(i9, zzfd.zzo(obj, j), zzad(i5));
                        i6 += iZzo2;
                        break;
                    case 10:
                        if (!zza(obj, i5)) {
                        }
                        zzbb zzbbVar = (zzbb) zzfd.zzo(obj, j);
                        iZzo2 = zzbn.zzc(i9, zzbbVar);
                        i6 += iZzo2;
                        break;
                    case 11:
                        if (zza(obj, i5)) {
                            iZzj2 = zzfd.zzj(obj, j);
                            iZzo2 = zzbn.zzh(i9, iZzj2);
                            i6 += iZzo2;
                        }
                        break;
                    case 12:
                        if (zza(obj, i5)) {
                            iZzj3 = zzfd.zzj(obj, j);
                            iZzo2 = zzbn.zzl(i9, iZzj3);
                            i6 += iZzo2;
                        }
                        break;
                    case 13:
                        if (!zza(obj, i5)) {
                        }
                        iZzo2 = zzbn.zzk(i9, 0);
                        i6 += iZzo2;
                        break;
                    case 14:
                        if (!zza(obj, i5)) {
                        }
                        iZzo2 = zzbn.zzh(i9, 0L);
                        i6 += iZzo2;
                        break;
                    case 15:
                        if (zza(obj, i5)) {
                            iZzj4 = zzfd.zzj(obj, j);
                            iZzo2 = zzbn.zzi(i9, iZzj4);
                            i6 += iZzo2;
                        }
                        break;
                    case 16:
                        if (zza(obj, i5)) {
                            jZzk3 = zzfd.zzk(obj, j);
                            iZzo2 = zzbn.zzf(i9, jZzk3);
                            i6 += iZzo2;
                        }
                        break;
                    case 17:
                        if (!zza(obj, i5)) {
                        }
                        iZzo2 = zzbn.zzc(i9, (zzdo) zzfd.zzo(obj, j), zzad(i5));
                        i6 += iZzo2;
                        break;
                    case 18:
                    case 23:
                    case 32:
                        iZzo2 = zzeh.zzw(i9, zzd(obj, j), false);
                        i6 += iZzo2;
                        break;
                    case 19:
                    case 24:
                    case 31:
                        iZzo2 = zzeh.zzv(i9, zzd(obj, j), false);
                        i6 += iZzo2;
                        break;
                    case 20:
                        iZzo2 = zzeh.zzo(i9, zzd(obj, j), false);
                        i6 += iZzo2;
                        break;
                    case 21:
                        iZzo2 = zzeh.zzp(i9, zzd(obj, j), false);
                        i6 += iZzo2;
                        break;
                    case 22:
                        iZzo2 = zzeh.zzs(i9, zzd(obj, j), false);
                        i6 += iZzo2;
                        break;
                    case 25:
                        iZzo2 = zzeh.zzx(i9, zzd(obj, j), false);
                        i6 += iZzo2;
                        break;
                    case 26:
                        iZzo2 = zzeh.zzc(i9, zzd(obj, j));
                        i6 += iZzo2;
                        break;
                    case 27:
                        iZzo2 = zzeh.zzc(i9, zzd(obj, j), zzad(i5));
                        i6 += iZzo2;
                        break;
                    case 28:
                        iZzo2 = zzeh.zzd(i9, zzd(obj, j));
                        i6 += iZzo2;
                        break;
                    case 29:
                        iZzo2 = zzeh.zzt(i9, zzd(obj, j), false);
                        i6 += iZzo2;
                        break;
                    case 30:
                        iZzo2 = zzeh.zzr(i9, zzd(obj, j), false);
                        i6 += iZzo2;
                        break;
                    case 33:
                        iZzo2 = zzeh.zzu(i9, zzd(obj, j), false);
                        i6 += iZzo2;
                        break;
                    case 34:
                        iZzo2 = zzeh.zzq(i9, zzd(obj, j), false);
                        i6 += iZzo2;
                        break;
                    case 35:
                        iZzi2 = zzeh.zzi((List) unsafe.getObject(obj, j));
                        if (iZzi2 > 0) {
                            if (this.zzmr) {
                                unsafe.putInt(obj, i10, iZzi2);
                            }
                            iZzo2 = zzbn.zzr(i9) + zzbn.zzt(iZzi2) + iZzi2;
                            i6 += iZzo2;
                        }
                        break;
                    case 36:
                        iZzi2 = zzeh.zzh((List) unsafe.getObject(obj, j));
                        if (iZzi2 > 0) {
                            if (this.zzmr) {
                            }
                            iZzo2 = zzbn.zzr(i9) + zzbn.zzt(iZzi2) + iZzi2;
                            i6 += iZzo2;
                        }
                        break;
                    case 37:
                        iZzi2 = zzeh.zza((List) unsafe.getObject(obj, j));
                        if (iZzi2 > 0) {
                            if (this.zzmr) {
                            }
                            iZzo2 = zzbn.zzr(i9) + zzbn.zzt(iZzi2) + iZzi2;
                            i6 += iZzo2;
                        }
                        break;
                    case 38:
                        iZzi2 = zzeh.zzb((List) unsafe.getObject(obj, j));
                        if (iZzi2 > 0) {
                            if (this.zzmr) {
                            }
                            iZzo2 = zzbn.zzr(i9) + zzbn.zzt(iZzi2) + iZzi2;
                            i6 += iZzo2;
                        }
                        break;
                    case 39:
                        iZzi2 = zzeh.zze((List) unsafe.getObject(obj, j));
                        if (iZzi2 > 0) {
                            if (this.zzmr) {
                            }
                            iZzo2 = zzbn.zzr(i9) + zzbn.zzt(iZzi2) + iZzi2;
                            i6 += iZzo2;
                        }
                        break;
                    case 40:
                        iZzi2 = zzeh.zzi((List) unsafe.getObject(obj, j));
                        if (iZzi2 > 0) {
                            if (this.zzmr) {
                            }
                            iZzo2 = zzbn.zzr(i9) + zzbn.zzt(iZzi2) + iZzi2;
                            i6 += iZzo2;
                        }
                        break;
                    case 41:
                        iZzi2 = zzeh.zzh((List) unsafe.getObject(obj, j));
                        if (iZzi2 > 0) {
                            if (this.zzmr) {
                            }
                            iZzo2 = zzbn.zzr(i9) + zzbn.zzt(iZzi2) + iZzi2;
                            i6 += iZzo2;
                        }
                        break;
                    case 42:
                        iZzi2 = zzeh.zzj((List) unsafe.getObject(obj, j));
                        if (iZzi2 > 0) {
                            if (this.zzmr) {
                            }
                            iZzo2 = zzbn.zzr(i9) + zzbn.zzt(iZzi2) + iZzi2;
                            i6 += iZzo2;
                        }
                        break;
                    case 43:
                        iZzi2 = zzeh.zzf((List) unsafe.getObject(obj, j));
                        if (iZzi2 > 0) {
                            if (this.zzmr) {
                            }
                            iZzo2 = zzbn.zzr(i9) + zzbn.zzt(iZzi2) + iZzi2;
                            i6 += iZzo2;
                        }
                        break;
                    case 44:
                        iZzi2 = zzeh.zzd((List) unsafe.getObject(obj, j));
                        if (iZzi2 > 0) {
                            if (this.zzmr) {
                            }
                            iZzo2 = zzbn.zzr(i9) + zzbn.zzt(iZzi2) + iZzi2;
                            i6 += iZzo2;
                        }
                        break;
                    case 45:
                        iZzi2 = zzeh.zzh((List) unsafe.getObject(obj, j));
                        if (iZzi2 > 0) {
                            if (this.zzmr) {
                            }
                            iZzo2 = zzbn.zzr(i9) + zzbn.zzt(iZzi2) + iZzi2;
                            i6 += iZzo2;
                        }
                        break;
                    case 46:
                        iZzi2 = zzeh.zzi((List) unsafe.getObject(obj, j));
                        if (iZzi2 > 0) {
                            if (this.zzmr) {
                            }
                            iZzo2 = zzbn.zzr(i9) + zzbn.zzt(iZzi2) + iZzi2;
                            i6 += iZzo2;
                        }
                        break;
                    case 47:
                        iZzi2 = zzeh.zzg((List) unsafe.getObject(obj, j));
                        if (iZzi2 > 0) {
                            if (this.zzmr) {
                            }
                            iZzo2 = zzbn.zzr(i9) + zzbn.zzt(iZzi2) + iZzi2;
                            i6 += iZzo2;
                        }
                        break;
                    case 48:
                        iZzi2 = zzeh.zzc((List) unsafe.getObject(obj, j));
                        if (iZzi2 > 0) {
                            if (this.zzmr) {
                            }
                            iZzo2 = zzbn.zzr(i9) + zzbn.zzt(iZzi2) + iZzi2;
                            i6 += iZzo2;
                        }
                        break;
                    case 49:
                        iZzo2 = zzeh.zzd(i9, zzd(obj, j), zzad(i5));
                        i6 += iZzo2;
                        break;
                    case 50:
                        iZzo2 = this.zzmz.zzb(i9, zzfd.zzo(obj, j), zzae(i5));
                        i6 += iZzo2;
                        break;
                    case 51:
                        if (!zza(obj, i9, i5)) {
                        }
                        iZzo2 = zzbn.zzb(i9, 0.0d);
                        i6 += iZzo2;
                        break;
                    case 52:
                        if (!zza(obj, i9, i5)) {
                        }
                        iZzo2 = zzbn.zzb(i9, 0.0f);
                        i6 += iZzo2;
                        break;
                    case 53:
                        if (zza(obj, i9, i5)) {
                            jZzk = zzh(obj, j);
                            iZzo2 = zzbn.zzd(i9, jZzk);
                            i6 += iZzo2;
                        }
                        break;
                    case 54:
                        if (zza(obj, i9, i5)) {
                            jZzk2 = zzh(obj, j);
                            iZzo2 = zzbn.zze(i9, jZzk2);
                            i6 += iZzo2;
                        }
                        break;
                    case 55:
                        if (zza(obj, i9, i5)) {
                            iZzj = zzg(obj, j);
                            iZzo2 = zzbn.zzg(i9, iZzj);
                            i6 += iZzo2;
                        }
                        break;
                    case 56:
                        if (!zza(obj, i9, i5)) {
                        }
                        iZzo2 = zzbn.zzg(i9, 0L);
                        i6 += iZzo2;
                        break;
                    case 57:
                        if (!zza(obj, i9, i5)) {
                        }
                        iZzo2 = zzbn.zzj(i9, 0);
                        i6 += iZzo2;
                        break;
                    case 58:
                        if (!zza(obj, i9, i5)) {
                        }
                        iZzo2 = zzbn.zzc(i9, true);
                        i6 += iZzo2;
                        break;
                    case 59:
                        if (zza(obj, i9, i5)) {
                            objZzo = zzfd.zzo(obj, j);
                        }
                        break;
                    case 60:
                        if (!zza(obj, i9, i5)) {
                        }
                        iZzo2 = zzeh.zzc(i9, zzfd.zzo(obj, j), zzad(i5));
                        i6 += iZzo2;
                        break;
                    case 61:
                        if (!zza(obj, i9, i5)) {
                        }
                        zzbb zzbbVar2 = (zzbb) zzfd.zzo(obj, j);
                        iZzo2 = zzbn.zzc(i9, zzbbVar2);
                        i6 += iZzo2;
                        break;
                    case 62:
                        if (zza(obj, i9, i5)) {
                            iZzj2 = zzg(obj, j);
                            iZzo2 = zzbn.zzh(i9, iZzj2);
                            i6 += iZzo2;
                        }
                        break;
                    case 63:
                        if (zza(obj, i9, i5)) {
                            iZzj3 = zzg(obj, j);
                            iZzo2 = zzbn.zzl(i9, iZzj3);
                            i6 += iZzo2;
                        }
                        break;
                    case 64:
                        if (!zza(obj, i9, i5)) {
                        }
                        iZzo2 = zzbn.zzk(i9, 0);
                        i6 += iZzo2;
                        break;
                    case 65:
                        if (!zza(obj, i9, i5)) {
                        }
                        iZzo2 = zzbn.zzh(i9, 0L);
                        i6 += iZzo2;
                        break;
                    case 66:
                        if (zza(obj, i9, i5)) {
                            iZzj4 = zzg(obj, j);
                            iZzo2 = zzbn.zzi(i9, iZzj4);
                            i6 += iZzo2;
                        }
                        break;
                    case 67:
                        if (zza(obj, i9, i5)) {
                            jZzk3 = zzh(obj, j);
                            iZzo2 = zzbn.zzf(i9, jZzk3);
                            i6 += iZzo2;
                        }
                        break;
                    case 68:
                        if (!zza(obj, i9, i5)) {
                        }
                        iZzo2 = zzbn.zzc(i9, (zzdo) zzfd.zzo(obj, j), zzad(i5));
                        i6 += iZzo2;
                        break;
                }
                i5 += 4;
                i3 = i8;
            }
            return i6 + zza(this.zzmx, obj);
        }
        Unsafe unsafe2 = zzmh;
        int i11 = -1;
        int i12 = 0;
        int iZzb2 = 0;
        int i13 = 0;
        while (i12 < this.zzmi.length) {
            int iZzag2 = zzag(i12);
            int[] iArr = this.zzmi;
            int i14 = iArr[i12];
            int i15 = i4;
            int i16 = (iZzag2 & 267386880) >>> 20;
            if (i16 <= 17) {
                i = iArr[i12 + 2];
                int i17 = i & i15;
                i2 = 1 << (i >>> 20);
                if (i17 != i11) {
                    i13 = unsafe2.getInt(obj, i17);
                    i11 = i17;
                }
            } else {
                i = (!this.zzmr || i16 < zzcb.zzih.m353id() || i16 > zzcb.zziu.m353id()) ? 0 : this.zzmi[i12 + 2] & i15;
                i2 = 0;
            }
            long j2 = iZzag2 & i15;
            switch (i16) {
                case 0:
                    z = false;
                    z2 = false;
                    if ((i13 & i2) != 0) {
                        iZzb2 += zzbn.zzb(i14, 0.0d);
                    }
                    break;
                case 1:
                    z = false;
                    if ((i13 & i2) != 0) {
                        z2 = false;
                        iZzb2 += zzbn.zzb(i14, 0.0f);
                    } else {
                        z2 = false;
                    }
                    break;
                case 2:
                    z = false;
                    if ((i13 & i2) != 0) {
                        iZzd = zzbn.zzd(i14, unsafe2.getLong(obj, j2));
                        iZzb2 += iZzd;
                    }
                    z2 = false;
                    break;
                case 3:
                    z = false;
                    if ((i13 & i2) != 0) {
                        iZzd = zzbn.zze(i14, unsafe2.getLong(obj, j2));
                        iZzb2 += iZzd;
                    }
                    z2 = false;
                    break;
                case 4:
                    z = false;
                    if ((i13 & i2) != 0) {
                        iZzd = zzbn.zzg(i14, unsafe2.getInt(obj, j2));
                        iZzb2 += iZzd;
                    }
                    z2 = false;
                    break;
                case 5:
                    z = false;
                    if ((i13 & i2) != 0) {
                        iZzd = zzbn.zzg(i14, 0L);
                        iZzb2 += iZzd;
                    }
                    z2 = false;
                    break;
                case 6:
                    if ((i13 & i2) != 0) {
                        z = false;
                        iZzd = zzbn.zzj(i14, 0);
                        iZzb2 += iZzd;
                        z2 = false;
                    }
                    z = false;
                    z2 = false;
                    break;
                case 7:
                    break;
                case 8:
                    if ((i13 & i2) != 0) {
                        object = unsafe2.getObject(obj, j2);
                    }
                    z = false;
                    z2 = false;
                    break;
                case 9:
                    break;
                case 10:
                    break;
                case 11:
                    if ((i13 & i2) != 0) {
                        iZzg = unsafe2.getInt(obj, j2);
                        iZzw = zzbn.zzh(i14, iZzg);
                        iZzb2 += iZzw;
                    }
                    z = false;
                    z2 = false;
                    break;
                case 12:
                    if ((i13 & i2) != 0) {
                        iZzg2 = unsafe2.getInt(obj, j2);
                        iZzw = zzbn.zzl(i14, iZzg2);
                        iZzb2 += iZzw;
                    }
                    z = false;
                    z2 = false;
                    break;
                case 13:
                    break;
                case 14:
                    break;
                case 15:
                    if ((i13 & i2) != 0) {
                        iZzg3 = unsafe2.getInt(obj, j2);
                        iZzw = zzbn.zzi(i14, iZzg3);
                        iZzb2 += iZzw;
                    }
                    z = false;
                    z2 = false;
                    break;
                case 16:
                    if ((i13 & i2) != 0) {
                        jZzh = unsafe2.getLong(obj, j2);
                        iZzw = zzbn.zzf(i14, jZzh);
                        iZzb2 += iZzw;
                    }
                    z = false;
                    z2 = false;
                    break;
                case 17:
                    break;
                case 18:
                    iZzw = zzeh.zzw(i14, (List) unsafe2.getObject(obj, j2), false);
                    iZzb2 += iZzw;
                    z = false;
                    z2 = false;
                    break;
                case 19:
                case 24:
                case 31:
                    z3 = false;
                    iZzo = zzeh.zzv(i14, (List) unsafe2.getObject(obj, j2), false);
                    iZzb2 += iZzo;
                    z = z3;
                    z2 = false;
                    break;
                case 20:
                    z3 = false;
                    iZzo = zzeh.zzo(i14, (List) unsafe2.getObject(obj, j2), false);
                    iZzb2 += iZzo;
                    z = z3;
                    z2 = false;
                    break;
                case 21:
                    z3 = false;
                    iZzo = zzeh.zzp(i14, (List) unsafe2.getObject(obj, j2), false);
                    iZzb2 += iZzo;
                    z = z3;
                    z2 = false;
                    break;
                case 22:
                    z3 = false;
                    iZzo = zzeh.zzs(i14, (List) unsafe2.getObject(obj, j2), false);
                    iZzb2 += iZzo;
                    z = z3;
                    z2 = false;
                    break;
                case 23:
                case 32:
                    z3 = false;
                    iZzo = zzeh.zzw(i14, (List) unsafe2.getObject(obj, j2), false);
                    iZzb2 += iZzo;
                    z = z3;
                    z2 = false;
                    break;
                case 25:
                    z3 = false;
                    iZzo = zzeh.zzx(i14, (List) unsafe2.getObject(obj, j2), false);
                    iZzb2 += iZzo;
                    z = z3;
                    z2 = false;
                    break;
                case 26:
                    iZzw = zzeh.zzc(i14, (List) unsafe2.getObject(obj, j2));
                    iZzb2 += iZzw;
                    z = false;
                    z2 = false;
                    break;
                case 27:
                    iZzw = zzeh.zzc(i14, (List) unsafe2.getObject(obj, j2), zzad(i12));
                    iZzb2 += iZzw;
                    z = false;
                    z2 = false;
                    break;
                case 28:
                    iZzw = zzeh.zzd(i14, (List) unsafe2.getObject(obj, j2));
                    iZzb2 += iZzw;
                    z = false;
                    z2 = false;
                    break;
                case 29:
                    iZzw = zzeh.zzt(i14, (List) unsafe2.getObject(obj, j2), false);
                    iZzb2 += iZzw;
                    z = false;
                    z2 = false;
                    break;
                case 30:
                    z3 = false;
                    iZzo = zzeh.zzr(i14, (List) unsafe2.getObject(obj, j2), false);
                    iZzb2 += iZzo;
                    z = z3;
                    z2 = false;
                    break;
                case 33:
                    z3 = false;
                    iZzo = zzeh.zzu(i14, (List) unsafe2.getObject(obj, j2), false);
                    iZzb2 += iZzo;
                    z = z3;
                    z2 = false;
                    break;
                case 34:
                    z3 = false;
                    iZzo = zzeh.zzq(i14, (List) unsafe2.getObject(obj, j2), false);
                    iZzb2 += iZzo;
                    z = z3;
                    z2 = false;
                    break;
                case 35:
                    iZzi = zzeh.zzi((List) unsafe2.getObject(obj, j2));
                    if (iZzi > 0) {
                        if (this.zzmr) {
                            unsafe2.putInt(obj, i, iZzi);
                        }
                        iZzw = zzbn.zzr(i14) + zzbn.zzt(iZzi) + iZzi;
                        iZzb2 += iZzw;
                    }
                    z = false;
                    z2 = false;
                    break;
                case 36:
                    iZzi = zzeh.zzh((List) unsafe2.getObject(obj, j2));
                    if (iZzi > 0) {
                        if (this.zzmr) {
                        }
                        iZzw = zzbn.zzr(i14) + zzbn.zzt(iZzi) + iZzi;
                        iZzb2 += iZzw;
                    }
                    z = false;
                    z2 = false;
                    break;
                case 37:
                    iZzi = zzeh.zza((List) unsafe2.getObject(obj, j2));
                    if (iZzi > 0) {
                        if (this.zzmr) {
                        }
                        iZzw = zzbn.zzr(i14) + zzbn.zzt(iZzi) + iZzi;
                        iZzb2 += iZzw;
                    }
                    z = false;
                    z2 = false;
                    break;
                case 38:
                    iZzi = zzeh.zzb((List) unsafe2.getObject(obj, j2));
                    if (iZzi > 0) {
                        if (this.zzmr) {
                        }
                        iZzw = zzbn.zzr(i14) + zzbn.zzt(iZzi) + iZzi;
                        iZzb2 += iZzw;
                    }
                    z = false;
                    z2 = false;
                    break;
                case 39:
                    iZzi = zzeh.zze((List) unsafe2.getObject(obj, j2));
                    if (iZzi > 0) {
                        if (this.zzmr) {
                        }
                        iZzw = zzbn.zzr(i14) + zzbn.zzt(iZzi) + iZzi;
                        iZzb2 += iZzw;
                    }
                    z = false;
                    z2 = false;
                    break;
                case 40:
                    iZzi = zzeh.zzi((List) unsafe2.getObject(obj, j2));
                    if (iZzi > 0) {
                        if (this.zzmr) {
                        }
                        iZzw = zzbn.zzr(i14) + zzbn.zzt(iZzi) + iZzi;
                        iZzb2 += iZzw;
                    }
                    z = false;
                    z2 = false;
                    break;
                case 41:
                    iZzi = zzeh.zzh((List) unsafe2.getObject(obj, j2));
                    if (iZzi > 0) {
                        if (this.zzmr) {
                        }
                        iZzw = zzbn.zzr(i14) + zzbn.zzt(iZzi) + iZzi;
                        iZzb2 += iZzw;
                    }
                    z = false;
                    z2 = false;
                    break;
                case 42:
                    iZzi = zzeh.zzj((List) unsafe2.getObject(obj, j2));
                    if (iZzi > 0) {
                        if (this.zzmr) {
                        }
                        iZzw = zzbn.zzr(i14) + zzbn.zzt(iZzi) + iZzi;
                        iZzb2 += iZzw;
                    }
                    z = false;
                    z2 = false;
                    break;
                case 43:
                    iZzi = zzeh.zzf((List) unsafe2.getObject(obj, j2));
                    if (iZzi > 0) {
                        if (this.zzmr) {
                        }
                        iZzw = zzbn.zzr(i14) + zzbn.zzt(iZzi) + iZzi;
                        iZzb2 += iZzw;
                    }
                    z = false;
                    z2 = false;
                    break;
                case 44:
                    iZzi = zzeh.zzd((List) unsafe2.getObject(obj, j2));
                    if (iZzi > 0) {
                        if (this.zzmr) {
                        }
                        iZzw = zzbn.zzr(i14) + zzbn.zzt(iZzi) + iZzi;
                        iZzb2 += iZzw;
                    }
                    z = false;
                    z2 = false;
                    break;
                case 45:
                    iZzi = zzeh.zzh((List) unsafe2.getObject(obj, j2));
                    if (iZzi > 0) {
                        if (this.zzmr) {
                        }
                        iZzw = zzbn.zzr(i14) + zzbn.zzt(iZzi) + iZzi;
                        iZzb2 += iZzw;
                    }
                    z = false;
                    z2 = false;
                    break;
                case 46:
                    iZzi = zzeh.zzi((List) unsafe2.getObject(obj, j2));
                    if (iZzi > 0) {
                        if (this.zzmr) {
                        }
                        iZzw = zzbn.zzr(i14) + zzbn.zzt(iZzi) + iZzi;
                        iZzb2 += iZzw;
                    }
                    z = false;
                    z2 = false;
                    break;
                case 47:
                    iZzi = zzeh.zzg((List) unsafe2.getObject(obj, j2));
                    if (iZzi > 0) {
                        if (this.zzmr) {
                        }
                        iZzw = zzbn.zzr(i14) + zzbn.zzt(iZzi) + iZzi;
                        iZzb2 += iZzw;
                    }
                    z = false;
                    z2 = false;
                    break;
                case 48:
                    iZzi = zzeh.zzc((List) unsafe2.getObject(obj, j2));
                    if (iZzi > 0) {
                        if (this.zzmr) {
                        }
                        iZzw = zzbn.zzr(i14) + zzbn.zzt(iZzi) + iZzi;
                        iZzb2 += iZzw;
                    }
                    z = false;
                    z2 = false;
                    break;
                case 49:
                    iZzw = zzeh.zzd(i14, (List) unsafe2.getObject(obj, j2), zzad(i12));
                    iZzb2 += iZzw;
                    z = false;
                    z2 = false;
                    break;
                case 50:
                    iZzw = this.zzmz.zzb(i14, unsafe2.getObject(obj, j2), zzae(i12));
                    iZzb2 += iZzw;
                    z = false;
                    z2 = false;
                    break;
                case 51:
                    if (zza(obj, i14, i12)) {
                        iZzw = zzbn.zzb(i14, 0.0d);
                        iZzb2 += iZzw;
                    }
                    z = false;
                    z2 = false;
                    break;
                case 52:
                    if (zza(obj, i14, i12)) {
                        iZzb = zzbn.zzb(i14, 0.0f);
                        iZzb2 += iZzb;
                    }
                    z = false;
                    z2 = false;
                    break;
                case 53:
                    if (zza(obj, i14, i12)) {
                        iZzw = zzbn.zzd(i14, zzh(obj, j2));
                        iZzb2 += iZzw;
                    }
                    z = false;
                    z2 = false;
                    break;
                case 54:
                    if (zza(obj, i14, i12)) {
                        iZzw = zzbn.zze(i14, zzh(obj, j2));
                        iZzb2 += iZzw;
                    }
                    z = false;
                    z2 = false;
                    break;
                case 55:
                    if (zza(obj, i14, i12)) {
                        iZzw = zzbn.zzg(i14, zzg(obj, j2));
                        iZzb2 += iZzw;
                    }
                    z = false;
                    z2 = false;
                    break;
                case 56:
                    if (zza(obj, i14, i12)) {
                        iZzw = zzbn.zzg(i14, 0L);
                        iZzb2 += iZzw;
                    }
                    z = false;
                    z2 = false;
                    break;
                case 57:
                    if (zza(obj, i14, i12)) {
                        iZzb = zzbn.zzj(i14, 0);
                        iZzb2 += iZzb;
                    }
                    z = false;
                    z2 = false;
                    break;
                case 58:
                    break;
                case 59:
                    if (zza(obj, i14, i12)) {
                        object = unsafe2.getObject(obj, j2);
                    }
                    z = false;
                    z2 = false;
                    break;
                case 60:
                    break;
                case 61:
                    break;
                case 62:
                    if (zza(obj, i14, i12)) {
                        iZzg = zzg(obj, j2);
                        iZzw = zzbn.zzh(i14, iZzg);
                        iZzb2 += iZzw;
                    }
                    z = false;
                    z2 = false;
                    break;
                case 63:
                    if (zza(obj, i14, i12)) {
                        iZzg2 = zzg(obj, j2);
                        iZzw = zzbn.zzl(i14, iZzg2);
                        iZzb2 += iZzw;
                    }
                    z = false;
                    z2 = false;
                    break;
                case 64:
                    break;
                case 65:
                    break;
                case 66:
                    if (zza(obj, i14, i12)) {
                        iZzg3 = zzg(obj, j2);
                        iZzw = zzbn.zzi(i14, iZzg3);
                        iZzb2 += iZzw;
                    }
                    z = false;
                    z2 = false;
                    break;
                case 67:
                    if (zza(obj, i14, i12)) {
                        jZzh = zzh(obj, j2);
                        iZzw = zzbn.zzf(i14, jZzh);
                        iZzb2 += iZzw;
                    }
                    z = false;
                    z2 = false;
                    break;
                case 68:
                    break;
                default:
                    z = false;
                    z2 = false;
                    break;
            }
            i12 += 4;
            i4 = i15;
        }
        int iZza = iZzb2 + zza(this.zzmx, obj);
        return this.zzmo ? iZza + this.zzmy.zza(obj).zzas() : iZza;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00a7  */
    @Override // com.google.android.gms.internal.clearcut.zzef
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean zzo(Object obj) {
        int i;
        int i2;
        int i3;
        int[] iArr = this.zzms;
        int i4 = 1;
        if (iArr == null || iArr.length == 0) {
            return true;
        }
        int i5 = -1;
        int i6 = 0;
        int i7 = 0;
        for (int length = iArr.length; i6 < length; length = i2) {
            int i8 = iArr[i6];
            int iZzai = zzai(i8);
            int iZzag = zzag(iZzai);
            if (this.zzmq) {
                i = i4;
                i2 = length;
                i3 = 0;
            } else {
                int i9 = this.zzmi[iZzai + 2];
                int i10 = i9 & 1048575;
                i3 = i4 << (i9 >>> 20);
                if (i10 != i5) {
                    i = i4;
                    i2 = length;
                    i7 = zzmh.getInt(obj, i10);
                    i5 = i10;
                } else {
                    i = i4;
                    i2 = length;
                }
            }
            if ((268435456 & iZzag) != 0 && !zza(obj, iZzai, i7, i3)) {
                return false;
            }
            int i11 = (267386880 & iZzag) >>> 20;
            if (i11 == 9 || i11 == 17) {
                if (zza(obj, iZzai, i7, i3) && !zza(obj, iZzag, zzad(iZzai))) {
                    return false;
                }
            } else if (i11 == 27) {
                List list = (List) zzfd.zzo(obj, iZzag & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    zzef zzefVarZzad = zzad(iZzai);
                    for (int i12 = 0; i12 < list.size(); i12++) {
                        if (!zzefVarZzad.zzo(list.get(i12))) {
                            return false;
                        }
                    }
                }
            } else if (i11 == 60 || i11 == 68) {
                if (zza(obj, i8, iZzai) && !zza(obj, iZzag, zzad(iZzai))) {
                    return false;
                }
            } else if (i11 != 49) {
                if (i11 == 50 && !this.zzmz.zzh(zzfd.zzo(obj, iZzag & 1048575)).isEmpty()) {
                    this.zzmz.zzl(zzae(iZzai));
                    throw null;
                }
            }
            i6++;
            i4 = i;
        }
        boolean z = i4;
        if (!this.zzmo || this.zzmy.zza(obj).isInitialized()) {
            return z;
        }
        return false;
    }
}
