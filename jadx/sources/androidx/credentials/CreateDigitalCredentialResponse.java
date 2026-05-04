package androidx.credentials;

import android.os.Bundle;
import androidx.credentials.internal.FrameworkClassParsingException;
import androidx.credentials.internal.RequestValidationHelper;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class CreateDigitalCredentialResponse extends CreateCredentialResponse {
    public static final Companion Companion = new Companion(null);
    private final String responseJson;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateDigitalCredentialResponse(String responseJson) {
        super("androidx.credentials.TYPE_DIGITAL_CREDENTIAL", Companion.toBundle$credentials_release(responseJson));
        Intrinsics.checkNotNullParameter(responseJson, "responseJson");
        this.responseJson = responseJson;
        if (!RequestValidationHelper.Companion.isValidJSON(responseJson)) {
            throw new IllegalArgumentException("responseJson must not be empty, and must be a valid JSON");
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Bundle toBundle$credentials_release(String responseJson) {
            Intrinsics.checkNotNullParameter(responseJson, "responseJson");
            Bundle bundle = new Bundle();
            bundle.putString("androidx.credentials.BUNDLE_KEY_RESPONSE_JSON", responseJson);
            return bundle;
        }

        public final CreateDigitalCredentialResponse createFrom$credentials_release(Bundle data) throws FrameworkClassParsingException {
            Intrinsics.checkNotNullParameter(data, "data");
            try {
                String string = data.getString("androidx.credentials.BUNDLE_KEY_RESPONSE_JSON");
                Intrinsics.checkNotNull(string);
                return new CreateDigitalCredentialResponse(string);
            } catch (Exception unused) {
                throw new FrameworkClassParsingException();
            }
        }
    }
}
