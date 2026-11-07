package org.telegram.messenger.car;

import androidx.car.app.CarContext;
import androidx.car.app.Screen;
import androidx.car.app.model.Action;
import androidx.car.app.model.CarIcon;
import androidx.car.app.model.ItemList;
import androidx.car.app.model.ListTemplate;
import androidx.car.app.model.MessageTemplate;
import androidx.car.app.model.OnClickListener;
import androidx.car.app.model.Row;
import androidx.car.app.model.Template;
import androidx.core.graphics.drawable.IconCompat;
import androidx.view.DefaultLifecycleObserver;
import androidx.view.LifecycleOwner;
import java.util.ArrayList;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.TelegramMediaSession;

/* JADX INFO: loaded from: classes5.dex */
public class MusicSongsScreen extends Screen implements DefaultLifecycleObserver, NotificationCenter.NotificationCenterDelegate {
    private final long dialogId;
    private final String title;

    public MusicSongsScreen(CarContext carContext, long j, String str) {
        super(carContext);
        this.dialogId = j;
        this.title = str == null ? _UrlKt.FRAGMENT_ENCODE_SET : str;
        getLifecycle().addObserver(this);
    }

    @Override // androidx.view.DefaultLifecycleObserver
    public void onResume(LifecycleOwner lifecycleOwner) {
        for (int i = 0; i < 16; i++) {
            NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.messagePlayingDidStart);
            NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.messagePlayingPlayStateChanged);
        }
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.activeAccountChanged);
    }

    @Override // androidx.view.DefaultLifecycleObserver
    public void onPause(LifecycleOwner lifecycleOwner) {
        for (int i = 0; i < 16; i++) {
            NotificationCenter.getInstance(i).removeObserver(this, NotificationCenter.messagePlayingDidStart);
            NotificationCenter.getInstance(i).removeObserver(this, NotificationCenter.messagePlayingPlayStateChanged);
        }
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.activeAccountChanged);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.activeAccountChanged) {
            getScreenManager().pop();
        } else {
            invalidate();
        }
    }

    @Override // androidx.car.app.Screen
    public Template onGetTemplate() {
        TelegramMediaSession telegramMediaSession = TelegramMediaSession.getInstance(getCarContext().getApplicationContext());
        String str = this.title.isEmpty() ? " " : this.title;
        ArrayList<MessageObject> musicMessages = telegramMediaSession.getMusicMessages(this.dialogId);
        if (musicMessages == null) {
            telegramMediaSession.loadMusicForDialog(this.dialogId, new Runnable() { // from class: org.telegram.messenger.car.MusicSongsScreen$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.invalidate();
                }
            });
            return new ListTemplate.Builder().setTitle(str).setHeaderAction(Action.BACK).setLoading(true).build();
        }
        if (musicMessages.isEmpty()) {
            return new MessageTemplate.Builder(LocaleController.getString(C2665R.string.NoCarMusic)).setTitle(str).setHeaderAction(Action.BACK).build();
        }
        MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
        long id = playingMessageObject != null ? playingMessageObject.getId() : 0L;
        long dialogId = playingMessageObject != null ? playingMessageObject.getDialogId() : 0L;
        ItemList.Builder builder = new ItemList.Builder();
        int iMin = Math.min(musicMessages.size(), 200);
        for (final int i = 0; i < iMin; i++) {
            MessageObject messageObject = musicMessages.get(i);
            if (messageObject != null) {
                String musicTitle = messageObject.getMusicTitle();
                String musicAuthor = messageObject.getMusicAuthor();
                Row.Builder builder2 = new Row.Builder();
                if (musicTitle == null) {
                    musicTitle = " ";
                }
                Row.Builder title = builder2.setTitle(musicTitle);
                if (musicAuthor != null && !musicAuthor.isEmpty()) {
                    title.addText(musicAuthor);
                }
                if (playingMessageObject != null && dialogId == messageObject.getDialogId() && id == messageObject.getId()) {
                    title.setImage(new CarIcon.Builder(IconCompat.createWithResource(getCarContext(), C2665R.drawable.ic_player)).build());
                }
                title.setOnClickListener(new OnClickListener() { // from class: org.telegram.messenger.car.MusicSongsScreen$$ExternalSyntheticLambda1
                    @Override // androidx.car.app.model.OnClickListener
                    public final void onClick() {
                        this.f$0.lambda$onGetTemplate$0(i);
                    }
                });
                builder.addItem(title.build());
            }
        }
        return new ListTemplate.Builder().setTitle(str).setHeaderAction(Action.BACK).setSingleList(builder.build()).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: playAtIndex, reason: merged with bridge method [inline-methods] */
    public void lambda$onGetTemplate$0(int i) {
        try {
            TelegramMediaSession.getInstance(getCarContext().getApplicationContext()).getSession().getController().getTransportControls().playFromMediaId(this.dialogId + "_" + i, null);
        } catch (Throwable unused) {
        }
    }
}
