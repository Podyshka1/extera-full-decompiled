package androidx.credentials.playservices.controllers.identityauth;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.ResultReceiver;
import android.util.Log;
import androidx.credentials.playservices.controllers.CredentialProviderBaseController;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public class HiddenActivity extends Activity {
    public static final Companion Companion = new Companion(null);
    private boolean mWaitingForActivityResult;
    private ResultReceiver resultReceiver;

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        overridePendingTransition(0, 0);
        String stringExtra = getIntent().getStringExtra("TYPE");
        ResultReceiver resultReceiver = (ResultReceiver) getIntent().getParcelableExtra("RESULT_RECEIVER");
        this.resultReceiver = resultReceiver;
        if (resultReceiver == null) {
            finish();
        }
        restoreState(bundle);
        if (this.mWaitingForActivityResult) {
            return;
        }
        if (stringExtra == null) {
            Log.w("HiddenActivity", "Activity handed an unsupported type");
            finish();
        } else {
            handleCredentialFlow(stringExtra);
        }
    }

    private final void restoreState(Bundle bundle) {
        if (bundle != null) {
            this.mWaitingForActivityResult = bundle.getBoolean("androidx.credentials.playservices.AWAITING_RESULT", false);
        }
    }

    private final void setupFailure(ResultReceiver resultReceiver, String str, String str2) {
        CredentialProviderBaseController.Companion.reportError$credentials_play_services_auth_release(resultReceiver, str, str2);
        finish();
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle outState) {
        Intrinsics.checkNotNullParameter(outState, "outState");
        outState.putBoolean("androidx.credentials.playservices.AWAITING_RESULT", this.mWaitingForActivityResult);
        super.onSaveInstanceState(outState);
    }

    private final void handleCredentialFlow(String str) {
        PendingIntent pendingIntent = (PendingIntent) getIntent().getParcelableExtra("EXTRA_FLOW_PENDING_INTENT");
        int intExtra = getIntent().getIntExtra("ACTIVITY_REQUEST_CODE", 1);
        if (pendingIntent != null) {
            try {
                this.mWaitingForActivityResult = true;
                try {
                    startIntentSenderForResult(pendingIntent.getIntentSender(), intExtra, null, 0, 0, 0, null);
                } catch (IntentSender.SendIntentException e) {
                    e = e;
                    setupIntentSenderFailureByType(str, e);
                }
            } catch (IntentSender.SendIntentException e2) {
                e = e2;
            }
        } else {
            setupPendingIntentFailureByType(str);
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private final void setupIntentSenderFailureByType(String str, IntentSender.SendIntentException sendIntentException) {
        switch (str.hashCode()) {
            case -441061071:
                if (str.equals("BEGIN_SIGN_IN")) {
                    ResultReceiver resultReceiver = this.resultReceiver;
                    Intrinsics.checkNotNull(resultReceiver);
                    setupFailure(resultReceiver, "GET_UNKNOWN", "During begin sign in, one tap ui intent sender failure: " + sendIntentException.getMessage());
                    break;
                }
                break;
            case 15545322:
                if (str.equals("CREATE_PUBLIC_KEY_CREDENTIAL")) {
                    ResultReceiver resultReceiver2 = this.resultReceiver;
                    Intrinsics.checkNotNull(resultReceiver2);
                    setupFailure(resultReceiver2, "CREATE_UNKNOWN", "During public key credential, found IntentSender failure on public key creation: " + sendIntentException.getMessage());
                    break;
                }
                break;
            case 1246634622:
                if (str.equals("CREATE_PASSWORD")) {
                    ResultReceiver resultReceiver3 = this.resultReceiver;
                    Intrinsics.checkNotNull(resultReceiver3);
                    setupFailure(resultReceiver3, "CREATE_UNKNOWN", "During save password, found UI intent sender failure: " + sendIntentException.getMessage());
                    break;
                }
                break;
            case 1980564212:
                if (str.equals("SIGN_IN_INTENT")) {
                    ResultReceiver resultReceiver4 = this.resultReceiver;
                    Intrinsics.checkNotNull(resultReceiver4);
                    setupFailure(resultReceiver4, "GET_UNKNOWN", "During get sign-in intent, one tap ui intent sender failure: " + sendIntentException.getMessage());
                    break;
                }
                break;
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private final void setupPendingIntentFailureByType(String str) {
        switch (str.hashCode()) {
            case -441061071:
                if (str.equals("BEGIN_SIGN_IN")) {
                    ResultReceiver resultReceiver = this.resultReceiver;
                    Intrinsics.checkNotNull(resultReceiver);
                    setupFailure(resultReceiver, "GET_UNKNOWN", "internal error during the begin sign in operation");
                    break;
                }
                break;
            case 15545322:
                if (str.equals("CREATE_PUBLIC_KEY_CREDENTIAL")) {
                    ResultReceiver resultReceiver2 = this.resultReceiver;
                    Intrinsics.checkNotNull(resultReceiver2);
                    setupFailure(resultReceiver2, "CREATE_UNKNOWN", "internal error during public key credential creation");
                    break;
                }
                break;
            case 1246634622:
                if (str.equals("CREATE_PASSWORD")) {
                    ResultReceiver resultReceiver3 = this.resultReceiver;
                    Intrinsics.checkNotNull(resultReceiver3);
                    setupFailure(resultReceiver3, "CREATE_UNKNOWN", "internal error during password creation");
                    break;
                }
                break;
            case 1980564212:
                if (str.equals("SIGN_IN_INTENT")) {
                    ResultReceiver resultReceiver4 = this.resultReceiver;
                    Intrinsics.checkNotNull(resultReceiver4);
                    setupFailure(resultReceiver4, "GET_UNKNOWN", "internal error during the sign-in intent operation");
                    break;
                }
                break;
        }
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        ResultReceiver resultReceiver = this.resultReceiver;
        if (resultReceiver != null) {
            CredentialProviderBaseController.Companion.reportResult$credentials_play_services_auth_release(resultReceiver, i, i2, intent);
        }
        this.mWaitingForActivityResult = false;
        finish();
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
