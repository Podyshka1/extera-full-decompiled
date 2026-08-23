package com.google.android.recaptcha.internal;

import android.content.Context;
import java.util.Locale;
import java.util.MissingResourceException;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzbf {
    public static final zzbe zza = new zzbe(null);
    private static zzmo zzb;
    private final String zzc;
    private final zzac zzd;
    private final zznc zze;
    private final long zzf;

    public zzbf(zzbb zzbbVar, String str, zzac zzacVar) {
        this.zzc = str;
        this.zzd = zzacVar;
        zznc zzncVarZzi = zznf.zzi();
        this.zze = zzncVarZzi;
        this.zzf = System.currentTimeMillis();
        zzncVarZzi.zzp(zzbbVar.zza());
        zzncVarZzi.zzd(zzbbVar.zzb());
        zzncVarZzi.zzr(zzbbVar.zzc());
        if (zzbbVar.zzd() != null) {
            zzncVarZzi.zzu(zzbbVar.zzd());
        }
        zzncVarZzi.zzt(zzmg.zzc(zzmg.zzb(System.currentTimeMillis())));
    }

    /* JADX WARN: Path cross not found for [B:6:0x000c, B:10:0x002d], limit reached: 29 */
    /* JADX WARN: Removed duplicated region for block: B:16:0x004c A[Catch: NameNotFoundException -> 0x0093, TryCatch #1 {NameNotFoundException -> 0x0093, blocks: (B:14:0x0048, B:16:0x004c, B:19:0x006c, B:20:0x0081), top: B:27:0x0048 }] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0067  */
    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:24:0x0026
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1182)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static final com.google.android.recaptcha.internal.zzmo zzb(android.content.Context r8) {
        /*
            java.lang.String r0 = "unknown"
            r1 = 33
            int r2 = android.os.Build.VERSION.SDK_INT     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L26
            java.lang.String r3 = "com.google.android.gms.version"
            r4 = -1
            if (r2 < r1) goto L2d
            android.content.pm.PackageManager r2 = r8.getPackageManager()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L26
            java.lang.String r5 = r8.getPackageName()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L26
            r6 = 128(0x80, double:6.3E-322)
            android.content.pm.PackageManager$ApplicationInfoFlags r6 = android.content.pm.PackageManager.ApplicationInfoFlags.of(r6)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L26
            android.content.pm.ApplicationInfo r2 = r2.getApplicationInfo(r5, r6)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L26
            android.os.Bundle r2 = r2.metaData     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L26
            int r2 = r2.getInt(r3, r4)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L26
            if (r2 != r4) goto L28
        L26:
            r2 = r0
            goto L48
        L28:
            java.lang.String r2 = java.lang.String.valueOf(r2)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L26
            goto L48
        L2d:
            android.content.pm.PackageManager r2 = r8.getPackageManager()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L26
            java.lang.String r5 = r8.getPackageName()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L26
            r6 = 128(0x80, float:1.8E-43)
            android.content.pm.ApplicationInfo r2 = r2.getApplicationInfo(r5, r6)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L26
            android.os.Bundle r2 = r2.metaData     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L26
            int r2 = r2.getInt(r3, r4)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L26
            if (r2 != r4) goto L44
            goto L26
        L44:
            java.lang.String r2 = java.lang.String.valueOf(r2)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L26
        L48:
            int r3 = android.os.Build.VERSION.SDK_INT     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L93
            if (r3 < r1) goto L67
            android.content.pm.PackageManager r1 = r8.getPackageManager()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L93
            java.lang.String r8 = r8.getPackageName()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L93
            r3 = 0
            android.content.pm.PackageManager$PackageInfoFlags r3 = android.content.pm.PackageManager.PackageInfoFlags.of(r3)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L93
            android.content.pm.PackageInfo r8 = r1.getPackageInfo(r8, r3)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L93
            long r3 = r8.getLongVersionCode()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L93
            java.lang.String r0 = java.lang.String.valueOf(r3)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L93
            goto L93
        L67:
            r1 = 28
            r4 = 0
            if (r3 < r1) goto L81
            android.content.pm.PackageManager r1 = r8.getPackageManager()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L93
            java.lang.String r8 = r8.getPackageName()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L93
            android.content.pm.PackageInfo r8 = r1.getPackageInfo(r8, r4)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L93
            long r3 = r8.getLongVersionCode()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L93
            java.lang.String r0 = java.lang.String.valueOf(r3)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L93
            goto L93
        L81:
            android.content.pm.PackageManager r1 = r8.getPackageManager()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L93
            java.lang.String r8 = r8.getPackageName()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L93
            android.content.pm.PackageInfo r8 = r1.getPackageInfo(r8, r4)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L93
            int r8 = r8.versionCode     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L93
            java.lang.String r0 = java.lang.String.valueOf(r8)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L93
        L93:
            com.google.android.recaptcha.internal.zzmn r8 = com.google.android.recaptcha.internal.zzmo.zzf()
            int r1 = android.os.Build.VERSION.SDK_INT
            r8.zzd(r1)
            r8.zzq(r2)
            java.lang.String r1 = "18.4.0"
            r8.zzs(r1)
            java.lang.String r1 = android.os.Build.MODEL
            r8.zzp(r1)
            java.lang.String r1 = android.os.Build.MANUFACTURER
            r8.zzr(r1)
            r8.zze(r0)
            com.google.android.recaptcha.internal.zzit r8 = r8.zzj()
            com.google.android.recaptcha.internal.zzmo r8 = (com.google.android.recaptcha.internal.zzmo) r8
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.recaptcha.internal.zzbf.zzb(android.content.Context):com.google.android.recaptcha.internal.zzmo");
    }

    public final zznf zza(int i, zzmr zzmrVar, Context context) {
        String iSO3Language;
        String iSO3Country = _UrlKt.FRAGMENT_ENCODE_SET;
        long jCurrentTimeMillis = System.currentTimeMillis() - this.zzf;
        zznc zzncVar = this.zze;
        zzncVar.zze(jCurrentTimeMillis);
        zzncVar.zzv(i);
        if (zzmrVar != null) {
            this.zze.zzq(zzmrVar);
        }
        if (zzb == null) {
            zzb = zzb(context);
        }
        try {
            iSO3Language = Locale.getDefault().getISO3Language();
        } catch (MissingResourceException unused) {
            iSO3Language = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        try {
            iSO3Country = Locale.getDefault().getISO3Country();
        } catch (MissingResourceException unused2) {
        }
        zznc zzncVar2 = this.zze;
        String str = this.zzc;
        zznq zznqVarZzf = zznr.zzf();
        zznqVarZzf.zzq(str);
        zzmo zzmoVarZzb = zzb;
        if (zzmoVarZzb == null) {
            zzmoVarZzb = zzb(context);
        }
        zznqVarZzf.zzd(zzmoVarZzb);
        zznqVarZzf.zzp(iSO3Language);
        zznqVarZzf.zze(iSO3Country);
        zzncVar2.zzs((zznr) zznqVarZzf.zzj());
        return (zznf) this.zze.zzj();
    }
}
