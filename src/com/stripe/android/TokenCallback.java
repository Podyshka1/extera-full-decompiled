package com.stripe.android;

import com.stripe.android.model.Token;

/* JADX INFO: loaded from: classes5.dex */
public interface TokenCallback {
    void onError(Exception exc);

    void onSuccess(Token token);
}
