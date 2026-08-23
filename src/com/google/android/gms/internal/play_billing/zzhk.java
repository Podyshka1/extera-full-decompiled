package com.google.android.gms.internal.play_billing;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import p022j$.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzhk extends zzfv {
    private static final Map zzb = new ConcurrentHashMap();
    private int zzd = -1;
    protected zzjk zzc = zzjk.zzc();

    private static zzhk zzB(zzhk zzhkVar, byte[] bArr, int i, int i2, zzgw zzgwVar) throws zzhr {
        if (i2 == 0) {
            return zzhkVar;
        }
        zzhk zzhkVarZzp = zzhkVar.zzp();
        try {
            zzix zzixVarZzb = zziu.zza().zzb(zzhkVarZzp.getClass());
            zzixVarZzb.zzh(zzhkVarZzp, bArr, 0, i2, new zzfz(zzgwVar));
            zzixVarZzb.zzf(zzhkVarZzp);
            return zzhkVarZzp;
        } catch (zzhr e) {
            throw e;
        } catch (zzji e2) {
            throw e2.zza();
        } catch (IOException e3) {
            if (e3.getCause() instanceof zzhr) {
                throw ((zzhr) e3.getCause());
            }
            throw new zzhr(e3);
        } catch (IndexOutOfBoundsException unused) {
            throw new zzhr("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
    }

    private final int zzc(zzix zzixVar) {
        return zziu.zza().zzb(getClass()).zza(this);
    }

    static zzhk zzo(Class cls) {
        Map map = zzb;
        zzhk zzhkVar = (zzhk) map.get(cls);
        if (zzhkVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzhkVar = (zzhk) map.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        if (zzhkVar != null) {
            return zzhkVar;
        }
        zzhk zzhkVar2 = (zzhk) ((zzhk) zzjq.zze(cls)).zzd(6, null, null);
        if (zzhkVar2 == null) {
            throw new IllegalStateException();
        }
        map.put(cls, zzhkVar2);
        return zzhkVar2;
    }

    protected static zzhk zzq(zzhk zzhkVar, byte[] bArr, zzgw zzgwVar) throws zzhr {
        zzhk zzhkVarZzB = zzB(zzhkVar, bArr, 0, bArr.length, zzgwVar);
        if (zzhkVarZzB == null || zzz(zzhkVarZzB, true)) {
            return zzhkVarZzB;
        }
        throw new zzji(zzhkVarZzB).zza();
    }

    protected static zzhn zzr() {
        return zzhl.zzf();
    }

    protected static zzho zzs() {
        return zziv.zze();
    }

    static Object zzt(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e);
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
        }
    }

    protected static Object zzu(zzim zzimVar, String str, Object[] objArr) {
        return new zziw(zzimVar, str, objArr);
    }

    protected static void zzx(Class cls, zzhk zzhkVar) {
        zzhkVar.zzw();
        zzb.put(cls, zzhkVar);
    }

    protected static final boolean zzz(zzhk zzhkVar, boolean z) {
        byte bByteValue = ((Byte) zzhkVar.zzd(1, null, null)).byteValue();
        if (bByteValue == 1) {
            return true;
        }
        if (bByteValue == 0) {
            return false;
        }
        boolean zZzk = zziu.zza().zzb(zzhkVar.getClass()).zzk(zzhkVar);
        if (z) {
            zzhkVar.zzd(2, true != zZzk ? null : zzhkVar, null);
        }
        return zZzk;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return zziu.zza().zzb(getClass()).zzj(this, (zzhk) obj);
    }

    public final int hashCode() {
        if (zzA()) {
            return zzj();
        }
        int i = this.zza;
        if (i != 0) {
            return i;
        }
        int iZzj = zzj();
        this.zza = iZzj;
        return iZzj;
    }

    public final String toString() {
        return zzio.zza(this, super.toString());
    }

    final boolean zzA() {
        return (this.zzd & Integer.MIN_VALUE) != 0;
    }

    @Override // com.google.android.gms.internal.play_billing.zzim
    public final /* synthetic */ zzil zzI() {
        return (zzhg) zzd(5, null, null);
    }

    @Override // com.google.android.gms.internal.play_billing.zzim
    public final void zzJ(zzgr zzgrVar) {
        zziu.zza().zzb(getClass()).zzi(this, zzgs.zza(zzgrVar));
    }

    protected abstract Object zzd(int i, Object obj, Object obj2);

    @Override // com.google.android.gms.internal.play_billing.zzfv
    final int zze(zzix zzixVar) {
        if (zzA()) {
            int iZza = zzixVar.zza(this);
            if (iZza >= 0) {
                return iZza;
            }
            throw new IllegalStateException("serialized size must be non-negative, was " + iZza);
        }
        int i = this.zzd & Integer.MAX_VALUE;
        if (i != Integer.MAX_VALUE) {
            return i;
        }
        int iZza2 = zzixVar.zza(this);
        if (iZza2 >= 0) {
            this.zzd = (this.zzd & Integer.MIN_VALUE) | iZza2;
            return iZza2;
        }
        throw new IllegalStateException("serialized size must be non-negative, was " + iZza2);
    }

    @Override // com.google.android.gms.internal.play_billing.zzin
    public final /* synthetic */ zzim zzi() {
        return (zzhk) zzd(6, null, null);
    }

    final int zzj() {
        return zziu.zza().zzb(getClass()).zzb(this);
    }

    protected final zzhg zzm() {
        return (zzhg) zzd(5, null, null);
    }

    public final zzhg zzn() {
        zzhg zzhgVar = (zzhg) zzd(5, null, null);
        zzhgVar.zze(this);
        return zzhgVar;
    }

    final zzhk zzp() {
        return (zzhk) zzd(4, null, null);
    }

    protected final void zzv() {
        zziu.zza().zzb(getClass()).zzf(this);
        zzw();
    }

    final void zzw() {
        this.zzd &= Integer.MAX_VALUE;
    }

    final void zzy(int i) {
        this.zzd = (this.zzd & Integer.MIN_VALUE) | Integer.MAX_VALUE;
    }

    @Override // com.google.android.gms.internal.play_billing.zzim
    public final int zzk() {
        if (zzA()) {
            int iZzc = zzc(null);
            if (iZzc >= 0) {
                return iZzc;
            }
            throw new IllegalStateException("serialized size must be non-negative, was " + iZzc);
        }
        int i = this.zzd & Integer.MAX_VALUE;
        if (i != Integer.MAX_VALUE) {
            return i;
        }
        int iZzc2 = zzc(null);
        if (iZzc2 >= 0) {
            this.zzd = (this.zzd & Integer.MIN_VALUE) | iZzc2;
            return iZzc2;
        }
        throw new IllegalStateException("serialized size must be non-negative, was " + iZzc2);
    }
}
