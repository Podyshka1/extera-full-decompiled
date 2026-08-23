package androidx.credentials;

import android.os.Bundle;
import androidx.credentials.internal.FrameworkClassParsingException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public abstract class CreateCredentialResponse {
    public static final Companion Companion = new Companion(null);
    private final Bundle data;
    private final String type;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final CreateCredentialResponse createFrom(String type, Bundle data) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(data, "data");
            try {
                int iHashCode = type.hashCode();
                if (iHashCode != -1678407252) {
                    if (iHashCode != -543568185) {
                        if (iHashCode == -95037569 && type.equals("androidx.credentials.TYPE_PUBLIC_KEY_CREDENTIAL")) {
                            return CreatePublicKeyCredentialResponse.Companion.createFrom$credentials_release(data);
                        }
                    } else if (type.equals("android.credentials.TYPE_PASSWORD_CREDENTIAL")) {
                        return CreatePasswordResponse.Companion.createFrom$credentials_release(data);
                    }
                } else if (type.equals("androidx.credentials.TYPE_DIGITAL_CREDENTIAL")) {
                    return CreateDigitalCredentialResponse.Companion.createFrom$credentials_release(data);
                }
                throw new FrameworkClassParsingException();
            } catch (FrameworkClassParsingException unused) {
                return new CreateCustomCredentialResponse(type, data);
            }
        }

        public final CreateCredentialResponse fromBundle(Bundle bundle) {
            Bundle bundle2;
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            String string = bundle.getString("androidx.credentials.provider.extra.CREATE_CREDENTIAL_RESPONSE_TYPE");
            if (string == null || (bundle2 = bundle.getBundle("androidx.credentials.provider.extra.CREATE_CREDENTIAL_REQUEST_DATA")) == null) {
                return null;
            }
            return createFrom(string, bundle2);
        }
    }

    public CreateCredentialResponse(String type, Bundle data) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(data, "data");
        this.type = type;
        this.data = data;
    }

    public final Bundle getData() {
        return this.data;
    }
}
