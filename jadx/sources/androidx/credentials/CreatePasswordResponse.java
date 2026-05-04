package androidx.credentials;

import android.os.Bundle;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class CreatePasswordResponse extends CreateCredentialResponse {
    public static final Companion Companion = new Companion(null);

    public /* synthetic */ CreatePasswordResponse(Bundle bundle, DefaultConstructorMarker defaultConstructorMarker) {
        this(bundle);
    }

    private CreatePasswordResponse(Bundle bundle) {
        super("android.credentials.TYPE_PASSWORD_CREDENTIAL", bundle);
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final CreatePasswordResponse createFrom$credentials_release(Bundle data) {
            Intrinsics.checkNotNullParameter(data, "data");
            return new CreatePasswordResponse(data, null);
        }
    }
}
