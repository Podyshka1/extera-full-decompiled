package com.google.android.recaptcha.internal;

import androidx.camera.core.CameraSelector$$ExternalSyntheticBUOutline0;
import java.util.Iterator;
import java.util.Map;
import okio.Segment$$ExternalSyntheticBUOutline1;
import org.webrtc.GlShader$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
final class zzij {
    private static final zzij zzb = new zzij(true);
    final zzle zza = new zzku(16);
    private boolean zzc;
    private boolean zzd;

    private zzij() {
    }

    public static int zza(zzii zziiVar, Object obj) {
        int iZzd;
        int iZzy;
        zzmb zzmbVarZzd = zziiVar.zzd();
        int iZza = zziiVar.zza();
        zziiVar.zzg();
        int iZzy2 = zzhh.zzy(iZza << 3);
        if (zzmbVarZzd == zzmb.zzj) {
            byte[] bArr = zzjc.zzd;
            if (((zzke) obj) instanceof zzgg) {
                throw null;
            }
            iZzy2 += iZzy2;
        }
        zzmc zzmcVar = zzmc.INT;
        int iZzz = 4;
        switch (zzmbVarZzd.ordinal()) {
            case 0:
                ((Double) obj).getClass();
                iZzz = 8;
                return iZzy2 + iZzz;
            case 1:
                ((Float) obj).getClass();
                return iZzy2 + iZzz;
            case 2:
                iZzz = zzhh.zzz(((Long) obj).longValue());
                return iZzy2 + iZzz;
            case 3:
                iZzz = zzhh.zzz(((Long) obj).longValue());
                return iZzy2 + iZzz;
            case 4:
                iZzz = zzhh.zzu(((Integer) obj).intValue());
                return iZzy2 + iZzz;
            case 5:
                ((Long) obj).getClass();
                iZzz = 8;
                return iZzy2 + iZzz;
            case 6:
                ((Integer) obj).getClass();
                return iZzy2 + iZzz;
            case 7:
                ((Boolean) obj).getClass();
                iZzz = 1;
                return iZzy2 + iZzz;
            case 8:
                if (!(obj instanceof zzgw)) {
                    iZzz = zzhh.zzx((String) obj);
                    return iZzy2 + iZzz;
                }
                iZzd = ((zzgw) obj).zzd();
                iZzy = zzhh.zzy(iZzd);
                iZzz = iZzy + iZzd;
                return iZzy2 + iZzz;
            case 9:
                iZzz = ((zzke) obj).zzn();
                return iZzy2 + iZzz;
            case 10:
                if (!(obj instanceof zzjj)) {
                    iZzz = zzhh.zzv((zzke) obj);
                    return iZzy2 + iZzz;
                }
                iZzd = ((zzjj) obj).zza();
                iZzy = zzhh.zzy(iZzd);
                iZzz = iZzy + iZzd;
                return iZzy2 + iZzz;
            case 11:
                if (obj instanceof zzgw) {
                    iZzd = ((zzgw) obj).zzd();
                    iZzy = zzhh.zzy(iZzd);
                } else {
                    iZzd = ((byte[]) obj).length;
                    iZzy = zzhh.zzy(iZzd);
                }
                iZzz = iZzy + iZzd;
                return iZzy2 + iZzz;
            case 12:
                iZzz = zzhh.zzy(((Integer) obj).intValue());
                return iZzy2 + iZzz;
            case 13:
                iZzz = obj instanceof zziv ? zzhh.zzu(((zziv) obj).zza()) : zzhh.zzu(((Integer) obj).intValue());
                return iZzy2 + iZzz;
            case 14:
                ((Integer) obj).getClass();
                return iZzy2 + iZzz;
            case 15:
                ((Long) obj).getClass();
                iZzz = 8;
                return iZzy2 + iZzz;
            case 16:
                int iIntValue = ((Integer) obj).intValue();
                iZzz = zzhh.zzy((iIntValue >> 31) ^ (iIntValue + iIntValue));
                return iZzy2 + iZzz;
            case 17:
                long jLongValue = ((Long) obj).longValue();
                iZzz = zzhh.zzz((jLongValue >> 63) ^ (jLongValue + jLongValue));
                return iZzy2 + iZzz;
            default:
                GlShader$$ExternalSyntheticBUOutline1.m966m("There is no way to get here, but the compiler thinks otherwise.");
                return 0;
        }
    }

