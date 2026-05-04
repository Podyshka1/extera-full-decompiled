package androidx.credentials;

import android.os.Bundle;
import androidx.credentials.internal.FrameworkClassParsingException;
import androidx.credentials.internal.RequestValidationHelper;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class DigitalCredential extends Credential {
    public static final Companion Companion = new Companion(null);
    private final String credentialJson;

    public /* synthetic */ DigitalCredential(String str, Bundle bundle, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, bundle);
    }

    private DigitalCredential(String str, Bundle bundle) {
        super("androidx.credentials.TYPE_DIGITAL_CREDENTIAL", bundle);
        this.credentialJson = str;
        if (!RequestValidationHelper.Companion.isValidJSON(str)) {
            throw new IllegalArgumentException("credentialJson must not be empty, and must be a valid JSON");
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final DigitalCredential createFrom$credentials_release(Bundle data) throws FrameworkClassParsingException {
            Intrinsics.checkNotNullParameter(data, "data");
            try {
                String string = data.getString("androidx.credentials.BUNDLE_KEY_REQUEST_JSON");
                Intrinsics.checkNotNull(string);
                return new DigitalCredential(string, data, null);
            } catch (Exception unused) {
                throw new FrameworkClassParsingException();
            }
        }
    }
}
