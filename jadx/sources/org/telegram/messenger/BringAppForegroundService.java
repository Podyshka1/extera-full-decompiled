package org.telegram.messenger;

import android.app.IntentService;
import android.content.Intent;
import org.telegram.p029ui.LaunchActivity;

/* JADX INFO: loaded from: classes5.dex */
public class BringAppForegroundService extends IntentService {
    public BringAppForegroundService() {
        super("BringAppForegroundService");
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        Intent intent2 = new Intent(this, (Class<?>) LaunchActivity.class);
        intent2.setFlags(268435456);
        intent2.setAction("android.intent.action.MAIN");
        startActivity(intent2);
    }
}
