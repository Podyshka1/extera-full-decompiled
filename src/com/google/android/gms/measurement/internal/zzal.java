package com.google.android.gms.measurement.internal;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.ProcessUtils;
import com.google.android.gms.common.wrappers.Wrappers;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.List;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzal extends zzje {
    private Boolean zza;
    private String zzb;
    private zzak zzc;
    private Boolean zzd;

    zzal(zzic zzicVar) {
        super(zzicVar);
        this.zzc = zzaj.zza;
    }

    public static final long zzF() {
        return ((Long) zzfy.zzd.zzb(null)).longValue();
    }

    public static final int zzG() {
        return Math.max(0, ((Integer) zzfy.zzi.zzb(null)).intValue());
    }

    public static final long zzH() {
        return ((Integer) zzfy.zzk.zzb(null)).intValue();
    }

    public static final long zzI() {
        return ((Long) zzfy.zzR.zzb(null)).longValue();
    }

    public static final long zzJ() {
        return ((Long) zzfy.zzM.zzb(null)).longValue();
    }

    private final String zzK(String str, String str2) {
        try {
            String str3 = (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, str, _UrlKt.FRAGMENT_ENCODE_SET);
            Preconditions.checkNotNull(str3);
            return str3;
        } catch (ClassNotFoundException e) {
            this.zzu.zzaV().zzb().zzb("Could not find SystemProperties class", e);
            return _UrlKt.FRAGMENT_ENCODE_SET;
        } catch (IllegalAccessException e2) {
            this.zzu.zzaV().zzb().zzb("Could not access SystemProperties.get()", e2);
            return _UrlKt.FRAGMENT_ENCODE_SET;
        } catch (NoSuchMethodException e3) {
            this.zzu.zzaV().zzb().zzb("Could not find SystemProperties.get() method", e3);
            return _UrlKt.FRAGMENT_ENCODE_SET;
        } catch (InvocationTargetException e4) {
            this.zzu.zzaV().zzb().zzb("SystemProperties.get() threw an exception", e4);
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
    }

    public final String zzA() {
        return zzK("debug.firebase.analytics.app", _UrlKt.FRAGMENT_ENCODE_SET);
    }

    public final String zzB() {
        return zzK("debug.deferred.deeplink", _UrlKt.FRAGMENT_ENCODE_SET);
    }

    public final boolean zzC(String str) {
        return "1".equals(this.zzc.zza(str, "gaia_collection_enabled"));
    }

    public final boolean zzD(String str) {
        return "1".equals(this.zzc.zza(str, "measurement.event_sampling_enabled"));
    }

    final boolean zzE() {
        if (this.zza == null) {
            Boolean boolZzr = zzr("app_measurement_lite");
            this.zza = boolZzr;
            if (boolZzr == null) {
                this.zza = Boolean.FALSE;
            }
        }
        return this.zza.booleanValue() || !this.zzu.zzp();
    }

    final void zza(zzak zzakVar) {
        this.zzc = zzakVar;
    }

    final String zzb() {
        this.zzu.zzaU();
        return "FA";
    }

    public final int zzc() {
        return this.zzu.zzk().zzag(201500000, true) ? 100 : 25;
    }

    public final int zzd(String str) {
        return zzn(str, zzfy.zzX, 25, 100);
    }

    final int zze(String str, boolean z) {
        if (z) {
            return zzn(str, zzfy.zzah, 100, 500);
        }
        return 500;
    }

    final int zzf(String str, boolean z) {
        return Math.max(zze(str, z), 256);
    }

    final int zzh(String str) {
        return zzn(str, zzfy.zzW, 500, 2000);
    }

    public final long zzi() {
        this.zzu.zzaU();
        return 133005L;
    }

    public final boolean zzj() {
        if (this.zzd == null) {
            synchronized (this) {
                try {
                    if (this.zzd == null) {
                        zzic zzicVar = this.zzu;
                        ApplicationInfo applicationInfo = zzicVar.zzaY().getApplicationInfo();
                        String myProcessName = ProcessUtils.getMyProcessName();
                        if (applicationInfo != null) {
                            String str = applicationInfo.processName;
                            boolean z = false;
                            if (str != null && str.equals(myProcessName)) {
                                z = true;
                            }
                            this.zzd = Boolean.valueOf(z);
                        }
                        if (this.zzd == null) {
                            this.zzd = Boolean.TRUE;
                            zzicVar.zzaV().zzb().zza("My process not in the list of running processes");
                        }
                    }
                } finally {
                }
            }
        }
        return this.zzd.booleanValue();
    }

    public final String zzk(String str, zzfx zzfxVar) {
        return TextUtils.isEmpty(str) ? (String) zzfxVar.zzb(null) : (String) zzfxVar.zzb(this.zzc.zza(str, zzfxVar.zza()));
    }

    public final long zzl(String str, zzfx zzfxVar) {
        if (TextUtils.isEmpty(str)) {
            return ((Long) zzfxVar.zzb(null)).longValue();
        }
        String strZza = this.zzc.zza(str, zzfxVar.zza());
        if (TextUtils.isEmpty(strZza)) {
            return ((Long) zzfxVar.zzb(null)).longValue();
        }
        try {
            return ((Long) zzfxVar.zzb(Long.valueOf(Long.parseLong(strZza)))).longValue();
        } catch (NumberFormatException unused) {
            return ((Long) zzfxVar.zzb(null)).longValue();
        }
    }

    public final int zzm(String str, zzfx zzfxVar) {
        if (TextUtils.isEmpty(str)) {
            return ((Integer) zzfxVar.zzb(null)).intValue();
        }
        String strZza = this.zzc.zza(str, zzfxVar.zza());
        if (TextUtils.isEmpty(strZza)) {
            return ((Integer) zzfxVar.zzb(null)).intValue();
        }
        try {
            return ((Integer) zzfxVar.zzb(Integer.valueOf(Integer.parseInt(strZza)))).intValue();
        } catch (NumberFormatException unused) {
            return ((Integer) zzfxVar.zzb(null)).intValue();
        }
    }

    public final int zzn(String str, zzfx zzfxVar, int i, int i2) {
        return Math.max(Math.min(zzm(str, zzfxVar), i2), i);
    }

    public final double zzo(String str, zzfx zzfxVar) {
        if (TextUtils.isEmpty(str)) {
            return ((Double) zzfxVar.zzb(null)).doubleValue();
        }
        String strZza = this.zzc.zza(str, zzfxVar.zza());
        if (TextUtils.isEmpty(strZza)) {
            return ((Double) zzfxVar.zzb(null)).doubleValue();
        }
        try {
            return ((Double) zzfxVar.zzb(Double.valueOf(Double.parseDouble(strZza)))).doubleValue();
        } catch (NumberFormatException unused) {
            return ((Double) zzfxVar.zzb(null)).doubleValue();
        }
    }

    public final boolean zzp(String str, zzfx zzfxVar) {
        if (TextUtils.isEmpty(str)) {
            return ((Boolean) zzfxVar.zzb(null)).booleanValue();
        }
        String strZza = this.zzc.zza(str, zzfxVar.zza());
        return TextUtils.isEmpty(strZza) ? ((Boolean) zzfxVar.zzb(null)).booleanValue() : ((Boolean) zzfxVar.zzb(Boolean.valueOf("1".equals(strZza)))).booleanValue();
    }

    final Bundle zzq() {
        try {
            zzic zzicVar = this.zzu;
            if (zzicVar.zzaY().getPackageManager() == null) {
                zzicVar.zzaV().zzb().zza("Failed to load metadata: PackageManager is null");
                return null;
            }
            ApplicationInfo applicationInfo = Wrappers.packageManager(zzicVar.zzaY()).getApplicationInfo(zzicVar.zzaY().getPackageName(), 128);
            if (applicationInfo != null) {
                return applicationInfo.metaData;
            }
            zzicVar.zzaV().zzb().zza("Failed to load metadata: ApplicationInfo is null");
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            this.zzu.zzaV().zzb().zzb("Failed to load metadata: Package name not found", e);
            return null;
        }
    }

    final Boolean zzr(String str) {
        Preconditions.checkNotEmpty(str);
        Bundle bundleZzq = zzq();
        if (bundleZzq == null) {
            this.zzu.zzaV().zzb().zza("Failed to load metadata: Metadata bundle is null");
            return null;
        }
        if (bundleZzq.containsKey(str)) {
            return Boolean.valueOf(bundleZzq.getBoolean(str));
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x002e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    final List zzs(String str) {
        Integer numValueOf;
        Preconditions.checkNotEmpty("analytics.safelisted_events");
        Bundle bundleZzq = zzq();
        if (bundleZzq != null) {
            if (bundleZzq.containsKey("analytics.safelisted_events")) {
                numValueOf = Integer.valueOf(bundleZzq.getInt("analytics.safelisted_events"));
            }
            if (numValueOf != null) {
                try {
                    String[] stringArray = this.zzu.zzaY().getResources().getStringArray(numValueOf.intValue());
                    if (stringArray == null) {
                        return null;
                    }
                    return Arrays.asList(stringArray);
                } catch (Resources.NotFoundException e) {
                    this.zzu.zzaV().zzb().zzb("Failed to load string array from metadata: resource not found", e);
                }
            }
            return null;
        }
        this.zzu.zzaV().zzb().zza("Failed to load metadata: Metadata bundle is null");
        numValueOf = null;
        if (numValueOf != null) {
        }
        return null;
    }

    public final boolean zzt() {
        this.zzu.zzaU();
        Boolean boolZzr = zzr("firebase_analytics_collection_deactivated");
        return boolZzr != null && boolZzr.booleanValue();
    }

    public final boolean zzu() {
        Boolean boolZzr = zzr("google_analytics_adid_collection_enabled");
        return boolZzr == null || boolZzr.booleanValue();
    }

    public final boolean zzv() {
        Boolean boolZzr = zzr("google_analytics_automatic_screen_reporting_enabled");
        return boolZzr == null || boolZzr.booleanValue();
    }

    public final zzji zzw(String str, boolean z) {
        Object obj;
        Preconditions.checkNotEmpty(str);
        zzic zzicVar = this.zzu;
        Bundle bundleZzq = zzq();
        if (bundleZzq == null) {
            zzicVar.zzaV().zzb().zza("Failed to load metadata: Metadata bundle is null");
            obj = null;
        } else {
            obj = bundleZzq.get(str);
        }
        if (obj == null) {
            return zzji.UNINITIALIZED;
        }
        if (Boolean.TRUE.equals(obj)) {
            return zzji.GRANTED;
        }
        if (Boolean.FALSE.equals(obj)) {
            return zzji.DENIED;
        }
        if (z && "eu_consent_policy".equals(obj)) {
            return zzji.POLICY;
        }
        zzicVar.zzaV().zze().zzb("Invalid manifest metadata for", str);
        return zzji.UNINITIALIZED;
    }

    public final boolean zzx() {
        Boolean boolZzr = zzr("google_analytics_sgtm_upload_enabled");
        if (boolZzr == null) {
            return false;
        }
        return boolZzr.booleanValue();
    }

    public final void zzy(String str) {
        this.zzb = str;
    }

    public final String zzz() {
        return this.zzb;
    }
}
