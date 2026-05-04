package com.google.firebase.crashlytics.internal.common;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class FirebaseInstallationId {
    private final String authToken;
    private final String fid;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FirebaseInstallationId)) {
            return false;
        }
        FirebaseInstallationId firebaseInstallationId = (FirebaseInstallationId) obj;
        return Intrinsics.areEqual(this.fid, firebaseInstallationId.fid) && Intrinsics.areEqual(this.authToken, firebaseInstallationId.authToken);
    }

    public int hashCode() {
        String str = this.fid;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.authToken;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "FirebaseInstallationId(fid=" + this.fid + ", authToken=" + this.authToken + ')';
    }

    public FirebaseInstallationId(String str, String str2) {
        this.fid = str;
        this.authToken = str2;
    }

    public final String getAuthToken() {
        return this.authToken;
    }

    public final String getFid() {
        return this.fid;
    }
}
