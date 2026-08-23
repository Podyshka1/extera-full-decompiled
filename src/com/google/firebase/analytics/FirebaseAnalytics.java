package com.google.firebase.analytics;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.cast.zzaak$$ExternalSyntheticBUOutline0;
import com.google.android.gms.internal.measurement.zzdd;
import com.google.android.gms.internal.measurement.zzez;
import com.google.android.gms.measurement.internal.zzlk;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.installations.FirebaseInstallations;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
public final class FirebaseAnalytics {
    private static volatile FirebaseAnalytics zza;
    private final zzez zzb;

    public FirebaseAnalytics(zzez zzezVar) {
        Preconditions.checkNotNull(zzezVar);
        this.zzb = zzezVar;
    }

    @Keep
    public static FirebaseAnalytics getInstance(Context context) {
        if (zza == null) {
            synchronized (FirebaseAnalytics.class) {
                try {
                    if (zza == null) {
                        zza = new FirebaseAnalytics(zzez.zza(context, null));
                    }
                } finally {
                }
            }
        }
        return zza;
    }

    @Keep
    public static zzlk getScionFrontendApiImplementation(Context context, Bundle bundle) {
        zzez zzezVarZza = zzez.zza(context, bundle);
        if (zzezVarZza == null) {
            return null;
        }
        return new zzd(zzezVarZza);
    }

    @Keep
    public String getFirebaseInstanceId() {
        try {
            return (String) Tasks.await(FirebaseInstallations.getInstance().getId(), NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            zzaak$$ExternalSyntheticBUOutline0.m304m(e);
            return null;
        } catch (ExecutionException e2) {
            zzaak$$ExternalSyntheticBUOutline0.m304m(e2.getCause());
            return null;
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
        this.zzb.zzp(zzdd.zza(activity), str, str2);
    }
}
