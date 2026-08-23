package androidx.credentials;

import android.os.Bundle;
import androidx.credentials.internal.FrameworkClassParsingException;
import androidx.credentials.internal.RequestValidationHelper;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class CreatePublicKeyCredentialResponse extends CreateCredentialResponse {
    public static final Companion Companion = new Companion(null);
    private final String registrationResponseJson;

    public /* synthetic */ CreatePublicKeyCredentialResponse(String str, Bundle bundle, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, bundle);
    }

    private CreatePublicKeyCredentialResponse(String str, Bundle bundle) {
        super("androidx.credentials.TYPE_PUBLIC_KEY_CREDENTIAL", bundle);
        this.registrationResponseJson = str;
        if (!RequestValidationHelper.Companion.isValidJSON(str)) {
            throw new IllegalArgumentException("registrationResponseJson must not be empty, and must be a valid JSON");
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CreatePublicKeyCredentialResponse(String registrationResponseJson) {
        this(registrationResponseJson, Companion.toBundle$credentials_release(registrationResponseJson));
        Intrinsics.checkNotNullParameter(registrationResponseJson, "registrationResponseJson");
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Bundle toBundle$credentials_release(String registrationResponseJson) {
            Intrinsics.checkNotNullParameter(registrationResponseJson, "registrationResponseJson");
            Bundle bundle = new Bundle();
            bundle.putString("androidx.credentials.BUNDLE_KEY_REGISTRATION_RESPONSE_JSON", registrationResponseJson);
            return bundle;
        }

        public final CreatePublicKeyCredentialResponse createFrom$credentials_release(Bundle data) throws FrameworkClassParsingException {
            Intrinsics.checkNotNullParameter(data, "data");
            try {
                String string = data.getString("androidx.credentials.BUNDLE_KEY_REGISTRATION_RESPONSE_JSON");
                Intrinsics.checkNotNull(string);
                return new CreatePublicKeyCredentialResponse(string, data, null);
            } catch (Exception unused) {
                throw new FrameworkClassParsingException();
            }
        }
    }
}
