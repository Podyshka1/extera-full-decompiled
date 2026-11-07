package com.google.android.gms.internal.mlkit_genai_prompt;

import com.google.android.gms.internal.mlkit_genai_prompt.zzawu;
import com.google.android.gms.internal.mlkit_genai_prompt.zzawy;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.mvel2.asm.Constants$$ExternalSyntheticBUOutline0;
import org.mvel2.asm.MethodWriter$$ExternalSyntheticBUOutline0;
import org.mvel2.util.Make$Map$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzawy<MessageType extends zzawy<MessageType, BuilderType>, BuilderType extends zzawu<MessageType, BuilderType>> extends zzavo<MessageType, BuilderType> {
    private static final Map zzd = new ConcurrentHashMap();
    private int zzb = -1;
    protected zzayr zzc = zzayr.zza();

    public static zzawy zzM(Class cls) {
        Map map = zzd;
        zzawy zzawyVar = (zzawy) map.get(cls);
        if (zzawyVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzawyVar = (zzawy) map.get(cls);
            } catch (ClassNotFoundException e) {
                Constants$$ExternalSyntheticBUOutline0.m958m("Class initialization cannot fail.", e);
                return null;
            }
        }
        if (zzawyVar != null) {
            return zzawyVar;
        }
        zzawy zzawyVar2 = (zzawy) ((zzawy) zzayx.zza(cls)).zzb(6, null, null);
        if (zzawyVar2 != null) {
            map.put(cls, zzawyVar2);
            return zzawyVar2;
        }
        MethodWriter$$ExternalSyntheticBUOutline0.m959m();
        return null;
    }

    public static void zzN(Class cls, zzawy zzawyVar) {
        zzawyVar.zzF();
        zzd.put(cls, zzawyVar);
    }

    public static Object zzO(zzaxw zzaxwVar, String str, Object[] objArr) {
        return new zzayf(zzaxwVar, str, objArr);
    }

    public static Object zzP(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e) {
            Make$Map$$ExternalSyntheticBUOutline0.m973m("Couldn't use Java reflection to implement protocol message reflection.", e);
            return null;
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            Make$Map$$ExternalSyntheticBUOutline0.m973m("Unexpected exception thrown by generated accessor method.", cause);
            return null;
        }
    }

    public static zzaxh zzQ() {
        return zzaye.zzd();
    }

    public static zzawy zzR(zzawy zzawyVar, byte[] bArr, zzawl zzawlVar) throws zzaxm {
        zzawy zzawyVarZzc = zzc(zzawyVar, bArr, 0, bArr.length, zzawlVar);
        if (zzawyVarZzc == null || zza(zzawyVarZzc, true)) {
            return zzawyVarZzc;
        }
        throw new zzayp(zzawyVarZzc).zza();
    }

    private static final boolean zza(zzawy zzawyVar, boolean z) {
        byte bByteValue = ((Byte) zzawyVar.zzb(1, null, null)).byteValue();
        if (bByteValue == 1) {
            return true;
        }
        if (bByteValue == 0) {
            return false;
        }
        boolean zZzi = zzayd.zza().zzb(zzawyVar.getClass()).zzi(zzawyVar);
        if (z) {
            zzawyVar.zzb(2, true != zZzi ? null : zzawyVar, null);
        }
        return zZzi;
    }

    private static zzawy zzc(zzawy zzawyVar, byte[] bArr, int i, int i2, zzawl zzawlVar) throws zzaxm {
        if (i2 == 0) {
            return zzawyVar;
        }
        zzawy zzawyVarZzG = zzawyVar.zzG();
        try {
            zzayg zzaygVarZzb = zzayd.zza().zzb(zzawyVarZzG.getClass());
            zzaygVarZzb.zzg(zzawyVarZzG, bArr, 0, i2, new zzavr(zzawlVar));
            zzaygVarZzb.zzh(zzawyVarZzG);
            return zzawyVarZzG;
        } catch (zzaxm e) {
            throw e;
        } catch (zzayp e2) {
            throw e2.zza();
        } catch (IOException e3) {
            if (e3.getCause() instanceof zzaxm) {
                throw ((zzaxm) e3.getCause());
            }
            throw new zzaxm(e3);
        } catch (IndexOutOfBoundsException unused) {
            zzavs$$ExternalSyntheticBUOutline0.m328m("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            return null;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return zzayd.zza().zzb(getClass()).zzb(this, (zzawy) obj);
    }

    public final int hashCode() {
        if (zzE()) {
            return zzH();
        }
        int i = this.zza;
        if (i != 0) {
            return i;
        }
        int iZzH = zzH();
        this.zza = iZzH;
        return iZzH;
    }

    public final String toString() {
        return zzaxy.zza(this, super.toString());
    }

    public final boolean zzE() {
        return (this.zzb & Integer.MIN_VALUE) != 0;
    }

    public final void zzF() {
        this.zzb &= Integer.MAX_VALUE;
    }

    public final zzawy zzG() {
        return (zzawy) zzb(4, null, null);
    }

    public final int zzH() {
        return zzayd.zza().zzb(getClass()).zzc(this);
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzaxx
    public final /* synthetic */ zzaxw zzI() {
        return (zzawy) zzb(6, null, null);
    }

    public final void zzJ() {
        zzayd.zza().zzb(getClass()).zzh(this);
        zzF();
    }

    public final zzawu zzK() {
        zzawu zzawuVar = (zzawu) zzb(5, null, null);
        zzawuVar.zzG(this);
        return zzawuVar;
    }

    public final void zzL(int i) {
        this.zzb = (this.zzb & Integer.MIN_VALUE) | Integer.MAX_VALUE;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzaxw
    public final /* synthetic */ zzaxv zzS() {
        return (zzawu) zzb(5, null, null);
    }

    public abstract Object zzb(int i, Object obj, Object obj2);
}
