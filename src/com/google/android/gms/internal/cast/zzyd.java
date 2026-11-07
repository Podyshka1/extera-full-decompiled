package com.google.android.gms.internal.cast;

import com.google.android.gms.internal.cast.zzya;
import com.google.android.gms.internal.cast.zzyd;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.mvel2.asm.Constants$$ExternalSyntheticBUOutline0;
import org.mvel2.asm.MethodWriter$$ExternalSyntheticBUOutline0;
import org.mvel2.util.Make$Map$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzyd<MessageType extends zzyd<MessageType, BuilderType>, BuilderType extends zzya<MessageType, BuilderType>> extends zzwz<MessageType, BuilderType> {
    private static final Map zzd = new ConcurrentHashMap();
    private int zzb = -1;
    protected zzaae zzc = zzaae.zza();

    public static zzyd zzF(Class cls) {
        Map map = zzd;
        zzyd zzydVar = (zzyd) map.get(cls);
        if (zzydVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzydVar = (zzyd) map.get(cls);
            } catch (ClassNotFoundException e) {
                Constants$$ExternalSyntheticBUOutline0.m1006m("Class initialization cannot fail.", e);
                return null;
            }
        }
        if (zzydVar != null) {
            return zzydVar;
        }
        zzyd zzydVar2 = (zzyd) ((zzyd) zzaak.zzc(cls)).zzb(6, null, null);
        if (zzydVar2 != null) {
            map.put(cls, zzydVar2);
            return zzydVar2;
        }
        MethodWriter$$ExternalSyntheticBUOutline0.m1007m();
        return null;
    }

    public static void zzG(Class cls, zzyd zzydVar) {
        zzydVar.zzw();
        zzd.put(cls, zzydVar);
    }

    public static Object zzH(zzzi zzziVar, String str, Object[] objArr) {
        return new zzzr(zzziVar, str, objArr);
    }

    public static Object zzI(Method method, Object obj, Object... objArr) {
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

    public static zzyj zzJ() {
        return zzye.zzd();
    }

    public static zzyk zzK() {
        return zzyx.zzd();
    }

    public static zzyi zzL() {
        return zzxy.zzd();
    }

    public static zzyl zzM() {
        return zzzq.zzd();
    }

    public static zzyl zzN(zzyl zzylVar) {
        int size = zzylVar.size();
        return zzylVar.zzf(size + size);
    }

    private final int zza(zzzs zzzsVar) {
        return zzzp.zza().zzb(getClass()).zze(this);
    }

    private static final boolean zzc(zzyd zzydVar, boolean z) {
        byte bByteValue = ((Byte) zzydVar.zzb(1, null, null)).byteValue();
        if (bByteValue == 1) {
            return true;
        }
        if (bByteValue == 0) {
            return false;
        }
        boolean zZzh = zzzp.zza().zzb(zzydVar.getClass()).zzh(zzydVar);
        if (z) {
            zzydVar.zzb(2, true != zZzh ? null : zzydVar, null);
        }
        return zZzh;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return zzzp.zza().zzb(getClass()).zzb(this, (zzyd) obj);
    }

    public final int hashCode() {
        if (zzv()) {
            return zzz();
        }
        int i = this.zza;
        if (i != 0) {
            return i;
        }
        int iZzz = zzz();
        this.zza = iZzz;
        return iZzz;
    }

    public final String toString() {
        return zzzk.zza(this, super.toString());
    }

    public final void zzA() {
        zzzp.zza().zzb(getClass()).zzg(this);
        zzw();
    }

    public final zzya zzB() {
        return (zzya) zzb(5, null, null);
    }

    public final void zzC(int i) {
        this.zzb = (this.zzb & Integer.MIN_VALUE) | Integer.MAX_VALUE;
    }

    @Override // com.google.android.gms.internal.cast.zzzi
    public final void zzD(zzxp zzxpVar) {
        zzzp.zza().zzb(getClass()).zzf(this, zzxq.zza(zzxpVar));
    }

    @Override // com.google.android.gms.internal.cast.zzzi
    public final /* synthetic */ zzzh zzO() {
        return (zzya) zzb(5, null, null);
    }

    public abstract Object zzb(int i, Object obj, Object obj2);

    public final boolean zzr() {
        return zzc(this, true);
    }

    @Override // com.google.android.gms.internal.cast.zzwz
    public final int zzt(zzzs zzzsVar) {
        if (zzv()) {
            int iZze = zzzsVar.zze(this);
            if (iZze >= 0) {
                return iZze;
            }
            zzyd$$ExternalSyntheticBUOutline0.m341m(String.valueOf(iZze).length() + 42, iZze);
            return 0;
        }
        int i = this.zzb & Integer.MAX_VALUE;
        if (i != Integer.MAX_VALUE) {
            return i;
        }
        int iZze2 = zzzsVar.zze(this);
        if (iZze2 >= 0) {
            this.zzb = (this.zzb & Integer.MIN_VALUE) | iZze2;
            return iZze2;
        }
        zzyd$$ExternalSyntheticBUOutline0.m341m(String.valueOf(iZze2).length() + 42, iZze2);
        return 0;
    }

    public final boolean zzv() {
        return (this.zzb & Integer.MIN_VALUE) != 0;
    }

    public final void zzw() {
        this.zzb &= Integer.MAX_VALUE;
    }

    @Override // com.google.android.gms.internal.cast.zzzj
    public final /* synthetic */ zzzi zzx() {
        return (zzyd) zzb(6, null, null);
    }

    public final zzyd zzy() {
        return (zzyd) zzb(4, null, null);
    }

    public final int zzz() {
        return zzzp.zza().zzb(getClass()).zzc(this);
    }

    @Override // com.google.android.gms.internal.cast.zzzi
    public final int zzE() {
        if (zzv()) {
            int iZza = zza(null);
            if (iZza >= 0) {
                return iZza;
            }
            zzyd$$ExternalSyntheticBUOutline0.m341m(String.valueOf(iZza).length() + 42, iZza);
            return 0;
        }
        int i = this.zzb & Integer.MAX_VALUE;
        if (i != Integer.MAX_VALUE) {
            return i;
        }
        int iZza2 = zza(null);
        if (iZza2 >= 0) {
            this.zzb = (this.zzb & Integer.MIN_VALUE) | iZza2;
            return iZza2;
        }
        zzyd$$ExternalSyntheticBUOutline0.m341m(String.valueOf(iZza2).length() + 42, iZza2);
        return 0;
    }
}
