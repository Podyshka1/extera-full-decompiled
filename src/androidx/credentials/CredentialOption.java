package androidx.credentials;

import android.os.Bundle;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public abstract class CredentialOption {
    public static final Companion Companion = new Companion(null);
    private final Set allowedProviders;
    private final Bundle candidateQueryData;
    private final boolean isAutoSelectAllowed;
    private final boolean isSystemProviderRequired;
    private final Bundle requestData;
    private final String type;
    private final int typePriorityHint;

    public CredentialOption(String type, Bundle requestData, Bundle candidateQueryData, boolean z, boolean z2, Set allowedProviders, int i) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(requestData, "requestData");
        Intrinsics.checkNotNullParameter(candidateQueryData, "candidateQueryData");
        Intrinsics.checkNotNullParameter(allowedProviders, "allowedProviders");
        this.type = type;
        this.requestData = requestData;
        this.candidateQueryData = candidateQueryData;
        this.isSystemProviderRequired = z;
        this.isAutoSelectAllowed = z2;
        this.allowedProviders = allowedProviders;
        this.typePriorityHint = i;
        requestData.putBoolean("androidx.credentials.BUNDLE_KEY_IS_AUTO_SELECT_ALLOWED", z2);
        candidateQueryData.putBoolean("androidx.credentials.BUNDLE_KEY_IS_AUTO_SELECT_ALLOWED", z2);
        requestData.putInt("androidx.credentials.BUNDLE_KEY_TYPE_PRIORITY_VALUE", i);
        candidateQueryData.putInt("androidx.credentials.BUNDLE_KEY_TYPE_PRIORITY_VALUE", i);
    }

    public final String getType() {
        return this.type;
    }

    public final Bundle getRequestData() {
        return this.requestData;
    }

    public final Bundle getCandidateQueryData() {
        return this.candidateQueryData;
    }

    public final boolean isSystemProviderRequired() {
        return this.isSystemProviderRequired;
    }

    public final Set getAllowedProviders() {
        return this.allowedProviders;
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
