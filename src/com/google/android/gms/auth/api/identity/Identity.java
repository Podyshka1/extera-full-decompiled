package com.google.android.gms.auth.api.identity;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.p003authapi.zbat;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Identity {
    public static SignInClient getSignInClient(Activity activity) {
        return new zbat((Activity) Preconditions.checkNotNull(activity), new zbv());
    }

    public static SignInClient getSignInClient(Context context) {
        return new zbat((Context) Preconditions.checkNotNull(context), new zbv());
    }
}
