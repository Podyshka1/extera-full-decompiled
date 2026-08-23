package androidx.credentials;

import android.os.Bundle;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class GetCredentialResponse {
    public static final Companion Companion = new Companion(null);
    private final Credential credential;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final GetCredentialResponse fromBundle(Bundle bundle) {
            Bundle bundle2;
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            String string = bundle.getString("androidx.credentials.provider.extra.EXTRA_CREDENTIAL_TYPE");
            if (string == null || (bundle2 = bundle.getBundle("androidx.credentials.provider.extra.EXTRA_CREDENTIAL_DATA")) == null) {
                return null;
            }
            return new GetCredentialResponse(Credential.Companion.createFrom(string, bundle2));
        }
    }

    public GetCredentialResponse(Credential credential) {
        Intrinsics.checkNotNullParameter(credential, "credential");
        this.credential = credential;
    }

    public final Credential getCredential() {
        return this.credential;
    }
}
