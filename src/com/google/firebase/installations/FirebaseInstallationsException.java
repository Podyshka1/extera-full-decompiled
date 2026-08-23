package com.google.firebase.installations;

import com.google.firebase.FirebaseException;

/* JADX INFO: loaded from: classes.dex */
public class FirebaseInstallationsException extends FirebaseException {
    private final Status status;

    /* JADX INFO: loaded from: classes5.dex */
    public enum Status {
        BAD_CONFIG,
        UNAVAILABLE,
        TOO_MANY_REQUESTS
    }

    public FirebaseInstallationsException(Status status) {
        this.status = status;
    }

    public FirebaseInstallationsException(String str, Status status) {
        super(str);
        this.status = status;
    }
}
