package androidx.credentials.exceptions;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
public final class GetCredentialUnsupportedException extends GetCredentialException {
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public GetCredentialUnsupportedException(CharSequence charSequence) {
        super("androidx.credentials.TYPE_GET_CREDENTIAL_UNSUPPORTED_EXCEPTION", charSequence);
    }
}
