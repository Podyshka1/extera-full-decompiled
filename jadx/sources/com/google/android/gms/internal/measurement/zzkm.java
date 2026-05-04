package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.net.Uri;
import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzkm {
    public static final /* synthetic */ int $r8$clinit = 0;
    private static final Object zzd = new Object();
    private static volatile zzkh zze;
    private static final AtomicInteger zzh;
    final zzkg zza;
    final String zzb;
    private Object zzg;
    private volatile int zzi = -1;
    private volatile Object zzj;
    private volatile boolean zzk;

    static {
        new AtomicReference();
        Preconditions.checkNotNull(zzkk.zza, "BuildInfo must be non-null");
        zzh = new AtomicInteger();
    }

    /* synthetic */ zzkm(zzkg zzkgVar, String str, Object obj, boolean z, byte[] bArr) {
        if (zzkgVar.zza == null) {
            throw new IllegalArgumentException("Must pass a valid SharedPreferences file name or ContentProvider URI");
        }
        this.zza = zzkgVar;
        this.zzb = str;
        this.zzg = obj;
        this.zzk = false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0047, code lost:
    
        r3 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x004c, code lost:
    
        throw r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void zzb(final Context context) {
        if (zze != null || context == null) {
            return;
        }
        Object obj = zzd;
        synchronized (obj) {
            try {
                if (zze == null) {
                    synchronized (obj) {
                        zzkh zzkhVar = zze;
                        Context applicationContext = context.getApplicationContext();
                        if (applicationContext != null) {
                            context = applicationContext;
                        }
                        if (zzkhVar == null || zzkhVar.zza() != context) {
                            if (zzkhVar != null) {
                                zzjr.zzd();
                                zzko.zzb();
                                zzjy.zzc();
                            }
                            zze = new zzjn(context, Suppliers.memoize(new Supplier() { // from class: com.google.android.gms.internal.measurement.zzkl
                                @Override // com.google.common.base.Supplier
                                public final /* synthetic */ Object get() {
                                    int i = zzkm.$r8$clinit;
                                    return zzjz.zza(context);
                                }
                            }));
                            zzh.incrementAndGet();
                        }
                    }
                }
            } finally {
            }
        }
    }

    public static void zzc() {
        zzh.incrementAndGet();
    }

    abstract Object zza(Object obj);

    /* JADX WARN: Removed duplicated region for block: B:16:0x004a A[PHI: r2
  0x004a: PHI (r2v1 com.google.common.base.Optional) = (r2v0 com.google.common.base.Optional), (r2v0 com.google.common.base.Optional), (r2v7 com.google.common.base.Optional) binds: [B:8:0x0016, B:10:0x001c, B:12:0x0032] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005b A[Catch: all -> 0x0047, TryCatch #0 {all -> 0x0047, blocks: (B:5:0x000b, B:7:0x000f, B:9:0x0018, B:11:0x001e, B:13:0x0034, B:20:0x0050, B:22:0x005b, B:24:0x0065, B:28:0x0088, B:30:0x0090, B:42:0x00b7, B:45:0x00bf, B:46:0x00c2, B:47:0x00c6, B:34:0x0099, B:36:0x009d, B:38:0x00ad, B:40:0x00b3, B:26:0x0076, B:48:0x00ca), top: B:54:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0076 A[Catch: all -> 0x0047, TryCatch #0 {all -> 0x0047, blocks: (B:5:0x000b, B:7:0x000f, B:9:0x0018, B:11:0x001e, B:13:0x0034, B:20:0x0050, B:22:0x005b, B:24:0x0065, B:28:0x0088, B:30:0x0090, B:42:0x00b7, B:45:0x00bf, B:46:0x00c2, B:47:0x00c6, B:34:0x0099, B:36:0x009d, B:38:0x00ad, B:40:0x00b3, B:26:0x0076, B:48:0x00ca), top: B:54:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0099 A[Catch: all -> 0x0047, TryCatch #0 {all -> 0x0047, blocks: (B:5:0x000b, B:7:0x000f, B:9:0x0018, B:11:0x001e, B:13:0x0034, B:20:0x0050, B:22:0x005b, B:24:0x0065, B:28:0x0088, B:30:0x0090, B:42:0x00b7, B:45:0x00bf, B:46:0x00c2, B:47:0x00c6, B:34:0x0099, B:36:0x009d, B:38:0x00ad, B:40:0x00b3, B:26:0x0076, B:48:0x00ca), top: B:54:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00bd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object zzd() {
        String strZza;
        Object objZza;
        String strZzb;
        Object objZze;
        int i = zzh.get();
        if (this.zzi < i) {
            synchronized (this) {
                try {
                    if (this.zzi < i) {
                        zzkh zzkhVar = zze;
                        Optional optionalAbsent = Optional.absent();
                        Object objZza2 = null;
                        if (zzkhVar == null || zzkhVar.zzb() == null) {
                            strZza = null;
                            Preconditions.checkState(zzkhVar == null, "Must call PhenotypeFlagInitializer.maybeInit() first");
                            zzkg zzkgVar = this.zza;
                            Uri uri = zzkgVar.zza;
                            zzjv zzjvVarZza = uri == null ? zzka.zza(zzkhVar.zza(), uri) ? zzjr.zza(zzkhVar.zza().getContentResolver(), uri, zzkj.zza) : null : zzko.zza(zzkhVar.zza(), (String) Preconditions.checkNotNull(null), zzki.zza);
                            objZza = (zzjvVarZza != null || (objZze = zzjvVarZza.zze(this.zzb)) == null) ? null : zza(objZze);
                            if (objZza == null) {
                                if (!zzkgVar.zzd && (strZzb = zzjy.zza(zzkhVar.zza()).zze(this.zzb)) != null) {
                                    objZza2 = zza(strZzb);
                                }
                                objZza = objZza2 == null ? this.zzg : objZza2;
                            }
                            if (optionalAbsent.isPresent()) {
                                objZza = strZza == null ? this.zzg : zza(strZza);
                            }
                            this.zzj = objZza;
                            this.zzi = i;
                        } else {
                            optionalAbsent = (Optional) ((Supplier) Preconditions.checkNotNull(zzkhVar.zzb())).get();
                            if (optionalAbsent.isPresent()) {
                                zzjt zzjtVar = (zzjt) optionalAbsent.get();
                                zzkg zzkgVar2 = this.zza;
                                strZza = zzjtVar.zza(zzkgVar2.zza, null, zzkgVar2.zzc, this.zzb);
                            }
                            Preconditions.checkState(zzkhVar == null, "Must call PhenotypeFlagInitializer.maybeInit() first");
                            zzkg zzkgVar3 = this.zza;
                            Uri uri2 = zzkgVar3.zza;
                            if (uri2 == null) {
                            }
                            if (zzjvVarZza != null) {
                                if (objZza == null) {
                                }
                                if (optionalAbsent.isPresent()) {
                                }
                                this.zzj = objZza;
                                this.zzi = i;
                            }
                        }
                    }
                } finally {
                }
            }
        }
        return this.zzj;
    }
}
