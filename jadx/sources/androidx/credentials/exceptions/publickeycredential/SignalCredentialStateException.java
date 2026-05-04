package androidx.credentials.exceptions.publickeycredential;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public class SignalCredentialStateException extends Exception {
    public static final Companion Companion = new Companion(null);
    private final String errorMessage;
    private final String type;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final SignalCredentialStateException createFrom(String str) {
            return new SignalCredentialStateException("error_type_unknown", str);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SignalCredentialStateException(String type, String str) {
        super(str);
        Intrinsics.checkNotNullParameter(type, "type");
        this.type = type;
        this.errorMessage = str;
    }
}
