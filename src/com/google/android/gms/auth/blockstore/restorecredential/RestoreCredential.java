package com.google.android.gms.auth.blockstore.restorecredential;

import android.content.Context;
import com.google.android.gms.auth.blockstore.restorecredential.internal.InternalRestoreCredentialClient;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class RestoreCredential {
    public static final RestoreCredential INSTANCE = new RestoreCredential();

    private RestoreCredential() {
    }

    public static final RestoreCredentialClient getRestoreCredentialClient(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new InternalRestoreCredentialClient(context);
    }
}
