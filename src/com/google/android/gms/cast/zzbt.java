package com.google.android.gms.cast;

import android.content.Context;
import android.os.Handler;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.cast.internal.zzab;
import com.google.android.gms.cast.internal.zzag;
import com.google.android.gms.cast.internal.zzai;
import com.google.android.gms.cast.internal.zzak;
import com.google.android.gms.cast.internal.zzx;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.api.internal.RegistrationMethods;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.internal.ApiExceptionUtil;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.cast.zzed;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;
import p022j$.util.DesugarCollections;

/* JADX INFO: loaded from: classes4.dex */
public final class zzbt extends GoogleApi implements zzr {
    public static final /* synthetic */ int $r8$clinit = 0;
    private static final Logger zzg = new Logger("CastClient");
    private static final Api.AbstractClientBuilder zzh;
    private static final Api zzi;
    final zzbs zza;
    TaskCompletionSource zzb;
    TaskCompletionSource zzc;
    final Map zzd;
    final Map zze;
    private Handler zzj;
    private boolean zzk;
    private boolean zzl;
    private final AtomicLong zzm;
    private final Object zzn;
    private final Object zzo;
    private ApplicationMetadata zzp;
    private String zzq;
    private double zzr;
    private boolean zzs;
    private int zzt;
    private int zzu;
    private zzav zzv;
    private final CastDevice zzw;
    private final Cast.Listener zzx;
    private final List zzy;
    private int zzz;

    static {
        zzbk zzbkVar = new zzbk();
        zzh = zzbkVar;
        zzi = new Api("Cast.API_CXLESS", zzbkVar, zzak.zzb);
    }

    zzbt(Context context, Cast.CastOptions castOptions) {
        super(context, zzi, castOptions, GoogleApi.Settings.DEFAULT_SETTINGS);
        this.zza = new zzbs(this);
        this.zzn = new Object();
        this.zzo = new Object();
        this.zzy = DesugarCollections.synchronizedList(new ArrayList());
        Preconditions.checkNotNull(context, "context cannot be null");
        Preconditions.checkNotNull(castOptions, "CastOptions cannot be null");
        this.zzx = castOptions.zzb;
        this.zzw = castOptions.zza;
        this.zzd = new HashMap();
        this.zze = new HashMap();
        this.zzm = new AtomicLong(0L);
        this.zzz = 1;
        zzn();
    }

    static /* bridge */ /* synthetic */ void zzA(zzbt zzbtVar, zzab zzabVar) {
        boolean z;
        boolean z2;
        boolean z3;
        ApplicationMetadata applicationMetadataZze = zzabVar.zze();
        if (!CastUtils.zze(applicationMetadataZze, zzbtVar.zzp)) {
            zzbtVar.zzp = applicationMetadataZze;
            zzbtVar.zzx.onApplicationMetadataChanged(applicationMetadataZze);
        }
        double dZzb = zzabVar.zzb();
        if (Double.isNaN(dZzb) || Math.abs(dZzb - zzbtVar.zzr) <= 1.0E-7d) {
            z = false;
        } else {
            zzbtVar.zzr = dZzb;
            z = true;
        }
        boolean zZzg = zzabVar.zzg();
        if (zZzg != zzbtVar.zzs) {
            zzbtVar.zzs = zZzg;
            z = true;
        }
        Logger logger = zzg;
        logger.m336d("hasVolumeChanged=%b, mFirstDeviceStatusUpdate=%b", Boolean.valueOf(z), Boolean.valueOf(zzbtVar.zzk));
        Cast.Listener listener = zzbtVar.zzx;
        if (listener != null && (z || zzbtVar.zzk)) {
            listener.onVolumeChanged();
        }
        Double.isNaN(zzabVar.zza());
        int iZzc = zzabVar.zzc();
        if (iZzc != zzbtVar.zzt) {
            zzbtVar.zzt = iZzc;
            z2 = true;
        } else {
            z2 = false;
        }
        logger.m336d("hasActiveInputChanged=%b, mFirstDeviceStatusUpdate=%b", Boolean.valueOf(z2), Boolean.valueOf(zzbtVar.zzk));
        Cast.Listener listener2 = zzbtVar.zzx;
        if (listener2 != null && (z2 || zzbtVar.zzk)) {
            listener2.onActiveInputStateChanged(zzbtVar.zzt);
        }
        int iZzd = zzabVar.zzd();
        if (iZzd != zzbtVar.zzu) {
            zzbtVar.zzu = iZzd;
            z3 = true;
        } else {
            z3 = false;
        }
        logger.m336d("hasStandbyStateChanged=%b, mFirstDeviceStatusUpdate=%b", Boolean.valueOf(z3), Boolean.valueOf(zzbtVar.zzk));
        Cast.Listener listener3 = zzbtVar.zzx;
        if (listener3 != null && (z3 || zzbtVar.zzk)) {
            listener3.onStandbyStateChanged(zzbtVar.zzu);
        }
        if (!CastUtils.zze(zzbtVar.zzv, zzabVar.zzf())) {
            zzbtVar.zzv = zzabVar.zzf();
        }
        zzbtVar.zzk = false;
    }