    public static zzij zzd() {
        return zzb;
    }

    private static Object zzl(Object obj) {
        if (obj instanceof zzkj) {
            return ((zzkj) obj).zzd();
        }
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        return bArr2;
    }

    private final void zzm(Map.Entry entry) {
        zzke zzkeVarZzj;
        zzii zziiVar = (zzii) entry.getKey();
        Object value = entry.getValue();
        boolean z = value instanceof zzjj;
        zziiVar.zzg();
        if (zziiVar.zze() != zzmc.MESSAGE) {
            if (z) {
                Segment$$ExternalSyntheticBUOutline1.m848m("Lazy fields must be message-valued");
                return;
            } else {
                this.zza.put(zziiVar, zzl(value));
                return;
            }
        }
        Object objZze = zze(zziiVar);
        if (objZze == null) {
            this.zza.put(zziiVar, zzl(value));
            if (z) {
                this.zzd = true;
                return;
            }
            return;
        }
        if (z) {
            throw null;
        }
        if (objZze instanceof zzkj) {
            zzkeVarZzj = zziiVar.zzc((zzkj) objZze, (zzkj) value);
        } else {
            zzkd zzkdVarZzX = ((zzke) objZze).zzX();
            zziiVar.zzb(zzkdVarZzX, (zzke) value);
            zzkeVarZzj = zzkdVarZzX.zzj();
        }
        this.zza.put(zziiVar, zzkeVarZzj);
    }

    private static boolean zzn(Map.Entry entry) {
        zzii zziiVar = (zzii) entry.getKey();
        if (zziiVar.zze() != zzmc.MESSAGE) {
            return true;
        }
        zziiVar.zzg();
        Object value = entry.getValue();
        if (value instanceof zzkf) {
            return ((zzkf) value).zzo();
        }
        if (value instanceof zzjj) {
            return true;
        }
        f$$ExternalSyntheticBUOutline1.m178m("Wrong object type used with protocol message reflection.");
        return false;
    }

