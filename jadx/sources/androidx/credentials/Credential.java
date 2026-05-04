package androidx.credentials;

import android.os.Bundle;
import androidx.credentials.internal.FrameworkClassParsingException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Credential {
    public static final Companion Companion = new Companion(null);
    private final Bundle data;
    private final String type;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        public final Credential createFrom(String type, Bundle data) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(data, "data");
            try {
                switch (type.hashCode()) {
                    case -1678407252:
                        if (type.equals("androidx.credentials.TYPE_DIGITAL_CREDENTIAL")) {
                            return DigitalCredential.Companion.createFrom$credentials_release(data);
                        }
                        break;
                    case -1072734346:
                        if (type.equals("androidx.credentials.TYPE_RESTORE_CREDENTIAL")) {
                            return RestoreCredential.Companion.createFrom$credentials_release(data);
                        }
                        break;
                    case -543568185:
                        if (type.equals("android.credentials.TYPE_PASSWORD_CREDENTIAL")) {
                            return PasswordCredential.Companion.createFrom$credentials_release(data);
                        }
                        break;
                    case -95037569:
                        if (type.equals("androidx.credentials.TYPE_PUBLIC_KEY_CREDENTIAL")) {
                            return PublicKeyCredential.Companion.createFrom$credentials_release(data);
                        }
                        break;
                }
                throw new FrameworkClassParsingException();
            } catch (FrameworkClassParsingException unused) {
                return new CustomCredential(type, data);
            }
        }

        public final Credential createFrom(android.credentials.Credential credential) {
            Intrinsics.checkNotNullParameter(credential, "credential");
            String type = credential.getType();
            Intrinsics.checkNotNullExpressionValue(type, "getType(...)");
            Bundle data = credential.getData();
            Intrinsics.checkNotNullExpressionValue(data, "getData(...)");
            return createFrom(type, data);
        }
    }

    public Credential(String type, Bundle data) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(data, "data");
        this.type = type;
        this.data = data;
    }

    public final Bundle getData() {
        return this.data;
    }
}
