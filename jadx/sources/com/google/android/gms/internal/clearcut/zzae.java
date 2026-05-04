package com.google.android.gms.internal.clearcut;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Binder;
import android.os.Build;
import android.os.UserManager;
import android.util.Log;
import androidx.core.content.PermissionChecker;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzae {
    private static final Object zzdn = new Object();
    private static boolean zzdo = false;
    private static volatile Boolean zzdp;
    private static volatile Boolean zzdq;
    private static Context zzh;
    private final zzao zzdr;
    final String zzds;
    private final String zzdt;
    private final Object zzdu;
    private Object zzdv;
    private volatile zzab zzdw;
    private volatile SharedPreferences zzdx;

    private zzae(zzao zzaoVar, String str, Object obj) {
        this.zzdv = null;
        this.zzdw = null;
        this.zzdx = null;
        if (zzaoVar.zzef == null && zzaoVar.zzeg == null) {
            throw new IllegalArgumentException("Must pass a valid SharedPreferences file name or ContentProvider URI");
        }
        if (zzaoVar.zzef != null && zzaoVar.zzeg != null) {
            throw new IllegalArgumentException("Must pass one of SharedPreferences file name or ContentProvider URI");
        }
        this.zzdr = zzaoVar;
        String strValueOf = String.valueOf(zzaoVar.zzeh);
        String strValueOf2 = String.valueOf(str);
        this.zzdt = strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf);
        String strValueOf3 = String.valueOf(zzaoVar.zzei);
        String strValueOf4 = String.valueOf(str);
        this.zzds = strValueOf4.length() != 0 ? strValueOf3.concat(strValueOf4) : new String(strValueOf3);
        this.zzdu = obj;
    }

    /* synthetic */ zzae(zzao zzaoVar, String str, Object obj, zzai zzaiVar) {
        this(zzaoVar, str, obj);
    }

    public static void maybeInit(Context context) {
        Context applicationContext;
        if (zzh == null) {
            synchronized (zzdn) {
                try {
                    if ((Build.VERSION.SDK_INT < 24 || !context.isDeviceProtectedStorage()) && (applicationContext = context.getApplicationContext()) != null) {
                        context = applicationContext;
                    }
                    if (zzh != context) {
                        zzdp = null;
                    }
                    zzh = context;
                } catch (Throwable th) {
                    throw th;
                }
            }
            zzdo = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zzae zza(zzao zzaoVar, String str, Object obj, zzan zzanVar) {
        return new zzal(zzaoVar, str, obj, zzanVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zzae zza(zzao zzaoVar, String str, String str2) {
        return new zzak(zzaoVar, str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zzae zza(zzao zzaoVar, String str, boolean z) {
        return new zzaj(zzaoVar, str, Boolean.valueOf(z));
    }

    private static Object zza(zzam zzamVar) {
        try {
            return zzamVar.zzp();
        } catch (SecurityException unused) {
            long jClearCallingIdentity = Binder.clearCallingIdentity();
            try {
                return zzamVar.zzp();
            } finally {
                Binder.restoreCallingIdentity(jClearCallingIdentity);
            }
        }
    }

    static boolean zza(final String str, boolean z) {
        final boolean z2 = false;
        if (zzn()) {
            return ((Boolean) zza(new zzam(str, z2) { // from class: com.google.android.gms.internal.clearcut.zzah
                private final String zzea;
                private final boolean zzeb = false;

                {
                    this.zzea = str;
                }

                @Override // com.google.android.gms.internal.clearcut.zzam
                public final Object zzp() {
                    return Boolean.valueOf(zzy.zza(zzae.zzh.getContentResolver(), this.zzea, this.zzeb));
                }
            })).booleanValue();
        }
        return false;
    }

    private final Object zzl() {
        boolean zBooleanValue;
        if (zza("gms:phenotype:phenotype_flag:debug_bypass_phenotype", false)) {
            String strValueOf = String.valueOf(this.zzds);
            Log.w("PhenotypeFlag", strValueOf.length() != 0 ? "Bypass reading Phenotype values for flag: ".concat(strValueOf) : new String("Bypass reading Phenotype values for flag: "));
        } else if (this.zzdr.zzeg != null) {
            if (this.zzdw == null) {
                this.zzdw = zzab.zza(zzh.getContentResolver(), this.zzdr.zzeg);
            }
            final zzab zzabVar = this.zzdw;
            String str = (String) zza(new zzam(this, zzabVar) { // from class: com.google.android.gms.internal.clearcut.zzaf
                private final zzae zzdy;
                private final zzab zzdz;

                {
                    this.zzdy = this;
                    this.zzdz = zzabVar;
                }

                @Override // com.google.android.gms.internal.clearcut.zzam
                public final Object zzp() {
                    return (String) this.zzdz.zzg().get(this.zzdy.zzds);
                }
            });
            if (str != null) {
                return zzb(str);
            }
        } else if (this.zzdr.zzef != null) {
            if (Build.VERSION.SDK_INT < 24 || zzh.isDeviceProtectedStorage()) {
                zBooleanValue = true;
            } else {
                if (zzdq == null || !zzdq.booleanValue()) {
                    zzdq = Boolean.valueOf(((UserManager) zzh.getSystemService(UserManager.class)).isUserUnlocked());
                }
                zBooleanValue = zzdq.booleanValue();
            }
            if (!zBooleanValue) {
                return null;
            }
            if (this.zzdx == null) {
                this.zzdx = zzh.getSharedPreferences(this.zzdr.zzef, 0);
            }
            SharedPreferences sharedPreferences = this.zzdx;
            if (sharedPreferences.contains(this.zzds)) {
                return zza(sharedPreferences);
            }
        }
        return null;
    }

    private final Object zzm() {
        String str;
        if (this.zzdr.zzej || !zzn() || (str = (String) zza(new zzam(this) { // from class: com.google.android.gms.internal.clearcut.zzag
            private final zzae zzdy;

            {
                this.zzdy = this;
            }

            @Override // com.google.android.gms.internal.clearcut.zzam
            public final Object zzp() {
                return this.zzdy.zzo();
            }
        })) == null) {
            return null;
        }
        return zzb(str);
    }

    private static boolean zzn() {
        if (zzdp == null) {
            Context context = zzh;
            if (context == null) {
                return false;
            }
            zzdp = Boolean.valueOf(PermissionChecker.checkCallingOrSelfPermission(context, "com.google.android.providers.gsf.permission.READ_GSERVICES") == 0);
        }
        return zzdp.booleanValue();
    }

    public final Object get() {
        if (zzh == null) {
            throw new IllegalStateException("Must call PhenotypeFlag.init() first");
        }
        if (this.zzdr.zzek) {
            Object objZzm = zzm();
            if (objZzm != null) {
                return objZzm;
            }
            Object objZzl = zzl();
            if (objZzl != null) {
                return objZzl;
            }
        } else {
            Object objZzl2 = zzl();
            if (objZzl2 != null) {
                return objZzl2;
            }
            Object objZzm2 = zzm();
            if (objZzm2 != null) {
                return objZzm2;
            }
        }
        return this.zzdu;
    }

    protected abstract Object zza(SharedPreferences sharedPreferences);

    protected abstract Object zzb(String str);

    final /* synthetic */ String zzo() {
        return zzy.zza(zzh.getContentResolver(), this.zzdt, (String) null);
    }
}