    private static final int zzo(Map.Entry entry) {
        zzii zziiVar = (zzii) entry.getKey();
        Object value = entry.getValue();
        if (zziiVar.zze() != zzmc.MESSAGE) {
            return zza(zziiVar, value);
        }
        zziiVar.zzg();
        zziiVar.zzf();
        if (!(value instanceof zzjj)) {
            int iZzy = zzhh.zzy(((zzii) entry.getKey()).zza());
            int iZzy2 = zzhh.zzy(24) + zzhh.zzv((zzke) value);
            int iZzy3 = zzhh.zzy(16);
            int iZzy4 = zzhh.zzy(8);
            return iZzy4 + iZzy4 + iZzy3 + iZzy + iZzy2;
        }
        int iZzy5 = zzhh.zzy(((zzii) entry.getKey()).zza());
        int iZza = ((zzjj) value).zza();
        int iZzy6 = zzhh.zzy(iZza) + iZza;
        int iZzy7 = zzhh.zzy(24);
        int iZzy8 = zzhh.zzy(16);
        int iZzy9 = zzhh.zzy(8);
        return iZzy9 + iZzy9 + iZzy8 + iZzy5 + iZzy7 + iZzy6;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzij) {
            return this.zza.equals(((zzij) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    public final int zzb() {
        zzle zzleVar;
        int i = 0;
        int iZzo = 0;
        while (true) {
            int iZzb = this.zza.zzb();
            zzleVar = this.zza;
            if (i >= iZzb) {
                break;
            }
            iZzo += zzo(zzleVar.zzg(i));
            i++;
        }
        Iterator it = zzleVar.zzc().iterator();
        while (it.hasNext()) {
            iZzo += zzo((Map.Entry) it.next());
        }
        return iZzo;
    }

    /* JADX INFO: renamed from: zzc, reason: merged with bridge method [inline-methods] */
    public final zzij clone() {
        zzle zzleVar;
        zzij zzijVar = new zzij();
        int i = 0;
        while (true) {
            int iZzb = this.zza.zzb();
            zzleVar = this.zza;
            if (i >= iZzb) {
                break;
            }
            Map.Entry entryZzg = zzleVar.zzg(i);
            zzijVar.zzi((zzii) entryZzg.getKey(), entryZzg.getValue());
            i++;
        }
        for (Map.Entry entry : zzleVar.zzc()) {
            zzijVar.zzi((zzii) entry.getKey(), entry.getValue());
        }
        zzijVar.zzd = this.zzd;
        return zzijVar;
    }

    public final Object zze(zzii zziiVar) {
        Object obj = this.zza.get(zziiVar);
        if (obj instanceof zzjj) {
            throw null;
        }
        return obj;
    }

    public final Iterator zzf() {
        boolean z = this.zzd;
        zzle zzleVar = this.zza;
        return z ? new zzji(zzleVar.entrySet().iterator()) : zzleVar.entrySet().iterator();
    }

    public final void zzg() {
        if (this.zzc) {
            return;
        }
        int i = 0;
        while (true) {
            int iZzb = this.zza.zzb();
            zzle zzleVar = this.zza;
            if (i >= iZzb) {
                zzleVar.zza();
                this.zzc = true;
                return;
            } else {
                Map.Entry entryZzg = zzleVar.zzg(i);
                if (entryZzg.getValue() instanceof zzit) {
                    ((zzit) entryZzg.getValue()).zzB();
                }
                i++;
            }
        }
    }

    public final void zzh(zzij zzijVar) {
        zzle zzleVar;
        int i = 0;
        while (true) {
            int iZzb = zzijVar.zza.zzb();
            zzleVar = zzijVar.zza;
            if (i >= iZzb) {
                break;
            }
            zzm(zzleVar.zzg(i));
            i++;
        }
        Iterator it = zzleVar.zzc().iterator();
        while (it.hasNext()) {
            zzm((Map.Entry) it.next());
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x002b, code lost:
    
        if ((r4 instanceof com.google.android.recaptcha.internal.zziv) == false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0034, code lost:
    
        if ((r4 instanceof byte[]) == false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0048, code lost:
    
        if (r0 == false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0022, code lost:
    
        if ((r4 instanceof com.google.android.recaptcha.internal.zzjj) == false) goto L32;
     */
    /* JADX WARN: Removed duplicated region for block: B:29:0x004e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzi(zzii zziiVar, Object obj) {
        boolean z;
        zziiVar.zzg();
        zziiVar.zzd();
        byte[] bArr = zzjc.zzd;
        obj.getClass();
        zzmb zzmbVar = zzmb.zza;
        zzmc zzmcVar = zzmc.INT;
        switch (r0.zza()) {
            case INT:
                z = obj instanceof Integer;
                break;
            case LONG:
                z = obj instanceof Long;
                break;
            case FLOAT:
                z = obj instanceof Float;
                break;
            case DOUBLE:
                z = obj instanceof Double;
                break;
            case BOOLEAN:
                z = obj instanceof Boolean;
                break;
            case STRING:
                z = obj instanceof String;
                break;
            case BYTE_STRING:
                if (!(obj instanceof zzgw)) {
                }
                if (obj instanceof zzjj) {
                    this.zzd = true;
                }
                this.zza.put(zziiVar, obj);
                break;
            case ENUM:
                if (!(obj instanceof Integer)) {
                }
                if (obj instanceof zzjj) {
                }
                this.zza.put(zziiVar, obj);
                break;
            case MESSAGE:
                if (!(obj instanceof zzke)) {
                }
                if (obj instanceof zzjj) {
                }
                this.zza.put(zziiVar, obj);
                break;
            default:
                CameraSelector$$ExternalSyntheticBUOutline0.m72m("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", new Object[]{Integer.valueOf(zziiVar.zza()), zziiVar.zzd().zza(), obj.getClass().getName()});
                break;
        }
    }

    public final boolean zzj() {
        return this.zzc;
    }

    public final boolean zzk() {
        int i = 0;
        while (true) {
            int iZzb = this.zza.zzb();
            zzle zzleVar = this.zza;
            if (i >= iZzb) {
                Iterator it = zzleVar.zzc().iterator();
                while (it.hasNext()) {
                    if (!zzn((Map.Entry) it.next())) {
                        return false;
                    }
                }
                return true;
            }
            if (!zzn(zzleVar.zzg(i))) {
                return false;
            }
            i++;
        }
    }

    private zzij(boolean z) {
        zzg();
        zzg();
    }
}
