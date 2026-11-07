package com.google.android.gms.cast.framework;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.KeyEvent;
import androidx.mediarouter.media.MediaRouteSelector;
import androidx.mediarouter.media.MediaRouter;
import com.google.android.gms.cast.CredentialsData;
import com.google.android.gms.cast.LaunchOptions;
import com.google.android.gms.cast.framework.CastOptions;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.cast.zzbq;
import com.google.android.gms.internal.cast.zzbx;
import com.google.android.gms.internal.cast.zzce;
import com.google.android.gms.internal.cast.zzee;
import com.google.android.gms.internal.cast.zzek;
import com.google.android.gms.internal.cast.zzwt;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
import org.mvel2.asm.Constants$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes4.dex */
public class CastContext {
    public static final String OPTIONS_PROVIDER_CLASS_NAME_KEY = "com.google.android.gms.cast.framework.OPTIONS_PROVIDER_CLASS_NAME";
    private static final Logger zzb = new Logger("CastContext");
    private static final Object zzc = new Object();
    private static volatile CastContext zzd;
    final com.google.android.gms.internal.cast.zzax zza;
    private final Context zze;
    private final zzai zzf;
    private final SessionManager zzg;
    private final zzab zzh;
    private final PrecacheManager zzi;
    private final MediaNotificationManager zzj;
    private final CastOptions zzk;
    private final com.google.android.gms.cast.internal.zzn zzl;
    private final zzbx zzm;
    private final zzbq zzn;
    private final List zzo;
    private final zzce zzp;
    private com.google.android.gms.internal.cast.zzba zzq;
    private CastReasonCodes zzr;

    private CastContext(Context context, CastOptions castOptions, List list, zzbx zzbxVar, com.google.android.gms.cast.internal.zzn zznVar) {
        this.zze = context;
        this.zzk = castOptions;
        this.zzm = zzbxVar;
        this.zzl = zznVar;
        this.zzo = list;
        zzbq zzbqVar = new zzbq(context);
        this.zzn = zzbqVar;
        zzce zzceVarZzu = zzbxVar.zzu();
        this.zzp = zzceVarZzu;
        zzk();
        Map mapZzj = zzj();
        castOptions.zzi(new zzm(1));
        try {
            zzai zzaiVarZza = com.google.android.gms.internal.cast.zzay.zza(context, castOptions, zzbxVar, mapZzj);
            this.zzf = zzaiVarZza;
            try {
                this.zzh = new zzab(zzaiVarZza.zzh());
                try {
                    SessionManager sessionManager = new SessionManager(zzaiVarZza.zzg(), context);
                    this.zzg = sessionManager;
                    this.zzj = new MediaNotificationManager(sessionManager);
                    this.zzi = new PrecacheManager(castOptions, sessionManager, zznVar);
                    if (zzceVarZzu != null) {
                        zzceVarZzu.zza(sessionManager);
                    }
                    zzek zzekVar = new zzek(context, zzwt.zza(Executors.newFixedThreadPool(3)));
                    new Logger("BaseNetUtils");
                    zzekVar.zza();
                    com.google.android.gms.internal.cast.zzax zzaxVar = new com.google.android.gms.internal.cast.zzax();
                    this.zza = zzaxVar;
                    try {
                        zzaiVarZza.zzf(zzaxVar);
                        zzaxVar.zzf(zzbqVar.zza);
                        if (!castOptions.zzg().isEmpty()) {
                            zzb.m315i("Setting Route Discovery for appIds: ".concat(String.valueOf(castOptions.zzg())), new Object[0]);
                            zzbqVar.zzf(castOptions.zzg());
                        }
                        zznVar.zzb(new String[]{"com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_ENABLED", "com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_MODE", "com.google.android.gms.cast.FLAG_FIRELOG_UPLOAD_MODE", "com.google.android.gms.cast.FLAG_ANALYTICS_LOGGING_BUCKET_SIZE", "com.google.android.gms.cast.FLAG_CLIENT_FEATURE_USAGE_ANALYTICS_ENABLED", "com.google.android.gms.cast.FLAG_CLIENT_ANALYTICS_ENABLED", "com.google.android.gms.cast.FLAG_ANALYTICS_CONSENT_TIMEOUT_SECONDS"}).addOnSuccessListener(new OnSuccessListener() { // from class: com.google.android.gms.cast.framework.zzh
                            @Override // com.google.android.gms.tasks.OnSuccessListener
                            public final /* synthetic */ void onSuccess(Object obj) {
                                this.zza.zzf((Bundle) obj);
                            }
                        });
                        zznVar.zzd(new String[]{"com.google.android.gms.cast.MAP_CAST_STATUS_CODES_TO_CAST_REASON_CODES"}).addOnSuccessListener(new OnSuccessListener() { // from class: com.google.android.gms.cast.framework.zzi
                            @Override // com.google.android.gms.tasks.OnSuccessListener
                            public final /* synthetic */ void onSuccess(Object obj) {
                                this.zza.zzg((Bundle) obj);
                            }
                        });
                    } catch (RemoteException e) {
                        Constants$$ExternalSyntheticBUOutline0.m1006m("Failed to call addAppVisibilityListener", e);
                        throw null;
                    }
                } catch (RemoteException e2) {
                    Constants$$ExternalSyntheticBUOutline0.m1006m("Failed to call getSessionManagerImpl", e2);
                    throw null;
                }
            } catch (RemoteException e3) {
                Constants$$ExternalSyntheticBUOutline0.m1006m("Failed to call getDiscoveryManagerImpl", e3);
                throw null;
            }
        } catch (RemoteException e4) {
            Constants$$ExternalSyntheticBUOutline0.m1006m("Failed to call newCastContextImpl", e4);
            throw null;
        }
    }

