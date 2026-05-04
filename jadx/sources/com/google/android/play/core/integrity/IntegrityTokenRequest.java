package com.google.android.play.core.integrity;

import android.net.Network;

/* JADX INFO: loaded from: classes5.dex */
public abstract class IntegrityTokenRequest {

    public static abstract class Builder {
        public abstract IntegrityTokenRequest build();

        public abstract Builder setCloudProjectNumber(long j);

        public abstract Builder setNonce(String str);
    }

    public static Builder builder() {
        return new C1722c();
    }

    /* JADX INFO: renamed from: a */
    public abstract Network mo380a();

    public abstract Long cloudProjectNumber();

    public abstract String nonce();
}
