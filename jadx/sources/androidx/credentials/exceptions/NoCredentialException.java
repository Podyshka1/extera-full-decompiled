package androidx.credentials.exceptions;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
public final class NoCredentialException extends GetCredentialException {
    public static final Companion Companion = new Companion(null);

    public NoCredentialException(CharSequence charSequence) {
        super("android.credentials.GetCredentialException.TYPE_NO_CREDENTIAL", charSequence);
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
