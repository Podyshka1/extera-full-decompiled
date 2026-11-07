package com.google.android.gms.internal.cast;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.Event;
import com.google.android.datatransport.Transport;
import com.google.android.datatransport.cct.CCTDestination;
import com.google.android.datatransport.runtime.TransportRuntime;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.SessionManager;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.OnSuccessListener;
import java.util.Locale;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.checkerframework.dataflow.qual.Pure;

/* JADX INFO: loaded from: classes4.dex */
public final class zzj {
    Transport zzb;
    private final Context zzd;
    private final com.google.android.gms.cast.internal.zzn zze;
    private final SessionManager zzf;
    private final zzce zzg;
    private final zzax zzh;
    private Long zzj;
    private final ExecutorService zzk;
    private zzcn zzl;
    private static final Logger zzc = new Logger("ClientCastAnalytics");
    public static boolean zza = true;
    private int zzm = 1;
    private final String zzi = UUID.randomUUID().toString();

    private zzj(Context context, com.google.android.gms.cast.internal.zzn zznVar, SessionManager sessionManager, zzce zzceVar, zzax zzaxVar) {
        this.zzd = context;
        this.zze = zznVar;
        this.zzf = sessionManager;
        this.zzg = zzceVar;
        this.zzh = zzaxVar;
        zzfj.zza();
        this.zzk = Executors.unconfigurableExecutorService(Executors.newCachedThreadPool());
    }

    public static zzj zza(Context context, com.google.android.gms.cast.internal.zzn zznVar, SessionManager sessionManager, zzce zzceVar, zzax zzaxVar) {
        return new zzj(context, zznVar, sessionManager, zzceVar, zzaxVar);
    }

    public final void zzb(Bundle bundle) {
        final int i = bundle.containsKey("com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_MODE") ? bundle.getInt("com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_MODE", 0) : (bundle.containsKey("com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_ENABLED") && bundle.getBoolean("com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_ENABLED", false)) ? 1 : 0;
        boolean z = bundle.getBoolean("com.google.android.gms.cast.FLAG_CLIENT_FEATURE_USAGE_ANALYTICS_ENABLED", false);
        boolean z2 = bundle.getBoolean("com.google.android.gms.cast.FLAG_CLIENT_ANALYTICS_ENABLED", false);
        zza = z2;
        if (i == 0) {
            if (!z && !z2) {
                return;
            } else {
                i = 0;
            }
        }
        long j = bundle.getLong("com.google.android.gms.cast.FLAG_ANALYTICS_CONSENT_TIMEOUT_SECONDS", 5L);
        Context context = this.zzd;
        this.zzl = new zzcn(context, j);
        final String packageName = context.getPackageName();
        String str = String.format(Locale.ROOT, "%s.%s", packageName, "client_cast_analytics_data");
        this.zzm = bundle.getLong("com.google.android.gms.cast.FLAG_FIRELOG_UPLOAD_MODE") != 0 ? 2 : 1;
        TransportRuntime.initialize(context);
        this.zzb = TransportRuntime.getInstance().newFactory(CCTDestination.INSTANCE).getTransport("CAST_SENDER_SDK", zzqr.class, Encoding.of("proto"), zzf.zza);
        if (bundle.containsKey("com.google.android.gms.cast.FLAG_ANALYTICS_LOGGING_BUCKET_SIZE")) {
            this.zzj = Long.valueOf(bundle.getLong("com.google.android.gms.cast.FLAG_ANALYTICS_LOGGING_BUCKET_SIZE"));
        }
        final SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences(str, 0);
        if (i != 0) {
            this.zze.zzc(new String[]{"com.google.android.gms.cast.DICTIONARY_CAST_STATUS_CODES_TO_APP_SESSION_ERROR", "com.google.android.gms.cast.DICTIONARY_CAST_STATUS_CODES_TO_APP_SESSION_CHANGE_REASON"}).addOnSuccessListener(new OnSuccessListener() { // from class: com.google.android.gms.internal.cast.zzi
                @Override // com.google.android.gms.tasks.OnSuccessListener
                public final /* synthetic */ void onSuccess(Object obj) {
                    this.zza.zzc(packageName, i, sharedPreferences, (Bundle) obj);
                }
            });
        }
        if (z) {
            Preconditions.checkNotNull(sharedPreferences);
            zzr.zza(sharedPreferences, this, packageName).zzc();
            zzr.zzb(zzpm.CAST_CONTEXT);
        }
        if (zza) {
            zzu.zza(this, packageName);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final /* synthetic */ void zzc(String str, int i, SharedPreferences sharedPreferences, Bundle bundle) {
        SessionManager sessionManager = this.zzf;
        Preconditions.checkNotNull(sessionManager);
        zzce zzceVar = this.zzg;
        if (i == 3) {
            zzy zzyVar = new zzy(this, this.zzh, str);
            sessionManager.addSessionManagerListener(new zzw(zzyVar), CastSession.class);
            if (zzceVar != null) {
                zzceVar.zzc(new zzx(zzyVar));
            }
        } else if (i == 2) {
            i = 2;
            zzy zzyVar2 = new zzy(this, this.zzh, str);
            sessionManager.addSessionManagerListener(new zzw(zzyVar2), CastSession.class);
            if (zzceVar != null) {
            }
        }
        if (i == 1 || i == 2) {
            zzn zznVar = new zzn(sharedPreferences, this, this.zzh, bundle, str);
            sessionManager.addSessionManagerListener(new zzl(zznVar), CastSession.class);
            if (zzceVar != null) {
                zzceVar.zzc(new zzm(zznVar));
            }
        }
    }

    @Pure
    public final void zzd(final zzqr zzqrVar, final int i) {
        this.zzk.execute(new Runnable() { // from class: com.google.android.gms.internal.cast.zzg
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                this.zza.zze(zzqrVar, i);
            }
        });
    }

    public final /* synthetic */ void zze(final zzqr zzqrVar, final int i) {
        zzcn zzcnVar = this.zzl;
        if (zzcnVar == null) {
            return;
        }
        zzcnVar.zza().addOnSuccessListener(new OnSuccessListener() { // from class: com.google.android.gms.internal.cast.zzh
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final /* synthetic */ void onSuccess(Object obj) {
                this.zza.zzf(zzqrVar, i, (Boolean) obj);
            }
        });
    }

    public final /* synthetic */ void zzf(zzqr zzqrVar, int i, Boolean bool) {
        if (bool.booleanValue()) {
            zzqq zzqqVarZzd = zzqr.zzd(zzqrVar);
            String str = this.zzi;
            zzqqVarZzd.zzc(str);
            zzqqVarZzd.zzd(str);
            Long l = this.zzj;
            if (l != null) {
                zzqqVarZzd.zze((int) l.longValue());
            }
            zzqr zzqrVar2 = (zzqr) zzqqVarZzd.zzu();
            int i2 = this.zzm;
            int i3 = i2 - 1;
            if (i2 == 0) {
                throw null;
            }
            int i4 = i - 1;
            Event eventOfTelemetry = (i3 == 0 || i3 != 1) ? Event.ofTelemetry(i4, zzqrVar2) : Event.ofData(i4, zzqrVar2);
            zzc.m311d("analytics event: %s", eventOfTelemetry);
            Preconditions.checkNotNull(eventOfTelemetry);
            Transport transport = this.zzb;
            if (transport != null) {
                transport.send(eventOfTelemetry);
            }
        }
    }
}
