package org.telegram.ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.util.Property;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.ViewPropertyAnimator;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.camera.core.ImageCapture$$ExternalSyntheticBackport1;
import androidx.core.content.FileProvider;
import androidx.core.graphics.ColorUtils;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.FloatValueHolder;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.exteragram.messenger.pillstack.ui.pills.crypto.RatePill$$ExternalSyntheticLambda1;
import com.exteragram.messenger.utils.chats.ChatUtils;
import com.google.android.gms.cast.MediaError;
import com.google.android.gms.cast.framework.CastContext;
import java.io.File;
import java.util.ArrayList;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.DispatchQueue;
import org.telegram.messenger.DownloadController;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.FileRefController;
import org.telegram.messenger.ImageLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.audioinfo.AudioInfo;
import org.telegram.messenger.chromecast.ChromecastController;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.ActionBarMenu;
import org.telegram.ui.ActionBar.ActionBarMenuItem;
import org.telegram.ui.ActionBar.ActionBarMenuSlider;
import org.telegram.ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.BottomSheet;
import org.telegram.ui.ActionBar.SimpleTextView;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.ActionBar.ThemeDescription;
import org.telegram.ui.CastSync;
import org.telegram.ui.Cells.AudioPlayerCell;
import org.telegram.ui.ChatActivity;
import org.telegram.ui.ChooseQualityLayout$QualityIcon;
import org.telegram.ui.Components.AnimationProperties;
import org.telegram.ui.Components.AudioPlayerAlert;
import org.telegram.ui.Components.Bulletin;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.Forum.ForumUtilities;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.SeekBarView;
import org.telegram.ui.DialogsActivity;
import org.telegram.ui.LaunchActivity;
import org.telegram.ui.Stories.recorder.ButtonWithCounterView;
import org.telegram.ui.Stories.recorder.SelectAudioAlert;
import org.telegram.ui.TopicsFragment;

/* JADX INFO: loaded from: classes7.dex */
public class AudioPlayerAlert extends BottomSheet implements NotificationCenter.NotificationCenterDelegate, DownloadController.FileDownloadProgressListener {
    public static AudioPlayerAlert instance;
    private static final float[] speeds = {0.5f, 1.0f, 1.2f, 1.5f, 1.7f, 2.0f};
    private final int TAG;
    private final ActionBar actionBar;
    private AnimatorSet actionBarAnimation;
    private View actionBarBackground;
    private float actionBarSlide;
    private final Property<ActionBar, Float> actionBarSlideProperty;
    private ActionBarMenuItem addItem;
    private ClippingTextViewSwitcher authorTextView;
    private BackupImageView bigAlbumConver;
    private boolean blurredAnimationInProgress;
    private FrameLayout blurredView;
    private final View[] buttons;
    private boolean castAvailable;
    private ActionBarMenuSubItem castItem;
    private CastMediaRouteButton castItemButton;
    private CoverContainer coverContainer;
    private boolean currentAudioFinishedLoading;
    private String currentFile;
    private TextView durationTextView;
    private ImageView emptyImageView;
    private TextView emptySubtitleTextView;
    private TextView emptyTitleTextView;
    private LinearLayout emptyView;
    private final Runnable forwardSeek;
    private final boolean isProfilePlaylist;
    private ItemTouchHelper itemTouchHelper;
    private long lastBufferedPositionCheck;
    private int lastDuration;
    private MessageObject lastMessageObject;
    private long lastPlaybackClick;
    long lastRewindingTime;
    private int lastTime;
    long lastUpdateRewindingPlayerTime;
    private LinearLayoutManager layoutManager;
    private ListAdapter listAdapter;
    private RecyclerListView listView;
    private RLottieImageView nextButton;
    private boolean noCover;
    private boolean noforwards;
    private ActionBarMenuItem optionsButton;
    private ChooseQualityLayout$QualityIcon optionsIcon;
    private final boolean padWithItem;
    private final LaunchActivity parentActivity;
    private ImageView playButton;
    private PlayPauseDrawable playPauseDrawable;
    private ActionBarMenuItem playbackSpeedButton;
    private FrameLayout playerLayout;
    private ArrayList<MessageObject> playlist;
    private RLottieImageView prevButton;
    private LineProgressView progressView;
    private ActionBarMenuItem repeatButton;
    private ActionBarMenuSubItem repeatListItem;
    private ActionBarMenuSubItem repeatSongItem;
    private ActionBarMenuSubItem reverseOrderItem;
    int rewindingForwardPressedCount;
    float rewindingProgress;
    int rewindingState;
    private ButtonWithCounterView saveToProfileButton;
    private MessagesController.SavedMusicList savedMusicList;
    private int scrollOffsetY;
    private boolean scrollToSong;
    private ActionBarMenuItem searchItem;
    private int searchOpenOffset;
    private int searchOpenPosition;
    private boolean searchWas;
    private boolean searching;
    private SpringAnimation seekBarBufferSpring;
    private SeekBarView seekBarView;
    private ActionBarMenuSubItem shuffleListItem;
    private boolean slidingSpeed;
    private HintView speedHintView;
    private SpeedIconDrawable speedIcon;
    private ActionBarMenuSubItem[] speedItems;
    private ActionBarMenuSlider.SpeedSlider speedSlider;
    private SimpleTextView timeTextView;
    private ClippingTextViewSwitcher titleTextView;
    private ButtonWithCounterView unsaveFromProfileButton;
    private boolean wasLight;

    @Override // org.telegram.ui.ActionBar.BottomSheet
    public boolean canDismissWithSwipe() {
        return false;
    }

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
    public boolean isMyList() {
        MessagesController.SavedMusicList savedMusicList = this.savedMusicList;
        return savedMusicList != null && savedMusicList.dialogId == UserConfig.getInstance(this.currentAccount).getClientUserId();
    }

