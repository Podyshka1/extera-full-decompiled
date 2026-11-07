package org.telegram.messenger;

import android.annotation.SuppressLint;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.media.AudioManager;
import android.media.RemoteControlClient;
import android.media.session.MediaSession;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import android.widget.RemoteViews;
import androidx.mediarouter.media.MediaItemMetadata;
import com.exteragram.messenger.icons.IconManager;
import com.exteragram.messenger.utils.AppUtils;
import com.google.android.gms.cast.MediaError;
import java.io.File;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.audioinfo.AudioInfo;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AudioPlayerAlert;
import org.telegram.ui.Components.AvatarDrawable;
import org.telegram.ui.LaunchActivity;
import org.webrtc.MediaStreamTrack;

/* JADX INFO: loaded from: classes5.dex */
public class MusicPlayerService extends Service implements NotificationCenter.NotificationCenterDelegate {
    private static final int ID_NOTIFICATION = 5;
    public static final String NOTIFY_CLOSE = "org.telegram.android.musicplayer.close";
    public static final String NOTIFY_NEXT = "org.telegram.android.musicplayer.next";
    public static final String NOTIFY_PAUSE = "org.telegram.android.musicplayer.pause";
    public static final String NOTIFY_PLAY = "org.telegram.android.musicplayer.play";
    public static final String NOTIFY_PREVIOUS = "org.telegram.android.musicplayer.previous";
    public static final String NOTIFY_REPEAT = "org.telegram.android.musicplayer.repeat";
    public static final String NOTIFY_SEEK = "org.telegram.android.musicplayer.seek";
    public static final String NOTIFY_SHUFFLE = "org.telegram.android.musicplayer.shuffle";
    private static boolean supportBigNotifications = true;
    private static boolean supportLockScreenControls = !TextUtils.isEmpty(AndroidUtilities.getSystemProperty("ro.miui.ui.version.code"));
    private Bitmap albumArtPlaceholder;
    private AudioManager audioManager;
    private boolean foregroundServiceIsStarted;
    private BroadcastReceiver headsetPlugReceiver = new BroadcastReceiver() { // from class: org.telegram.messenger.MusicPlayerService.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.media.AUDIO_BECOMING_NOISY".equals(intent.getAction())) {
                MediaController.getInstance().lambda$startAudioAgain$7(MediaController.getInstance().getPlayingMessageObject());
            }
        }
    };
    private ImageReceiver imageReceiver;
    private String loadingFilePath;
    private MediaSessionCompat mediaSession;
    private int notificationMessageID;
    private PlaybackStateCompat.Builder playbackState;
    private RemoteControlClient remoteControlClient;

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        this.audioManager = (AudioManager) getSystemService(MediaStreamTrack.AUDIO_TRACK_KIND);
        for (int i = 0; i < 16; i++) {
            NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.messagePlayingDidSeek);
            NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.messagePlayingPlayStateChanged);
            NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.httpFileDidLoad);
            NotificationCenter.getInstance(i).addObserver(this, NotificationCenter.fileLoaded);
        }
        ImageReceiver imageReceiver = new ImageReceiver(null);
        this.imageReceiver = imageReceiver;
        imageReceiver.setDelegate(new ImageReceiver.ImageReceiverDelegate() { // from class: org.telegram.messenger.MusicPlayerService$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
            public final void didSetImage(ImageReceiver imageReceiver2, boolean z, boolean z2, boolean z3) {
                this.f$0.lambda$onCreate$0(imageReceiver2, z, z2, z3);
            }
        });
        this.mediaSession = new MediaSessionCompat(this, "telegramAudioPlayer");
        this.playbackState = new PlaybackStateCompat.Builder();
        this.albumArtPlaceholder = Bitmap.createBitmap(AndroidUtilities.dp(102.0f), AndroidUtilities.dp(102.0f), Bitmap.Config.ARGB_8888);
        Drawable drawable = getResources().getDrawable(C2665R.drawable.nocover_big);
        drawable.setBounds(0, 0, this.albumArtPlaceholder.getWidth(), this.albumArtPlaceholder.getHeight());
        drawable.draw(new Canvas(this.albumArtPlaceholder));
        this.mediaSession.setCallback(new MediaSessionCompat.Callback() { // from class: org.telegram.messenger.MusicPlayerService.2
            @Override // android.support.v4.media.session.MediaSessionCompat.Callback
            public void onStop() {
            }

            @Override // android.support.v4.media.session.MediaSessionCompat.Callback
            public void onPlay() {
                MediaController.getInstance().playMessage(MediaController.getInstance().getPlayingMessageObject());
            }

            @Override // android.support.v4.media.session.MediaSessionCompat.Callback
            public void onPause() {
                MediaController.getInstance().lambda$startAudioAgain$7(MediaController.getInstance().getPlayingMessageObject());
            }

            @Override // android.support.v4.media.session.MediaSessionCompat.Callback
            public void onSkipToNext() {
                MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
                if (playingMessageObject == null || !playingMessageObject.isMusic()) {
                    return;
                }
                MediaController.getInstance().playNextMessage();
            }

            @Override // android.support.v4.media.session.MediaSessionCompat.Callback
            public void onSkipToPrevious() {
                MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
                if (playingMessageObject == null || !playingMessageObject.isMusic()) {
                    return;
                }
                MediaController.getInstance().playPreviousMessage();
            }

            @Override // android.support.v4.media.session.MediaSessionCompat.Callback
            public void onSeekTo(long j) {
                MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
                if (playingMessageObject != null) {
                    MediaController.getInstance().seekToProgress(playingMessageObject, (j / 1000) / ((float) playingMessageObject.getDuration()));
                    MusicPlayerService.this.updatePlaybackState(j);
                }
            }

            @Override // android.support.v4.media.session.MediaSessionCompat.Callback
            public void onSetRepeatMode(int i2) {
                SharedConfig.setRepeatMode(i2 != 1 ? (i2 == 2 || i2 == 3) ? 1 : 0 : 2);
                MusicPlayerService.this.updateRepeatMode();
                MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
                if (playingMessageObject != null) {
                    MusicPlayerService.this.createNotification(playingMessageObject, false);
                }
            }

            @Override // android.support.v4.media.session.MediaSessionCompat.Callback
            public void onSetShuffleMode(int i2) {
                if (i2 == 1 || i2 == 2) {
                    if (!SharedConfig.shuffleMusic) {
                        MediaController.getInstance().setPlaybackOrderType(2);
                    }
                } else if (SharedConfig.shuffleMusic) {
                    MediaController.getInstance().setPlaybackOrderType(0);
                }
                MusicPlayerService.this.updateShuffleMode();
                MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
                if (playingMessageObject != null) {
                    MusicPlayerService.this.createNotification(playingMessageObject, false);
                }
            }

            @Override // android.support.v4.media.session.MediaSessionCompat.Callback
            public void onCustomAction(String str, Bundle bundle) {
                if (MusicPlayerService.NOTIFY_REPEAT.equals(str)) {
                    SharedConfig.setRepeatMode((SharedConfig.repeatMode + 1) % 3);
                    MusicPlayerService.this.updateRepeatMode();
                    AudioPlayerAlert audioPlayerAlert = AudioPlayerAlert.instance;
                    if (audioPlayerAlert != null) {
                        audioPlayerAlert.updateRepeatButton();
                    }
                } else if (MusicPlayerService.NOTIFY_SHUFFLE.equals(str)) {
                    if (SharedConfig.shuffleMusic) {
                        MediaController.getInstance().setPlaybackOrderType(0);
                    } else {
                        MediaController.getInstance().setPlaybackOrderType(2);
                    }
                    MusicPlayerService.this.updateShuffleMode();
                    AudioPlayerAlert audioPlayerAlert2 = AudioPlayerAlert.instance;
                    if (audioPlayerAlert2 != null) {
                        audioPlayerAlert2.updateRepeatButton();
                    }
                }
                MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
                if (playingMessageObject != null) {
                    MusicPlayerService.this.createNotification(playingMessageObject, false);
                }
            }
        });
        this.mediaSession.setActive(true);
        updateRepeatMode();
        updateShuffleMode();
        registerReceiver(this.headsetPlugReceiver, new IntentFilter("android.media.AUDIO_BECOMING_NOISY"));
        super.onCreate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$0(ImageReceiver imageReceiver, boolean z, boolean z2, boolean z3) {
        if (!z || TextUtils.isEmpty(this.loadingFilePath)) {
            return;
        }
        MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
        if (playingMessageObject != null) {
            createNotification(playingMessageObject, true);
        }
        this.loadingFilePath = null;
    }

    @Override // android.app.Service
    @SuppressLint({"NewApi"})
    public int onStartCommand(Intent intent, int i, int i2) {
        if (intent != null) {
            try {
                if ((getPackageName() + ".STOP_PLAYER").equals(intent.getAction())) {
                    MediaController.getInstance().cleanupPlayer(true, true);
                    return 2;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
        if (playingMessageObject == null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MusicPlayerService$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.stopSelf();
                }
            });
            return 1;
        }
        if (supportLockScreenControls) {
            ComponentName componentName = new ComponentName(getApplicationContext(), MusicPlayerReceiver.class.getName());
            try {
                if (this.remoteControlClient == null) {
                    this.audioManager.registerMediaButtonEventReceiver(componentName);
                    Intent intent2 = new Intent("android.intent.action.MEDIA_BUTTON");
                    intent2.setComponent(componentName);
                    RemoteControlClient remoteControlClient = new RemoteControlClient(PendingIntent.getBroadcast(this, 0, intent2, fixIntentFlags(33554432)));
                    this.remoteControlClient = remoteControlClient;
                    this.audioManager.registerRemoteControlClient(remoteControlClient);
                }
                this.remoteControlClient.setTransportControlFlags(189);
            } catch (Exception e2) {
                FileLog.m992e(e2);
            }
        }
        createNotification(playingMessageObject, false);
        return 1;
    }

    private Bitmap loadArtworkFromUrl(String str, boolean z, boolean z2) {
        File httpFilePath = ImageLoader.getHttpFilePath(str, "jpg");
        if (httpFilePath.exists()) {
            return ImageLoader.loadBitmap(httpFilePath.getAbsolutePath(), null, z ? 600.0f : 100.0f, z ? 600.0f : 100.0f, false);
        }
        if (z2) {
            this.loadingFilePath = httpFilePath.getAbsolutePath();
            if (!z) {
                this.imageReceiver.setImage(str, "48_48", null, null, 0L);
            }
        } else {
            this.loadingFilePath = null;
        }
        return null;
    }

    private Bitmap getAvatarBitmap(TLObject tLObject, boolean z, boolean z2) {
        AvatarDrawable avatarDrawable;
        int i = z ? MediaError.DetailedErrorCode.TEXT_UNKNOWN : 100;
        try {
            if (tLObject instanceof TLRPC.User) {
                TLRPC.User user = (TLRPC.User) tLObject;
                TLRPC.UserProfilePhoto userProfilePhoto = user.photo;
                TLRPC.FileLocation fileLocation = z ? userProfilePhoto.photo_big : userProfilePhoto.photo_small;
                if (fileLocation != null) {
                    File pathToAttach = FileLoader.getInstance(UserConfig.selectedAccount).getPathToAttach(fileLocation, true);
                    if (pathToAttach.exists()) {
                        float f = i;
                        return ImageLoader.loadBitmap(pathToAttach.getAbsolutePath(), null, f, f, false);
                    }
                    if (z) {
                        if (z2) {
                            this.loadingFilePath = FileLoader.getAttachFileName(fileLocation);
                            this.imageReceiver.setImage(ImageLocation.getForUser(UserConfig.selectedAccount, user, 0), _UrlKt.FRAGMENT_ENCODE_SET, null, null, null, 0);
                        } else {
                            this.loadingFilePath = null;
                        }
                    }
                }
            } else {
                TLRPC.Chat chat = (TLRPC.Chat) tLObject;
                TLRPC.FileLocation fileLocation2 = z ? chat.photo.photo_big : chat.photo.photo_small;
                if (fileLocation2 != null) {
                    File pathToAttach2 = FileLoader.getInstance(UserConfig.selectedAccount).getPathToAttach(fileLocation2, true);
                    if (pathToAttach2.exists()) {
                        float f2 = i;
                        return ImageLoader.loadBitmap(pathToAttach2.getAbsolutePath(), null, f2, f2, false);
                    }
                    if (z) {
                        if (z2) {
                            this.loadingFilePath = FileLoader.getAttachFileName(fileLocation2);
                            this.imageReceiver.setImage(ImageLocation.getForChat(chat, 0), _UrlKt.FRAGMENT_ENCODE_SET, null, null, null, 0);
                        } else {
                            this.loadingFilePath = null;
                        }
                    }
                }
            }
        } catch (Throwable th) {
            FileLog.m992e(th);
        }
        if (z) {
            return null;
        }
        Theme.createDialogsResources(this);
        if (tLObject instanceof TLRPC.User) {
            avatarDrawable = new AvatarDrawable((TLRPC.User) tLObject);
        } else {
            avatarDrawable = new AvatarDrawable((TLRPC.Chat) tLObject);
        }
        avatarDrawable.setRoundRadius(1);
        float f3 = i;
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(AndroidUtilities.dp(f3), AndroidUtilities.dp(f3), Bitmap.Config.ARGB_8888);
        avatarDrawable.setBounds(0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight());
        avatarDrawable.draw(new Canvas(bitmapCreateBitmap));
        return bitmapCreateBitmap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:105:0x03be  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x04e6  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0512  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x051d  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x0526  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0534  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x0541  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0555  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0569  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x0580  */
    /* JADX WARN: Removed duplicated region for block: B:218:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0188  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x018f  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01fe  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0201  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x02b7  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x02c9  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x02ff  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x030a  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0330  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x033b  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0345  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0349  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x036d  */
    @SuppressLint({"NewApi"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void createNotification(MessageObject messageObject, boolean z) {
        long j;
        Bitmap avatarBitmap;
        Bitmap smallCover;
        Bitmap avatarBitmap2;
        Bitmap cover;
        Bitmap bitmap;
        Bitmap bitmap2;
        PendingIntent pendingIntent;
        String str;
        String str2;
        int i;
        long j2;
        String str3;
        int i2;
        int i3;
        int i4;
        TelegramMediaSession telegramMediaSessionPeekInstance;
        Bitmap bitmap3;
        int i5;
        String musicTitle = messageObject.getMusicTitle();
        String musicAuthor = messageObject.getMusicAuthor();
        AudioInfo audioInfo = MediaController.getInstance().getAudioInfo();
        Intent intent = new Intent(ApplicationLoader.applicationContext, (Class<?>) LaunchActivity.class);
        if (messageObject.isMusic()) {
            intent.setAction("com.tmessages.openplayer");
            intent.addCategory("android.intent.category.LAUNCHER");
        } else if (messageObject.isVoice() || messageObject.isRoundVideo()) {
            intent.setAction("android.intent.action.VIEW");
            TLRPC.Peer peer = messageObject.messageOwner.peer_id;
            if (peer instanceof TLRPC.TL_peerUser) {
                j = peer.user_id;
            } else if (peer instanceof TLRPC.TL_peerChat) {
                j = peer.chat_id;
            } else {
                j = peer instanceof TLRPC.TL_peerChannel ? peer.channel_id : 0L;
            }
            if (j != 0) {
                if (peer instanceof TLRPC.TL_peerUser) {
                    intent.setData(Uri.parse("tg://openmessage?user_id=" + j + "&message_id=" + messageObject.getId()));
                } else {
                    intent.setData(Uri.parse("tg://openmessage?chat_id=" + j + "&message_id=" + messageObject.getId()));
                }
            }
        }
        PendingIntent activity = PendingIntent.getActivity(ApplicationLoader.applicationContext, 0, intent, fixIntentFlags(33554432));
        long duration = (long) (messageObject.getDuration() * 1000.0d);
        if (messageObject.isMusic()) {
            String artworkUrl = messageObject.getArtworkUrl(true);
            String artworkUrl2 = messageObject.getArtworkUrl(false);
            smallCover = audioInfo != null ? audioInfo.getSmallCover() : null;
            cover = audioInfo != null ? audioInfo.getCover() : null;
            this.loadingFilePath = null;
            this.imageReceiver.setImageBitmap((Drawable) null);
            if (smallCover == null && !TextUtils.isEmpty(artworkUrl)) {
                boolean z2 = !z;
                cover = loadArtworkFromUrl(artworkUrl2, true, z2);
                if (cover == null) {
                    smallCover = loadArtworkFromUrl(artworkUrl, false, z2);
                    cover = smallCover;
                } else {
                    smallCover = loadArtworkFromUrl(artworkUrl2, false, z2);
                }
            } else {
                this.loadingFilePath = FileLoader.getInstance(UserConfig.selectedAccount).getPathToAttach(messageObject.getDocument()).getAbsolutePath();
            }
        } else {
            if (messageObject.isVoice() || messageObject.isRoundVideo()) {
                long senderId = messageObject.getSenderId();
                if (messageObject.isFromUser()) {
                    TLRPC.User user = MessagesController.getInstance(UserConfig.selectedAccount).getUser(Long.valueOf(senderId));
                    if (user != null) {
                        musicTitle = UserObject.getUserName(user);
                        boolean z3 = !z;
                        avatarBitmap = getAvatarBitmap(user, true, z3);
                        avatarBitmap2 = getAvatarBitmap(user, false, z3);
                    } else {
                        avatarBitmap2 = null;
                        avatarBitmap = null;
                    }
                } else {
                    TLRPC.Chat chat = MessagesController.getInstance(UserConfig.selectedAccount).getChat(Long.valueOf(-senderId));
                    if (chat != null) {
                        musicTitle = chat.title;
                        boolean z4 = !z;
                        avatarBitmap = getAvatarBitmap(chat, true, z4);
                        avatarBitmap2 = getAvatarBitmap(chat, false, z4);
                    } else {
                        avatarBitmap = null;
                        smallCover = null;
                        cover = (avatarBitmap == null || smallCover == null) ? avatarBitmap : smallCover;
                        musicAuthor = !messageObject.isVoice() ? LocaleController.getString(C2665R.string.AttachAudio) : LocaleController.getString(C2665R.string.AttachRound);
                    }
                }
                smallCover = avatarBitmap2;
                if (avatarBitmap == null) {
                    if (!messageObject.isVoice()) {
                    }
                }
                boolean zIsMessagePaused = MediaController.getInstance().isMessagePaused();
                boolean z5 = !zIsMessagePaused;
                PendingIntent broadcast = PendingIntent.getBroadcast(getApplicationContext(), 0, new Intent(NOTIFY_PREVIOUS).setComponent(new ComponentName(this, (Class<?>) MusicPlayerReceiver.class)), fixIntentFlags(301989888));
                PendingIntent service = PendingIntent.getService(getApplicationContext(), 0, new Intent(this, getClass()).setAction(getPackageName() + ".STOP_PLAYER"), fixIntentFlags(301989888));
                bitmap2 = bitmap;
                PendingIntent broadcast2 = PendingIntent.getBroadcast(getApplicationContext(), 0, new Intent(!zIsMessagePaused ? NOTIFY_PAUSE : NOTIFY_PLAY).setComponent(new ComponentName(this, (Class<?>) MusicPlayerReceiver.class)), fixIntentFlags(301989888));
                PendingIntent broadcast3 = PendingIntent.getBroadcast(getApplicationContext(), 0, new Intent(NOTIFY_NEXT).setComponent(new ComponentName(this, (Class<?>) MusicPlayerReceiver.class)), fixIntentFlags(301989888));
                PendingIntent.getBroadcast(getApplicationContext(), 0, new Intent(NOTIFY_SEEK).setComponent(new ComponentName(this, (Class<?>) MusicPlayerReceiver.class)), fixIntentFlags(301989888));
                PendingIntent broadcast4 = PendingIntent.getBroadcast(getApplicationContext(), 0, new Intent(NOTIFY_REPEAT).setComponent(new ComponentName(this, (Class<?>) MusicPlayerReceiver.class)), fixIntentFlags(301989888));
                PendingIntent broadcast5 = PendingIntent.getBroadcast(getApplicationContext(), 0, new Intent(NOTIFY_SHUFFLE).setComponent(new ComponentName(this, (Class<?>) MusicPlayerReceiver.class)), fixIntentFlags(301989888));
                Notification.MediaStyle mediaSession = new Notification.MediaStyle().setMediaSession((MediaSession.Token) this.mediaSession.getSessionToken().getToken());
                if (messageObject.isMusic()) {
                    pendingIntent = broadcast5;
                    str = NOTIFY_REPEAT;
                    str2 = NOTIFY_SHUFFLE;
                    mediaSession.setShowActionsInCompactView(0, 1, 2, 3, 4);
                } else {
                    pendingIntent = broadcast5;
                    str = NOTIFY_REPEAT;
                    str2 = NOTIFY_SHUFFLE;
                    if (messageObject.isVoice() || messageObject.isRoundVideo()) {
                        mediaSession.setShowActionsInCompactView(0);
                    }
                }
                Notification.Builder builder = new Notification.Builder(this);
                builder.setSmallIcon(IconManager.getNotificationSystemIcon()).setOngoing(z5).setContentTitle(musicTitle).setContentText(musicAuthor).setSubText((audioInfo == null || !messageObject.isMusic()) ? null : audioInfo.getAlbum()).setContentIntent(activity).setDeleteIntent(service).setShowWhen(false).setCategory("transport").setPriority(2).setStyle(mediaSession);
                i = Build.VERSION.SDK_INT;
                if (i < 31) {
                    builder.setColor(AppUtils.getNotificationColor());
                }
                if (i >= 26) {
                    NotificationsController.checkOtherNotificationsChannel();
                    builder.setChannelId(NotificationsController.OTHER_NOTIFICATIONS_CHANNEL);
                }
                if (smallCover != null) {
                    builder.setLargeIcon(smallCover);
                } else {
                    builder.setLargeIcon(this.albumArtPlaceholder);
                }
                String string = LocaleController.getString(C2665R.string.Next);
                String string2 = LocaleController.getString(C2665R.string.AccDescrPrevious);
                this.playbackState = new PlaybackStateCompat.Builder();
                if (MediaController.getInstance().isDownloadingCurrentMessage()) {
                    j2 = 1000;
                    this.playbackState.setState(6, 0L, 1.0f).setActions(0L);
                    if (messageObject.isMusic()) {
                        builder.addAction(new Notification.Action.Builder(C2665R.drawable.ic_action_previous, string2, broadcast).build());
                    }
                    builder.addAction(new Notification.Action.Builder(C2665R.drawable.loading_animation2, LocaleController.getString(C2665R.string.Loading), (PendingIntent) null).build());
                    if (messageObject.isMusic()) {
                        builder.addAction(new Notification.Action.Builder(C2665R.drawable.ic_action_next, string, broadcast3).build());
                    }
                    str3 = musicTitle;
                    i2 = i;
                } else {
                    j2 = 1000;
                    long j3 = messageObject.isMusic() ? 2360118L : 2360070L;
                    if (messageObject.isMusic()) {
                        i2 = i;
                        str3 = musicTitle;
                        this.playbackState.addCustomAction(new PlaybackStateCompat.CustomAction.Builder(str2, LocaleController.getString(C2665R.string.ShuffleList), SharedConfig.shuffleMusic ? C2665R.drawable.player_new_shuffle : C2665R.drawable.player_new_shuffle_off).build());
                    } else {
                        str3 = musicTitle;
                        i2 = i;
                    }
                    this.playbackState.setState(!zIsMessagePaused ? 3 : 2, ((long) MediaController.getInstance().getPlayingMessageObject().audioProgressSec) * 1000, getPlaybackSpeed(z5, messageObject)).setActions(j3);
                    if (messageObject.isMusic()) {
                        int i6 = SharedConfig.repeatMode;
                        if (i6 == 1) {
                            i4 = C2665R.drawable.player_new_repeatall;
                        } else if (i6 == 2) {
                            i4 = C2665R.drawable.player_new_repeatone;
                        } else {
                            i4 = C2665R.drawable.player_new_repeat_off;
                        }
                        this.playbackState.addCustomAction(new PlaybackStateCompat.CustomAction.Builder(str, LocaleController.getString(C2665R.string.RepeatSong), i4).build());
                    }
                    String string3 = LocaleController.getString(!zIsMessagePaused ? C2665R.string.AccActionPause : C2665R.string.AccActionPlay);
                    if (messageObject.isMusic()) {
                        builder.addAction(new Notification.Action.Builder(SharedConfig.shuffleMusic ? C2665R.drawable.player_new_shuffle : C2665R.drawable.player_new_shuffle_off, LocaleController.getString(C2665R.string.ShuffleList), pendingIntent).build());
                        builder.addAction(new Notification.Action.Builder(C2665R.drawable.ic_action_previous, string2, broadcast).build());
                    }
                    builder.addAction(new Notification.Action.Builder(!zIsMessagePaused ? C2665R.drawable.ic_action_pause : C2665R.drawable.ic_action_play, string3, broadcast2).build());
                    if (messageObject.isMusic()) {
                        builder.addAction(new Notification.Action.Builder(C2665R.drawable.ic_action_next, string, broadcast3).build());
                        int i7 = SharedConfig.repeatMode;
                        if (i7 == 1) {
                            i3 = C2665R.drawable.player_new_repeatall;
                        } else if (i7 == 2) {
                            i3 = C2665R.drawable.player_new_repeatone;
                        } else {
                            i3 = C2665R.drawable.player_new_repeat_off;
                        }
                        builder.addAction(new Notification.Action.Builder(i3, LocaleController.getString(C2665R.string.RepeatSong), broadcast4).build());
                    }
                }
                PlaybackStateCompat playbackStateCompatBuild = this.playbackState.build();
                this.mediaSession.setPlaybackState(playbackStateCompatBuild);
                telegramMediaSessionPeekInstance = TelegramMediaSession.peekInstance();
                if (telegramMediaSessionPeekInstance != null) {
                    telegramMediaSessionPeekInstance.publishPlaybackState(playbackStateCompatBuild);
                }
                updateRepeatMode();
                updateShuffleMode();
                String str4 = str3;
                MediaMetadataCompat.Builder builderPutString = new MediaMetadataCompat.Builder().putString(MediaItemMetadata.KEY_ALBUM_ARTIST, musicAuthor).putString(MediaItemMetadata.KEY_ARTIST, musicAuthor).putLong(MediaItemMetadata.KEY_DURATION, duration).putString(MediaItemMetadata.KEY_TITLE, str4).putString("android.media.metadata.ALBUM", (audioInfo == null || !messageObject.isMusic()) ? null : audioInfo.getAlbum());
                if (bitmap2 == null || bitmap2.isRecycled()) {
                    bitmap3 = bitmap2;
                } else {
                    bitmap3 = bitmap2;
                    builderPutString.putBitmap("android.media.metadata.ALBUM_ART", bitmap3);
                }
                MediaMetadataCompat mediaMetadataCompatBuild = builderPutString.build();
                this.mediaSession.setMetadata(mediaMetadataCompatBuild);
                if (telegramMediaSessionPeekInstance != null) {
                    telegramMediaSessionPeekInstance.publishMetadata(mediaMetadataCompatBuild);
                }
                builder.setVisibility(1);
                Notification notificationBuild = builder.build();
                if (i2 >= 31) {
                    if (!this.foregroundServiceIsStarted) {
                        this.foregroundServiceIsStarted = true;
                        startForeground(5, notificationBuild);
                    } else {
                        ((NotificationManager) getSystemService("notification")).notify(5, notificationBuild);
                    }
                } else if (!zIsMessagePaused) {
                    startForeground(5, notificationBuild);
                } else {
                    stopForeground(false);
                    ((NotificationManager) getSystemService("notification")).notify(5, notificationBuild);
                }
                if (this.remoteControlClient != null) {
                    int id = MediaController.getInstance().getPlayingMessageObject().getId();
                    if (this.notificationMessageID != id) {
                        this.notificationMessageID = id;
                        RemoteControlClient.MetadataEditor metadataEditorEditMetadata = this.remoteControlClient.editMetadata(true);
                        i5 = 2;
                        metadataEditorEditMetadata.putString(2, musicAuthor);
                        metadataEditorEditMetadata.putString(7, str4);
                        if (audioInfo != null && !TextUtils.isEmpty(audioInfo.getAlbum())) {
                            metadataEditorEditMetadata.putString(1, audioInfo.getAlbum());
                        }
                        metadataEditorEditMetadata.putLong(9, ((long) MediaController.getInstance().getPlayingMessageObject().audioPlayerDuration) * j2);
                        if (bitmap3 != null) {
                            try {
                                metadataEditorEditMetadata.putBitmap(100, bitmap3);
                            } catch (Throwable th) {
                                FileLog.m992e(th);
                            }
                        }
                        metadataEditorEditMetadata.apply();
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.MusicPlayerService.3
                            @Override // java.lang.Runnable
                            public void run() {
                                if (MusicPlayerService.this.remoteControlClient == null || MediaController.getInstance().getPlayingMessageObject() == null) {
                                    return;
                                }
                                if (MediaController.getInstance().getPlayingMessageObject().audioPlayerDuration == -9223372036854775807L) {
                                    AndroidUtilities.runOnUIThread(this, 500L);
                                    return;
                                }
                                RemoteControlClient.MetadataEditor metadataEditorEditMetadata2 = MusicPlayerService.this.remoteControlClient.editMetadata(false);
                                metadataEditorEditMetadata2.putLong(9, ((long) MediaController.getInstance().getPlayingMessageObject().audioPlayerDuration) * 1000);
                                metadataEditorEditMetadata2.apply();
                                MusicPlayerService.this.remoteControlClient.setPlaybackState(MediaController.getInstance().isMessagePaused() ? 2 : 3, Math.max(((long) MediaController.getInstance().getPlayingMessageObject().audioProgressSec) * 1000, 100L), MediaController.getInstance().isMessagePaused() ? 0.0f : 1.0f);
                            }
                        }, j2);
                    } else {
                        i5 = 2;
                    }
                    boolean zIsDownloadingCurrentMessage = MediaController.getInstance().isDownloadingCurrentMessage();
                    RemoteControlClient remoteControlClient = this.remoteControlClient;
                    if (zIsDownloadingCurrentMessage) {
                        remoteControlClient.setPlaybackState(8);
                        return;
                    }
                    RemoteControlClient.MetadataEditor metadataEditorEditMetadata2 = remoteControlClient.editMetadata(false);
                    metadataEditorEditMetadata2.putLong(9, ((long) MediaController.getInstance().getPlayingMessageObject().audioPlayerDuration) * 1000);
                    metadataEditorEditMetadata2.apply();
                    this.remoteControlClient.setPlaybackState(MediaController.getInstance().isMessagePaused() ? i5 : 3, Math.max(((long) MediaController.getInstance().getPlayingMessageObject().audioProgressSec) * 1000, 100L), MediaController.getInstance().isMessagePaused() ? 0.0f : 1.0f);
                    return;
                }
                return;
            }
            bitmap = null;
            smallCover = null;
            boolean zIsMessagePaused2 = MediaController.getInstance().isMessagePaused();
            boolean z52 = !zIsMessagePaused2;
            PendingIntent broadcast6 = PendingIntent.getBroadcast(getApplicationContext(), 0, new Intent(NOTIFY_PREVIOUS).setComponent(new ComponentName(this, (Class<?>) MusicPlayerReceiver.class)), fixIntentFlags(301989888));
            PendingIntent service2 = PendingIntent.getService(getApplicationContext(), 0, new Intent(this, getClass()).setAction(getPackageName() + ".STOP_PLAYER"), fixIntentFlags(301989888));
            bitmap2 = bitmap;
            PendingIntent broadcast22 = PendingIntent.getBroadcast(getApplicationContext(), 0, new Intent(!zIsMessagePaused2 ? NOTIFY_PAUSE : NOTIFY_PLAY).setComponent(new ComponentName(this, (Class<?>) MusicPlayerReceiver.class)), fixIntentFlags(301989888));
            PendingIntent broadcast32 = PendingIntent.getBroadcast(getApplicationContext(), 0, new Intent(NOTIFY_NEXT).setComponent(new ComponentName(this, (Class<?>) MusicPlayerReceiver.class)), fixIntentFlags(301989888));
            PendingIntent.getBroadcast(getApplicationContext(), 0, new Intent(NOTIFY_SEEK).setComponent(new ComponentName(this, (Class<?>) MusicPlayerReceiver.class)), fixIntentFlags(301989888));
            PendingIntent broadcast42 = PendingIntent.getBroadcast(getApplicationContext(), 0, new Intent(NOTIFY_REPEAT).setComponent(new ComponentName(this, (Class<?>) MusicPlayerReceiver.class)), fixIntentFlags(301989888));
            PendingIntent broadcast52 = PendingIntent.getBroadcast(getApplicationContext(), 0, new Intent(NOTIFY_SHUFFLE).setComponent(new ComponentName(this, (Class<?>) MusicPlayerReceiver.class)), fixIntentFlags(301989888));
            Notification.MediaStyle mediaSession2 = new Notification.MediaStyle().setMediaSession((MediaSession.Token) this.mediaSession.getSessionToken().getToken());
            if (messageObject.isMusic()) {
            }
            Notification.Builder builder2 = new Notification.Builder(this);
            builder2.setSmallIcon(IconManager.getNotificationSystemIcon()).setOngoing(z52).setContentTitle(musicTitle).setContentText(musicAuthor).setSubText((audioInfo == null || !messageObject.isMusic()) ? null : audioInfo.getAlbum()).setContentIntent(activity).setDeleteIntent(service2).setShowWhen(false).setCategory("transport").setPriority(2).setStyle(mediaSession2);
            i = Build.VERSION.SDK_INT;
            if (i < 31) {
            }
            if (i >= 26) {
            }
            if (smallCover != null) {
            }
            String string4 = LocaleController.getString(C2665R.string.Next);
            String string22 = LocaleController.getString(C2665R.string.AccDescrPrevious);
            this.playbackState = new PlaybackStateCompat.Builder();
            if (MediaController.getInstance().isDownloadingCurrentMessage()) {
            }
            PlaybackStateCompat playbackStateCompatBuild2 = this.playbackState.build();
            this.mediaSession.setPlaybackState(playbackStateCompatBuild2);
            telegramMediaSessionPeekInstance = TelegramMediaSession.peekInstance();
            if (telegramMediaSessionPeekInstance != null) {
            }
            updateRepeatMode();
            updateShuffleMode();
            String str42 = str3;
            MediaMetadataCompat.Builder builderPutString2 = new MediaMetadataCompat.Builder().putString(MediaItemMetadata.KEY_ALBUM_ARTIST, musicAuthor).putString(MediaItemMetadata.KEY_ARTIST, musicAuthor).putLong(MediaItemMetadata.KEY_DURATION, duration).putString(MediaItemMetadata.KEY_TITLE, str42).putString("android.media.metadata.ALBUM", (audioInfo == null || !messageObject.isMusic()) ? null : audioInfo.getAlbum());
            if (bitmap2 == null) {
                bitmap3 = bitmap2;
            }
            MediaMetadataCompat mediaMetadataCompatBuild2 = builderPutString2.build();
            this.mediaSession.setMetadata(mediaMetadataCompatBuild2);
            if (telegramMediaSessionPeekInstance != null) {
            }
            builder2.setVisibility(1);
            Notification notificationBuild2 = builder2.build();
            if (i2 >= 31) {
            }
            if (this.remoteControlClient != null) {
            }
        }
        bitmap = cover;
        boolean zIsMessagePaused22 = MediaController.getInstance().isMessagePaused();
        boolean z522 = !zIsMessagePaused22;
        PendingIntent broadcast62 = PendingIntent.getBroadcast(getApplicationContext(), 0, new Intent(NOTIFY_PREVIOUS).setComponent(new ComponentName(this, (Class<?>) MusicPlayerReceiver.class)), fixIntentFlags(301989888));
        PendingIntent service22 = PendingIntent.getService(getApplicationContext(), 0, new Intent(this, getClass()).setAction(getPackageName() + ".STOP_PLAYER"), fixIntentFlags(301989888));
        bitmap2 = bitmap;
        PendingIntent broadcast222 = PendingIntent.getBroadcast(getApplicationContext(), 0, new Intent(!zIsMessagePaused22 ? NOTIFY_PAUSE : NOTIFY_PLAY).setComponent(new ComponentName(this, (Class<?>) MusicPlayerReceiver.class)), fixIntentFlags(301989888));
        PendingIntent broadcast322 = PendingIntent.getBroadcast(getApplicationContext(), 0, new Intent(NOTIFY_NEXT).setComponent(new ComponentName(this, (Class<?>) MusicPlayerReceiver.class)), fixIntentFlags(301989888));
        PendingIntent.getBroadcast(getApplicationContext(), 0, new Intent(NOTIFY_SEEK).setComponent(new ComponentName(this, (Class<?>) MusicPlayerReceiver.class)), fixIntentFlags(301989888));
        PendingIntent broadcast422 = PendingIntent.getBroadcast(getApplicationContext(), 0, new Intent(NOTIFY_REPEAT).setComponent(new ComponentName(this, (Class<?>) MusicPlayerReceiver.class)), fixIntentFlags(301989888));
        PendingIntent broadcast522 = PendingIntent.getBroadcast(getApplicationContext(), 0, new Intent(NOTIFY_SHUFFLE).setComponent(new ComponentName(this, (Class<?>) MusicPlayerReceiver.class)), fixIntentFlags(301989888));
        Notification.MediaStyle mediaSession22 = new Notification.MediaStyle().setMediaSession((MediaSession.Token) this.mediaSession.getSessionToken().getToken());
        if (messageObject.isMusic()) {
        }
        Notification.Builder builder22 = new Notification.Builder(this);
        builder22.setSmallIcon(IconManager.getNotificationSystemIcon()).setOngoing(z522).setContentTitle(musicTitle).setContentText(musicAuthor).setSubText((audioInfo == null || !messageObject.isMusic()) ? null : audioInfo.getAlbum()).setContentIntent(activity).setDeleteIntent(service22).setShowWhen(false).setCategory("transport").setPriority(2).setStyle(mediaSession22);
        i = Build.VERSION.SDK_INT;
        if (i < 31) {
        }
        if (i >= 26) {
        }
        if (smallCover != null) {
        }
        String string42 = LocaleController.getString(C2665R.string.Next);
        String string222 = LocaleController.getString(C2665R.string.AccDescrPrevious);
        this.playbackState = new PlaybackStateCompat.Builder();
        if (MediaController.getInstance().isDownloadingCurrentMessage()) {
        }
        PlaybackStateCompat playbackStateCompatBuild22 = this.playbackState.build();
        this.mediaSession.setPlaybackState(playbackStateCompatBuild22);
        telegramMediaSessionPeekInstance = TelegramMediaSession.peekInstance();
        if (telegramMediaSessionPeekInstance != null) {
        }
        updateRepeatMode();
        updateShuffleMode();
        String str422 = str3;
        MediaMetadataCompat.Builder builderPutString22 = new MediaMetadataCompat.Builder().putString(MediaItemMetadata.KEY_ALBUM_ARTIST, musicAuthor).putString(MediaItemMetadata.KEY_ARTIST, musicAuthor).putLong(MediaItemMetadata.KEY_DURATION, duration).putString(MediaItemMetadata.KEY_TITLE, str422).putString("android.media.metadata.ALBUM", (audioInfo == null || !messageObject.isMusic()) ? null : audioInfo.getAlbum());
        if (bitmap2 == null) {
        }
        MediaMetadataCompat mediaMetadataCompatBuild22 = builderPutString22.build();
        this.mediaSession.setMetadata(mediaMetadataCompatBuild22);
        if (telegramMediaSessionPeekInstance != null) {
        }
        builder22.setVisibility(1);
        Notification notificationBuild22 = builder22.build();
        if (i2 >= 31) {
        }
        if (this.remoteControlClient != null) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePlaybackState(long j) {
        long j2;
        int i;
        this.playbackState = new PlaybackStateCompat.Builder();
        boolean zIsMessagePaused = MediaController.getInstance().isMessagePaused();
        boolean z = !zIsMessagePaused;
        if (MediaController.getInstance().isDownloadingCurrentMessage()) {
            this.playbackState.setState(6, 0L, 1.0f).setActions(0L);
        } else {
            MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
            if (playingMessageObject == null || !playingMessageObject.isMusic()) {
                j2 = 2360070;
            } else {
                this.playbackState.addCustomAction(new PlaybackStateCompat.CustomAction.Builder(NOTIFY_SHUFFLE, LocaleController.getString(C2665R.string.ShuffleList), SharedConfig.shuffleMusic ? C2665R.drawable.player_new_shuffle : C2665R.drawable.player_new_shuffle_off).build());
                j2 = 2360118;
            }
            this.playbackState.setState(!zIsMessagePaused ? 3 : 2, j, getPlaybackSpeed(z, playingMessageObject)).setActions(j2);
            if (playingMessageObject != null && playingMessageObject.isMusic()) {
                int i2 = SharedConfig.repeatMode;
                if (i2 == 1) {
                    i = C2665R.drawable.player_new_repeatall;
                } else if (i2 == 2) {
                    i = C2665R.drawable.player_new_repeatone;
                } else {
                    i = C2665R.drawable.player_new_repeat_off;
                }
                this.playbackState.addCustomAction(new PlaybackStateCompat.CustomAction.Builder(NOTIFY_REPEAT, LocaleController.getString(C2665R.string.RepeatSong), i).build());
            }
        }
        PlaybackStateCompat playbackStateCompatBuild = this.playbackState.build();
        this.mediaSession.setPlaybackState(playbackStateCompatBuild);
        TelegramMediaSession telegramMediaSessionPeekInstance = TelegramMediaSession.peekInstance();
        if (telegramMediaSessionPeekInstance != null) {
            telegramMediaSessionPeekInstance.publishPlaybackState(playbackStateCompatBuild);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateRepeatMode() {
        MediaSessionCompat mediaSessionCompat = this.mediaSession;
        if (mediaSessionCompat != null) {
            int i = SharedConfig.repeatMode;
            mediaSessionCompat.setRepeatMode(i != 1 ? i != 2 ? 0 : 1 : 2);
        }
        TelegramMediaSession telegramMediaSessionPeekInstance = TelegramMediaSession.peekInstance();
        if (telegramMediaSessionPeekInstance != null) {
            telegramMediaSessionPeekInstance.updateRepeatMode();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public void updateShuffleMode() {
        MediaSessionCompat mediaSessionCompat = this.mediaSession;
        if (mediaSessionCompat != null) {
            mediaSessionCompat.setShuffleMode(SharedConfig.shuffleMusic ? 1 : 0);
        }
        TelegramMediaSession telegramMediaSessionPeekInstance = TelegramMediaSession.peekInstance();
        if (telegramMediaSessionPeekInstance != null) {
            telegramMediaSessionPeekInstance.updateShuffleMode();
        }
    }

    private float getPlaybackSpeed(boolean z, MessageObject messageObject) {
        if (!z) {
            return 0.0f;
        }
        if (messageObject == null) {
            return 1.0f;
        }
        if (messageObject.isVoice() || messageObject.isRoundVideo()) {
            return MediaController.getInstance().getPlaybackSpeed(false);
        }
        return 1.0f;
    }

    public void setListeners(RemoteViews remoteViews) {
        remoteViews.setOnClickPendingIntent(C2665R.id.player_previous, PendingIntent.getBroadcast(getApplicationContext(), 0, new Intent(NOTIFY_PREVIOUS), fixIntentFlags(167772160)));
        remoteViews.setOnClickPendingIntent(C2665R.id.player_close, PendingIntent.getBroadcast(getApplicationContext(), 0, new Intent(NOTIFY_CLOSE), fixIntentFlags(167772160)));
        remoteViews.setOnClickPendingIntent(C2665R.id.player_pause, PendingIntent.getBroadcast(getApplicationContext(), 0, new Intent(NOTIFY_PAUSE), fixIntentFlags(167772160)));
        remoteViews.setOnClickPendingIntent(C2665R.id.player_next, PendingIntent.getBroadcast(getApplicationContext(), 0, new Intent(NOTIFY_NEXT), fixIntentFlags(167772160)));
        remoteViews.setOnClickPendingIntent(C2665R.id.player_play, PendingIntent.getBroadcast(getApplicationContext(), 0, new Intent(NOTIFY_PLAY), fixIntentFlags(167772160)));
    }

    private int fixIntentFlags(int i) {
        return (Build.VERSION.SDK_INT >= 31 || !XiaomiUtilities.isMIUI()) ? i : (-100663297) & i;
    }

    @Override // android.app.Service
    @SuppressLint({"NewApi"})
    public void onDestroy() {
        unregisterReceiver(this.headsetPlugReceiver);
        super.onDestroy();
        stopForeground(true);
        RemoteControlClient remoteControlClient = this.remoteControlClient;
        if (remoteControlClient != null) {
            RemoteControlClient.MetadataEditor metadataEditorEditMetadata = remoteControlClient.editMetadata(true);
            metadataEditorEditMetadata.clear();
            metadataEditorEditMetadata.apply();
            this.audioManager.unregisterRemoteControlClient(this.remoteControlClient);
        }
        MediaSessionCompat mediaSessionCompat = this.mediaSession;
        if (mediaSessionCompat != null) {
            mediaSessionCompat.release();
        }
        for (int i = 0; i < 16; i++) {
            NotificationCenter.getInstance(i).removeObserver(this, NotificationCenter.messagePlayingDidSeek);
            NotificationCenter.getInstance(i).removeObserver(this, NotificationCenter.messagePlayingPlayStateChanged);
            NotificationCenter.getInstance(i).removeObserver(this, NotificationCenter.httpFileDidLoad);
            NotificationCenter.getInstance(i).removeObserver(this, NotificationCenter.fileLoaded);
        }
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        String str;
        String str2;
        if (i == NotificationCenter.messagePlayingPlayStateChanged) {
            MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
            if (playingMessageObject != null) {
                createNotification(playingMessageObject, false);
                return;
            } else {
                stopSelf();
                return;
            }
        }
        if (i == NotificationCenter.messagePlayingDidSeek) {
            if (MediaController.getInstance().getPlayingMessageObject() == null) {
                return;
            }
            long jRound = ((long) Math.round(r3.audioPlayerDuration * ((Float) objArr[1]).floatValue())) * 1000;
            updatePlaybackState(jRound);
            RemoteControlClient remoteControlClient = this.remoteControlClient;
            if (remoteControlClient != null) {
                remoteControlClient.setPlaybackState(MediaController.getInstance().isMessagePaused() ? 2 : 3, jRound, MediaController.getInstance().isMessagePaused() ? 0.0f : 1.0f);
                return;
            }
            return;
        }
        if (i == NotificationCenter.httpFileDidLoad) {
            String str3 = (String) objArr[0];
            MessageObject playingMessageObject2 = MediaController.getInstance().getPlayingMessageObject();
            if (playingMessageObject2 == null || (str2 = this.loadingFilePath) == null || !str2.equals(str3)) {
                return;
            }
            createNotification(playingMessageObject2, false);
            return;
        }
        if (i == NotificationCenter.fileLoaded) {
            String str4 = (String) objArr[0];
            MessageObject playingMessageObject3 = MediaController.getInstance().getPlayingMessageObject();
            if (playingMessageObject3 == null || (str = this.loadingFilePath) == null || !str.equals(str4)) {
                return;
            }
            createNotification(playingMessageObject3, false);
        }
    }
}
