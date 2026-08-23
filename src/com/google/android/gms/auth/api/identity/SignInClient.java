package com.google.android.gms.auth.api.identity;

import android.content.Intent;
import com.google.android.gms.tasks.Task;

/* JADX INFO: loaded from: classes4.dex */
public interface SignInClient {
    Task beginSignIn(BeginSignInRequest beginSignInRequest);

    SignInCredential getSignInCredentialFromIntent(Intent intent);

    Task getSignInIntent(GetSignInIntentRequest getSignInIntentRequest);

    Task signOut();
}
