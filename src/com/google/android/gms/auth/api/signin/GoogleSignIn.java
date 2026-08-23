package com.google.android.gms.auth.api.signin;

import android.content.Context;
import android.content.Intent;
import com.google.android.gms.auth.api.signin.internal.zbm;
import com.google.android.gms.common.internal.ApiExceptionUtil;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public abstract class GoogleSignIn {
    public static Task<GoogleSignInAccount> getSignedInAccountFromIntent(Intent intent) {
        GoogleSignInResult googleSignInResultZbg = zbm.zbg(intent);
        GoogleSignInAccount signInAccount = googleSignInResultZbg.getSignInAccount();
        return (!googleSignInResultZbg.getStatus().isSuccess() || signInAccount == null) ? Tasks.forException(ApiExceptionUtil.fromStatus(googleSignInResultZbg.getStatus())) : Tasks.forResult(signInAccount);
    }

    public static GoogleSignInClient getClient(Context context, GoogleSignInOptions googleSignInOptions) {
        return new GoogleSignInClient(context, (GoogleSignInOptions) Preconditions.checkNotNull(googleSignInOptions));
    }
}
