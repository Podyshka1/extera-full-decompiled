package com.google.android.gms.common.api;

import android.app.Activity;
import android.content.IntentSender;

/* JADX INFO: loaded from: classes4.dex */
public class ResolvableApiException extends ApiException {
    public ResolvableApiException(Status status) {
        super(status);
    }

    public void startResolutionForResult(Activity activity, int i) throws IntentSender.SendIntentException {
        getStatus().startResolutionForResult(activity, i);
    }
}
