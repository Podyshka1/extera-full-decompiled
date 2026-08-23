package org.telegram.ui;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import org.telegram.ui.Components.voip.VoIPHelper;

/* JADX INFO: loaded from: classes6.dex */
public class VoIPFeedbackActivity extends Activity {
    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        getWindow().addFlags(524288);
        super.onCreate(bundle);
        overridePendingTransition(0, 0);
        setContentView(new View(this));
        VoIPHelper.showRateAlert(this, new Runnable() { // from class: org.telegram.ui.VoIPFeedbackActivity$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.finish();
            }
        }, getIntent().getBooleanExtra("call_video", false), getIntent().getLongExtra("call_id", 0L), getIntent().getLongExtra("call_access_hash", 0L), getIntent().getIntExtra("account", 0), false);
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(0, 0);
    }
}
