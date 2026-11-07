package androidx.credentials;

import android.os.Bundle;
import androidx.credentials.exceptions.NoCredentialException;
import androidx.credentials.internal.RequestValidationHelper;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.internal.url._UrlKt;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0019\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\b\u001a\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Landroidx/credentials/RestoreCredential;", "Landroidx/credentials/Credential;", _UrlKt.FRAGMENT_ENCODE_SET, "authenticationResponseJson", "Landroid/os/Bundle;", "data", "<init>", "(Ljava/lang/String;Landroid/os/Bundle;)V", "Ljava/lang/String;", "getAuthenticationResponseJson", "()Ljava/lang/String;", "Companion", "credentials"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
public final class RestoreCredential extends Credential {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String authenticationResponseJson;

    public /* synthetic */ RestoreCredential(String str, Bundle bundle, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, bundle);
    }

    private RestoreCredential(String str, Bundle bundle) {
        super("androidx.credentials.TYPE_RESTORE_CREDENTIAL", bundle);
        this.authenticationResponseJson = str;
        if (RequestValidationHelper.INSTANCE.isValidJSON(str)) {
            return;
        }
        f$$ExternalSyntheticBUOutline1.m212m("authenticationResponseJson must not be empty, and must be a valid JSON");
        throw null;
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0001¢\u0006\u0002\b\bR\u000e\u0010\t\u001a\u00020\nX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082T¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Landroidx/credentials/RestoreCredential$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "createFrom", "Landroidx/credentials/RestoreCredential;", "data", "Landroid/os/Bundle;", "createFrom$credentials", "TYPE_RESTORE_CREDENTIAL", _UrlKt.FRAGMENT_ENCODE_SET, "BUNDLE_KEY_GET_RESTORE_CREDENTIAL_RESPONSE", "credentials"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final RestoreCredential createFrom$credentials(Bundle data) throws NoCredentialException {
            String string = data.getString("androidx.credentials.BUNDLE_KEY_GET_RESTORE_CREDENTIAL_RESPONSE");
            if (string == null) {
                throw new NoCredentialException("The device does not contain a restore credential.");
            }
            return new RestoreCredential(string, data, null);
        }
    }
}
