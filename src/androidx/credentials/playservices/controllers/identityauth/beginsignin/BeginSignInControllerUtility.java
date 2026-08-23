package androidx.credentials.playservices.controllers.identityauth.beginsignin;

import android.content.Context;
import androidx.credentials.CredentialOption;
import androidx.credentials.GetCredentialRequest;
import androidx.credentials.GetPublicKeyCredentialOption;
import androidx.credentials.playservices.controllers.identityauth.createpublickeycredential.PublicKeyCredentialControllerUtility;
import com.google.android.gms.auth.api.identity.BeginSignInRequest;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public abstract class BeginSignInControllerUtility {
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final boolean needsBackwardsCompatibleRequest(long j) {
            return j < 231815000;
        }

        private Companion() {
        }

        /* JADX INFO: renamed from: constructBeginSignInRequest$credentials_play_services_auth_release */
        public final BeginSignInRequest m176x545fe152(GetCredentialRequest request, Context context) {
            Intrinsics.checkNotNullParameter(request, "request");
            Intrinsics.checkNotNullParameter(context, "context");
            BeginSignInRequest.Builder builder = new BeginSignInRequest.Builder();
            long jDetermineDeviceGMSVersionCode = determineDeviceGMSVersionCode(context);
            boolean z = false;
            for (CredentialOption credentialOption : request.getCredentialOptions()) {
                if ((credentialOption instanceof GetPublicKeyCredentialOption) && !z) {
                    if (needsBackwardsCompatibleRequest(jDetermineDeviceGMSVersionCode)) {
                        builder.setPasskeysSignInRequestOptions(PublicKeyCredentialControllerUtility.Companion.convertToPlayAuthPasskeyRequest((GetPublicKeyCredentialOption) credentialOption));
                    } else {
                        builder.setPasskeyJsonSignInRequestOptions(PublicKeyCredentialControllerUtility.Companion.convertToPlayAuthPasskeyJsonRequest((GetPublicKeyCredentialOption) credentialOption));
                    }
                    z = true;
                }
            }
            if (jDetermineDeviceGMSVersionCode > 241217000) {
                builder.setPreferImmediatelyAvailableCredentials(request.preferImmediatelyAvailableCredentials());
            }
            BeginSignInRequest beginSignInRequestBuild = builder.setAutoSelectEnabled(false).build();
            Intrinsics.checkNotNullExpressionValue(beginSignInRequestBuild, "build(...)");
            return beginSignInRequestBuild;
        }

        private final long determineDeviceGMSVersionCode(Context context) {
            Intrinsics.checkNotNullExpressionValue(context.getPackageManager(), "getPackageManager(...)");
            return r3.getPackageInfo("com.google.android.gms", 0).versionCode;
        }
    }
}
