package androidx.credentials;

import android.os.Bundle;
import androidx.credentials.internal.RequestValidationHelper;
import java.util.Set;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class GetPublicKeyCredentialOption extends CredentialOption {
    public static final Companion Companion = new Companion(null);
    private final byte[] clientDataHash;
    private final String requestJson;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public GetPublicKeyCredentialOption(String requestJson, byte[] bArr) {
        this(requestJson, bArr, null, 4, null);
        Intrinsics.checkNotNullParameter(requestJson, "requestJson");
    }

    /* synthetic */ GetPublicKeyCredentialOption(String str, byte[] bArr, Set set, Bundle bundle, Bundle bundle2, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, bArr, set, bundle, bundle2, (i2 & 32) != 0 ? 100 : i);
    }

    public final String getRequestJson() {
        return this.requestJson;
    }

    private GetPublicKeyCredentialOption(String str, byte[] bArr, Set set, Bundle bundle, Bundle bundle2, int i) {
        super("androidx.credentials.TYPE_PUBLIC_KEY_CREDENTIAL", bundle, bundle2, false, true, set, i);
        this.requestJson = str;
        this.clientDataHash = bArr;
        if (!RequestValidationHelper.Companion.isValidJSON(str)) {
            throw new IllegalArgumentException("requestJson must not be empty, and must be a valid JSON");
        }
    }

    public /* synthetic */ GetPublicKeyCredentialOption(String str, byte[] bArr, Set set, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? null : bArr, (i & 4) != 0 ? SetsKt.emptySet() : set);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public GetPublicKeyCredentialOption(String requestJson, byte[] bArr, Set allowedProviders) {
        Intrinsics.checkNotNullParameter(requestJson, "requestJson");
        Intrinsics.checkNotNullParameter(allowedProviders, "allowedProviders");
        Companion companion = Companion;
        this(requestJson, bArr, allowedProviders, companion.toRequestDataBundle$credentials_release(requestJson, bArr), companion.toRequestDataBundle$credentials_release(requestJson, bArr), 0, 32, null);
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Bundle toRequestDataBundle$credentials_release(String requestJson, byte[] bArr) {
            Intrinsics.checkNotNullParameter(requestJson, "requestJson");
            Bundle bundle = new Bundle();
            bundle.putString("androidx.credentials.BUNDLE_KEY_SUBTYPE", "androidx.credentials.BUNDLE_VALUE_SUBTYPE_GET_PUBLIC_KEY_CREDENTIAL_OPTION");
            bundle.putString("androidx.credentials.BUNDLE_KEY_REQUEST_JSON", requestJson);
            bundle.putByteArray("androidx.credentials.BUNDLE_KEY_CLIENT_DATA_HASH", bArr);
            return bundle;
        }
    }
}
