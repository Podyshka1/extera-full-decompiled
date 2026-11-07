package androidx.media3.session;

import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;

/* JADX INFO: loaded from: classes4.dex */
abstract class DefaultActionFactory {
    public static KeyEvent getKeyEvent(Intent intent) {
        Bundle extras = intent.getExtras();
        if (extras == null || !extras.containsKey("android.intent.extra.KEY_EVENT")) {
            return null;
        }
        return (KeyEvent) extras.getParcelable("android.intent.extra.KEY_EVENT");
    }
}