    static /* bridge */ /* synthetic */ void zzD(zzbt zzbtVar, Cast.ApplicationConnectionResult applicationConnectionResult) {
        synchronized (zzbtVar.zzn) {
            try {
                TaskCompletionSource taskCompletionSource = zzbtVar.zzb;
                if (taskCompletionSource != null) {
                    taskCompletionSource.setResult(applicationConnectionResult);
                }
                zzbtVar.zzb = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    static /* bridge */ /* synthetic */ void zzE(zzbt zzbtVar, long j, int i) {
        TaskCompletionSource taskCompletionSource;
        synchronized (zzbtVar.zzd) {
            Map map = zzbtVar.zzd;
            Long lValueOf = Long.valueOf(j);
            taskCompletionSource = (TaskCompletionSource) map.get(lValueOf);
            zzbtVar.zzd.remove(lValueOf);
        }
        if (taskCompletionSource != null) {
            if (i == 0) {
                taskCompletionSource.setResult(null);
            } else {
                taskCompletionSource.setException(zzP(i));
            }
        }
    }

    static /* bridge */ /* synthetic */ void zzF(zzbt zzbtVar, int i) {
        synchronized (zzbtVar.zzo) {
            try {
                TaskCompletionSource taskCompletionSource = zzbtVar.zzc;
                if (taskCompletionSource == null) {
                    return;
                }
                if (i == 0) {
                    taskCompletionSource.setResult(new Status(0));
                } else {
                    taskCompletionSource.setException(zzP(i));
                }
                zzbtVar.zzc = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static ApiException zzP(int i) {
        return ApiExceptionUtil.fromStatus(new Status(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Task zzQ(zzai zzaiVar) {
        return doUnregisterEventListener((ListenerHolder.ListenerKey) Preconditions.checkNotNull(registerListener(zzaiVar, "castDeviceControllerListenerKey").getListenerKey(), "Key must not be null"), 8415);
    }

    private final void zzR() {
        Preconditions.checkState(zzl(), "Not connected to device");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzS() {
        zzg.m336d("removing all MessageReceivedCallbacks", new Object[0]);
        synchronized (this.zze) {
            this.zze.clear();
        }
    }

    private final void zzT(TaskCompletionSource taskCompletionSource) {
        synchronized (this.zzn) {
            try {
                if (this.zzb != null) {
                    zzU(2477);
                }
                this.zzb = taskCompletionSource;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzU(int i) {
        synchronized (this.zzn) {
            try {
                TaskCompletionSource taskCompletionSource = this.zzb;
                if (taskCompletionSource != null) {
                    taskCompletionSource.setException(zzP(i));
                }
                this.zzb = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final void zzV() {
        Preconditions.checkState(this.zzz != 1, "Not active connection");
    }

    static /* bridge */ /* synthetic */ Handler zzo(zzbt zzbtVar) {
        if (zzbtVar.zzj == null) {
            zzbtVar.zzj = new zzed(zzbtVar.getLooper());
        }
        return zzbtVar.zzj;
    }

    static /* bridge */ /* synthetic */ void zzy(zzbt zzbtVar) {
        zzbtVar.zzt = -1;
        zzbtVar.zzu = -1;
        zzbtVar.zzp = null;
        zzbtVar.zzq = null;
        zzbtVar.zzr = 0.0d;
        zzbtVar.zzn();
        zzbtVar.zzs = false;
        zzbtVar.zzv = null;
    }

    static /* bridge */ /* synthetic */ void zzz(zzbt zzbtVar, com.google.android.gms.cast.internal.zza zzaVar) {
        boolean z;
        String strZza = zzaVar.zza();
        if (CastUtils.zze(strZza, zzbtVar.zzq)) {
            z = false;
        } else {
            zzbtVar.zzq = strZza;
            z = true;
        }
        zzg.m336d("hasChanged=%b, mFirstApplicationStatusUpdate=%b", Boolean.valueOf(z), Boolean.valueOf(zzbtVar.zzl));
        Cast.Listener listener = zzbtVar.zzx;
        if (listener != null && (z || zzbtVar.zzl)) {
            listener.onApplicationStatusChanged();
        }
        zzbtVar.zzl = false;
    }

    final /* synthetic */ void zzG(String str, String str2, zzbu zzbuVar, zzx zzxVar, TaskCompletionSource taskCompletionSource) {
        zzR();
        ((zzag) zzxVar.getService()).zzg(str, str2, null);
        zzT(taskCompletionSource);
    }

    final /* synthetic */ void zzH(String str, LaunchOptions launchOptions, zzx zzxVar, TaskCompletionSource taskCompletionSource) {
        zzR();
        ((zzag) zzxVar.getService()).zzh(str, launchOptions);
        zzT(taskCompletionSource);
    }

    final /* synthetic */ void zzI(Cast.MessageReceivedCallback messageReceivedCallback, String str, zzx zzxVar, TaskCompletionSource taskCompletionSource) {
        zzV();
        if (messageReceivedCallback != null) {
            ((zzag) zzxVar.getService()).zzr(str);
        }
        taskCompletionSource.setResult(null);
    }

    final /* synthetic */ void zzJ(String str, String str2, String str3, zzx zzxVar, TaskCompletionSource taskCompletionSource) {
        long jIncrementAndGet = this.zzm.incrementAndGet();
        zzR();
        try {
            this.zzd.put(Long.valueOf(jIncrementAndGet), taskCompletionSource);
            ((zzag) zzxVar.getService()).zzm(str2, str3, jIncrementAndGet);
        } catch (RemoteException e) {
            this.zzd.remove(Long.valueOf(jIncrementAndGet));
            taskCompletionSource.setException(e);
        }
    }

    final /* synthetic */ void zzK(String str, Cast.MessageReceivedCallback messageReceivedCallback, zzx zzxVar, TaskCompletionSource taskCompletionSource) {
        zzV();
        ((zzag) zzxVar.getService()).zzr(str);
        if (messageReceivedCallback != null) {
            ((zzag) zzxVar.getService()).zzk(str);
        }
        taskCompletionSource.setResult(null);
    }

    final /* synthetic */ void zzN(String str, zzx zzxVar, TaskCompletionSource taskCompletionSource) {
        zzR();
        ((zzag) zzxVar.getService()).zzp(str);
        synchronized (this.zzo) {
            try {
                if (this.zzc != null) {
                    taskCompletionSource.setException(zzP(2001));
                } else {
                    this.zzc = taskCompletionSource;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.cast.zzr
    public final Task zze() {
        ListenerHolder listenerHolderRegisterListener = registerListener(this.zza, "castDeviceControllerListenerKey");
        RegistrationMethods.Builder builder = RegistrationMethods.builder();
        return doRegisterEventListener(builder.withHolder(listenerHolderRegisterListener).register(new RemoteCall() { // from class: com.google.android.gms.cast.zzbe
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                zzx zzxVar = (zzx) obj;
                ((zzag) zzxVar.getService()).zzj(this.zza.zza);
                ((zzag) zzxVar.getService()).zze();
                ((TaskCompletionSource) obj2).setResult(null);
            }
        }).unregister(new RemoteCall() { // from class: com.google.android.gms.cast.zzbf
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                int i = zzbt.$r8$clinit;
                ((zzag) ((zzx) obj).getService()).zzq();
                ((TaskCompletionSource) obj2).setResult(Boolean.TRUE);
            }
        }).setFeatures(zzax.zzb).setMethodKey(8428).build());
    }

    @Override // com.google.android.gms.cast.zzr
    public final Task zzf() {
        Task taskDoWrite = doWrite(TaskApiCall.builder().run(new RemoteCall() { // from class: com.google.android.gms.cast.zzba
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                int i = zzbt.$r8$clinit;
                ((zzag) ((zzx) obj).getService()).zzf();
                ((TaskCompletionSource) obj2).setResult(null);
            }
        }).setMethodKey(8403).build());
        zzS();
        zzQ(this.zza);
        return taskDoWrite;
    }

    @Override // com.google.android.gms.cast.zzr
    public final Task zzg(final String str) {
        final Cast.MessageReceivedCallback messageReceivedCallback;
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Channel namespace cannot be null or empty");
        }
        synchronized (this.zze) {
            messageReceivedCallback = (Cast.MessageReceivedCallback) this.zze.remove(str);
        }
        return doWrite(TaskApiCall.builder().run(new RemoteCall() { // from class: com.google.android.gms.cast.zzbb
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                this.zza.zzI(messageReceivedCallback, str, (zzx) obj, (TaskCompletionSource) obj2);
            }
        }).setMethodKey(8414).build());
    }

    @Override // com.google.android.gms.cast.zzr
    public final Task zzh(final String str, final String str2) {
        CastUtils.throwIfInvalidNamespace(str);
        if (TextUtils.isEmpty(str2)) {
            throw new IllegalArgumentException("The message payload cannot be null or empty");
        }
        if (str2.length() <= 524288) {
            final String str3 = null;
            return doWrite(TaskApiCall.builder().run(new RemoteCall(str3, str, str2) { // from class: com.google.android.gms.cast.zzbg
                public final /* synthetic */ String zzb;
                public final /* synthetic */ String zzc;

                {
                    this.zzb = str;
                    this.zzc = str2;
                }

                @Override // com.google.android.gms.common.api.internal.RemoteCall
                public final void accept(Object obj, Object obj2) {
                    this.zza.zzJ(null, this.zzb, this.zzc, (zzx) obj, (TaskCompletionSource) obj2);
                }
            }).setMethodKey(8405).build());
        }
        zzg.m341w("Message send failed. Message exceeds maximum size", new Object[0]);
        throw new IllegalArgumentException("Message exceeds maximum size524288");
    }

    @Override // com.google.android.gms.cast.zzr
    public final Task zzi(final String str, final Cast.MessageReceivedCallback messageReceivedCallback) {
        CastUtils.throwIfInvalidNamespace(str);
        if (messageReceivedCallback != null) {
            synchronized (this.zze) {
                this.zze.put(str, messageReceivedCallback);
            }
        }
        return doWrite(TaskApiCall.builder().run(new RemoteCall() { // from class: com.google.android.gms.cast.zzbh
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                this.zza.zzK(str, messageReceivedCallback, (zzx) obj, (TaskCompletionSource) obj2);
            }
        }).setMethodKey(8413).build());
    }

    @Override // com.google.android.gms.cast.zzr
    public final void zzk(zzq zzqVar) {
        Preconditions.checkNotNull(zzqVar);
        this.zzy.add(zzqVar);
    }

    @Override // com.google.android.gms.cast.zzr
    public final boolean zzl() {
        return this.zzz == 2;
    }

    final double zzn() {
        if (this.zzw.hasCapability(2048)) {
            return 0.02d;
        }
        return (!this.zzw.hasCapability(4) || this.zzw.hasCapability(1) || "Chromecast Audio".equals(this.zzw.getModelName())) ? 0.05d : 0.02d;
    }
}
