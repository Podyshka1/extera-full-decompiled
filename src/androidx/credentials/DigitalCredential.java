package androidx.credentials;

import android.os.Bundle;
import androidx.credentials.internal.FrameworkClassParsingException;
import androidx.credentials.internal.RequestValidationHelper;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.Charsets;
import okhttp3.internal.url._UrlKt;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0019\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\b\u001a\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Landroidx/credentials/DigitalCredential;", "Landroidx/credentials/Credential;", _UrlKt.FRAGMENT_ENCODE_SET, "credentialJson", "Landroid/os/Bundle;", "data", "<init>", "(Ljava/lang/String;Landroid/os/Bundle;)V", "Ljava/lang/String;", "getCredentialJson", "()Ljava/lang/String;", "Companion", "credentials"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
public final class DigitalCredential extends Credential {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String credentialJson;

    public /* synthetic */ DigitalCredential(String str, Bundle bundle, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, bundle);
    }

    private DigitalCredential(String str, Bundle bundle) {
        super("androidx.credentials.TYPE_DIGITAL_CREDENTIAL", bundle);
        this.credentialJson = str;
        if (RequestValidationHelper.INSTANCE.isValidJSON(str)) {
            return;
        }
        f$$ExternalSyntheticBUOutline1.m212m("credentialJson must not be empty, and must be a valid JSON");
        throw null;
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\t\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0001¢\u0006\u0004\b\u0007\u0010\bR\u0014\u0010\u000b\u001a\u00020\n8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0014\u0010\r\u001a\u00020\n8\u0000X\u0080T¢\u0006\u0006\n\u0004\b\r\u0010\fR\u0014\u0010\u000f\u001a\u00020\u000e8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Landroidx/credentials/DigitalCredential$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "Landroid/os/Bundle;", "data", "Landroidx/credentials/DigitalCredential;", "createFrom$credentials", "(Landroid/os/Bundle;)Landroidx/credentials/DigitalCredential;", "createFrom", _UrlKt.FRAGMENT_ENCODE_SET, "TYPE_DIGITAL_CREDENTIAL", "Ljava/lang/String;", "BUNDLE_KEY_REQUEST_JSON", _UrlKt.FRAGMENT_ENCODE_SET, "STRING_LEN_THRESHOLD", "I", "credentials"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final DigitalCredential createFrom$credentials(Bundle data) throws FrameworkClassParsingException {
            try {
                Object obj = data.get("androidx.credentials.BUNDLE_KEY_REQUEST_JSON");
                DefaultConstructorMarker defaultConstructorMarker = null;
                return obj instanceof byte[] ? new DigitalCredential(new String((byte[]) obj, Charsets.UTF_8), data, defaultConstructorMarker) : new DigitalCredential((String) obj, data, defaultConstructorMarker);
            } catch (Exception unused) {
                throw new FrameworkClassParsingException();
            }
        }
    }
}
