package androidx.credentials.exceptions;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
public final class GetCredentialCancellationException extends GetCredentialException {
    public static final Companion Companion = new Companion(null);

    public GetCredentialCancellationException(CharSequence charSequence) {
        super("android.credentials.GetCredentialException.TYPE_USER_CANCELED", charSequence);
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
