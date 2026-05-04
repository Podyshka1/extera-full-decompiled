package com.google.android.gms.internal.vision;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import p022j$.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzjb extends zzhf {
    private static Map<Object, zzjb> zzd = new ConcurrentHashMap();
    protected zzlx zzb = zzlx.zza();
    private int zzc = -1;

    protected static class zza extends zzhg {
        private final zzjb zza;

        public zza(zzjb zzjbVar) {
            this.zza = zzjbVar;
        }
    }

    public static class zze extends zzim {
    }

    public enum zzg {
        public static final int zza = 1;
        public static final int zzb = 2;
        public static final int zzc = 3;
        public static final int zzd = 4;
        public static final int zze = 5;
        public static final int zzf = 6;
        public static final int zzg = 7;
        private static final /* synthetic */ int[] zzh = {1, 2, 3, 4, 5, 6, 7};

        public static int[] zza() {
            return (int[]) zzh.clone();
        }
    }

    protected abstract Object zza(int i, Object obj, Object obj2);

    public String toString() {
        return zzkp.zza(this, super.toString());
    }

    public int hashCode() {
        int i = this.zza;
        if (i != 0) {
            return i;
        }
        int iZza = zzky.zza().zza(this).zza(this);
        this.zza = iZza;
        return iZza;
    }

    public static abstract class zzb extends zzhe {
        protected zzjb zza;
        protected boolean zzb = false;
        private final zzjb zzc;

        protected zzb(zzjb zzjbVar) {
            this.zzc = zzjbVar;
            this.zza = (zzjb) zzjbVar.zza(zzg.zzd, (Object) null, (Object) null);
        }

        protected void zzb() {
            zzjb zzjbVar = (zzjb) this.zza.zza(zzg.zzd, (Object) null, (Object) null);
            zza(zzjbVar, this.zza);
            this.zza = zzjbVar;
        }

        @Override // com.google.android.gms.internal.vision.zzkn
        /* JADX INFO: renamed from: zzc, reason: merged with bridge method [inline-methods] */
        public zzjb zze() {
            if (this.zzb) {
                return this.zza;
            }
            zzjb zzjbVar = this.zza;
            zzky.zza().zza(zzjbVar).zzc(zzjbVar);
            this.zzb = true;
            return this.zza;
        }

        /* JADX INFO: renamed from: zzd, reason: merged with bridge method [inline-methods] */
        public final zzjb zzf() {
            zzjb zzjbVar = (zzjb) zze();
            if (zzjbVar.zzk()) {
                return zzjbVar;
            }
            throw new zzlv(zzjbVar);
        }

        @Override // com.google.android.gms.internal.vision.zzhe
        public final zzb zza(zzjb zzjbVar) {
            if (this.zzb) {
                zzb();
                this.zzb = false;
            }
            zza(this.zza, zzjbVar);
            return this;
        }

        private static void zza(zzjb zzjbVar, zzjb zzjbVar2) {
            zzky.zza().zza(zzjbVar).zzb(zzjbVar, zzjbVar2);
        }

        private final zzb zzb(byte[] bArr, int i, int i2, zzio zzioVar) throws zzjk {
            if (this.zzb) {
                zzb();
                this.zzb = false;
            }
            try {
                zzky.zza().zza(this.zza).zza(this.zza, bArr, 0, i2, new zzhn(zzioVar));
                return this;
            } catch (zzjk e) {
                throw e;
            } catch (IOException e2) {
                throw new RuntimeException("Reading from byte array should not throw IOException.", e2);
            } catch (IndexOutOfBoundsException unused) {
                throw zzjk.zza();
            }
        }

        @Override // com.google.android.gms.internal.vision.zzhe
        public final /* synthetic */ zzhe zza(byte[] bArr, int i, int i2, zzio zzioVar) {
            return zzb(bArr, 0, i2, zzioVar);
        }

        @Override // com.google.android.gms.internal.vision.zzkm
        public final /* synthetic */ zzkk zzr() {
            return this.zzc;
        }

        public /* synthetic */ Object clone() {
            zzb zzbVar = (zzb) this.zzc.zza(zzg.zze, (Object) null, (Object) null);
            zzbVar.zza((zzjb) zze());
            return zzbVar;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return zzky.zza().zza(this).zza(this, (zzjb) obj);
        }
        return false;
    }

    protected final zzb zzj() {
        return (zzb) zza(zzg.zze, (Object) null, (Object) null);
    }

    public final boolean zzk() {
        return zza(this, true);
    }

    @Override // com.google.android.gms.internal.vision.zzhf
    final int zzi() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.vision.zzhf
    final void zzb(int i) {
        this.zzc = i;
    }

    @Override // com.google.android.gms.internal.vision.zzkk
    public final void zza(zzii zziiVar) {
        zzky.zza().zza(this).zza((Object) this, (zzmr) zzil.zza(zziiVar));
    }

    @Override // com.google.android.gms.internal.vision.zzkk
    public final int zzm() {
        if (this.zzc == -1) {
            this.zzc = zzky.zza().zza(this).zzb(this);
        }
        return this.zzc;
    }

    static zzjb zza(Class cls) {
        zzjb zzjbVar = zzd.get(cls);
        if (zzjbVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzjbVar = zzd.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        if (zzjbVar != null) {
            return zzjbVar;
        }
        zzjb zzjbVar2 = (zzjb) ((zzjb) zzma.zza(cls)).zza(zzg.zzf, (Object) null, (Object) null);
        if (zzjbVar2 == null) {
            throw new IllegalStateException();
        }
        zzd.put(cls, zzjbVar2);
        return zzjbVar2;
    }

    protected static void zza(Class cls, zzjb zzjbVar) {
        zzd.put(cls, zzjbVar);
    }

    protected static Object zza(zzkk zzkkVar, String str, Object[] objArr) {
        return new zzla(zzkkVar, str, objArr);
    }

    static Object zza(Method method, Object obj, Object... objArr) {
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

    protected static final boolean zza(zzjb zzjbVar, boolean z) {
        byte bByteValue = ((Byte) zzjbVar.zza(zzg.zza, (Object) null, (Object) null)).byteValue();
        if (bByteValue == 1) {
            return true;
        }
        if (bByteValue == 0) {
            return false;
        }
        boolean zZzd = zzky.zza().zza(zzjbVar).zzd(zzjbVar);
        if (z) {
            zzjbVar.zza(zzg.zzb, zZzd ? zzjbVar : null, (Object) null);
        }
        return zZzd;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.vision.zzjd, com.google.android.gms.internal.vision.zzjj] */
    protected static zzjj zzn() {
        return zzjd.zzd();
    }

    protected static zzjl zzo() {
        return zzlb.zzd();
    }

    protected static zzjl zza(zzjl zzjlVar) {
        int size = zzjlVar.size();
        return zzjlVar.zza(size == 0 ? 10 : size << 1);
    }

    @Override // com.google.android.gms.internal.vision.zzkk
    public final /* synthetic */ zzkn zzp() {
        zzb zzbVar = (zzb) zza(zzg.zze, (Object) null, (Object) null);
        zzbVar.zza(this);
        return zzbVar;
    }

    @Override // com.google.android.gms.internal.vision.zzkk
    public final /* synthetic */ zzkn zzq() {
        return (zzb) zza(zzg.zze, (Object) null, (Object) null);
    }

    @Override // com.google.android.gms.internal.vision.zzkm
    public final /* synthetic */ zzkk zzr() {
        return (zzjb) zza(zzg.zzf, (Object) null, (Object) null);
    }
}
