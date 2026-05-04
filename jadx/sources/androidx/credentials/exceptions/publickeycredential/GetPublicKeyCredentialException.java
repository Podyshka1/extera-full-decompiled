package androidx.credentials.exceptions.publickeycredential;

import androidx.credentials.exceptions.GetCredentialCustomException;
import androidx.credentials.exceptions.GetCredentialException;
import androidx.credentials.internal.FrameworkClassParsingException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
public abstract class GetPublicKeyCredentialException extends GetCredentialException {
    public static final Companion Companion = new Companion(null);
    private final String type;

    public String getType() {
        return this.type;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetPublicKeyCredentialException(String type, CharSequence charSequence) {
        super(type, charSequence);
        Intrinsics.checkNotNullParameter(type, "type");
        this.type = type;
        if (getType().length() <= 0) {
            throw new IllegalArgumentException("type must not be empty");
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final GetCredentialException createFrom(String type, String str) {
            Intrinsics.checkNotNullParameter(type, "type");
            try {
                if (StringsKt.startsWith$default(type, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION", false, 2, (Object) null)) {
                    return GetPublicKeyCredentialDomException.Companion.createFrom(type, str);
                }
                throw new FrameworkClassParsingException();
            } catch (FrameworkClassParsingException unused) {
                return new GetCredentialCustomException(type, str);
            }
        }
    }
}
