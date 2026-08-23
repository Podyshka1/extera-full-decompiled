package androidx.credentials;

import android.os.Bundle;
import androidx.credentials.internal.FrameworkClassParsingException;
import androidx.credentials.internal.RequestValidationHelper;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class PublicKeyCredential extends Credential {
    public static final Companion Companion = new Companion(null);
    private final String authenticationResponseJson;

    public /* synthetic */ PublicKeyCredential(String str, Bundle bundle, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, bundle);
    }

    private PublicKeyCredential(String str, Bundle bundle) {
        super("androidx.credentials.TYPE_PUBLIC_KEY_CREDENTIAL", bundle);
        this.authenticationResponseJson = str;
        if (!RequestValidationHelper.Companion.isValidJSON(str)) {
            throw new IllegalArgumentException("authenticationResponseJson must not be empty, and must be a valid JSON");
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PublicKeyCredential(String authenticationResponseJson) {
        this(authenticationResponseJson, Companion.toBundle$credentials_release(authenticationResponseJson));
        Intrinsics.checkNotNullParameter(authenticationResponseJson, "authenticationResponseJson");
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Bundle toBundle$credentials_release(String authenticationResponseJson) {
            Intrinsics.checkNotNullParameter(authenticationResponseJson, "authenticationResponseJson");
            Bundle bundle = new Bundle();
            bundle.putString("androidx.credentials.BUNDLE_KEY_AUTHENTICATION_RESPONSE_JSON", authenticationResponseJson);
            return bundle;
        }

        public final PublicKeyCredential createFrom$credentials_release(Bundle data) throws FrameworkClassParsingException {
            Intrinsics.checkNotNullParameter(data, "data");
            try {
                String string = data.getString("androidx.credentials.BUNDLE_KEY_AUTHENTICATION_RESPONSE_JSON");
                Intrinsics.checkNotNull(string);
                return new PublicKeyCredential(string, data, null);
            } catch (Exception unused) {
                throw new FrameworkClassParsingException();
            }
        }
    }
}
