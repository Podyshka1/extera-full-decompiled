package com.google.android.recaptcha.internal;

import com.google.android.gms.internal.cast.zzyd$$ExternalSyntheticBUOutline0;
import com.google.android.recaptcha.internal.zzafq;
import com.google.android.recaptcha.internal.zzafv;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.mvel2.asm.Constants$$ExternalSyntheticBUOutline0;
import org.mvel2.asm.MethodWriter$$ExternalSyntheticBUOutline0;
import org.mvel2.util.Make$Map$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzafv<MessageType extends zzafv<MessageType, BuilderType>, BuilderType extends zzafq<MessageType, BuilderType>> extends zzaec<MessageType, BuilderType> {
    private static final Map zzd = new ConcurrentHashMap();
    private int zza = -1;
    protected zzaia zzc = zzaia.zza();

    public static zzafv zzK(Class cls) {
        Map map = zzd;
        zzafv zzafvVar = (zzafv) map.get(cls);
        if (zzafvVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzafvVar = (zzafv) map.get(cls);
            } catch (ClassNotFoundException e) {
                Constants$$ExternalSyntheticBUOutline0.m1006m("Class initialization cannot fail.", e);
                return null;
            }
        }
        if (zzafvVar != null) {
            return zzafvVar;
        }
        zzafv zzafvVar2 = (zzafv) ((zzafv) zzaig.zza(cls)).zzf(6, null, null);
        if (zzafvVar2 != null) {
            map.put(cls, zzafvVar2);
            return zzafvVar2;
        }
        MethodWriter$$ExternalSyntheticBUOutline0.m1007m();
        return null;
    }

    public static void zzL(Class cls, zzafv zzafvVar) {
        zzafvVar.zzA();
        zzd.put(cls, zzafvVar);
    }

    public static Object zzM(zzagx zzagxVar, String str, Object[] objArr) {
        return new zzahi(zzagxVar, str, objArr);
    }

    public static Object zzN(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e) {
            Make$Map$$ExternalSyntheticBUOutline0.m1021m("Couldn't use Java reflection to implement protocol message reflection.", e);
            return null;
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            Make$Map$$ExternalSyntheticBUOutline0.m1021m("Unexpected exception thrown by generated accessor method.", cause);
            return null;
        }
    }

    public static zzagc zzO() {
        return zzafw.zzd();
    }

    public static zzagc zzP(zzagc zzagcVar) {
        int size = zzagcVar.size();
        return zzagcVar.zzg(size + size);
    }

    public static zzagd zzQ() {
        return zzagq.zzd();
    }

    public static zzage zzR() {
        return zzahh.zzd();
    }

    public static zzage zzS(zzage zzageVar) {
        int size = zzageVar.size();
        return zzageVar.zzg(size + size);
    }

    public static zzafv zzT(zzafv zzafvVar, zzaer zzaerVar) throws zzagk {
        zzafh zzafhVar = zzafh.zza;
        int i = zzaef.$r8$clinit;
        zzafh zzafhVar2 = zzafh.zza;
        zzaev zzaevVarZzl = zzaerVar.zzl();
        zzafv zzafvVarZzC = zzafvVar.zzC();
        try {
            zzahn zzahnVarZzb = zzahg.zza().zzb(zzafvVarZzC.getClass());
            zzahnVarZzb.zzg(zzafvVarZzC, zzaew.zza(zzaevVarZzl), zzafhVar2);
            zzahnVarZzb.zzk(zzafvVarZzC);
            zzaevVarZzl.zzb(0);
            zzd(zzafvVarZzC);
            zzd(zzafvVarZzC);
            return zzafvVarZzC;
        } catch (zzagk e) {
            if (e.zzb()) {
                throw new zzagk(e);
            }
            throw e;
        } catch (zzahy e2) {
            throw e2.zza();
        } catch (IOException e3) {
            if (e3.getCause() instanceof zzagk) {
                throw ((zzagk) e3.getCause());
            }
            throw new zzagk(e3);
        } catch (RuntimeException e4) {
            if (e4.getCause() instanceof zzagk) {
                throw ((zzagk) e4.getCause());
            }
            throw e4;
        }
    }

    public static zzafv zzU(zzafv zzafvVar, zzaer zzaerVar, zzafh zzafhVar) throws zzagk {
        zzaev zzaevVarZzl = zzaerVar.zzl();
        zzafv zzafvVarZzC = zzafvVar.zzC();
        try {
            zzahn zzahnVarZzb = zzahg.zza().zzb(zzafvVarZzC.getClass());
            zzahnVarZzb.zzg(zzafvVarZzC, zzaew.zza(zzaevVarZzl), zzafhVar);
            zzahnVarZzb.zzk(zzafvVarZzC);
            zzaevVarZzl.zzb(0);
            zzd(zzafvVarZzC);
            return zzafvVarZzC;
        } catch (zzagk e) {
            if (e.zzb()) {
                throw new zzagk(e);
            }
            throw e;
        } catch (zzahy e2) {
            throw e2.zza();
        } catch (IOException e3) {
            if (e3.getCause() instanceof zzagk) {
                throw ((zzagk) e3.getCause());
            }
            throw new zzagk(e3);
        } catch (RuntimeException e4) {
            if (e4.getCause() instanceof zzagk) {
                throw ((zzagk) e4.getCause());
            }
            throw e4;
        }
    }

    public static zzafv zzV(zzafv zzafvVar, byte[] bArr) throws zzagk {
        int length = bArr.length;
        zzafh zzafhVar = zzafh.zza;
        int i = zzaef.$r8$clinit;
        zzafv zzafvVarZzc = zzc(zzafvVar, bArr, 0, length, zzafh.zza);
        zzd(zzafvVarZzc);
        return zzafvVarZzc;
    }

    public static zzafv zzW(zzafv zzafvVar, byte[] bArr, zzafh zzafhVar) throws zzagk {
        zzafv zzafvVarZzc = zzc(zzafvVar, bArr, 0, bArr.length, zzafhVar);
        zzd(zzafvVarZzc);
        return zzafvVarZzc;
    }

    private final int zza(zzahn zzahnVar) {
        return zzahg.zza().zzb(getClass()).zze(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean zzb(zzafv zzafvVar, boolean z) {
        byte bByteValue = ((Byte) zzafvVar.zzf(1, null, null)).byteValue();
        if (bByteValue == 1) {
            return true;
        }
        if (bByteValue == 0) {
            return false;
        }
        boolean zZzl = zzahg.zza().zzb(zzafvVar.getClass()).zzl(zzafvVar);
        if (z) {
            zzafvVar.zzf(2, true != zZzl ? null : zzafvVar, null);
        }
        return zZzl;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zzafv zzc(zzafv zzafvVar, byte[] bArr, int i, int i2, zzafh zzafhVar) throws zzagk {
        if (i2 == 0) {
            return zzafvVar;
        }
        zzafv zzafvVarZzC = zzafvVar.zzC();
        try {
            zzahn zzahnVarZzb = zzahg.zza().zzb(zzafvVarZzC.getClass());
            zzahnVarZzb.zzj(zzafvVarZzC, bArr, 0, i2, new zzaeg(zzafhVar));
            zzahnVarZzb.zzk(zzafvVarZzC);
            return zzafvVarZzC;
        } catch (zzagk e) {
            if (e.zzb()) {
                throw new zzagk(e);
            }
            throw e;
        } catch (zzahy e2) {
            throw e2.zza();
        } catch (IOException e3) {
            if (e3.getCause() instanceof zzagk) {
                throw ((zzagk) e3.getCause());
            }
            throw new zzagk(e3);
        } catch (IndexOutOfBoundsException unused) {
            zzaeh$$ExternalSyntheticBUOutline0.m477m("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            return null;
        }
    }

    private static zzafv zzd(zzafv zzafvVar) throws zzagk {
        if (zzafvVar == null || zzb(zzafvVar, true)) {
            return zzafvVar;
        }
        throw new zzahy(zzafvVar).zza();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return zzahg.zza().zzb(getClass()).zzb(this, (zzafv) obj);
    }

    public final int hashCode() {
        if (zzz()) {
            return zzD();
        }
        int i = this.zzb;
        if (i != 0) {
            return i;
        }
        int iZzD = zzD();
        this.zzb = iZzD;
        return iZzD;
    }

    public final String toString() {
        return zzagz.zza(this, super.toString());
    }

    public final void zzA() {
        this.zza &= Integer.MAX_VALUE;
    }

    @Override // com.google.android.recaptcha.internal.zzagx
    public final zzahe zzB() {
        return (zzahe) zzf(7, null, null);
    }

    public final zzafv zzC() {
        return (zzafv) zzf(4, null, null);
    }

    public final int zzD() {
        return zzahg.zza().zzb(getClass()).zzc(this);
    }

    public final void zzE() {
        zzahg.zza().zzb(getClass()).zzk(this);
        zzA();
    }

    public final zzafq zzF() {
        return (zzafq) zzf(5, null, null);
    }

    public final zzafq zzG() {
        zzafq zzafqVar = (zzafq) zzf(5, null, null);
        zzafqVar.zzq(this);
        return zzafqVar;
    }

    public final void zzH(int i) {
        this.zza = (this.zza & Integer.MIN_VALUE) | Integer.MAX_VALUE;
    }

    @Override // com.google.android.recaptcha.internal.zzagx
    public final void zzI(zzafa zzafaVar) {
        zzahg.zza().zzb(getClass()).zzf(this, zzafb.zza(zzafaVar));
    }

    @Override // com.google.android.recaptcha.internal.zzagx
    public final /* synthetic */ zzagw zzX() {
        return (zzafq) zzf(5, null, null);
    }

    @Override // com.google.android.recaptcha.internal.zzagy
    public final boolean zzab() {
        return zzb(this, true);
    }

    @Override // com.google.android.recaptcha.internal.zzagy
    public final /* synthetic */ zzagx zzac() {
        return (zzafv) zzf(6, null, null);
    }

    public abstract Object zzf(int i, Object obj, Object obj2);

    @Override // com.google.android.recaptcha.internal.zzaec
    public final int zzx(zzahn zzahnVar) {
        if (zzz()) {
            int iZze = zzahnVar.zze(this);
            if (iZze >= 0) {
                return iZze;
            }
            zzyd$$ExternalSyntheticBUOutline0.m341m(String.valueOf(iZze).length() + 42, iZze);
            return 0;
        }
        int i = this.zza & Integer.MAX_VALUE;
        if (i != Integer.MAX_VALUE) {
            return i;
        }
        int iZze2 = zzahnVar.zze(this);
        if (iZze2 >= 0) {
            this.zza = (this.zza & Integer.MIN_VALUE) | iZze2;
            return iZze2;
        }
        zzyd$$ExternalSyntheticBUOutline0.m341m(String.valueOf(iZze2).length() + 42, iZze2);
        return 0;
    }

    public final boolean zzz() {
        return (this.zza & Integer.MIN_VALUE) != 0;
    }

    @Override // com.google.android.recaptcha.internal.zzagx
    public final int zzJ() {
        if (zzz()) {
            int iZza = zza(null);
            if (iZza >= 0) {
                return iZza;
            }
            zzyd$$ExternalSyntheticBUOutline0.m341m(String.valueOf(iZza).length() + 42, iZza);
            return 0;
        }
        int i = this.zza & Integer.MAX_VALUE;
        if (i != Integer.MAX_VALUE) {
            return i;
        }
        int iZza2 = zza(null);
        if (iZza2 >= 0) {
            this.zza = (this.zza & Integer.MIN_VALUE) | iZza2;
            return iZza2;
        }
        zzyd$$ExternalSyntheticBUOutline0.m341m(String.valueOf(iZza2).length() + 42, iZza2);
        return 0;
    }
}
