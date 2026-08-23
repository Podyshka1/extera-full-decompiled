package androidx.credentials.playservices.controllers.identitycredentials;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.ResultReceiver;
import androidx.credentials.playservices.controllers.CredentialProviderBaseController;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public class IdentityCredentialApiHiddenActivity extends Activity {
    public static final Companion Companion = new Companion(null);
    private boolean mWaitingForActivityResult;
    private ResultReceiver resultReceiver;

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) throws IntentSender.SendIntentException {
        super.onCreate(bundle);
        overridePendingTransition(0, 0);
        ResultReceiver resultReceiver = (ResultReceiver) getIntent().getParcelableExtra("RESULT_RECEIVER");
        this.resultReceiver = resultReceiver;
        if (resultReceiver == null) {
            finish();
        }
        String stringExtra = getIntent().getStringExtra("EXTRA_ERROR_NAME");
        if (stringExtra == null) {
            finish();
            return;
        }
        restoreState(bundle);
        if (this.mWaitingForActivityResult) {
            return;
        }
        PendingIntent pendingIntent = (PendingIntent) getIntent().getParcelableExtra("EXTRA_FLOW_PENDING_INTENT");
        if (pendingIntent != null) {
            this.mWaitingForActivityResult = true;
            startIntentSenderForResult(pendingIntent.getIntentSender(), CredentialProviderBaseController.Companion.m170xa2b31783(), null, 0, 0, 0, null);
        } else {
            ResultReceiver resultReceiver2 = this.resultReceiver;
            if (resultReceiver2 != null) {
                CredentialProviderBaseController.Companion.reportError$credentials_play_services_auth_release(resultReceiver2, stringExtra, "Internal error");
            }
            finish();
        }
    }

    private final void restoreState(Bundle bundle) {
        if (bundle != null) {
            this.mWaitingForActivityResult = bundle.getBoolean("androidx.credentials.playservices.AWAITING_RESULT", false);
        }
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle outState) {
        Intrinsics.checkNotNullParameter(outState, "outState");
        outState.putBoolean("androidx.credentials.playservices.AWAITING_RESULT", this.mWaitingForActivityResult);
        super.onSaveInstanceState(outState);
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