    public static CastContext getSharedInstance() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        return zzd;
    }

    public static CastContext zza(Context context) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        try {
            return getSharedInstance(context);
        } catch (RuntimeException e) {
            zzb.m313e("Failed to load module from Google Play services. Cast will not work properly. Might due to outdated Google Play services. Ignoring this failure silently.", e);
            return null;
        }
    }

    public static int zzb(int i) {
        if (zzd != null) {
            return zzd.getCastReasonCodeForCastStatusCode(i);
        }
        return 0;
    }

    public static /* synthetic */ CastContext zzd(Context context, CastOptions castOptions, OptionsProvider optionsProvider, zzbx zzbxVar, com.google.android.gms.cast.internal.zzn zznVar) {
        synchronized (zzc) {
            try {
                if (zzd == null) {
                    zzd = new CastContext(context, castOptions, optionsProvider.getAdditionalSessionProviders(context), zzbxVar, zznVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzd;
    }

    public static /* synthetic */ void zze(Context context, CastOptions castOptions, OptionsProvider optionsProvider, zzbx zzbxVar, com.google.android.gms.cast.internal.zzn zznVar, TaskCompletionSource taskCompletionSource) {
        synchronized (zzc) {
            if (zzd == null) {
                try {
                    zzd = new CastContext(context, castOptions, optionsProvider.getAdditionalSessionProviders(context), zzbxVar, zznVar);
                    taskCompletionSource.setResult(zzd);
                } catch (ModuleUnavailableException e) {
                    taskCompletionSource.setException(e);
                }
            } else {
                taskCompletionSource.setResult(zzd);
            }
        }
    }

    private static String zzh(Context context) {
        Bundle bundle;
        try {
            ApplicationInfo applicationInfo = Wrappers.packageManager(context).getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo != null && (bundle = applicationInfo.metaData) != null) {
                return bundle.getString(OPTIONS_PROVIDER_CLASS_NAME_KEY);
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return null;
    }

    private final Map zzj() {
        HashMap map = new HashMap();
        com.google.android.gms.internal.cast.zzba zzbaVar = this.zzq;
        if (zzbaVar != null) {
            map.put(zzbaVar.getCategory(), zzbaVar.zza());
        }
        List<SessionProvider> list = this.zzo;
        if (list != null) {
            for (SessionProvider sessionProvider : list) {
                Preconditions.checkNotNull(sessionProvider, "Additional SessionProvider must not be null.");
                String strCheckNotEmpty = Preconditions.checkNotEmpty(sessionProvider.getCategory(), "Category for SessionProvider must not be null or empty string.");
                Preconditions.checkArgument(!map.containsKey(strCheckNotEmpty), String.format("SessionProvider for category %s already added", strCheckNotEmpty));
                map.put(strCheckNotEmpty, sessionProvider.zza());
            }
        }
        return map;
    }

    @RequiresNonNull({"castOptions", "mediaRouter", "appContext"})
    private final void zzk() {
        CastOptions castOptions = this.zzk;
        if (TextUtils.isEmpty(castOptions.getReceiverApplicationId())) {
            this.zzq = null;
        } else {
            this.zzq = new com.google.android.gms.internal.cast.zzba(this.zze, castOptions, this.zzm);
        }
    }

    @Deprecated
    public void addAppVisibilityListener(AppVisibilityListener appVisibilityListener) {
    }

    public void addCastStateListener(CastStateListener castStateListener) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        Preconditions.checkNotNull(castStateListener);
        this.zzg.zzb(castStateListener);
    }

    public void addSessionTransferCallback(SessionTransferCallback sessionTransferCallback) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        Preconditions.checkNotNull(sessionTransferCallback);
        this.zzm.zzs(sessionTransferCallback);
    }

    public void applyOptionsModifier(CastOptions.Modifier modifier) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        String receiverApplicationId = modifier.getReceiverApplicationId();
        if (receiverApplicationId != null) {
            setReceiverApplicationId(receiverApplicationId);
        }
        Boolean showSystemOutputSwitcherOnCastIconClick = modifier.getShowSystemOutputSwitcherOnCastIconClick();
        if (showSystemOutputSwitcherOnCastIconClick != null) {
            this.zzk.zzd(showSystemOutputSwitcherOnCastIconClick.booleanValue());
        }
        Boolean remoteToLocalEnabled = modifier.getRemoteToLocalEnabled();
        if (remoteToLocalEnabled != null) {
            this.zzk.zzc(remoteToLocalEnabled.booleanValue());
        }
        this.zzm.zzr(showSystemOutputSwitcherOnCastIconClick, remoteToLocalEnabled);
    }

    public CastOptions getCastOptions() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        return this.zzk;
    }

    public int getCastReasonCodeForCastStatusCode(int i) {
        CastReasonCodes castReasonCodes = this.zzr;
        if (castReasonCodes != null) {
            return castReasonCodes.zza(i);
        }
        zzb.m318w("castReasonCodes hasn't been initialized yet", new Object[0]);
        return 0;
    }

    public int getCastState() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        return this.zzg.zza();
    }

    public MediaNotificationManager getMediaNotificationManager() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        return this.zzj;
    }

    public MediaRouteSelector getMergedSelector() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        try {
            return MediaRouteSelector.fromBundle(this.zzf.zze());
        } catch (RemoteException e) {
            zzb.m312d(e, "Unable to call %s on %s.", "getMergedSelectorAsBundle", zzai.class.getSimpleName());
            return null;
        }
    }

    public PrecacheManager getPrecacheManager() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        return this.zzi;
    }

    public SessionManager getSessionManager() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        return this.zzg;
    }

    @Deprecated
    public boolean isAppVisible() {
        return false;
    }

    @Deprecated
    public boolean onDispatchVolumeKeyEventBeforeJellyBean(KeyEvent keyEvent) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        return false;
    }

    @Deprecated
    public void removeAppVisibilityListener(AppVisibilityListener appVisibilityListener) {
    }

    public void removeCastStateListener(CastStateListener castStateListener) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (castStateListener == null) {
            return;
        }
        this.zzg.zzc(castStateListener);
    }

    public void removeSessionTransferCallback(SessionTransferCallback sessionTransferCallback) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        Preconditions.checkNotNull(sessionTransferCallback);
        this.zzm.zzt(sessionTransferCallback);
    }

    public void setLaunchCredentialsData(CredentialsData credentialsData) {
        CastOptions castOptions = this.zzk;
        LaunchOptions.Builder builder = new LaunchOptions.Builder(castOptions.getLaunchOptions());
        builder.setCredentialsData(credentialsData);
        castOptions.zze(builder.build());
        zzk();
    }

    public void setReceiverApplicationId(String str) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        CastOptions castOptions = this.zzk;
        if (TextUtils.equals(str, castOptions.getReceiverApplicationId())) {
            return;
        }
        castOptions.zzb(str);
        zzk();
        try {
            this.zzf.zzi(str, zzj());
        } catch (RemoteException e) {
            zzb.m312d(e, "Unable to call %s on %s.", "setReceiverApplicationId", zzai.class.getSimpleName());
        }
        zzp zzpVar = new zzp();
        zzpVar.zza(getCastReasonCodeForCastStatusCode(2423));
        zzpVar.zzb(2423);
        zzq zzqVarZzc = zzpVar.zzc();
        Context context = this.zze;
        zzee.zza(context, this.zzk, this.zza).zzb(zzqVarZzc);
        CastButtonFactory.zza(context);
    }

    public void setShowSystemOutputSwitcherOnCastIconClick(boolean z) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        this.zzk.zzd(z);
        this.zzm.zzr(Boolean.valueOf(z), null);
    }

    public final zzab zzc() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        return this.zzh;
    }

    public final /* synthetic */ void zzf(Bundle bundle) {
        if (com.google.android.gms.internal.cast.zzj.zza) {
            com.google.android.gms.internal.cast.zzj.zza(this.zze, this.zzl, this.zzg, this.zzp, this.zza).zzb(bundle);
        }
    }

    public final /* synthetic */ void zzg(Bundle bundle) {
        this.zzr = new CastReasonCodes(bundle);
    }

    public static CastContext getSharedInstance(Context context) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (zzd == null) {
            synchronized (zzc) {
                if (zzd == null) {
                    Context applicationContext = context.getApplicationContext();
                    OptionsProvider optionsProviderZzi = zzi(zzh(applicationContext));
                    CastOptions castOptions = optionsProviderZzi.getCastOptions(applicationContext);
                    com.google.android.gms.cast.internal.zzn zznVar = new com.google.android.gms.cast.internal.zzn(applicationContext);
                    try {
                        zzd = new CastContext(applicationContext, castOptions, optionsProviderZzi.getAdditionalSessionProviders(applicationContext), new zzbx(applicationContext, MediaRouter.getInstance(applicationContext), castOptions, zznVar), zznVar);
                    } catch (ModuleUnavailableException e) {
                        throw new RuntimeException(e);
                    }
                }
            }
        }
        return zzd;
    }

    private static OptionsProvider zzi(String str) {
        try {
            if (str != null) {
                return (OptionsProvider) Class.forName(str).asSubclass(OptionsProvider.class).getDeclaredConstructor(null).newInstance(null);
            }
            throw new IllegalStateException("The fully qualified name of the implementation of OptionsProvider must be provided as a metadata in the AndroidManifest.xml with key com.google.android.gms.cast.framework.OPTIONS_PROVIDER_CLASS_NAME.");
        } catch (ReflectiveOperationException e) {
            Constants$$ExternalSyntheticBUOutline0.m1006m("Failed to initialize CastContext with manifest options.", e);
            return null;
        }
    }

    public static Task<CastContext> getSharedInstance(Context context, Executor executor) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (zzd == null) {
            final Context applicationContext = context.getApplicationContext();
            final OptionsProvider optionsProviderZzi = zzi(zzh(applicationContext));
            final CastOptions castOptions = optionsProviderZzi.getCastOptions(applicationContext);
            final com.google.android.gms.cast.internal.zzn zznVar = new com.google.android.gms.cast.internal.zzn(applicationContext);
            final zzbx zzbxVar = new zzbx(applicationContext, MediaRouter.getInstance(applicationContext), castOptions, zznVar);
            return Tasks.call(executor, new Callable() { // from class: com.google.android.gms.cast.framework.zzj
                @Override // java.util.concurrent.Callable
                public final /* synthetic */ Object call() {
                    return CastContext.zzd(applicationContext, castOptions, optionsProviderZzi, zzbxVar, zznVar);
                }
            });
        }
        return Tasks.forResult(zzd);
    }

    public static Task<CastContext> getSharedInstance(Context context, Executor executor, OptionsProvider optionsProvider, CastOptions.Modifier modifier) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        Preconditions.checkNotNull(modifier, "optionsModifier must not be null.");
        if (zzd == null) {
            final Context applicationContext = context.getApplicationContext();
            String strZzh = zzh(applicationContext);
            if (strZzh != null) {
                optionsProvider = zzi(strZzh);
            }
            final OptionsProvider optionsProvider2 = optionsProvider;
            final CastOptions castOptions = optionsProvider2.getCastOptions(applicationContext);
            castOptions.zza(modifier);
            final com.google.android.gms.cast.internal.zzn zznVar = new com.google.android.gms.cast.internal.zzn(applicationContext);
            final zzbx zzbxVar = new zzbx(applicationContext, MediaRouter.getInstance(applicationContext), castOptions, zznVar);
            final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
            executor.execute(new Runnable() { // from class: com.google.android.gms.cast.framework.zzg
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    CastContext.zze(applicationContext, castOptions, optionsProvider2, zzbxVar, zznVar, taskCompletionSource);
                }
            });
            return taskCompletionSource.getTask();
        }
        zzd.applyOptionsModifier(modifier);
        return Tasks.forResult(zzd);
    }
}
