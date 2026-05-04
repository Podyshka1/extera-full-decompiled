package androidx.credentials.exceptions;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
public final class ClearCredentialUnknownException extends ClearCredentialException {
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public ClearCredentialUnknownException(CharSequence charSequence) {
        super("android.credentials.ClearCredentialStateException.TYPE_UNKNOWN", charSequence);
    }
}
