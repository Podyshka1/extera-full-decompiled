package org.telegram.messenger;

import android.content.Intent;
import android.widget.RemoteViewsService;

/* JADX INFO: loaded from: classes6.dex */
public class ChatsWidgetService extends RemoteViewsService {
    @Override // android.widget.RemoteViewsService
    public RemoteViewsService.RemoteViewsFactory onGetViewFactory(Intent intent) {
        return new ChatsRemoteViewsFactory(getApplicationContext(), intent);
    }
}
