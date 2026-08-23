package com.google.android.gms.measurement.internal;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.wrappers.InstantApps;
import java.math.BigInteger;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzgi extends zzg {
    private String zza;
    private String zzb;
    private int zzc;
    private String zzd;
    private String zze;
    private long zzf;
    private final long zzg;
    private final long zzh;
    private List zzi;
    private String zzj;
    private int zzk;
    private String zzl;
    private String zzm;
    private long zzn;
    private String zzo;

    zzgi(zzic zzicVar, long j, long j2) {
        super(zzicVar);
        this.zzn = 0L;
        this.zzo = null;
        this.zzg = j;
        this.zzh = j2;
    }

    @Override // com.google.android.gms.measurement.internal.zzg
    protected final boolean zze() {
        return true;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(15:0|2|(1:4)(17:79|6|(1:10)(2:11|(1:13))|83|14|(4:16|(1:18)(1:20)|77|21)|26|(2:28|(2:30|(2:32|(2:34|(2:36|(2:38|(1:40)(1:41))(1:42))(1:43))(1:44))(1:45))(1:46))(1:47)|48|81|49|(1:51)(1:52)|53|(1:55)|59|(2:62|(1:64)(4:65|(3:68|(1:86)(1:87)|66)|85|71))(1:71)|(2:73|74)(2:75|76))|5|26|(0)(0)|48|81|49|(0)(0)|53|(0)|59|(0)(0)|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0199, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x019a, code lost:
    
        r11.zzu.zzaV().zzb().zzc("Fetching Google App Id failed with exception. appId", com.google.android.gms.measurement.internal.zzgu.zzl(r1), r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0182  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0187 A[Catch: IllegalStateException -> 0x0199, TRY_LEAVE, TryCatch #2 {IllegalStateException -> 0x0199, blocks: (B:49:0x016d, B:53:0x0183, B:55:0x0187), top: B:81:0x016d }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01c2  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01f3  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01f7  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0202  */
    @Override // com.google.android.gms.measurement.internal.zzg
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected final void zzf() {
        String str;
        String string;
        int iZzC;
        List listZzs;
        String strZza;
        zzic zzicVar = this.zzu;
        zzicVar.zzaV().zzk().zzc("sdkVersion bundled with app, dynamiteVersion", Long.valueOf(this.zzh), Long.valueOf(this.zzg));
        String packageName = zzicVar.zzaY().getPackageName();
        PackageManager packageManager = zzicVar.zzaY().getPackageManager();
        String str2 = _UrlKt.FRAGMENT_ENCODE_SET;
        int i = Integer.MIN_VALUE;
        String str3 = "Unknown";
        String installerPackageName = "unknown";
        if (packageManager != null) {
            try {
                installerPackageName = packageManager.getInstallerPackageName(packageName);
            } catch (IllegalArgumentException unused) {
                this.zzu.zzaV().zzb().zzb("Error retrieving app installer package name. appId", zzgu.zzl(packageName));
            }
            if (installerPackageName == null) {
                installerPackageName = "manual_install";
            } else if ("com.android.vending".equals(installerPackageName)) {
                installerPackageName = _UrlKt.FRAGMENT_ENCODE_SET;
            }
            try {
                PackageInfo packageInfo = packageManager.getPackageInfo(this.zzu.zzaY().getPackageName(), 0);
                if (packageInfo != null) {
                    CharSequence applicationLabel = packageManager.getApplicationLabel(packageInfo.applicationInfo);
                    string = !TextUtils.isEmpty(applicationLabel) ? applicationLabel.toString() : "Unknown";
                    try {
                        str3 = packageInfo.versionName;
                        i = packageInfo.versionCode;
                    } catch (PackageManager.NameNotFoundException unused2) {
                        str = str3;
                        str3 = string;
                        this.zzu.zzaV().zzb().zzc("Error retrieving package info. appId, appName", zzgu.zzl(packageName), str3);
                        string = str3;
                        str3 = str;
                    }
                }
            } catch (PackageManager.NameNotFoundException unused3) {
                str = "Unknown";
            }
            this.zza = packageName;
            this.zzd = installerPackageName;
            this.zzb = str3;
            this.zzc = i;
            this.zze = string;
            this.zzf = 0L;
            zzic zzicVar2 = this.zzu;
            iZzC = zzicVar2.zzC();
            if (iZzC != 0) {
                this.zzu.zzaV().zzk().zza("App measurement collection enabled");
            } else if (iZzC == 1) {
                this.zzu.zzaV().zzi().zza("App measurement deactivated via the manifest");
            } else if (iZzC == 3) {
                this.zzu.zzaV().zzi().zza("App measurement disabled by setAnalyticsCollectionEnabled(false)");
            } else if (iZzC == 4) {
                this.zzu.zzaV().zzi().zza("App measurement disabled via the manifest");
            } else if (iZzC == 6) {
                this.zzu.zzaV().zzh().zza("App measurement deactivated via resources. This method is being deprecated. Please refer to https://firebase.google.com/support/guides/disable-analytics");
            } else if (iZzC == 7) {
                this.zzu.zzaV().zzi().zza("App measurement disabled via the global data collection setting");
            } else if (iZzC != 8) {
                zzic zzicVar3 = this.zzu;
                zzicVar3.zzaV().zzi().zza("App measurement disabled");
                zzicVar3.zzaV().zzc().zza("Invalid scion state in identity");
            } else {
                this.zzu.zzaV().zzi().zza("App measurement disabled due to denied storage consent");
            }
            this.zzl = _UrlKt.FRAGMENT_ENCODE_SET;
            zzic zzicVar4 = this.zzu;
            zzicVar4.zzaU();
            strZza = zzlt.zza(zzicVar4.zzaY(), "google_app_id", zzicVar2.zzq());
            if (TextUtils.isEmpty(strZza)) {
                str2 = strZza;
            }
            this.zzl = str2;
            if (iZzC == 0) {
                zzicVar4.zzaV().zzk().zzc("App measurement enabled for app package, google app id", this.zza, this.zzl);
            }
            this.zzi = null;
            zzic zzicVar5 = this.zzu;
            zzicVar5.zzaU();
            listZzs = zzicVar5.zzc().zzs("analytics.safelisted_events");
            if (listZzs == null) {
                this.zzi = listZzs;
            } else if (listZzs.isEmpty()) {
                zzicVar5.zzaV().zzh().zza("Safelisted event list is empty. Ignoring");
            } else {
                Iterator it = listZzs.iterator();
                while (it.hasNext()) {
                    if (!zzicVar5.zzk().zzk("safelisted event", (String) it.next())) {
                        break;
                    }
                }
                this.zzi = listZzs;
            }
            if (packageManager == null) {
                this.zzk = InstantApps.isInstantApp(zzicVar5.zzaY()) ? 1 : 0;
                return;
            } else {
                this.zzk = 0;
                return;
            }
        }
        zzicVar.zzaV().zzb().zzb("PackageManager is null, app identity information might be inaccurate. appId", zzgu.zzl(packageName));
        string = "Unknown";
        this.zza = packageName;
        this.zzd = installerPackageName;
        this.zzb = str3;
        this.zzc = i;
        this.zze = string;
        this.zzf = 0L;
        zzic zzicVar22 = this.zzu;
        iZzC = zzicVar22.zzC();
        if (iZzC != 0) {
        }
        this.zzl = _UrlKt.FRAGMENT_ENCODE_SET;
        zzic zzicVar42 = this.zzu;
        zzicVar42.zzaU();
        strZza = zzlt.zza(zzicVar42.zzaY(), "google_app_id", zzicVar22.zzq());
        if (TextUtils.isEmpty(strZza)) {
        }
        this.zzl = str2;
        if (iZzC == 0) {
        }
        this.zzi = null;
        zzic zzicVar52 = this.zzu;
        zzicVar52.zzaU();
        listZzs = zzicVar52.zzc().zzs("analytics.safelisted_events");
        if (listZzs == null) {
        }
        if (packageManager == null) {
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r2v0 com.google.android.gms.measurement.internal.zzr, still in use, count: 4, list:
          (r2v0 com.google.android.gms.measurement.internal.zzr) from 0x0183: MOVE (r21v0 com.google.android.gms.measurement.internal.zzr) = (r2v0 com.google.android.gms.measurement.internal.zzr)
          (r2v0 com.google.android.gms.measurement.internal.zzr) from 0x0171: MOVE (r21v2 com.google.android.gms.measurement.internal.zzr) = (r2v0 com.google.android.gms.measurement.internal.zzr)
          (r2v0 com.google.android.gms.measurement.internal.zzr) from 0x0143: MOVE (r21v4 com.google.android.gms.measurement.internal.zzr) = (r2v0 com.google.android.gms.measurement.internal.zzr)
          (r2v0 com.google.android.gms.measurement.internal.zzr) from 0x00fb: MOVE (r21v7 com.google.android.gms.measurement.internal.zzr) = (r2v0 com.google.android.gms.measurement.internal.zzr)
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:162)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:127)
        	at jadx.core.utils.InsnRemover.unbindInsn(InsnRemover.java:91)
        	at jadx.core.utils.InsnRemover.addAndUnbind(InsnRemover.java:57)
        	at jadx.core.dex.visitors.ModVisitor.removeStep(ModVisitor.java:463)
        	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:97)
        */
    final com.google.android.gms.measurement.internal.zzr zzh(java.lang.String r50) {
        /*
            Method dump skipped, instruction units count: 864
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzgi.zzh(java.lang.String):com.google.android.gms.measurement.internal.zzr");
    }

    final void zzi() {
        String str;
        zzg();
        zzic zzicVar = this.zzu;
        if (zzicVar.zzd().zzl().zzo(zzjk.ANALYTICS_STORAGE)) {
            byte[] bArr = new byte[16];
            zzicVar.zzk().zzf().nextBytes(bArr);
            str = String.format(Locale.US, "%032x", new BigInteger(1, bArr));
        } else {
            zzicVar.zzaV().zzj().zza("Analytics Storage consent is not granted");
            str = null;
        }
        zzicVar.zzaV().zzj().zza(String.format("Resetting session stitching token to %s", str == null ? "null" : "not null"));
        this.zzm = str;
        this.zzn = zzicVar.zzaZ().currentTimeMillis();
    }

    final String zzj() {
        zzb();
        Preconditions.checkNotNull(this.zza);
        return this.zza;
    }

    final String zzk() {
        zzg();
        zzb();
        Preconditions.checkNotNull(this.zzl);
        return this.zzl;
    }

    final String zzl() {
        zzb();
        Preconditions.checkNotNull(this.zze);
        return this.zze;
    }

    final int zzm() {
        zzb();
        return this.zzc;
    }

    final long zzn() {
        return this.zzh;
    }

    final int zzo() {
        zzb();
        return this.zzk;
    }

    final List zzp() {
        return this.zzi;
    }

    final boolean zzq(String str) {
        String str2 = this.zzo;
        boolean z = false;
        if (str2 != null && !str2.equals(str)) {
            z = true;
        }
        this.zzo = str;
        return z;
    }
}
