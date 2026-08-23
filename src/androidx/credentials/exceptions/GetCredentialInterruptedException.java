package androidx.credentials.exceptions;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
public final class GetCredentialInterruptedException extends GetCredentialException {
    public static final Companion Companion = new Companion(null);

    public GetCredentialInterruptedException(CharSequence charSequence) {
        super("android.credentials.GetCredentialException.TYPE_INTERRUPTED", charSequence);
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
