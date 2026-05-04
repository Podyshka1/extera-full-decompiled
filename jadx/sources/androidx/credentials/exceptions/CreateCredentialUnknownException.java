package androidx.credentials.exceptions;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
public final class CreateCredentialUnknownException extends CreateCredentialException {
    public static final Companion Companion = new Companion(null);

    public /* synthetic */ CreateCredentialUnknownException(CharSequence charSequence, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : charSequence);
    }

    public CreateCredentialUnknownException(CharSequence charSequence) {
        super("android.credentials.CreateCredentialException.TYPE_UNKNOWN", charSequence);
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
