package com.google.firebase.analytics;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzdf;
import com.google.android.gms.internal.measurement.zzfb;
import com.google.android.gms.measurement.internal.zzlk;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.installations.FirebaseInstallations;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
public final class FirebaseAnalytics {
    private static volatile FirebaseAnalytics zza;
    private final zzfb zzb;

    public FirebaseAnalytics(zzfb zzfbVar) {
        Preconditions.checkNotNull(zzfbVar);
        this.zzb = zzfbVar;
    }

    @Keep
    public static FirebaseAnalytics getInstance(Context context) {
        if (zza == null) {
            synchronized (FirebaseAnalytics.class) {
                try {
                    if (zza == null) {
                        zza = new FirebaseAnalytics(zzfb.zza(context, null));
                    }
                } finally {
                }
            }
        }
        return zza;
    }

    @Keep
    public static zzlk getScionFrontendApiImplementation(Context context, Bundle bundle) {
        zzfb zzfbVarZza = zzfb.zza(context, bundle);
        if (zzfbVarZza == null) {
            return null;
        }
        return new zzd(zzfbVarZza);
    }

    @Keep
    public String getFirebaseInstanceId() {
        try {
            return (String) Tasks.await(FirebaseInstallations.getInstance().getId(), 30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            throw new IllegalStateException(e);
        } catch (ExecutionException e2) {
            throw new IllegalStateException(e2.getCause());
        } catch (TimeoutException unused) {
            throw new IllegalThreadStateException("Firebase Installations getId Task has timed out.");
        }
    }

    public void resetAnalyticsData() {
        this.zzb.zzs();
    }

    public void setAnalyticsCollectionEnabled(boolean z) {
        this.zzb.zzq(Boolean.valueOf(z));
    }

    @Keep
    @Deprecated
    public void setCurrentScreen(Activity activity, String str, String str2) {
        this.zzb.zzp(zzdf.zza(activity), str, str2);
    }
}
