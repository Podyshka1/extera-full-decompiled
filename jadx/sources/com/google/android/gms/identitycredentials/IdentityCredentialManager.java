package com.google.android.gms.identitycredentials;

import android.content.Context;
import com.google.android.gms.identitycredentials.internal.InternalIdentityCredentialClient;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public abstract class IdentityCredentialManager {
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final IdentityCredentialClient getClient(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            return new InternalIdentityCredentialClient(context);
        }
    }
}
