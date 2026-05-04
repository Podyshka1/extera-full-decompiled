package androidx.credentials;

import android.graphics.drawable.Icon;
import android.os.Bundle;
import android.text.TextUtils;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public abstract class CreateCredentialRequest {
    public static final Companion Companion = new Companion(null);
    private final Bundle candidateQueryData;
    private final Bundle credentialData;
    private final DisplayInfo displayInfo;
    private final boolean isAutoSelectAllowed;
    private final boolean isSystemProviderRequired;
    private final String origin;
    private final boolean preferImmediatelyAvailableCredentials;
    private final String type;

    public CreateCredentialRequest(String type, Bundle credentialData, Bundle candidateQueryData, boolean z, boolean z2, DisplayInfo displayInfo, String str, boolean z3) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(credentialData, "credentialData");
        Intrinsics.checkNotNullParameter(candidateQueryData, "candidateQueryData");
        Intrinsics.checkNotNullParameter(displayInfo, "displayInfo");
        this.type = type;
        this.credentialData = credentialData;
        this.candidateQueryData = candidateQueryData;
        this.isSystemProviderRequired = z;
        this.isAutoSelectAllowed = z2;
        this.displayInfo = displayInfo;
        this.origin = str;
        this.preferImmediatelyAvailableCredentials = z3;
        credentialData.putBoolean("androidx.credentials.BUNDLE_KEY_IS_AUTO_SELECT_ALLOWED", z2);
        credentialData.putBoolean("androidx.credentials.BUNDLE_KEY_PREFER_IMMEDIATELY_AVAILABLE_CREDENTIALS", z3);
        candidateQueryData.putBoolean("androidx.credentials.BUNDLE_KEY_IS_AUTO_SELECT_ALLOWED", z2);
    }

    public final String getType() {
        return this.type;
    }

    public final Bundle getCredentialData() {
        return this.credentialData;
    }

    public final Bundle getCandidateQueryData() {
        return this.candidateQueryData;
    }

    public final boolean isSystemProviderRequired() {
        return this.isSystemProviderRequired;
    }

    public final DisplayInfo getDisplayInfo() {
        return this.displayInfo;
    }

    public final String getOrigin() {
        return this.origin;
    }

    public static final class DisplayInfo {
        public static final Companion Companion = new Companion(null);
        private final Icon credentialTypeIcon;
        private final String preferDefaultProvider;
        private final CharSequence userDisplayName;
        private final CharSequence userId;

        public DisplayInfo(CharSequence userId, CharSequence charSequence, Icon icon, String str) {
            Intrinsics.checkNotNullParameter(userId, "userId");
            this.userId = userId;
            this.userDisplayName = charSequence;
            this.credentialTypeIcon = icon;
            this.preferDefaultProvider = str;
            if (userId.length() <= 0) {
                throw new IllegalArgumentException("userId should not be empty");
            }
        }

        public final Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putCharSequence("androidx.credentials.BUNDLE_KEY_USER_ID", this.userId);
            if (!TextUtils.isEmpty(this.userDisplayName)) {
                bundle.putCharSequence("androidx.credentials.BUNDLE_KEY_USER_DISPLAY_NAME", this.userDisplayName);
            }
            if (!TextUtils.isEmpty(this.preferDefaultProvider)) {
                bundle.putString("androidx.credentials.BUNDLE_KEY_DEFAULT_PROVIDER", this.preferDefaultProvider);
            }
            return bundle;
        }

        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
