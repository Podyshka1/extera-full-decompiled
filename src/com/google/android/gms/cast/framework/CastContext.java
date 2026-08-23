package com.google.android.gms.cast.framework;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.mediarouter.media.MediaRouteSelector;
import androidx.mediarouter.media.MediaRouter;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.cast.zzbf;
import com.google.android.gms.internal.cast.zzbn;
import com.google.android.gms.internal.cast.zzcy;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class CastContext {
    private static final Logger zzb = new Logger("CastContext");
    private static final Object zzc = new Object();
    private static volatile CastContext zzd;
    final com.google.android.gms.internal.cast.zzaf zza;
    private final Context zze;
    private final zzaj zzf;
    private final SessionManager zzg;
    private final zzac zzh;
    private final PrecacheManager zzi;
    private final MediaNotificationManager zzj;
    private final CastOptions zzk;
    private final com.google.android.gms.cast.internal.zzn zzl;
    private final zzbf zzm;
    private final com.google.android.gms.internal.cast.zzay zzn;
    private final List zzo;
    private final zzbn zzp;
    private final zzcy zzq;
    private com.google.android.gms.internal.cast.zzai zzr;
    private CastReasonCodes zzs;

    private CastContext(Context context, CastOptions castOptions, List list, zzbf zzbfVar, final com.google.android.gms.cast.internal.zzn zznVar) {
        this.zze = context;
        this.zzk = castOptions;
        this.zzm = zzbfVar;
        this.zzl = zznVar;
        this.zzo = list;
        com.google.android.gms.internal.cast.zzay zzayVar = new com.google.android.gms.internal.cast.zzay(context);
        this.zzn = zzayVar;
        zzbn zzbnVarZzn = zzbfVar.zzn();
        this.zzp = zzbnVarZzn;
        zzh();
        Map mapZzg = zzg();
        castOptions.zzb(new zzl(1));
        try {
            zzaj zzajVarZza = com.google.android.gms.internal.cast.zzag.zza(context, castOptions, zzbfVar, mapZzg);
            this.zzf = zzajVarZza;
            try {
                this.zzh = new zzac(zzajVarZza.zzf());
                try {
                    SessionManager sessionManager = new SessionManager(zzajVarZza.zzg(), context);
                    this.zzg = sessionManager;
                    this.zzj = new MediaNotificationManager(sessionManager);
                    this.zzi = new PrecacheManager(castOptions, sessionManager, zznVar);
                    if (zzbnVarZzn != null) {
                        zzbnVarZzn.zzj(sessionManager);
                    }
                    this.zzq = new zzcy(context);
                    com.google.android.gms.internal.cast.zzaf zzafVar = new com.google.android.gms.internal.cast.zzaf();
                    this.zza = zzafVar;
                    try {
                        zzajVarZza.zzh(zzafVar);
                        zzafVar.zza.add(zzayVar.zza);
                        if (!castOptions.zza().isEmpty()) {
                            zzb.m340i("Setting Route Discovery for appIds: ".concat(String.valueOf(castOptions.zza())), new Object[0]);
                            zzayVar.zza(castOptions.zza());
                        }
                        zznVar.zza(new String[]{"com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_ENABLED", "com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_MODE", "com.google.android.gms.cast.FLAG_FIRELOG_UPLOAD_MODE", "com.google.android.gms.cast.FLAG_ANALYTICS_LOGGING_BUCKET_SIZE", "com.google.android.gms.cast.FLAG_CLIENT_FEATURE_USAGE_ANALYTICS_ENABLED"}).addOnSuccessListener(new OnSuccessListener() { // from class: com.google.android.gms.cast.framework.zzg
                            @Override // com.google.android.gms.tasks.OnSuccessListener
                            public final void onSuccess(Object obj) {
                                CastContext.zzd(this.zza, (Bundle) obj);
                            }
                        });
                        final String[] strArr = {"com.google.android.gms.cast.MAP_CAST_STATUS_CODES_TO_CAST_REASON_CODES"};
                        zznVar.doRead(TaskApiCall.builder().run(new RemoteCall() { // from class: com.google.android.gms.cast.internal.zzh
                            @Override // com.google.android.gms.common.api.internal.RemoteCall
                            public final void accept(Object obj, Object obj2) {
                                ((zzaj) ((zzo) obj).getService()).zzg(new zzm(zznVar, (TaskCompletionSource) obj2), strArr);
                            }
                        }).setFeatures(com.google.android.gms.cast.zzax.zzh).setAutoResolveMissingFeatures(false).setMethodKey(8427).build()).addOnSuccessListener(new OnSuccessListener() { // from class: com.google.android.gms.cast.framework.zzh
                            @Override // com.google.android.gms.tasks.OnSuccessListener
                            public final void onSuccess(Object obj) {
                                this.zza.zze((Bundle) obj);
                            }
                        });
                    } catch (RemoteException e) {
                        throw new IllegalStateException("Failed to call addAppVisibilityListener", e);
                    }
                } catch (RemoteException e2) {
                    throw new IllegalStateException("Failed to call getSessionManagerImpl", e2);
                }
            } catch (RemoteException e3) {
                throw new IllegalStateException("Failed to call getDiscoveryManagerImpl", e3);
            }
        } catch (RemoteException e4) {
            throw new IllegalStateException("Failed to call newCastContextImpl", e4);
        }
    }

    public static CastContext getSharedInstance() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        return zzd;
    }

    public static /* synthetic */ void zzd(CastContext castContext, Bundle bundle) {
        if (com.google.android.gms.internal.cast.zzg.zza) {
            com.google.android.gms.internal.cast.zzg.zza(castContext.zze, castContext.zzl, castContext.zzg, castContext.zzp, castContext.zza).zzc(bundle);
        }
    }

    private static OptionsProvider zzf(Context context) {
        try {
            Bundle bundle = Wrappers.packageManager(context).getApplicationInfo(context.getPackageName(), 128).metaData;
            if (bundle == null) {
                zzb.m338e("Bundle is null", new Object[0]);
            }
            String string = bundle.getString("com.google.android.gms.cast.framework.OPTIONS_PROVIDER_CLASS_NAME");
            if (string != null) {
                return (OptionsProvider) Class.forName(string).asSubclass(OptionsProvider.class).getDeclaredConstructor(null).newInstance(null);
            }
            throw new IllegalStateException("The fully qualified name of the implementation of OptionsProvider must be provided as a metadata in the AndroidManifest.xml with key com.google.android.gms.cast.framework.OPTIONS_PROVIDER_CLASS_NAME.");
        } catch (PackageManager.NameNotFoundException | ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | NullPointerException | InvocationTargetException e) {
            throw new IllegalStateException("Failed to initialize CastContext.", e);
        }
    }

    private final Map zzg() {
        HashMap map = new HashMap();
        com.google.android.gms.internal.cast.zzai zzaiVar = this.zzr;
        if (zzaiVar != null) {
            map.put(zzaiVar.getCategory(), zzaiVar.zza());
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

    private final void zzh() {
        if (TextUtils.isEmpty(this.zzk.getReceiverApplicationId())) {
            this.zzr = null;
        } else {
            this.zzr = new com.google.android.gms.internal.cast.zzai(this.zze, this.zzk, this.zzm);
        }
    }

    public void addCastStateListener(CastStateListener castStateListener) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        Preconditions.checkNotNull(castStateListener);
        this.zzg.zzc(castStateListener);
    }

    public CastOptions getCastOptions() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        return this.zzk;
    }

    public MediaRouteSelector getMergedSelector() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        try {
            return MediaRouteSelector.fromBundle(this.zzf.zze());
        } catch (RemoteException e) {
            zzb.m337d(e, "Unable to call %s on %s.", "getMergedSelectorAsBundle", zzaj.class.getSimpleName());
            return null;
        }
    }

    public SessionManager getSessionManager() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        return this.zzg;
    }

    public final zzac zzc() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        return this.zzh;
    }

    final /* synthetic */ void zze(Bundle bundle) {
        this.zzs = new CastReasonCodes(bundle);
    }

    public static CastContext getSharedInstance(Context context) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (zzd == null) {
            synchronized (zzc) {
                if (zzd == null) {
                    Context applicationContext = context.getApplicationContext();
                    OptionsProvider optionsProviderZzf = zzf(applicationContext);
                    CastOptions castOptions = optionsProviderZzf.getCastOptions(applicationContext);
                    com.google.android.gms.cast.internal.zzn zznVar = new com.google.android.gms.cast.internal.zzn(applicationContext);
                    try {
                        zzd = new CastContext(applicationContext, castOptions, optionsProviderZzf.getAdditionalSessionProviders(applicationContext), new zzbf(applicationContext, MediaRouter.getInstance(applicationContext), castOptions, zznVar), zznVar);
                    } catch (ModuleUnavailableException e) {
                        throw new RuntimeException(e);
                    }
                }
            }
        }
        return zzd;
    }
}
