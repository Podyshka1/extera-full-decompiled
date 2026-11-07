package com.google.android.gms.cast;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Handler;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.ApiMetadata;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.api.internal.RegistrationMethods;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.internal.ApiExceptionUtil;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.cast.zzff;
import com.google.android.gms.internal.cast.zzfk;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
@SuppressLint({"UseSparseArrays"})
public final class zzbm extends GoogleApi implements zzq {
    public static final /* synthetic */ int zzf = 0;
    private static final Logger zzg = new Logger("CastClient");
    private static final Api.AbstractClientBuilder zzh;
    private static final Api zzi;
    final zzbl zza;
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
    private zzao zzv;
    private final CastDevice zzw;
    private final Cast.Listener zzx;
    private final List zzy;
    private int zzz;

    static {
        zzar zzarVar = new zzar();
        zzh = zzarVar;
        zzi = new Api("Cast.API_CXLESS", zzarVar, com.google.android.gms.cast.internal.zzal.zzb);
    }

    public zzbm(Context context, Cast.CastOptions castOptions) {
        super(context, (Api<Cast.CastOptions>) zzi, castOptions, GoogleApi.Settings.DEFAULT_SETTINGS);
        this.zza = new zzbl(this);
        this.zzn = new Object();
        this.zzo = new Object();
        this.zzy = Collections.synchronizedList(new ArrayList());
        Preconditions.checkNotNull(context, "context cannot be null");
        Preconditions.checkNotNull(castOptions, "CastOptions cannot be null");
        this.zzx = castOptions.zzb;
        this.zzw = castOptions.zza;
        this.zzd = new HashMap();
        this.zze = new HashMap();
        this.zzm = new AtomicLong(0L);
        this.zzz = 1;
        zzt();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: zzV, reason: merged with bridge method [inline-methods] */
    public final Task zzC(com.google.android.gms.cast.internal.zzaj zzajVar) {
        return doUnregisterEventListener((ListenerHolder.ListenerKey) Preconditions.checkNotNull(registerListener(zzajVar, "castDeviceControllerListenerKey").getListenerKey(), "Key must not be null"), 8415);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: zzW, reason: merged with bridge method [inline-methods] */
    public final void zzD() {
        zzg.m311d("removing all MessageReceivedCallbacks", new Object[0]);
        Map map = this.zze;
        synchronized (map) {
            map.clear();
        }
    }

    private final void zzX() {
        Preconditions.checkState(this.zzz != 1, "Not active connection");
    }

    private final void zzY() {
        Preconditions.checkState(zza(), "Not connected to device");
    }

    private final void zzZ(TaskCompletionSource taskCompletionSource) {
        synchronized (this.zzn) {
            try {
                if (this.zzb != null) {
                    zzH(2477);
                }
                this.zzb = taskCompletionSource;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: zzaa, reason: merged with bridge method [inline-methods] */
    public final void zzH(int i) {
        synchronized (this.zzn) {
            try {
                TaskCompletionSource taskCompletionSource = this.zzb;
                if (taskCompletionSource != null) {
                    taskCompletionSource.setException(zzab(i));
                }
                this.zzb = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static ApiException zzab(int i) {
        return ApiExceptionUtil.fromStatus(new Status(i));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final /* synthetic */ void zzA(String str, Cast.MessageReceivedCallback messageReceivedCallback, com.google.android.gms.cast.internal.zzy zzyVar, TaskCompletionSource taskCompletionSource) {
        zzX();
        ApiMetadata apiMetadataZza = zzff.zza(zzyVar.getContext());
        ((com.google.android.gms.cast.internal.zzah) zzyVar.getService()).zzm(str, apiMetadataZza);
        if (messageReceivedCallback != null) {
            ((com.google.android.gms.cast.internal.zzah) zzyVar.getService()).zzl(str, apiMetadataZza);
        }
        taskCompletionSource.setResult(null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final /* synthetic */ void zzB(Cast.MessageReceivedCallback messageReceivedCallback, String str, com.google.android.gms.cast.internal.zzy zzyVar, TaskCompletionSource taskCompletionSource) {
        zzX();
        if (messageReceivedCallback != null) {
            ((com.google.android.gms.cast.internal.zzah) zzyVar.getService()).zzm(str, zzff.zza(zzyVar.getContext()));
        }
        taskCompletionSource.setResult(null);
    }

    public final /* synthetic */ void zzE(com.google.android.gms.cast.internal.zzac zzacVar) {
        boolean z;
        boolean z2;
        ApplicationMetadata applicationMetadataZze = zzacVar.zze();
        if (!CastUtils.zza(applicationMetadataZze, this.zzp)) {
            this.zzp = applicationMetadataZze;
            this.zzx.onApplicationMetadataChanged(applicationMetadataZze);
        }
        double dZza = zzacVar.zza();
        boolean z3 = true;
        if (Double.isNaN(dZza) || Math.abs(dZza - this.zzr) <= 1.0E-7d) {
            z = false;
        } else {
            this.zzr = dZza;
            z = true;
        }
        boolean zZzb = zzacVar.zzb();
        if (zZzb != this.zzs) {
            this.zzs = zZzb;
            z = true;
        }
        Logger logger = zzg;
        logger.m311d("hasVolumeChanged=%b, mFirstDeviceStatusUpdate=%b", Boolean.valueOf(z), Boolean.valueOf(this.zzk));
        Cast.Listener listener = this.zzx;
        if (listener != null && (z || this.zzk)) {
            listener.onVolumeChanged();
        }
        Double.isNaN(zzacVar.zzg());
        int iZzc = zzacVar.zzc();
        if (iZzc != this.zzt) {
            this.zzt = iZzc;
            z2 = true;
        } else {
            z2 = false;
        }
        logger.m311d("hasActiveInputChanged=%b, mFirstDeviceStatusUpdate=%b", Boolean.valueOf(z2), Boolean.valueOf(this.zzk));
        if (listener != null && (z2 || this.zzk)) {
            listener.onActiveInputStateChanged(this.zzt);
        }
        int iZzd = zzacVar.zzd();
        if (iZzd != this.zzu) {
            this.zzu = iZzd;
        } else {
            z3 = false;
        }
        logger.m311d("hasStandbyStateChanged=%b, mFirstDeviceStatusUpdate=%b", Boolean.valueOf(z3), Boolean.valueOf(this.zzk));
        if (listener != null && (z3 || this.zzk)) {
            listener.onStandbyStateChanged(this.zzu);
        }
        if (!CastUtils.zza(this.zzv, zzacVar.zzf())) {
            this.zzv = zzacVar.zzf();
        }
        this.zzk = false;
    }

    public final /* synthetic */ void zzF(com.google.android.gms.cast.internal.zza zzaVar) {
        boolean z;
        String strZza = zzaVar.zza();
        if (CastUtils.zza(strZza, this.zzq)) {
            z = false;
        } else {
            this.zzq = strZza;
            z = true;
        }
        zzg.m311d("hasChanged=%b, mFirstApplicationStatusUpdate=%b", Boolean.valueOf(z), Boolean.valueOf(this.zzl));
        Cast.Listener listener = this.zzx;
        if (listener != null && (z || this.zzl)) {
            listener.onApplicationStatusChanged();
        }
        this.zzl = false;
    }

    public final /* synthetic */ void zzG(Cast.ApplicationConnectionResult applicationConnectionResult) {
        synchronized (this.zzn) {
            try {
                TaskCompletionSource taskCompletionSource = this.zzb;
                if (taskCompletionSource != null) {
                    taskCompletionSource.setResult(applicationConnectionResult);
                }
                this.zzb = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final /* synthetic */ void zzI(int i) {
        synchronized (this.zzo) {
            try {
                TaskCompletionSource taskCompletionSource = this.zzc;
                if (taskCompletionSource == null) {
                    return;
                }
                if (i == 0) {
                    taskCompletionSource.setResult(new Status(0));
                } else {
                    taskCompletionSource.setException(zzab(i));
                }
                this.zzc = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final /* synthetic */ void zzJ(long j, int i) {
        TaskCompletionSource taskCompletionSource;
        Map map = this.zzd;
        synchronized (map) {
            Long lValueOf = Long.valueOf(j);
            taskCompletionSource = (TaskCompletionSource) map.get(lValueOf);
            map.remove(lValueOf);
        }
        if (taskCompletionSource != null) {
            if (i == 0) {
                taskCompletionSource.setResult(null);
            } else {
                taskCompletionSource.setException(zzab(i));
            }
        }
    }

    public final /* synthetic */ Handler zzK() {
        if (this.zzj == null) {
            this.zzj = new zzfk(getLooper());
        }
        return this.zzj;
    }

    public final /* synthetic */ void zzL() {
        this.zzt = -1;
        this.zzu = -1;
        this.zzp = null;
        this.zzq = null;
        this.zzr = 0.0d;
        zzt();
        this.zzs = false;
        this.zzv = null;
    }

    public final /* synthetic */ void zzN(boolean z) {
        this.zzk = true;
    }

    public final /* synthetic */ void zzO(boolean z) {
        this.zzl = true;
    }

    public final /* synthetic */ void zzP(ApplicationMetadata applicationMetadata) {
        this.zzp = applicationMetadata;
    }

    public final /* synthetic */ void zzQ(String str) {
        this.zzq = str;
    }

    public final /* synthetic */ CastDevice zzR() {
        return this.zzw;
    }

    public final /* synthetic */ Cast.Listener zzS() {
        return this.zzx;
    }

    public final /* synthetic */ List zzT() {
        return this.zzy;
    }

    public final /* synthetic */ void zzU(int i) {
        this.zzz = i;
    }

    @Override // com.google.android.gms.cast.zzq
    public final boolean zza() {
        return this.zzz == 3;
    }

    @Override // com.google.android.gms.cast.zzq
    public final void zzb(zzp zzpVar) {
        Preconditions.checkNotNull(zzpVar);
        this.zzy.add(zzpVar);
    }

    @Override // com.google.android.gms.cast.zzq
    public final Task zzc() {
        ListenerHolder listenerHolderRegisterListener = registerListener(this.zza, "castDeviceControllerListenerKey");
        RegistrationMethods.Builder builder = RegistrationMethods.builder();
        RemoteCall remoteCall = new RemoteCall() { // from class: com.google.android.gms.cast.zzbd
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final /* synthetic */ void accept(Object obj, Object obj2) {
                com.google.android.gms.cast.internal.zzy zzyVar = (com.google.android.gms.cast.internal.zzy) obj;
                ((com.google.android.gms.cast.internal.zzah) zzyVar.getService()).zzq(this.zza.zza, zzff.zza(zzyVar.getContext()));
                ((com.google.android.gms.cast.internal.zzah) zzyVar.getService()).zzp(zzff.zza(zzyVar.getContext()));
                ((TaskCompletionSource) obj2).setResult(null);
            }
        };
        zzas zzasVar = zzas.zza;
        this.zzz = 2;
        return doRegisterEventListener(builder.withHolder(listenerHolderRegisterListener).register(remoteCall).unregister(zzasVar).setFeatures(zzaq.zzb).setMethodKey(8428).build());
    }

    @Override // com.google.android.gms.cast.zzq
    public final Task zzd() {
        Task taskDoWrite = doWrite(TaskApiCall.builder().run(zzau.zza).setMethodKey(8403).build());
        zzD();
        zzC(this.zza);
        return taskDoWrite;
    }

    @Override // com.google.android.gms.cast.zzq
    public final Task zze() {
        return doWrite(TaskApiCall.builder().run(zzav.zza).setMethodKey(8404).build());
    }

    @Override // com.google.android.gms.cast.zzq
    public final Task zzf(final String str, final String str2) {
        CastUtils.throwIfInvalidNamespace(str);
        final String str3 = null;
        if (TextUtils.isEmpty(str2)) {
            f$$ExternalSyntheticBUOutline1.m215m("The message payload cannot be null or empty");
            return null;
        }
        if (str2.length() <= 524288) {
            return doWrite(TaskApiCall.builder().run(new RemoteCall(str3, str, str2) { // from class: com.google.android.gms.cast.zzaw
                private final /* synthetic */ String zzb;
                private final /* synthetic */ String zzc;

                {
                    this.zzb = str;
                    this.zzc = str2;
                }

                @Override // com.google.android.gms.common.api.internal.RemoteCall
                public final /* synthetic */ void accept(Object obj, Object obj2) {
                    zzbm zzbmVar = this.zza;
                    zzbmVar.zzu(null, this.zzb, this.zzc, (com.google.android.gms.cast.internal.zzy) obj, (TaskCompletionSource) obj2);
                }
            }).setMethodKey(8405).build());
        }
        zzg.m318w("Message send failed. Message exceeds maximum size", new Object[0]);
        f$$ExternalSyntheticBUOutline1.m215m("Message exceeds maximum size524288");
        return null;
    }

    @Override // com.google.android.gms.cast.zzq
    public final Task zzg(final String str, final LaunchOptions launchOptions) {
        return doWrite(TaskApiCall.builder().run(new RemoteCall() { // from class: com.google.android.gms.cast.zzax
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final /* synthetic */ void accept(Object obj, Object obj2) {
                this.zza.zzv(str, launchOptions, (com.google.android.gms.cast.internal.zzy) obj, (TaskCompletionSource) obj2);
            }
        }).setMethodKey(8406).build());
    }

    @Override // com.google.android.gms.cast.zzq
    public final Task zzh(final String str) {
        return doWrite(TaskApiCall.builder().run(new RemoteCall() { // from class: com.google.android.gms.cast.zzaz
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final /* synthetic */ void accept(Object obj, Object obj2) {
                this.zza.zzx(str, (com.google.android.gms.cast.internal.zzy) obj, (TaskCompletionSource) obj2);
            }
        }).setMethodKey(8409).build());
    }

    @Override // com.google.android.gms.cast.zzq
    public final Task zzi(final double d) {
        if (!Double.isInfinite(d) && !Double.isNaN(d)) {
            return doWrite(TaskApiCall.builder().run(new RemoteCall() { // from class: com.google.android.gms.cast.zzba
                @Override // com.google.android.gms.common.api.internal.RemoteCall
                public final /* synthetic */ void accept(Object obj, Object obj2) {
                    this.zza.zzy(d, (com.google.android.gms.cast.internal.zzy) obj, (TaskCompletionSource) obj2);
                }
            }).setMethodKey(8411).build());
        }
        StringBuilder sb = new StringBuilder(String.valueOf(d).length() + 17);
        sb.append("Volume cannot be ");
        sb.append(d);
        throw new IllegalArgumentException(sb.toString());
    }

    @Override // com.google.android.gms.cast.zzq
    public final double zzj() {
        zzY();
        return this.zzr;
    }

    @Override // com.google.android.gms.cast.zzq
    public final Task zzk(final boolean z) {
        return doWrite(TaskApiCall.builder().run(new RemoteCall() { // from class: com.google.android.gms.cast.zzbb
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final /* synthetic */ void accept(Object obj, Object obj2) {
                this.zza.zzz(z, (com.google.android.gms.cast.internal.zzy) obj, (TaskCompletionSource) obj2);
            }
        }).setMethodKey(8412).build());
    }

    @Override // com.google.android.gms.cast.zzq
    public final boolean zzl() {
        zzY();
        return this.zzs;
    }

    @Override // com.google.android.gms.cast.zzq
    public final int zzm() {
        zzY();
        return this.zzt;
    }

    @Override // com.google.android.gms.cast.zzq
    public final int zzn() {
        zzY();
        return this.zzu;
    }

    @Override // com.google.android.gms.cast.zzq
    public final ApplicationMetadata zzo() {
        zzY();
        return this.zzp;
    }

    @Override // com.google.android.gms.cast.zzq
    public final String zzp() {
        zzY();
        return this.zzq;
    }

    @Override // com.google.android.gms.cast.zzq
    public final Task zzq(final String str, final Cast.MessageReceivedCallback messageReceivedCallback) {
        CastUtils.throwIfInvalidNamespace(str);
        if (messageReceivedCallback != null) {
            Map map = this.zze;
            synchronized (map) {
                map.put(str, messageReceivedCallback);
            }
        }
        return doWrite(TaskApiCall.builder().run(new RemoteCall() { // from class: com.google.android.gms.cast.zzbc
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final /* synthetic */ void accept(Object obj, Object obj2) {
                this.zza.zzA(str, messageReceivedCallback, (com.google.android.gms.cast.internal.zzy) obj, (TaskCompletionSource) obj2);
            }
        }).setMethodKey(8413).build());
    }

    @Override // com.google.android.gms.cast.zzq
    public final Task zzr(final String str) {
        final Cast.MessageReceivedCallback messageReceivedCallback;
        if (TextUtils.isEmpty(str)) {
            f$$ExternalSyntheticBUOutline1.m215m("Channel namespace cannot be null or empty");
            return null;
        }
        Map map = this.zze;
        synchronized (map) {
            messageReceivedCallback = (Cast.MessageReceivedCallback) map.remove(str);
        }
        return doWrite(TaskApiCall.builder().run(new RemoteCall() { // from class: com.google.android.gms.cast.zzat
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final /* synthetic */ void accept(Object obj, Object obj2) {
                this.zza.zzB(messageReceivedCallback, str, (com.google.android.gms.cast.internal.zzy) obj, (TaskCompletionSource) obj2);
            }
        }).setMethodKey(8414).build());
    }

    public final Task zzs(final String str, final String str2, zzbn zzbnVar) {
        final zzbn zzbnVar2 = null;
        return doWrite(TaskApiCall.builder().run(new RemoteCall(str, str2, zzbnVar2) { // from class: com.google.android.gms.cast.zzay
            private final /* synthetic */ String zzb;
            private final /* synthetic */ String zzc;

            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final /* synthetic */ void accept(Object obj, Object obj2) {
                zzbm zzbmVar = this.zza;
                String str3 = this.zzb;
                String str4 = this.zzc;
                zzbmVar.zzw(str3, str4, null, (com.google.android.gms.cast.internal.zzy) obj, (TaskCompletionSource) obj2);
            }
        }).setMethodKey(8407).build());
    }

    @RequiresNonNull({"device"})
    public final double zzt() {
        CastDevice castDevice = this.zzw;
        if (castDevice.hasCapability(2048)) {
            return 0.02d;
        }
        return (!castDevice.hasCapability(4) || castDevice.hasCapability(1) || "Chromecast Audio".equals(castDevice.getModelName())) ? 0.05d : 0.02d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final /* synthetic */ void zzu(String str, String str2, String str3, com.google.android.gms.cast.internal.zzy zzyVar, TaskCompletionSource taskCompletionSource) {
        long jIncrementAndGet = this.zzm.incrementAndGet();
        zzY();
        try {
            this.zzd.put(Long.valueOf(jIncrementAndGet), taskCompletionSource);
            ((com.google.android.gms.cast.internal.zzah) zzyVar.getService()).zzk(str2, str3, jIncrementAndGet, zzff.zza(zzyVar.getContext()));
        } catch (RemoteException e) {
            this.zzd.remove(Long.valueOf(jIncrementAndGet));
            taskCompletionSource.setException(e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final /* synthetic */ void zzv(String str, LaunchOptions launchOptions, com.google.android.gms.cast.internal.zzy zzyVar, TaskCompletionSource taskCompletionSource) {
        zzY();
        ((com.google.android.gms.cast.internal.zzah) zzyVar.getService()).zzn(str, launchOptions, zzff.zza(zzyVar.getContext()));
        zzZ(taskCompletionSource);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final /* synthetic */ void zzw(String str, String str2, zzbn zzbnVar, com.google.android.gms.cast.internal.zzy zzyVar, TaskCompletionSource taskCompletionSource) {
        zzY();
        ((com.google.android.gms.cast.internal.zzah) zzyVar.getService()).zzo(str, str2, null, zzff.zza(zzyVar.getContext()));
        zzZ(taskCompletionSource);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final /* synthetic */ void zzx(String str, com.google.android.gms.cast.internal.zzy zzyVar, TaskCompletionSource taskCompletionSource) {
        zzY();
        ((com.google.android.gms.cast.internal.zzah) zzyVar.getService()).zzg(str, zzff.zza(zzyVar.getContext()));
        synchronized (this.zzo) {
            try {
                if (this.zzc != null) {
                    taskCompletionSource.setException(zzab(CastStatusCodes.INVALID_REQUEST));
                } else {
                    this.zzc = taskCompletionSource;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final /* synthetic */ void zzy(double d, com.google.android.gms.cast.internal.zzy zzyVar, TaskCompletionSource taskCompletionSource) {
        ((com.google.android.gms.cast.internal.zzah) zzyVar.getService()).zzi(d, this.zzr, this.zzs, zzff.zza(zzyVar.getContext()));
        taskCompletionSource.setResult(null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final /* synthetic */ void zzz(boolean z, com.google.android.gms.cast.internal.zzy zzyVar, TaskCompletionSource taskCompletionSource) {
        ((com.google.android.gms.cast.internal.zzah) zzyVar.getService()).zzj(z, this.zzr, this.zzs, zzff.zza(zzyVar.getContext()));
        taskCompletionSource.setResult(null);
    }
}
