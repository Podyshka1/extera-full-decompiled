package androidx.credentials.exceptions;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
public final class ClearCredentialProviderConfigurationException extends ClearCredentialException {
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public ClearCredentialProviderConfigurationException(CharSequence charSequence) {
        super("androidx.credentials.TYPE_CLEAR_CREDENTIAL_PROVIDER_CONFIGURATION_EXCEPTION", charSequence);
    }
}
