package com.google.android.gms.location;

import android.content.Context;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.internal.location.zzag;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ActivityRecognition {

    @Deprecated
    public static final Api<Api.ApiOptions.NoOptions> API = zzag.zzb;

    @Deprecated
    public static final ActivityRecognitionApi ActivityRecognitionApi = new com.google.android.gms.internal.location.zzw();

    public static ActivityRecognitionClient getClient(Context context) {
        return new zzag(context);
    }
}
