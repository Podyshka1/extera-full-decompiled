package com.google.android.recaptcha.internal;

import com.google.android.recaptcha.internal.zzin;
import com.google.android.recaptcha.internal.zzit;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import okhttp3.internal.url._UrlKt;
import p022j$.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzit<MessageType extends zzit<MessageType, BuilderType>, BuilderType extends zzin<MessageType, BuilderType>> extends zzgf<MessageType, BuilderType> {
    private static final Map zzb = new ConcurrentHashMap();
    private int zzd = -1;
    protected zzlm zzc = zzlm.zzc();

    protected static Object zzA(zzke zzkeVar, String str, Object[] objArr) {
        return new zzkp(zzkeVar, str, objArr);
    }

    protected static void zzD(Class cls, zzit zzitVar) {
        zzitVar.zzC();
        zzb.put(cls, zzitVar);
    }

    protected static final boolean zzF(zzit zzitVar, boolean z) {
        byte bByteValue = ((Byte) zzitVar.zzh(1, null, null)).byteValue();
        if (bByteValue == 1) {
            return true;
        }
        if (bByteValue == 0) {
            return false;
        }
        boolean zZzl = zzkn.zza().zzb(zzitVar.getClass()).zzl(zzitVar);
        if (z) {
            zzitVar.zzh(2, true != zZzl ? null : zzitVar, null);
        }
        return zZzl;
    }

    private final int zzf(zzkr zzkrVar) {
        return zzkn.zza().zzb(getClass()).zza(this);
    }

    private static zzit zzg(zzit zzitVar) throws zzje {
        if (zzitVar == null || zzitVar.zzo()) {
            return zzitVar;
        }
        zzje zzjeVarZza = new zzlk(zzitVar).zza();
        zzjeVarZza.zzh(zzitVar);
        throw zzjeVarZza;
    }

    private static zzit zzi(zzit zzitVar, byte[] bArr, int i, int i2, zzie zzieVar) throws zzje {
        zzit zzitVarZzs = zzitVar.zzs();
        try {
            zzkr zzkrVarZzb = zzkn.zza().zzb(zzitVarZzs.getClass());
            zzkrVarZzb.zzi(zzitVarZzs, bArr, 0, i2, new zzgj(zzieVar));
            zzkrVarZzb.zzf(zzitVarZzs);
            return zzitVarZzs;
        } catch (zzje e) {
            zzje zzjeVar = e;
            if (zzjeVar.zzl()) {
                zzjeVar = new zzje(zzjeVar);
            }
            zzjeVar.zzh(zzitVarZzs);
            throw zzjeVar;
        } catch (zzlk e2) {
            zzje zzjeVarZza = e2.zza();
            zzjeVarZza.zzh(zzitVarZzs);
            throw zzjeVarZza;
        } catch (IOException e3) {
            if (e3.getCause() instanceof zzje) {
                throw ((zzje) e3.getCause());
            }
            zzje zzjeVar2 = new zzje(e3);
            zzjeVar2.zzh(zzitVarZzs);
            throw zzjeVar2;
        } catch (IndexOutOfBoundsException unused) {
            zzje zzjeVarZzj = zzje.zzj();
            zzjeVarZzj.zzh(zzitVarZzs);
            throw zzjeVarZzj;
        }
    }

    public static zzir zzq(zzke zzkeVar, Object obj, zzke zzkeVar2, zziw zziwVar, int i, zzmb zzmbVar, Class cls) {
        return new zzir(zzkeVar, _UrlKt.FRAGMENT_ENCODE_SET, null, new zziq(null, i, zzmbVar, false, false), cls);
    }

    static zzit zzr(Class cls) {
        Map map = zzb;
        zzit zzitVar = (zzit) map.get(cls);
        if (zzitVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzitVar = (zzit) map.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        if (zzitVar != null) {
            return zzitVar;
        }
        zzit zzitVar2 = (zzit) ((zzit) zzlv.zze(cls)).zzh(6, null, null);
        if (zzitVar2 == null) {
            throw new IllegalStateException();
        }
        map.put(cls, zzitVar2);
        return zzitVar2;
    }

    protected static zzit zzt(zzit zzitVar, InputStream inputStream) throws zzje {
        zzhc zzhaVar;
        int i = zzhc.zzd;
        if (inputStream == null) {
            byte[] bArr = zzjc.zzd;
            int length = bArr.length;
            zzhaVar = zzhc.zzH(bArr, 0, 0, false);
        } else {
            zzhaVar = new zzha(inputStream, 4096, null);
        }
        zzie zzieVar = zzie.zza;
        zzit zzitVarZzs = zzitVar.zzs();
        try {
            zzkr zzkrVarZzb = zzkn.zza().zzb(zzitVarZzs.getClass());
            zzkrVarZzb.zzh(zzitVarZzs, zzhd.zzq(zzhaVar), zzieVar);
            zzkrVarZzb.zzf(zzitVarZzs);
            zzg(zzitVarZzs);
            return zzitVarZzs;
        } catch (zzje e) {
            e = e;
            if (e.zzl()) {
                e = new zzje(e);
            }
            e.zzh(zzitVarZzs);
            throw e;
        } catch (zzlk e2) {
            zzje zzjeVarZza = e2.zza();
            zzjeVarZza.zzh(zzitVarZzs);
            throw zzjeVarZza;
        } catch (IOException e3) {
            if (e3.getCause() instanceof zzje) {
                throw ((zzje) e3.getCause());
            }
            zzje zzjeVar = new zzje(e3);
            zzjeVar.zzh(zzitVarZzs);
            throw zzjeVar;
        } catch (RuntimeException e4) {
            if (e4.getCause() instanceof zzje) {
                throw ((zzje) e4.getCause());
            }
            throw e4;
        }
    }

    protected static zzit zzu(zzit zzitVar, byte[] bArr) throws zzje {
        zzit zzitVarZzi = zzi(zzitVar, bArr, 0, bArr.length, zzie.zza);
        zzg(zzitVarZzi);
        return zzitVarZzi;
    }

    protected static zziy zzv() {
        return zziu.zzf();
    }

    protected static zzja zzw() {
        return zzjt.zzf();
    }

    protected static zzjb zzx() {
        return zzko.zze();
    }

    protected static zzjb zzy(zzjb zzjbVar) {
        int size = zzjbVar.size();
        return zzjbVar.zzd(size == 0 ? 10 : size + size);
    }

    static Object zzz(Method method, Object obj, Object... objArr) {
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

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return zzkn.zza().zzb(getClass()).zzk(this, (zzit) obj);
    }

    public final int hashCode() {
        if (zzG()) {
            return zzm();
        }
        int i = this.zza;
        if (i != 0) {
            return i;
        }
        int iZzm = zzm();
        this.zza = iZzm;
        return iZzm;
    }

    public final String toString() {
        return zzkg.zza(this, super.toString());
    }

    protected final void zzB() {
        zzkn.zza().zzb(getClass()).zzf(this);
        zzC();
    }

    final void zzC() {
        this.zzd &= Integer.MAX_VALUE;
    }

    final void zzE(int i) {
        this.zzd = (this.zzd & Integer.MIN_VALUE) | Integer.MAX_VALUE;
    }

    final boolean zzG() {
        return (this.zzd & Integer.MIN_VALUE) != 0;
    }

    @Override // com.google.android.recaptcha.internal.zzke
    public final /* synthetic */ zzkd zzW() {
        return (zzin) zzh(5, null, null);
    }

    @Override // com.google.android.recaptcha.internal.zzke
    public final /* synthetic */ zzkd zzX() {
        zzin zzinVar = (zzin) zzh(5, null, null);
        zzinVar.zzg(this);
        return zzinVar;
    }

    @Override // com.google.android.recaptcha.internal.zzkf
    public final /* synthetic */ zzke zzY() {
        return (zzit) zzh(6, null, null);
    }

    @Override // com.google.android.recaptcha.internal.zzgf
    final int zza(zzkr zzkrVar) {
        if (zzG()) {
            int iZza = zzkrVar.zza(this);
            if (iZza >= 0) {
                return iZza;
            }
            throw new IllegalStateException("serialized size must be non-negative, was " + iZza);
        }
        int i = this.zzd & Integer.MAX_VALUE;
        if (i != Integer.MAX_VALUE) {
            return i;
        }
        int iZza2 = zzkrVar.zza(this);
        if (iZza2 >= 0) {
            this.zzd = (this.zzd & Integer.MIN_VALUE) | iZza2;
            return iZza2;
        }
        throw new IllegalStateException("serialized size must be non-negative, was " + iZza2);
    }

    @Override // com.google.android.recaptcha.internal.zzke
    public final void zze(zzhh zzhhVar) {
        zzkn.zza().zzb(getClass()).zzj(this, zzhi.zza(zzhhVar));
    }

    protected abstract Object zzh(int i, Object obj, Object obj2);

    final int zzm() {
        return zzkn.zza().zzb(getClass()).zzb(this);
    }

    @Override // com.google.android.recaptcha.internal.zzkf
    public final boolean zzo() {
        return zzF(this, true);
    }

    protected final zzin zzp() {
        return (zzin) zzh(5, null, null);
    }

    final zzit zzs() {
        return (zzit) zzh(4, null, null);
    }

    @Override // com.google.android.recaptcha.internal.zzke
    public final int zzn() {
        if (zzG()) {
            int iZzf = zzf(null);
            if (iZzf >= 0) {
                return iZzf;
            }
            throw new IllegalStateException("serialized size must be non-negative, was " + iZzf);
        }
        int i = this.zzd & Integer.MAX_VALUE;
        if (i != Integer.MAX_VALUE) {
            return i;
        }
        int iZzf2 = zzf(null);
        if (iZzf2 >= 0) {
            this.zzd = (this.zzd & Integer.MIN_VALUE) | iZzf2;
            return iZzf2;
        }
        throw new IllegalStateException("serialized size must be non-negative, was " + iZzf2);
    }
}
