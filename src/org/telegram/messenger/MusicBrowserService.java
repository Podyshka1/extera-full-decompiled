package org.telegram.messenger;

import android.media.browse.MediaBrowser;
import android.os.Bundle;
import android.os.Process;
import android.service.media.MediaBrowserService;
import android.widget.Toast;
import java.util.List;
import org.telegram.messenger.TelegramMediaSession;

/* JADX INFO: loaded from: classes5.dex */
public class MusicBrowserService extends MediaBrowserService {
    private static final String MEDIA_ID_ROOT = "__ROOT__";

    @Override // android.service.media.MediaBrowserService, android.app.Service
    public void onCreate() {
        super.onCreate();
        ApplicationLoader.postInitApplication();
        setSessionToken(TelegramMediaSession.getInstance(this).getFrameworkSessionToken());
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // android.service.media.MediaBrowserService
    public MediaBrowserService.BrowserRoot onGetRoot(String str, int i, Bundle bundle) {
        if (str == null) {
            return null;
        }
        if ((1000 == i || Process.myUid() == i || PackageValidator.isKnownCaller(this, str, i)) && !TelegramMediaSession.getInstance(this).isPasscodeLocked()) {
            return new MediaBrowserService.BrowserRoot(MEDIA_ID_ROOT, TelegramMediaSession.getInstance(this).buildRootHints());
        }
        return null;
    }

    @Override // android.service.media.MediaBrowserService
    public void onLoadChildren(String str, final MediaBrowserService.Result<List<MediaBrowser.MediaItem>> result) {
        TelegramMediaSession telegramMediaSession = TelegramMediaSession.getInstance(this);
        if (telegramMediaSession.isPasscodeLocked()) {
            Toast.makeText(getApplicationContext(), LocaleController.getString(C2573R.string.EnterYourTelegramPasscode), 1).show();
            stopSelf();
            result.detach();
        } else {
            result.detach();
            telegramMediaSession.loadBrowseChildren(str, new TelegramMediaSession.BrowseChildrenCallback() { // from class: org.telegram.messenger.MusicBrowserService$$ExternalSyntheticLambda0
                @Override // org.telegram.messenger.TelegramMediaSession.BrowseChildrenCallback
                public final void onResult(List list) {
                    result.sendResult(list);
                }
            });
        }
    }
}
