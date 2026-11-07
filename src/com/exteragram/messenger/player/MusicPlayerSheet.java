package com.exteragram.messenger.player;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.LruCache;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.SpringAnimation;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.pillstack.ui.pills.crypto.RatePill$$ExternalSyntheticLambda1;
import com.exteragram.messenger.player.PlayerActions;
import com.exteragram.messenger.player.TrackQuality;
import com.exteragram.messenger.player.lyrics.Lyrics;
import com.exteragram.messenger.player.lyrics.LyricsRepository;
import com.exteragram.messenger.player.motion.ArtworkRepository;
import com.exteragram.messenger.player.motion.MotionCoverRepository;
import com.exteragram.messenger.player.motion.SpotifyCanvasRepository;
import com.exteragram.messenger.player.rhythm.RhythmTap;
import com.exteragram.messenger.player.ui.ExpressiveStateDrawable;
import com.exteragram.messenger.player.ui.LyricsView;
import com.exteragram.messenger.player.ui.PlayerControlsView;
import com.exteragram.messenger.player.ui.PlayerCoverView;
import com.exteragram.messenger.player.ui.PlayerQueueCell;
import com.exteragram.messenger.player.ui.PlayerQueueView;
import com.exteragram.messenger.player.ui.PlayerSettingsSheet;
import com.exteragram.messenger.player.ui.RhythmBackground;
import com.exteragram.messenger.player.ui.SpeedTextDrawable;
import com.exteragram.messenger.player.ui.SpotifyCanvasBackground;
import com.exteragram.messenger.player.ui.WavySeekBar;
import com.exteragram.messenger.utils.ui.ColorTones;
import com.exteragram.messenger.utils.ui.Material3Tokens;
import com.google.android.gms.cast.framework.CastContext;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Objects;
import java.util.function.BooleanSupplier;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.DownloadController;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageLoader;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.chromecast.ChromecastController;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.ActionBarMenuSlider;
import org.telegram.ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.ui.ActionBar.ActionBarPopupWindow;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.BottomSheet;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.ActionBar.ThemeDescription;
import org.telegram.ui.CastSync;
import org.telegram.ui.ChooseQualityLayout$QualityIcon;
import org.telegram.ui.Components.AudioPlayerAlert;
import org.telegram.ui.Components.Bulletin;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.CastMediaRouteButton;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.ItemOptions;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.SeekSpeedDrawable;
import org.telegram.ui.Components.SpeedIconDrawable;
import org.telegram.ui.LaunchActivity;
import org.telegram.ui.Stories.recorder.HintView2;

