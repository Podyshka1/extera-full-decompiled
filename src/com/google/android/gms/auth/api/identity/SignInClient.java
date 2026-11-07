package com.google.android.gms.auth.api.identity;

import android.app.PendingIntent;
import android.content.Intent;
import com.google.android.gms.tasks.Task;

/* JADX INFO: loaded from: classes4.dex */
public interface SignInClient {
    @Deprecated
    Task<BeginSignInResult> beginSignIn(BeginSignInRequest beginSignInRequest);

    String getPhoneNumberFromIntent(Intent intent);

    Task<PendingIntent> getPhoneNumberHintIntent(GetPhoneNumberHintIntentRequest getPhoneNumberHintIntentRequest);

    @Deprecated
    SignInCredential getSignInCredentialFromIntent(Intent intent);

    @Deprecated
    Task<PendingIntent> getSignInIntent(GetSignInIntentRequest getSignInIntentRequest);

    @Deprecated
    Task<Void> signOut();
}
