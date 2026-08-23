package androidx.credentials.exceptions.publickeycredential;

import androidx.credentials.exceptions.domerrors.DomError;
import androidx.credentials.internal.FrameworkClassParsingException;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
public abstract class DomExceptionUtils {
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Object generateException(DomError domError, String str, Object obj) throws FrameworkClassParsingException {
            if (obj instanceof CreatePublicKeyCredentialDomException) {
                return new CreatePublicKeyCredentialDomException(domError, str);
            }
            if (obj instanceof GetPublicKeyCredentialDomException) {
                return new GetPublicKeyCredentialDomException(domError, str);
            }
            throw new FrameworkClassParsingException();
        }
    }
}
