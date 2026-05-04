package org.telegram.messenger.support.customtabs;

import android.os.Bundle;

/* JADX INFO: loaded from: classes5.dex */
public abstract class CustomTabsCallback {
    public void extraCallback(String str, Bundle bundle) {
    }

    public void onMessageChannelReady(Bundle bundle) {
    }

    public abstract void onNavigationEvent(int i, Bundle bundle);

    public void onPostMessage(String str, Bundle bundle) {
    }
}
