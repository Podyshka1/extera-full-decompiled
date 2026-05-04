package androidx.credentials.exceptions;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
public final class CreateCredentialCancellationException extends CreateCredentialException {
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public CreateCredentialCancellationException(CharSequence charSequence) {
        super("android.credentials.CreateCredentialException.TYPE_USER_CANCELED", charSequence);
    }
}