    public AudioPlayerAlert(final Context context, final Theme.ResourcesProvider resourcesProvider) {
        int i;
        boolean z;
        ActionBarMenu actionBarMenu;
        float f;
        TLRPC.User user;
        super(context, true, resourcesProvider);
        this.speedItems = new ActionBarMenuSubItem[6];
        View[] viewArr = new View[5];
        this.buttons = viewArr;
        this.scrollToSong = true;
        this.noCover = false;
        this.searchOpenPosition = -1;
        this.scrollOffsetY = Integer.MAX_VALUE;
        this.rewindingProgress = -1.0f;
        this.forwardSeek = new Runnable() { // from class: org.telegram.ui.Components.AudioPlayerAlert.1
            @Override // java.lang.Runnable
            public void run() {
                long duration = MediaController.getInstance().getDuration();
                if (duration == 0 || duration == -9223372036854775807L) {
                    AudioPlayerAlert.this.lastRewindingTime = System.currentTimeMillis();
                    return;
                }
                float f2 = AudioPlayerAlert.this.rewindingProgress;
                long jCurrentTimeMillis = System.currentTimeMillis();
                AudioPlayerAlert audioPlayerAlert = AudioPlayerAlert.this;
                long j = jCurrentTimeMillis - audioPlayerAlert.lastRewindingTime;
                audioPlayerAlert.lastRewindingTime = jCurrentTimeMillis;
                long j2 = jCurrentTimeMillis - audioPlayerAlert.lastUpdateRewindingPlayerTime;
                int i2 = audioPlayerAlert.rewindingForwardPressedCount;
                float f3 = ((long) ((f2 * r0) + (((i2 == 1 ? 3L : i2 == 2 ? 6L : 12L) * j) - j))) / duration;
                if (f3 < 0.0f) {
                    f3 = 0.0f;
                }
                audioPlayerAlert.rewindingProgress = f3;
                MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
                if (playingMessageObject != null && (playingMessageObject.isMusic() || playingMessageObject.isVoice())) {
                    if (!MediaController.getInstance().isMessagePaused()) {
                        MediaController.getInstance().getPlayingMessageObject().audioProgress = AudioPlayerAlert.this.rewindingProgress;
                    }
                    AudioPlayerAlert.this.updateProgress(playingMessageObject);
                }
                AudioPlayerAlert audioPlayerAlert2 = AudioPlayerAlert.this;
                if (audioPlayerAlert2.rewindingState == 1 && audioPlayerAlert2.rewindingForwardPressedCount > 0 && MediaController.getInstance().isMessagePaused()) {
                    if (j2 > 200 || AudioPlayerAlert.this.rewindingProgress == 0.0f) {
                        AudioPlayerAlert.this.lastUpdateRewindingPlayerTime = jCurrentTimeMillis;
                        MediaController.getInstance().seekToProgress(MediaController.getInstance().getPlayingMessageObject(), f3);
                    }
                    AudioPlayerAlert audioPlayerAlert3 = AudioPlayerAlert.this;
                    if (audioPlayerAlert3.rewindingForwardPressedCount <= 0 || audioPlayerAlert3.rewindingProgress <= 0.0f) {
                        return;
                    }
                    AndroidUtilities.runOnUIThread(audioPlayerAlert3.forwardSeek, 16L);
                }
            }
        };
        this.actionBarSlideProperty = new AnimationProperties.FloatProperty<ActionBar>("actionBarSlide") { // from class: org.telegram.ui.Components.AudioPlayerAlert.24
            @Override // org.telegram.ui.Components.AnimationProperties.FloatProperty
            public void setValue(ActionBar actionBar, float f2) {
                AudioPlayerAlert.this.actionBarSlide = f2;
                SimpleTextView titleTextView = actionBar.getTitleTextView();
                ImageView backButton = actionBar.getBackButton();
                float f3 = 1.0f - f2;
                titleTextView.setTranslationX(AndroidUtilities.dp(-52.0f) * f3);
                backButton.setTranslationX(AndroidUtilities.dp(-52.0f) * f3);
                if (AudioPlayerAlert.this.searchItem != null && AudioPlayerAlert.this.searchItem.getSearchContainer() != null) {
                    AudioPlayerAlert.this.searchItem.getSearchContainer().setClipChildren(false);
                    AudioPlayerAlert.this.searchItem.getSearchContainer().setClipToPadding(false);
                    AudioPlayerAlert.this.searchItem.getSearchContainer().setPadding(0, 0, AndroidUtilities.dp(AndroidUtilities.isTablet() ? 74.0f : 66.0f), 0);
                    AudioPlayerAlert.this.searchItem.getSearchContainer().setTranslationX(AndroidUtilities.dp(AndroidUtilities.isTablet() ? 74.0f : 66.0f) + (AndroidUtilities.dp(-52.0f) * f3));
                    if (AudioPlayerAlert.this.searchItem.getSearchClearButton() != null) {
                        AudioPlayerAlert.this.searchItem.getSearchClearButton().setTranslationX(AndroidUtilities.dp(52.0f) * f3);
                    }
                }
                backButton.setScaleX(AndroidUtilities.lerp(0.6f, 1.0f, f2));
                backButton.setScaleY(AndroidUtilities.lerp(0.6f, 1.0f, f2));
                backButton.setAlpha(AndroidUtilities.lerp(0.0f, 1.0f, f2));
                ((BottomSheet) AudioPlayerAlert.this).containerView.invalidate();
            }

            @Override // android.util.Property
            public Float get(ActionBar actionBar) {
                return Float.valueOf(AudioPlayerAlert.this.actionBarSlide);
            }
        };
        this.doNotOverlayNavigationBar = true;
        fixNavigationBar(getThemedColor(Theme.key_player_background));
        final MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
        if (playingMessageObject != null) {
            this.currentAccount = playingMessageObject.currentAccount;
        } else {
            this.currentAccount = UserConfig.selectedAccount;
        }
        this.parentActivity = (LaunchActivity) context;
        this.TAG = DownloadController.getInstance(this.currentAccount).generateObserverTag();
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.messagePlayingDidReset);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.messagePlayingPlayStateChanged);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.messagePlayingDidStart);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.messagePlayingProgressDidChanged);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.fileLoaded);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.fileLoadProgressChanged);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.musicDidLoad);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.moreMusicDidLoad);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.musicIdsLoaded);
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.messagePlayingSpeedChanged);
        FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.Components.AudioPlayerAlert.2
            private int lastMeasturedHeight;
            private int lastMeasturedWidth;
            private final RectF rect = new RectF();
            private boolean ignoreLayout = false;

            @Override // android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                return !AudioPlayerAlert.this.isDismissed() && super.onTouchEvent(motionEvent);
            }

            @Override // android.widget.FrameLayout, android.view.View
            public void onMeasure(int i2, int i3) {
                int iDp;
                MessageObject messageObject;
                MessageObject messageObject2;
                MessageObject messageObject3;
                int size = View.MeasureSpec.getSize(i3);
                int size2 = View.MeasureSpec.getSize(i2);
                if (size != this.lastMeasturedHeight || size2 != this.lastMeasturedWidth) {
                    if (AudioPlayerAlert.this.blurredView.getTag() != null) {
                        AudioPlayerAlert.this.showAlbumCover(false, false);
                    }
                    this.lastMeasturedWidth = size2;
                    this.lastMeasturedHeight = size;
                }
                this.ignoreLayout = true;
                AudioPlayerAlert.this.playerLayout.setVisibility((AudioPlayerAlert.this.searchWas || ((BottomSheet) AudioPlayerAlert.this).keyboardVisible) ? 4 : 0);
                int paddingTop = size - getPaddingTop();
                ((FrameLayout.LayoutParams) AudioPlayerAlert.this.listView.getLayoutParams()).topMargin = ActionBar.getCurrentActionBarHeight() + AndroidUtilities.statusBarHeight;
                ((FrameLayout.LayoutParams) AudioPlayerAlert.this.blurredView.getLayoutParams()).topMargin = -getPaddingTop();
                int iDp2 = AndroidUtilities.dp(184 + ((AudioPlayerAlert.this.isMyList() || AudioPlayerAlert.this.noforwards || (messageObject3 = playingMessageObject) == null || messageObject3.isVoice()) ? 0 : 52));
                if (AudioPlayerAlert.this.playlist.size() > 1) {
                    iDp2 += ((BottomSheet) AudioPlayerAlert.this).backgroundPaddingTop + (AudioPlayerAlert.this.playlist.size() * AndroidUtilities.dp(56.0f));
                }
                if (AudioPlayerAlert.this.searching || ((BottomSheet) AudioPlayerAlert.this).keyboardVisible) {
                    iDp = AndroidUtilities.dp(8.0f);
                } else {
                    iDp = (iDp2 < paddingTop ? paddingTop - iDp2 : paddingTop - ((int) ((paddingTop / 5) * 3.5f))) + AndroidUtilities.dp(8.0f);
                    if (iDp > paddingTop - AndroidUtilities.dp(((AudioPlayerAlert.this.isMyList() || AudioPlayerAlert.this.noforwards || (messageObject2 = playingMessageObject) == null || messageObject2.isVoice()) ? 0 : 52) + 334)) {
                        iDp = paddingTop - AndroidUtilities.dp(((AudioPlayerAlert.this.isMyList() || AudioPlayerAlert.this.noforwards || (messageObject = playingMessageObject) == null || messageObject.isVoice()) ? 0 : 52) + 334);
                    }
                    if (iDp < 0) {
                        iDp = 0;
                    }
                }
                if (AudioPlayerAlert.this.padWithItem) {
                    iDp = 0;
                }
                if (AudioPlayerAlert.this.listView.getPaddingTop() != iDp) {
                    AudioPlayerAlert.this.listView.setPadding(0, iDp, 0, (AudioPlayerAlert.this.searching && ((BottomSheet) AudioPlayerAlert.this).keyboardVisible) ? 0 : AudioPlayerAlert.this.listView.getPaddingBottom());
                }
                this.ignoreLayout = false;
                super.onMeasure(i2, View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30));
            }

            @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
                super.onLayout(z2, i2, i3, i4, i5);
                AudioPlayerAlert.this.updateLayout();
                AudioPlayerAlert.this.updateEmptyViewPosition();
            }

            /* JADX WARN: Code restructure failed: missing block: B:11:0x003d, code lost:
            
                if (r4.getY() < (r3.this$0.scrollOffsetY + org.telegram.messenger.AndroidUtilities.dp(12.0f))) goto L32;
             */
            /* JADX WARN: Code restructure failed: missing block: B:24:0x0071, code lost:
            
                if (r4.getY() < (getMeasuredHeight() - org.telegram.messenger.AndroidUtilities.dp(((r3.this$0.isMyList() || r3.this$0.noforwards || (r2 = r3) == null || r2.isVoice()) ? 0 : 52) + 196))) goto L32;
             */
            /* JADX WARN: Code restructure failed: missing block: B:31:0x0095, code lost:
            
                if (r4.getY() < r3.this$0.playerLayout.getTop()) goto L32;
             */
            /* JADX WARN: Code restructure failed: missing block: B:32:0x0097, code lost:
            
                r3.this$0.dismiss();
             */
            /* JADX WARN: Code restructure failed: missing block: B:33:0x009d, code lost:
            
                return true;
             */
            @Override // android.view.ViewGroup
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
                if (motionEvent.getAction() == 0) {
                    if (AudioPlayerAlert.this.scrollOffsetY != 0 && AudioPlayerAlert.this.actionBar.getAlpha() == 0.0f) {
                        if (AudioPlayerAlert.this.listAdapter.getItemCount() > 0) {
                        }
                    } else if (AudioPlayerAlert.this.scrollOffsetY == 0) {
                        if (AudioPlayerAlert.this.playerLayout != null) {
                        }
                    }
                }
                return super.onInterceptTouchEvent(motionEvent);
            }

            @Override // android.view.View, android.view.ViewParent
            public void requestLayout() {
                if (this.ignoreLayout) {
                    return;
                }
                super.requestLayout();
            }

            @Override // android.view.View
            public void onDraw(Canvas canvas) {
                float fMin;
                float f2;
                int size = AudioPlayerAlert.this.playlist.size();
                AudioPlayerAlert audioPlayerAlert = AudioPlayerAlert.this;
                if (size <= 1) {
                    ((BottomSheet) audioPlayerAlert).shadowDrawable.setBounds(0, (getMeasuredHeight() - AudioPlayerAlert.this.playerLayout.getMeasuredHeight()) - ((BottomSheet) AudioPlayerAlert.this).backgroundPaddingTop, getMeasuredWidth(), getMeasuredHeight());
                    ((BottomSheet) AudioPlayerAlert.this).shadowDrawable.draw(canvas);
                    if (AudioPlayerAlert.this.isProfilePlaylist) {
                        AudioPlayerAlert.this.actionBar.setVisibility(8);
                        return;
                    }
                    return;
                }
                if (audioPlayerAlert.listView.getVisibility() != 0) {
                    return;
                }
                int iDp = AndroidUtilities.dp(13.0f);
                int translationY = (int) (((AudioPlayerAlert.this.scrollOffsetY - ((BottomSheet) AudioPlayerAlert.this).backgroundPaddingTop) - iDp) + AudioPlayerAlert.this.listView.getTranslationY());
                if (AudioPlayerAlert.this.isProfilePlaylist) {
                    translationY = (translationY - ActionBar.getCurrentActionBarHeight()) + AndroidUtilities.dp(10.0f);
                }
                int iDp2 = AndroidUtilities.dp(20.0f) + translationY;
                int measuredHeight = getMeasuredHeight() + AndroidUtilities.dp(15.0f) + ((BottomSheet) AudioPlayerAlert.this).backgroundPaddingTop;
                if (AudioPlayerAlert.this.isProfilePlaylist || ((BottomSheet) AudioPlayerAlert.this).backgroundPaddingTop + translationY >= ActionBar.getCurrentActionBarHeight()) {
                    fMin = 0.0f;
                    f2 = 1.0f;
                } else {
                    float fDp = iDp + AndroidUtilities.dp(4.0f);
                    fMin = Math.min(1.0f, ((ActionBar.getCurrentActionBarHeight() - translationY) - ((BottomSheet) AudioPlayerAlert.this).backgroundPaddingTop) / fDp);
                    int currentActionBarHeight = (int) ((ActionBar.getCurrentActionBarHeight() - fDp) * fMin);
                    translationY -= currentActionBarHeight;
                    iDp2 -= currentActionBarHeight;
                    measuredHeight += currentActionBarHeight;
                    f2 = 1.0f - fMin;
                }
                int i2 = AndroidUtilities.statusBarHeight;
                float f3 = 1.0f - fMin;
                int i3 = iDp2 + ((int) (i2 * f3));
                ((BottomSheet) AudioPlayerAlert.this).shadowDrawable.setBounds(0, translationY + ((int) (i2 * f3)), getMeasuredWidth(), measuredHeight);
                ((BottomSheet) AudioPlayerAlert.this).shadowDrawable.draw(canvas);
                if (!AudioPlayerAlert.this.isProfilePlaylist && f2 != 1.0f) {
                    Theme.dialogs_onlineCirclePaint.setColor(AudioPlayerAlert.this.getThemedColor(Theme.key_dialogBackground));
                    this.rect.set(((BottomSheet) AudioPlayerAlert.this).backgroundPaddingLeft, ((BottomSheet) AudioPlayerAlert.this).backgroundPaddingTop + r1, getMeasuredWidth() - ((BottomSheet) AudioPlayerAlert.this).backgroundPaddingLeft, ((BottomSheet) AudioPlayerAlert.this).backgroundPaddingTop + r1 + AndroidUtilities.dp(24.0f));
                    canvas.drawRoundRect(this.rect, AndroidUtilities.dp(12.0f) * f2, AndroidUtilities.dp(12.0f) * f2, Theme.dialogs_onlineCirclePaint);
                }
                if (!AudioPlayerAlert.this.isProfilePlaylist && f2 != 0.0f) {
                    int iDp3 = AndroidUtilities.dp(36.0f);
                    this.rect.set((getMeasuredWidth() - iDp3) / 2, i3, (getMeasuredWidth() + iDp3) / 2, i3 + AndroidUtilities.dp(4.0f));
                    int themedColor = AudioPlayerAlert.this.getThemedColor(Theme.key_sheet_scrollUp);
                    int iAlpha = Color.alpha(themedColor);
                    Theme.dialogs_onlineCirclePaint.setColor(themedColor);
                    Theme.dialogs_onlineCirclePaint.setAlpha((int) (iAlpha * 1.0f * f2));
                    canvas.drawRoundRect(this.rect, AndroidUtilities.dp(2.0f), AndroidUtilities.dp(2.0f), Theme.dialogs_onlineCirclePaint);
                }
                if (AudioPlayerAlert.this.isProfilePlaylist) {
                    AudioPlayerAlert.this.actionBar.setVisibility(0);
                    AudioPlayerAlert.this.actionBar.setTranslationY(Math.max(0.0f, (((r1 - ((BottomSheet) AudioPlayerAlert.this).backgroundPaddingTop) - AndroidUtilities.dp(10.0f)) + (AndroidUtilities.dp(6.0f) * (1.0f - AudioPlayerAlert.this.actionBarSlide))) - AudioPlayerAlert.this.actionBar.getTop()));
                }
            }

            @Override // android.view.ViewGroup, android.view.View
            public void onAttachedToWindow() {
                super.onAttachedToWindow();
                Bulletin.addDelegate(this, new Bulletin.Delegate() { // from class: org.telegram.ui.Components.AudioPlayerAlert.2.1
                    @Override // org.telegram.ui.Components.Bulletin.Delegate
                    public int getBottomOffset(int i2) {
                        return AudioPlayerAlert.this.playerLayout.getHeight();
                    }
                });
            }

            @Override // android.view.ViewGroup, android.view.View
            public void onDetachedFromWindow() {
                super.onDetachedFromWindow();
                Bulletin.removeDelegate(this);
            }
        };
        this.containerView = frameLayout;
        frameLayout.setWillNotDraw(false);
        ViewGroup viewGroup = this.containerView;
        int i2 = this.backgroundPaddingLeft;
        viewGroup.setPadding(i2, 0, i2, 0);
        ActionBar actionBar = new ActionBar(context, resourcesProvider) { // from class: org.telegram.ui.Components.AudioPlayerAlert.3
            @Override // android.view.View
            public void setAlpha(float f2) {
                super.setAlpha(f2);
                ((BottomSheet) AudioPlayerAlert.this).containerView.invalidate();
            }
        };
        this.actionBar = actionBar;
        actionBar.setForceDisableCenterTitle(true);
        actionBar.setBackgroundColor(0);
        actionBar.setBackButtonImage(C2665R.drawable.ic_ab_back);
        int i3 = Theme.key_player_actionBarTitle;
        actionBar.setItemsColor(getThemedColor(i3), false);
        actionBar.setItemsBackgroundColor(getThemedColor(Theme.key_player_actionBarSelector), false);
        actionBar.setTitleColor(getThemedColor(i3));
        actionBar.setSubtitleColor(getThemedColor(Theme.key_player_actionBarSubtitle));
        actionBar.setOccupyStatusBar(true);
        ActionBarMenu actionBarMenuCreateMenu = actionBar.createMenu();
        actionBarMenuCreateMenu.setLayoutParams(LayoutHelper.createFrame(-1, -1, 119));
        View view = new View(context);
        this.actionBarBackground = view;
        view.setBackgroundColor(getThemedColor(Theme.key_dialogBackground));
        actionBar.addView(this.actionBarBackground, 0, LayoutHelper.createFrame(-1, -1, 119));
        this.actionBarBackground.setAlpha(0.0f);
        actionBar.setAlpha(0.0f);
        actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.Components.AudioPlayerAlert.4
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i4) {
                AudioPlayerAlert audioPlayerAlert = AudioPlayerAlert.this;
                if (i4 == -1) {
                    audioPlayerAlert.lambda$new$0();
                } else {
                    audioPlayerAlert.onSubItemClick(i4);
                }
            }
        });
        this.playerLayout = new FrameLayout(context) { // from class: org.telegram.ui.Components.AudioPlayerAlert.5
            @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            public void onLayout(boolean z2, int i4, int i5, int i6, int i7) {
                super.onLayout(z2, i4, i5, i6, i7);
                if (AudioPlayerAlert.this.playbackSpeedButton == null || AudioPlayerAlert.this.durationTextView == null) {
                    return;
                }
                int left = (AudioPlayerAlert.this.durationTextView.getLeft() - AndroidUtilities.dp(4.0f)) - AudioPlayerAlert.this.playbackSpeedButton.getMeasuredWidth();
                AudioPlayerAlert.this.playbackSpeedButton.layout(left, AudioPlayerAlert.this.playbackSpeedButton.getTop(), AudioPlayerAlert.this.playbackSpeedButton.getMeasuredWidth() + left, AudioPlayerAlert.this.playbackSpeedButton.getBottom());
            }

            @Override // android.view.View
            public void onDraw(Canvas canvas) {
                canvas.drawLine(0.0f, 1.0f, getMeasuredWidth(), 1.0f, Theme.forcedDividerPaint);
            }
        };
        CoverContainer coverContainer = new CoverContainer(context) { // from class: org.telegram.ui.Components.AudioPlayerAlert.6
            private long pressTime;

            @Override // android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                int action = motionEvent.getAction();
                if (action == 0) {
                    if (getImageReceiver().hasBitmapImage()) {
                        AudioPlayerAlert.this.showAlbumCover(true, true);
                        this.pressTime = SystemClock.elapsedRealtime();
                    }
                } else if (action != 2 && SystemClock.elapsedRealtime() - this.pressTime >= 400) {
                    AudioPlayerAlert.this.showAlbumCover(false, true);
                }
                return true;
            }

            @Override // org.telegram.ui.Components.AudioPlayerAlert.CoverContainer
            public void onImageUpdated(ImageReceiver imageReceiver) {
                Bitmap bitmap = imageReceiver.getBitmap();
                if (AudioPlayerAlert.this.blurredView.getTag() != null) {
                    AudioPlayerAlert.this.bigAlbumConver.setImageBitmap(bitmap);
                }
            }
        };
        this.coverContainer = coverContainer;
        this.playerLayout.addView(coverContainer, LayoutHelper.createFrame(95, 95.0f, 51, 20.0f, 20.0f, 0.0f, 0.0f));
        ClippingTextViewSwitcher clippingTextViewSwitcher = new ClippingTextViewSwitcher(context) { // from class: org.telegram.ui.Components.AudioPlayerAlert.7
            @Override // org.telegram.ui.Components.AudioPlayerAlert.ClippingTextViewSwitcher
            public TextView createTextView() {
                MarqueeTextView marqueeTextView = new MarqueeTextView(context);
                marqueeTextView.setTextColor(AudioPlayerAlert.this.getThemedColor(Theme.key_player_actionBarTitle));
                marqueeTextView.setTextSize(1, 16.0f);
                marqueeTextView.setTypeface(AndroidUtilities.bold());
                marqueeTextView.setEllipsize(TextUtils.TruncateAt.END);
                marqueeTextView.setSingleLine(true);
                return marqueeTextView;
            }
        };
        this.titleTextView = clippingTextViewSwitcher;
        this.playerLayout.addView(clippingTextViewSwitcher, LayoutHelper.createFrame(-1, -2.0f, 51, 135.0f, 20.0f, 40.0f, 0.0f));
        C34738 c34738 = new C34738(context, context);
        this.authorTextView = c34738;
        this.playerLayout.addView(c34738, LayoutHelper.createFrame(-1, -2.0f, 51, 129.0f, 42.0f, 20.0f, 0.0f));
        SeekBarView seekBarView = new SeekBarView(context, resourcesProvider) { // from class: org.telegram.ui.Components.AudioPlayerAlert.9
            @Override // org.telegram.ui.Components.SeekBarView
            public boolean onTouch(MotionEvent motionEvent) {
                if (AudioPlayerAlert.this.rewindingState != 0) {
                    return false;
                }
                return super.onTouch(motionEvent);
            }
        };
        this.seekBarView = seekBarView;
        seekBarView.setLineWidth(4);
        this.seekBarView.setDelegate(new SeekBarView.SeekBarViewDelegate() { // from class: org.telegram.ui.Components.AudioPlayerAlert.10
            @Override // org.telegram.ui.Components.SeekBarView.SeekBarViewDelegate
            public void onSeekBarPressed(boolean z2) {
            }

            @Override // org.telegram.ui.Components.SeekBarView.SeekBarViewDelegate
            public void onSeekBarDrag(boolean z2, float f2) {
                if (z2) {
                    MediaController.getInstance().seekToProgress(MediaController.getInstance().getPlayingMessageObject(), f2);
                }
                MessageObject playingMessageObject2 = MediaController.getInstance().getPlayingMessageObject();
                if (playingMessageObject2 != null) {
                    if (playingMessageObject2.isMusic() || playingMessageObject2.isVoice()) {
                        AudioPlayerAlert.this.updateProgress(playingMessageObject2);
                    }
                }
            }

            @Override // org.telegram.ui.Components.SeekBarView.SeekBarViewDelegate
            public CharSequence getContentDescription() {
                return LocaleController.formatString("AccDescrPlayerDuration", C2665R.string.AccDescrPlayerDuration, LocaleController.formatPluralString("Minutes", AudioPlayerAlert.this.lastTime / 60, new Object[0]) + ' ' + LocaleController.formatPluralString("Seconds", AudioPlayerAlert.this.lastTime % 60, new Object[0]), LocaleController.formatPluralString("Minutes", AudioPlayerAlert.this.lastDuration / 60, new Object[0]) + ' ' + LocaleController.formatPluralString("Seconds", AudioPlayerAlert.this.lastDuration % 60, new Object[0]));
            }
        });
        this.seekBarView.setReportChanges(true);
        this.playerLayout.addView(this.seekBarView, LayoutHelper.createFrame(-1, 38.0f, 51, 120.0f, 70.0f, 5.0f, 0.0f));
        this.seekBarBufferSpring = new SpringAnimation(new FloatValueHolder(0.0f)).setSpring(new SpringForce().setStiffness(750.0f).setDampingRatio(1.0f)).addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda4
            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
            public final void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f2, float f3) {
                this.f$0.lambda$new$0(dynamicAnimation, f2, f3);
            }
        });
        LineProgressView lineProgressView = new LineProgressView(context);
        this.progressView = lineProgressView;
        lineProgressView.setVisibility(4);
        this.progressView.setBackgroundColor(getThemedColor(Theme.key_player_progressBackground));
        this.progressView.setProgressColor(getThemedColor(Theme.key_player_progress));
        this.playerLayout.addView(this.progressView, LayoutHelper.createFrame(-1, 2.0f, 51, 136.0f, 90.0f, 21.0f, 0.0f));
        SimpleTextView simpleTextView = new SimpleTextView(context);
        this.timeTextView = simpleTextView;
        simpleTextView.setTextSize(12);
        this.timeTextView.setText("0:00");
        SimpleTextView simpleTextView2 = this.timeTextView;
        int i4 = Theme.key_player_time;
        simpleTextView2.setTextColor(getThemedColor(i4));
        this.timeTextView.setImportantForAccessibility(2);
        this.playerLayout.addView(this.timeTextView, LayoutHelper.createFrame(100, -2.0f, 51, 135.0f, 98.0f, 0.0f, 0.0f));
        TextView textView = new TextView(context);
        this.durationTextView = textView;
        textView.setTextSize(1, 12.0f);
        this.durationTextView.setTextColor(getThemedColor(i4));
        this.durationTextView.setGravity(17);
        this.durationTextView.setImportantForAccessibility(2);
        this.playerLayout.addView(this.durationTextView, LayoutHelper.createFrame(-2, -2.0f, 53, 0.0f, 98.0f, 20.0f, 0.0f));
        ActionBarMenuItem actionBarMenuItem = new ActionBarMenuItem(context, null, 0, getThemedColor(i4), false, resourcesProvider);
        this.playbackSpeedButton = actionBarMenuItem;
        actionBarMenuItem.setLongClickEnabled(false);
        this.playbackSpeedButton.setShowSubmenuByMove(false);
        this.playbackSpeedButton.setAdditionalYOffset(-AndroidUtilities.dp(224.0f));
        this.playbackSpeedButton.setContentDescription(LocaleController.getString(C2665R.string.AccDescrPlayerSpeed));
        this.playbackSpeedButton.setDelegate(new ActionBarMenuItem.ActionBarMenuItemDelegate() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda12
            @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemDelegate
            public final void onItemClick(int i5) {
                this.f$0.lambda$new$1(i5);
            }
        });
        ActionBarMenuItem actionBarMenuItem2 = this.playbackSpeedButton;
        SpeedIconDrawable speedIconDrawable = new SpeedIconDrawable(true);
        this.speedIcon = speedIconDrawable;
        actionBarMenuItem2.setIcon(speedIconDrawable);
        final float[] fArr = {1.0f, 1.5f, 2.0f};
        ActionBarMenuSlider.SpeedSlider speedSlider = new ActionBarMenuSlider.SpeedSlider(getContext(), resourcesProvider);
        this.speedSlider = speedSlider;
        speedSlider.setRoundRadiusDp(6.0f);
        this.speedSlider.setDrawShadow(true);
        this.speedSlider.setOnValueChange(new Utilities.Callback2() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda13
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$new$2((Float) obj, (Boolean) obj2);
            }
        });
        this.speedItems[0] = this.playbackSpeedButton.addSubItem(0, C2665R.drawable.msg_speed_slow, LocaleController.getString(C2665R.string.SpeedSlow));
        this.speedItems[1] = this.playbackSpeedButton.addSubItem(1, C2665R.drawable.msg_speed_normal, LocaleController.getString(C2665R.string.SpeedNormal));
        this.speedItems[2] = this.playbackSpeedButton.addSubItem(2, C2665R.drawable.msg_speed_medium, LocaleController.getString(C2665R.string.SpeedMedium));
        this.speedItems[3] = this.playbackSpeedButton.addSubItem(3, C2665R.drawable.msg_speed_fast, LocaleController.getString(C2665R.string.SpeedFast));
        this.speedItems[4] = this.playbackSpeedButton.addSubItem(4, C2665R.drawable.msg_speed_veryfast, LocaleController.getString(C2665R.string.SpeedVeryFast));
        this.speedItems[5] = this.playbackSpeedButton.addSubItem(5, C2665R.drawable.msg_speed_superfast, LocaleController.getString(C2665R.string.SpeedSuperFast));
        if (AndroidUtilities.density >= 3.0f) {
            this.playbackSpeedButton.setPadding(0, 1, 0, 0);
        }
        this.playbackSpeedButton.setAdditionalXOffset(AndroidUtilities.dp(8.0f));
        this.playbackSpeedButton.setAdditionalYOffset(-AndroidUtilities.dp(400.0f));
        this.playbackSpeedButton.setShowedFromBottom(true);
        this.playerLayout.addView(this.playbackSpeedButton, LayoutHelper.createFrame(36, 36.0f, 53, 0.0f, 88.0f, 20.0f, 0.0f));
        this.playbackSpeedButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda14
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$new$3(fArr, view2);
            }
        });
        this.playbackSpeedButton.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda15
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view2) {
                return this.f$0.lambda$new$4(resourcesProvider, view2);
            }
        });
        updatePlaybackButton(false);
        FrameLayout frameLayout2 = new FrameLayout(context) { // from class: org.telegram.ui.Components.AudioPlayerAlert.11
            @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            public void onLayout(boolean z2, int i5, int i6, int i7, int i8) {
                int iDp = ((i7 - i5) - AndroidUtilities.dp(248.0f)) / 4;
                for (int i9 = 0; i9 < 5; i9++) {
                    int iDp2 = AndroidUtilities.dp((i9 * 48) + 4) + (iDp * i9);
                    int iDp3 = AndroidUtilities.dp(9.0f);
                    AudioPlayerAlert.this.buttons[i9].layout(iDp2, iDp3, AudioPlayerAlert.this.buttons[i9].getMeasuredWidth() + iDp2, AudioPlayerAlert.this.buttons[i9].getMeasuredHeight() + iDp3);
                }
            }
        };
        this.playerLayout.addView(frameLayout2, LayoutHelper.createFrame(-1, 66.0f, 49, 10.0f, 116.0f, 10.0f, 0.0f));
        ActionBarMenuItem actionBarMenuItem3 = new ActionBarMenuItem(context, null, 0, 0, false, resourcesProvider);
        this.repeatButton = actionBarMenuItem3;
        viewArr[0] = actionBarMenuItem3;
        actionBarMenuItem3.setLongClickEnabled(false);
        this.repeatButton.setShowSubmenuByMove(false);
        this.repeatButton.setAdditionalYOffset(-AndroidUtilities.dp(166.0f));
        ActionBarMenuItem actionBarMenuItem4 = this.repeatButton;
        int i5 = Theme.key_listSelector;
        actionBarMenuItem4.setBackgroundDrawable(Theme.createSelectorDrawable(getThemedColor(i5), 1, AndroidUtilities.dp(18.0f)));
        if (playingMessageObject != null && !playingMessageObject.isVoice()) {
            frameLayout2.addView(this.repeatButton, LayoutHelper.createFrame(48, 48, 51));
        }
        this.repeatButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda16
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$new$5(view2);
            }
        });
        this.repeatSongItem = this.repeatButton.addSubItem(3, C2665R.drawable.player_new_repeatone, LocaleController.getString(C2665R.string.RepeatSong));
        this.repeatListItem = this.repeatButton.addSubItem(4, C2665R.drawable.player_new_repeatall, LocaleController.getString(C2665R.string.RepeatList));
        this.repeatButton.addColoredGap().getLayoutParams().height = AndroidUtilities.dp(4.0f);
        this.shuffleListItem = this.repeatButton.addSubItem(2, C2665R.drawable.player_new_shuffle, LocaleController.getString(C2665R.string.ShuffleList));
        this.repeatButton.addColoredGap().getLayoutParams().height = AndroidUtilities.dp(4.0f);
        this.reverseOrderItem = this.repeatButton.addSubItem(1, C2665R.drawable.player_new_order, LocaleController.getString(C2665R.string.ReverseOrder));
        this.repeatButton.setShowedFromBottom(true);
        this.repeatButton.setDelegate(new ActionBarMenuItem.ActionBarMenuItemDelegate() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda17
            @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemDelegate
            public final void onItemClick(int i6) {
                this.f$0.lambda$new$6(i6);
            }
        });
        int i6 = Theme.key_player_button;
        int themedColor = getThemedColor(i6);
        float scaledTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        AnonymousClass12 anonymousClass12 = new AnonymousClass12(context, scaledTouchSlop);
        this.prevButton = anonymousClass12;
        viewArr[1] = anonymousClass12;
        ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER;
        anonymousClass12.setScaleType(scaleType);
        this.prevButton.setAnimation(C2665R.raw.player_prev, 20, 20);
        this.prevButton.setLayerColor("Triangle 3", themedColor);
        this.prevButton.setLayerColor("Triangle 4", themedColor);
        this.prevButton.setLayerColor("Rectangle 4", themedColor);
        this.prevButton.setBackgroundDrawable(Theme.createSelectorDrawable(getThemedColor(i5), 1, AndroidUtilities.dp(22.0f)));
        if (playingMessageObject != null && !playingMessageObject.isVoice()) {
            frameLayout2.addView(this.prevButton, LayoutHelper.createFrame(48, 48, 51));
        }
        this.prevButton.setContentDescription(LocaleController.getString(C2665R.string.AccDescrPrevious));
        ImageView imageView = new ImageView(context);
        this.playButton = imageView;
        viewArr[2] = imageView;
        imageView.setScaleType(scaleType);
        ImageView imageView2 = this.playButton;
        PlayPauseDrawable playPauseDrawable = new PlayPauseDrawable(28);
        this.playPauseDrawable = playPauseDrawable;
        imageView2.setImageDrawable(playPauseDrawable);
        this.playPauseDrawable.setPause(!MediaController.getInstance().isMessagePaused(), false);
        ImageView imageView3 = this.playButton;
        int themedColor2 = getThemedColor(i6);
        PorterDuff.Mode mode = PorterDuff.Mode.MULTIPLY;
        imageView3.setColorFilter(new PorterDuffColorFilter(themedColor2, mode));
        this.playButton.setBackgroundDrawable(Theme.createSelectorDrawable(getThemedColor(i5), 1, AndroidUtilities.dp(24.0f)));
        frameLayout2.addView(this.playButton, LayoutHelper.createFrame(48, 48, 51));
        this.playButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda18
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                AudioPlayerAlert.$r8$lambda$XilP3fHirgShhTqpnFmRilx2Dkw(view2);
            }
        });
        AnonymousClass13 anonymousClass13 = new AnonymousClass13(context, scaledTouchSlop);
        this.nextButton = anonymousClass13;
        viewArr[3] = anonymousClass13;
        anonymousClass13.setScaleType(scaleType);
        this.nextButton.setAnimation(C2665R.raw.player_prev, 20, 20);
        this.nextButton.setLayerColor("Triangle 3", themedColor);
        this.nextButton.setLayerColor("Triangle 4", themedColor);
        this.nextButton.setLayerColor("Rectangle 4", themedColor);
        this.nextButton.setRotation(180.0f);
        this.nextButton.setBackground(Theme.createSelectorDrawable(getThemedColor(i5), 1, AndroidUtilities.dp(22.0f)));
        if (playingMessageObject != null && !playingMessageObject.isVoice()) {
            frameLayout2.addView(this.nextButton, LayoutHelper.createFrame(48, 48, 51));
        }
        this.nextButton.setContentDescription(LocaleController.getString(C2665R.string.Next));
        ImageView imageView4 = new ImageView(context);
        viewArr[4] = imageView4;
        imageView4.setScaleType(scaleType);
        imageView4.setImageResource(C2665R.drawable.msg_reactions);
        imageView4.setColorFilter(new PorterDuffColorFilter(getThemedColor(i6), mode));
        imageView4.setBackground(Theme.createSelectorDrawable(getThemedColor(i5), 1, AndroidUtilities.dp(24.0f)));
        if (playingMessageObject == null || playingMessageObject.isVoice()) {
            i = 51;
        } else {
            i = 51;
            frameLayout2.addView(imageView4, LayoutHelper.createFrame(48, 48, 51));
        }
        imageView4.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda19
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view2) {
                return this.f$0.lambda$new$10(resourcesProvider, view2);
            }
        });
        imageView4.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda20
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$new$11(resourcesProvider, view2);
            }
        });
        ActionBarMenuItem actionBarMenuItem5 = new ActionBarMenuItem(context, null, 0, themedColor, false, resourcesProvider);
        this.optionsButton = actionBarMenuItem5;
        ChooseQualityLayout$QualityIcon chooseQualityLayout$QualityIcon = new ChooseQualityLayout$QualityIcon(context, C2665R.drawable.ic_ab_other, resourcesProvider);
        this.optionsIcon = chooseQualityLayout$QualityIcon;
        actionBarMenuItem5.setIcon(chooseQualityLayout$QualityIcon);
        this.optionsButton.setLongClickEnabled(false);
        this.optionsButton.setAdditionalYOffset(-AndroidUtilities.dp(197.0f));
        this.optionsButton.setBackgroundDrawable(Theme.createSelectorDrawable(getThemedColor(i5), 1, AndroidUtilities.dp(18.0f)));
        this.optionsButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.showMenuOptions(view2);
            }
        });
        this.playerLayout.addView(this.optionsButton, LayoutHelper.createFrame(48, 48.0f, 53, 0.0f, 7.0f, 0.0f, 0.0f));
        CastMediaRouteButton castMediaRouteButton = new CastMediaRouteButton(context) { // from class: org.telegram.ui.Components.AudioPlayerAlert.14
            @Override // org.telegram.ui.Components.CastMediaRouteButton
            public void stateUpdated(boolean z2) {
                AudioPlayerAlert.this.updateColors();
                if (AudioPlayerAlert.this.optionsIcon != null) {
                    AudioPlayerAlert.this.optionsIcon.setCasting(CastSync.isActive(), true);
                }
            }
        };
        this.castItemButton = castMediaRouteButton;
        this.castAvailable = true;
        try {
            castMediaRouteButton.setRouteSelector(CastContext.getSharedInstance(context).getMergedSelector());
        } catch (Exception e) {
            FileLog.m992e(e);
            this.castAvailable = false;
        }
        this.castItemButton.setVisibility(4);
        ChooseQualityLayout$QualityIcon chooseQualityLayout$QualityIcon2 = this.optionsIcon;
        if (chooseQualityLayout$QualityIcon2 != null) {
            z = true;
            chooseQualityLayout$QualityIcon2.setCasting(CastSync.isActive(), true);
        } else {
            z = true;
        }
        this.optionsButton.setShowedFromBottom(z);
        this.optionsButton.setDelegate(new ActionBarMenuItem.ActionBarMenuItemDelegate() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda6
            @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemDelegate
            public final void onItemClick(int i7) {
                this.f$0.onSubItemClick(i7);
            }
        });
        this.optionsButton.setContentDescription(LocaleController.getString(C2665R.string.AccDescrMoreOptions));
        LinearLayout linearLayout = new LinearLayout(context);
        this.emptyView = linearLayout;
        linearLayout.setOrientation(1);
        this.emptyView.setGravity(17);
        this.emptyView.setVisibility(8);
        this.containerView.addView(this.emptyView, LayoutHelper.createFrame(-1, -1.0f));
        this.emptyView.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda7
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                return AudioPlayerAlert.m9914$r8$lambda$01ihfyKateZ7gOjmiqJ8twbqo0(view2, motionEvent);
            }
        });
        ImageView imageView5 = new ImageView(context);
        this.emptyImageView = imageView5;
        imageView5.setImageResource(C2665R.drawable.music_empty);
        this.emptyImageView.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_dialogEmptyImage), PorterDuff.Mode.MULTIPLY));
        this.emptyView.addView(this.emptyImageView, LayoutHelper.createLinear(-2, -2));
        TextView textView2 = new TextView(context);
        this.emptyTitleTextView = textView2;
        int i7 = Theme.key_dialogEmptyText;
        textView2.setTextColor(getThemedColor(i7));
        this.emptyTitleTextView.setGravity(17);
        this.emptyTitleTextView.setText(LocaleController.getString(C2665R.string.NoAudioFound));
        this.emptyTitleTextView.setTypeface(AndroidUtilities.bold());
        this.emptyTitleTextView.setTextSize(1, 17.0f);
        this.emptyTitleTextView.setPadding(AndroidUtilities.dp(40.0f), 0, AndroidUtilities.dp(40.0f), 0);
        this.emptyView.addView(this.emptyTitleTextView, LayoutHelper.createLinear(-2, -2, 17, 0, 11, 0, 0));
        TextView textView3 = new TextView(context);
        this.emptySubtitleTextView = textView3;
        textView3.setTextColor(getThemedColor(i7));
        this.emptySubtitleTextView.setGravity(17);
        this.emptySubtitleTextView.setTextSize(1, 15.0f);
        this.emptySubtitleTextView.setPadding(AndroidUtilities.dp(40.0f), 0, AndroidUtilities.dp(40.0f), 0);
        this.emptyView.addView(this.emptySubtitleTextView, LayoutHelper.createLinear(-2, -2, 17, 0, 6, 0, 0));
        RecyclerListView recyclerListView = new RecyclerListView(context) { // from class: org.telegram.ui.Components.AudioPlayerAlert.15
            boolean ignoreLayout;

            @Override // org.telegram.ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
            public void onLayout(boolean z2, int i8, int i9, int i10, int i11) {
                super.onLayout(z2, i8, i9, i10, i11);
                if (AudioPlayerAlert.this.searchOpenPosition != -1 && !AudioPlayerAlert.this.actionBar.isSearchFieldVisible()) {
                    this.ignoreLayout = true;
                    AudioPlayerAlert.this.layoutManager.scrollToPositionWithOffset(AudioPlayerAlert.this.searchOpenPosition, AudioPlayerAlert.this.searchOpenOffset - AudioPlayerAlert.this.listView.getPaddingTop());
                    super.onLayout(false, i8, i9, i10, i11);
                    this.ignoreLayout = false;
                    AudioPlayerAlert.this.searchOpenPosition = -1;
                    return;
                }
                if (AudioPlayerAlert.this.scrollToSong) {
                    AudioPlayerAlert.this.scrollToSong = false;
                    this.ignoreLayout = true;
                    if (AudioPlayerAlert.this.scrollToCurrentSong(true)) {
                        super.onLayout(false, i8, i9, i10, i11);
                    }
                    this.ignoreLayout = false;
                }
            }

            @Override // org.telegram.ui.Components.RecyclerListView
            public boolean allowSelectChildAtPosition(float f2, float f3) {
                return f3 < AudioPlayerAlert.this.playerLayout.getY() - ((float) AudioPlayerAlert.this.listView.getTop());
            }

            @Override // org.telegram.ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View, android.view.ViewParent
            public void requestLayout() {
                if (this.ignoreLayout) {
                    return;
                }
                super.requestLayout();
            }
        };
        this.listView = recyclerListView;
        recyclerListView.setClipToPadding(false);
        RecyclerListView recyclerListView2 = this.listView;
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext(), 1, false);
        this.layoutManager = linearLayoutManager;
        recyclerListView2.setLayoutManager(linearLayoutManager);
        this.listView.setHorizontalScrollBarEnabled(false);
        this.listView.setVerticalScrollBarEnabled(false);
        this.containerView.addView(this.listView, LayoutHelper.createFrame(-1, -1, i));
        RecyclerListView recyclerListView3 = this.listView;
        ListAdapter listAdapter = new ListAdapter(context);
        this.listAdapter = listAdapter;
        recyclerListView3.setAdapter(listAdapter);
        this.listView.setGlowColor(getThemedColor(Theme.key_dialogScrollGlow));
        this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda8
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view2, int i8) {
                AudioPlayerAlert.$r8$lambda$XTTahnJaC6sUXevw9iamPxqtjd8(view2, i8);
            }
        });
        this.listView.setOnItemLongClickListener(new RecyclerListView.OnItemLongClickListener() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda9
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemLongClickListener
            public final boolean onItemClick(View view2, int i8) {
                return this.f$0.lambda$new$14(view2, i8);
            }
        });
        this.listView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.AudioPlayerAlert.16
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i8) {
                RecyclerListView.Holder holder;
                if (i8 != 0) {
                    if (i8 == 1) {
                        AndroidUtilities.hideKeyboard(AudioPlayerAlert.this.getCurrentFocus());
                    }
                } else {
                    if (((AudioPlayerAlert.this.scrollOffsetY - ((BottomSheet) AudioPlayerAlert.this).backgroundPaddingTop) - AndroidUtilities.dp(13.0f)) + ((BottomSheet) AudioPlayerAlert.this).backgroundPaddingTop >= ActionBar.getCurrentActionBarHeight() || !AudioPlayerAlert.this.listView.canScrollVertically(1) || (holder = (RecyclerListView.Holder) AudioPlayerAlert.this.listView.findViewHolderForAdapterPosition(AudioPlayerAlert.this.padWithItem ? 1 : 0)) == null || holder.itemView.getTop() <= AndroidUtilities.dp(7.0f)) {
                        return;
                    }
                    AudioPlayerAlert.this.listView.smoothScrollBy(0, holder.itemView.getTop() - AndroidUtilities.dp(7.0f));
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i8, int i9) {
                AudioPlayerAlert.this.updateLayout();
                AudioPlayerAlert.this.updateEmptyViewPosition();
                if (AudioPlayerAlert.this.searchWas) {
                    return;
                }
                int iFindFirstVisibleItemPosition = AudioPlayerAlert.this.layoutManager.findFirstVisibleItemPosition();
                if (AudioPlayerAlert.this.padWithItem) {
                    iFindFirstVisibleItemPosition = Math.max(0, iFindFirstVisibleItemPosition - 1);
                }
                int iAbs = iFindFirstVisibleItemPosition != -1 ? Math.abs(AudioPlayerAlert.this.layoutManager.findLastVisibleItemPosition() - iFindFirstVisibleItemPosition) + 1 : 0;
                int itemCount = recyclerView.getAdapter().getItemCount();
                if (SharedConfig.playOrderReversed) {
                    if (iFindFirstVisibleItemPosition < 10) {
                        MediaController.getInstance().loadMoreMusic();
                    }
                } else if (iFindFirstVisibleItemPosition + iAbs > itemCount - 10) {
                    MediaController.getInstance().loadMoreMusic();
                }
            }
        });
        this.saveToProfileButton = new ButtonWithCounterView(context, resourcesProvider).setRound();
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) "+ ");
        spannableStringBuilder.setSpan(new ColoredImageSpan(C2665R.drawable.filled_track_add), 0, 1, 33);
        spannableStringBuilder.append((CharSequence) LocaleController.getString(C2665R.string.AudioAddToProfile));
        this.saveToProfileButton.setText(spannableStringBuilder);
        this.saveToProfileButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda10
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$new$16(resourcesProvider, view2);
            }
        });
        this.playerLayout.addView(this.saveToProfileButton, LayoutHelper.createFrame(-1, 42.0f, 87, 12.0f, 12.0f, 12.0f, 12.0f));
        ButtonWithCounterView neutral = new ButtonWithCounterView(context, resourcesProvider).setRound().setNeutral();
        this.unsaveFromProfileButton = neutral;
        neutral.setText(LocaleController.getString(C2665R.string.AudioRemoveFromProfile));
        this.unsaveFromProfileButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda11
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$new$18(resourcesProvider, view2);
            }
        });
        this.playerLayout.addView(this.unsaveFromProfileButton, LayoutHelper.createFrame(-1, 42.0f, 87, 12.0f, 12.0f, 12.0f, 12.0f));
        MessagesController.SavedMusicList savedMusicList = MediaController.getInstance().currentSavedMusicList;
        this.savedMusicList = savedMusicList;
        boolean z2 = savedMusicList != null;
        this.isProfilePlaylist = z2;
        this.actionBar.menuOccupyBack = z2;
        this.padWithItem = isMyList();
        this.playlist = MediaController.getInstance().getPlaylist();
        if (isMyList()) {
            actionBarMenu = actionBarMenuCreateMenu;
            this.addItem = actionBarMenu.addItem(8, C2665R.drawable.msg_add);
        } else {
            actionBarMenu = actionBarMenuCreateMenu;
        }
        ActionBarMenuItem actionBarMenuItemSearchListener = actionBarMenu.addItem(0, C2665R.drawable.outline_header_search).setIsSearchField(true).setActionBarMenuItemSearchListener(new ActionBarMenuItem.ActionBarMenuItemSearchListener() { // from class: org.telegram.ui.Components.AudioPlayerAlert.17
            @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onSearchCollapse() {
                if (AudioPlayerAlert.this.searching) {
                    AudioPlayerAlert.this.searchWas = false;
                    AudioPlayerAlert.this.searching = false;
                    AudioPlayerAlert.this.setAllowNestedScroll(true);
                    AudioPlayerAlert.this.listAdapter.search(null);
                    if (AudioPlayerAlert.this.addItem != null) {
                        AudioPlayerAlert.this.addItem.setVisibility(0);
                    }
                }
            }

            @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onSearchExpand() {
                AudioPlayerAlert audioPlayerAlert = AudioPlayerAlert.this;
                audioPlayerAlert.searchOpenPosition = audioPlayerAlert.layoutManager.findLastVisibleItemPosition();
                View viewFindViewByPosition = AudioPlayerAlert.this.layoutManager.findViewByPosition(AudioPlayerAlert.this.searchOpenPosition);
                AudioPlayerAlert.this.searchOpenOffset = viewFindViewByPosition == null ? 0 : viewFindViewByPosition.getTop();
                AudioPlayerAlert.this.searching = true;
                AudioPlayerAlert.this.setAllowNestedScroll(false);
                AudioPlayerAlert.this.listAdapter.notifyDataSetChanged();
                if (AudioPlayerAlert.this.addItem != null) {
                    AudioPlayerAlert.this.addItem.setVisibility(8);
                }
            }

            @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onTextChanged(EditText editText) {
                int length = editText.length();
                AudioPlayerAlert audioPlayerAlert = AudioPlayerAlert.this;
                if (length > 0) {
                    audioPlayerAlert.listAdapter.search(editText.getText().toString());
                } else {
                    audioPlayerAlert.searchWas = false;
                    AudioPlayerAlert.this.listAdapter.search(null);
                }
            }
        });
        this.searchItem = actionBarMenuItemSearchListener;
        actionBarMenuItemSearchListener.setContentDescription(LocaleController.getString(C2665R.string.Search));
        EditTextBoldCursor searchField = this.searchItem.getSearchField();
        searchField.setHint(LocaleController.getString(C2665R.string.Search));
        int i8 = Theme.key_player_actionBarTitle;
        searchField.setTextColor(getThemedColor(i8));
        searchField.setHintTextColor(getThemedColor(Theme.key_player_time));
        searchField.setCursorColor(getThemedColor(i8));
        if (z2) {
            this.listView.setSections();
            setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray, resourcesProvider));
            this.actionBar.setAlpha(1.0f);
            f = 0.0f;
            this.actionBarBackground.setAlpha(0.0f);
            this.actionBarSlideProperty.set(this.actionBar, Float.valueOf(0.0f));
        } else {
            f = 0.0f;
        }
        this.listAdapter.setup();
        this.listAdapter.notifyDataSetChanged();
        this.actionBar.setTitle(LocaleController.getString(C2665R.string.AttachMusic));
        MessagesController.SavedMusicList savedMusicList2 = this.savedMusicList;
        if (savedMusicList2 != null) {
            long j = savedMusicList2.dialogId;
            long clientUserId = UserConfig.getInstance(this.currentAccount).getClientUserId();
            ActionBar actionBar2 = this.actionBar;
            if (j == clientUserId) {
                actionBar2.setTitle(LocaleController.getString(C2665R.string.ProfilePlaylistTitleMine));
            } else {
                actionBar2.setTitle(LocaleController.formatString(C2665R.string.ProfilePlaylistTitle, DialogObject.getShortName(this.savedMusicList.dialogId)));
            }
        } else if (playingMessageObject != null && !MediaController.getInstance().currentPlaylistIsGlobalSearch()) {
            long dialogId = playingMessageObject.getDialogId();
            boolean zIsEncryptedDialog = DialogObject.isEncryptedDialog(dialogId);
            int i9 = this.currentAccount;
            if (zIsEncryptedDialog) {
                TLRPC.EncryptedChat encryptedChat = MessagesController.getInstance(i9).getEncryptedChat(Integer.valueOf(DialogObject.getEncryptedChatId(dialogId)));
                if (encryptedChat != null && (user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(encryptedChat.user_id))) != null) {
                    this.actionBar.setTitle(ContactsController.formatName(user.first_name, user.last_name));
                }
            } else if (dialogId == UserConfig.getInstance(i9).getClientUserId()) {
                long savedDialogId = playingMessageObject.getSavedDialogId();
                ActionBar actionBar3 = this.actionBar;
                if (savedDialogId == UserObject.ANONYMOUS) {
                    actionBar3.setTitle(LocaleController.getString(C2665R.string.AnonymousForward));
                } else {
                    actionBar3.setTitle(LocaleController.getString(C2665R.string.SavedMessages));
                }
            } else {
                boolean zIsUserDialog = DialogObject.isUserDialog(dialogId);
                int i10 = this.currentAccount;
                if (zIsUserDialog) {
                    TLRPC.User user2 = MessagesController.getInstance(i10).getUser(Long.valueOf(dialogId));
                    if (user2 != null) {
                        this.actionBar.setTitle(ContactsController.formatName(user2.first_name, user2.last_name));
                    }
                } else {
                    TLRPC.Chat chat = MessagesController.getInstance(i10).getChat(Long.valueOf(-dialogId));
                    if (chat != null) {
                        this.actionBar.setTitle(chat.title);
                    }
                }
            }
        }
        if (isMyList()) {
            this.saveToProfileButton.setVisibility(8);
            this.unsaveFromProfileButton.setVisibility(8);
            ItemTouchHelper itemTouchHelper = new ItemTouchHelper(new ItemTouchHelper.Callback() { // from class: org.telegram.ui.Components.AudioPlayerAlert.18
                @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
                public void onSwiped(RecyclerView.ViewHolder viewHolder, int i11) {
                }

                @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
                public int getMovementFlags(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
                    if (viewHolder.getItemViewType() != 0) {
                        return 0;
                    }
                    return ItemTouchHelper.Callback.makeMovementFlags(3, 0);
                }

                @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
                public boolean onMove(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
                    int adapterPosition = viewHolder.getAdapterPosition();
                    int adapterPosition2 = viewHolder2.getAdapterPosition();
                    if (!AudioPlayerAlert.this.padWithItem) {
                        AudioPlayerAlert.this.savedMusicList.move(adapterPosition, adapterPosition2);
                    } else {
                        if (adapterPosition <= 0 || adapterPosition2 <= 0) {
                            return false;
                        }
                        AudioPlayerAlert.this.savedMusicList.move(adapterPosition - 1, adapterPosition2 - 1);
                    }
                    AudioPlayerAlert.this.playlist.clear();
                    AudioPlayerAlert.this.playlist.addAll(AudioPlayerAlert.this.savedMusicList.list);
                    AudioPlayerAlert.this.listAdapter.notifyItemMoved(adapterPosition, adapterPosition2);
                    return true;
                }

                @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
                public void onSelectedChanged(RecyclerView.ViewHolder viewHolder, int i11) {
                    if (viewHolder != null) {
                        AudioPlayerAlert.this.listView.hideSelector(false);
                    }
                    if (i11 != 0) {
                        AudioPlayerAlert.this.listView.cancelClickRunnables(false);
                        if (viewHolder != null) {
                            viewHolder.itemView.setPressed(true);
                        }
                    }
                    super.onSelectedChanged(viewHolder, i11);
                    if (viewHolder != null) {
                        viewHolder.itemView.setTag(C2665R.id.dragging, i11 == 2 ? Boolean.TRUE : null);
                    }
                }

                @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
                public void clearView(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
                    super.clearView(recyclerView, viewHolder);
                    viewHolder.itemView.setPressed(false);
                    viewHolder.itemView.setTag(C2665R.id.dragging, null);
                }
            });
            this.itemTouchHelper = itemTouchHelper;
            itemTouchHelper.attachToRecyclerView(this.listView);
        }
        this.containerView.addView(this.playerLayout, LayoutHelper.createFrame(-1, ((isMyList() || this.noforwards || playingMessageObject == null || playingMessageObject.isVoice()) ? 0 : 52) + 184, 83));
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.playerLayout.getLayoutParams();
        layoutParams.height = AndroidUtilities.dp(184 + ((isMyList() || this.noforwards || playingMessageObject == null || playingMessageObject.isVoice()) ? 0 : 52));
        this.playerLayout.setLayoutParams(layoutParams);
        this.containerView.addView(this.actionBar);
        FrameLayout frameLayout3 = new FrameLayout(context) { // from class: org.telegram.ui.Components.AudioPlayerAlert.19
            @Override // android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                if (AudioPlayerAlert.this.blurredView.getTag() != null) {
                    AudioPlayerAlert.this.showAlbumCover(false, true);
                }
                return true;
            }
        };
        this.blurredView = frameLayout3;
        frameLayout3.setAlpha(f);
        this.blurredView.setVisibility(4);
        getContainer().addView(this.blurredView);
        BackupImageView backupImageView = new BackupImageView(context);
        this.bigAlbumConver = backupImageView;
        backupImageView.setAspectFit(true);
        this.bigAlbumConver.setRoundRadius(AndroidUtilities.dp(24.0f));
        this.bigAlbumConver.setScaleX(0.9f);
        this.bigAlbumConver.setScaleY(0.9f);
        this.blurredView.addView(this.bigAlbumConver, LayoutHelper.createFrame(-1, -1.0f, 51, 30.0f, 30.0f, 30.0f, 30.0f));
        updateTitle(false);
        updateRepeatButton();
        updateEmptyView();
    }

    /* JADX INFO: renamed from: org.telegram.ui.Components.AudioPlayerAlert$8 */
    public class C34738 extends ClippingTextViewSwitcher {
        final /* synthetic */ Context val$context;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C34738(Context context, Context context2) {
            super(context);
            this.val$context = context2;
        }

        @Override // org.telegram.ui.Components.AudioPlayerAlert.ClippingTextViewSwitcher
        public TextView createTextView() {
            final MarqueeTextView marqueeTextView = new MarqueeTextView(this.val$context);
            marqueeTextView.setTextColor(AudioPlayerAlert.this.getThemedColor(Theme.key_player_time));
            marqueeTextView.setTextSize(1, 13.0f);
            marqueeTextView.setEllipsize(TextUtils.TruncateAt.END);
            marqueeTextView.setSingleLine(true);
            marqueeTextView.setPadding(AndroidUtilities.dp(6.0f), 0, AndroidUtilities.dp(6.0f), AndroidUtilities.dp(1.0f));
            marqueeTextView.setBackground(Theme.createRadSelectorDrawable(AudioPlayerAlert.this.getThemedColor(Theme.key_listSelector), AndroidUtilities.dp(4.0f), AndroidUtilities.dp(4.0f)));
            marqueeTextView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AudioPlayerAlert$8$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$createTextView$0(marqueeTextView, view);
                }
            });
            return marqueeTextView;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$createTextView$0(TextView textView, View view) {
            if (MessagesController.getInstance(((BottomSheet) AudioPlayerAlert.this).currentAccount).getTotalDialogsCount() <= 10 || TextUtils.isEmpty(textView.getText().toString())) {
                return;
            }
            String string = textView.getText().toString();
            if (AudioPlayerAlert.this.parentActivity.getActionBarLayout().getLastFragment() instanceof DialogsActivity) {
                DialogsActivity dialogsActivity = (DialogsActivity) AudioPlayerAlert.this.parentActivity.getActionBarLayout().getLastFragment();
                if (!dialogsActivity.onlyDialogsAdapter()) {
                    dialogsActivity.setShowSearch(string, 3);
                    AudioPlayerAlert.this.lambda$new$0();
                    return;
                }
            }
            DialogsActivity dialogsActivity2 = new DialogsActivity(null);
            dialogsActivity2.setSearchString(string);
            dialogsActivity2.setInitialSearchType(3);
            AudioPlayerAlert.this.parentActivity.presentFragment(dialogsActivity2, false, false);
            AudioPlayerAlert.this.lambda$new$0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(DynamicAnimation dynamicAnimation, float f, float f2) {
        this.seekBarView.setBufferedProgress(f / 1000.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(int i) {
        if (i >= 0) {
            float[] fArr = speeds;
            if (i >= fArr.length) {
                return;
            }
            MediaController.getInstance().setPlaybackSpeed(true, fArr[i]);
            updatePlaybackButton(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(Float f, Boolean bool) {
        this.slidingSpeed = !bool.booleanValue();
        MediaController.getInstance().setPlaybackSpeed(true, this.speedSlider.getSpeed(f.floatValue()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(float[] fArr, View view) {
        float playbackSpeed = MediaController.getInstance().getPlaybackSpeed(true);
        int i = 0;
        while (true) {
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
        MediaController.getInstance().setPlaybackSpeed(true, fArr[i2 < fArr.length ? i2 : 0]);
        checkSpeedHint();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$4(Theme.ResourcesProvider resourcesProvider, View view) {
        this.speedSlider.setSpeed(MediaController.getInstance().getPlaybackSpeed(true), false);
        this.speedSlider.setBackgroundColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuBackground, resourcesProvider));
        updatePlaybackButton(false);
        this.playbackSpeedButton.setDimMenu(0.15f);
        this.playbackSpeedButton.toggleSubMenu(this.speedSlider, null);
        MessagesController.getGlobalNotificationsSettings().edit().putInt("speedhint", -15).apply();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$5(View view) {
        updateSubMenu();
        this.repeatButton.toggleSubMenu();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$6(int i) {
        if (i == 1 || i == 2) {
            boolean z = SharedConfig.playOrderReversed;
            if ((z && i == 1) || (SharedConfig.shuffleMusic && i == 2)) {
                MediaController.getInstance().setPlaybackOrderType(0);
            } else {
                MediaController.getInstance().setPlaybackOrderType(i);
            }
            this.listAdapter.notifyDataSetChanged();
            if (z != SharedConfig.playOrderReversed) {
                this.listView.stopScroll();
                scrollToCurrentSong(false);
            }
        } else if (i == 4) {
            if (SharedConfig.repeatMode == 1) {
                SharedConfig.setRepeatMode(0);
            } else {
                SharedConfig.setRepeatMode(1);
            }
        } else if (SharedConfig.repeatMode == 2) {
            SharedConfig.setRepeatMode(0);
        } else {
            SharedConfig.setRepeatMode(2);
        }
        updateRepeatButton();
    }

    /* JADX INFO: renamed from: org.telegram.ui.Components.AudioPlayerAlert$12, reason: invalid class name */
    public class AnonymousClass12 extends RLottieImageView {
        private final Runnable backSeek;
        long lastTime;
        long lastUpdateTime;
        int pressedCount;
        private final Runnable pressedRunnable;
        long startTime;
        float startX;
        float startY;
        final /* synthetic */ float val$touchSlop;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass12(Context context, float f) {
            super(context);
            this.val$touchSlop = f;
            this.pressedCount = 0;
            this.pressedRunnable = new Runnable() { // from class: org.telegram.ui.Components.AudioPlayerAlert.12.1
                @Override // java.lang.Runnable
                public void run() {
                    AnonymousClass12 anonymousClass12 = AnonymousClass12.this;
                    int i = anonymousClass12.pressedCount + 1;
                    anonymousClass12.pressedCount = i;
                    if (i != 1) {
                        if (i == 2) {
                            AndroidUtilities.runOnUIThread(this, 2000L);
                            return;
                        }
                        return;
                    }
                    AudioPlayerAlert audioPlayerAlert = AudioPlayerAlert.this;
                    audioPlayerAlert.rewindingState = -1;
                    audioPlayerAlert.rewindingProgress = MediaController.getInstance().getPlayingMessageObject().audioProgress;
                    AnonymousClass12.this.lastTime = System.currentTimeMillis();
                    AndroidUtilities.runOnUIThread(this, 2000L);
                    AndroidUtilities.runOnUIThread(AnonymousClass12.this.backSeek);
                }
            };
            this.backSeek = new Runnable() { // from class: org.telegram.ui.Components.AudioPlayerAlert.12.2
                @Override // java.lang.Runnable
                public void run() {
                    long duration = MediaController.getInstance().getDuration();
                    if (duration == 0 || duration == -9223372036854775807L) {
                        AnonymousClass12.this.lastTime = System.currentTimeMillis();
                        return;
                    }
                    float f2 = AudioPlayerAlert.this.rewindingProgress;
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    AnonymousClass12 anonymousClass12 = AnonymousClass12.this;
                    long j = jCurrentTimeMillis - anonymousClass12.lastTime;
                    anonymousClass12.lastTime = jCurrentTimeMillis;
                    long j2 = jCurrentTimeMillis - anonymousClass12.lastUpdateTime;
                    int i = anonymousClass12.pressedCount;
                    float f3 = ((long) ((f2 * r0) - (j * (i == 1 ? 3L : i == 2 ? 6L : 12L)))) / duration;
                    if (f3 < 0.0f) {
                        f3 = 0.0f;
                    }
                    AudioPlayerAlert.this.rewindingProgress = f3;
                    MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
                    if (playingMessageObject != null && (playingMessageObject.isMusic() || playingMessageObject.isVoice())) {
                        AudioPlayerAlert.this.updateProgress(playingMessageObject);
                    }
                    AnonymousClass12 anonymousClass122 = AnonymousClass12.this;
                    AudioPlayerAlert audioPlayerAlert = AudioPlayerAlert.this;
                    if (audioPlayerAlert.rewindingState != -1 || anonymousClass122.pressedCount <= 0) {
                        return;
                    }
                    if (j2 > 200 || audioPlayerAlert.rewindingProgress == 0.0f) {
                        anonymousClass122.lastUpdateTime = jCurrentTimeMillis;
                        if (audioPlayerAlert.rewindingProgress == 0.0f) {
                            MediaController.getInstance().seekToProgress(MediaController.getInstance().getPlayingMessageObject(), 0.0f);
                            MediaController.getInstance().pauseByRewind();
                        } else {
                            MediaController.getInstance().seekToProgress(MediaController.getInstance().getPlayingMessageObject(), f3);
                        }
                    }
                    AnonymousClass12 anonymousClass123 = AnonymousClass12.this;
                    if (anonymousClass123.pressedCount <= 0 || AudioPlayerAlert.this.rewindingProgress <= 0.0f) {
                        return;
                    }
                    AndroidUtilities.runOnUIThread(anonymousClass123.backSeek, 16L);
                }
            };
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x0050  */
        @Override // android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public boolean onTouchEvent(MotionEvent motionEvent) {
            if (AudioPlayerAlert.this.seekBarView.isDragging() || AudioPlayerAlert.this.rewindingState == 1) {
                return false;
            }
            float rawX = motionEvent.getRawX();
            float rawY = motionEvent.getRawY();
            int action = motionEvent.getAction();
            if (action == 0) {
                this.startX = rawX;
                this.startY = rawY;
                this.startTime = System.currentTimeMillis();
                AudioPlayerAlert.this.rewindingState = 0;
                AndroidUtilities.runOnUIThread(this.pressedRunnable, 300L);
                if (getBackground() != null) {
                    getBackground().setHotspot(this.startX, this.startY);
                }
                setPressed(true);
            } else if (action == 1) {
                AndroidUtilities.cancelRunOnUIThread(this.pressedRunnable);
                AndroidUtilities.cancelRunOnUIThread(this.backSeek);
                if (AudioPlayerAlert.this.rewindingState == 0 && motionEvent.getAction() == 1 && System.currentTimeMillis() - this.startTime < 300) {
                    MediaController.getInstance().playPreviousMessage();
                    AudioPlayerAlert.this.prevButton.setProgress(0.0f);
                    AudioPlayerAlert.this.prevButton.playAnimation();
                }
                if (this.pressedCount > 0) {
                    this.lastUpdateTime = 0L;
                    this.backSeek.run();
                    MediaController.getInstance().resumeByRewind();
                }
                AudioPlayerAlert.this.rewindingProgress = -1.0f;
                setPressed(false);
                AudioPlayerAlert.this.rewindingState = 0;
                this.pressedCount = 0;
            } else if (action == 2) {
                float f = rawX - this.startX;
                float f2 = rawY - this.startY;
                float f3 = (f * f) + (f2 * f2);
                float f4 = this.val$touchSlop;
                if (f3 > f4 * f4 && AudioPlayerAlert.this.rewindingState == 0) {
                    AndroidUtilities.cancelRunOnUIThread(this.pressedRunnable);
                    setPressed(false);
                }
            } else if (action == 3) {
            }
            return true;
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.addAction(16);
        }
    }

    public static /* synthetic */ void $r8$lambda$XilP3fHirgShhTqpnFmRilx2Dkw(View view) {
        if (MediaController.getInstance().isDownloadingCurrentMessage()) {
            return;
        }
        if (MediaController.getInstance().isMessagePaused()) {
            MediaController.getInstance().playMessage(MediaController.getInstance().getPlayingMessageObject());
        } else {
            MediaController.getInstance().lambda$startAudioAgain$7(MediaController.getInstance().getPlayingMessageObject());
        }
    }

    /* JADX INFO: renamed from: org.telegram.ui.Components.AudioPlayerAlert$13, reason: invalid class name */
    public class AnonymousClass13 extends RLottieImageView {
        boolean pressed;
        private final Runnable pressedRunnable;
        float startX;
        float startY;
        final /* synthetic */ float val$touchSlop;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass13(Context context, float f) {
            super(context);
            this.val$touchSlop = f;
            this.pressedRunnable = new Runnable() { // from class: org.telegram.ui.Components.AudioPlayerAlert.13.1
                @Override // java.lang.Runnable
                public void run() {
                    if (MediaController.getInstance().getPlayingMessageObject() == null) {
                        return;
                    }
                    AnonymousClass13 anonymousClass13 = AnonymousClass13.this;
                    AudioPlayerAlert audioPlayerAlert = AudioPlayerAlert.this;
                    int i = audioPlayerAlert.rewindingForwardPressedCount + 1;
                    audioPlayerAlert.rewindingForwardPressedCount = i;
                    if (i != 1) {
                        if (i == 2) {
                            MediaController.getInstance().setPlaybackSpeed(true, 7.0f);
                            AndroidUtilities.runOnUIThread(this, 2000L);
                            return;
                        } else {
                            MediaController.getInstance().setPlaybackSpeed(true, 13.0f);
                            return;
                        }
                    }
                    anonymousClass13.pressed = true;
                    audioPlayerAlert.rewindingState = 1;
                    boolean zIsMessagePaused = MediaController.getInstance().isMessagePaused();
                    AnonymousClass13 anonymousClass132 = AnonymousClass13.this;
                    if (zIsMessagePaused) {
                        AudioPlayerAlert.this.startForwardRewindingSeek();
                    } else {
                        AudioPlayerAlert audioPlayerAlert2 = AudioPlayerAlert.this;
                        if (audioPlayerAlert2.rewindingState == 1) {
                            AndroidUtilities.cancelRunOnUIThread(audioPlayerAlert2.forwardSeek);
                            AudioPlayerAlert.this.lastUpdateRewindingPlayerTime = 0L;
                        }
                    }
                    MediaController.getInstance().setPlaybackSpeed(true, 4.0f);
                    AndroidUtilities.runOnUIThread(this, 2000L);
                }
            };
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x004d  */
        @Override // android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public boolean onTouchEvent(MotionEvent motionEvent) {
            if (AudioPlayerAlert.this.seekBarView.isDragging() || AudioPlayerAlert.this.rewindingState == -1) {
                return false;
            }
            float rawX = motionEvent.getRawX();
            float rawY = motionEvent.getRawY();
            int action = motionEvent.getAction();
            if (action == 0) {
                this.pressed = false;
                this.startX = rawX;
                this.startY = rawY;
                AndroidUtilities.runOnUIThread(this.pressedRunnable, 300L);
                if (getBackground() != null) {
                    getBackground().setHotspot(this.startX, this.startY);
                }
                setPressed(true);
            } else if (action == 1) {
                if (!this.pressed && motionEvent.getAction() == 1 && isPressed()) {
                    MediaController.getInstance().playNextMessage();
                    AudioPlayerAlert.this.nextButton.setProgress(0.0f);
                    AudioPlayerAlert.this.nextButton.playAnimation();
                }
                AndroidUtilities.cancelRunOnUIThread(this.pressedRunnable);
                if (AudioPlayerAlert.this.rewindingForwardPressedCount > 0) {
                    MediaController.getInstance().setPlaybackSpeed(true, 1.0f);
                    if (MediaController.getInstance().isMessagePaused()) {
                        AudioPlayerAlert audioPlayerAlert = AudioPlayerAlert.this;
                        audioPlayerAlert.lastUpdateRewindingPlayerTime = 0L;
                        audioPlayerAlert.forwardSeek.run();
                    }
                }
                AudioPlayerAlert.this.rewindingState = 0;
                setPressed(false);
                AudioPlayerAlert audioPlayerAlert2 = AudioPlayerAlert.this;
                audioPlayerAlert2.rewindingForwardPressedCount = 0;
                audioPlayerAlert2.rewindingProgress = -1.0f;
            } else if (action == 2) {
                float f = rawX - this.startX;
                float f2 = rawY - this.startY;
                float f3 = (f * f) + (f2 * f2);
                float f4 = this.val$touchSlop;
                if (f3 > f4 * f4 && !this.pressed) {
                    AndroidUtilities.cancelRunOnUIThread(this.pressedRunnable);
                    setPressed(false);
                }
            } else if (action == 3) {
            }
            return true;
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.addAction(16);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$10(final Theme.ResourcesProvider resourcesProvider, View view) {
        final BaseFragment baseFragment = this.parentActivity.getActionBarLayout().getFragmentStack().get(this.parentActivity.getActionBarLayout().getFragmentStack().size() - 1);
        Bundle bundle = new Bundle();
        bundle.putBoolean("onlySelect", true);
        bundle.putInt("dialogsType", 0);
        bundle.putBoolean("allowGlobalSearch", false);
        bundle.putBoolean("canSelectTopics", true);
        DialogsActivity dialogsActivity = new DialogsActivity(bundle);
        dialogsActivity.setDelegate(new DialogsActivity.DialogsActivityDelegate() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda24
            @Override // org.telegram.ui.DialogsActivity.DialogsActivityDelegate
            public final boolean didSelectDialogs(DialogsActivity dialogsActivity2, ArrayList arrayList, CharSequence charSequence, boolean z, boolean z2, int i, int i2, TopicsFragment topicsFragment) {
                return this.f$0.lambda$new$9(resourcesProvider, baseFragment, dialogsActivity2, arrayList, charSequence, z, z2, i, i2, topicsFragment);
            }
        });
        this.parentActivity.lambda$runLinkRequest$102(dialogsActivity);
        lambda$new$0();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$9(final Theme.ResourcesProvider resourcesProvider, BaseFragment baseFragment, DialogsActivity dialogsActivity, ArrayList arrayList, CharSequence charSequence, boolean z, boolean z2, int i, int i2, TopicsFragment topicsFragment) {
        ChatUtils.getInstance().setLikeDialog(((MessagesStorage.TopicKey) arrayList.get(0)).dialogId);
        final AudioPlayerAlert audioPlayerAlert = new AudioPlayerAlert(this.parentActivity, resourcesProvider);
        baseFragment.showDialog(audioPlayerAlert);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda43
            @Override // java.lang.Runnable
            public final void run() {
                BulletinFactory.of((FrameLayout) this.f$0.getContainerView(), resourcesProvider).createSimpleBulletin(C2665R.raw.ic_save_to_music, LocaleController.formatString(C2665R.string.ChannelToSaveChanged, ChatUtils.getInstance().getName(ChatUtils.getInstance().getLikeDialog()))).show();
            }
        }, 450L);
        dialogsActivity.finishFragment();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$11(Theme.ResourcesProvider resourcesProvider, View view) {
        view.performHapticFeedback(3, 2);
        SendMessagesHelper.getInstance(this.currentAccount).sendMessage(new ArrayList<>(ImageCapture$$ExternalSyntheticBackport1.m73m(new Object[]{MediaController.getInstance().getPlayingMessageObject()})), ChatUtils.getInstance(this.currentAccount).getLikeDialog(), true, true, false, 0, 0L);
        BulletinFactory.of((FrameLayout) this.containerView, resourcesProvider).createSimpleBulletin(C2665R.raw.ic_save_to_music, LocaleController.formatString(C2665R.string.TrackSaved, ChatUtils.getInstance().getName(ChatUtils.getInstance().getLikeDialog()))).show();
    }

    /* JADX INFO: renamed from: $r8$lambda$01ihfy-KateZ7gOjmiqJ8twbqo0, reason: not valid java name */
    public static /* synthetic */ boolean m9914$r8$lambda$01ihfyKateZ7gOjmiqJ8twbqo0(View view, MotionEvent motionEvent) {
        return true;
    }

    public static /* synthetic */ void $r8$lambda$XTTahnJaC6sUXevw9iamPxqtjd8(View view, int i) {
        if (view instanceof AudioPlayerCell) {
            ((AudioPlayerCell) view).didPressedButton();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$14(View view, int i) {
        if (!(view instanceof AudioPlayerCell) || isMyList()) {
            return false;
        }
        AudioPlayerCell audioPlayerCell = (AudioPlayerCell) view;
        showOptions(audioPlayerCell, audioPlayerCell.getMessageObject());
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$16(final Theme.ResourcesProvider resourcesProvider, View view) {
        MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
        if (playingMessageObject == null || this.parentActivity == null) {
            return;
        }
        saveToProfile(playingMessageObject, true, new Runnable() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda25
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$15(resourcesProvider);
            }
        }, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$15(Theme.ResourcesProvider resourcesProvider) {
        setVisibleInProfile(true);
        BulletinFactory.of((FrameLayout) this.containerView, resourcesProvider).createSimpleBulletin(C2665R.raw.saved_messages, LocaleController.getString(C2665R.string.AudioSaveToMyProfileSaved)).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$18(final Theme.ResourcesProvider resourcesProvider, View view) {
        MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
        if (playingMessageObject == null || this.parentActivity == null) {
            return;
        }
        saveToProfile(playingMessageObject, false, new Runnable() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda21
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$17(resourcesProvider);
            }
        }, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$17(Theme.ResourcesProvider resourcesProvider) {
        setVisibleInProfile(false);
        BulletinFactory.of((FrameLayout) this.containerView, resourcesProvider).createSimpleBulletin(C2665R.raw.ic_delete, LocaleController.getString(C2665R.string.AudioSaveToMyProfileUnsaved)).show();
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet
    public int getContainerViewHeight() {
        if (this.playerLayout == null) {
            return 0;
        }
        if (this.playlist.size() <= 1) {
            return this.playerLayout.getMeasuredHeight() + this.backgroundPaddingTop;
        }
        int iDp = AndroidUtilities.dp(13.0f);
        int translationY = (int) (((this.scrollOffsetY - this.backgroundPaddingTop) - iDp) + this.listView.getTranslationY());
        if (this.backgroundPaddingTop + translationY < ActionBar.getCurrentActionBarHeight()) {
            float fDp = iDp + AndroidUtilities.dp(4.0f);
            translationY -= (int) ((ActionBar.getCurrentActionBarHeight() - fDp) * Math.min(1.0f, ((ActionBar.getCurrentActionBarHeight() - translationY) - this.backgroundPaddingTop) / fDp));
        }
        return this.container.getMeasuredHeight() - (translationY + AndroidUtilities.statusBarHeight);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startForwardRewindingSeek() {
        if (this.rewindingState == 1) {
            this.lastRewindingTime = System.currentTimeMillis();
            this.rewindingProgress = MediaController.getInstance().getPlayingMessageObject().audioProgress;
            AndroidUtilities.cancelRunOnUIThread(this.forwardSeek);
            AndroidUtilities.runOnUIThread(this.forwardSeek);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateEmptyViewPosition() {
        if (this.emptyView.getVisibility() != 0) {
            return;
        }
        int iDp = this.playerLayout.getVisibility() == 0 ? AndroidUtilities.dp(150.0f) : -AndroidUtilities.dp(30.0f);
        this.emptyView.setTranslationY(((r1.getMeasuredHeight() - this.containerView.getMeasuredHeight()) - iDp) / 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateEmptyView() {
        this.emptyView.setVisibility((this.searching && this.listAdapter.getItemCount() == 0) ? 0 : 8);
        updateEmptyViewPosition();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean scrollToCurrentSong(boolean z) {
        MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
        if (playingMessageObject != null) {
            if (z) {
                int childCount = this.listView.getChildCount();
                int i = 0;
                while (true) {
                    if (i >= childCount) {
                        break;
                    }
                    View childAt = this.listView.getChildAt(i);
                    if (!(childAt instanceof AudioPlayerCell) || ((AudioPlayerCell) childAt).getMessageObject() != playingMessageObject) {
                        i++;
                    } else if (childAt.getBottom() > this.listView.getMeasuredHeight()) {
                        break;
                    }
                }
            } else {
                int iIndexOf = this.playlist.indexOf(playingMessageObject);
                if (this.padWithItem) {
                    iIndexOf++;
                }
                if (iIndexOf >= 0) {
                    boolean z2 = SharedConfig.playOrderReversed;
                    LinearLayoutManager linearLayoutManager = this.layoutManager;
                    if (z2) {
                        linearLayoutManager.scrollToPosition(iIndexOf);
                        return true;
                    }
                    linearLayoutManager.scrollToPosition(this.playlist.size() - iIndexOf);
                    return true;
                }
            }
        }
        return false;
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet
    public boolean onCustomMeasure(View view, int i, int i2) {
        if (view != this.blurredView) {
            return false;
        }
        this.blurredView.measure(View.MeasureSpec.makeMeasureSpec(getContainer().getMeasuredWidth(), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(getContainer().getMeasuredHeight(), TLObject.FLAG_30));
        return true;
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet
    public boolean onCustomLayout(View view, int i, int i2, int i3, int i4) {
        FrameLayout frameLayout = this.blurredView;
        if (view != frameLayout) {
            return false;
        }
        frameLayout.layout(0, 0, frameLayout.getMeasuredWidth(), this.blurredView.getMeasuredHeight());
        return true;
    }

    private void setMenuItemChecked(ActionBarMenuSubItem actionBarMenuSubItem, boolean z) {
        if (z) {
            int i = Theme.key_player_buttonActive;
            actionBarMenuSubItem.setTextColor(getThemedColor(i));
            actionBarMenuSubItem.setIconColor(getThemedColor(i));
        } else {
            int i2 = Theme.key_actionBarDefaultSubmenuItem;
            actionBarMenuSubItem.setTextColor(getThemedColor(i2));
            actionBarMenuSubItem.setIconColor(getThemedColor(i2));
        }
    }

    private void checkSpeedHint() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.lastPlaybackClick > 300) {
            int i = MessagesController.getGlobalNotificationsSettings().getInt("speedhint", 0) + 1;
            if (i > 2) {
                i = -10;
            }
            MessagesController.getGlobalNotificationsSettings().edit().putInt("speedhint", i).apply();
            if (i >= 0) {
                showSpeedHint();
            }
        }
        this.lastPlaybackClick = jCurrentTimeMillis;
    }

    private void showSpeedHint() {
        if (this.containerView != null) {
            HintView hintView = new HintView(getContext(), 5, false) { // from class: org.telegram.ui.Components.AudioPlayerAlert.20
                @Override // android.view.View
                public void setVisibility(int i) {
                    super.setVisibility(i);
                    if (i != 0) {
                        try {
                            ((ViewGroup) getParent()).removeView(this);
                        } catch (Exception unused) {
                        }
                    }
                }
            };
            this.speedHintView = hintView;
            hintView.setExtraTranslationY(AndroidUtilities.dp(6.0f));
            this.speedHintView.setText(LocaleController.getString(C2665R.string.SpeedHint));
            this.playerLayout.addView(this.speedHintView, LayoutHelper.createFrame(-2, -2.0f, 48, 0.0f, 0.0f, 6.0f, 0.0f));
            this.speedHintView.showForView(this.playbackSpeedButton, true);
        }
    }

    private void updateSubMenu() {
        setMenuItemChecked(this.shuffleListItem, SharedConfig.shuffleMusic);
        setMenuItemChecked(this.reverseOrderItem, SharedConfig.playOrderReversed);
        setMenuItemChecked(this.repeatListItem, SharedConfig.repeatMode == 1);
        setMenuItemChecked(this.repeatSongItem, SharedConfig.repeatMode == 2);
    }

    private boolean equals(float f, float f2) {
        return Math.abs(f - f2) < 0.05f;
    }

    private void updatePlaybackButton(boolean z) {
        if (this.playbackSpeedButton == null) {
            return;
        }
        float playbackSpeed = MediaController.getInstance().getPlaybackSpeed(true);
        this.speedIcon.setValue(playbackSpeed, z);
        this.speedSlider.setSpeed(playbackSpeed, z);
        updateColors();
        boolean z2 = this.slidingSpeed;
        this.slidingSpeed = false;
        for (int i = 0; i < this.speedItems.length; i++) {
            if (!z2 && equals(playbackSpeed, speeds[i])) {
                ActionBarMenuSubItem actionBarMenuSubItem = this.speedItems[i];
                int i2 = Theme.key_featuredStickers_addButtonPressed;
                actionBarMenuSubItem.setColors(getThemedColor(i2), getThemedColor(i2));
            } else {
                ActionBarMenuSubItem actionBarMenuSubItem2 = this.speedItems[i];
                int i3 = Theme.key_actionBarDefaultSubmenuItem;
                actionBarMenuSubItem2.setColors(getThemedColor(i3), getThemedColor(i3));
            }
        }
    }

    public void updateColors() {
        if (this.playbackSpeedButton != null) {
            int themedColor = getThemedColor(!equals(MediaController.getInstance().getPlaybackSpeed(true), 1.0f) ? Theme.key_featuredStickers_addButtonPressed : Theme.key_inappPlayerClose);
            SpeedIconDrawable speedIconDrawable = this.speedIcon;
            if (speedIconDrawable != null) {
                speedIconDrawable.setColor(themedColor);
            }
            this.playbackSpeedButton.setBackground(Theme.createSelectorDrawable(themedColor & 436207615, 1, AndroidUtilities.dp(14.0f)));
        }
        ActionBarMenuSubItem actionBarMenuSubItem = this.castItem;
        if (actionBarMenuSubItem != null) {
            CastMediaRouteButton castMediaRouteButton = this.castItemButton;
            boolean z = castMediaRouteButton != null && castMediaRouteButton.isConnected();
            int themedColor2 = getThemedColor(Theme.key_actionBarDefaultSubmenuItem);
            int themedColor3 = getThemedColor(Theme.key_actionBarDefaultSubmenuItemIcon);
            int i = Theme.key_featuredStickers_addButton;
            actionBarMenuSubItem.setEnabledByColor(z, themedColor2, themedColor3, getThemedColor(i));
            ActionBarMenuSubItem actionBarMenuSubItem2 = this.castItem;
            CastMediaRouteButton castMediaRouteButton2 = this.castItemButton;
            actionBarMenuSubItem2.setSelectorColor((castMediaRouteButton2 == null || !castMediaRouteButton2.isConnected()) ? getThemedColor(Theme.key_listSelector) : Theme.multAlpha(getThemedColor(i), 0.1f));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSubItemClick(int i) {
        LaunchActivity launchActivity;
        final MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
        if (playingMessageObject == null || (launchActivity = this.parentActivity) == null) {
            return;
        }
        if (i == 1) {
            forward(playingMessageObject, false);
            return;
        }
        if (i == 9) {
            forward(playingMessageObject, true);
            return;
        }
        if (i == 2) {
            share(playingMessageObject);
            return;
        }
        if (i != 4) {
            if (i == 5) {
                saveToMusic(playingMessageObject);
                return;
            }
            if (i == 6) {
                ChromecastController.getInstance().setCurrentMediaAndCastIfNeeded(MediaController.getInstance().getCurrentChromecastMedia());
                this.castItemButton.performClick();
                return;
            } else if (i == 7) {
                saveToProfile(playingMessageObject, false, new Runnable() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda22
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onSubItemClick$19(playingMessageObject);
                    }
                }, false);
                return;
            } else {
                if (i == 8) {
                    new SelectAudioAlert(getContext(), true, null, new Utilities.Callback() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda23
                        @Override // org.telegram.messenger.Utilities.Callback
                        public final void run(Object obj) {
                            this.f$0.lambda$onSubItemClick$23((MessageObject) obj);
                        }
                    }, null).withoutSavedMusic().show();
                    return;
                }
                return;
            }
        }
        int i2 = UserConfig.selectedAccount;
        int i3 = this.currentAccount;
        if (i2 != i3) {
            launchActivity.switchToAccount(i3, true);
        }
        Bundle bundle = new Bundle();
        long dialogId = playingMessageObject.getDialogId();
        if (DialogObject.isEncryptedDialog(dialogId)) {
            bundle.putInt("enc_id", DialogObject.getEncryptedChatId(dialogId));
        } else if (DialogObject.isUserDialog(dialogId)) {
            bundle.putLong("user_id", dialogId);
        } else {
            TLRPC.Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-dialogId));
            if (chat != null && chat.migrated_to != null) {
                bundle.putLong("migrated_to", dialogId);
                dialogId = -chat.migrated_to.channel_id;
            }
            bundle.putLong("chat_id", -dialogId);
        }
        bundle.putInt("message_id", playingMessageObject.getId());
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.closeChats, new Object[0]);
        this.parentActivity.presentFragment(new ChatActivity(bundle), false, false);
        lambda$new$0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onSubItemClick$19(MessageObject messageObject) {
        MessagesController.SavedMusicList savedMusicList = this.savedMusicList;
        if (savedMusicList != null) {
            savedMusicList.remove(messageObject);
            if (this.savedMusicList.list.isEmpty()) {
                MediaController.getInstance().cleanup();
                lambda$new$0();
            } else {
                NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.musicListLoaded, this.savedMusicList);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onSubItemClick$23(MessageObject messageObject) {
        final TLRPC.Document document;
        if (messageObject == null || this.savedMusicList == null || (document = messageObject.getDocument()) == null) {
            return;
        }
        if (document.id != 0) {
            TLRPC.TL_account_saveMusic tL_account_saveMusic = new TLRPC.TL_account_saveMusic();
            TLRPC.TL_inputDocument tL_inputDocument = new TLRPC.TL_inputDocument();
            tL_account_saveMusic.id = tL_inputDocument;
            tL_inputDocument.id = document.id;
            tL_inputDocument.access_hash = document.access_hash;
            tL_inputDocument.file_reference = document.file_reference;
            MessagesController.SavedMusicList savedMusicList = this.savedMusicList;
            if (savedMusicList != null) {
                savedMusicList.add(document);
            }
            this.playlist.clear();
            this.playlist.addAll(this.savedMusicList.list);
            this.listAdapter.notifyDataSetChanged();
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_account_saveMusic, null);
            return;
        }
        final AlertDialog alertDialog = new AlertDialog(getContext(), 3);
        alertDialog.showDelayed(180L);
        File file = new File(messageObject.messageOwner.attachPath);
        if (file.exists()) {
            FileLoader.getInstance(this.currentAccount).uploadFile(file.getAbsolutePath(), new Utilities.Callback() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda47
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$onSubItemClick$22(alertDialog, document, (TLRPC.InputFile) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onSubItemClick$22(final AlertDialog alertDialog, TLRPC.Document document, TLRPC.InputFile inputFile) {
        if (inputFile == null) {
            alertDialog.dismiss();
            return;
        }
        TLRPC.TL_messages_uploadMedia tL_messages_uploadMedia = new TLRPC.TL_messages_uploadMedia();
        tL_messages_uploadMedia.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(UserConfig.getInstance(this.currentAccount).getClientUserId());
        TLRPC.TL_inputMediaUploadedDocument tL_inputMediaUploadedDocument = new TLRPC.TL_inputMediaUploadedDocument();
        tL_messages_uploadMedia.media = tL_inputMediaUploadedDocument;
        tL_inputMediaUploadedDocument.file = inputFile;
        tL_inputMediaUploadedDocument.mime_type = document.mime_type;
        tL_inputMediaUploadedDocument.attributes.addAll(document.attributes);
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_messages_uploadMedia, new RequestDelegate() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda57
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$onSubItemClick$21(alertDialog, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onSubItemClick$21(final AlertDialog alertDialog, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda58
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onSubItemClick$20(alertDialog, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onSubItemClick$20(AlertDialog alertDialog, TLObject tLObject) {
        alertDialog.dismiss();
        if (tLObject instanceof TLRPC.TL_messageMediaDocument) {
            TLRPC.TL_account_saveMusic tL_account_saveMusic = new TLRPC.TL_account_saveMusic();
            TLRPC.TL_inputDocument tL_inputDocument = new TLRPC.TL_inputDocument();
            tL_account_saveMusic.id = tL_inputDocument;
            TLRPC.Document document = ((TLRPC.TL_messageMediaDocument) tLObject).document;
            tL_inputDocument.id = document.id;
            tL_inputDocument.access_hash = document.access_hash;
            tL_inputDocument.file_reference = document.file_reference;
            MessagesController.SavedMusicList savedMusicList = this.savedMusicList;
            if (savedMusicList != null) {
                savedMusicList.add(document);
            }
            this.playlist.clear();
            this.playlist.addAll(this.savedMusicList.list);
            this.listAdapter.notifyDataSetChanged();
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_account_saveMusic, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showAlbumCover$24(Bitmap bitmap, Bitmap bitmap2) {
        this.blurredView.setBackground(new BitmapDrawable(bitmap));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showAlbumCover(boolean z, boolean z2) {
        FrameLayout frameLayout = this.blurredView;
        if (z) {
            if (frameLayout.getVisibility() == 0 || this.blurredAnimationInProgress || this.noCover) {
                return;
            }
            this.blurredView.setTag(1);
            this.bigAlbumConver.setImageBitmap(this.coverContainer.getImageReceiver().getBitmap());
            this.blurredAnimationInProgress = true;
            ScrimOptions.makeGlobalBlurBitmaps(new Utilities.Callback2() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda3
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.lambda$showAlbumCover$24((Bitmap) obj, (Bitmap) obj2);
                }
            });
            this.blurredView.setVisibility(0);
            this.blurredView.animate().alpha(1.0f).setDuration(180L).setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.AudioPlayerAlert.21
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    AudioPlayerAlert.this.blurredAnimationInProgress = false;
                }
            }).start();
            this.bigAlbumConver.animate().scaleX(1.0f).scaleY(1.0f).setDuration(180L).start();
            return;
        }
        if (frameLayout.getVisibility() != 0) {
            return;
        }
        this.blurredView.setTag(null);
        if (z2) {
            this.blurredAnimationInProgress = true;
            this.blurredView.animate().alpha(0.0f).setDuration(180L).setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.AudioPlayerAlert.22
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    AudioPlayerAlert.this.blurredView.setVisibility(4);
                    AudioPlayerAlert.this.bigAlbumConver.setImageBitmap(null);
                    AudioPlayerAlert.this.blurredAnimationInProgress = false;
                }
            }).start();
            this.bigAlbumConver.animate().scaleX(0.9f).scaleY(0.9f).setDuration(180L).start();
        } else {
            this.blurredView.setAlpha(0.0f);
            this.blurredView.setVisibility(4);
            this.bigAlbumConver.setImageBitmap(null);
            this.bigAlbumConver.setScaleX(0.9f);
            this.bigAlbumConver.setScaleY(0.9f);
        }
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        AudioPlayerCell audioPlayerCell;
        MessageObject messageObject;
        AudioPlayerCell audioPlayerCell2;
        MessageObject messageObject2;
        MessageObject playingMessageObject;
        if (i == NotificationCenter.messagePlayingDidStart || i == NotificationCenter.messagePlayingPlayStateChanged || i == NotificationCenter.messagePlayingDidReset) {
            int i3 = NotificationCenter.messagePlayingDidReset;
            updateTitle(i == i3 && ((Boolean) objArr[1]).booleanValue());
            if (i == i3 || i == NotificationCenter.messagePlayingPlayStateChanged) {
                int childCount = this.listView.getChildCount();
                for (int i4 = 0; i4 < childCount; i4++) {
                    View childAt = this.listView.getChildAt(i4);
                    if ((childAt instanceof AudioPlayerCell) && (messageObject = (audioPlayerCell = (AudioPlayerCell) childAt).getMessageObject()) != null && (messageObject.isVoice() || messageObject.isMusic())) {
                        audioPlayerCell.updateButtonState(false, true);
                    }
                }
                if (i == NotificationCenter.messagePlayingPlayStateChanged && MediaController.getInstance().getPlayingMessageObject() != null) {
                    if (MediaController.getInstance().isMessagePaused()) {
                        startForwardRewindingSeek();
                    } else if (this.rewindingState == 1 && this.rewindingProgress != -1.0f) {
                        AndroidUtilities.cancelRunOnUIThread(this.forwardSeek);
                        this.lastUpdateRewindingPlayerTime = 0L;
                        this.forwardSeek.run();
                        this.rewindingProgress = -1.0f;
                    }
                }
            } else {
                if (((MessageObject) objArr[0]).eventId != 0) {
                    return;
                }
                int childCount2 = this.listView.getChildCount();
                for (int i5 = 0; i5 < childCount2; i5++) {
                    View childAt2 = this.listView.getChildAt(i5);
                    if ((childAt2 instanceof AudioPlayerCell) && (messageObject2 = (audioPlayerCell2 = (AudioPlayerCell) childAt2).getMessageObject()) != null && (messageObject2.isVoice() || messageObject2.isMusic())) {
                        audioPlayerCell2.updateButtonState(false, true);
                    }
                }
            }
            ChooseQualityLayout$QualityIcon chooseQualityLayout$QualityIcon = this.optionsIcon;
            if (chooseQualityLayout$QualityIcon != null) {
                chooseQualityLayout$QualityIcon.setCasting(CastSync.isActive(), true);
                return;
            }
            return;
        }
        if (i == NotificationCenter.messagePlayingProgressDidChanged) {
            MessageObject playingMessageObject2 = MediaController.getInstance().getPlayingMessageObject();
            if (playingMessageObject2 != null) {
                if (playingMessageObject2.isMusic() || playingMessageObject2.isVoice()) {
                    updateProgress(playingMessageObject2);
                    return;
                }
                return;
            }
            return;
        }
        if (i == NotificationCenter.messagePlayingSpeedChanged) {
            updatePlaybackButton(true);
            return;
        }
        if (i == NotificationCenter.musicDidLoad) {
            this.savedMusicList = MediaController.getInstance().currentSavedMusicList;
            this.playlist = MediaController.getInstance().getPlaylist();
            this.listAdapter.notifyDataSetChanged();
            return;
        }
        if (i == NotificationCenter.moreMusicDidLoad) {
            this.savedMusicList = MediaController.getInstance().currentSavedMusicList;
            this.playlist = MediaController.getInstance().getPlaylist();
            this.listAdapter.notifyDataSetChanged();
            if (SharedConfig.playOrderReversed) {
                this.listView.stopScroll();
                int iIntValue = ((Integer) objArr[0]).intValue();
                int iFindLastVisibleItemPosition = this.layoutManager.findLastVisibleItemPosition();
                if (iFindLastVisibleItemPosition != -1) {
                    View viewFindViewByPosition = this.layoutManager.findViewByPosition(iFindLastVisibleItemPosition);
                    this.layoutManager.scrollToPositionWithOffset(iFindLastVisibleItemPosition + iIntValue, viewFindViewByPosition != null ? viewFindViewByPosition.getTop() : 0);
                    return;
                }
                return;
            }
            return;
        }
        if (i == NotificationCenter.fileLoaded) {
            if (((String) objArr[0]).equals(this.currentFile)) {
                updateTitle(false);
                this.currentAudioFinishedLoading = true;
                return;
            }
            return;
        }
        if (i == NotificationCenter.fileLoadProgressChanged) {
            if (!((String) objArr[0]).equals(this.currentFile) || (playingMessageObject = MediaController.getInstance().getPlayingMessageObject()) == null) {
                return;
            }
            if (!this.currentAudioFinishedLoading) {
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                if (Math.abs(jElapsedRealtime - this.lastBufferedPositionCheck) >= 500) {
                    bufferedProgressFromPosition = MediaController.getInstance().isStreamingCurrentAudio() ? FileLoader.getInstance(this.currentAccount).getBufferedProgressFromPosition(playingMessageObject.audioProgress, this.currentFile) : 1.0f;
                    this.lastBufferedPositionCheck = jElapsedRealtime;
                } else {
                    bufferedProgressFromPosition = -1.0f;
                }
            }
            if (bufferedProgressFromPosition != -1.0f) {
                this.seekBarBufferSpring.getSpring().setFinalPosition(bufferedProgressFromPosition * 1000.0f);
                this.seekBarBufferSpring.start();
                return;
            }
            return;
        }
        if (i == NotificationCenter.musicIdsLoaded) {
            updateTitle(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateLayout() {
        int childCount = this.listView.getChildCount();
        RecyclerListView recyclerListView = this.listView;
        if (childCount <= 0) {
            int paddingTop = recyclerListView.getPaddingTop();
            this.scrollOffsetY = paddingTop;
            recyclerListView.setTopGlowOffset(paddingTop);
            this.containerView.invalidate();
            return;
        }
        boolean z = false;
        View childAt = recyclerListView.getChildAt(0);
        RecyclerListView.Holder holder = (RecyclerListView.Holder) this.listView.findContainingViewHolder(childAt);
        int top = childAt instanceof AudioPlayerCell ? childAt.getTop() : childAt.getBottom();
        int iDp = AndroidUtilities.dp(7.0f);
        if (top < AndroidUtilities.dp(7.0f) || holder == null || holder.getAdapterPosition() != 0) {
            top = iDp;
        }
        boolean z2 = top <= AndroidUtilities.dp(12.0f);
        if ((z2 && this.actionBar.getTag() == null) || (!z2 && this.actionBar.getTag() != null)) {
            this.actionBar.setTag(z2 ? 1 : null);
            AnimatorSet animatorSet = this.actionBarAnimation;
            if (animatorSet != null) {
                animatorSet.cancel();
                this.actionBarAnimation = null;
            }
            AnimatorSet animatorSet2 = new AnimatorSet();
            this.actionBarAnimation = animatorSet2;
            boolean z3 = this.isProfilePlaylist;
            ActionBar actionBar = this.actionBar;
            if (z3) {
                animatorSet2.playTogether(ObjectAnimator.ofFloat(actionBar, this.actionBarSlideProperty, z2 ? 1.0f : 0.0f), ObjectAnimator.ofFloat(this.actionBarBackground, (Property<View, Float>) View.ALPHA, z2 ? 1.0f : 0.0f));
            } else {
                animatorSet2.playTogether(ObjectAnimator.ofFloat(actionBar, (Property<ActionBar, Float>) View.ALPHA, z2 ? 1.0f : 0.0f));
            }
            this.actionBarAnimation.setDuration(320L);
            this.actionBarAnimation.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            this.actionBarAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.AudioPlayerAlert.23
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    AudioPlayerAlert.this.actionBarAnimation = null;
                }
            });
            this.actionBarAnimation.start();
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.listView.getLayoutParams();
        int iDp2 = top + ((layoutParams.topMargin - AndroidUtilities.statusBarHeight) - AndroidUtilities.dp(11.0f));
        if (this.scrollOffsetY != iDp2) {
            RecyclerListView recyclerListView2 = this.listView;
            this.scrollOffsetY = iDp2;
            recyclerListView2.setTopGlowOffset((iDp2 - layoutParams.topMargin) - AndroidUtilities.statusBarHeight);
            this.containerView.invalidate();
        }
        int iDp3 = AndroidUtilities.dp(13.0f);
        if ((this.backgroundPaddingTop + ((int) (((this.scrollOffsetY - this.backgroundPaddingTop) - iDp3) + this.listView.getTranslationY())) < ActionBar.getCurrentActionBarHeight() ? 1.0f - Math.min(1.0f, ((ActionBar.getCurrentActionBarHeight() - r2) - this.backgroundPaddingTop) / (iDp3 + AndroidUtilities.dp(4.0f))) : 1.0f) <= 0.5f && ColorUtils.calculateLuminance(getThemedColor(Theme.key_dialogBackground)) > 0.699999988079071d) {
            z = true;
        }
        if (z != this.wasLight) {
            this.wasLight = z;
            AndroidUtilities.setLightStatusBar(this, z);
        }
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface, org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    /* JADX INFO: renamed from: dismiss */
    public void lambda$new$0() {
        super.lambda$new$0();
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.messagePlayingDidReset);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.messagePlayingPlayStateChanged);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.messagePlayingDidStart);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.messagePlayingProgressDidChanged);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.fileLoaded);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.fileLoadProgressChanged);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.musicDidLoad);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.moreMusicDidLoad);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.musicIdsLoaded);
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.messagePlayingSpeedChanged);
        DownloadController.getInstance(this.currentAccount).removeLoadingFileObserver(this);
        if (instance == this) {
            instance = null;
        }
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet, android.app.Dialog
    /* JADX INFO: renamed from: onBackPressed */
    public void lambda$openCrafting$8() {
        ActionBar actionBar = this.actionBar;
        if (actionBar != null && actionBar.isSearchFieldVisible()) {
            this.actionBar.closeSearchField();
        } else if (this.blurredView.getTag() != null) {
            showAlbumCover(false, true);
        } else {
            super.lambda$openCrafting$8();
        }
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public void onProgressDownload(String str, long j, long j2) {
        this.progressView.setProgress(Math.min(1.0f, j / j2), true);
    }

    @Override // org.telegram.messenger.DownloadController.FileDownloadProgressListener
    public int getObserverTag() {
        return this.TAG;
    }

    public void updateRepeatButton() {
        int i = SharedConfig.repeatMode;
        if (i != 0 && i != 1) {
            if (i == 2) {
                this.repeatButton.setIcon(C2665R.drawable.player_new_repeatone);
                ActionBarMenuItem actionBarMenuItem = this.repeatButton;
                int i2 = Theme.key_player_buttonActive;
                actionBarMenuItem.setTag(Integer.valueOf(i2));
                this.repeatButton.setIconColor(getThemedColor(i2));
                Theme.setSelectorDrawableColor(this.repeatButton.getBackground(), 436207615 & getThemedColor(i2), true);
                this.repeatButton.setContentDescription(LocaleController.getString(C2665R.string.AccDescrRepeatOne));
                return;
            }
            return;
        }
        if (SharedConfig.shuffleMusic) {
            ActionBarMenuItem actionBarMenuItem2 = this.repeatButton;
            if (i == 0) {
                actionBarMenuItem2.setIcon(C2665R.drawable.player_new_shuffle);
            } else {
                actionBarMenuItem2.setIcon(C2665R.drawable.player_new_repeat_shuffle);
            }
        } else if (SharedConfig.playOrderReversed) {
            ActionBarMenuItem actionBarMenuItem3 = this.repeatButton;
            if (i == 0) {
                actionBarMenuItem3.setIcon(C2665R.drawable.player_new_order);
            } else {
                actionBarMenuItem3.setIcon(C2665R.drawable.player_new_repeat_reverse);
            }
        } else {
            this.repeatButton.setIcon(C2665R.drawable.player_new_repeatall);
        }
        if (i == 0 && !SharedConfig.shuffleMusic && !SharedConfig.playOrderReversed) {
            ActionBarMenuItem actionBarMenuItem4 = this.repeatButton;
            int i3 = Theme.key_player_button;
            actionBarMenuItem4.setTag(Integer.valueOf(i3));
            this.repeatButton.setIconColor(getThemedColor(i3));
            Theme.setSelectorDrawableColor(this.repeatButton.getBackground(), getThemedColor(Theme.key_listSelector), true);
            this.repeatButton.setContentDescription(LocaleController.getString(C2665R.string.AccDescrRepeatOff));
            return;
        }
        ActionBarMenuItem actionBarMenuItem5 = this.repeatButton;
        int i4 = Theme.key_player_buttonActive;
        actionBarMenuItem5.setTag(Integer.valueOf(i4));
        this.repeatButton.setIconColor(getThemedColor(i4));
        Theme.setSelectorDrawableColor(this.repeatButton.getBackground(), 436207615 & getThemedColor(i4), true);
        if (i == 0) {
            boolean z = SharedConfig.shuffleMusic;
            ActionBarMenuItem actionBarMenuItem6 = this.repeatButton;
            if (z) {
                actionBarMenuItem6.setContentDescription(LocaleController.getString(C2665R.string.ShuffleList));
                return;
            } else {
                actionBarMenuItem6.setContentDescription(LocaleController.getString(C2665R.string.ReverseOrder));
                return;
            }
        }
        this.repeatButton.setContentDescription(LocaleController.getString(C2665R.string.AccDescrRepeatList));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateProgress(MessageObject messageObject) {
        updateProgress(messageObject, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0033  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void updateProgress(MessageObject messageObject, boolean z) {
        int duration;
        SeekBarView seekBarView = this.seekBarView;
        if (seekBarView != null) {
            if (seekBarView.isDragging()) {
                duration = (int) (messageObject.getDuration() * ((double) this.seekBarView.getProgress()));
            } else if (this.rewindingProgress >= 0.0f) {
                int i = this.rewindingState;
                boolean z2 = true;
                if (i != -1 && (i != 1 || !MediaController.getInstance().isMessagePaused())) {
                    z2 = false;
                }
                SeekBarView seekBarView2 = this.seekBarView;
                if (z2) {
                    seekBarView2.setProgress(this.rewindingProgress, z);
                } else {
                    seekBarView2.setProgress(messageObject.audioProgress, z);
                }
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
                    this.seekBarBufferSpring.getSpring().setFinalPosition(bufferedProgressFromPosition * 1000.0f);
                    this.seekBarBufferSpring.start();
                }
                if (z2) {
                    duration = (int) (messageObject.getDuration() * ((double) this.seekBarView.getProgress()));
                    messageObject.audioProgressSec = duration;
                } else {
                    duration = messageObject.audioProgressSec;
                }
            }
            if (this.lastTime != duration) {
                this.lastTime = duration;
                this.timeTextView.setText(AndroidUtilities.formatShortDuration(duration));
            }
            this.seekBarView.updateTimestamps(messageObject, null);
        }
    }

    private void checkIfMusicDownloaded(MessageObject messageObject) {
        String str = messageObject.messageOwner.attachPath;
        File pathToMessage = null;
        if (str != null && str.length() > 0) {
            File file = new File(messageObject.messageOwner.attachPath);
            if (file.exists()) {
                pathToMessage = file;
            }
        }
        if (pathToMessage == null) {
            pathToMessage = FileLoader.getInstance(this.currentAccount).getPathToMessage(messageObject.messageOwner);
        }
        boolean z = SharedConfig.streamMedia && ((int) messageObject.getDialogId()) != 0 && messageObject.isMusic();
        if (!pathToMessage.exists() && !z) {
            String fileName = messageObject.getFileName();
            DownloadController.getInstance(this.currentAccount).addLoadingFileObserver(fileName, this);
            Float fileProgress = ImageLoader.getInstance().getFileProgress(fileName);
            this.progressView.setProgress(fileProgress != null ? fileProgress.floatValue() : 0.0f, false);
            this.progressView.setVisibility(0);
            this.seekBarView.setVisibility(4);
            this.playButton.setEnabled(false);
            return;
        }
        DownloadController.getInstance(this.currentAccount).removeLoadingFileObserver(this);
        this.progressView.setVisibility(4);
        this.seekBarView.setVisibility(0);
        this.playButton.setEnabled(true);
    }

    private void updateTitle(boolean z) {
        MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
        if ((playingMessageObject == null && z) || (playingMessageObject != null && !playingMessageObject.isMusic() && !playingMessageObject.isVoice())) {
            lambda$new$0();
            return;
        }
        if (playingMessageObject == null) {
            this.lastMessageObject = null;
            return;
        }
        boolean z2 = playingMessageObject == this.lastMessageObject;
        this.lastMessageObject = playingMessageObject;
        if (playingMessageObject.eventId != 0 || playingMessageObject.getId() <= -2000000000) {
            this.optionsButton.setVisibility(4);
        } else {
            this.optionsButton.setVisibility(0);
        }
        long dialogId = playingMessageObject.getDialogId();
        long j = playingMessageObject.getDocument() != null ? playingMessageObject.getDocument().id : 0L;
        boolean z3 = (dialogId < 0 && MessagesController.getInstance(this.currentAccount).isPeerNoForwards(dialogId)) || MessagesController.getInstance(this.currentAccount).isPeerNoForwards(playingMessageObject.getDialogId()) || playingMessageObject.messageOwner.noforwards;
        if (z3 != this.noforwards) {
            this.noforwards = z3;
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.playerLayout.getLayoutParams();
            layoutParams.height = AndroidUtilities.dp(184 + ((z3 || isMyList() || playingMessageObject.isVoice()) ? 0 : 52));
            this.playerLayout.setLayoutParams(layoutParams);
        }
        ActionBarMenuItem actionBarMenuItem = this.optionsButton;
        if (z3) {
            actionBarMenuItem.hideSubItem(1);
            this.optionsButton.hideSubItem(2);
            this.optionsButton.hideSubItem(5);
            this.optionsButton.hideSubItem(6);
            this.optionsButton.setAdditionalYOffset(-AndroidUtilities.dp(16.0f));
        } else {
            actionBarMenuItem.showSubItem(1);
            this.optionsButton.showSubItem(2);
            this.optionsButton.showSubItem(5);
            this.optionsButton.setAdditionalYOffset(-AndroidUtilities.dp(197.0f));
        }
        checkIfMusicDownloaded(playingMessageObject);
        updateProgress(playingMessageObject, !z2);
        updateCover(playingMessageObject, !z2);
        boolean zIsMessagePaused = MediaController.getInstance().isMessagePaused();
        PlayPauseDrawable playPauseDrawable = this.playPauseDrawable;
        if (zIsMessagePaused) {
            playPauseDrawable.setPause(false);
            this.playButton.setContentDescription(LocaleController.getString(C2665R.string.AccActionPlay));
        } else {
            playPauseDrawable.setPause(true);
            this.playButton.setContentDescription(LocaleController.getString(C2665R.string.AccActionPause));
        }
        String musicTitle = playingMessageObject.getMusicTitle();
        String musicAuthor = playingMessageObject.getMusicAuthor();
        this.titleTextView.setText(musicTitle);
        this.authorTextView.setText(musicAuthor);
        MessagesController.SavedMusicIds savedMusicIds = MessagesController.getInstance(this.currentAccount).getSavedMusicIds();
        this.saveToProfileButton.setLoading(savedMusicIds.loading);
        setVisibleInProfile(savedMusicIds.ids.contains(Long.valueOf(j)));
        int duration = (int) playingMessageObject.getDuration();
        this.lastDuration = duration;
        TextView textView = this.durationTextView;
        if (textView != null) {
            textView.setText(duration != 0 ? AndroidUtilities.formatShortDuration(duration) : "-:--");
        }
        ActionBarMenuItem actionBarMenuItem2 = this.playbackSpeedButton;
        if (duration > 1800) {
            actionBarMenuItem2.setVisibility(0);
        } else {
            actionBarMenuItem2.setVisibility(8);
        }
        if (z2) {
            return;
        }
        preloadNeighboringThumbs();
    }

    public void updateCover(MessageObject messageObject, boolean z) {
        CoverContainer coverContainer = this.coverContainer;
        BackupImageView nextImageView = z ? coverContainer.getNextImageView() : coverContainer.getImageView();
        AudioInfo audioInfo = MediaController.getInstance().getAudioInfo();
        if (z) {
            this.coverContainer.switchImageViews();
        }
        if (audioInfo != null && audioInfo.getCover() != null) {
            nextImageView.setImageBitmap(audioInfo.getCover());
            this.currentFile = null;
            this.currentAudioFinishedLoading = true;
            this.noCover = false;
            return;
        }
        this.currentFile = FileLoader.getAttachFileName(messageObject.getDocument());
        this.currentAudioFinishedLoading = false;
        String artworkUrl = messageObject.getArtworkUrl(false);
        ImageLocation artworkThumbImageLocation = getArtworkThumbImageLocation(messageObject);
        if (!TextUtils.isEmpty(artworkUrl)) {
            nextImageView.setImage(ImageLocation.getForPath(artworkUrl), (String) null, artworkThumbImageLocation, (String) null, (String) null, 0L, 1, messageObject);
            this.noCover = false;
        } else if (artworkThumbImageLocation != null) {
            nextImageView.setImage((ImageLocation) null, (String) null, artworkThumbImageLocation, (String) null, (String) null, 0L, 1, messageObject);
            this.noCover = false;
        } else {
            nextImageView.setImageResource(C2665R.drawable.nocover, Theme.getColor(Theme.key_player_button));
            this.noCover = true;
        }
        nextImageView.invalidate();
    }

    private ImageLocation getArtworkThumbImageLocation(MessageObject messageObject) {
        TLRPC.Document document = messageObject.getDocument();
        TLRPC.PhotoSize closestPhotoSizeWithSize = document != null ? FileLoader.getClosestPhotoSizeWithSize(document.thumbs, 360) : null;
        if (!(closestPhotoSizeWithSize instanceof TLRPC.TL_photoSize) && !(closestPhotoSizeWithSize instanceof TLRPC.TL_photoSizeProgressive)) {
            closestPhotoSizeWithSize = null;
        }
        if (closestPhotoSizeWithSize != null) {
            return ImageLocation.getForDocument(closestPhotoSizeWithSize, document);
        }
        String artworkUrl = messageObject.getArtworkUrl(true);
        if (artworkUrl != null) {
            return ImageLocation.getForPath(artworkUrl);
        }
        return null;
    }

    private void preloadNeighboringThumbs() {
        MediaController mediaController = MediaController.getInstance();
        ArrayList<MessageObject> playlist = mediaController.getPlaylist();
        if (playlist.size() <= 1) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        int playingMessageObjectNum = mediaController.getPlayingMessageObjectNum();
        int size = playingMessageObjectNum + 1;
        int size2 = playingMessageObjectNum - 1;
        if (size >= playlist.size()) {
            size = 0;
        }
        if (size <= -1) {
            size = playlist.size() - 1;
        }
        if (size2 <= -1) {
            size2 = playlist.size() - 1;
        }
        if (size2 >= playlist.size()) {
            size2 = 0;
        }
        arrayList.add(playlist.get(size));
        if (size != size2) {
            arrayList.add(playlist.get(size2));
        }
        int size3 = arrayList.size();
        for (int i = 0; i < size3; i++) {
            MessageObject messageObject = (MessageObject) arrayList.get(i);
            ImageLocation artworkThumbImageLocation = getArtworkThumbImageLocation(messageObject);
            if (artworkThumbImageLocation != null) {
                if (artworkThumbImageLocation.path != null) {
                    ImageLoader.getInstance().preloadArtwork(artworkThumbImageLocation.path);
                } else {
                    FileLoader.getInstance(this.currentAccount).loadFile(artworkThumbImageLocation, messageObject, null, 0, 1);
                }
            }
        }
    }

    public class ListAdapter extends RecyclerListView.SelectionAdapter {
        private final Context context;
        private boolean listViewIsVisible;
        private String searchQuery;
        private ArrayList<MessageObject> searchResult = new ArrayList<>();
        private Runnable searchRunnable;

        public ListAdapter(Context context) {
            this.context = context;
        }

        public void setup() {
            boolean z = AudioPlayerAlert.this.playlist.size() > 1;
            this.listViewIsVisible = z;
            AudioPlayerAlert audioPlayerAlert = AudioPlayerAlert.this;
            if (z) {
                audioPlayerAlert.listView.setVisibility(0);
                AudioPlayerAlert.this.listView.setTranslationY(0.0f);
            } else {
                audioPlayerAlert.listView.setVisibility(8);
                AudioPlayerAlert.this.listView.setTranslationY(AndroidUtilities.displaySize.y);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyDataSetChanged() {
            super.notifyDataSetChanged();
            if ((AudioPlayerAlert.this.playlist.size() > 1) != this.listViewIsVisible) {
                boolean z = AudioPlayerAlert.this.playlist.size() > 1;
                this.listViewIsVisible = z;
                AudioPlayerAlert audioPlayerAlert = AudioPlayerAlert.this;
                if (z) {
                    audioPlayerAlert.listView.setVisibility(0);
                    AudioPlayerAlert.this.listView.setTranslationY(AndroidUtilities.displaySize.y);
                    AudioPlayerAlert.this.listView.animate().translationY(0.0f).setUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.AudioPlayerAlert$ListAdapter$$ExternalSyntheticLambda0
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                            this.f$0.lambda$notifyDataSetChanged$0(valueAnimator);
                        }
                    }).setDuration(420L).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).start();
                } else {
                    audioPlayerAlert.listView.animate().translationY(AndroidUtilities.displaySize.y).setUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.AudioPlayerAlert$ListAdapter$$ExternalSyntheticLambda1
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                            this.f$0.lambda$notifyDataSetChanged$1(valueAnimator);
                        }
                    }).setDuration(420L).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).withEndAction(new Runnable() { // from class: org.telegram.ui.Components.AudioPlayerAlert$ListAdapter$$ExternalSyntheticLambda2
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$notifyDataSetChanged$2();
                        }
                    }).start();
                }
            }
            int size = AudioPlayerAlert.this.playlist.size();
            AudioPlayerAlert audioPlayerAlert2 = AudioPlayerAlert.this;
            if (size > 1) {
                audioPlayerAlert2.playerLayout.setBackgroundColor(AudioPlayerAlert.this.getThemedColor(Theme.key_player_background));
                AudioPlayerAlert.this.listView.setPadding(0, AudioPlayerAlert.this.listView.getPaddingTop(), 0, AndroidUtilities.dp(236.0f));
            } else {
                audioPlayerAlert2.playerLayout.setBackgroundColor(AudioPlayerAlert.this.getThemedColor(Theme.key_player_background));
                AudioPlayerAlert.this.listView.setPadding(0, AudioPlayerAlert.this.listView.getPaddingTop(), 0, 0);
            }
            AudioPlayerAlert.this.playerLayout.setBackgroundColor(AudioPlayerAlert.this.getThemedColor(Theme.key_player_background));
            AudioPlayerAlert.this.updateEmptyView();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$notifyDataSetChanged$0(ValueAnimator valueAnimator) {
            ((BottomSheet) AudioPlayerAlert.this).containerView.invalidate();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$notifyDataSetChanged$1(ValueAnimator valueAnimator) {
            ((BottomSheet) AudioPlayerAlert.this).containerView.invalidate();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$notifyDataSetChanged$2() {
            AudioPlayerAlert.this.listView.setVisibility(8);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            int size;
            int i;
            boolean z = AudioPlayerAlert.this.searchWas;
            AudioPlayerAlert audioPlayerAlert = AudioPlayerAlert.this;
            if (z) {
                boolean z2 = audioPlayerAlert.padWithItem;
                size = this.searchResult.size();
                i = z2;
            } else {
                if (audioPlayerAlert.playlist.size() <= 1) {
                    return 0;
                }
                boolean z3 = AudioPlayerAlert.this.padWithItem;
                size = AudioPlayerAlert.this.playlist.size();
                i = z3;
            }
            return i + size;
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return (AudioPlayerAlert.this.padWithItem && viewHolder.getAdapterPosition() == 0) ? false : true;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            if (i != 1) {
                Context context = this.context;
                boolean zCurrentPlaylistIsGlobalSearch = MediaController.getInstance().currentPlaylistIsGlobalSearch();
                return new RecyclerListView.Holder(new AudioPlayerCell(context, zCurrentPlaylistIsGlobalSearch ? 1 : 0, ((BottomSheet) AudioPlayerAlert.this).resourcesProvider));
            }
            View view = new View(this.context) { // from class: org.telegram.ui.Components.AudioPlayerAlert.ListAdapter.1
                @Override // android.view.View
                public void onMeasure(int i2, int i3) {
                    super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(300.0f), TLObject.FLAG_30));
                }
            };
            view.setTag(-33024);
            return new RecyclerListView.Holder(view);
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x002f A[PHI: r7
  0x002f: PHI (r7v30 org.telegram.messenger.MessageObject) = 
  (r7v10 org.telegram.messenger.MessageObject)
  (r7v14 org.telegram.messenger.MessageObject)
  (r7v33 org.telegram.messenger.MessageObject)
 binds: [B:22:0x005b, B:25:0x0083, B:11:0x002d] A[DONT_GENERATE, DONT_INLINE]] */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            MessageObject messageObject;
            if (AudioPlayerAlert.this.padWithItem) {
                if (i == 0) {
                    View view = viewHolder.itemView;
                    return;
                }
                i--;
            }
            final AudioPlayerCell audioPlayerCell = (AudioPlayerCell) viewHolder.itemView;
            boolean z = false;
            if (AudioPlayerAlert.this.searchWas) {
                messageObject = this.searchResult.get(i);
                if (i + 1 < this.searchResult.size()) {
                    z = true;
                }
            } else if (AudioPlayerAlert.this.savedMusicList == null ? SharedConfig.playOrderReversed : !SharedConfig.playOrderReversed) {
                messageObject = (MessageObject) AudioPlayerAlert.this.playlist.get(i);
                if (i + 1 < AudioPlayerAlert.this.playlist.size()) {
                }
            } else {
                messageObject = (MessageObject) AudioPlayerAlert.this.playlist.get((AudioPlayerAlert.this.playlist.size() - i) - 1);
                if ((AudioPlayerAlert.this.playlist.size() - i) - 2 >= 0) {
                }
            }
            boolean z2 = z;
            final MessageObject messageObject2 = messageObject;
            if (messageObject2 != null) {
                messageObject2.setQuery(this.searchQuery);
            }
            View.OnClickListener onClickListener = null;
            View.OnTouchListener onTouchListener = AudioPlayerAlert.this.isMyList() ? new View.OnTouchListener() { // from class: org.telegram.ui.Components.AudioPlayerAlert$ListAdapter$$ExternalSyntheticLambda3
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view2, MotionEvent motionEvent) {
                    return this.f$0.lambda$onBindViewHolder$3(audioPlayerCell, view2, motionEvent);
                }
            } : null;
            audioPlayerCell.setBackgroundColor(Theme.getColor(Theme.key_dialogBackground, ((BottomSheet) AudioPlayerAlert.this).resourcesProvider));
            boolean zIsMyList = AudioPlayerAlert.this.isMyList();
            if (!AudioPlayerAlert.this.isMyList() && !AudioPlayerAlert.this.noforwards && !messageObject2.isVoice() && messageObject2.getId() > 0) {
                onClickListener = new View.OnClickListener() { // from class: org.telegram.ui.Components.AudioPlayerAlert$ListAdapter$$ExternalSyntheticLambda4
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        this.f$0.lambda$onBindViewHolder$4(audioPlayerCell, messageObject2, view2);
                    }
                };
            }
            audioPlayerCell.setMessageObject(messageObject2, zIsMyList, onClickListener, z2, onTouchListener);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean lambda$onBindViewHolder$3(AudioPlayerCell audioPlayerCell, View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() != 0) {
                return false;
            }
            AudioPlayerAlert.this.itemTouchHelper.startDrag(AudioPlayerAlert.this.listView.getChildViewHolder(audioPlayerCell));
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onBindViewHolder$4(AudioPlayerCell audioPlayerCell, MessageObject messageObject, View view) {
            AudioPlayerAlert.this.showOptions(audioPlayerCell, messageObject);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return (AudioPlayerAlert.this.padWithItem && i == 0) ? 1 : 0;
        }

        public void search(final String str) {
            if (this.searchRunnable != null) {
                Utilities.searchQueue.cancelRunnable(this.searchRunnable);
                this.searchRunnable = null;
            }
            if (str == null) {
                this.searchQuery = null;
                this.searchResult.clear();
                notifyDataSetChanged();
            } else {
                DispatchQueue dispatchQueue = Utilities.searchQueue;
                Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.AudioPlayerAlert$ListAdapter$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$search$5(str);
                    }
                };
                this.searchRunnable = runnable;
                dispatchQueue.postRunnable(runnable, 300L);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$search$5(String str) {
            this.searchRunnable = null;
            processSearch(str);
        }

        private void processSearch(final String str) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.AudioPlayerAlert$ListAdapter$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$processSearch$7(str);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$processSearch$7(final String str) {
            final ArrayList arrayList = new ArrayList(AudioPlayerAlert.this.playlist);
            Utilities.searchQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Components.AudioPlayerAlert$ListAdapter$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$processSearch$6(str, arrayList);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$processSearch$6(String str, ArrayList arrayList) {
            TLRPC.Document document;
            boolean zContains;
            String str2;
            String lowerCase = str.trim().toLowerCase();
            if (lowerCase.length() == 0) {
                updateSearchResults(new ArrayList<>(), str);
                return;
            }
            String translitString = LocaleController.getInstance().getTranslitString(lowerCase);
            if (lowerCase.equals(translitString) || translitString.length() == 0) {
                translitString = null;
            }
            int i = (translitString != null ? 1 : 0) + 1;
            String[] strArr = new String[i];
            strArr[0] = lowerCase;
            if (translitString != null) {
                strArr[1] = translitString;
            }
            ArrayList<MessageObject> arrayList2 = new ArrayList<>();
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                MessageObject messageObject = (MessageObject) arrayList.get(i2);
                int i3 = 0;
                while (true) {
                    if (i3 < i) {
                        String str3 = strArr[i3];
                        String documentName = messageObject.getDocumentName();
                        if (documentName != null && documentName.length() != 0) {
                            if (documentName.toLowerCase().contains(str3)) {
                                arrayList2.add(messageObject);
                                break;
                            }
                            int i4 = messageObject.type;
                            TLRPC.Message message = messageObject.messageOwner;
                            if (i4 == 0) {
                                document = message.media.webpage.document;
                            } else {
                                document = message.media.document;
                            }
                            int i5 = 0;
                            while (true) {
                                if (i5 >= document.attributes.size()) {
                                    zContains = false;
                                    break;
                                }
                                TLRPC.DocumentAttribute documentAttribute = document.attributes.get(i5);
                                if (documentAttribute instanceof TLRPC.TL_documentAttributeAudio) {
                                    String str4 = documentAttribute.performer;
                                    zContains = str4 != null ? str4.toLowerCase().contains(str3) : false;
                                    if (!zContains && (str2 = documentAttribute.title) != null) {
                                        zContains = str2.toLowerCase().contains(str3);
                                    }
                                } else {
                                    i5++;
                                }
                            }
                            if (zContains) {
                                arrayList2.add(messageObject);
                                break;
                            }
                        }
                        i3++;
                    }
                }
            }
            updateSearchResults(arrayList2, str);
        }

        private void updateSearchResults(final ArrayList<MessageObject> arrayList, final String str) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.AudioPlayerAlert$ListAdapter$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$updateSearchResults$8(arrayList, str);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$updateSearchResults$8(ArrayList arrayList, String str) {
            if (AudioPlayerAlert.this.searching) {
                AudioPlayerAlert.this.searchWas = true;
                this.searchResult = arrayList;
                this.searchQuery = str;
                notifyDataSetChanged();
                AudioPlayerAlert.this.layoutManager.scrollToPosition(0);
                AudioPlayerAlert.this.emptySubtitleTextView.setText(AndroidUtilities.replaceTags(LocaleController.formatString(C2665R.string.NoAudioFoundPlayerInfo, str)));
            }
        }
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayList = new ArrayList<>();
        ThemeDescription.ThemeDescriptionDelegate themeDescriptionDelegate = new ThemeDescription.ThemeDescriptionDelegate() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda0
            @Override // org.telegram.ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                this.f$0.lambda$getThemeDescriptions$25();
            }
        };
        ActionBar actionBar = this.actionBar;
        int i = ThemeDescription.FLAG_AB_ITEMSCOLOR;
        int i2 = Theme.key_player_actionBarTitle;
        arrayList.add(new ThemeDescription(actionBar, i, null, null, null, themeDescriptionDelegate, i2));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SUBTITLECOLOR, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_player_actionBarSelector));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SEARCH, null, null, null, null, i2));
        ActionBar actionBar2 = this.actionBar;
        int i3 = ThemeDescription.FLAG_AB_SEARCHPLACEHOLDER;
        int i4 = Theme.key_player_time;
        arrayList.add(new ThemeDescription(actionBar2, i3, null, null, null, null, i4));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{AudioPlayerCell.class}, null, null, null, Theme.key_chat_inLoader));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{AudioPlayerCell.class}, null, null, null, Theme.key_chat_outLoader));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{AudioPlayerCell.class}, null, null, null, Theme.key_chat_inLoaderSelected));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{AudioPlayerCell.class}, null, null, null, Theme.key_chat_inMediaIcon));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{AudioPlayerCell.class}, null, null, null, Theme.key_chat_inMediaIconSelected));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{AudioPlayerCell.class}, null, null, null, Theme.key_windowBackgroundWhiteGrayText2));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{AudioPlayerCell.class}, null, null, null, Theme.key_chat_inAudioSelectedProgress));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{AudioPlayerCell.class}, null, null, null, Theme.key_chat_inAudioProgress));
        arrayList.add(new ThemeDescription(this.containerView, 0, null, null, new Drawable[]{this.shadowDrawable}, null, Theme.key_dialogBackground));
        LineProgressView lineProgressView = this.progressView;
        int i5 = Theme.key_player_progressBackground;
        arrayList.add(new ThemeDescription(lineProgressView, 0, null, null, null, null, i5));
        LineProgressView lineProgressView2 = this.progressView;
        int i6 = Theme.key_player_progress;
        arrayList.add(new ThemeDescription(lineProgressView2, 0, null, null, null, null, i6));
        arrayList.add(new ThemeDescription(this.seekBarView, 0, null, null, null, null, i5));
        arrayList.add(new ThemeDescription(this.seekBarView, 0, null, null, null, null, Theme.key_player_progressCachedBackground));
        arrayList.add(new ThemeDescription(this.seekBarView, ThemeDescription.FLAG_PROGRESSBAR, null, null, null, null, i6));
        arrayList.add(new ThemeDescription(this.playbackSpeedButton, ThemeDescription.FLAG_CHECKTAG | ThemeDescription.FLAG_IMAGECOLOR, null, null, null, null, Theme.key_inappPlayerPlayPause));
        arrayList.add(new ThemeDescription(this.playbackSpeedButton, ThemeDescription.FLAG_CHECKTAG | ThemeDescription.FLAG_IMAGECOLOR, null, null, null, null, Theme.key_inappPlayerClose));
        ActionBarMenuItem actionBarMenuItem = this.repeatButton;
        int i7 = Theme.key_player_button;
        arrayList.add(new ThemeDescription(actionBarMenuItem, 0, null, null, null, themeDescriptionDelegate, i7));
        arrayList.add(new ThemeDescription(this.repeatButton, 0, null, null, null, themeDescriptionDelegate, Theme.key_player_buttonActive));
        ActionBarMenuItem actionBarMenuItem2 = this.repeatButton;
        int i8 = Theme.key_listSelector;
        arrayList.add(new ThemeDescription(actionBarMenuItem2, 0, null, null, null, themeDescriptionDelegate, i8));
        ActionBarMenuItem actionBarMenuItem3 = this.repeatButton;
        int i9 = Theme.key_actionBarDefaultSubmenuItem;
        arrayList.add(new ThemeDescription(actionBarMenuItem3, 0, null, null, null, themeDescriptionDelegate, i9));
        ActionBarMenuItem actionBarMenuItem4 = this.repeatButton;
        int i10 = Theme.key_actionBarDefaultSubmenuBackground;
        arrayList.add(new ThemeDescription(actionBarMenuItem4, 0, null, null, null, themeDescriptionDelegate, i10));
        arrayList.add(new ThemeDescription(this.optionsButton, 0, null, null, null, themeDescriptionDelegate, i7));
        arrayList.add(new ThemeDescription(this.optionsButton, 0, null, null, null, themeDescriptionDelegate, i8));
        arrayList.add(new ThemeDescription(this.optionsButton, 0, null, null, null, themeDescriptionDelegate, i9));
        arrayList.add(new ThemeDescription(this.optionsButton, 0, null, null, null, themeDescriptionDelegate, i10));
        RLottieImageView rLottieImageView = this.prevButton;
        arrayList.add(new ThemeDescription(rLottieImageView, 0, (Class[]) null, new RLottieDrawable[]{rLottieImageView.getAnimatedDrawable()}, "Triangle 3", i7));
        RLottieImageView rLottieImageView2 = this.prevButton;
        arrayList.add(new ThemeDescription(rLottieImageView2, 0, (Class[]) null, new RLottieDrawable[]{rLottieImageView2.getAnimatedDrawable()}, "Triangle 4", i7));
        RLottieImageView rLottieImageView3 = this.prevButton;
        arrayList.add(new ThemeDescription(rLottieImageView3, 0, (Class[]) null, new RLottieDrawable[]{rLottieImageView3.getAnimatedDrawable()}, "Rectangle 4", i7));
        arrayList.add(new ThemeDescription(this.prevButton, ThemeDescription.FLAG_IMAGECOLOR | ThemeDescription.FLAG_USEBACKGROUNDDRAWABLE, null, null, null, null, i8));
        arrayList.add(new ThemeDescription(this.playButton, ThemeDescription.FLAG_IMAGECOLOR, null, null, null, null, i7));
        arrayList.add(new ThemeDescription(this.playButton, ThemeDescription.FLAG_IMAGECOLOR | ThemeDescription.FLAG_USEBACKGROUNDDRAWABLE, null, null, null, null, i8));
        RLottieImageView rLottieImageView4 = this.nextButton;
        arrayList.add(new ThemeDescription(rLottieImageView4, 0, (Class[]) null, new RLottieDrawable[]{rLottieImageView4.getAnimatedDrawable()}, "Triangle 3", i7));
        RLottieImageView rLottieImageView5 = this.nextButton;
        arrayList.add(new ThemeDescription(rLottieImageView5, 0, (Class[]) null, new RLottieDrawable[]{rLottieImageView5.getAnimatedDrawable()}, "Triangle 4", i7));
        RLottieImageView rLottieImageView6 = this.nextButton;
        arrayList.add(new ThemeDescription(rLottieImageView6, 0, (Class[]) null, new RLottieDrawable[]{rLottieImageView6.getAnimatedDrawable()}, "Rectangle 4", i7));
        arrayList.add(new ThemeDescription(this.nextButton, ThemeDescription.FLAG_IMAGECOLOR | ThemeDescription.FLAG_USEBACKGROUNDDRAWABLE, null, null, null, null, i8));
        arrayList.add(new ThemeDescription(this.playerLayout, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_player_background));
        arrayList.add(new ThemeDescription(this.emptyImageView, ThemeDescription.FLAG_IMAGECOLOR, null, null, null, null, Theme.key_dialogEmptyImage));
        TextView textView = this.emptyTitleTextView;
        int i11 = ThemeDescription.FLAG_IMAGECOLOR;
        int i12 = Theme.key_dialogEmptyText;
        arrayList.add(new ThemeDescription(textView, i11, null, null, null, null, i12));
        arrayList.add(new ThemeDescription(this.emptySubtitleTextView, ThemeDescription.FLAG_IMAGECOLOR, null, null, null, null, i12));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, Theme.key_dialogScrollGlow));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_SELECTOR, null, null, null, null, i8));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{View.class}, Theme.dividerPaint, null, null, Theme.key_divider));
        arrayList.add(new ThemeDescription(this.progressView, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, Theme.key_emptyListPlaceholder));
        arrayList.add(new ThemeDescription(this.progressView, ThemeDescription.FLAG_PROGRESSBAR, null, null, null, null, Theme.key_progressCircle));
        arrayList.add(new ThemeDescription(this.durationTextView, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, i4));
        arrayList.add(new ThemeDescription(this.timeTextView, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, i4));
        arrayList.add(new ThemeDescription(this.titleTextView.getTextView(), ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.titleTextView.getNextTextView(), ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.authorTextView.getTextView(), ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, i4));
        arrayList.add(new ThemeDescription(this.authorTextView.getNextTextView(), ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, i4));
        arrayList.add(new ThemeDescription(this.containerView, 0, null, null, null, null, Theme.key_sheet_scrollUp));
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getThemeDescriptions$25() {
        this.searchItem.getSearchField().setCursorColor(getThemedColor(Theme.key_player_actionBarTitle));
        ActionBarMenuItem actionBarMenuItem = this.repeatButton;
        actionBarMenuItem.setIconColor(getThemedColor(((Integer) actionBarMenuItem.getTag()).intValue()));
        Drawable background = this.repeatButton.getBackground();
        int i = Theme.key_listSelector;
        Theme.setSelectorDrawableColor(background, getThemedColor(i), true);
        this.optionsButton.setIconColor(getThemedColor(Theme.key_player_button));
        Theme.setSelectorDrawableColor(this.optionsButton.getBackground(), getThemedColor(i), true);
        this.progressView.setBackgroundColor(getThemedColor(Theme.key_player_progressBackground));
        this.progressView.setProgressColor(getThemedColor(Theme.key_player_progress));
        updateSubMenu();
        ActionBarMenuItem actionBarMenuItem2 = this.repeatButton;
        int i2 = Theme.key_actionBarDefaultSubmenuBackground;
        actionBarMenuItem2.redrawPopup(getThemedColor(i2));
        ActionBarMenuItem actionBarMenuItem3 = this.optionsButton;
        int i3 = Theme.key_actionBarDefaultSubmenuItem;
        actionBarMenuItem3.setPopupItemsColor(getThemedColor(i3), false);
        this.optionsButton.setPopupItemsColor(getThemedColor(i3), true);
        this.optionsButton.redrawPopup(getThemedColor(i2));
    }

    private void saveToProfile(final MessageObject messageObject, final boolean z, final Runnable runnable, final boolean z2) {
        final TLRPC.Document document = messageObject.getDocument();
        if (document == null) {
            return;
        }
        final long j = document.id;
        TLRPC.TL_account_saveMusic tL_account_saveMusic = new TLRPC.TL_account_saveMusic();
        tL_account_saveMusic.unsave = !z;
        TLRPC.TL_inputDocument tL_inputDocument = new TLRPC.TL_inputDocument();
        tL_account_saveMusic.id = tL_inputDocument;
        tL_inputDocument.id = j;
        tL_inputDocument.access_hash = document.access_hash;
        byte[] bArr = document.file_reference;
        tL_inputDocument.file_reference = bArr;
        if (bArr == null) {
            tL_inputDocument.file_reference = new byte[0];
        }
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_account_saveMusic, new RequestDelegate() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda50
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$saveToProfile$35(z2, messageObject, z, runnable, j, document, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveToProfile$35(boolean z, MessageObject messageObject, final boolean z2, final Runnable runnable, final long j, final TLRPC.Document document, TLObject tLObject, final TLRPC.TL_error tL_error) {
        if (tL_error == null || !FileRefController.isFileRefError(tL_error.text)) {
            if (tL_error != null) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda54
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$saveToProfile$33(tL_error);
                    }
                });
                return;
            } else {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda55
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$saveToProfile$34(j, z2, document, runnable);
                    }
                });
                return;
            }
        }
        if (z || messageObject.getId() < 0) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda51
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$saveToProfile$26(tL_error);
                }
            });
            return;
        }
        if (messageObject.getDialogId() >= 0) {
            final int id = messageObject.getId();
            TLRPC.TL_messages_getMessages tL_messages_getMessages = new TLRPC.TL_messages_getMessages();
            tL_messages_getMessages.id.add(Integer.valueOf(id));
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_messages_getMessages, new RequestDelegate() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda52
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject2, TLRPC.TL_error tL_error2) {
                    this.f$0.lambda$saveToProfile$29(id, z2, runnable, tLObject2, tL_error2);
                }
            });
            return;
        }
        final int id2 = messageObject.getId();
        TLRPC.TL_channels_getMessages tL_channels_getMessages = new TLRPC.TL_channels_getMessages();
        tL_channels_getMessages.channel = MessagesController.getInstance(this.currentAccount).getInputChannel(-messageObject.getDialogId());
        tL_channels_getMessages.id.add(Integer.valueOf(id2));
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_channels_getMessages, new RequestDelegate() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda53
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject2, TLRPC.TL_error tL_error2) {
                this.f$0.lambda$saveToProfile$32(id2, z2, runnable, tLObject2, tL_error2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveToProfile$26(TLRPC.TL_error tL_error) {
        BulletinFactory.of((FrameLayout) this.containerView, this.resourcesProvider).showForError(tL_error);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveToProfile$29(int i, boolean z, Runnable runnable, TLObject tLObject, final TLRPC.TL_error tL_error) {
        TLRPC.Message message;
        if (!(tLObject instanceof TLRPC.messages_Messages)) {
            if (tL_error != null) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda60
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$saveToProfile$28(tL_error);
                    }
                });
                return;
            }
            return;
        }
        TLRPC.messages_Messages messages_messages = (TLRPC.messages_Messages) tLObject;
        int i2 = 0;
        while (true) {
            if (i2 >= messages_messages.messages.size()) {
                message = null;
                break;
            } else {
                if (messages_messages.messages.get(i2).id == i) {
                    message = messages_messages.messages.get(i2);
                    break;
                }
                i2++;
            }
        }
        if (message != null) {
            saveToProfile(new MessageObject(this.currentAccount, message, false, true), z, runnable, true);
        } else {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda59
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$saveToProfile$27();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveToProfile$27() {
        BulletinFactory.of((FrameLayout) this.containerView, this.resourcesProvider).createErrorBulletin(LocaleController.formatString(C2665R.string.UnknownErrorCode, "CLIENT_MESSAGE_NOT_FOUND")).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveToProfile$28(TLRPC.TL_error tL_error) {
        BulletinFactory.of((FrameLayout) this.containerView, this.resourcesProvider).showForError(tL_error);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveToProfile$32(int i, boolean z, Runnable runnable, TLObject tLObject, final TLRPC.TL_error tL_error) {
        TLRPC.Message message;
        if (!(tLObject instanceof TLRPC.messages_Messages)) {
            if (tL_error != null) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda62
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$saveToProfile$31(tL_error);
                    }
                });
                return;
            }
            return;
        }
        TLRPC.messages_Messages messages_messages = (TLRPC.messages_Messages) tLObject;
        int i2 = 0;
        while (true) {
            if (i2 >= messages_messages.messages.size()) {
                message = null;
                break;
            } else {
                if (messages_messages.messages.get(i2).id == i) {
                    message = messages_messages.messages.get(i2);
                    break;
                }
                i2++;
            }
        }
        if (message != null) {
            saveToProfile(new MessageObject(this.currentAccount, message, false, true), z, runnable, true);
        } else {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda61
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$saveToProfile$30();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveToProfile$30() {
        BulletinFactory.of((FrameLayout) this.containerView, this.resourcesProvider).createErrorBulletin(LocaleController.formatString(C2665R.string.UnknownErrorCode, "CLIENT_MESSAGE_NOT_FOUND")).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveToProfile$31(TLRPC.TL_error tL_error) {
        BulletinFactory.of((FrameLayout) this.containerView, this.resourcesProvider).showForError(tL_error);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveToProfile$33(TLRPC.TL_error tL_error) {
        BulletinFactory.of((FrameLayout) this.containerView, this.resourcesProvider).showForError(tL_error);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveToProfile$34(long j, boolean z, TLRPC.Document document, Runnable runnable) {
        MessagesController.getInstance(this.currentAccount).getSavedMusicIds().update(j, z);
        long clientUserId = UserConfig.getInstance(this.currentAccount).getClientUserId();
        TLRPC.UserFull userFull = MessagesController.getInstance(this.currentAccount).getUserFull(clientUserId);
        if (userFull != null) {
            if (z) {
                userFull.flags2 |= TLObject.FLAG_21;
                userFull.saved_music = document;
            } else {
                TLRPC.Document document2 = userFull.saved_music;
                if (document2 != null && document2.id == j) {
                    userFull.flags2 &= -2097153;
                    userFull.saved_music = null;
                }
            }
            MessagesStorage.getInstance(this.currentAccount).updateUserInfo(userFull, true);
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.profileMusicUpdated, Long.valueOf(clientUserId));
        }
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showMenuOptions(View view) {
        MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
        if (playingMessageObject == null) {
            return;
        }
        final ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions((ViewGroup) this.container, this.resourcesProvider, view, true);
        final ItemOptions itemOptionsBuildSaveOptions = buildSaveOptions(itemOptionsMakeOptions, playingMessageObject);
        if (!isMyList()) {
            itemOptionsMakeOptions.addIf(!this.noforwards, C2665R.drawable.msg_stories_save, LocaleController.getString(C2665R.string.AudioSaveTo), new Runnable() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda35
                @Override // java.lang.Runnable
                public final void run() {
                    itemOptionsMakeOptions.openSwipeback(itemOptionsBuildSaveOptions);
                }
            });
            if (!this.noforwards && itemOptionsMakeOptions.getLast() != null) {
                itemOptionsMakeOptions.getLast().setRightIcon(C2665R.drawable.msg_arrowright);
            }
            itemOptionsMakeOptions.addGap();
        }
        itemOptionsMakeOptions.addIf(!this.noforwards, C2665R.drawable.msg_forward, LocaleController.getString(C2665R.string.Forward), new Runnable() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda36
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$showMenuOptions$37(itemOptionsMakeOptions);
            }
        });
        if (!this.noforwards && itemOptionsMakeOptions.getLast() != null) {
            itemOptionsMakeOptions.getLast().setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda37
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view2) {
                    return this.f$0.lambda$showMenuOptions$38(itemOptionsMakeOptions, view2);
                }
            });
        }
        itemOptionsMakeOptions.addIf(!this.noforwards, C2665R.drawable.msg_shareout, LocaleController.getString(C2665R.string.ShareFile), new Runnable() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda38
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$showMenuOptions$39(itemOptionsMakeOptions);
            }
        });
        itemOptionsMakeOptions.addIf(playingMessageObject.getId() > 0, C2665R.drawable.msg_message, LocaleController.getString(C2665R.string.ShowInChat), new Runnable() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda39
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$showMenuOptions$40(itemOptionsMakeOptions);
            }
        });
        if (this.castAvailable) {
            ActionBarMenuSubItem actionBarMenuSubItemAdd = itemOptionsMakeOptions.add();
            this.castItem = actionBarMenuSubItemAdd;
            actionBarMenuSubItemAdd.setTextAndIcon(LocaleController.getString(C2665R.string.VideoPlayerChromecast), C2665R.drawable.menu_video_chromecast);
            this.castItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda40
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f$0.lambda$showMenuOptions$41(itemOptionsMakeOptions, view2);
                }
            });
            AndroidUtilities.removeFromParent(this.castItemButton);
            this.castItem.addView(this.castItemButton, 0, LayoutHelper.createFrame(-1, -1.0f));
            updateColors();
        }
        itemOptionsMakeOptions.addIf(isMyList(), C2665R.drawable.msg_delete, (CharSequence) LocaleController.getString(C2665R.string.ProfilePlaylistRemoveFromProfile), true, new Runnable() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda41
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$showMenuOptions$42(itemOptionsMakeOptions);
            }
        });
        itemOptionsMakeOptions.setTranslationY(AndroidUtilities.dp(64.0f));
        itemOptionsMakeOptions.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showMenuOptions$37(ItemOptions itemOptions) {
        itemOptions.dismiss();
        onSubItemClick(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$showMenuOptions$38(ItemOptions itemOptions, View view) {
        itemOptions.dismiss();
        onSubItemClick(9);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showMenuOptions$39(ItemOptions itemOptions) {
        itemOptions.dismiss();
        onSubItemClick(2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showMenuOptions$40(ItemOptions itemOptions) {
        itemOptions.dismiss();
        onSubItemClick(4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showMenuOptions$41(ItemOptions itemOptions, View view) {
        itemOptions.dismiss();
        onSubItemClick(6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showMenuOptions$42(ItemOptions itemOptions) {
        itemOptions.dismiss();
        onSubItemClick(7);
    }

    private ItemOptions buildSaveOptions(final ItemOptions itemOptions, final MessageObject messageObject) {
        MessagesController.SavedMusicIds savedMusicIds = MessagesController.getInstance(this.currentAccount).getSavedMusicIds();
        TLRPC.Document document = messageObject.getDocument();
        long j = document != null ? document.id : 0L;
        ItemOptions itemOptionsMakeSwipeback = itemOptions.makeSwipeback();
        itemOptionsMakeSwipeback.add(C2665R.drawable.ic_ab_back, LocaleController.getString(C2665R.string.Back), new RatePill$$ExternalSyntheticLambda1(itemOptions));
        itemOptionsMakeSwipeback.addGap();
        itemOptionsMakeSwipeback.addIf(!savedMusicIds.ids.contains(Long.valueOf(j)), C2665R.drawable.left_status_profile, LocaleController.getString(C2665R.string.AudioSaveToMyProfile), new Runnable() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda44
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$buildSaveOptions$44(messageObject, itemOptions);
            }
        });
        itemOptionsMakeSwipeback.add(C2665R.drawable.msg_saved, LocaleController.getString(C2665R.string.AudioSaveToSavedMessages), new Runnable() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda45
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$buildSaveOptions$45(messageObject, itemOptions);
            }
        });
        itemOptionsMakeSwipeback.add(C2665R.drawable.menu_download_round, LocaleController.getString(C2665R.string.AudioSaveToMusicFolder), new Runnable() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda46
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$buildSaveOptions$46(messageObject, itemOptions);
            }
        });
        itemOptionsMakeSwipeback.addGap();
        itemOptionsMakeSwipeback.addText(LocaleController.getString(C2665R.string.AudioSaveToInfo), 12, AndroidUtilities.dp(200.0f));
        return itemOptionsMakeSwipeback;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildSaveOptions$44(MessageObject messageObject, final ItemOptions itemOptions) {
        saveToProfile(messageObject, true, new Runnable() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda56
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$buildSaveOptions$43(itemOptions);
            }
        }, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildSaveOptions$43(ItemOptions itemOptions) {
        setVisibleInProfile(true);
        BulletinFactory.of((FrameLayout) this.containerView, this.resourcesProvider).createSimpleBulletin(C2665R.raw.saved_messages, LocaleController.getString(C2665R.string.AudioSaveToMyProfileSaved)).show();
        itemOptions.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildSaveOptions$45(MessageObject messageObject, ItemOptions itemOptions) {
        forward(messageObject, UserConfig.getInstance(this.currentAccount).getClientUserId());
        itemOptions.dismiss();
        BulletinFactory.of((FrameLayout) this.containerView, this.resourcesProvider).createSimpleBulletin(C2665R.raw.saved_messages, LocaleController.getString(C2665R.string.AudioSaveToSavedMessagesSaved)).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildSaveOptions$46(MessageObject messageObject, ItemOptions itemOptions) {
        saveToMusic(messageObject);
        itemOptions.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showOptions(AudioPlayerCell audioPlayerCell, final MessageObject messageObject) {
        final ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions((ViewGroup) this.container, this.resourcesProvider, (View) audioPlayerCell, true);
        if (isMyList()) {
            itemOptionsMakeOptions.addIf(!this.noforwards, C2665R.drawable.msg_forward, LocaleController.getString(C2665R.string.Forward), new Runnable() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda26
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$showOptions$47(itemOptionsMakeOptions, messageObject);
                }
            });
            if (!this.noforwards && itemOptionsMakeOptions.getLast() != null) {
                itemOptionsMakeOptions.getLast().setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda27
                    @Override // android.view.View.OnLongClickListener
                    public final boolean onLongClick(View view) {
                        return this.f$0.lambda$showOptions$48(itemOptionsMakeOptions, messageObject, view);
                    }
                });
            }
            itemOptionsMakeOptions.addIf(!this.noforwards, C2665R.drawable.msg_shareout, LocaleController.getString(C2665R.string.ShareFile), new Runnable() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda28
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$showOptions$49(itemOptionsMakeOptions, messageObject);
                }
            });
            itemOptionsMakeOptions.add(C2665R.drawable.msg_delete, (CharSequence) LocaleController.getString(C2665R.string.Delete), true, new Runnable() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda29
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$showOptions$51(messageObject, itemOptionsMakeOptions);
                }
            });
        } else {
            final ItemOptions itemOptionsBuildSaveOptions = buildSaveOptions(itemOptionsMakeOptions, messageObject);
            itemOptionsMakeOptions.addIf(!this.noforwards, C2665R.drawable.msg_stories_save, LocaleController.getString(C2665R.string.AudioSaveTo), new Runnable() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda30
                @Override // java.lang.Runnable
                public final void run() {
                    itemOptionsMakeOptions.openSwipeback(itemOptionsBuildSaveOptions);
                }
            });
            if (!this.noforwards && itemOptionsMakeOptions.getLast() != null) {
                itemOptionsMakeOptions.getLast().setRightIcon(C2665R.drawable.msg_arrowright);
            }
            itemOptionsMakeOptions.addGap();
            itemOptionsMakeOptions.addIf(!this.noforwards, C2665R.drawable.msg_share, LocaleController.getString(C2665R.string.Forward), new Runnable() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda31
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$showOptions$53(itemOptionsMakeOptions, messageObject);
                }
            });
            if (!this.noforwards && itemOptionsMakeOptions.getLast() != null) {
                itemOptionsMakeOptions.getLast().setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda32
                    @Override // android.view.View.OnLongClickListener
                    public final boolean onLongClick(View view) {
                        return this.f$0.lambda$showOptions$54(itemOptionsMakeOptions, messageObject, view);
                    }
                });
            }
            itemOptionsMakeOptions.addIf(!this.noforwards, C2665R.drawable.msg_shareout, LocaleController.getString(C2665R.string.ShareFile), new Runnable() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda33
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$showOptions$55(itemOptionsMakeOptions, messageObject);
                }
            });
            itemOptionsMakeOptions.addIf(messageObject.getId() > 0, C2665R.drawable.msg_view_file, LocaleController.getString(C2665R.string.ShowInChat), new Runnable() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda34
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$showOptions$56(messageObject);
                }
            });
        }
        itemOptionsMakeOptions.setGravity(LocaleController.isRTL ? 3 : 5);
        itemOptionsMakeOptions.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showOptions$47(ItemOptions itemOptions, MessageObject messageObject) {
        itemOptions.dismiss();
        forward(messageObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$showOptions$48(ItemOptions itemOptions, MessageObject messageObject, View view) {
        itemOptions.dismiss();
        forward(messageObject, true);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showOptions$49(ItemOptions itemOptions, MessageObject messageObject) {
        itemOptions.dismiss();
        share(messageObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showOptions$51(final MessageObject messageObject, final ItemOptions itemOptions) {
        saveToProfile(messageObject, false, new Runnable() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda49
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$showOptions$50(messageObject, itemOptions);
            }
        }, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showOptions$50(MessageObject messageObject, ItemOptions itemOptions) {
        this.savedMusicList.remove(messageObject);
        this.playlist.remove(messageObject);
        this.listAdapter.notifyDataSetChanged();
        itemOptions.dismiss();
        setVisibleInProfile(false);
        BulletinFactory.of((FrameLayout) this.containerView, this.resourcesProvider).createSimpleBulletin(C2665R.raw.ic_delete, LocaleController.getString(C2665R.string.AudioSaveToMyProfileUnsaved)).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showOptions$53(ItemOptions itemOptions, MessageObject messageObject) {
        itemOptions.dismiss();
        forward(messageObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$showOptions$54(ItemOptions itemOptions, MessageObject messageObject, View view) {
        itemOptions.dismiss();
        forward(messageObject, true);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showOptions$55(ItemOptions itemOptions, MessageObject messageObject) {
        itemOptions.dismiss();
        share(messageObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showOptions$56(MessageObject messageObject) {
        int i = UserConfig.selectedAccount;
        int i2 = this.currentAccount;
        if (i != i2) {
            this.parentActivity.switchToAccount(i2, true);
        }
        Bundle bundle = new Bundle();
        long dialogId = messageObject.getDialogId();
        if (DialogObject.isEncryptedDialog(dialogId)) {
            bundle.putInt("enc_id", DialogObject.getEncryptedChatId(dialogId));
        } else if (DialogObject.isUserDialog(dialogId)) {
            bundle.putLong("user_id", dialogId);
        } else {
            TLRPC.Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-dialogId));
            if (chat != null && chat.migrated_to != null) {
                bundle.putLong("migrated_to", dialogId);
                dialogId = -chat.migrated_to.channel_id;
            }
            bundle.putLong("chat_id", -dialogId);
        }
        bundle.putInt("message_id", messageObject.getId());
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.closeChats, new Object[0]);
        this.parentActivity.presentFragment(new ChatActivity(bundle), false, false);
        lambda$new$0();
    }

    private void setVisibleInProfile(final boolean z) {
        if (isMyList() || this.noforwards || this.lastMessageObject.isVoice()) {
            this.saveToProfileButton.setVisibility(8);
            this.unsaveFromProfileButton.setVisibility(8);
            return;
        }
        this.saveToProfileButton.setVisibility(0);
        this.unsaveFromProfileButton.setVisibility(0);
        ViewPropertyAnimator duration = this.saveToProfileButton.animate().alpha(z ? 0.0f : 1.0f).scaleX(z ? 0.8f : 1.0f).scaleY(z ? 0.8f : 1.0f).setDuration(420L);
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        duration.setInterpolator(cubicBezierInterpolator).withEndAction(new Runnable() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setVisibleInProfile$57(z);
            }
        }).start();
        this.unsaveFromProfileButton.animate().alpha(z ? 1.0f : 0.0f).scaleX(!z ? 0.8f : 1.0f).scaleY(z ? 1.0f : 0.8f).setDuration(420L).setInterpolator(cubicBezierInterpolator).withEndAction(new Runnable() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setVisibleInProfile$58(z);
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setVisibleInProfile$57(boolean z) {
        this.saveToProfileButton.setVisibility(z ? 8 : 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setVisibleInProfile$58(boolean z) {
        this.unsaveFromProfileButton.setVisibility(z ? 0 : 8);
    }

    private void saveToMusic(MessageObject messageObject) {
        if ((Build.VERSION.SDK_INT <= 28 || BuildVars.NO_SCOPED_STORAGE) && this.parentActivity.checkSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
            this.parentActivity.requestPermissions(new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, 4);
            return;
        }
        String documentFileName = FileLoader.getDocumentFileName(messageObject.getDocument());
        if (TextUtils.isEmpty(documentFileName)) {
            documentFileName = messageObject.getFileName();
        }
        String str = documentFileName;
        String string = messageObject.messageOwner.attachPath;
        if (string != null && string.length() > 0 && !new File(string).exists()) {
            string = null;
        }
        if (string == null || string.length() == 0) {
            string = FileLoader.getInstance(this.currentAccount).getPathToMessage(messageObject.messageOwner).toString();
        }
        MediaController.saveFile(string, this.parentActivity, 3, str, messageObject.getDocument() != null ? messageObject.getDocument().mime_type : _UrlKt.FRAGMENT_ENCODE_SET, new Utilities.Callback() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda48
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$saveToMusic$59((Uri) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveToMusic$59(Uri uri) {
        BulletinFactory.of((FrameLayout) this.containerView, this.resourcesProvider).createDownloadBulletin(BulletinFactory.FileType.AUDIO).show();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x001c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void share(MessageObject messageObject) {
        File pathToMessage;
        try {
            if (!TextUtils.isEmpty(messageObject.messageOwner.attachPath)) {
                pathToMessage = new File(messageObject.messageOwner.attachPath);
                if (!pathToMessage.exists()) {
                    pathToMessage = null;
                }
            }
            if (pathToMessage == null) {
                pathToMessage = FileLoader.getInstance(this.currentAccount).getPathToMessage(messageObject.messageOwner);
            }
            if (pathToMessage.exists()) {
                Intent intent = new Intent("android.intent.action.SEND");
                intent.setType(messageObject.getMimeType());
                try {
                    intent.putExtra("android.intent.extra.STREAM", FileProvider.getUriForFile(ApplicationLoader.applicationContext, ApplicationLoader.getApplicationId() + ".provider", pathToMessage));
                    intent.setFlags(1);
                } catch (Exception unused) {
                    intent.putExtra("android.intent.extra.STREAM", Uri.fromFile(pathToMessage));
                }
                this.parentActivity.startActivityForResult(Intent.createChooser(intent, LocaleController.getString(C2665R.string.ShareFile)), MediaError.DetailedErrorCode.SEGMENT_UNKNOWN);
                return;
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(this.parentActivity);
            builder.setTitle(LocaleController.getString(C2665R.string.AppName));
            builder.setPositiveButton(LocaleController.getString(C2665R.string.OK), null);
            builder.setMessage(LocaleController.getString(C2665R.string.PleaseDownload));
            builder.show();
        } catch (Exception e) {
            FileLog.m992e(e);
        }
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet, android.app.Dialog
    public void show() {
        super.show();
        instance = this;
    }

    private void forward(MessageObject messageObject, long j) {
        ArrayList<MessageObject> arrayList;
        TLRPC.TL_document tL_document;
        String string;
        int i = UserConfig.selectedAccount;
        int i2 = this.currentAccount;
        if (i != i2) {
            this.parentActivity.switchToAccount(i2, true);
        }
        if (messageObject.getId() < 0) {
            if (!(messageObject.getDocument() instanceof TLRPC.TL_document)) {
                return;
            }
            tL_document = (TLRPC.TL_document) messageObject.getDocument();
            arrayList = null;
        } else {
            ArrayList<MessageObject> arrayList2 = new ArrayList<>();
            arrayList2.add(messageObject);
            arrayList = arrayList2;
            tL_document = null;
        }
        int i3 = this.currentAccount;
        if (arrayList != null) {
            SendMessagesHelper.getInstance(i3).sendMessage(arrayList, j, false, false, true, 0, 0L);
        } else {
            SendMessagesHelper.getInstance(i3).sendMessage(SendMessagesHelper.SendMessageParams.of(tL_document, null, messageObject.messageOwner.attachPath, j, null, null, null, null, null, null, true, 0, 0, 0, this.savedMusicList, null, false, false));
        }
        BaseFragment lastFragment = LaunchActivity.getLastFragment();
        if (lastFragment != null) {
            BulletinFactory bulletinFactoryOf = BulletinFactory.of(lastFragment);
            int i4 = C2665R.raw.forward;
            if (j == UserConfig.getInstance(this.currentAccount).getClientUserId()) {
                string = LocaleController.getString(C2665R.string.FwdMessageToSavedMessages);
            } else if (j > 0) {
                string = LocaleController.formatString(C2665R.string.FwdMessageToUser, DialogObject.getShortName(j));
            } else {
                string = LocaleController.formatString(C2665R.string.FwdMessageToGroup, DialogObject.getShortName(j));
            }
            bulletinFactoryOf.createSimpleBulletin(i4, string).show();
        }
    }

    private void forward(MessageObject messageObject) {
        forward(messageObject, false);
    }

    private void forward(final MessageObject messageObject, final boolean z) {
        final ArrayList arrayList;
        final TLRPC.TL_document tL_document;
        int i = UserConfig.selectedAccount;
        int i2 = this.currentAccount;
        if (i != i2) {
            this.parentActivity.switchToAccount(i2, true);
        }
        Bundle bundle = new Bundle();
        bundle.putBoolean("onlySelect", true);
        bundle.putInt("dialogsType", 3);
        bundle.putBoolean("canSelectTopics", true);
        bundle.putBoolean("forward_noquote", z);
        DialogsActivity dialogsActivity = new DialogsActivity(bundle);
        if (messageObject.getId() < 0) {
            if (!(messageObject.getDocument() instanceof TLRPC.TL_document)) {
                return;
            }
            tL_document = (TLRPC.TL_document) messageObject.getDocument();
            arrayList = null;
        } else {
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(messageObject);
            arrayList = arrayList2;
            tL_document = null;
        }
        dialogsActivity.setDelegate(new DialogsActivity.DialogsActivityDelegate() { // from class: org.telegram.ui.Components.AudioPlayerAlert$$ExternalSyntheticLambda42
            @Override // org.telegram.ui.DialogsActivity.DialogsActivityDelegate
            public final boolean didSelectDialogs(DialogsActivity dialogsActivity2, ArrayList arrayList3, CharSequence charSequence, boolean z2, boolean z3, int i3, int i4, TopicsFragment topicsFragment) {
                return this.f$0.lambda$forward$60(arrayList, z, tL_document, messageObject, dialogsActivity2, arrayList3, charSequence, z2, z3, i3, i4, topicsFragment);
            }
        });
        this.parentActivity.lambda$runLinkRequest$102(dialogsActivity);
        lambda$new$0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
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
    public /* synthetic */ boolean lambda$forward$60(ArrayList arrayList, boolean z, TLRPC.TL_document tL_document, MessageObject messageObject, DialogsActivity dialogsActivity, ArrayList arrayList2, CharSequence charSequence, boolean z2, boolean z3, int i, int i2, TopicsFragment topicsFragment) {
        String pluralStringComma;
        long j;
        int i3;
        ArrayList arrayList3 = arrayList;
        boolean z4 = z;
        if (arrayList2.size() > 1 || ((MessagesStorage.TopicKey) arrayList2.get(0)).dialogId == UserConfig.getInstance(this.currentAccount).getClientUserId() || charSequence != null || arrayList3 == null) {
            int i4 = 0;
            while (i4 < arrayList2.size()) {
                long j2 = ((MessagesStorage.TopicKey) arrayList2.get(i4)).dialogId;
                if (charSequence != null) {
                    j = j2;
                    SendMessagesHelper.getInstance(this.currentAccount).sendMessage(SendMessagesHelper.SendMessageParams.of(charSequence.toString(), j2, null, null, null, true, null, null, null, true, 0, 0, null, false));
                } else {
                    j = j2;
                }
                int i5 = this.currentAccount;
                if (arrayList3 != null) {
                    i3 = i4;
                    SendMessagesHelper.getInstance(i5).sendMessage(arrayList3, j, z4, false, true, 0, 0L);
                } else {
                    i3 = i4;
                    SendMessagesHelper.getInstance(i5).sendMessage(SendMessagesHelper.SendMessageParams.of(tL_document, null, messageObject.messageOwner.attachPath, j, null, null, null, null, null, null, z3, i, 0, 0, this.savedMusicList, null, false, false));
                }
                i4 = i3 + 1;
                arrayList3 = arrayList;
                z4 = z;
            }
            dialogsActivity.finishFragment();
            BaseFragment lastFragment = LaunchActivity.getLastFragment();
            if (lastFragment != null) {
                BulletinFactory bulletinFactoryOf = BulletinFactory.of(lastFragment);
                int i6 = C2665R.raw.forward;
                if (arrayList2.size() == 1 && ((MessagesStorage.TopicKey) arrayList2.get(0)).dialogId == UserConfig.getInstance(this.currentAccount).getClientUserId()) {
                    pluralStringComma = LocaleController.getString(C2665R.string.FwdMessageToSavedMessages);
                } else if (arrayList2.size() == 1 && ((MessagesStorage.TopicKey) arrayList2.get(0)).dialogId > 0) {
                    pluralStringComma = LocaleController.formatString(C2665R.string.FwdMessageToUser, DialogObject.getShortName(((MessagesStorage.TopicKey) arrayList2.get(0)).dialogId));
                } else if (arrayList2.size() == 1 && ((MessagesStorage.TopicKey) arrayList2.get(0)).dialogId < 0) {
                    pluralStringComma = LocaleController.formatString(C2665R.string.FwdMessageToGroup, DialogObject.getShortName(((MessagesStorage.TopicKey) arrayList2.get(0)).dialogId));
                } else {
                    pluralStringComma = LocaleController.formatPluralStringComma("FwdMessageToManyChats", arrayList2.size());
                }
                bulletinFactoryOf.createSimpleBulletin(i6, pluralStringComma).show();
            }
        } else {
            MessagesStorage.TopicKey topicKey = (MessagesStorage.TopicKey) arrayList2.get(0);
            long j3 = topicKey.dialogId;
            Bundle bundle = new Bundle();
            bundle.putBoolean("scrollToTopOnResume", true);
            if (DialogObject.isEncryptedDialog(j3)) {
                bundle.putInt("enc_id", DialogObject.getEncryptedChatId(j3));
            } else if (DialogObject.isUserDialog(j3)) {
                bundle.putLong("user_id", j3);
            } else {
                bundle.putLong("chat_id", -j3);
            }
            bundle.putBoolean("forward_noquote", z4);
            ChatActivity chatActivity = new ChatActivity(bundle);
            if (topicKey.topicId != 0) {
                ForumUtilities.applyTopic(chatActivity, topicKey);
            }
            if (this.parentActivity.presentFragment(chatActivity, true, false)) {
                chatActivity.setForwardParams(z4);
                chatActivity.showFieldPanelForForward(true, arrayList3);
                if (topicKey.topicId != 0) {
                    dialogsActivity.removeSelfFromStack();
                }
            } else {
                dialogsActivity.finishFragment();
            }
        }
        return true;
    }

    public static abstract class CoverContainer extends FrameLayout {
        private int activeIndex;
        private AnimatorSet animatorSet;
        private final BackupImageView[] imageViews;

        public abstract void onImageUpdated(ImageReceiver imageReceiver);

        public CoverContainer(Context context) {
            super(context);
            this.imageViews = new BackupImageView[2];
            for (final int i = 0; i < 2; i++) {
                this.imageViews[i] = new BackupImageView(context);
                this.imageViews[i].setClipToOutline(true);
                this.imageViews[i].setOutlineProvider(new ViewOutlineProvider() { // from class: org.telegram.ui.Components.AudioPlayerAlert.CoverContainer.1
                    @Override // android.view.ViewOutlineProvider
                    public void getOutline(View view, Outline outline) {
                        outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), AndroidUtilities.dp(10.0f));
                    }
                });
                this.imageViews[i].getImageReceiver().setDelegate(new ImageReceiver.ImageReceiverDelegate() { // from class: org.telegram.ui.Components.AudioPlayerAlert$CoverContainer$$ExternalSyntheticLambda0
                    @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
                    public final void didSetImage(ImageReceiver imageReceiver, boolean z, boolean z2, boolean z3) {
                        this.f$0.lambda$new$0(i, imageReceiver, z, z2, z3);
                    }
                });
                this.imageViews[i].setRoundRadius(AndroidUtilities.dp(10.0f));
                if (i == 1) {
                    this.imageViews[i].setVisibility(8);
                }
                addView(this.imageViews[i], LayoutHelper.createFrame(-1, -1.0f));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(int i, ImageReceiver imageReceiver, boolean z, boolean z2, boolean z3) {
            if (i == this.activeIndex) {
                onImageUpdated(imageReceiver);
            }
        }

        public final void switchImageViews() {
            AnimatorSet animatorSet = this.animatorSet;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
            this.animatorSet = new AnimatorSet();
            int i = this.activeIndex == 0 ? 1 : 0;
            this.activeIndex = i;
            BackupImageView[] backupImageViewArr = this.imageViews;
            final BackupImageView backupImageView = backupImageViewArr[i ^ 1];
            final BackupImageView backupImageView2 = backupImageViewArr[i];
            final boolean zHasBitmapImage = backupImageView.getImageReceiver().hasBitmapImage();
            backupImageView2.setAlpha(zHasBitmapImage ? 1.0f : 0.0f);
            backupImageView2.setScaleX(0.8f);
            backupImageView2.setScaleY(0.8f);
            backupImageView2.setVisibility(0);
            if (zHasBitmapImage) {
                backupImageView.bringToFront();
            } else {
                backupImageView.setVisibility(8);
                backupImageView.setImageDrawable(null);
            }
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.8f, 1.0f);
            valueAnimatorOfFloat.setDuration(125L);
            valueAnimatorOfFloat.setInterpolator(CubicBezierInterpolator.EASE_OUT);
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.AudioPlayerAlert$CoverContainer$$ExternalSyntheticLambda1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    AudioPlayerAlert.CoverContainer.m9990$r8$lambda$fkF2vGavqOZgdsKRRz84wVaCZk(backupImageView2, zHasBitmapImage, valueAnimator);
                }
            });
            if (zHasBitmapImage) {
                ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(backupImageView.getScaleX(), 0.8f);
                valueAnimatorOfFloat2.setDuration(125L);
                valueAnimatorOfFloat2.setInterpolator(CubicBezierInterpolator.EASE_IN);
                valueAnimatorOfFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.AudioPlayerAlert$CoverContainer$$ExternalSyntheticLambda2
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        AudioPlayerAlert.CoverContainer.$r8$lambda$KUh1H3SP_GHVwhtYm2kMJv3tCrA(backupImageView, backupImageView2, valueAnimator);
                    }
                });
                valueAnimatorOfFloat2.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.AudioPlayerAlert.CoverContainer.2
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        backupImageView.setVisibility(8);
                        backupImageView.setImageDrawable(null);
                        backupImageView.setAlpha(1.0f);
                    }
                });
                this.animatorSet.playSequentially(valueAnimatorOfFloat2, valueAnimatorOfFloat);
            } else {
                this.animatorSet.play(valueAnimatorOfFloat);
            }
            this.animatorSet.start();
        }

        /* JADX INFO: renamed from: $r8$lambda$fkF2vGavqOZgdsKRRz84wV-aCZk, reason: not valid java name */
        public static /* synthetic */ void m9990$r8$lambda$fkF2vGavqOZgdsKRRz84wVaCZk(BackupImageView backupImageView, boolean z, ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            backupImageView.setScaleX(fFloatValue);
            backupImageView.setScaleY(fFloatValue);
            if (z) {
                return;
            }
            backupImageView.setAlpha(valueAnimator.getAnimatedFraction());
        }

        public static /* synthetic */ void $r8$lambda$KUh1H3SP_GHVwhtYm2kMJv3tCrA(BackupImageView backupImageView, BackupImageView backupImageView2, ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            backupImageView.setScaleX(fFloatValue);
            backupImageView.setScaleY(fFloatValue);
            float animatedFraction = valueAnimator.getAnimatedFraction();
            if (animatedFraction <= 0.25f || backupImageView2.getImageReceiver().hasBitmapImage()) {
                return;
            }
            backupImageView.setAlpha(1.0f - ((animatedFraction - 0.25f) * 1.3333334f));
        }

        public final BackupImageView getImageView() {
            return this.imageViews[this.activeIndex];
        }

        public final BackupImageView getNextImageView() {
            return this.imageViews[this.activeIndex == 0 ? (char) 1 : (char) 0];
        }

        public final ImageReceiver getImageReceiver() {
            return getImageView().getImageReceiver();
        }
    }

    public static abstract class ClippingTextViewSwitcher extends FrameLayout {
        private int activeIndex;
        private AnimatorSet animatorSet;
        private final float[] clipProgress;
        private final Paint erasePaint;
        private final Matrix gradientMatrix;
        private final Paint gradientPaint;
        private LinearGradient gradientShader;
        private final int gradientSize;
        private boolean isCenter;
        private final RectF rectF;
        private int rightPadding;
        private int stableOffest;
        private final TextView[] textViews;

        public abstract TextView createTextView();

        public ClippingTextViewSwitcher(Context context) {
            super(context);
            this.textViews = new TextView[2];
            this.clipProgress = new float[]{0.0f, 0.75f};
            this.gradientSize = AndroidUtilities.dp(24.0f);
            this.stableOffest = -1;
            this.rectF = new RectF();
            for (int i = 0; i < 2; i++) {
                this.textViews[i] = createTextView();
                if (i == 1) {
                    this.textViews[i].setAlpha(0.0f);
                    this.textViews[i].setVisibility(8);
                }
                addView(this.textViews[i], LayoutHelper.createFrame(-2, -1.0f));
            }
            this.gradientMatrix = new Matrix();
            Paint paint = new Paint(1);
            this.gradientPaint = paint;
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
            Paint paint2 = new Paint(1);
            this.erasePaint = paint2;
            paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        }

        @Override // android.view.View
        public void onSizeChanged(int i, int i2, int i3, int i4) {
            super.onSizeChanged(i, i2, i3, i4);
            LinearGradient linearGradient = new LinearGradient(this.gradientSize, 0.0f, 0.0f, 0.0f, 0, -16777216, Shader.TileMode.CLAMP);
            this.gradientShader = linearGradient;
            this.gradientPaint.setShader(linearGradient);
        }

        public void setIsCenter() {
            this.isCenter = true;
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            if (!this.isCenter) {
                return;
            }
            int i5 = 0;
            while (true) {
                TextView[] textViewArr = this.textViews;
                if (i5 >= textViewArr.length) {
                    return;
                }
                TextView textView = textViewArr[i5];
                if (textView != null && textView.getMeasuredWidth() < getMeasuredWidth()) {
                    int measuredWidth = (getMeasuredWidth() - textView.getMeasuredWidth()) / 2;
                    textView.layout(measuredWidth, 0, textView.getMeasuredWidth() + measuredWidth, textView.getMeasuredHeight());
                }
                i5++;
            }
        }

        @Override // android.view.ViewGroup
        public boolean drawChild(Canvas canvas, View view, long j) {
            boolean z;
            TextView[] textViewArr = this.textViews;
            boolean z2 = true;
            int i = view == textViewArr[0] ? 0 : 1;
            if (this.isCenter) {
                this.stableOffest = -1;
            }
            if (this.stableOffest > 0) {
                int length = textViewArr.length;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    }
                    TextView textView = textViewArr[i2];
                    if ((textView instanceof MarqueeTextView) && ((MarqueeTextView) textView).isNeedMarquee()) {
                        this.stableOffest = -1;
                        break;
                    }
                    i2++;
                }
            }
            if (this.stableOffest <= 0 || this.textViews[this.activeIndex].getAlpha() == 1.0f || this.textViews[this.activeIndex].getLayout() == null) {
                z = false;
            } else {
                float primaryHorizontal = this.textViews[this.activeIndex].getLayout().getPrimaryHorizontal(0);
                float primaryHorizontal2 = this.textViews[this.activeIndex].getLayout().getPrimaryHorizontal(this.stableOffest);
                if (primaryHorizontal == primaryHorizontal2) {
                    z2 = false;
                } else {
                    RectF rectF = this.rectF;
                    if (primaryHorizontal2 > primaryHorizontal) {
                        rectF.set(primaryHorizontal, 0.0f, primaryHorizontal2, getMeasuredHeight());
                    } else {
                        rectF.set(primaryHorizontal2, 0.0f, primaryHorizontal, getMeasuredHeight());
                    }
                }
                if (z2 && i == this.activeIndex) {
                    canvas.save();
                    canvas.clipRect(this.rectF);
                    this.textViews[0].draw(canvas);
                    canvas.restore();
                }
                z = z2;
            }
            if (this.clipProgress[i] > 0.0f || z) {
                float fMin = Math.min(view.getWidth(), getWidth());
                float fMin2 = Math.min(view.getHeight(), getHeight());
                int iSaveLayer = canvas.saveLayer(0.0f, 0.0f, fMin, fMin2, null, 31);
                boolean zDrawChild = super.drawChild(canvas, view, j);
                float f = fMin * (1.0f - this.clipProgress[i]);
                float f2 = f + this.gradientSize;
                this.gradientMatrix.setTranslate(f, 0.0f);
                this.gradientShader.setLocalMatrix(this.gradientMatrix);
                canvas.drawRect(f, 0.0f, f2, fMin2, this.gradientPaint);
                if (fMin > f2) {
                    canvas.drawRect(f2, 0.0f, fMin, fMin2, this.erasePaint);
                }
                if (z) {
                    canvas.drawRect(this.rectF, this.erasePaint);
                }
                canvas.restoreToCount(iSaveLayer);
                return zDrawChild;
            }
            return super.drawChild(canvas, view, j);
        }

        public void setText(CharSequence charSequence) {
            setText(charSequence, true);
        }

        public void setText(CharSequence charSequence, boolean z) {
            CharSequence text = this.textViews[this.activeIndex].getText();
            if (TextUtils.isEmpty(text) || !z) {
                this.textViews[this.activeIndex].setText(charSequence);
                return;
            }
            if (TextUtils.equals(charSequence, text)) {
                return;
            }
            this.stableOffest = 0;
            int iMin = Math.min(charSequence.length(), text.length());
            for (int i = 0; i < iMin && charSequence.charAt(i) == text.charAt(i); i++) {
                this.stableOffest++;
            }
            if (this.stableOffest <= 3) {
                this.stableOffest = -1;
            }
            final int i2 = this.activeIndex;
            final int i3 = i2 == 0 ? 1 : 0;
            this.activeIndex = i3;
            AnimatorSet animatorSet = this.animatorSet;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
            AnimatorSet animatorSet2 = new AnimatorSet();
            this.animatorSet = animatorSet2;
            animatorSet2.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.AudioPlayerAlert.ClippingTextViewSwitcher.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    ClippingTextViewSwitcher.this.textViews[i2].setVisibility(8);
                }
            });
            this.textViews[i3].setText(charSequence);
            this.textViews[i3].bringToFront();
            this.textViews[i3].setVisibility(0);
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.clipProgress[i2], 0.75f);
            valueAnimatorOfFloat.setDuration(200L);
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.AudioPlayerAlert$ClippingTextViewSwitcher$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$setText$0(i2, valueAnimator);
                }
            });
            ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(this.clipProgress[i3], 0.0f);
            valueAnimatorOfFloat2.setStartDelay(100L);
            valueAnimatorOfFloat2.setDuration(200L);
            valueAnimatorOfFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.AudioPlayerAlert$ClippingTextViewSwitcher$$ExternalSyntheticLambda1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$setText$1(i3, valueAnimator);
                }
            });
            Property property = View.ALPHA;
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.textViews[i2], (Property<TextView, Float>) property, 0.0f);
            objectAnimatorOfFloat.setStartDelay(75L);
            objectAnimatorOfFloat.setDuration(150L);
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.textViews[i3], (Property<TextView, Float>) property, 1.0f);
            objectAnimatorOfFloat2.setStartDelay(75L);
            objectAnimatorOfFloat2.setDuration(150L);
            this.animatorSet.playTogether(valueAnimatorOfFloat, valueAnimatorOfFloat2, objectAnimatorOfFloat, objectAnimatorOfFloat2);
            this.animatorSet.start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setText$0(int i, ValueAnimator valueAnimator) {
            this.clipProgress[i] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            invalidate();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setText$1(int i, ValueAnimator valueAnimator) {
            this.clipProgress[i] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            invalidate();
        }

        public TextView getTextView() {
            return this.textViews[this.activeIndex];
        }

        public TextView getNextTextView() {
            return this.textViews[this.activeIndex == 0 ? (char) 1 : (char) 0];
        }

        public int getCustomPaddingRight() {
            return this.rightPadding;
        }

        public void setCustomPaddingRight(int i) {
            this.rightPadding = i;
            for (TextView textView : this.textViews) {
                if (textView instanceof MarqueeTextView) {
                    ((MarqueeTextView) textView).setCustomPaddingRight(i);
                }
            }
            invalidate();
        }
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet
    public boolean isTouchOutside(float f, float f2) {
        FrameLayout frameLayout = this.topBulletinContainer;
        if (frameLayout != null && frameLayout.getChildCount() > 0) {
            View childAt = this.topBulletinContainer.getChildAt(0);
            if (f2 >= this.topBulletinContainer.getY() + childAt.getY() && f2 <= this.topBulletinContainer.getY() + childAt.getY() + childAt.getHeight() && f >= this.topBulletinContainer.getX() + childAt.getX() && f <= this.topBulletinContainer.getX() + childAt.getX() + childAt.getWidth()) {
                return false;
            }
        }
        int top = this.containerView.getTop();
        Drawable drawable = this.shadowDrawable;
        return f2 < ((float) (top + (drawable != null ? drawable.getBounds().top : 0))) || f < ((float) this.containerView.getLeft()) || f > ((float) this.containerView.getRight());
    }
}
