package com.google.android.gms.auth.api.signin;

import android.content.Context;
import android.content.Intent;
import com.google.android.gms.auth.api.signin.internal.zbm;
import com.google.android.gms.common.internal.ApiExceptionUtil;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;

/* JADX INFO: loaded from: classes4.dex */
public abstract class GoogleSignIn {
    public static Task getSignedInAccountFromIntent(Intent intent) {
        GoogleSignInResult googleSignInResultZbd = zbm.zbd(intent);
        GoogleSignInAccount signInAccount = googleSignInResultZbd.getSignInAccount();
        return (!googleSignInResultZbd.getStatus().isSuccess() || signInAccount == null) ? Tasks.forException(ApiExceptionUtil.fromStatus(googleSignInResultZbd.getStatus())) : Tasks.forResult(signInAccount);
    }

    public static GoogleSignInClient getClient(Context context, GoogleSignInOptions googleSignInOptions) {
        return new GoogleSignInClient(context, (GoogleSignInOptions) Preconditions.checkNotNull(googleSignInOptions));
    }
}
