package com.google.android.gms.internal.internal;

import android.content.Context;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.recaptchabase.ExecuteRequest;
import com.google.android.gms.recaptchabase.ExecuteResult;
import com.google.android.gms.recaptchabase.InitRequest;
import com.google.android.gms.recaptchabase.InitResult;
import com.google.android.gms.recaptchabase.RecaptchaBaseClient;
import com.google.android.gms.recaptchabase.zze;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import kotlin.Metadata;

/* JADX INFO: renamed from: com.google.android.gms.internal.recaptchabase.zzl, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001\u0017B%\b\u0017\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00020\u0006¢\u0006\u0004\b\t\u0010\nB\u0011\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\t\u0010\u000bJ\u001d\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u001d\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u000e2\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0015\u0010\u0016¨\u0006\u0018"}, d2 = {"Lcom/google/android/gms/recaptchabase/internal/InternalRecaptchaBaseClient;", "Lcom/google/android/gms/common/api/GoogleApi;", "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;", "Lcom/google/android/gms/recaptchabase/RecaptchaBaseClient;", "Landroid/content/Context;", "context", "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;", "Lcom/google/android/gms/recaptchabase/internal/RecaptchaBaseClientImpl;", "clientBuilder", "<init>", "(Landroid/content/Context;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;)V", "(Landroid/content/Context;)V", "Lcom/google/android/gms/recaptchabase/ExecuteRequest;", "executeRequest", "Lcom/google/android/gms/tasks/Task;", "Lcom/google/android/gms/recaptchabase/ExecuteResult;", "execute", "(Lcom/google/android/gms/recaptchabase/ExecuteRequest;)Lcom/google/android/gms/tasks/Task;", "Lcom/google/android/gms/recaptchabase/InitRequest;", "initRequest", "Lcom/google/android/gms/recaptchabase/InitResult;", "init", "(Lcom/google/android/gms/recaptchabase/InitRequest;)Lcom/google/android/gms/tasks/Task;", "Companion", "java.com.google.android.gmscore.integ.client.recaptchabase_recaptchabase_kt"}, m910k = 1, mv = {2, 0, 0}, xi = 48)
public final class InternalRecaptchaBaseClient extends GoogleApi implements RecaptchaBaseClient {
    public static final /* synthetic */ int $r8$clinit = 0;
    private static final zzi zzb;
    private static final Api.ClientKey zzc;
    private static final Api zzd;

    static {
        zzi zziVar = new zzi();
        zzb = zziVar;
        Api.ClientKey clientKey = new Api.ClientKey();
        zzc = clientKey;
        zzd = new Api("RecaptchaBase.API", zziVar, clientKey);
    }

    public InternalRecaptchaBaseClient(Context context) {
        super(context, (Api<Api.ApiOptions.NoOptions>) zzd, Api.ApiOptions.NO_OPTIONS, GoogleApi.Settings.DEFAULT_SETTINGS);
    }

    @Override // com.google.android.gms.recaptchabase.RecaptchaBaseClient
    public final Task<ExecuteResult> execute(final ExecuteRequest executeRequest) {
        return doRead(TaskApiCall.builder().setFeatures(zze.zza).run(new RemoteCall() { // from class: com.google.android.gms.internal.recaptchabase.zzg
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                int i = InternalRecaptchaBaseClient.$r8$clinit;
                ExecuteRequest executeRequest2 = executeRequest;
                ((zzf) ((RecaptchaBaseClientImpl) obj).getService()).zzc(new zzj((TaskCompletionSource) obj2), executeRequest2);
            }
        }).setMethodKey(34002).build());
    }

    @Override // com.google.android.gms.recaptchabase.RecaptchaBaseClient
    public final Task<InitResult> init(final InitRequest initRequest) {
        return doRead(TaskApiCall.builder().setFeatures(zze.zzb).run(new RemoteCall() { // from class: com.google.android.gms.internal.recaptchabase.zzh
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                int i = InternalRecaptchaBaseClient.$r8$clinit;
                InitRequest initRequest2 = initRequest;
                ((zzf) ((RecaptchaBaseClientImpl) obj).getService()).zzd(new zzk((TaskCompletionSource) obj2), initRequest2);
            }
        }).setMethodKey(34001).build());
    }
}
