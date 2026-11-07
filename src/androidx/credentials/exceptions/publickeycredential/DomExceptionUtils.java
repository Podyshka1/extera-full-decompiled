package androidx.credentials.exceptions.publickeycredential;

import androidx.credentials.exceptions.domerrors.DomError;
import androidx.credentials.internal.FrameworkClassParsingException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0001\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils;", _UrlKt.FRAGMENT_ENCODE_SET, "Companion", "credentials"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class DomExceptionUtils {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J/\u0010\n\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00042\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\t\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u00020\u00078\u0006X\u0086T¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "T", "Landroidx/credentials/exceptions/domerrors/DomError;", "domError", _UrlKt.FRAGMENT_ENCODE_SET, "msg", "t", "generateException", "(Landroidx/credentials/exceptions/domerrors/DomError;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;", "SEPARATOR", "Ljava/lang/String;", "credentials"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final <T> T generateException(DomError domError, String msg, T t) throws FrameworkClassParsingException {
            if (t instanceof CreatePublicKeyCredentialDomException) {
                return (T) new CreatePublicKeyCredentialDomException(domError, msg);
            }
            if (t instanceof GetPublicKeyCredentialDomException) {
                return (T) new GetPublicKeyCredentialDomException(domError, msg);
            }
            throw new FrameworkClassParsingException();
        }
    }
}
