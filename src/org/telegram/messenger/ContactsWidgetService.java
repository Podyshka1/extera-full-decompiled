package org.telegram.messenger;

import android.content.Intent;
import android.widget.RemoteViewsService;

/* JADX INFO: loaded from: classes6.dex */
public class ContactsWidgetService extends RemoteViewsService {
    @Override // android.widget.RemoteViewsService
    public RemoteViewsService.RemoteViewsFactory onGetViewFactory(Intent intent) {
        return new ContactsRemoteViewsFactory(getApplicationContext(), intent);
    }
}