/* JADX INFO: loaded from: classes4.dex */
public class MusicPlayerSheet extends BottomSheet implements NotificationCenter.NotificationCenterDelegate, DownloadController.FileDownloadProgressListener, PlayerActions.Host {
    public static MusicPlayerSheet instance;
    private final int TAG;
    private final PlayerActions actions;
    private final AudioPlayerAlert.ClippingTextViewSwitcher artistView;
    private final Theme.ResourcesProvider baseResourcesProvider;
    private final SpringAnimation bufferSpring;
    private final String[] canvasKeys;
    private final MessageObject[] canvasMessages;
    private final LruCache<String, String> canvasPaths;
    private float canvasProgress;
    private final String[] canvasRolePaths;
    private boolean canvasShown;
    private final SpringAnimation canvasSpring;
    private float canvasTitleProgress;
    private final SpringAnimation canvasTitleSpring;
    private boolean castAvailable;
    private CastMediaRouteButton castButton;
    private final ExpressiveStateDrawable collapseBackground;
    private final ImageView collapseButton;
    private ValueAnimator colorAnimator;
    private final PlayerColors colors;
    private final PlayerControlsView controlsView;
    private final CoverColorsWait coverColorsWait;
    private final PlayerCoverView coverView;
    private final int currentAccount;
    private boolean currentAudioFinishedLoading;
    private String currentFile;
    private final TextView durationView;
    private final TextView headerSubtitle;
    private final TextView headerTitle;
    private long lastBufferedPositionCheck;
    private int lastDuration;
    private MessageObject lastMessageObject;
    private long lastRewindingTime;
    private long lastSpeedClick;
    private int lastTime;
    private long lastUpdateRewindingPlayerTime;
    private boolean lightStatusBar;
    private float lyricsAlpha;
    private final ExpressiveStateDrawable lyricsBackground;
    private final ImageView lyricsButton;
    private String lyricsKey;
    private int lyricsRequest;
    private final SpringAnimation lyricsSpring;
    private final LyricsView lyricsView;
    private int mode;
    private float modeProgress;
    private final SpringAnimation modeSpring;
    private final ExpressiveStateDrawable moreBackground;
    private final ImageView moreButton;
    private final ChooseQualityLayout$QualityIcon moreIcon;
    private int motionRequest;
    private int musicCount;
    private long musicCountDialogId;
    private boolean noforwards;
    private NotificationCenter.ObserversGroup observers;
    private final LaunchActivity parentActivity;
    private int pendingDirection;
    private final PlayerLayout playerLayout;
    private final ExpressiveStateDrawable profileBackground;
    private final ImageView profileButton;
    private float queueAlpha;
    private final ExpressiveStateDrawable queueBackground;
    private final ImageView queueButton;
    private final SpringAnimation queueSpring;
    private final PlayerQueueView queueView;
    private final ExpressiveStateDrawable repeatBackground;
    private final ImageView repeatButton;
    private int rewindPressedCount;
    private final Runnable rewindSeek;
    private final Runnable rewindStepRunnable;
    private float rewindingProgress;
    private int rewindingState;
    private final RhythmBackground rhythmBackground;
    private MessagesController.SavedMusicList savedMusicList;
    private final WavySeekBar seekBar;
    private float seekPlate;
    private final SpringAnimation seekPlateSpring;
    private final SeekSpeedDrawable seekSpeedDrawable;
    private PlayerSettingsSheet settingsSheet;
    private boolean showRemaining;
    private final ExpressiveStateDrawable shuffleBackground;
    private final ImageView shuffleButton;
    private final ExpressiveStateDrawable speedBackground;
    private final ImageView speedButton;
    private HintView2 speedHintView;
    private final SpeedTextDrawable speedIcon;
    private boolean speedMenuShown;
    private final SpotifyCanvasBackground spotifyCanvas;
    private boolean swipeDismissAllowed;
    private PlayerColors targetColors;
    private PlayerColors themeColors;
    private final TextView timeView;
    private final AudioPlayerAlert.ClippingTextViewSwitcher titleView;
    private static final float[] SPEEDS = {0.5f, 1.0f, 1.2f, 1.5f, 1.7f, 2.0f};
    private static final float[] TOGGLE_SPEEDS = {1.0f, 1.5f, 2.0f};
    private static final int[] SPEED_ICONS = {C2807R.drawable.msg_speed_slow, C2807R.drawable.msg_speed_normal, C2807R.drawable.msg_speed_medium, C2807R.drawable.msg_speed_fast, C2807R.drawable.msg_speed_veryfast, C2807R.drawable.msg_speed_superfast};
    private static final int[] SPEED_NAMES = {C2807R.string.SpeedSlow, C2807R.string.SpeedNormal, C2807R.string.SpeedMedium, C2807R.string.SpeedFast, C2807R.string.SpeedVeryFast, C2807R.string.SpeedSuperFast};

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public void onFailedDownload(String str, boolean z) {
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public void onProgressUpload(String str, long j, long j2, boolean z) {
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public void onSuccessDownload(String str) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        updateCoverColors(true);
    }

    public MusicPlayerSheet(final Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context, true, resourcesProvider);
        this.coverColorsWait = new CoverColorsWait(new BooleanSupplier() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda2
            @Override // java.util.function.BooleanSupplier
            public final boolean getAsBoolean() {
                return ExteraConfig.getPlayerCoverColors();
            }
        }, new Runnable() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0();
            }
        });
        this.rhythmBackground = new RhythmBackground();
        this.canvasPaths = new LruCache<>(64);
        this.canvasKeys = new String[3];
        this.canvasRolePaths = new String[3];
        this.canvasMessages = new MessageObject[3];
        this.mode = 0;
        this.lastTime = -1;
        this.rewindingProgress = -1.0f;
        this.rewindStepRunnable = new Runnable() { // from class: com.exteragram.messenger.player.MusicPlayerSheet.1
            @Override // java.lang.Runnable
            public void run() {
                if (MusicPlayerSheet.this.rewindingState == 0 || MusicPlayerSheet.this.rewindPressedCount >= 3) {
                    return;
                }
                MusicPlayerSheet.this.rewindPressedCount++;
                if (MusicPlayerSheet.this.rewindingState > 0 && !MediaController.getInstance().isMessagePaused()) {
                    MediaController.getInstance().setRewindPlaybackSpeed(MusicPlayerSheet.this.getRewindMultiplier());
                }
                MusicPlayerSheet.this.seekSpeedDrawable.setSpeed(MusicPlayerSheet.this.rewindingState * MusicPlayerSheet.this.getRewindMultiplier(), true);
                if (MusicPlayerSheet.this.rewindPressedCount < 3) {
                    AndroidUtilities.runOnUIThread(this, 2000L);
                }
            }
        };
        this.rewindSeek = new Runnable() { // from class: com.exteragram.messenger.player.MusicPlayerSheet.2
            @Override // java.lang.Runnable
            public void run() {
                int i = MusicPlayerSheet.this.rewindingState;
                MediaController mediaController = MediaController.getInstance();
                long duration = mediaController.getDuration();
                if (i == 0) {
                    return;
                }
                if (duration == 0 || duration == -9223372036854775807L) {
                    MusicPlayerSheet.this.lastRewindingTime = SystemClock.elapsedRealtime();
                    return;
                }
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                long rewindMultiplier = (long) ((jElapsedRealtime - MusicPlayerSheet.this.lastRewindingTime) * MusicPlayerSheet.this.getRewindMultiplier());
                MusicPlayerSheet.this.lastRewindingTime = jElapsedRealtime;
                long j = jElapsedRealtime - MusicPlayerSheet.this.lastUpdateRewindingPlayerTime;
                MusicPlayerSheet musicPlayerSheet = MusicPlayerSheet.this;
                float f = duration;
                musicPlayerSheet.rewindingProgress = Utilities.clamp01(((musicPlayerSheet.rewindingProgress * f) + (((long) i) * rewindMultiplier)) / f);
                MessageObject playingMessageObject = mediaController.getPlayingMessageObject();
                if (playingMessageObject != null && playingMessageObject.isMusic()) {
                    if (i > 0 && !mediaController.isMessagePaused()) {
                        playingMessageObject.audioProgress = MusicPlayerSheet.this.rewindingProgress;
                    }
                    MusicPlayerSheet.this.updateProgress(playingMessageObject);
                }
                if (MusicPlayerSheet.this.rewindPressedCount > 0) {
                    if (i <= 0 || mediaController.isMessagePaused()) {
                        if (j > 200 || MusicPlayerSheet.this.rewindingProgress == 0.0f) {
                            MusicPlayerSheet.this.lastUpdateRewindingPlayerTime = jElapsedRealtime;
                            mediaController.seekToProgress(playingMessageObject, MusicPlayerSheet.this.rewindingProgress);
                            if (i < 0 && MusicPlayerSheet.this.rewindingProgress == 0.0f) {
                                mediaController.pauseByRewind();
                            }
                        }
                        if (MusicPlayerSheet.this.rewindingProgress > 0.0f) {
                            if (i < 0 || MusicPlayerSheet.this.rewindingProgress < 1.0f) {
                                AndroidUtilities.runOnUIThread(this, 16L);
                            }
                        }
                    }
                }
            }
        };
        this.useLightStatusBar = false;
        this.baseResourcesProvider = resourcesProvider;
        Activity activityFindActivity = AndroidUtilities.findActivity(context);
        LaunchActivity launchActivity = activityFindActivity instanceof LaunchActivity ? (LaunchActivity) activityFindActivity : LaunchActivity.instance;
        this.parentActivity = launchActivity;
        MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
        int i = playingMessageObject != null ? playingMessageObject.currentAccount : UserConfig.selectedAccount;
        this.currentAccount = i;
        this.TAG = DownloadController.getInstance(i).generateObserverTag();
        this.actions = new PlayerActions(i, launchActivity, this);
        this.savedMusicList = MediaController.getInstance().currentSavedMusicList;
        PlayerColors playerColorsFromTheme = PlayerColors.fromTheme(resourcesProvider);
        this.themeColors = playerColorsFromTheme;
        PlayerColors playerColorsCopy = playerColorsFromTheme.copy();
        this.colors = playerColorsCopy;
        this.doNotOverlayNavigationBar = true;
        this.occupyNavigationBarWithoutKeyboard = true;
        this.useSmoothKeyboard = !AndroidUtilities.isTablet();
        this.allowNestedScroll = false;
        updateNavigationBar(playerColorsCopy);
        setCanDismissWithSwipe(true);
        final PlayerLayout playerLayout = new PlayerLayout(context);
        this.playerLayout = playerLayout;
        int i2 = this.backgroundPaddingLeft;
        playerLayout.setPadding(i2, 0, i2, 0);
        this.containerView = playerLayout;
        this.spotifyCanvas = new SpotifyCanvasBackground(playerLayout, new Runnable() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda20
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.syncSpotifyCanvas();
            }
        });
        int i3 = C2807R.drawable.arrow_more;
        ExpressiveStateDrawable expressiveStateDrawable = new ExpressiveStateDrawable(12.0f);
        this.collapseBackground = expressiveStateDrawable;
        ImageView imageViewCreateIconButton = createIconButton(context, i3, expressiveStateDrawable);
        this.collapseButton = imageViewCreateIconButton;
        imageViewCreateIconButton.setContentDescription(LocaleController.getString(C2807R.string.PlayerCollapse));
        imageViewCreateIconButton.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda21
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$1(view);
            }
        });
        playerLayout.addOwnView(imageViewCreateIconButton);
        ChooseQualityLayout$QualityIcon chooseQualityLayout$QualityIcon = new ChooseQualityLayout$QualityIcon(context, C2807R.drawable.ic_ab_other, resourcesProvider);
        this.moreIcon = chooseQualityLayout$QualityIcon;
        ExpressiveStateDrawable expressiveStateDrawable2 = new ExpressiveStateDrawable(12.0f);
        this.moreBackground = expressiveStateDrawable2;
        ImageView imageViewCreateIconButton2 = createIconButton(context, 0, expressiveStateDrawable2);
        this.moreButton = imageViewCreateIconButton2;
        imageViewCreateIconButton2.setImageDrawable(chooseQualityLayout$QualityIcon);
        imageViewCreateIconButton2.setContentDescription(LocaleController.getString(C2807R.string.AccDescrMoreOptions));
        imageViewCreateIconButton2.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda22
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$2(view);
            }
        });
        playerLayout.addOwnView(imageViewCreateIconButton2);
        TextView textView = new TextView(context);
        this.headerTitle = textView;
        textView.setTextSize(1, 16.0f);
        textView.setTypeface(AndroidUtilities.bold());
        textView.setSingleLine(true);
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        textView.setEllipsize(truncateAt);
        textView.setGravity(17);
        playerLayout.addOwnView(textView);
        TextView textView2 = new TextView(context);
        this.headerSubtitle = textView2;
        textView2.setTextSize(1, 13.0f);
        textView2.setTypeface(AndroidUtilities.regular());
        textView2.setSingleLine(true);
        textView2.setEllipsize(truncateAt);
        textView2.setGravity(17);
        playerLayout.addOwnView(textView2);
        LyricsView lyricsView = new LyricsView(context, resourcesProvider);
        this.lyricsView = lyricsView;
        lyricsView.setProgressMode(ExteraConfig.getLyricsProgress());
        lyricsView.setDelegate(new LyricsView.Delegate() { // from class: com.exteragram.messenger.player.MusicPlayerSheet.3
            @Override // com.exteragram.messenger.player.ui.LyricsView.Delegate
            public void onSeekTo(long j) {
                MessageObject playingMessageObject2 = MediaController.getInstance().getPlayingMessageObject();
                if (playingMessageObject2 != null) {
                    MediaController.getInstance().seekToProgressMs(playingMessageObject2, j);
                    if (MediaController.getInstance().isMessagePaused()) {
                        MediaController.getInstance().playMessage(playingMessageObject2);
                    }
                }
            }

            @Override // com.exteragram.messenger.player.ui.LyricsView.Delegate
            public void onConsent() {
                ExteraConfig.setLyricsOnline(true);
                MusicPlayerSheet.this.lyricsKey = null;
                MusicPlayerSheet.this.loadLyrics(true);
            }

            @Override // com.exteragram.messenger.player.ui.LyricsView.Delegate
            public void onRetry() {
                MusicPlayerSheet.this.lyricsKey = null;
                MusicPlayerSheet.this.loadLyrics(true);
            }
        });
        lyricsView.setAlpha(0.0f);
        lyricsView.setVisibility(4);
        playerLayout.addOwnView(lyricsView);
        PlayerQueueView playerQueueView = new PlayerQueueView(context, i);
        this.queueView = playerQueueView;
        playerQueueView.setDelegate(new C14264());
        playerQueueView.setAlpha(0.0f);
        playerQueueView.setVisibility(4);
        playerLayout.addOwnView(playerQueueView);
        PlayerCoverView playerCoverView = new PlayerCoverView(context);
        this.coverView = playerCoverView;
        playerCoverView.setDelegate(new PlayerCoverView.Delegate() { // from class: com.exteragram.messenger.player.MusicPlayerSheet.5
            @Override // com.exteragram.messenger.player.ui.PlayerCoverView.Delegate
            public void onSwipe(int i4) {
                MusicPlayerSheet musicPlayerSheet = MusicPlayerSheet.this;
                if (i4 > 0) {
                    musicPlayerSheet.pendingDirection = 1;
                    MediaController.getInstance().playNextMessage();
                } else {
                    musicPlayerSheet.pendingDirection = -1;
                    MessageObject playingMessageObject2 = MediaController.getInstance().getPlayingMessageObject();
                    if (playingMessageObject2 != null) {
                        playingMessageObject2.audioProgressSec = 0;
                    }
                    MediaController.getInstance().playPreviousMessage();
                }
                MusicPlayerSheet.this.coverView.cancelPendingSwipe();
            }

            @Override // com.exteragram.messenger.player.ui.PlayerCoverView.Delegate
            public void onCoverLoaded(MessageObject messageObject, ImageReceiver imageReceiver) {
                MusicPlayerSheet.this.onCoverBitmapLoaded(messageObject, imageReceiver);
            }

            @Override // com.exteragram.messenger.player.ui.PlayerCoverView.Delegate
            public boolean canDrag() {
                return MusicPlayerSheet.this.mode == 0 && MediaController.getInstance().getPlaylist().size() > 1;
            }

            @Override // com.exteragram.messenger.player.ui.PlayerCoverView.Delegate
            public MessageObject getNeighbor(int i4) {
                return MusicPlayerSheet.this.getNeighborMessage(i4);
            }

            @Override // com.exteragram.messenger.player.ui.PlayerCoverView.Delegate
            public boolean hasCanvas(MessageObject messageObject) {
                for (int i4 = 0; i4 < MusicPlayerSheet.this.canvasMessages.length; i4++) {
                    if (MusicPlayerSheet.this.canvasMessages[i4] == messageObject && MusicPlayerSheet.this.isCanvasRole(i4)) {
                        return true;
                    }
                }
                return false;
            }

            @Override // com.exteragram.messenger.player.ui.PlayerCoverView.Delegate
            public void onPageMoved() {
                MusicPlayerSheet.this.playerLayout.invalidate();
            }
        });
        playerLayout.addOwnView(playerCoverView);
        AudioPlayerAlert.ClippingTextViewSwitcher clippingTextViewSwitcher = new AudioPlayerAlert.ClippingTextViewSwitcher(context) { // from class: com.exteragram.messenger.player.MusicPlayerSheet.6
            @Override // org.telegram.ui.Components.AudioPlayerAlert.ClippingTextViewSwitcher
            public TextView createTextView() {
                TextView textView3 = new TextView(context);
                textView3.setTextSize(1, 20.0f);
                textView3.setTypeface(AndroidUtilities.bold());
                textView3.setSingleLine(true);
                textView3.setEllipsize(TextUtils.TruncateAt.END);
                textView3.setGravity(19);
                textView3.setTextColor(MusicPlayerSheet.this.colors.text);
                return textView3;
            }
        };
        this.titleView = clippingTextViewSwitcher;
        clippingTextViewSwitcher.setPivotX(0.0f);
        clippingTextViewSwitcher.setPivotY(0.0f);
        playerLayout.addOwnView(clippingTextViewSwitcher);
        C14297 c14297 = new C14297(context, context);
        this.artistView = c14297;
        c14297.setPivotX(0.0f);
        c14297.setPivotY(0.0f);
        playerLayout.addOwnView(c14297);
        int i4 = C2807R.drawable.media_like;
        ExpressiveStateDrawable expressiveStateDrawableCreateToggle = createToggle();
        this.profileBackground = expressiveStateDrawableCreateToggle;
        ImageView imageViewCreateIconButton3 = createIconButton(context, i4, expressiveStateDrawableCreateToggle);
        this.profileButton = imageViewCreateIconButton3;
        imageViewCreateIconButton3.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda23
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$3(view);
            }
        });
        playerLayout.addOwnView(imageViewCreateIconButton3);
        WavySeekBar wavySeekBar = new WavySeekBar(context);
        this.seekBar = wavySeekBar;
        wavySeekBar.setDelegate(new WavySeekBar.Delegate() { // from class: com.exteragram.messenger.player.MusicPlayerSheet.8
            @Override // com.exteragram.messenger.player.ui.WavySeekBar.Delegate
            public void onSeek(float f) {
                MessageObject playingMessageObject2 = MediaController.getInstance().getPlayingMessageObject();
                if (playingMessageObject2 == null) {
                    return;
                }
                MediaController.getInstance().seekToProgress(playingMessageObject2, f);
                MusicPlayerSheet.this.updateProgress(playingMessageObject2);
            }

            @Override // com.exteragram.messenger.player.ui.WavySeekBar.Delegate
            public void onDragStateChanged(boolean z) {
                MessageObject playingMessageObject2 = MediaController.getInstance().getPlayingMessageObject();
                if (playingMessageObject2 != null) {
                    MusicPlayerSheet.this.updateProgress(playingMessageObject2);
                }
            }

            @Override // com.exteragram.messenger.player.ui.WavySeekBar.Delegate
            public CharSequence getTimeLabel(float f) {
                MessageObject playingMessageObject2 = MediaController.getInstance().getPlayingMessageObject();
                if (playingMessageObject2 == null) {
                    return null;
                }
                return AndroidUtilities.formatShortDuration((int) (playingMessageObject2.getDuration() * ((double) f)));
            }

            @Override // com.exteragram.messenger.player.ui.WavySeekBar.Delegate
            public CharSequence getAccessibilityValue() {
                int iMax = Math.max(0, MusicPlayerSheet.this.lastTime);
                return LocaleController.formatString(C2807R.string.AccDescrPlayerDuration, LocaleController.formatPluralString("Minutes", iMax / 60, new Object[0]) + ' ' + LocaleController.formatPluralString("Seconds", iMax % 60, new Object[0]), LocaleController.formatPluralString("Minutes", MusicPlayerSheet.this.lastDuration / 60, new Object[0]) + ' ' + LocaleController.formatPluralString("Seconds", MusicPlayerSheet.this.lastDuration % 60, new Object[0]));
            }
        });
        playerLayout.addOwnView(wavySeekBar);
        TextView textView3 = new TextView(context);
        this.timeView = textView3;
        textView3.setTextSize(1, 12.0f);
        textView3.setTypeface(AndroidUtilities.regular());
        textView3.setGravity(19);
        textView3.setImportantForAccessibility(2);
        playerLayout.addOwnView(textView3);
        TextView textView4 = new TextView(context);
        this.durationView = textView4;
        textView4.setTextSize(1, 12.0f);
        textView4.setTypeface(AndroidUtilities.regular());
        textView4.setGravity(21);
        textView4.setContentDescription(LocaleController.getString(C2807R.string.PlayerShowRemaining));
        textView4.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda24
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$4(view);
            }
        });
        playerLayout.addOwnView(textView4);
        PlayerControlsView playerControlsView = new PlayerControlsView(context);
        this.controlsView = playerControlsView;
        playerControlsView.setDelegate(new PlayerControlsView.Delegate() { // from class: com.exteragram.messenger.player.MusicPlayerSheet.9
            @Override // com.exteragram.messenger.player.ui.PlayerControlsView.Delegate
            public void onPrevious() {
                if (MediaController.getInstance().getPlayingMessageObject() == null) {
                    return;
                }
                MusicPlayerSheet.this.pendingDirection = -1;
                MediaController.getInstance().playPreviousMessage();
            }

            @Override // com.exteragram.messenger.player.ui.PlayerControlsView.Delegate
            public void onPlayPause() {
                MusicPlayerSheet.this.togglePlay();
            }

            @Override // com.exteragram.messenger.player.ui.PlayerControlsView.Delegate
            public void onNext() {
                if (MediaController.getInstance().getPlayingMessageObject() == null) {
                    return;
                }
                MusicPlayerSheet.this.pendingDirection = 1;
                MediaController.getInstance().playNextMessage();
            }

            @Override // com.exteragram.messenger.player.ui.PlayerControlsView.Delegate
            public void onHold(int i5, boolean z) {
                MusicPlayerSheet.this.onRewindHold(i5, z);
            }
        });
        playerLayout.addOwnView(playerControlsView);
        int i5 = C2807R.drawable.player_new_shuffle;
        ExpressiveStateDrawable expressiveStateDrawableCreateToggle2 = createToggle();
        this.shuffleBackground = expressiveStateDrawableCreateToggle2;
        ImageView imageViewCreateIconButton4 = createIconButton(context, i5, expressiveStateDrawableCreateToggle2);
        this.shuffleButton = imageViewCreateIconButton4;
        imageViewCreateIconButton4.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda25
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$5(view);
            }
        });
        imageViewCreateIconButton4.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda26
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return this.f$0.lambda$new$6(view);
            }
        });
        playerLayout.addOwnView(imageViewCreateIconButton4);
        int i6 = C2807R.drawable.player_new_repeatall;
        ExpressiveStateDrawable expressiveStateDrawableCreateToggle3 = createToggle();
        this.repeatBackground = expressiveStateDrawableCreateToggle3;
        ImageView imageViewCreateIconButton5 = createIconButton(context, i6, expressiveStateDrawableCreateToggle3);
        this.repeatButton = imageViewCreateIconButton5;
        imageViewCreateIconButton5.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda27
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$7(view);
            }
        });
        imageViewCreateIconButton5.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda3
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return this.f$0.lambda$new$8(view);
            }
        });
        playerLayout.addOwnView(imageViewCreateIconButton5);
        ExpressiveStateDrawable inset = new ExpressiveStateDrawable(12.0f).setSelectedRadius(24.0f).setInset(0.0f, 6.0f);
        this.speedBackground = inset;
        ImageView imageViewCreateIconButton6 = createIconButton(context, 0, inset);
        this.speedButton = imageViewCreateIconButton6;
        SpeedTextDrawable speedTextDrawable = new SpeedTextDrawable();
        this.speedIcon = speedTextDrawable;
        imageViewCreateIconButton6.setImageDrawable(speedTextDrawable);
        imageViewCreateIconButton6.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$9(view);
            }
        });
        imageViewCreateIconButton6.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda5
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return this.f$0.lambda$new$10(view);
            }
        });
        playerLayout.addOwnView(imageViewCreateIconButton6);
        int i7 = C2807R.drawable.formatting_quote;
        ExpressiveStateDrawable expressiveStateDrawableCreateModeSegment = createModeSegment(2);
        this.lyricsBackground = expressiveStateDrawableCreateModeSegment;
        ImageView imageViewCreateIconButton7 = createIconButton(context, i7, expressiveStateDrawableCreateModeSegment);
        this.lyricsButton = imageViewCreateIconButton7;
        imageViewCreateIconButton7.setContentDescription(LocaleController.getString(C2807R.string.PlayerLyrics));
        imageViewCreateIconButton7.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$11(view);
            }
        });
        playerLayout.addOwnView(imageViewCreateIconButton7);
        int i8 = C2807R.drawable.player_new_queue;
        ExpressiveStateDrawable expressiveStateDrawableCreateModeSegment2 = createModeSegment(1);
        this.queueBackground = expressiveStateDrawableCreateModeSegment2;
        ImageView imageViewCreateIconButton8 = createIconButton(context, i8, expressiveStateDrawableCreateModeSegment2);
        this.queueButton = imageViewCreateIconButton8;
        imageViewCreateIconButton8.setContentDescription(LocaleController.getString(C2807R.string.PlayerQueue));
        imageViewCreateIconButton8.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$12(view);
            }
        });
        playerLayout.addOwnView(imageViewCreateIconButton8);
        Objects.requireNonNull(playerLayout);
        this.seekSpeedDrawable = new SeekSpeedDrawable(new Runnable() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                playerLayout.invalidate();
            }
        }, false, true);
        SpringAnimation springAnimationCreateSpring = Material3Tokens.createSpring(0.8f, 380.0f, 0.002f, new Utilities.Callback() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda9
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$new$13((Float) obj);
            }
        });
        this.seekPlateSpring = springAnimationCreateSpring;
        springAnimationCreateSpring.addEndListener(new DynamicAnimation.OnAnimationEndListener() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda10
            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
            public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
                this.f$0.lambda$new$14(dynamicAnimation, z, f, f2);
            }
        });
        this.modeSpring = createSpring(0.8f, 380.0f, new Utilities.Callback() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda11
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$new$15((Float) obj);
            }
        });
        this.lyricsSpring = createSpring(1.0f, 1600.0f, new Utilities.Callback() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda12
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$new$16((Float) obj);
            }
        });
        this.queueSpring = createSpring(1.0f, 1600.0f, new Utilities.Callback() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda14
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$new$17((Float) obj);
            }
        });
        this.canvasSpring = createSpring(0.8f, 380.0f, new Utilities.Callback() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda15
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$new$18((Float) obj);
            }
        });
        this.canvasTitleSpring = createSpring(0.8f, 380.0f, new Utilities.Callback() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda16
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$new$19((Float) obj);
            }
        });
        this.bufferSpring = Material3Tokens.createSpring(1.0f, 750.0f, 1.0f, new Utilities.Callback() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda17
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$new$20((Float) obj);
            }
        });
        setupCast(context);
        this.observers = NotificationCenter.getInstance(i).createObserversGroup(this).add(NotificationCenter.messagePlayingDidReset).add(NotificationCenter.messagePlayingPlayStateChanged).add(NotificationCenter.messagePlayingDidStart).add(NotificationCenter.messagePlayingProgressDidChanged).add(NotificationCenter.messagePlayingDidSeek).add(NotificationCenter.fileLoaded).add(NotificationCenter.fileLoadProgressChanged).add(NotificationCenter.musicDidLoad).add(NotificationCenter.moreMusicDidLoad).add(NotificationCenter.musicIdsLoaded).add(NotificationCenter.mediaCountDidLoad).addGlobal(NotificationCenter.messagePlayingSpeedChanged);
        ExpressiveStateDrawable[] expressiveStateDrawableArr = {expressiveStateDrawableCreateToggle, expressiveStateDrawableCreateToggle2, expressiveStateDrawableCreateToggle3, inset};
        for (int i9 = 0; i9 < 4; i9++) {
            expressiveStateDrawableArr[i9].setOnProgressChanged(new Runnable() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda18
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.onToggleProgress();
                }
            });
        }
        this.lyricsBackground.setOnProgressChanged(new Runnable() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda19
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.onModeSegmentsChanged();
            }
        });
        this.queueBackground.setOnProgressChanged(new Runnable() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda19
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.onModeSegmentsChanged();
            }
        });
        applyColors(this.colors);
        this.queueView.update();
        bindMessage(false, false);
        int playerMode = ExteraConfig.getPlayerMode();
        if (playerMode == 1 || playerMode == 2) {
            setMode(playerMode, false);
        }
        updateOrderButtons(false);
        updateSpeedButtons(false);
        updateHeader();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(View view) {
        lambda$new$0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(View view) {
        showMenu();
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.player.MusicPlayerSheet$4 */
    public class C14264 implements PlayerQueueView.Delegate {
        public C14264() {
        }

        @Override // com.exteragram.messenger.player.ui.PlayerQueueView.Delegate
        public void onShowOptions(PlayerQueueCell playerQueueCell, MessageObject messageObject) {
            MusicPlayerSheet.this.showTrackOptions(playerQueueCell, messageObject);
        }

        @Override // com.exteragram.messenger.player.ui.PlayerQueueView.Delegate
        public void onReverseOrder() {
            MediaController.getInstance().setPlaybackOrderType(!SharedConfig.playOrderReversed ? 1 : 0);
            MusicPlayerSheet.this.updateOrderButtons(true);
            MusicPlayerSheet.this.queueView.reverse();
        }

        @Override // com.exteragram.messenger.player.ui.PlayerQueueView.Delegate
        public void onAddToList() {
            MusicPlayerSheet.this.actions.addToMyList(new Runnable() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$4$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onAddToList$0();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onAddToList$0() {
            MusicPlayerSheet.this.queueView.update();
            MusicPlayerSheet.this.updateHeader();
            MusicPlayerSheet.this.updateProfileState(true);
        }

        @Override // com.exteragram.messenger.player.ui.PlayerQueueView.Delegate
        public void onSearchFocus(boolean z) {
            MusicPlayerSheet.this.setAllowNestedScroll(!z);
            MusicPlayerSheet.this.playerLayout.requestLayout();
        }

        @Override // com.exteragram.messenger.player.ui.PlayerQueueView.Delegate
        public boolean isMyList() {
            return MusicPlayerSheet.this.isMyList();
        }

        @Override // com.exteragram.messenger.player.ui.PlayerQueueView.Delegate
        public boolean isNoForwards() {
            return MusicPlayerSheet.this.noforwards;
        }

        @Override // com.exteragram.messenger.player.ui.PlayerQueueView.Delegate
        public MessagesController.SavedMusicList getSavedMusicList() {
            return MusicPlayerSheet.this.savedMusicList;
        }
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.player.MusicPlayerSheet$7 */
    public class C14297 extends AudioPlayerAlert.ClippingTextViewSwitcher {
        final /* synthetic */ Context val$context;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14297(Context context, Context context2) {
            super(context);
            this.val$context = context2;
        }

        @Override // org.telegram.ui.Components.AudioPlayerAlert.ClippingTextViewSwitcher
        public TextView createTextView() {
            final TextView textView = new TextView(this.val$context);
            textView.setTextSize(1, 15.0f);
            textView.setTypeface(AndroidUtilities.regular());
            textView.setPadding(AndroidUtilities.dp(6.0f), 0, AndroidUtilities.dp(6.0f), 0);
            textView.setSingleLine(true);
            textView.setEllipsize(TextUtils.TruncateAt.END);
            textView.setGravity(19);
            textView.setTextColor(MusicPlayerSheet.this.colors.textSecondary);
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$7$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$createTextView$0(textView, view);
                }
            });
            return textView;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$createTextView$0(TextView textView, View view) {
            CharSequence text = textView.getText();
            if (TextUtils.isEmpty(text)) {
                return;
            }
            MusicPlayerSheet.this.actions.searchArtist(text.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(View view) {
        toggleProfile();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$4(View view) {
        boolean z = this.showRemaining;
        this.showRemaining = !z;
        this.durationView.setContentDescription(LocaleController.getString(!z ? C2807R.string.PlayerShowDuration : C2807R.string.PlayerShowRemaining));
        this.lastTime = -1;
        MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
        if (playingMessageObject != null) {
            updateProgress(playingMessageObject);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$5(View view) {
        MediaController.getInstance().setPlaybackOrderType(SharedConfig.shuffleMusic ? 0 : 2);
        updateOrderButtons(true);
        this.queueView.update();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$6(View view) {
        showOrderMenu(view);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$7(View view) {
        SharedConfig.setRepeatMode((SharedConfig.repeatMode + 1) % 3);
        updateOrderButtons(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$8(View view) {
        showOrderMenu(view);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$9(View view) {
        cycleSpeed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$10(View view) {
        showSpeedMenu(view);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$11(View view) {
        selectMode(this.mode == 1 ? 0 : 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$12(View view) {
        selectMode(this.mode == 2 ? 0 : 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$13(Float f) {
        this.seekPlate = f.floatValue();
        this.playerLayout.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$14(DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
        if (z || f > 0.01f || this.rewindingState != 0) {
            return;
        }
        this.seekPlate = 0.0f;
        this.seekSpeedDrawable.setShown(false, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$15(Float f) {
        this.modeProgress = f.floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$16(Float f) {
        this.lyricsAlpha = Utilities.clamp01(f.floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$17(Float f) {
        this.queueAlpha = Utilities.clamp01(f.floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$18(Float f) {
        this.canvasProgress = f.floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$19(Float f) {
        this.canvasTitleProgress = f.floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$20(Float f) {
        this.seekBar.setBufferedProgress(f.floatValue() / 1000.0f);
    }

    private ExpressiveStateDrawable createModeSegment(int i) {
        return new ExpressiveStateDrawable(24.0f).setInnerCorners(i, 8.0f).setAlwaysShowContainer(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onModeSegmentsChanged() {
        applyModeSegment(this.lyricsButton, this.lyricsBackground, this.colors);
        applyModeSegment(this.queueButton, this.queueBackground, this.colors);
        this.playerLayout.layoutModeSegments();
    }

    private static void applyModeSegment(ImageView imageView, ExpressiveStateDrawable expressiveStateDrawable, PlayerColors playerColors) {
        int iBlendARGB = ColorUtils.blendARGB(playerColors.icon, playerColors.onAccent, expressiveStateDrawable.getSelectProgress());
        setIconTint(imageView, expressiveStateDrawable, iBlendARGB);
        expressiveStateDrawable.setColors(iBlendARGB, playerColors.surfaceContainer).setSelectedContainerColor(playerColors.accent);
    }

    private ImageView createIconButton(Context context, int i, ExpressiveStateDrawable expressiveStateDrawable) {
        ImageView imageView = new ImageView(context);
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        if (i != 0) {
            imageView.setImageResource(i);
        }
        imageView.setBackground(expressiveStateDrawable);
        return imageView;
    }

    private SpringAnimation createSpring(float f, float f2, final Utilities.Callback<Float> callback) {
        return Material3Tokens.createSpring(f, f2, 0.002f, new Utilities.Callback() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda52
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$createSpring$21(callback, (Float) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createSpring$21(Utilities.Callback callback, Float f) {
        callback.run(f);
        applyTransitions();
    }

    private void setupCast(Context context) {
        CastMediaRouteButton castMediaRouteButton = new CastMediaRouteButton(context) { // from class: com.exteragram.messenger.player.MusicPlayerSheet.10
            @Override // org.telegram.ui.Components.CastMediaRouteButton
            public void stateUpdated(boolean z) {
                MusicPlayerSheet.this.moreIcon.setCasting(CastSync.isActive(), true);
            }
        };
        this.castButton = castMediaRouteButton;
        this.castAvailable = true;
        try {
            castMediaRouteButton.setRouteSelector(CastContext.getSharedInstance(context).getMergedSelector());
        } catch (Exception e) {
            FileLog.m1040e(e);
            this.castAvailable = false;
        }
        this.castButton.setVisibility(4);
        this.moreIcon.setCasting(CastSync.isActive(), false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MessageObject getNeighborMessage(int i) {
        if (SharedConfig.shuffleMusic) {
            return null;
        }
        MediaController mediaController = MediaController.getInstance();
        ArrayList<MessageObject> playlist = mediaController.getPlaylist();
        int size = playlist.size();
        int playingMessageObjectNum = mediaController.getPlayingMessageObjectNum();
        if (size < 2 || playingMessageObjectNum < 0 || playingMessageObjectNum >= size) {
            return null;
        }
        int nextTrackDirection = playingMessageObjectNum + ((i > 0 ? 1 : -1) * mediaController.getNextTrackDirection());
        if (nextTrackDirection >= size) {
            nextTrackDirection = 0;
        } else if (nextTrackDirection < 0) {
            nextTrackDirection = size - 1;
        }
        return playlist.get(nextTrackDirection);
    }

    private void showSeekPlate(boolean z) {
        if (z) {
            this.seekSpeedDrawable.setShown(true, false);
        }
        Material3Tokens.animate(this.seekPlateSpring, this.seekPlate, z ? 1.0f : 0.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isMyList() {
        MessagesController.SavedMusicList savedMusicList = this.savedMusicList;
        return savedMusicList != null && savedMusicList.dialogId == UserConfig.getInstance(this.currentAccount).getClientUserId();
    }

    @Override // com.exteragram.messenger.player.PlayerActions.Host
    public FrameLayout getBulletinContainer() {
        return this.playerLayout;
    }

    @Override // com.exteragram.messenger.player.PlayerActions.Host
    public Theme.ResourcesProvider getBulletinResourcesProvider() {
        return getThemedResourcesProvider();
    }

    @Override // com.exteragram.messenger.player.PlayerActions.Host
    public Theme.ResourcesProvider getSheetResourcesProvider() {
        PlayerColors playerColors = this.targetColors;
        if (playerColors == null) {
            playerColors = this.colors;
        }
        return playerColors.wrapSettings(this.baseResourcesProvider);
    }

    private Theme.ResourcesProvider getThemedResourcesProvider() {
        return this.colors.wrap(this.baseResourcesProvider);
    }

    @Override // com.exteragram.messenger.player.PlayerActions.Host
    public MessagesController.SavedMusicList getSavedMusicList() {
        return this.savedMusicList;
    }

    @Override // com.exteragram.messenger.player.PlayerActions.Host
    public void dismissPlayer() {
        lambda$new$0();
    }

    private BulletinFactory bulletins() {
        return BulletinFactory.of(this.playerLayout, getThemedResourcesProvider());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void togglePlay() {
        MediaController mediaController = MediaController.getInstance();
        MessageObject playingMessageObject = mediaController.getPlayingMessageObject();
        if (playingMessageObject == null || mediaController.isDownloadingCurrentMessage()) {
            return;
        }
        if (mediaController.isMessagePaused()) {
            mediaController.playMessage(playingMessageObject);
        } else {
            mediaController.lambda$startAudioAgain$9(playingMessageObject);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getRewindMultiplier() {
        int i = this.rewindingState;
        int i2 = this.rewindPressedCount;
        if (i < 0) {
            if (i2 <= 1) {
                return 3.0f;
            }
            return i2 == 2 ? 6.0f : 12.0f;
        }
        if (i2 <= 1) {
            return 4.0f;
        }
        return i2 == 2 ? 7.0f : 13.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onRewindHold(int i, boolean z) {
        MediaController mediaController = MediaController.getInstance();
        MessageObject playingMessageObject = mediaController.getPlayingMessageObject();
        if (z) {
            if (playingMessageObject == null || this.seekBar.isDragging()) {
                return;
            }
            this.rewindingState = i;
            this.rewindPressedCount = 1;
            this.lastRewindingTime = SystemClock.elapsedRealtime();
            this.lastUpdateRewindingPlayerTime = 0L;
            if (i < 0) {
                this.rewindingProgress = playingMessageObject.audioProgress;
                AndroidUtilities.runOnUIThread(this.rewindSeek);
            } else if (mediaController.isMessagePaused()) {
                startForwardRewindingSeek();
            } else {
                mediaController.setRewindPlaybackSpeed(getRewindMultiplier());
            }
            this.seekSpeedDrawable.setSpeed(i * getRewindMultiplier(), false);
            showSeekPlate(true);
            AndroidUtilities.runOnUIThread(this.rewindStepRunnable, 2000L);
            this.playerLayout.invalidate();
            return;
        }
        if (this.rewindingState == 0) {
            return;
        }
        AndroidUtilities.cancelRunOnUIThread(this.rewindStepRunnable);
        AndroidUtilities.cancelRunOnUIThread(this.rewindSeek);
        if (this.rewindingState < 0) {
            this.lastUpdateRewindingPlayerTime = 0L;
            this.rewindSeek.run();
            mediaController.resumeByRewind();
        } else {
            boolean z2 = getRewindMultiplier() >= 6.0f;
            mediaController.restoreMusicPlaybackSpeed();
            if (mediaController.isMessagePaused()) {
                this.lastUpdateRewindingPlayerTime = 0L;
                this.rewindSeek.run();
            } else if (z2 && playingMessageObject != null) {
                mediaController.seekToProgress(playingMessageObject, playingMessageObject.audioProgress);
            }
        }
        this.rewindingState = 0;
        this.rewindingProgress = -1.0f;
        this.rewindPressedCount = 0;
        showSeekPlate(false);
        if (playingMessageObject != null) {
            updateProgress(playingMessageObject);
        }
    }

    private void startForwardRewindingSeek() {
        MessageObject playingMessageObject;
        if (this.rewindingState != 1 || (playingMessageObject = MediaController.getInstance().getPlayingMessageObject()) == null) {
            return;
        }
        this.lastRewindingTime = SystemClock.elapsedRealtime();
        this.rewindingProgress = playingMessageObject.audioProgress;
        AndroidUtilities.cancelRunOnUIThread(this.rewindSeek);
        AndroidUtilities.runOnUIThread(this.rewindSeek);
    }

    private void cycleSpeed() {
        float[] fArr;
        MediaController mediaController = MediaController.getInstance();
        float playbackSpeed = mediaController.getPlaybackSpeed(true);
        int i = 0;
        while (true) {
            fArr = TOGGLE_SPEEDS;
            if (i >= fArr.length) {
                i = -1;
                break;
            } else if (playbackSpeed - 0.1f <= fArr[i]) {
                break;
            } else {
                i++;
            }
        }
        int i2 = i + 1;
        mediaController.setPlaybackSpeed(true, fArr[i2 < fArr.length ? i2 : 0]);
        checkSpeedHint();
    }

    private void checkSpeedHint() {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (jElapsedRealtime - this.lastSpeedClick > 300) {
            int i = MessagesController.getGlobalNotificationsSettings().getInt("speedhint", 0) + 1;
            if (i > 2) {
                i = -10;
            }
            MessagesController.getGlobalNotificationsSettings().edit().putInt("speedhint", i).apply();
            if (i >= 0) {
                showSpeedHint();
            }
        }
        this.lastSpeedClick = jElapsedRealtime;
    }

    private void showSpeedHint() {
        if (this.speedHintView != null || this.speedButton.getWidth() == 0) {
            return;
        }
        final HintView2 hintView2 = new HintView2(getContext(), 3);
        this.speedHintView = hintView2;
        hintView2.setMultilineText(true);
        hintView2.setText(LocaleController.getString(C2807R.string.SpeedHint));
        hintView2.setBgColor(this.colors.text);
        hintView2.setTextColor(this.colors.background);
        hintView2.setPadding(AndroidUtilities.dp(20.0f), 0, AndroidUtilities.dp(20.0f), 0);
        hintView2.setJointPx(0.0f, AndroidUtilities.dp(64.0f) / 2.0f);
        hintView2.setDuration(3500L);
        hintView2.setOnHiddenListener(new Runnable() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda51
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$showSpeedHint$22(hintView2);
            }
        });
        this.playerLayout.addView(hintView2);
        hintView2.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showSpeedHint$22(HintView2 hintView2) {
        AndroidUtilities.removeFromParent(hintView2);
        if (this.speedHintView == hintView2) {
            this.speedHintView = null;
        }
    }

    private ItemOptions makeMenu(View view, boolean z, boolean z2) {
        return ItemOptions.makeOptions(this.container, getThemedResourcesProvider(), view, z, z2).setDimAlpha(102);
    }

    private Rect getMenuPadding() {
        Rect rect = new Rect();
        Drawable drawable = ContextCompat.getDrawable(getContext(), C2807R.drawable.popup_fixed_alert4);
        if (drawable != null) {
            drawable.getPadding(rect);
        }
        return rect;
    }

    private Drawable createScrimBackground(View view) {
        if (view.getBackground() instanceof ExpressiveStateDrawable) {
            return ((ExpressiveStateDrawable) view.getBackground()).createShapeFill(this.colors.background);
        }
        return null;
    }

    private void alignMenu(ItemOptions itemOptions, View view) {
        boolean z = view.getX() + (((float) view.getWidth()) / 2.0f) > ((float) this.playerLayout.getWidth()) / 2.0f;
        itemOptions.setGravity(z ? 5 : 3);
        if (z) {
            return;
        }
        itemOptions.translate(-getMenuPadding().left, 0.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getSpeedSliderColor() {
        return ColorTones.withTone(this.colors.accent, 40.0f, 64.0d);
    }

    private void showSpeedMenu(View view) {
        float playbackSpeed = MediaController.getInstance().getPlaybackSpeed(true);
        int i = 0;
        ItemOptions itemOptionsMakeMenu = makeMenu(view, false, true);
        final ActionBarMenuSlider.SpeedSlider speedSlider = new ActionBarMenuSlider.SpeedSlider(getContext(), getThemedResourcesProvider()) { // from class: com.exteragram.messenger.player.MusicPlayerSheet.11
            @Override // org.telegram.ui.ActionBar.ActionBarMenuSlider.SpeedSlider, org.telegram.ui.ActionBar.ActionBarMenuSlider
            public int getColorValue(float f) {
                return MusicPlayerSheet.this.getSpeedSliderColor();
            }
        };
        speedSlider.setRoundRadiusDp(12.0f);
        speedSlider.setDrawShadow(false);
        speedSlider.setSpeed(playbackSpeed, false);
        speedSlider.setOnValueChange(new Utilities.Callback2() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda33
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                MusicPlayerSheet.m2824$r8$lambda$pOh5Z5GlajEip2xeVd8d_UWpRA(speedSlider, (Float) obj, (Boolean) obj2);
            }
        });
        itemOptionsMakeMenu.addView(speedSlider, LayoutHelper.createLinear(-1, 44));
        itemOptionsMakeMenu.addSpaceGap();
        while (true) {
            float[] fArr = SPEEDS;
            if (i < fArr.length) {
                final float f = fArr[i];
                itemOptionsMakeMenu.add(SPEED_ICONS[i], LocaleController.getString(SPEED_NAMES[i]), new Runnable() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda34
                    @Override // java.lang.Runnable
                    public final void run() {
                        MediaController.getInstance().setPlaybackSpeed(true, f);
                    }
                });
                if (Math.abs(playbackSpeed - f) < 0.05f && itemOptionsMakeMenu.getLast() != null) {
                    int i2 = this.colors.accent;
                    itemOptionsMakeMenu.getLast().setColors(i2, i2);
                }
                i++;
            } else {
                MessagesController.getGlobalNotificationsSettings().edit().putInt("speedhint", -15).apply();
                itemOptionsMakeMenu.addGap();
                itemOptionsMakeMenu.addChecked(ExteraConfig.getPlayerSpeedPitch(), C2807R.drawable.msg_tone_on, LocaleController.getString(C2807R.string.PlayerSpeedPitch), new Runnable() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda35
                    @Override // java.lang.Runnable
                    public final void run() {
                        MusicPlayerSheet.m2810$r8$lambda$LMGSXmBSWWS9PFoMS4DCxGeWQI();
                    }
                });
                matchFirstCardWidth(itemOptionsMakeMenu, speedSlider);
                alignMenu(itemOptionsMakeMenu, view);
                itemOptionsMakeMenu.setScrimViewBackground(createScrimBackground(view));
                itemOptionsMakeMenu.setDismissOnMoveOutside(true);
                itemOptionsMakeMenu.setOnDismiss(new Runnable() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda36
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$showSpeedMenu$26();
                    }
                });
                this.speedMenuShown = true;
                applySpeedColors(this.colors);
                itemOptionsMakeMenu.show();
                return;
            }
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$pOh5Z5GlajEip2xeV-d8d_UWpRA, reason: not valid java name */
    public static /* synthetic */ void m2824$r8$lambda$pOh5Z5GlajEip2xeVd8d_UWpRA(ActionBarMenuSlider.SpeedSlider speedSlider, Float f, Boolean bool) {
        float fClamp01 = Utilities.clamp01(f.floatValue());
        if (Math.abs(speedSlider.getValue() - fClamp01) > 0.001f) {
            speedSlider.setValue(fClamp01, true);
        }
        MediaController.getInstance().setPlaybackSpeed(true, speedSlider.getSpeed(fClamp01));
    }

    /* JADX INFO: renamed from: $r8$lambda$LMGSXmBSWWS9-PFoMS4DCxGeWQI, reason: not valid java name */
    public static /* synthetic */ void m2810$r8$lambda$LMGSXmBSWWS9PFoMS4DCxGeWQI() {
        ExteraConfig.setPlayerSpeedPitch(!ExteraConfig.getPlayerSpeedPitch());
        MediaController.getInstance().restoreMusicPlaybackSpeed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showSpeedMenu$26() {
        this.speedMenuShown = false;
        applySpeedColors(this.colors);
    }

    private void matchFirstCardWidth(ItemOptions itemOptions, View view) {
        ViewGroup layout = itemOptions.getLayout();
        if (layout == null || layout.getChildCount() < 2 || view.getLayoutParams() == null) {
            return;
        }
        int iMax = 0;
        for (int i = 1; i < layout.getChildCount(); i++) {
            View childAt = layout.getChildAt(i);
            childAt.measure(View.MeasureSpec.makeMeasureSpec(this.container.getWidth(), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(this.container.getHeight(), Integer.MIN_VALUE));
            iMax = Math.max(iMax, (childAt.getMeasuredWidth() - childAt.getPaddingLeft()) - childAt.getPaddingRight());
        }
        view.getLayoutParams().width = Math.max(AndroidUtilities.dp(120.0f), iMax);
    }

    private void showOrderMenu(View view) {
        ItemOptions itemOptionsMakeMenu = makeMenu(view, false, true);
        itemOptionsMakeMenu.addChecked(SharedConfig.repeatMode == 2, C2807R.drawable.player_new_repeatone, LocaleController.getString(C2807R.string.RepeatSong), new Runnable() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda37
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$showOrderMenu$27();
            }
        });
        itemOptionsMakeMenu.addChecked(SharedConfig.repeatMode == 1, C2807R.drawable.player_new_repeatall, LocaleController.getString(C2807R.string.RepeatList), new Runnable() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda38
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$showOrderMenu$28();
            }
        });
        itemOptionsMakeMenu.addGap();
        itemOptionsMakeMenu.addChecked(SharedConfig.shuffleMusic, C2807R.drawable.player_new_shuffle, LocaleController.getString(C2807R.string.ShuffleList), new Runnable() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda39
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$showOrderMenu$29();
            }
        });
        itemOptionsMakeMenu.addGap();
        itemOptionsMakeMenu.addChecked(SharedConfig.playOrderReversed, C2807R.drawable.player_new_order, LocaleController.getString(C2807R.string.ReverseOrder), new Runnable() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda40
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$showOrderMenu$30();
            }
        });
        alignMenu(itemOptionsMakeMenu, view);
        itemOptionsMakeMenu.setScrimViewBackground(createScrimBackground(view));
        itemOptionsMakeMenu.setDismissOnMoveOutside(true);
        itemOptionsMakeMenu.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showOrderMenu$27() {
        SharedConfig.setRepeatMode(SharedConfig.repeatMode == 2 ? 0 : 2);
        updateOrderButtons(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showOrderMenu$28() {
        SharedConfig.setRepeatMode(SharedConfig.repeatMode == 1 ? 0 : 1);
        updateOrderButtons(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showOrderMenu$29() {
        MediaController.getInstance().setPlaybackOrderType(SharedConfig.shuffleMusic ? 0 : 2);
        updateOrderButtons(true);
        this.queueView.update();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showOrderMenu$30() {
        MediaController.getInstance().setPlaybackOrderType(!SharedConfig.playOrderReversed ? 1 : 0);
        updateOrderButtons(true);
        this.queueView.reverse();
    }

    private void showMenu() {
        final MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
        if (playingMessageObject == null) {
            return;
        }
        boolean zIsServiceTrack = PlayerActions.isServiceTrack(playingMessageObject);
        final ItemOptions itemOptionsMakeMenu = makeMenu(this.moreButton, true, false);
        if (!zIsServiceTrack) {
            if (!isMyList() && !this.noforwards) {
                final ItemOptions itemOptionsBuildSaveOptions = buildSaveOptions(itemOptionsMakeMenu, playingMessageObject);
                itemOptionsMakeMenu.add(C2807R.drawable.msg_stories_save, LocaleController.getString(C2807R.string.AudioSaveTo), new Runnable() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda42
                    @Override // java.lang.Runnable
                    public final void run() {
                        itemOptionsMakeMenu.openSwipeback(itemOptionsBuildSaveOptions);
                    }
                });
                if (itemOptionsMakeMenu.getLast() != null) {
                    itemOptionsMakeMenu.getLast().setRightIcon(C2807R.drawable.msg_arrowright);
                }
                itemOptionsMakeMenu.addGap();
            }
            addForwardAndShare(itemOptionsMakeMenu, playingMessageObject);
            itemOptionsMakeMenu.addIf(isMyList() && !this.noforwards, C2807R.drawable.menu_download_round, LocaleController.getString(C2807R.string.SaveToMusic), new Runnable() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda43
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$showMenu$32(itemOptionsMakeMenu, playingMessageObject);
                }
            });
            itemOptionsMakeMenu.addIf(playingMessageObject.getId() > 0, C2807R.drawable.msg_message, LocaleController.getString(C2807R.string.ShowInChat), new Runnable() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda44
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$showMenu$33(itemOptionsMakeMenu, playingMessageObject);
                }
            });
            if (this.castAvailable) {
                ActionBarMenuSubItem actionBarMenuSubItemAdd = itemOptionsMakeMenu.add();
                actionBarMenuSubItemAdd.setTextAndIcon(LocaleController.getString(C2807R.string.VideoPlayerChromecast), C2807R.drawable.menu_video_chromecast);
                actionBarMenuSubItemAdd.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda45
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$showMenu$34(itemOptionsMakeMenu, view);
                    }
                });
                AndroidUtilities.removeFromParent(this.castButton);
                actionBarMenuSubItemAdd.addView(this.castButton, 0, LayoutHelper.createFrame(-1, -1.0f));
                actionBarMenuSubItemAdd.setEnabledByColor(this.castButton.isConnected(), Theme.getColor(Theme.key_actionBarDefaultSubmenuItem, getThemedResourcesProvider()), Theme.getColor(Theme.key_actionBarDefaultSubmenuItemIcon, getThemedResourcesProvider()), this.colors.accent);
            }
            itemOptionsMakeMenu.addIf(isMyList(), C2807R.drawable.msg_delete, (CharSequence) LocaleController.getString(C2807R.string.ProfilePlaylistRemoveFromProfile), true, new Runnable() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda46
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$showMenu$35(itemOptionsMakeMenu, playingMessageObject);
                }
            });
            itemOptionsMakeMenu.addGap();
        }
        if (!zIsServiceTrack) {
            final ItemOptions itemOptionsBuildDetailsOptions = buildDetailsOptions(itemOptionsMakeMenu, playingMessageObject);
            itemOptionsMakeMenu.add(C2807R.drawable.msg_info, LocaleController.getString(C2807R.string.Details), new Runnable() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda47
                @Override // java.lang.Runnable
                public final void run() {
                    itemOptionsMakeMenu.openSwipeback(itemOptionsBuildDetailsOptions);
                }
            });
            if (itemOptionsMakeMenu.getLast() != null) {
                itemOptionsMakeMenu.getLast().setRightIcon(C2807R.drawable.msg_arrowright);
            }
        }
        itemOptionsMakeMenu.add(C2807R.drawable.msg_settings, LocaleController.getString(C2807R.string.PlayerSettings), new Runnable() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda48
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$showMenu$37(itemOptionsMakeMenu);
            }
        });
        itemOptionsMakeMenu.setGravity(5);
        itemOptionsMakeMenu.setSwipebackGravity(false, false);
        ViewGroup layout = itemOptionsMakeMenu.getLayout();
        if (layout instanceof ActionBarPopupWindow.ActionBarPopupWindowLayout) {
            ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = (ActionBarPopupWindow.ActionBarPopupWindowLayout) layout;
            if (actionBarPopupWindowLayout.getSwipeBack() != null) {
                actionBarPopupWindowLayout.getSwipeBack().setStickToRight(true);
            }
        }
        itemOptionsMakeMenu.setOnTopOfScrim();
        itemOptionsMakeMenu.translate(0.0f, -getMenuPadding().top);
        itemOptionsMakeMenu.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showMenu$32(ItemOptions itemOptions, MessageObject messageObject) {
        itemOptions.dismiss();
        this.actions.saveToMusic(messageObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showMenu$33(ItemOptions itemOptions, MessageObject messageObject) {
        itemOptions.dismiss();
        this.actions.showInChat(messageObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showMenu$34(ItemOptions itemOptions, View view) {
        itemOptions.dismiss();
        ChromecastController.getInstance().setCurrentMediaAndCastIfNeeded(MediaController.getInstance().getCurrentChromecastMedia());
        this.castButton.performClick();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showMenu$35(ItemOptions itemOptions, MessageObject messageObject) {
        itemOptions.dismiss();
        this.actions.removeFromMyList(messageObject, new Runnable() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda57
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.onMyListChanged();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showMenu$37(ItemOptions itemOptions) {
        itemOptions.dismiss();
        openSettings();
    }

    private ItemOptions buildDetailsOptions(ItemOptions itemOptions, MessageObject messageObject) {
        String bitrate;
        MusicPlayerSheet musicPlayerSheet;
        ItemOptions itemOptions2;
        String sampleRate;
        MusicPlayerSheet musicPlayerSheet2;
        ItemOptions itemOptions3;
        String bitDepth;
        MusicPlayerSheet musicPlayerSheet3;
        ItemOptions itemOptions4;
        String fileSize;
        MusicPlayerSheet musicPlayerSheet4;
        ItemOptions itemOptions5;
        String shortDuration;
        MusicPlayerSheet musicPlayerSheet5;
        ItemOptions itemOptions6;
        ItemOptions itemOptionsMakeSwipeback = itemOptions.makeSwipeback();
        itemOptionsMakeSwipeback.add(C2807R.drawable.ic_ab_back, LocaleController.getString(C2807R.string.Back), new RatePill$$ExternalSyntheticLambda1(itemOptions));
        itemOptionsMakeSwipeback.addGap();
        TrackQuality.Info info = TrackQuality.get(messageObject);
        File localFile = PlayerActions.getLocalFile(messageObject);
        String absolutePath = null;
        final ActionBarMenuSubItem actionBarMenuSubItemAddDetail = addDetail(itemOptions, itemOptionsMakeSwipeback, C2807R.drawable.msg_media, LocaleController.getString(C2807R.string.PlayerInfoFormat), info != null ? info.format : null);
        int i = C2807R.drawable.msg_noise_on;
        String string = LocaleController.getString(C2807R.string.Bitrate);
        if (info != null) {
            bitrate = info.formatBitrate();
            itemOptions2 = itemOptions;
            musicPlayerSheet = this;
        } else {
            bitrate = null;
            musicPlayerSheet = this;
            itemOptions2 = itemOptions;
        }
        final ActionBarMenuSubItem actionBarMenuSubItemAddDetail2 = musicPlayerSheet.addDetail(itemOptions2, itemOptionsMakeSwipeback, i, string, bitrate);
        int i2 = C2807R.drawable.msg_tone_on;
        String string2 = LocaleController.getString(C2807R.string.PlayerInfoSampleRate);
        if (info != null) {
            sampleRate = info.formatSampleRate();
            itemOptions3 = itemOptions;
            musicPlayerSheet2 = this;
        } else {
            sampleRate = null;
            musicPlayerSheet2 = this;
            itemOptions3 = itemOptions;
        }
        final ActionBarMenuSubItem actionBarMenuSubItemAddDetail3 = musicPlayerSheet2.addDetail(itemOptions3, itemOptionsMakeSwipeback, i2, string2, sampleRate);
        int i3 = C2807R.drawable.menu_quality_hd;
        String string3 = LocaleController.getString(C2807R.string.PlayerInfoBitDepth);
        if (info != null) {
            bitDepth = info.formatBitDepth();
            itemOptions4 = itemOptions;
            musicPlayerSheet3 = this;
        } else {
            bitDepth = null;
            musicPlayerSheet3 = this;
            itemOptions4 = itemOptions;
        }
        final ActionBarMenuSubItem actionBarMenuSubItemAddDetail4 = musicPlayerSheet3.addDetail(itemOptions4, itemOptionsMakeSwipeback, i3, string3, bitDepth);
        long size = messageObject.getSize();
        int i4 = C2807R.drawable.msg_sendfile;
        String string4 = LocaleController.getString(C2807R.string.FileSize);
        if (size > 0) {
            fileSize = AndroidUtilities.formatFileSize(size);
            itemOptions5 = itemOptions;
            musicPlayerSheet4 = this;
        } else {
            fileSize = null;
            musicPlayerSheet4 = this;
            itemOptions5 = itemOptions;
        }
        musicPlayerSheet4.addDetail(itemOptions5, itemOptionsMakeSwipeback, i4, string4, fileSize);
        int duration = (int) messageObject.getDuration();
        int i5 = C2807R.drawable.msg2_animations;
        String string5 = LocaleController.getString(C2807R.string.Duration);
        if (duration > 0) {
            shortDuration = AndroidUtilities.formatShortDuration(duration);
            itemOptions6 = itemOptions;
            musicPlayerSheet5 = this;
        } else {
            shortDuration = null;
            musicPlayerSheet5 = this;
            itemOptions6 = itemOptions;
        }
        musicPlayerSheet5.addDetail(itemOptions6, itemOptionsMakeSwipeback, i5, string5, shortDuration);
        addDetail(itemOptions, itemOptionsMakeSwipeback, C2807R.drawable.msg_log, LocaleController.getString(C2807R.string.FileName), FileLoader.getDocumentFileName(messageObject.getDocument()));
        int i6 = C2807R.drawable.msg_map;
        String string6 = LocaleController.getString(C2807R.string.FilePath);
        if (localFile != null && localFile.exists()) {
            absolutePath = localFile.getAbsolutePath();
        }
        addDetail(itemOptions, itemOptionsMakeSwipeback, i6, string6, absolutePath);
        if (info != null && !info.probed) {
            TrackQuality.load(messageObject, new Utilities.Callback() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda58
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$buildDetailsOptions$38(actionBarMenuSubItemAddDetail, actionBarMenuSubItemAddDetail2, actionBarMenuSubItemAddDetail3, actionBarMenuSubItemAddDetail4, (TrackQuality.Info) obj);
                }
            });
        }
        return itemOptionsMakeSwipeback;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildDetailsOptions$38(ActionBarMenuSubItem actionBarMenuSubItem, ActionBarMenuSubItem actionBarMenuSubItem2, ActionBarMenuSubItem actionBarMenuSubItem3, ActionBarMenuSubItem actionBarMenuSubItem4, TrackQuality.Info info) {
        setDetail(actionBarMenuSubItem, info.format);
        setDetail(actionBarMenuSubItem2, info.formatBitrate());
        setDetail(actionBarMenuSubItem3, info.formatSampleRate());
        setDetail(actionBarMenuSubItem4, info.formatBitDepth());
    }

    private ActionBarMenuSubItem addDetail(final ItemOptions itemOptions, ItemOptions itemOptions2, int i, String str, String str2) {
        itemOptions2.add(i, str, (Runnable) null);
        final ActionBarMenuSubItem last = itemOptions2.getLast();
        if (last == null) {
            return null;
        }
        last.setMinimumWidth(AndroidUtilities.dp(196.0f));
        last.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda67
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$addDetail$39(itemOptions, last, view);
            }
        });
        last.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda68
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return this.f$0.lambda$addDetail$40(itemOptions, last, view);
            }
        });
        setDetail(last, str2);
        return last;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addDetail$39(ItemOptions itemOptions, ActionBarMenuSubItem actionBarMenuSubItem, View view) {
        copyDetail(itemOptions, actionBarMenuSubItem);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$addDetail$40(ItemOptions itemOptions, ActionBarMenuSubItem actionBarMenuSubItem, View view) {
        copyDetail(itemOptions, actionBarMenuSubItem);
        return true;
    }

    private void setDetail(ActionBarMenuSubItem actionBarMenuSubItem, String str) {
        if (actionBarMenuSubItem == null) {
            return;
        }
        actionBarMenuSubItem.setVisibility(TextUtils.isEmpty(str) ? 8 : 0);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        actionBarMenuSubItem.setSubtext(str);
        actionBarMenuSubItem.subtextView.setMaxWidth(AndroidUtilities.dp(220.0f));
        actionBarMenuSubItem.subtextView.setEllipsize(TextUtils.TruncateAt.MARQUEE);
        actionBarMenuSubItem.subtextView.setMarqueeRepeatLimit(-1);
        actionBarMenuSubItem.subtextView.setSelected(true);
        actionBarMenuSubItem.setItemHeight(56);
    }

    private void copyDetail(ItemOptions itemOptions, ActionBarMenuSubItem actionBarMenuSubItem) {
        TextView textView = actionBarMenuSubItem.subtextView;
        if (textView == null || TextUtils.isEmpty(textView.getText())) {
            return;
        }
        itemOptions.dismiss();
        if (AndroidUtilities.addToClipboard(actionBarMenuSubItem.subtextView.getText()) && AndroidUtilities.shouldShowClipboardToast()) {
            bulletins().createCopyBulletin(LocaleController.getString(C2807R.string.TextCopied)).show();
        }
    }

    private void addForwardAndShare(final ItemOptions itemOptions, final MessageObject messageObject) {
        if (this.noforwards) {
            return;
        }
        itemOptions.add(C2807R.drawable.msg_forward, LocaleController.getString(C2807R.string.Forward), new Runnable() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda60
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$addForwardAndShare$41(itemOptions, messageObject);
            }
        });
        ActionBarMenuSubItem last = itemOptions.getLast();
        if (last != null) {
            last.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda61
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    return this.f$0.lambda$addForwardAndShare$42(itemOptions, messageObject, view);
                }
            });
        }
        itemOptions.add(C2807R.drawable.msg_shareout, LocaleController.getString(C2807R.string.ShareFile), new Runnable() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda62
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$addForwardAndShare$43(itemOptions, messageObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addForwardAndShare$41(ItemOptions itemOptions, MessageObject messageObject) {
        itemOptions.dismiss();
        this.actions.forward(messageObject, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$addForwardAndShare$42(ItemOptions itemOptions, MessageObject messageObject, View view) {
        itemOptions.dismiss();
        this.actions.forward(messageObject, true);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addForwardAndShare$43(ItemOptions itemOptions, MessageObject messageObject) {
        itemOptions.dismiss();
        this.actions.share(messageObject);
    }

    private void openSettings() {
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment == null) {
            return;
        }
        final PlayerSettingsSheet playerSettingsSheet = new PlayerSettingsSheet(getContext(), safeLastFragment, getSheetResourcesProvider(), new PlayerSettingsSheet.Delegate() { // from class: com.exteragram.messenger.player.MusicPlayerSheet.12
            @Override // com.exteragram.messenger.player.ui.PlayerSettingsSheet.Delegate
            public void onCoverColorsChanged() {
                if (ExteraConfig.getPlayerCoverColors() && MusicPlayerSheet.this.coverView.hasBitmap()) {
                    MusicPlayerSheet musicPlayerSheet = MusicPlayerSheet.this;
                    musicPlayerSheet.onCoverBitmapLoaded(musicPlayerSheet.coverView.getMessageObject(), MusicPlayerSheet.this.coverView.getImageReceiver());
                }
                MusicPlayerSheet.this.updateCoverColors(true);
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.playerColorsChanged, new Object[0]);
            }

            @Override // com.exteragram.messenger.player.ui.PlayerSettingsSheet.Delegate
            public void onMotionCoversChanged() {
                MusicPlayerSheet.this.coverView.setMotionCover(MusicPlayerSheet.this.coverView.getMessageObject(), null);
                MusicPlayerSheet musicPlayerSheet = MusicPlayerSheet.this;
                musicPlayerSheet.loadMotionCover(musicPlayerSheet.coverView.getMessageObject());
            }

            @Override // com.exteragram.messenger.player.ui.PlayerSettingsSheet.Delegate
            public void onSpotifyCanvasChanged() {
                MusicPlayerSheet.this.loadSpotifyCanvas(0);
            }

            @Override // com.exteragram.messenger.player.ui.PlayerSettingsSheet.Delegate
            public void onRhythmBackgroundChanged() {
                MusicPlayerSheet.this.updateRhythm();
            }

            @Override // com.exteragram.messenger.player.ui.PlayerSettingsSheet.Delegate
            public void onLyricsOnlineChanged() {
                MusicPlayerSheet.this.lyricsKey = null;
                if (MusicPlayerSheet.this.mode == 1) {
                    MusicPlayerSheet.this.loadLyrics(false);
                }
            }

            @Override // com.exteragram.messenger.player.ui.PlayerSettingsSheet.Delegate
            public void onLyricsProgressChanged() {
                MusicPlayerSheet.this.lyricsView.setProgressMode(ExteraConfig.getLyricsProgress());
            }
        });
        playerSettingsSheet.setOnHideListener(new DialogInterface.OnDismissListener() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda56
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                this.f$0.lambda$openSettings$44(playerSettingsSheet, dialogInterface);
            }
        });
        this.settingsSheet = playerSettingsSheet;
        playerSettingsSheet.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openSettings$44(PlayerSettingsSheet playerSettingsSheet, DialogInterface dialogInterface) {
        if (this.settingsSheet == playerSettingsSheet) {
            this.settingsSheet = null;
        }
    }

    private ItemOptions buildSaveOptions(final ItemOptions itemOptions, final MessageObject messageObject) {
        ItemOptions itemOptionsMakeSwipeback = itemOptions.makeSwipeback();
        itemOptionsMakeSwipeback.add(C2807R.drawable.ic_ab_back, LocaleController.getString(C2807R.string.Back), new RatePill$$ExternalSyntheticLambda1(itemOptions));
        itemOptionsMakeSwipeback.addGap();
        itemOptionsMakeSwipeback.addIf(!this.actions.isInProfile(messageObject), C2807R.drawable.left_status_profile, LocaleController.getString(C2807R.string.AudioSaveToMyProfile), new Runnable() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda53
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$buildSaveOptions$46(messageObject, itemOptions);
            }
        });
        itemOptionsMakeSwipeback.add(C2807R.drawable.msg_saved, LocaleController.getString(C2807R.string.AudioSaveToSavedMessages), new Runnable() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda54
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$buildSaveOptions$47(messageObject, itemOptions);
            }
        });
        itemOptionsMakeSwipeback.add(C2807R.drawable.menu_download_round, LocaleController.getString(C2807R.string.AudioSaveToMusicFolder), new Runnable() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda55
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$buildSaveOptions$48(messageObject, itemOptions);
            }
        });
        itemOptionsMakeSwipeback.addGap();
        itemOptionsMakeSwipeback.addText(LocaleController.getString(C2807R.string.AudioSaveToInfo), 12, AndroidUtilities.dp(200.0f));
        return itemOptionsMakeSwipeback;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildSaveOptions$46(MessageObject messageObject, final ItemOptions itemOptions) {
        this.actions.setInProfile(messageObject, true, new Runnable() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda69
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$buildSaveOptions$45(itemOptions);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildSaveOptions$45(ItemOptions itemOptions) {
        updateProfileState(true);
        bulletins().createSimpleBulletin(C2807R.raw.saved_messages, LocaleController.getString(C2807R.string.AudioSaveToMyProfileSaved)).show();
        itemOptions.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildSaveOptions$47(MessageObject messageObject, ItemOptions itemOptions) {
        this.actions.forwardTo(messageObject, UserConfig.getInstance(this.currentAccount).getClientUserId(), false);
        itemOptions.dismiss();
        bulletins().createSimpleBulletin(C2807R.raw.saved_messages, LocaleController.getString(C2807R.string.AudioSaveToSavedMessagesSaved)).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildSaveOptions$48(MessageObject messageObject, ItemOptions itemOptions) {
        this.actions.saveToMusic(messageObject);
        itemOptions.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showTrackOptions(PlayerQueueCell playerQueueCell, final MessageObject messageObject) {
        final ItemOptions itemOptionsMakeMenu = makeMenu(playerQueueCell, true, false);
        if (isMyList()) {
            addForwardAndShare(itemOptionsMakeMenu, messageObject);
            itemOptionsMakeMenu.addIf(!this.noforwards, C2807R.drawable.menu_download_round, LocaleController.getString(C2807R.string.SaveToMusic), new Runnable() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda63
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$showTrackOptions$49(itemOptionsMakeMenu, messageObject);
                }
            });
            itemOptionsMakeMenu.add(C2807R.drawable.msg_delete, (CharSequence) LocaleController.getString(C2807R.string.Delete), true, new Runnable() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda64
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$showTrackOptions$51(messageObject, itemOptionsMakeMenu);
                }
            });
        } else {
            final ItemOptions itemOptionsBuildSaveOptions = buildSaveOptions(itemOptionsMakeMenu, messageObject);
            itemOptionsMakeMenu.addIf(!this.noforwards, C2807R.drawable.msg_stories_save, LocaleController.getString(C2807R.string.AudioSaveTo), new Runnable() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda65
                @Override // java.lang.Runnable
                public final void run() {
                    itemOptionsMakeMenu.openSwipeback(itemOptionsBuildSaveOptions);
                }
            });
            if (!this.noforwards && itemOptionsMakeMenu.getLast() != null) {
                itemOptionsMakeMenu.getLast().setRightIcon(C2807R.drawable.msg_arrowright);
            }
            itemOptionsMakeMenu.addGap();
            addForwardAndShare(itemOptionsMakeMenu, messageObject);
            itemOptionsMakeMenu.addIf(messageObject.getId() > 0, C2807R.drawable.msg_view_file, LocaleController.getString(C2807R.string.ShowInChat), new Runnable() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda66
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$showTrackOptions$53(itemOptionsMakeMenu, messageObject);
                }
            });
        }
        itemOptionsMakeMenu.setGravity(LocaleController.isRTL ? 3 : 5);
        itemOptionsMakeMenu.setDismissOnMoveOutside(true);
        itemOptionsMakeMenu.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showTrackOptions$49(ItemOptions itemOptions, MessageObject messageObject) {
        itemOptions.dismiss();
        this.actions.saveToMusic(messageObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showTrackOptions$51(MessageObject messageObject, final ItemOptions itemOptions) {
        this.actions.removeFromMyList(messageObject, new Runnable() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda70
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$showTrackOptions$50(itemOptions);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showTrackOptions$50(ItemOptions itemOptions) {
        onMyListChanged();
        itemOptions.dismiss();
        updateProfileState(true);
        bulletins().createSimpleBulletin(C2807R.raw.ic_delete, LocaleController.getString(C2807R.string.AudioSaveToMyProfileUnsaved)).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showTrackOptions$53(ItemOptions itemOptions, MessageObject messageObject) {
        itemOptions.dismiss();
        this.actions.showInChat(messageObject);
    }

    private void toggleProfile() {
        MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
        if (playingMessageObject == null || this.actions.isProfileIdsLoading()) {
            return;
        }
        boolean zIsInProfile = this.actions.isInProfile(playingMessageObject);
        final boolean z = !zIsInProfile;
        this.profileButton.performHapticFeedback(3);
        final Runnable runnable = new Runnable() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda49
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$toggleProfile$54(z);
            }
        };
        if (isMyList()) {
            Runnable runnable2 = new Runnable() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda50
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$toggleProfile$55(runnable);
                }
            };
            PlayerActions playerActions = this.actions;
            if (!zIsInProfile) {
                playerActions.addBackToMyList(playingMessageObject, runnable2);
                return;
            } else {
                playerActions.removeFromMyList(playingMessageObject, runnable2);
                return;
            }
        }
        this.actions.setInProfile(playingMessageObject, z, runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toggleProfile$54(boolean z) {
        updateProfileState(true);
        bulletins().createSimpleBulletin(z ? C2807R.raw.saved_messages : C2807R.raw.ic_delete, LocaleController.getString(z ? C2807R.string.AudioSaveToMyProfileSaved : C2807R.string.AudioSaveToMyProfileUnsaved)).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toggleProfile$55(Runnable runnable) {
        onMyListChanged();
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onMyListChanged() {
        this.queueView.update();
        updateHeader();
    }

    private void selectMode(int i) {
        setMode(i, true);
        ExteraConfig.setPlayerMode(i);
    }

    private void setMode(int i, boolean z) {
        int i2 = this.mode;
        if (i2 == i && z) {
            return;
        }
        this.mode = i;
        if (i2 == 2 && i != 2) {
            this.queueView.clearSearch();
        }
        float f = i == 0 ? 0.0f : 1.0f;
        float f2 = i == 1 ? 1.0f : 0.0f;
        float f3 = i != 2 ? 0.0f : 1.0f;
        SpringAnimation springAnimation = this.modeSpring;
        if (z) {
            Material3Tokens.animate(springAnimation, this.modeProgress, f);
            Material3Tokens.animate(this.lyricsSpring, this.lyricsAlpha, f2);
            Material3Tokens.animate(this.queueSpring, this.queueAlpha, f3);
        } else {
            springAnimation.cancel();
            this.lyricsSpring.cancel();
            this.queueSpring.cancel();
            this.modeProgress = f;
            this.lyricsAlpha = f2;
            this.queueAlpha = f3;
        }
        if (this.canvasShown) {
            if ((i2 == 0) != (i == 0)) {
                updateCoverColors(z);
            }
        }
        this.lyricsBackground.setSelected(i == 1, z);
        this.queueBackground.setSelected(i == 2, z);
        updateToggleColors();
        if (i == 1) {
            loadLyrics(false);
        } else if (i == 2) {
            this.queueView.update();
            this.queueView.scrollToCurrent(false);
        }
        applyTransitions();
    }

    private void loadArtwork(final MessageObject messageObject) {
        TrackQuery trackQueryForMessage = PlayerCovers.needsArtwork(messageObject) ? TrackQuery.forMessage(messageObject) : null;
        if (trackQueryForMessage == null || ArtworkRepository.isResolved(trackQueryForMessage)) {
            return;
        }
        ArtworkRepository.fetch(trackQueryForMessage, new ArtworkRepository.Callback() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda28
            @Override // com.exteragram.messenger.player.motion.ArtworkRepository.Callback
            public final void onResult(String str) {
                this.f$0.lambda$loadArtwork$56(messageObject, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadArtwork$56(MessageObject messageObject, String str) {
        if (str == null || this.coverView.getMessageObject() != messageObject) {
            return;
        }
        this.coverView.refreshCover();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadMotionCover(final MessageObject messageObject) {
        final int i = this.motionRequest + 1;
        this.motionRequest = i;
        TrackQuery trackQueryForMessage = ExteraConfig.getPlayerMotionCovers() ? TrackQuery.forMessage(messageObject) : null;
        if (trackQueryForMessage == null) {
            return;
        }
        Point point = AndroidUtilities.displaySize;
        MotionCoverRepository.fetch(trackQueryForMessage, Math.min(point.x, point.y) - AndroidUtilities.dp(40.0f), new MotionCoverRepository.Callback() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda1
            @Override // com.exteragram.messenger.player.motion.MotionCoverRepository.Callback
            public final void onResult(String str) {
                this.f$0.lambda$loadMotionCover$57(i, messageObject, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadMotionCover$57(int i, MessageObject messageObject, String str) {
        if (i != this.motionRequest || str == null) {
            return;
        }
        this.coverView.setMotionCover(messageObject, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadSpotifyCanvas(int i) {
        MessageObject messageObject;
        boolean z = ExteraConfig.getPlayerSpotifyCanvas() && SpotifyCanvasRepository.isSupported() && SpotifyCanvasRepository.isLoggedIn();
        TrackQuery[] trackQueryArr = new TrackQuery[3];
        this.canvasMessages[0] = getNeighborMessage(-1);
        MessageObject[] messageObjectArr = this.canvasMessages;
        messageObjectArr[1] = this.lastMessageObject;
        messageObjectArr[2] = getNeighborMessage(1);
        for (int i2 = 0; i2 < 3; i2++) {
            String strKey = null;
            TrackQuery trackQueryForMessage = (!z || (messageObject = this.canvasMessages[i2]) == null) ? null : TrackQuery.forMessage(messageObject);
            trackQueryArr[i2] = trackQueryForMessage;
            String[] strArr = this.canvasKeys;
            if (trackQueryForMessage != null) {
                strKey = trackQueryForMessage.key();
            }
            strArr[i2] = strKey;
        }
        SpotifyCanvasRepository.setWantedKeys(Arrays.asList(this.canvasKeys));
        applySpotifyCanvas(i);
        int i3 = 0;
        while (i3 < 3) {
            final String str = this.canvasKeys[i3];
            if (str != null && this.canvasPaths.get(str) == null) {
                SpotifyCanvasRepository.fetch(trackQueryArr[i3], i3 == 1, new SpotifyCanvasRepository.Callback() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda32
                    @Override // com.exteragram.messenger.player.motion.SpotifyCanvasRepository.Callback
                    public final void onResult(String str2) {
                        this.f$0.lambda$loadSpotifyCanvas$58(str, str2);
                    }
                });
            }
            i3++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadSpotifyCanvas$58(String str, String str2) {
        if (isDismissed()) {
            return;
        }
        LruCache<String, String> lruCache = this.canvasPaths;
        if (str2 == null) {
            str2 = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        lruCache.put(str, str2);
        if (Arrays.asList(this.canvasKeys).contains(str)) {
            applySpotifyCanvas(0);
        }
    }

    private void applySpotifyCanvas(int i) {
        for (int i2 = 0; i2 < 3; i2++) {
            String str = this.canvasKeys[i2];
            String str2 = null;
            String str3 = str != null ? this.canvasPaths.get(str) : null;
            String[] strArr = this.canvasRolePaths;
            if (!TextUtils.isEmpty(str3)) {
                str2 = str3;
            }
            strArr[i2] = str2;
        }
        this.spotifyCanvas.setPaths(this.canvasRolePaths, this.canvasMessages, i);
        syncSpotifyCanvas();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void syncSpotifyCanvas() {
        updateSpotifyCanvasShown();
        this.coverView.refreshCanvas();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isCanvasRole(int i) {
        String str;
        if (this.spotifyCanvas.hasFrame(i)) {
            return true;
        }
        if (!this.canvasShown || (str = this.canvasKeys[i]) == null) {
            return false;
        }
        String str2 = this.canvasPaths.get(str);
        return str2 == null || !str2.isEmpty();
    }

    private void updateSpotifyCanvasShown() {
        boolean z = !isDismissed() && isCanvasRole(1);
        float f = z ? 1.0f : 0.0f;
        if (this.canvasProgress != f && (!this.canvasSpring.isRunning() || this.canvasSpring.getSpring().getFinalPosition() != f)) {
            Material3Tokens.animate(this.canvasSpring, this.canvasProgress, f);
        }
        if (z != this.canvasShown) {
            this.canvasShown = z;
            Material3Tokens.animate(this.canvasTitleSpring, this.canvasTitleProgress, f);
            updateCoverColors(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadLyrics(boolean z) {
        MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
        if (playingMessageObject == null) {
            return;
        }
        TrackQuery trackQueryForMessage = TrackQuery.forMessage(playingMessageObject);
        StringBuilder sb = new StringBuilder();
        sb.append(trackQueryForMessage != null ? trackQueryForMessage.key() : _UrlKt.FRAGMENT_ENCODE_SET);
        sb.append("\u0002");
        sb.append(playingMessageObject.getId());
        sb.append("\u0002");
        sb.append(ExteraConfig.getLyricsOnline());
        String string = sb.toString();
        if (z || !string.equals(this.lyricsKey)) {
            this.lyricsKey = string;
            final int i = this.lyricsRequest + 1;
            this.lyricsRequest = i;
            Lyrics lyricsFromTags = LyricsRepository.fromTags(playingMessageObject);
            if (lyricsFromTags != null) {
                showLyrics(lyricsFromTags);
                return;
            }
            if (trackQueryForMessage == null) {
                showLyricsState(4);
                return;
            }
            Lyrics cached = LyricsRepository.getCached(trackQueryForMessage);
            if (cached != null) {
                showLyrics(cached);
                return;
            }
            if (!ExteraConfig.getLyricsOnline()) {
                showLyricsState(2);
                LyricsRepository.loadCached(trackQueryForMessage, new LyricsRepository.Callback() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda29
                    @Override // com.exteragram.messenger.player.lyrics.LyricsRepository.Callback
                    public final void onResult(Lyrics lyrics, int i2) {
                        this.f$0.lambda$loadLyrics$59(i, lyrics, i2);
                    }
                });
            } else if (!z && LyricsRepository.isKnownMissing(trackQueryForMessage)) {
                showLyricsState(4);
            } else {
                showLyricsState(2);
                LyricsRepository.fetch(trackQueryForMessage, new LyricsRepository.Callback() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda30
                    @Override // com.exteragram.messenger.player.lyrics.LyricsRepository.Callback
                    public final void onResult(Lyrics lyrics, int i2) {
                        this.f$0.lambda$loadLyrics$60(i, lyrics, i2);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadLyrics$59(int i, Lyrics lyrics, int i2) {
        if (i != this.lyricsRequest) {
            return;
        }
        if (lyrics != null) {
            showLyrics(lyrics);
        } else {
            showLyricsState(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadLyrics$60(int i, Lyrics lyrics, int i2) {
        if (i != this.lyricsRequest) {
            return;
        }
        if (lyrics != null) {
            showLyrics(lyrics);
        } else {
            showLyricsState(i2 == 2 ? 6 : 4);
        }
    }

    private void showLyrics(Lyrics lyrics) {
        if (lyrics.instrumental) {
            showLyricsState(5);
            return;
        }
        String creditName = lyrics.getCreditName();
        this.lyricsView.setLyrics(lyrics, creditName != null ? LocaleController.formatString(C2807R.string.LyricsCredit, creditName) : null);
        MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
        if (playingMessageObject != null) {
            this.lyricsView.setPosition(getPositionMs(playingMessageObject), !MediaController.getInstance().isMessagePaused());
            final LyricsView lyricsView = this.lyricsView;
            Objects.requireNonNull(lyricsView);
            lyricsView.post(new Runnable() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda41
                @Override // java.lang.Runnable
                public final void run() {
                    lyricsView.jumpToCurrent();
                }
            });
        }
    }

    private void showLyricsState(int i) {
        if (i == 1) {
            this.lyricsView.setState(i, LocaleController.getString(C2807R.string.LyricsOfferTitle), LocaleController.getString(C2807R.string.LyricsOfferText), LocaleController.getString(C2807R.string.LyricsOfferButton));
            return;
        }
        if (i == 4) {
            this.lyricsView.setState(i, LocaleController.getString(C2807R.string.LyricsNotFoundTitle), LocaleController.getString(ExteraConfig.getLyricsOnline() ? C2807R.string.LyricsNotFoundText : C2807R.string.LyricsNotFoundTextOffline), null);
            return;
        }
        if (i == 5) {
            this.lyricsView.setState(i, LocaleController.getString(C2807R.string.LyricsInstrumentalTitle), LocaleController.getString(C2807R.string.LyricsInstrumentalText), null);
            return;
        }
        LyricsView lyricsView = this.lyricsView;
        if (i == 6) {
            lyricsView.setState(i, LocaleController.getString(C2807R.string.LyricsErrorTitle), LocaleController.getString(C2807R.string.LyricsErrorText), LocaleController.getString(C2807R.string.Retry));
        } else {
            lyricsView.setState(i, null, null, null);
        }
    }

    private static long getPositionMs(MessageObject messageObject) {
        long progressMs = MediaController.getInstance().getProgressMs(messageObject);
        if (progressMs >= 0) {
            return progressMs;
        }
        int i = messageObject.audioProgressMs;
        return i > 0 ? i : (long) (((double) messageObject.audioProgress) * messageObject.getDuration() * 1000.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onCoverBitmapLoaded(final MessageObject messageObject, ImageReceiver imageReceiver) {
        if (messageObject == null || imageReceiver == null || !ExteraConfig.getPlayerCoverColors() || !imageReceiver.hasBitmapImage()) {
            return;
        }
        CoverColorExtractor.extract(messageObject, imageReceiver, new Utilities.Callback() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda59
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$onCoverBitmapLoaded$61(messageObject, (Integer) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCoverBitmapLoaded$61(MessageObject messageObject, Integer num) {
        if (this.lastMessageObject == messageObject) {
            updateCoverColors(true);
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.playerColorsChanged, new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCoverColors(boolean z) {
        MessageObject messageObject;
        Integer cachedSeed;
        if (this.coverColorsWait.shouldWait(this.lastMessageObject)) {
            return;
        }
        PlayerColors playerColorsFromSeed = this.themeColors;
        boolean z2 = playerColorsFromSeed.dark;
        boolean z3 = z2 || (this.canvasShown && this.mode == 0);
        if (z3 != z2) {
            playerColorsFromSeed = PlayerColors.fromSeed(playerColorsFromSeed.accent, true);
        }
        if (ExteraConfig.getPlayerCoverColors() && (messageObject = this.lastMessageObject) != null && (cachedSeed = CoverColorExtractor.getCachedSeed(messageObject)) != null && cachedSeed.intValue() != 0) {
            playerColorsFromSeed = PlayerColors.fromSeed(cachedSeed.intValue(), z3);
            int[] cachedGlow = CoverColorExtractor.getCachedGlow(this.lastMessageObject);
            if (cachedGlow != null) {
                playerColorsFromSeed.setCoverGlow(cachedGlow);
            }
        }
        animateColors(playerColorsFromSeed, z);
    }

    private void animateColors(final PlayerColors playerColors, boolean z) {
        PlayerColors playerColors2 = this.targetColors;
        if (playerColors2 == null || !playerColors2.equalsTo(playerColors)) {
            if (this.targetColors == null && this.colors.equalsTo(playerColors)) {
                return;
            }
            this.targetColors = playerColors;
            PlayerSettingsSheet playerSettingsSheet = this.settingsSheet;
            if (playerSettingsSheet != null) {
                playerSettingsSheet.updateColors(playerColors.wrapSettings(this.baseResourcesProvider));
            }
            ValueAnimator valueAnimator = this.colorAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.colorAnimator = null;
            }
            if (!z || !this.playerLayout.isAttachedToWindow()) {
                this.colors.set(playerColors);
                applyColors(this.colors);
                return;
            }
            final PlayerColors playerColorsCopy = this.colors.copy();
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            this.colorAnimator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.setDuration(450L);
            this.colorAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
            this.colorAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    this.f$0.lambda$animateColors$62(playerColorsCopy, playerColors, valueAnimator2);
                }
            });
            this.colorAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.exteragram.messenger.player.MusicPlayerSheet.13
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (MusicPlayerSheet.this.colorAnimator == animator) {
                        MusicPlayerSheet.this.colorAnimator = null;
                        MusicPlayerSheet.this.colors.set(playerColors);
                        MusicPlayerSheet musicPlayerSheet = MusicPlayerSheet.this;
                        musicPlayerSheet.applyColors(musicPlayerSheet.colors);
                    }
                }
            });
            this.colorAnimator.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateColors$62(PlayerColors playerColors, PlayerColors playerColors2, ValueAnimator valueAnimator) {
        this.colors.blend(playerColors, playerColors2, ((Float) valueAnimator.getAnimatedValue()).floatValue());
        applyColors(this.colors);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyColors(PlayerColors playerColors) {
        setBackgroundColor(playerColors.background);
        updateNavigationBar(playerColors);
        ImageView imageView = this.collapseButton;
        int i = playerColors.icon;
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        imageView.setColorFilter(new PorterDuffColorFilter(i, mode));
        this.moreButton.setColorFilter(new PorterDuffColorFilter(playerColors.icon, mode));
        int i2 = 0;
        this.collapseBackground.setColors(playerColors.icon, 0);
        this.moreBackground.setColors(playerColors.icon, 0);
        this.headerTitle.setTextColor(playerColors.text);
        this.headerSubtitle.setTextColor(playerColors.textSecondary);
        while (i2 < 2) {
            AudioPlayerAlert.ClippingTextViewSwitcher clippingTextViewSwitcher = this.titleView;
            TextView textView = i2 == 0 ? clippingTextViewSwitcher.getTextView() : clippingTextViewSwitcher.getNextTextView();
            AudioPlayerAlert.ClippingTextViewSwitcher clippingTextViewSwitcher2 = this.artistView;
            TextView textView2 = i2 == 0 ? clippingTextViewSwitcher2.getTextView() : clippingTextViewSwitcher2.getNextTextView();
            if (textView != null) {
                textView.setTextColor(playerColors.text);
            }
            if (textView2 != null) {
                textView2.setTextColor(playerColors.textSecondary);
                textView2.setBackground(Theme.createRadSelectorDrawable(ColorUtils.setAlphaComponent(playerColors.text, 20), 8, 8));
            }
            i2++;
        }
        this.coverView.setColors(playerColors.tonal, playerColors.onTonal);
        this.seekBar.setColors(playerColors.wave, playerColors.track, playerColors.buffer, ColorUtils.setAlphaComponent(playerColors.text, 240), playerColors.background);
        this.timeView.setTextColor(playerColors.textSecondary);
        this.durationView.setTextColor(playerColors.textSecondary);
        this.controlsView.setColors(playerColors.tonal, playerColors.onTonal, playerColors.accent, playerColors.onAccent);
        this.lyricsView.setColors(playerColors.text, playerColors.textSecondary, playerColors.accent, playerColors.onAccent);
        this.queueView.setColors(playerColors);
        this.rhythmBackground.setColors(playerColors.glow, playerColors.background, playerColors.dark);
        this.spotifyCanvas.setScrimColor(playerColors.background);
        HintView2 hintView2 = this.speedHintView;
        if (hintView2 != null) {
            hintView2.setTextColor(playerColors.background);
            this.speedHintView.setBgColor(playerColors.text);
        }
        updateToggleColors();
        updateStatusBar();
        this.playerLayout.invalidate();
    }

    private void updateNavigationBar(PlayerColors playerColors) {
        setOverlayNavBarColor(ColorUtils.setAlphaComponent(playerColors.background, 0));
        AndroidUtilities.setLightNavigationBar(this, !playerColors.dark);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateStatusBar() {
        PlayerLayout playerLayout = this.playerLayout;
        boolean z = playerLayout.fullscreen && !this.colors.dark && playerLayout.getTranslationY() < ((float) getStatusBarHeight());
        if (this.lightStatusBar != z) {
            this.lightStatusBar = z;
            AndroidUtilities.setLightStatusBar(getWindow(), z);
            AndroidUtilities.setLightStatusBar(this.container, z);
        }
    }

    private ExpressiveStateDrawable createToggle() {
        return new ExpressiveStateDrawable(8.0f).setSelectedRadius(20.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onToggleProgress() {
        applyToggle(this.shuffleButton, this.shuffleBackground, this.colors, true);
        applyToggle(this.repeatButton, this.repeatBackground, this.colors, true);
        applyToggle(this.profileButton, this.profileBackground, this.colors, false);
        applySpeedColors(this.colors);
    }

    private void updateToggleColors() {
        PlayerColors playerColors = this.colors;
        applyToggle(this.shuffleButton, this.shuffleBackground, playerColors, true);
        applyToggle(this.repeatButton, this.repeatBackground, playerColors, true);
        applyModeSegment(this.lyricsButton, this.lyricsBackground, playerColors);
        applyModeSegment(this.queueButton, this.queueBackground, playerColors);
        applyToggle(this.profileButton, this.profileBackground, playerColors, false);
        applySpeedColors(playerColors);
    }

    private void applySpeedColors(PlayerColors playerColors) {
        int iBlendARGB = ColorUtils.blendARGB(playerColors.icon, playerColors.accent, this.speedBackground.getSelectProgress());
        this.speedBackground.setColors(iBlendARGB, 0).setOutline(this.speedMenuShown ? 0 : ColorUtils.blendARGB(ColorUtils.setAlphaComponent(playerColors.textSecondary, 128), playerColors.accent, this.speedBackground.getSelectProgress()), 1.5f);
        this.speedIcon.setColor(iBlendARGB);
        this.speedButton.invalidate();
    }

    private static void applyToggle(ImageView imageView, ExpressiveStateDrawable expressiveStateDrawable, PlayerColors playerColors, boolean z) {
        int iBlendARGB = ColorUtils.blendARGB(playerColors.icon, playerColors.accent, expressiveStateDrawable.getSelectProgress());
        setIconTint(imageView, expressiveStateDrawable, iBlendARGB);
        expressiveStateDrawable.setColors(iBlendARGB, 0).setDot(z ? playerColors.accent : 0, 15.0f);
    }

    private static void setIconTint(ImageView imageView, ExpressiveStateDrawable expressiveStateDrawable, int i) {
        if (expressiveStateDrawable.getContentColor() != i || imageView.getColorFilter() == null) {
            imageView.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.SRC_IN));
        }
    }

    public void updateOrderButtons(boolean z) {
        int i = SharedConfig.repeatMode;
        this.shuffleBackground.setSelected(SharedConfig.shuffleMusic, z);
        this.shuffleButton.setContentDescription(LocaleController.getString(C2807R.string.ShuffleList));
        this.repeatBackground.setSelected(i != 0, z);
        this.repeatButton.setImageResource(i == 2 ? C2807R.drawable.player_new_repeatone : C2807R.drawable.player_new_repeatall);
        this.repeatButton.setContentDescription(LocaleController.getString(i == 0 ? C2807R.string.AccDescrRepeatOff : i == 1 ? C2807R.string.AccDescrRepeatList : C2807R.string.AccDescrRepeatOne));
        this.queueView.setReversed(SharedConfig.playOrderReversed, z);
        updateToggleColors();
        updateHeader();
    }

    private void updateSpeedButtons(boolean z) {
        float playbackSpeed = MediaController.getInstance().getPlaybackSpeed(true);
        this.speedIcon.setValue(playbackSpeed, z);
        this.speedBackground.setSelected(Math.abs(playbackSpeed - 1.0f) > 0.05f, z);
        this.speedButton.setContentDescription(LocaleController.formatString(C2807R.string.PlayerSpeedDescription, SpeedIconDrawable.formatNumber(playbackSpeed)));
        updateToggleColors();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateProfileState(boolean z) {
        MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
        boolean z2 = playingMessageObject != null && this.actions.isInProfile(playingMessageObject);
        this.profileBackground.setSelected(z2, z);
        this.profileButton.setImageResource(z2 ? C2807R.drawable.media_like_active : C2807R.drawable.media_like);
        this.profileButton.setContentDescription(LocaleController.getString(z2 ? C2807R.string.AudioRemoveFromProfile : C2807R.string.AudioAddToProfile));
        this.profileButton.setEnabled(!this.actions.isProfileIdsLoading());
        this.profileButton.setVisibility((playingMessageObject == null || this.noforwards || playingMessageObject.getDocument() == null || PlayerActions.isServiceTrack(playingMessageObject)) ? false : true ? 0 : 8);
        updateToggleColors();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00cf  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void updateHeader() {
        CharSequence chatTitle;
        String string;
        MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
        MessagesController.SavedMusicList savedMusicList = this.savedMusicList;
        CharSequence string2 = LocaleController.getString(C2807R.string.AttachMusic);
        if (savedMusicList != null) {
            string2 = savedMusicList.dialogId == UserConfig.getInstance(this.currentAccount).getClientUserId() ? LocaleController.getString(C2807R.string.ProfilePlaylistTitleMine) : LocaleController.formatString(C2807R.string.ProfilePlaylistTitle, DialogObject.getShortName(savedMusicList.dialogId));
        } else if (playingMessageObject != null && !MediaController.getInstance().currentPlaylistIsGlobalSearch() && (chatTitle = getChatTitle(playingMessageObject)) != null) {
            string2 = chatTitle;
        }
        this.headerTitle.setText(string2);
        if (playingMessageObject != null) {
            ArrayList<MessageObject> playlist = MediaController.getInstance().getPlaylist();
            int iIndexOf = playlist.indexOf(playingMessageObject);
            long dialogId = (savedMusicList != null || MediaController.getInstance().currentPlaylistIsGlobalSearch()) ? 0L : playingMessageObject.getDialogId();
            if (dialogId != this.musicCountDialogId) {
                this.musicCountDialogId = dialogId;
                this.musicCount = 0;
                if (dialogId != 0) {
                    MediaDataController.getInstance(this.currentAccount).getMediaCount(dialogId, 0L, 4, 0, false);
                }
            }
            int iMax = Math.max(playlist.size(), this.musicCount);
            if (iIndexOf < 0 || iMax <= 1) {
                string = null;
            } else {
                string = LocaleController.formatString(C2807R.string.PlayerTrackOf, Integer.valueOf((savedMusicList == null) == SharedConfig.playOrderReversed ? (iMax - playlist.size()) + iIndexOf + 1 : playlist.size() - iIndexOf), Integer.valueOf(iMax));
            }
        }
        this.headerSubtitle.setText(string);
        int i = TextUtils.isEmpty(string) ? 8 : 0;
        if (this.headerSubtitle.getVisibility() != i) {
            this.headerSubtitle.setVisibility(i);
            this.playerLayout.requestLayout();
        }
    }

    private CharSequence getChatTitle(MessageObject messageObject) {
        long dialogId = messageObject.getDialogId();
        if (dialogId == UserConfig.getInstance(this.currentAccount).getClientUserId()) {
            return LocaleController.getString(messageObject.getSavedDialogId() == UserObject.ANONYMOUS ? C2807R.string.AnonymousForward : C2807R.string.SavedMessages);
        }
        if (DialogObject.isEncryptedDialog(dialogId)) {
            TLRPC.EncryptedChat encryptedChat = MessagesController.getInstance(this.currentAccount).getEncryptedChat(Integer.valueOf(DialogObject.getEncryptedChatId(dialogId)));
            if (encryptedChat == null) {
                return null;
            }
            dialogId = encryptedChat.user_id;
        }
        String name = DialogObject.getName(this.currentAccount, dialogId);
        if (TextUtils.isEmpty(name)) {
            return null;
        }
        return name;
    }

    private void bindMessage(boolean z, boolean z2) {
        MediaController mediaController = MediaController.getInstance();
        MessageObject playingMessageObject = mediaController.getPlayingMessageObject();
        if ((playingMessageObject == null && z) || (playingMessageObject != null && !playingMessageObject.isMusic())) {
            lambda$new$0();
            return;
        }
        if (playingMessageObject == null) {
            this.lastMessageObject = null;
            return;
        }
        MessageObject messageObject = this.lastMessageObject;
        boolean z3 = false;
        boolean z4 = playingMessageObject == messageObject;
        boolean z5 = (!z2 || z4 || messageObject == null) ? false : true;
        int i = this.pendingDirection;
        if (i == 0) {
            i = 1;
        }
        this.pendingDirection = 0;
        this.lastMessageObject = playingMessageObject;
        this.moreButton.setVisibility((playingMessageObject.eventId != 0 || playingMessageObject.getId() <= -2000000000) ? 4 : 0);
        this.noforwards = PlayerActions.isNoForwards(this.currentAccount, playingMessageObject);
        checkIfMusicDownloaded(playingMessageObject);
        updateProgress(playingMessageObject);
        boolean zIsMessagePaused = mediaController.isMessagePaused();
        this.controlsView.setPlaying(!zIsMessagePaused, z2);
        this.coverView.setPlaying(!zIsMessagePaused, z2);
        this.seekBar.setPlaying(!zIsMessagePaused, mediaController.getPlaybackSpeed(true), z2);
        updateRhythm();
        if (!z4) {
            this.coverView.setCover(playingMessageObject, z5, i);
            this.canvasSpring.cancel();
            this.canvasProgress = this.coverView.getCurrentCanvas();
            if (!z5) {
                i = 0;
            }
            loadSpotifyCanvas(i);
            loadMotionCover(playingMessageObject);
            loadArtwork(playingMessageObject);
            this.titleView.setText(playingMessageObject.getMusicTitle(), z5);
            this.artistView.setText(playingMessageObject.getMusicAuthor(), z5);
            PlayerCovers.preloadNeighbors(this.currentAccount);
            this.lastDuration = (int) playingMessageObject.getDuration();
            this.lastTime = -1;
            updateProgress(playingMessageObject);
            updateCoverColors(z2);
            if (this.mode == 1) {
                loadLyrics(false);
            }
            this.queueView.updateCells();
        }
        if (z2 && z4) {
            z3 = true;
        }
        updateProfileState(z3);
        updateHeader();
        this.moreIcon.setCasting(CastSync.isActive(), z2);
    }

    private void checkIfMusicDownloaded(MessageObject messageObject) {
        File localFile = PlayerActions.getLocalFile(messageObject);
        boolean z = SharedConfig.streamMedia && messageObject.getDialogId() != 0 && !DialogObject.isEncryptedDialog(messageObject.getDialogId()) && messageObject.isMusic();
        String fileName = messageObject.getFileName();
        this.currentFile = FileLoader.getAttachFileName(messageObject.getDocument());
        this.currentAudioFinishedLoading = localFile.exists() || PlayerCovers.getPlayingAudioInfo(messageObject) != null;
        if (!localFile.exists() && !z) {
            DownloadController.getInstance(this.currentAccount).addLoadingFileObserver(fileName, this);
            Float fileProgress = ImageLoader.getInstance().getFileProgress(fileName);
            this.seekBar.setLoading(true, fileProgress != null ? fileProgress.floatValue() : 0.0f);
            this.controlsView.setLoading(true);
            this.controlsView.setPlayEnabled(false);
            return;
        }
        DownloadController.getInstance(this.currentAccount).removeLoadingFileObserver(this);
        this.seekBar.setLoading(false, 0.0f);
        this.controlsView.setLoading(false);
        this.controlsView.setPlayEnabled(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateProgress(MessageObject messageObject) {
        int duration;
        int i;
        MediaController mediaController = MediaController.getInstance();
        if (this.seekBar.isDragging()) {
            duration = messageObject.audioProgressSec;
        } else {
            boolean z = this.rewindingProgress >= 0.0f && ((i = this.rewindingState) == -1 || (i == 1 && mediaController.isMessagePaused()));
            this.seekBar.setProgress(z ? this.rewindingProgress : messageObject.audioProgress);
            updateBuffer(messageObject);
            if (z) {
                duration = (int) (messageObject.getDuration() * ((double) this.rewindingProgress));
                messageObject.audioProgressSec = duration;
            } else {
                duration = messageObject.audioProgressSec;
            }
        }
        if (this.lastTime != duration) {
            this.lastTime = duration;
            this.timeView.setText(AndroidUtilities.formatShortDuration(duration));
            int i2 = this.lastDuration;
            if (i2 <= 0) {
                this.durationView.setText("-:--");
            } else {
                boolean z2 = this.showRemaining;
                TextView textView = this.durationView;
                if (z2) {
                    textView.setText(LocaleController.formatString(C2807R.string.PlayerTimeRemaining, AndroidUtilities.formatShortDuration(Math.max(0, i2 - duration))));
                } else {
                    textView.setText(AndroidUtilities.formatShortDuration(i2));
                }
            }
        }
        if (this.mode == 1 || this.lyricsAlpha > 0.0f) {
            this.lyricsView.setPosition(getPositionMs(messageObject), !mediaController.isMessagePaused());
        }
    }

    private void updateBuffer(MessageObject messageObject) {
        if (!this.currentAudioFinishedLoading) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (Math.abs(jElapsedRealtime - this.lastBufferedPositionCheck) >= 500) {
                bufferedProgressFromPosition = MediaController.getInstance().isStreamingCurrentAudio() ? FileLoader.getInstance(this.currentAccount).getBufferedProgressFromPosition(messageObject.audioProgress, this.currentFile) : 1.0f;
                this.lastBufferedPositionCheck = jElapsedRealtime;
            } else {
                bufferedProgressFromPosition = -1.0f;
            }
        }
        if (bufferedProgressFromPosition != -1.0f) {
            this.bufferSpring.getSpring().setFinalPosition(bufferedProgressFromPosition * 1000.0f);
            this.bufferSpring.start();
        }
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet
    public int getLeftInset() {
        if (AndroidUtilities.isTablet()) {
            return super.getLeftInset();
        }
        return 0;
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet
    public int getRightInset() {
        if (AndroidUtilities.isTablet()) {
            return super.getRightInset();
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getSafeLeftInset() {
        return super.getLeftInset();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getSafeRightInset() {
        return super.getRightInset();
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet
    public int getBottomSheetWidth(boolean z, int i, int i2) {
        return AndroidUtilities.isTablet() ? super.getBottomSheetWidth(z, i, i2) : i;
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet, android.app.Dialog, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() == 0 && this.containerView != null) {
            this.swipeDismissAllowed = isSwipeDismissArea(motionEvent.getX() - this.containerView.getX(), motionEvent.getY() - this.containerView.getY());
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    private boolean isSwipeDismissArea(float f, float f2) {
        PlayerLayout playerLayout = this.playerLayout;
        if (f2 < 0.0f) {
            return false;
        }
        if (playerLayout.keyboardLayout) {
            return f2 < ((float) playerLayout.headerBottom);
        }
        if (this.mode != 0 && f2 >= playerLayout.stageTop && f2 < playerLayout.stageBottom) {
            if (f >= playerLayout.stageLeft && f < r4 + playerLayout.stageWidth) {
                return false;
            }
        }
        if (Math.abs(f2 - playerLayout.lineCenter) <= AndroidUtilities.dp(24.0f)) {
            if (f >= playerLayout.paneLeft && f < r4 + playerLayout.paneWidth) {
                return false;
            }
        }
        return true;
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet
    public boolean canDismissWithSwipe() {
        return this.swipeDismissAllowed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyTransitions() {
        PlayerLayout playerLayout = this.playerLayout;
        if (playerLayout.contentWidth <= 0) {
            return;
        }
        float f = this.modeProgress;
        float fMax = Math.max(f, this.canvasTitleProgress);
        float fDp = playerLayout.paneLeft + AndroidUtilities.dp(20.0f);
        float f2 = playerLayout.compactCoverSize;
        float f3 = playerLayout.keyboardLayout ? f : 0.0f;
        this.coverView.setCoverRect(AndroidUtilities.lerp(playerLayout.coverLeft, fDp, f), AndroidUtilities.lerp(playerLayout.coverTop, playerLayout.titleTop, f), AndroidUtilities.lerp(playerLayout.coverSize, f2, f), AndroidUtilities.lerp(AndroidUtilities.dp(28.0f), AndroidUtilities.dp(14.0f), f), f);
        float f4 = f3;
        this.coverView.setCanvasLayout(fDp, playerLayout.titleTop, f2, AndroidUtilities.dp(14.0f), Math.max(f, Utilities.clamp01(this.canvasTitleProgress)), playerLayout.getMeasuredWidth() - (this.backgroundPaddingLeft * 2));
        this.coverView.setCurrentCanvas(this.canvasProgress);
        this.coverView.setHideProgress(f4);
        float f5 = 1.0f - f4;
        float fDp2 = (f2 + AndroidUtilities.dp(16.0f)) * fMax;
        int iRound = Math.round(fDp2);
        setWidth(this.titleView, playerLayout.textWidth - iRound);
        this.titleView.setTranslationX(fDp2);
        this.titleView.setTranslationY(0.0f);
        this.titleView.setAlpha(f5);
        this.titleView.setVisibility(f5 < 0.01f ? 4 : 0);
        setWidth(this.artistView, (playerLayout.textWidth - iRound) + (AndroidUtilities.dp(6.0f) * 2));
        this.artistView.setTranslationX(fDp2);
        this.artistView.setTranslationY(0.0f);
        this.artistView.setAlpha(f5);
        this.artistView.setVisibility(f5 < 0.01f ? 4 : 0);
        this.profileButton.setTranslationY(0.0f);
        this.profileButton.setAlpha(f5);
        float fDp3 = AndroidUtilities.dp(16.0f);
        setPanel(this.lyricsView, this.lyricsAlpha * smooth(f), (1.0f - this.lyricsAlpha) * fDp3);
        setPanel(this.queueView, this.queueAlpha * smooth(f), (1.0f - this.queueAlpha) * fDp3);
        setPanel(this.shuffleButton, 1.0f, 0.0f);
        setPanel(this.repeatButton, 1.0f, 0.0f);
        float f6 = playerLayout.keyboardLayout ? 0.0f : 1.0f;
        setPanel(this.speedButton, f6, 0.0f);
        setPanel(this.lyricsButton, f6, 0.0f);
        setPanel(this.queueButton, f6, 0.0f);
        float f7 = playerLayout.keyboardLayout ? 0.0f : 1.0f;
        setPanel(this.seekBar, f7, 0.0f);
        setPanel(this.timeView, f7, 0.0f);
        setPanel(this.durationView, f7, 0.0f);
        setPanel(this.controlsView, f7, 0.0f);
        if (playerLayout.keyboardLayout) {
            setPanel(this.shuffleButton, 0.0f, 0.0f);
            setPanel(this.repeatButton, 0.0f, 0.0f);
        }
        playerLayout.invalidate();
    }

    private static void setWidth(View view, int i) {
        int iMax = Math.max(0, i);
        if (view.getWidth() == iMax && view.getMeasuredWidth() == iMax) {
            return;
        }
        view.measure(View.MeasureSpec.makeMeasureSpec(iMax, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(view.getMeasuredHeight(), TLObject.FLAG_30));
        view.layout(view.getLeft(), view.getTop(), view.getLeft() + iMax, view.getTop() + view.getMeasuredHeight());
    }

    private static float smooth(float f) {
        float fClamp01 = Utilities.clamp01(f);
        return fClamp01 * fClamp01 * (3.0f - (fClamp01 * 2.0f));
    }

    private static void setPanel(View view, float f, float f2) {
        float fClamp01 = Utilities.clamp01(f);
        view.setAlpha(fClamp01);
        view.setTranslationY(f2);
        int i = fClamp01 < 0.01f ? 4 : 0;
        if (view.getVisibility() == i || view.getVisibility() == 8) {
            return;
        }
        view.setVisibility(i);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        MessageObject messageObject;
        int i3 = NotificationCenter.messagePlayingDidStart;
        if (i == i3 || i == NotificationCenter.messagePlayingPlayStateChanged || i == NotificationCenter.messagePlayingDidReset) {
            bindMessage(i == NotificationCenter.messagePlayingDidReset && objArr.length > 1 && ((Boolean) objArr[1]).booleanValue(), true);
            if (i != i3 || (messageObject = (MessageObject) objArr[0]) == null || messageObject.eventId == 0) {
                this.queueView.updateCells();
                if (i != NotificationCenter.messagePlayingPlayStateChanged || MediaController.getInstance().getPlayingMessageObject() == null) {
                    return;
                }
                if (MediaController.getInstance().isMessagePaused()) {
                    startForwardRewindingSeek();
                    return;
                }
                if (this.rewindingState != 1 || this.rewindingProgress == -1.0f) {
                    return;
                }
                AndroidUtilities.cancelRunOnUIThread(this.rewindSeek);
                this.lastUpdateRewindingPlayerTime = 0L;
                this.rewindSeek.run();
                this.rewindingProgress = -1.0f;
                return;
            }
            return;
        }
        if (i == NotificationCenter.messagePlayingProgressDidChanged || i == NotificationCenter.messagePlayingDidSeek) {
            MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
            if (playingMessageObject == null || !playingMessageObject.isMusic()) {
                return;
            }
            updateProgress(playingMessageObject);
            return;
        }
        if (i == NotificationCenter.messagePlayingSpeedChanged) {
            updateSpeedButtons(true);
            if (MediaController.getInstance().getPlayingMessageObject() != null) {
                this.seekBar.setPlaying(!MediaController.getInstance().isMessagePaused(), MediaController.getInstance().getPlaybackSpeed(true), true);
                return;
            }
            return;
        }
        if (i == NotificationCenter.mediaCountDidLoad) {
            long jLongValue = ((Long) objArr[0]).longValue();
            long j = this.musicCountDialogId;
            if (jLongValue == j && j != 0 && ((Long) objArr[1]).longValue() == 0 && ((Integer) objArr[4]).intValue() == 4) {
                this.musicCount = ((Integer) objArr[2]).intValue();
                updateHeader();
                return;
            }
            return;
        }
        if (i == NotificationCenter.musicDidLoad || i == NotificationCenter.moreMusicDidLoad) {
            this.savedMusicList = MediaController.getInstance().currentSavedMusicList;
            this.queueView.update();
            updateHeader();
            return;
        }
        if (i == NotificationCenter.fileLoaded) {
            String str = (String) objArr[0];
            if (str == null || !str.equals(this.currentFile)) {
                if (str != null) {
                    PlayerCovers.onFileLoaded(str);
                    return;
                }
                return;
            }
            this.currentAudioFinishedLoading = true;
            MessageObject playingMessageObject2 = MediaController.getInstance().getPlayingMessageObject();
            if (playingMessageObject2 != null) {
                checkIfMusicDownloaded(playingMessageObject2);
                this.coverView.refreshCover();
                if (this.mode != 1 || this.lyricsView.getState() == 3) {
                    return;
                }
                this.lyricsKey = null;
                loadLyrics(false);
                return;
            }
            return;
        }
        if (i == NotificationCenter.fileLoadProgressChanged) {
            String str2 = (String) objArr[0];
            MessageObject playingMessageObject3 = MediaController.getInstance().getPlayingMessageObject();
            if (str2 == null || !str2.equals(this.currentFile) || playingMessageObject3 == null) {
                return;
            }
            updateBuffer(playingMessageObject3);
            return;
        }
        if (i == NotificationCenter.musicIdsLoaded) {
            updateProfileState(true);
        }
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public void onProgressDownload(String str, long j, long j2) {
        this.seekBar.setLoading(true, j2 > 0 ? Math.min(1.0f, j / j2) : 0.0f);
        this.controlsView.setLoading(true);
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public int getObserverTag() {
        return this.TAG;
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet, android.app.Dialog
    public void show() {
        super.show();
        instance = this;
        updateRhythm();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateRhythm() {
        boolean z = false;
        boolean z2 = (!ExteraConfig.getPlayerRhythmBackground() || AndroidUtilities.isTablet() || isDismissed()) ? false : true;
        boolean z3 = z2 && isShowing() && this.playerLayout.getWindowVisibility() == 0 && LiteMode.isEnabled(32);
        boolean z4 = z3 && !MediaController.getInstance().isMessagePaused();
        RhythmTap.setEnabled(z3);
        this.rhythmBackground.setActive(z2);
        this.rhythmBackground.setAnimating(z4);
        RhythmBackground rhythmBackground = this.rhythmBackground;
        if (ExteraConfig.getPlayerParticles() && LiteMode.isEnabled(131072)) {
            z = true;
        }
        rhythmBackground.setParticlesEnabled(z);
        this.playerLayout.invalidate();
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface, org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    /* JADX INFO: renamed from: dismiss */
    public void lambda$new$0() {
        super.lambda$new$0();
        NotificationCenter.ObserversGroup observersGroup = this.observers;
        if (observersGroup != null) {
            observersGroup.removeAllObservers();
            this.observers = null;
        }
        DownloadController.getInstance(this.currentAccount).removeLoadingFileObserver(this);
        int i = this.rewindingState;
        if (i != 0) {
            onRewindHold(i, false);
        }
        AndroidUtilities.cancelRunOnUIThread(this.rewindStepRunnable);
        AndroidUtilities.cancelRunOnUIThread(this.rewindSeek);
        this.seekPlateSpring.cancel();
        ValueAnimator valueAnimator = this.colorAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.colorAnimator = null;
        }
        this.coverColorsWait.cancel();
        RhythmTap.setEnabled(false);
        this.rhythmBackground.setAnimating(false);
        this.lyricsRequest++;
        this.motionRequest++;
        this.canvasSpring.cancel();
        this.canvasTitleSpring.cancel();
        SpotifyCanvasRepository.setWantedKeys(Collections.EMPTY_SET);
        if (instance == this) {
            instance = null;
        }
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet, android.app.Dialog
    /* JADX INFO: renamed from: onBackPressed */
    public void lambda$openCrafting$9() {
        if (this.mode == 2 && this.queueView.isSearchFocused()) {
            this.queueView.clearSearch();
        } else if (this.mode != 0) {
            selectMode(0);
        } else {
            super.lambda$openCrafting$9();
        }
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayList = new ArrayList<>();
        ThemeDescription.ThemeDescriptionDelegate themeDescriptionDelegate = new ThemeDescription.ThemeDescriptionDelegate() { // from class: com.exteragram.messenger.player.MusicPlayerSheet$$ExternalSyntheticLambda31
            @Override // org.telegram.ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                this.f$0.lambda$getThemeDescriptions$63();
            }
        };
        int[] iArr = {Theme.key_player_background, Theme.key_player_actionBarTitle, Theme.key_player_time, Theme.key_player_button, Theme.key_player_progress, Theme.key_player_progressBackground, Theme.key_featuredStickers_addButton, Theme.key_featuredStickers_buttonText, Theme.key_windowBackgroundWhite, Theme.key_dialogBackground};
        for (int i = 0; i < 10; i++) {
            arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, iArr[i]));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getThemeDescriptions$63() {
        this.themeColors = PlayerColors.fromTheme(this.baseResourcesProvider);
        this.targetColors = null;
        updateCoverColors(false);
    }

    public class PlayerLayout extends FrameLayout {
        private final Paint backgroundPaint;
        private final RectF backgroundRect;
        int compactCoverSize;
        int contentLeft;
        int contentTop;
        int contentWidth;
        float coverLeft;
        float coverSize;
        float coverTop;
        boolean fullscreen;
        int headerBottom;
        boolean keyboardLayout;
        boolean landscape;
        int lineCenter;
        int modeTop;
        private final HashSet<View> ownViews;
        int paneLeft;
        int paneWidth;
        private final RectF rhythmCoverRect;
        private final RectF rhythmRect;
        int stageBottom;
        int stageLeft;
        int stageTop;
        int stageWidth;
        int textWidth;
        int timesTop;
        int titleTop;
        int toolbarTop;
        private float topRadius;
        int transportTop;

        public PlayerLayout(Context context) {
            super(context);
            this.backgroundRect = new RectF();
            this.rhythmRect = new RectF();
            this.rhythmCoverRect = new RectF();
            this.backgroundPaint = new Paint(1);
            this.ownViews = new HashSet<>();
            setWillNotDraw(false);
            setClipChildren(false);
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onAttachedToWindow() {
            super.onAttachedToWindow();
            MusicPlayerSheet.this.spotifyCanvas.onAttachedToWindow();
            Bulletin.addDelegate(this, new Bulletin.Delegate() { // from class: com.exteragram.messenger.player.MusicPlayerSheet.PlayerLayout.1
                @Override // org.telegram.ui.Components.Bulletin.Delegate
                public int getBottomOffset(int i) {
                    int measuredHeight = PlayerLayout.this.getMeasuredHeight();
                    PlayerLayout playerLayout = PlayerLayout.this;
                    return Math.max(0, measuredHeight - (playerLayout.keyboardLayout ? playerLayout.getMeasuredHeight() : playerLayout.toolbarTop));
                }
            });
        }

        @Override // android.view.View
        public void onWindowVisibilityChanged(int i) {
            super.onWindowVisibilityChanged(i);
            MusicPlayerSheet.this.updateRhythm();
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            MusicPlayerSheet.this.spotifyCanvas.onDetachedFromWindow();
            Bulletin.removeDelegate(this);
            if (MusicPlayerSheet.this.isDismissed()) {
                MusicPlayerSheet.this.controlsView.recycle();
            }
        }

        @Override // android.view.View
        public void setTranslationY(float f) {
            super.setTranslationY(f);
            float topRadius = getTopRadius();
            if (topRadius != this.topRadius) {
                this.topRadius = topRadius;
                invalidate();
            }
            MusicPlayerSheet.this.updateStatusBar();
        }

        private float getTopRadius() {
            if (this.fullscreen) {
                return AndroidUtilities.dp(28.0f) * Utilities.clamp01(getTranslationY() / AndroidUtilities.dp(28.0f));
            }
            return 0.0f;
        }

        @Override // android.widget.FrameLayout, android.view.View
        public void onMeasure(int i, int i2) {
            int size = View.MeasureSpec.getSize(i);
            int size2 = View.MeasureSpec.getSize(i2);
            boolean zIsTablet = AndroidUtilities.isTablet();
            this.fullscreen = !zIsTablet;
            if (zIsTablet) {
                size2 = Math.max(AndroidUtilities.dp(320.0f), (size2 - MusicPlayerSheet.this.getStatusBarHeight()) - AndroidUtilities.dp(8.0f));
            }
            int i3 = size2;
            int safeLeftInset = this.fullscreen ? MusicPlayerSheet.this.getSafeLeftInset() : 0;
            int safeRightInset = this.fullscreen ? MusicPlayerSheet.this.getSafeRightInset() : 0;
            this.contentLeft = ((BottomSheet) MusicPlayerSheet.this).backgroundPaddingLeft + safeLeftInset;
            boolean z = this.fullscreen;
            MusicPlayerSheet musicPlayerSheet = MusicPlayerSheet.this;
            this.contentTop = z ? musicPlayerSheet.getStatusBarHeight() : AndroidUtilities.dp(8.0f) + ((BottomSheet) musicPlayerSheet).backgroundPaddingTop;
            this.contentWidth = ((size - (((BottomSheet) MusicPlayerSheet.this).backgroundPaddingLeft * 2)) - safeLeftInset) - safeRightInset;
            boolean zIsImeVisible = isImeVisible();
            this.keyboardLayout = zIsImeVisible && MusicPlayerSheet.this.mode == 2;
            this.landscape = this.fullscreen && this.contentWidth > i3;
            computeGeometry(i3 - (zIsImeVisible ? 0 : getNavigationBottomInset()));
            int i4 = this.contentWidth;
            int i5 = this.paneWidth;
            int iDp = AndroidUtilities.dp(40.0f);
            measureExact(MusicPlayerSheet.this.collapseButton, iDp, iDp);
            measureExact(MusicPlayerSheet.this.moreButton, iDp, iDp);
            int iDp2 = i4 - (AndroidUtilities.dp(68.0f) * 2);
            measureExact(MusicPlayerSheet.this.headerTitle, iDp2, AndroidUtilities.dp(22.0f));
            measureExact(MusicPlayerSheet.this.headerSubtitle, iDp2, AndroidUtilities.dp(18.0f));
            measureExact(MusicPlayerSheet.this.coverView, size, i3);
            int iDp3 = (i5 - (AndroidUtilities.dp(20.0f) * 2)) - (MusicPlayerSheet.this.profileButton.getVisibility() != 8 ? AndroidUtilities.dp(48.0f) : 0);
            this.textWidth = iDp3;
            measureExact(MusicPlayerSheet.this.titleView, iDp3, AndroidUtilities.dp(28.0f));
            measureExact(MusicPlayerSheet.this.artistView, iDp3 + (AndroidUtilities.dp(6.0f) * 2), AndroidUtilities.dp(28.0f));
            measureExact(MusicPlayerSheet.this.profileButton, iDp, iDp);
            measureExact(MusicPlayerSheet.this.seekBar, i5 - (AndroidUtilities.dp(20.0f) * 2), AndroidUtilities.dp(68.0f));
            measureExact(MusicPlayerSheet.this.timeView, AndroidUtilities.dp(120.0f), AndroidUtilities.dp(18.0f));
            measureExact(MusicPlayerSheet.this.durationView, AndroidUtilities.dp(120.0f), AndroidUtilities.dp(18.0f));
            measureExact(MusicPlayerSheet.this.shuffleButton, iDp, iDp);
            measureExact(MusicPlayerSheet.this.repeatButton, iDp, iDp);
            measureExact(MusicPlayerSheet.this.controlsView, i5 - (AndroidUtilities.dp(68.0f) * 2), AndroidUtilities.dp(PlayerControlsView.getHeightDp()));
            measureExact(MusicPlayerSheet.this.speedButton, AndroidUtilities.dp(64.0f), AndroidUtilities.dp(48.0f));
            measureExact(MusicPlayerSheet.this.lyricsButton, AndroidUtilities.dp(64.0f), AndroidUtilities.dp(48.0f));
            measureExact(MusicPlayerSheet.this.queueButton, AndroidUtilities.dp(64.0f), AndroidUtilities.dp(48.0f));
            int iMax = Math.max(AndroidUtilities.dp(64.0f), this.stageBottom - this.stageTop);
            measureExact(MusicPlayerSheet.this.lyricsView, this.stageWidth, iMax);
            measureExact(MusicPlayerSheet.this.queueView, this.stageWidth, iMax);
            int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30);
            int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i3, TLObject.FLAG_30);
            int childCount = getChildCount();
            for (int i6 = 0; i6 < childCount; i6++) {
                View childAt = getChildAt(i6);
                if (childAt == MusicPlayerSheet.this.speedHintView) {
                    measureExact(childAt, this.paneWidth, this.toolbarTop + AndroidUtilities.dp(6.0f));
                } else if (childAt.getVisibility() != 8 && !this.ownViews.contains(childAt)) {
                    measureChildWithMargins(childAt, iMakeMeasureSpec, 0, iMakeMeasureSpec2, 0);
                }
            }
            setMeasuredDimension(size, i3);
        }

        private int getNavigationBottomInset() {
            WindowInsetsCompat rootWindowInsets = ViewCompat.getRootWindowInsets(this);
            if (rootWindowInsets == null) {
                return Math.max(0, MusicPlayerSheet.this.getBottomInset());
            }
            return rootWindowInsets.getInsets(WindowInsetsCompat.Type.navigationBars()).bottom;
        }

        private boolean isImeVisible() {
            WindowInsetsCompat rootWindowInsets = ViewCompat.getRootWindowInsets(this);
            if (rootWindowInsets == null) {
                return ((BottomSheet) MusicPlayerSheet.this).keyboardVisible;
            }
            return rootWindowInsets.isVisible(WindowInsetsCompat.Type.ime());
        }

        public void addOwnView(View view) {
            this.ownViews.add(view);
            addView(view);
        }

        private void measureExact(View view, int i, int i2) {
            view.measure(View.MeasureSpec.makeMeasureSpec(Math.max(0, i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(Math.max(0, i2), TLObject.FLAG_30));
        }

        private void computeGeometry(int i) {
            if (this.landscape) {
                computeLandscapeGeometry(i);
                return;
            }
            int i2 = this.contentLeft;
            this.stageLeft = i2;
            this.paneLeft = i2;
            int i3 = this.contentWidth;
            this.stageWidth = i3;
            this.paneWidth = i3;
            int iDp = AndroidUtilities.dp(PlayerControlsView.getHeightDp());
            int iDp2 = this.contentTop + AndroidUtilities.dp(56.0f);
            this.headerBottom = iDp2;
            this.stageTop = iDp2 + AndroidUtilities.dp(8.0f);
            int iDp3 = i3 - (AndroidUtilities.dp(20.0f) * 2);
            int iDp4 = this.headerBottom + AndroidUtilities.dp(16.0f);
            int iDp5 = AndroidUtilities.dp(159.0f) + iDp;
            int iRound = Math.round((i - AndroidUtilities.dp(64.0f)) - Math.min(Math.max(0, ((r7 - iDp4) - iDp5) - iDp3) * 0.25f, AndroidUtilities.dp(12.0f)));
            this.toolbarTop = iRound;
            float fMax = Math.max(0, Math.min(iDp3, (iRound - iDp5) - iDp4));
            this.coverSize = fMax;
            this.coverLeft = this.contentLeft + ((i3 - fMax) / 2.0f);
            int iMax = Math.max(0, (this.toolbarTop - Math.round(iDp4 + fMax)) - iDp5);
            int iMin = Math.min(iMax, AndroidUtilities.dp(12.0f));
            int iDp6 = ((this.toolbarTop - AndroidUtilities.dp(8.0f)) - Math.min(iMax - iMin, AndroidUtilities.dp(32.0f))) - iDp;
            this.transportTop = iDp6;
            int iDp7 = ((iDp6 - AndroidUtilities.dp(12.0f)) - iMin) - AndroidUtilities.dp(18.0f);
            this.timesTop = iDp7;
            int iDp8 = iDp7 - AndroidUtilities.dp(14.0f);
            this.lineCenter = iDp8;
            this.titleTop = iDp8 - AndroidUtilities.dp(83.0f);
            this.coverTop = this.headerBottom + (((r4 - r0) - this.coverSize) / 2.0f);
            this.compactCoverSize = AndroidUtilities.dp(50.0f);
            if (!this.keyboardLayout) {
                i = this.titleTop;
            }
            this.stageBottom = i - AndroidUtilities.dp(16.0f);
        }

        private void computeLandscapeGeometry(int i) {
            int iRound = Math.round(this.contentWidth * 0.5f);
            int i2 = this.contentLeft;
            this.paneLeft = i2 + iRound;
            int i3 = this.contentWidth;
            this.paneWidth = i3 - iRound;
            this.stageLeft = i2;
            if (!this.keyboardLayout) {
                i3 = iRound;
            }
            this.stageWidth = i3;
            int iDp = AndroidUtilities.dp(PlayerControlsView.getHeightDp());
            int iDp2 = this.contentTop + AndroidUtilities.dp(56.0f);
            this.headerBottom = iDp2;
            this.stageTop = iDp2 + AndroidUtilities.dp(8.0f);
            int iDp3 = i - AndroidUtilities.dp(8.0f);
            int iDp4 = iDp3 - AndroidUtilities.dp(56.0f);
            this.toolbarTop = iDp4;
            int iDp5 = (iDp4 - AndroidUtilities.dp(8.0f)) - iDp;
            this.transportTop = iDp5;
            int iDp6 = (iDp5 - AndroidUtilities.dp(12.0f)) - AndroidUtilities.dp(18.0f);
            this.timesTop = iDp6;
            int iDp7 = iDp6 - AndroidUtilities.dp(14.0f);
            this.lineCenter = iDp7;
            int iDp8 = iDp7 - AndroidUtilities.dp(83.0f);
            this.titleTop = iDp8;
            int iMax = Math.max(0, (iDp8 - this.headerBottom) / 2);
            this.titleTop -= iMax;
            this.lineCenter -= iMax;
            this.timesTop -= iMax;
            this.transportTop -= iMax;
            this.toolbarTop -= iMax;
            int i4 = iDp3 - this.headerBottom;
            float fMax = Math.max(0, Math.min(iRound - (AndroidUtilities.dp(20.0f) * 2), i4 - AndroidUtilities.dp(16.0f)));
            this.coverSize = fMax;
            this.coverLeft = this.contentLeft + ((iRound - fMax) / 2.0f);
            this.coverTop = this.headerBottom + ((i4 - fMax) / 2.0f);
            this.compactCoverSize = AndroidUtilities.dp(50.0f);
            this.stageBottom = i - AndroidUtilities.dp(16.0f);
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            int iDp = this.contentLeft + AndroidUtilities.dp(20.0f);
            int iDp2 = (this.contentLeft + this.contentWidth) - AndroidUtilities.dp(20.0f);
            int iDp3 = this.paneLeft + AndroidUtilities.dp(20.0f);
            int iDp4 = (this.paneLeft + this.paneWidth) - AndroidUtilities.dp(20.0f);
            int iDp5 = AndroidUtilities.dp(40.0f);
            int iDp6 = this.contentTop + ((AndroidUtilities.dp(56.0f) - iDp5) / 2);
            place(MusicPlayerSheet.this.collapseButton, iDp, iDp6);
            place(MusicPlayerSheet.this.moreButton, iDp2 - iDp5, iDp6);
            int iDp7 = iDp + iDp5 + AndroidUtilities.dp(8.0f);
            int visibility = MusicPlayerSheet.this.headerSubtitle.getVisibility();
            MusicPlayerSheet musicPlayerSheet = MusicPlayerSheet.this;
            if (visibility == 8) {
                place(musicPlayerSheet.headerTitle, iDp7, this.contentTop + ((AndroidUtilities.dp(56.0f) - MusicPlayerSheet.this.headerTitle.getMeasuredHeight()) / 2));
            } else {
                int iDp8 = this.contentTop + ((AndroidUtilities.dp(56.0f) - (musicPlayerSheet.headerTitle.getMeasuredHeight() + MusicPlayerSheet.this.headerSubtitle.getMeasuredHeight())) / 2);
                place(MusicPlayerSheet.this.headerTitle, iDp7, iDp8);
                place(MusicPlayerSheet.this.headerSubtitle, iDp7, iDp8 + MusicPlayerSheet.this.headerTitle.getMeasuredHeight());
            }
            place(MusicPlayerSheet.this.coverView, 0, 0);
            place(MusicPlayerSheet.this.titleView, iDp3, this.titleTop);
            place(MusicPlayerSheet.this.artistView, iDp3 - AndroidUtilities.dp(6.0f), this.titleTop + AndroidUtilities.dp(26.0f));
            int i5 = iDp4 - iDp5;
            place(MusicPlayerSheet.this.profileButton, i5, this.titleTop + ((AndroidUtilities.dp(50.0f) - iDp5) / 2));
            place(MusicPlayerSheet.this.seekBar, iDp3, (this.lineCenter + AndroidUtilities.dp(16.0f)) - AndroidUtilities.dp(68.0f));
            place(MusicPlayerSheet.this.timeView, iDp3, this.timesTop);
            place(MusicPlayerSheet.this.durationView, iDp4 - MusicPlayerSheet.this.durationView.getMeasuredWidth(), this.timesTop);
            int measuredHeight = this.transportTop + ((MusicPlayerSheet.this.controlsView.getMeasuredHeight() - iDp5) / 2);
            place(MusicPlayerSheet.this.shuffleButton, iDp3, measuredHeight);
            place(MusicPlayerSheet.this.repeatButton, i5, measuredHeight);
            place(MusicPlayerSheet.this.controlsView, iDp5 + iDp3 + AndroidUtilities.dp(8.0f), this.transportTop);
            this.modeTop = this.toolbarTop + ((AndroidUtilities.dp(56.0f) - AndroidUtilities.dp(48.0f)) / 2);
            layoutModeSegments();
            place(MusicPlayerSheet.this.speedButton, iDp3, this.toolbarTop + ((AndroidUtilities.dp(56.0f) - AndroidUtilities.dp(48.0f)) / 2));
            if (MusicPlayerSheet.this.speedHintView != null) {
                place(MusicPlayerSheet.this.speedHintView, this.paneLeft, 0);
            }
            place(MusicPlayerSheet.this.lyricsView, this.stageLeft, this.stageTop);
            place(MusicPlayerSheet.this.queueView, this.stageLeft, this.stageTop);
            MusicPlayerSheet.this.applyTransitions();
        }

        public void layoutModeSegments() {
            int iDp = (this.paneLeft + this.paneWidth) - AndroidUtilities.dp(20.0f);
            int iDp2 = AndroidUtilities.dp(48.0f);
            int iDp3 = AndroidUtilities.dp(64.0f) + Math.round(AndroidUtilities.dp(8.0f) * Math.max(0.0f, MusicPlayerSheet.this.lyricsBackground.getPressProgress()));
            int iDp4 = AndroidUtilities.dp(64.0f) + Math.round(AndroidUtilities.dp(8.0f) * Math.max(0.0f, MusicPlayerSheet.this.queueBackground.getPressProgress()));
            ImageView imageView = MusicPlayerSheet.this.queueButton;
            int i = iDp - iDp4;
            int i2 = this.modeTop;
            imageView.layout(i, i2, iDp, i2 + iDp2);
            int iDp5 = i - AndroidUtilities.dp(2.0f);
            int i3 = this.modeTop;
            MusicPlayerSheet.this.lyricsButton.layout(iDp5 - iDp3, i3, iDp5, iDp2 + i3);
        }

        private void place(View view, int i, int i2) {
            view.layout(i, i2, view.getMeasuredWidth() + i, view.getMeasuredHeight() + i2);
        }

        @Override // android.view.View
        public void onDraw(Canvas canvas) {
            Canvas canvas2;
            if (!this.fullscreen) {
                ((BottomSheet) MusicPlayerSheet.this).shadowDrawable.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight() + AndroidUtilities.dp(24.0f));
                ((BottomSheet) MusicPlayerSheet.this).shadowDrawable.draw(canvas);
                return;
            }
            float topRadius = getTopRadius();
            this.backgroundPaint.setColor(MusicPlayerSheet.this.colors.background);
            this.backgroundRect.set(((BottomSheet) MusicPlayerSheet.this).backgroundPaddingLeft, 0.0f, getMeasuredWidth() - ((BottomSheet) MusicPlayerSheet.this).backgroundPaddingLeft, getMeasuredHeight() + topRadius);
            canvas.drawRoundRect(this.backgroundRect, topRadius, topRadius, this.backgroundPaint);
            float fClamp01 = 1.0f - Utilities.clamp01(MusicPlayerSheet.this.modeProgress);
            float fClamp012 = Utilities.clamp01(MusicPlayerSheet.this.canvasProgress) * fClamp01;
            float pageOffset = MusicPlayerSheet.this.coverView.getPageOffset();
            if (!MusicPlayerSheet.this.rhythmBackground.isVisible() || (fClamp012 >= 1.0f && pageOffset == 0.0f)) {
                canvas2 = canvas;
            } else {
                float rhythmOffset = MusicPlayerSheet.this.coverView.getRhythmOffset();
                this.rhythmRect.set(this.backgroundRect);
                this.rhythmRect.offset(rhythmOffset, 0.0f);
                this.rhythmCoverRect.set(MusicPlayerSheet.this.coverView.getCoverRect());
                this.rhythmCoverRect.offset(rhythmOffset, 0.0f);
                canvas.save();
                canvas.clipRect(this.backgroundRect);
                canvas2 = canvas;
                if (MusicPlayerSheet.this.rhythmBackground.draw(canvas2, this.rhythmRect, topRadius, this.rhythmCoverRect, MusicPlayerSheet.this.coverView.getCoverRadius(), 1.0f - MusicPlayerSheet.this.coverView.getHideProgress(), MusicPlayerSheet.this.coverView.getCompactProgress())) {
                    postInvalidateOnAnimation();
                }
                canvas2.restore();
            }
            if (MusicPlayerSheet.this.spotifyCanvas.draw(canvas2, this.backgroundRect, topRadius, fClamp01, MusicPlayerSheet.this.canvasProgress, pageOffset, MusicPlayerSheet.this.coverView.getPageWidth(), MusicPlayerSheet.this.coverView.getSideCanvas(-1), MusicPlayerSheet.this.coverView.getSideCanvas(1))) {
                postInvalidateOnAnimation();
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        public void dispatchDraw(Canvas canvas) {
            super.dispatchDraw(canvas);
            if (MusicPlayerSheet.this.seekPlate <= 0.01f || !MusicPlayerSheet.this.seekSpeedDrawable.isShown()) {
                return;
            }
            int iDp = this.transportTop - AndroidUtilities.dp(8.0f);
            int iDp2 = iDp - AndroidUtilities.dp(37.0f);
            float fClamp01 = Utilities.clamp01(MusicPlayerSheet.this.seekPlate);
            float f = (MusicPlayerSheet.this.seekPlate * 0.4f) + 0.6f;
            canvas.save();
            canvas.translate(0.0f, AndroidUtilities.dp(15.0f) * (1.0f - MusicPlayerSheet.this.seekPlate));
            canvas.scale(f, f, this.paneLeft + (this.paneWidth / 2.0f), iDp);
            canvas.saveLayerAlpha(this.paneLeft, iDp2, r0 + this.paneWidth, AndroidUtilities.dp(48.0f) + iDp2, (int) (fClamp01 * 255.0f));
            SeekSpeedDrawable seekSpeedDrawable = MusicPlayerSheet.this.seekSpeedDrawable;
            int i = this.paneLeft;
            seekSpeedDrawable.setBounds(i, iDp2, this.paneWidth + i, AndroidUtilities.dp(48.0f) + iDp2);
            MusicPlayerSheet.this.seekSpeedDrawable.draw(canvas);
            canvas.restore();
            canvas.restore();
        }

        @Override // android.view.View
        @SuppressLint({"ClickableViewAccessibility"})
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return !MusicPlayerSheet.this.isDismissed() && super.onTouchEvent(motionEvent);
        }
    }
}
