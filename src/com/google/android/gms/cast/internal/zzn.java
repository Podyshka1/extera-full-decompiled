package com.google.android.gms.cast.internal;

import android.content.Context;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.internal.cast.zzff;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzn extends GoogleApi {
    private static final Api.ClientKey zza;
    private static final Api.AbstractClientBuilder zzb;
    private static final Api zzc;

    static {
        Api.ClientKey clientKey = new Api.ClientKey();
        zza = clientKey;
        zze zzeVar = new zze();
        zzb = zzeVar;
        zzc = new Api("CastApi.API", zzeVar, clientKey);
    }

    public zzn(Context context) {
        super(context, (Api<Api.ApiOptions.NoOptions>) zzc, Api.ApiOptions.NO_OPTIONS, GoogleApi.Settings.DEFAULT_SETTINGS);
    }

    public final Task zza(final String[] strArr, final String str, List list) {
        final List list2 = null;
        return doWrite(TaskApiCall.builder().setMethodKey(8423).run(new RemoteCall(strArr, str, list2) { // from class: com.google.android.gms.cast.internal.zzm
            private final /* synthetic */ String[] zzb;
            private final /* synthetic */ String zzc;

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final /* synthetic */ void accept(Object obj, Object obj2) {
                zzo zzoVar = (zzo) obj;
                zzf zzfVar = new zzf(this.zza, (TaskCompletionSource) obj2);
                ((zzak) zzoVar.getService()).zze(zzfVar, this.zzb, this.zzc, null, zzff.zza(zzoVar.getContext()));
            }
        }).build());
    }

    public final Task zzb(final String[] strArr) {
        return doRead(TaskApiCall.builder().run(new RemoteCall() { // from class: com.google.android.gms.cast.internal.zzj
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final /* synthetic */ void accept(Object obj, Object obj2) {
                zzo zzoVar = (zzo) obj;
                zzg zzgVar = new zzg(this.zza, (TaskCompletionSource) obj2);
                ((zzak) zzoVar.getService()).zzf(zzgVar, strArr, zzff.zza(zzoVar.getContext()));
            }
        }).setFeatures(com.google.android.gms.cast.zzaq.zzd).setAutoResolveMissingFeatures(false).setMethodKey(8425).build());
    }

    public final Task zzc(final String[] strArr) {
        return doRead(TaskApiCall.builder().run(new RemoteCall() { // from class: com.google.android.gms.cast.internal.zzk
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final /* synthetic */ void accept(Object obj, Object obj2) {
                zzo zzoVar = (zzo) obj;
                zzh zzhVar = new zzh(this.zza, (TaskCompletionSource) obj2);
                ((zzak) zzoVar.getService()).zzg(zzhVar, strArr, zzff.zza(zzoVar.getContext()));
            }
        }).setFeatures(com.google.android.gms.cast.zzaq.zzg).setAutoResolveMissingFeatures(false).setMethodKey(8426).build());
    }

    public final Task zzd(final String[] strArr) {
        return doRead(TaskApiCall.builder().run(new RemoteCall() { // from class: com.google.android.gms.cast.internal.zzl
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final /* synthetic */ void accept(Object obj, Object obj2) {
                zzo zzoVar = (zzo) obj;
                zzi zziVar = new zzi(this.zza, (TaskCompletionSource) obj2);
                ((zzak) zzoVar.getService()).zzh(zziVar, strArr, zzff.zza(zzoVar.getContext()));
            }
        }).setFeatures(com.google.android.gms.cast.zzaq.zzh).setAutoResolveMissingFeatures(false).setMethodKey(8427).build());
    }
}
