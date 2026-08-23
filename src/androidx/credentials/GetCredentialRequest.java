package androidx.credentials;

import android.content.ComponentName;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class GetCredentialRequest {
    public static final Companion Companion = new Companion(null);
    private final List credentialOptions;
    private final String origin;
    private final boolean preferIdentityDocUi;
    private final boolean preferImmediatelyAvailableCredentials;
    private final ComponentName preferUiBrandingComponentName;

    public GetCredentialRequest(List credentialOptions, String str, boolean z, ComponentName componentName, boolean z2) {
        Intrinsics.checkNotNullParameter(credentialOptions, "credentialOptions");
        this.credentialOptions = credentialOptions;
        this.origin = str;
        this.preferIdentityDocUi = z;
        this.preferUiBrandingComponentName = componentName;
        this.preferImmediatelyAvailableCredentials = z2;
        if (credentialOptions.isEmpty()) {
            throw new IllegalArgumentException("credentialOptions should not be empty");
        }
        if (credentialOptions.size() > 1) {
            List<CredentialOption> list = credentialOptions;
            if (!(list instanceof Collection) || !list.isEmpty()) {
                for (CredentialOption credentialOption : list) {
                }
            }
            for (CredentialOption credentialOption2 : this.credentialOptions) {
            }
        }
    }

    public final List getCredentialOptions() {
        return this.credentialOptions;
    }

    public final String getOrigin() {
        return this.origin;
    }

    public final boolean getPreferIdentityDocUi() {
        return this.preferIdentityDocUi;
    }

    public final ComponentName getPreferUiBrandingComponentName() {
        return this.preferUiBrandingComponentName;
    }

    public final boolean preferImmediatelyAvailableCredentials() {
        return this.preferImmediatelyAvailableCredentials;
    }

    public static final class Builder {
        private List credentialOptions = new ArrayList();
        private String origin;
        private boolean preferIdentityDocUi;
        private boolean preferImmediatelyAvailableCredentials;
        private ComponentName preferUiBrandingComponentName;

        public final Builder addCredentialOption(CredentialOption credentialOption) {
            Intrinsics.checkNotNullParameter(credentialOption, "credentialOption");
            this.credentialOptions.add(credentialOption);
            return this;
        }

        public final Builder setOrigin(String origin) {
            Intrinsics.checkNotNullParameter(origin, "origin");
            this.origin = origin;
            return this;
        }

        public final Builder setPreferImmediatelyAvailableCredentials(boolean z) {
            this.preferImmediatelyAvailableCredentials = z;
            return this;
        }

        public final GetCredentialRequest build() {
            return new GetCredentialRequest(CollectionsKt.toList(this.credentialOptions), this.origin, this.preferIdentityDocUi, this.preferUiBrandingComponentName, this.preferImmediatelyAvailableCredentials);
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Bundle getRequestMetadataBundle(GetCredentialRequest request) {
            Intrinsics.checkNotNullParameter(request, "request");
            Bundle bundle = new Bundle();
            bundle.putBoolean("androidx.credentials.BUNDLE_KEY_PREFER_IDENTITY_DOC_UI", request.getPreferIdentityDocUi());
            bundle.putBoolean("androidx.credentials.BUNDLE_KEY_PREFER_IMMEDIATELY_AVAILABLE_CREDENTIALS", request.preferImmediatelyAvailableCredentials());
            bundle.putParcelable("androidx.credentials.BUNDLE_KEY_PREFER_UI_BRANDING_COMPONENT_NAME", request.getPreferUiBrandingComponentName());
            return bundle;
        }
    }
}
