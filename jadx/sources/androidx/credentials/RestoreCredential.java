package androidx.credentials;

import android.os.Bundle;
import androidx.credentials.exceptions.NoCredentialException;
import androidx.credentials.internal.RequestValidationHelper;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class RestoreCredential extends Credential {
    public static final Companion Companion = new Companion(null);
    private final String authenticationResponseJson;

    public /* synthetic */ RestoreCredential(String str, Bundle bundle, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, bundle);
    }

    private RestoreCredential(String str, Bundle bundle) {
        super("androidx.credentials.TYPE_RESTORE_CREDENTIAL", bundle);
        this.authenticationResponseJson = str;
        if (!RequestValidationHelper.Companion.isValidJSON(str)) {
            throw new IllegalArgumentException("authenticationResponseJson must not be empty, and must be a valid JSON");
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final RestoreCredential createFrom$credentials_release(Bundle data) throws NoCredentialException {
            Intrinsics.checkNotNullParameter(data, "data");
            String string = data.getString("androidx.credentials.BUNDLE_KEY_GET_RESTORE_CREDENTIAL_RESPONSE");
            if (string == null) {
                throw new NoCredentialException("The device does not contain a restore credential.");
            }
            return new RestoreCredential(string, data, null);
        }
    }
}
