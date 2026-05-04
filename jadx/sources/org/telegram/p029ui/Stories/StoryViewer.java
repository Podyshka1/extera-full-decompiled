package org.telegram.p029ui.Stories;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.util.LongSparseArray;
import android.util.SparseArray;
import android.view.GestureDetector;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.core.graphics.ColorUtils;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.exteragram.messenger.ExteraConfig;
import com.google.android.exoplayer2.p019ui.AspectRatioFrameLayout;
import java.util.ArrayList;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.AnimationNotificationsLocker;
import org.telegram.messenger.BotWebViewVibrationEffect;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.FileStreamLoadOperation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.pip.source.IPipSourceDelegate;
import org.telegram.messenger.pip.utils.PipUtils;
import org.telegram.messenger.support.LongSparseIntArray;
import org.telegram.messenger.video.VideoPlayerHolderBase;
import org.telegram.p029ui.ActionBar.AdjustPanLayoutHelper;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.ArticleViewer;
import org.telegram.p029ui.Cells.ChatActionCell;
import org.telegram.p029ui.Cells.ChatMessageCell;
import org.telegram.p029ui.Components.Bulletin;
import org.telegram.p029ui.Components.BulletinFactory;
import org.telegram.p029ui.Components.ChatActivityEnterView;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.RadialProgress;
import org.telegram.p029ui.Components.ReactionsContainerLayout;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.p029ui.Components.ShareAlert;
import org.telegram.p029ui.Components.SizeNotifierFrameLayout;
import org.telegram.p029ui.LaunchActivity;
import org.telegram.p029ui.Stories.PeerStoriesView;
import org.telegram.p029ui.Stories.StoriesController;
import org.telegram.p029ui.Stories.StoriesListPlaceProvider;
import org.telegram.p029ui.Stories.StoriesUtilities;
import org.telegram.p029ui.Stories.recorder.LivePlayerView;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.p028tl.TL_stories;
import org.webrtc.MediaStreamTrack;

/* JADX INFO: loaded from: classes3.dex */
public class StoryViewer implements NotificationCenter.NotificationCenterDelegate, BaseFragment.AttachedSheet, IPipSourceDelegate {
    public static boolean animationInProgress;
    private static boolean isInSilentMode;
    private static TL_stories.StoryItem lastStoryItem;
    private static boolean runOpenAnimationAfterLayout;
    boolean allowIntercept;
    boolean allowSelfStoriesView;
    boolean allowSwipeToDissmiss;
    boolean allowSwipeToReply;
    private boolean animateAvatar;
    StoriesListPlaceProvider.AvatarOverlaysView animateFromCell;
    AspectRatioFrameLayout aspectRatioFrameLayout;
    float clipBottom;
    float clipTop;
    HwFrameLayout containerView;
    public int currentAccount;
    Dialog currentDialog;
    PeerStoriesView.VideoPlayerSharedScope currentPlayerScope;
    BaseFragment.AttachedSheet currentSheet;
    public int dayStoryId;
    private Runnable delayedTapRunnable;
    private boolean flingCalled;
    BaseFragment fragment;
    public boolean fromBottomSheet;
    float fromDismissOffset;
    float fromHeight;
    private int[] fromRadius;
    float fromWidth;
    float fromX;
    float fromXCell;
    float fromY;
    float fromYCell;
    private boolean fullyVisible;
    GestureDetector gestureDetector;
    private float hideEnterViewProgress;
    boolean inSeekingMode;
    boolean inSwipeToDissmissMode;
    Paint inputBackgroundPaint;
    private boolean invalidateOutRect;
    private boolean isBulletinVisible;
    private boolean isCaption;
    private boolean isCaptionPartVisible;
    private boolean isHintVisible;
    private boolean isInPinchToZoom;
    private boolean isInTextSelectionMode;
    private boolean isInTouchMode;
    private boolean isLikesReactions;
    public boolean isLongpressed;
    private boolean isOverlayVisible;
    private boolean isPopupVisible;
    private boolean isRecording;
    boolean isShowing;
    boolean isSingleStory;
    private boolean isSwiping;
    private boolean isWaiting;

    /* JADX INFO: renamed from: j */
    int f2183j;
    boolean keyboardVisible;
    long lastDialogId;
    int lastPosition;
    private float lastStoryContainerHeight;
    Uri lastUri;
    LivePlayer livePlayer;
    public LivePlayerView liveView;
    private int messageId;
    private Runnable onCloseListener;
    ValueAnimator openCloseAnimator;
    boolean openedFromLightNavigationBar;
    private boolean opening;
    TL_stories.PeerStories overrideUserStories;
    LaunchActivity parentActivity;
    private boolean paused;
    public LivePlayerView pipLiveView;
    public PlaceProvider placeProvider;
    VideoPlayerHolder playerHolder;
    private long playerSavedPosition;
    float progressToDismiss;
    float progressToOpen;
    private int realKeyboardHeight;
    boolean reversed;
    float selfStoriesViewsOffset;
    SelfStoryViewsView selfStoryViewsView;
    private boolean showViewsAfterOpening;
    TL_stories.StoryItem singleStory;
    boolean singleStoryDeleted;
    private StoriesIntro storiesIntro;
    StoriesController.StoriesList storiesList;
    public StoriesViewPager storiesViewPager;
    private SurfaceView surfaceView;
    float swipeToDismissHorizontalDirection;
    float swipeToDismissHorizontalOffset;
    float swipeToDismissOffset;
    ValueAnimator swipeToDissmissBackAnimator;
    ValueAnimator swipeToReplyBackAnimator;
    float swipeToReplyOffset;
    float swipeToReplyProgress;
    boolean swipeToReplyWaitingKeyboard;
    ValueAnimator swipeToViewsAnimator;
    private TextureView textureView;
    public boolean unreadStateChanged;
    boolean verticalScrollDetected;
    private StoriesVolumeControl volumeControl;
    WindowManager.LayoutParams windowLayoutParams;
    WindowManager windowManager;
    public SizeNotifierFrameLayout windowView;
    public static ArrayList globalInstances = new ArrayList();
    public static float currentSpeed = 1.0f;
    private static boolean checkSilentMode = true;
    private static final LongSparseArray replyDrafts = new LongSparseArray();

    /* JADX INFO: renamed from: J */
    static int f2182J = 0;
    public boolean USE_SURFACE_VIEW = SharedConfig.useSurfaceInStories;
    public boolean ATTACH_TO_FRAGMENT = true;
    public boolean ATTACHED_FRAGMENT_IS_EDGE_TO_EDGE = false;
    public boolean foundViewToClose = false;
    public boolean allowScreenshots = true;
    Theme.ResourcesProvider resourcesProvider = new DarkThemeResourceProvider();
    RectF avatarRectTmp = new RectF();
    float[] pointPosition = new float[2];
    public final TransitionViewHolder transitionViewHolder = new TransitionViewHolder();
    private boolean allowTouchesByViewpager = false;
    ArrayList doOnAnimationReadyRunnables = new ArrayList();
    private boolean isClosed = true;
    AnimationNotificationsLocker locker = new AnimationNotificationsLocker();
    ArrayList preparedPlayers = new ArrayList();
    public boolean isTranslating = false;
    Runnable longPressRunnable = new Runnable() { // from class: org.telegram.ui.Stories.StoryViewer$$ExternalSyntheticLambda3
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.lambda$new$0();
        }
    };
    public LongSparseIntArray savedPositions = new LongSparseIntArray();

    /* JADX INFO: loaded from: classes7.dex */
    public interface HolderClip {
        void clip(Canvas canvas, RectF rectF, float f, boolean z);
    }

    /* JADX INFO: loaded from: classes7.dex */
    public interface HolderDrawAbove {
        void draw(Canvas canvas, RectF rectF, float f, boolean z);
    }

    private void updatePipSource() {
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    public /* synthetic */ void dismiss(boolean z) {
        dismiss();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    public /* synthetic */ BulletinFactory getBulletinFactory() {
        return BaseFragment.AttachedSheet.CC.$default$getBulletinFactory(this);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    public boolean isAttachedLightStatusBar() {
        return false;
    }

    @Override // org.telegram.messenger.pip.source.IPipSourceDelegate
    public /* synthetic */ void pipRenderBackground(Canvas canvas) {
        IPipSourceDelegate.CC.$default$pipRenderBackground(this, canvas);
    }

    @Override // org.telegram.messenger.pip.source.IPipSourceDelegate
    public /* synthetic */ void pipRenderForeground(Canvas canvas) {
        IPipSourceDelegate.CC.$default$pipRenderForeground(this, canvas);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    public /* synthetic */ void setLastVisible(boolean z) {
        BaseFragment.AttachedSheet.CC.$default$setLastVisible(this, z);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    public void setOnDismissListener(Runnable runnable) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        setLongPressed(true);
    }

    public static boolean isShowingImage(MessageObject messageObject) {
        return lastStoryItem != null && (messageObject.type == 23 || messageObject.isWebpage()) && !runOpenAnimationAfterLayout && lastStoryItem.messageId == messageObject.getId() && lastStoryItem.messageType != 3;
    }

    public static void closeGlobalInstances() {
        for (int i = 0; i < globalInstances.size(); i++) {
            ((StoryViewer) globalInstances.get(i)).close(false);
        }
        globalInstances.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setLongPressed(boolean z) {
        PeerStoriesView currentPeerView;
        PeerStoriesView currentPeerView2;
        PeerStoriesView.StoryItemHolder storyItemHolder;
        VideoPlayerHolder videoPlayerHolder;
        PeerStoriesView.VideoPlayerSharedScope videoPlayerSharedScope;
        if (this.isLongpressed != z) {
            this.isLongpressed = z;
            if (z && !this.isInPinchToZoom && (currentPeerView2 = this.storiesViewPager.getCurrentPeerView()) != null && (storyItemHolder = currentPeerView2.currentStory) != null && !storyItemHolder.isLive() && currentPeerView2.currentStory.uploadingStory == null) {
                if (!this.inSeekingMode && !this.inSwipeToDissmissMode && (videoPlayerSharedScope = this.currentPlayerScope) != null && videoPlayerSharedScope.player != null) {
                    currentPeerView2.storyContainer.invalidate();
                    BotWebViewVibrationEffect.IMPACT_LIGHT.vibrate();
                }
                PeerStoriesView.VideoPlayerSharedScope videoPlayerSharedScope2 = this.currentPlayerScope;
                if (videoPlayerSharedScope2 != null && (videoPlayerHolder = videoPlayerSharedScope2.player) != null && !this.inSeekingMode) {
                    videoPlayerHolder.setSeeking(true);
                }
                this.inSeekingMode = true;
            }
            updatePlayingMode();
            StoriesViewPager storiesViewPager = this.storiesViewPager;
            if (storiesViewPager == null || (currentPeerView = storiesViewPager.getCurrentPeerView()) == null) {
                return;
            }
            currentPeerView.setLongpressed(this.isLongpressed);
        }
    }

    public StoryViewer(BaseFragment baseFragment) {
        int i = f2182J;
        f2182J = i + 1;
        this.f2183j = i;
        this.inputBackgroundPaint = new Paint(1);
        this.fragment = baseFragment;
    }

    public void setSpeed(float f) {
        currentSpeed = f;
        VideoPlayerHolder videoPlayerHolder = this.playerHolder;
        if (videoPlayerHolder != null) {
            videoPlayerHolder.setSpeed(f);
        }
    }

    public void open(Context context, TL_stories.StoryItem storyItem, PlaceProvider placeProvider) {
        open(UserConfig.selectedAccount, context, storyItem, placeProvider);
    }

    public void open(int i, Context context, TL_stories.StoryItem storyItem, PlaceProvider placeProvider) {
        if (storyItem == null) {
            return;
        }
        this.currentAccount = i;
        if (storyItem.dialogId <= 0 || MessagesController.getInstance(i).getUser(Long.valueOf(storyItem.dialogId)) != null) {
            if (storyItem.dialogId >= 0 || MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-storyItem.dialogId)) != null) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(Long.valueOf(storyItem.dialogId));
                open(i, context, storyItem, arrayList, 0, null, null, placeProvider, false);
            }
        }
    }

    public void open(Context context, long j, PlaceProvider placeProvider) {
        this.currentAccount = UserConfig.selectedAccount;
        ArrayList arrayList = new ArrayList();
        arrayList.add(Long.valueOf(j));
        MessagesController.getInstance(this.currentAccount).getStoriesController().checkExpiredStories(j);
        open(context, null, arrayList, 0, null, null, placeProvider, false);
    }

    public void open(Context context, int i, StoriesController.StoriesList storiesList, PlaceProvider placeProvider) {
        this.currentAccount = UserConfig.selectedAccount;
        ArrayList arrayList = new ArrayList();
        arrayList.add(Long.valueOf(storiesList.dialogId));
        this.dayStoryId = i;
        open(context, null, arrayList, 0, storiesList, null, placeProvider, false);
    }

    public void open(Context context, TL_stories.PeerStories peerStories, PlaceProvider placeProvider) {
        ArrayList<TL_stories.StoryItem> arrayList;
        if (peerStories == null || (arrayList = peerStories.stories) == null || arrayList.isEmpty()) {
            this.doOnAnimationReadyRunnables.clear();
            return;
        }
        this.currentAccount = UserConfig.selectedAccount;
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(Long.valueOf(DialogObject.getPeerDialogId(peerStories.peer)));
        open(context, peerStories.stories.get(0), arrayList2, 0, null, peerStories, placeProvider, false);
    }

    public void open(Context context, TL_stories.StoryItem storyItem, int i, StoriesController.StoriesList storiesList, boolean z, PlaceProvider placeProvider) {
        this.currentAccount = UserConfig.selectedAccount;
        ArrayList arrayList = new ArrayList();
        arrayList.add(Long.valueOf(storiesList.dialogId));
        this.dayStoryId = i;
        open(context, storyItem, arrayList, 0, storiesList, null, placeProvider, z);
    }

    public void open(Context context, TL_stories.StoryItem storyItem, ArrayList arrayList, int i, StoriesController.StoriesList storiesList, TL_stories.PeerStories peerStories, PlaceProvider placeProvider, boolean z) {
        open(UserConfig.selectedAccount, context, storyItem, arrayList, i, storiesList, peerStories, placeProvider, z);
    }

    public void open(int i, Context context, TL_stories.StoryItem storyItem, ArrayList arrayList, int i2, StoriesController.StoriesList storiesList, TL_stories.PeerStories peerStories, PlaceProvider placeProvider, boolean z) {
        OnBackInvokedDispatcher onBackInvokedDispatcherFindOnBackInvokedDispatcher;
        if (!AndroidUtilities.isContextSafe(context)) {
            this.doOnAnimationReadyRunnables.clear();
            return;
        }
        ValueAnimator valueAnimator = this.openCloseAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.openCloseAnimator = null;
        }
        if (this.isShowing) {
            this.doOnAnimationReadyRunnables.clear();
            return;
        }
        setSpeed(1.0f);
        boolean z2 = (AndroidUtilities.isTablet() || this.fromBottomSheet) ? false : true;
        this.ATTACH_TO_FRAGMENT = z2;
        this.USE_SURFACE_VIEW = SharedConfig.useSurfaceInStories && z2;
        this.messageId = storyItem == null ? 0 : storyItem.messageId;
        this.isSingleStory = storyItem != null && storiesList == null && peerStories == null;
        this.singleStoryDeleted = false;
        if (storyItem != null) {
            this.singleStory = storyItem;
            lastStoryItem = storyItem;
        }
        this.storiesList = storiesList;
        this.overrideUserStories = peerStories;
        this.placeProvider = placeProvider;
        this.reversed = z;
        this.currentAccount = i;
        this.swipeToDismissOffset = 0.0f;
        this.swipeToDismissHorizontalOffset = 0.0f;
        StoriesViewPager storiesViewPager = this.storiesViewPager;
        if (storiesViewPager != null) {
            storiesViewPager.setHorizontalProgressToDismiss(0.0f);
            this.storiesViewPager.currentState = 0;
        }
        this.swipeToReplyProgress = 0.0f;
        this.swipeToReplyOffset = 0.0f;
        this.allowSwipeToReply = false;
        this.progressToDismiss = 0.0f;
        this.isShowing = true;
        this.isLongpressed = false;
        this.isTranslating = false;
        this.savedPositions.clear();
        AndroidUtilities.cancelRunOnUIThread(this.longPressRunnable);
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        this.windowLayoutParams = layoutParams;
        layoutParams.height = -1;
        layoutParams.format = -3;
        layoutParams.width = -1;
        layoutParams.gravity = 51;
        layoutParams.type = 99;
        layoutParams.softInputMode = 16;
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 28) {
            layoutParams.layoutInDisplayCutoutMode = 1;
        }
        layoutParams.flags = -2147417728;
        this.isClosed = false;
        this.unreadStateChanged = false;
        BaseFragment lastFragment = LaunchActivity.getLastFragment();
        if (this.windowView == null) {
            this.gestureDetector = new GestureDetector(new GestureDetector.OnGestureListener() { // from class: org.telegram.ui.Stories.StoryViewer.1
                @Override // android.view.GestureDetector.OnGestureListener
                public void onLongPress(MotionEvent motionEvent) {
                }

                @Override // android.view.GestureDetector.OnGestureListener
                public void onShowPress(MotionEvent motionEvent) {
                }

                @Override // android.view.GestureDetector.OnGestureListener
                public boolean onDown(MotionEvent motionEvent) {
                    StoryViewer.this.flingCalled = false;
                    StoryViewer storyViewer = StoryViewer.this;
                    return !storyViewer.findClickableView(storyViewer.windowView, motionEvent.getX(), motionEvent.getY(), false);
                }

                @Override // android.view.GestureDetector.OnGestureListener
                public boolean onSingleTapUp(MotionEvent motionEvent) {
                    StoryViewer storyViewer = StoryViewer.this;
                    if (storyViewer.selfStoriesViewsOffset == 0.0f && storyViewer.allowIntercept) {
                        if (storyViewer.keyboardVisible || storyViewer.isCaption || StoryViewer.this.isCaptionPartVisible || StoryViewer.this.isHintVisible || StoryViewer.this.isInTextSelectionMode) {
                            StoryViewer.this.closeKeyboardOrEmoji();
                        } else {
                            PeerStoriesView currentPeerView = StoryViewer.this.getCurrentPeerView();
                            if (currentPeerView != null && currentPeerView.currentStory.isLive()) {
                                return false;
                            }
                            StoryViewer.this.switchByTap(motionEvent.getX() > ((float) StoryViewer.this.containerView.getMeasuredWidth()) * 0.33f);
                        }
                    }
                    return false;
                }

                /* JADX WARN: Removed duplicated region for block: B:45:0x00d4  */
                @Override // android.view.GestureDetector.OnGestureListener
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                    float f3;
                    StoryViewer storyViewer = StoryViewer.this;
                    if (!storyViewer.inSwipeToDissmissMode) {
                        return false;
                    }
                    if (storyViewer.allowSwipeToReply) {
                        storyViewer.swipeToReplyOffset += f2;
                        int iM1124dp = AndroidUtilities.m1124dp(200.0f);
                        StoryViewer storyViewer2 = StoryViewer.this;
                        float f4 = iM1124dp;
                        if (storyViewer2.swipeToReplyOffset > f4 && !storyViewer2.swipeToReplyWaitingKeyboard) {
                            storyViewer2.swipeToReplyWaitingKeyboard = true;
                            storyViewer2.showKeyboard();
                            try {
                                StoryViewer.this.windowView.performHapticFeedback(3);
                            } catch (Exception unused) {
                            }
                        }
                        StoryViewer storyViewer3 = StoryViewer.this;
                        storyViewer3.swipeToReplyProgress = Utilities.clamp(storyViewer3.swipeToReplyOffset / f4, 1.0f, 0.0f);
                        if (StoryViewer.this.storiesViewPager.getCurrentPeerView() != null) {
                            StoryViewer.this.storiesViewPager.getCurrentPeerView().invalidate();
                        }
                        StoryViewer storyViewer4 = StoryViewer.this;
                        if (storyViewer4.swipeToReplyOffset >= 0.0f) {
                            return true;
                        }
                        storyViewer4.swipeToReplyOffset = 0.0f;
                        storyViewer4.allowSwipeToReply = false;
                    }
                    StoryViewer storyViewer5 = StoryViewer.this;
                    if (storyViewer5.allowSelfStoriesView) {
                        float f5 = storyViewer5.selfStoriesViewsOffset;
                        if (f5 > storyViewer5.selfStoryViewsView.maxSelfStoriesViewsOffset && f2 > 0.0f) {
                            storyViewer5.selfStoriesViewsOffset = f5 + (0.05f * f2);
                        } else {
                            storyViewer5.selfStoriesViewsOffset = f5 + f2;
                        }
                        Bulletin.hideVisible(storyViewer5.windowView);
                        if (StoryViewer.this.storiesViewPager.getCurrentPeerView() != null) {
                            StoryViewer.this.storiesViewPager.getCurrentPeerView().invalidate();
                        }
                        StoryViewer.this.containerView.invalidate();
                        StoryViewer storyViewer6 = StoryViewer.this;
                        if (storyViewer6.selfStoriesViewsOffset >= 0.0f) {
                            return true;
                        }
                        storyViewer6.selfStoriesViewsOffset = 0.0f;
                        storyViewer6.allowSelfStoriesView = false;
                    }
                    StoryViewer storyViewer7 = StoryViewer.this;
                    if (storyViewer7.progressToDismiss > 0.8f) {
                        float f6 = -f2;
                        f3 = ((f6 <= 0.0f || storyViewer7.swipeToDismissOffset <= 0.0f) && (f6 >= 0.0f || storyViewer7.swipeToDismissOffset >= 0.0f)) ? 0.6f : 0.3f;
                    }
                    storyViewer7.swipeToDismissOffset -= f2 * f3;
                    Bulletin.hideVisible(storyViewer7.windowView);
                    StoryViewer.this.updateProgressToDismiss();
                    return true;
                }

                @Override // android.view.GestureDetector.OnGestureListener
                public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                    StoryViewer storyViewer = StoryViewer.this;
                    if (storyViewer.swipeToReplyOffset != 0.0f && storyViewer.storiesIntro == null && f2 < -1000.0f) {
                        StoryViewer storyViewer2 = StoryViewer.this;
                        if (!storyViewer2.swipeToReplyWaitingKeyboard) {
                            storyViewer2.swipeToReplyWaitingKeyboard = true;
                            try {
                                storyViewer2.windowView.performHapticFeedback(3);
                            } catch (Exception unused) {
                            }
                            StoryViewer.this.showKeyboard();
                        }
                    }
                    StoryViewer storyViewer3 = StoryViewer.this;
                    if (storyViewer3.selfStoriesViewsOffset != 0.0f) {
                        if (f2 < -1000.0f) {
                            storyViewer3.cancelSwipeToViews(true);
                        } else if (f2 > 1000.0f) {
                            storyViewer3.cancelSwipeToViews(false);
                        } else {
                            storyViewer3.cancelSwipeToViews(storyViewer3.selfStoryViewsView.progressToOpen > 0.5f);
                        }
                    }
                    StoryViewer.this.flingCalled = true;
                    return false;
                }
            });
            this.windowView = new C69592(context, lastFragment);
        }
        if (this.containerView == null) {
            this.containerView = new HwFrameLayout(context) { // from class: org.telegram.ui.Stories.StoryViewer.3
                public int measureKeyboardHeight() {
                    View rootView = getRootView();
                    Rect rect = AndroidUtilities.rectTmp2;
                    getWindowVisibleDisplayFrame(rect);
                    if (rect.bottom == 0 && rect.top == 0) {
                        return 0;
                    }
                    return Math.max(0, ((rootView.getHeight() - (rect.top != 0 ? AndroidUtilities.statusBarHeight : 0)) - AndroidUtilities.getViewInset(rootView)) - (rect.bottom - rect.top));
                }

                @Override // android.widget.FrameLayout, android.view.View
                protected void onMeasure(int i4, int i5) {
                    int size = View.MeasureSpec.getSize(i5);
                    StoryViewer storyViewer = StoryViewer.this;
                    if (!storyViewer.ATTACH_TO_FRAGMENT || storyViewer.ATTACHED_FRAGMENT_IS_EDGE_TO_EDGE) {
                        storyViewer.setKeyboardHeightFromParent(measureKeyboardHeight());
                        size += StoryViewer.this.realKeyboardHeight;
                    }
                    int size2 = View.MeasureSpec.getSize(i4);
                    int i6 = (int) ((size2 * 16.0f) / 9.0f);
                    if (size > i6) {
                        StoryViewer.this.storiesViewPager.getLayoutParams().width = -1;
                        size = i6;
                    } else {
                        int i7 = (int) ((size / 16.0f) * 9.0f);
                        StoryViewer.this.storiesViewPager.getLayoutParams().width = i7;
                        size2 = i7;
                    }
                    StoryViewer.this.aspectRatioFrameLayout.getLayoutParams().height = size + 1;
                    StoryViewer.this.aspectRatioFrameLayout.getLayoutParams().width = size2;
                    ((FrameLayout.LayoutParams) StoryViewer.this.aspectRatioFrameLayout.getLayoutParams()).topMargin = AndroidUtilities.statusBarHeight;
                    super.onMeasure(i4, i5);
                }

                @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
                protected void onLayout(boolean z3, int i4, int i5, int i6, int i7) {
                    super.onLayout(z3, i4, i5, i6, i7);
                }

                @Override // android.view.ViewGroup, android.view.View
                protected void dispatchDraw(Canvas canvas) {
                    PeerStoriesView currentPeerView = StoryViewer.this.storiesViewPager.getCurrentPeerView();
                    StoryViewer storyViewer = StoryViewer.this;
                    SelfStoryViewsView selfStoryViewsView = storyViewer.selfStoryViewsView;
                    if (selfStoryViewsView != null && currentPeerView != null) {
                        selfStoryViewsView.setOffset(storyViewer.selfStoriesViewsOffset);
                        StoryViewer storyViewer2 = StoryViewer.this;
                        if (storyViewer2.selfStoryViewsView.progressToOpen == 1.0f) {
                            storyViewer2.storiesViewPager.setVisibility(4);
                        } else {
                            storyViewer2.storiesViewPager.setVisibility(0);
                        }
                        StoryViewer.this.storiesViewPager.checkPageVisibility();
                        float top = currentPeerView.getTop() + currentPeerView.storyContainer.getTop();
                        float f = StoryViewer.this.selfStoryViewsView.progressToOpen;
                        getMeasuredHeight();
                        float f2 = StoryViewer.this.selfStoriesViewsOffset;
                        getMeasuredHeight();
                        if (currentPeerView.storyContainer.getMeasuredHeight() > 0) {
                            StoryViewer.this.lastStoryContainerHeight = currentPeerView.storyContainer.getMeasuredHeight();
                        }
                        StoryViewer storyViewer3 = StoryViewer.this;
                        float fLerp = AndroidUtilities.lerp(1.0f, storyViewer3.selfStoryViewsView.toHeight / storyViewer3.lastStoryContainerHeight, f);
                        StoryViewer.this.storiesViewPager.setPivotY(top);
                        StoryViewer.this.storiesViewPager.setPivotX(getMeasuredWidth() / 2.0f);
                        StoryViewer.this.storiesViewPager.setScaleX(fLerp);
                        StoryViewer.this.storiesViewPager.setScaleY(fLerp);
                        currentPeerView.forceUpdateOffsets = true;
                        StoryViewer storyViewer4 = StoryViewer.this;
                        if (storyViewer4.selfStoriesViewsOffset == 0.0f) {
                            currentPeerView.setViewsThumbImageReceiver(0.0f, 0.0f, 0.0f, null);
                        } else {
                            currentPeerView.setViewsThumbImageReceiver(f, fLerp, top, storyViewer4.selfStoryViewsView.getCrossfadeToImage());
                        }
                        currentPeerView.invalidate();
                        currentPeerView.outlineProvider.radiusInDp = (int) AndroidUtilities.lerp(10.0f, 6.0f / r5, StoryViewer.this.selfStoryViewsView.progressToOpen);
                        currentPeerView.storyContainer.invalidateOutline();
                        StoryViewer storyViewer5 = StoryViewer.this;
                        storyViewer5.storiesViewPager.setTranslationY((storyViewer5.selfStoryViewsView.toY - top) * f);
                    }
                    if (currentPeerView != null) {
                        StoryViewer.this.volumeControl.setTranslationY(((currentPeerView.getY() + currentPeerView.storyContainer.getY()) - StoryViewer.this.volumeControl.getTop()) - AndroidUtilities.m1124dp(4.0f));
                    }
                    super.dispatchDraw(canvas);
                }
            };
            HwStoriesViewPager hwStoriesViewPager = new HwStoriesViewPager(this.currentAccount, context, this, this.resourcesProvider) { // from class: org.telegram.ui.Stories.StoryViewer.4
                @Override // org.telegram.p029ui.Stories.StoriesViewPager
                public void onStateChanged() {
                    StoryViewer storyViewer = StoryViewer.this;
                    if (storyViewer.storiesViewPager.currentState == 1) {
                        AndroidUtilities.cancelRunOnUIThread(storyViewer.longPressRunnable);
                    }
                }
            };
            this.storiesViewPager = hwStoriesViewPager;
            hwStoriesViewPager.setDelegate(new C69625(storiesList, arrayList, context));
            this.containerView.addView(this.storiesViewPager, LayoutHelper.createFrame(-1, -1, 1));
            this.aspectRatioFrameLayout = new AspectRatioFrameLayout(context);
            if (this.USE_SURFACE_VIEW) {
                SurfaceView surfaceView = new SurfaceView(context);
                this.surfaceView = surfaceView;
                surfaceView.setZOrderMediaOverlay(false);
                this.surfaceView.setZOrderOnTop(false);
                this.aspectRatioFrameLayout.addView(this.surfaceView);
            } else {
                HwTextureView hwTextureView = new HwTextureView(context) { // from class: org.telegram.ui.Stories.StoryViewer.6
                    @Override // org.telegram.p029ui.Stories.HwTextureView, android.view.View
                    public void invalidate() {
                        super.invalidate();
                        PeerStoriesView.VideoPlayerSharedScope videoPlayerSharedScope = StoryViewer.this.currentPlayerScope;
                        if (videoPlayerSharedScope != null) {
                            videoPlayerSharedScope.invalidate();
                        }
                    }
                };
                this.textureView = hwTextureView;
                this.aspectRatioFrameLayout.addView(hwTextureView);
            }
            LivePlayerView livePlayerView = new LivePlayerView(context, this.currentAccount, false);
            this.liveView = livePlayerView;
            livePlayerView.setVisibility(8);
            this.aspectRatioFrameLayout.addView(this.liveView);
            StoriesVolumeControl storiesVolumeControl = new StoriesVolumeControl(context);
            this.volumeControl = storiesVolumeControl;
            this.containerView.addView(storiesVolumeControl, LayoutHelper.createFrame(-1, -1.0f, 0, 4.0f, 0.0f, 4.0f, 0.0f));
        }
        LivePlayerView livePlayerView2 = this.liveView;
        if (livePlayerView2 != null) {
            livePlayerView2.setAccount(this.currentAccount);
        }
        AndroidUtilities.removeFromParent(this.aspectRatioFrameLayout);
        this.windowView.addView(this.aspectRatioFrameLayout);
        SurfaceView surfaceView2 = this.surfaceView;
        if (surfaceView2 != null) {
            surfaceView2.setVisibility(4);
        }
        AndroidUtilities.removeFromParent(this.containerView);
        this.windowView.addView(this.containerView);
        this.windowView.setClipChildren(false);
        if (this.isSingleStory) {
            updateTransitionParams();
        }
        if (storiesList != null) {
            this.storiesViewPager.setDays(storiesList.dialogId, storiesList.getDays(), this.currentAccount);
        } else {
            this.storiesViewPager.setPeerIds(arrayList, this.currentAccount, i2);
        }
        this.windowManager = (WindowManager) context.getSystemService("window");
        if (lastFragment == null || lastFragment.getLayoutContainer() == null || lastFragment.isSupportEdgeToEdge()) {
            this.ATTACH_TO_FRAGMENT = false;
        }
        this.ATTACHED_FRAGMENT_IS_EDGE_TO_EDGE = this.ATTACH_TO_FRAGMENT && lastFragment != null && lastFragment.isSupportEdgeToEdge();
        ViewCompat.setOnApplyWindowInsetsListener(this.containerView, new OnApplyWindowInsetsListener() { // from class: org.telegram.ui.Stories.StoryViewer$$ExternalSyntheticLambda5
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return this.f$0.lambda$open$1(view, windowInsetsCompat);
            }
        });
        if (this.ATTACH_TO_FRAGMENT) {
            AndroidUtilities.removeFromParent(this.windowView);
            this.windowView.setTag(-15654349, new Object());
            lastFragment.getLayoutContainer().addView(this.windowView);
            if (!this.ATTACHED_FRAGMENT_IS_EDGE_TO_EDGE) {
                AndroidUtilities.requestAdjustResize(lastFragment.getParentActivity(), lastFragment.getClassGuid());
            }
        } else {
            this.windowView.setFocusable(false);
            this.containerView.setFocusable(false);
            this.containerView.setSystemUiVisibility(1792);
            AndroidUtilities.setPreferredMaxRefreshRate(this.windowManager, this.windowView, this.windowLayoutParams);
            this.windowManager.addView(this.windowView, this.windowLayoutParams);
            if (i3 >= 33 && (onBackInvokedDispatcherFindOnBackInvokedDispatcher = this.windowView.findOnBackInvokedDispatcher()) != null) {
                onBackInvokedDispatcherFindOnBackInvokedDispatcher.registerOnBackInvokedCallback(0, new OnBackInvokedCallback() { // from class: org.telegram.ui.Stories.StoryViewer$$ExternalSyntheticLambda6
                    public final void onBackInvoked() {
                        this.f$0.lambda$open$2();
                    }
                });
            }
        }
        this.windowView.requestLayout();
        runOpenAnimationAfterLayout = true;
        updateTransitionParams();
        this.progressToOpen = 0.0f;
        checkNavBarColor();
        animationInProgress = true;
        checkInSilentMode();
        if (this.ATTACH_TO_FRAGMENT) {
            lockOrientation(true);
        }
        if (!this.ATTACH_TO_FRAGMENT) {
            globalInstances.add(this);
        }
        if (lastFragment != null) {
            AndroidUtilities.hideKeyboard(lastFragment.getFragmentView());
        }
    }

    /* JADX INFO: renamed from: org.telegram.ui.Stories.StoryViewer$2 */
    /* JADX INFO: loaded from: classes7.dex */
    class C69592 extends SizeNotifierFrameLayout {
        float lastTouchX;
        SparseArray lastX;
        final RectF outFromRectAvatar;
        final RectF outFromRectContainer;
        final Path path;
        final float[] radii;
        final RectF rect1;
        final RectF rect2;
        final RectF rect3;
        float startX;
        float startY;
        final /* synthetic */ BaseFragment val$fragment;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C69592(Context context, BaseFragment baseFragment) {
            super(context);
            this.val$fragment = baseFragment;
            this.radii = new float[8];
            this.path = new Path();
            this.rect1 = new RectF();
            this.rect2 = new RectF();
            this.rect3 = new RectF();
            this.outFromRectAvatar = new RectF();
            this.outFromRectContainer = new RectF();
            this.lastX = new SparseArray();
        }

        @Override // android.view.ViewGroup
        protected boolean drawChild(Canvas canvas, View view, long j) {
            if (view == StoryViewer.this.aspectRatioFrameLayout) {
                return false;
            }
            return super.drawChild(canvas, view, j);
        }

        /* JADX WARN: Removed duplicated region for block: B:138:0x063c A[LOOP:1: B:126:0x0608->B:138:0x063c, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:230:0x0644 A[EDGE_INSN: B:230:0x0644->B:139:0x0644 BREAK  A[LOOP:1: B:126:0x0608->B:138:0x063c], SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:48:0x016c  */
        @Override // org.telegram.p029ui.Components.SizeNotifierFrameLayout, android.view.ViewGroup, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        protected void dispatchDraw(Canvas canvas) {
            PeerStoriesView.PeerHeaderView peerHeaderView;
            float f;
            float f2;
            float f3;
            float f4;
            float y;
            float fLerp;
            StoriesUtilities.AvatarStoryParams avatarStoryParams;
            Paint paint;
            StoriesUtilities.AvatarStoryParams avatarStoryParams2;
            HolderDrawAbove holderDrawAbove;
            PeerStoriesView.StoryItemHolder storyItemHolder;
            HolderClip holderClip;
            PeerStoriesView currentPeerView;
            StoriesUtilities.AvatarStoryParams avatarStoryParams3;
            StoryViewer storyViewer;
            TransitionViewHolder transitionViewHolder;
            float y2;
            canvas.drawColor(ColorUtils.setAlphaComponent(-16777216, (int) (StoryViewer.this.getBlackoutAlpha() * 255.0f)));
            StoryViewer storyViewer2 = StoryViewer.this;
            if (storyViewer2.ATTACH_TO_FRAGMENT) {
                boolean z = storyViewer2.progressToOpen * (1.0f - storyViewer2.progressToDismiss) == 1.0f;
                if (storyViewer2.fullyVisible != z) {
                    StoryViewer.this.fullyVisible = z;
                    if (this.val$fragment.getLayoutContainer() != null) {
                        this.val$fragment.getLayoutContainer().invalidate();
                    }
                }
            }
            PeerStoriesView currentPeerView2 = StoryViewer.this.storiesViewPager.getCurrentPeerView();
            if (currentPeerView2 != null) {
                PeerStoriesView.PeerHeaderView peerHeaderView2 = currentPeerView2.headerView;
                if (StoryViewer.this.animateAvatar) {
                    peerHeaderView2.backupImageView.getImageReceiver().setVisible(StoryViewer.this.progressToOpen == 1.0f, true);
                } else {
                    peerHeaderView2.backupImageView.getImageReceiver().setVisible(true, false);
                }
                if (StoryViewer.this.invalidateOutRect) {
                    StoryViewer.this.invalidateOutRect = false;
                    float x = 0.0f;
                    float f5 = 0.0f;
                    for (View view = peerHeaderView2.backupImageView; view != this; view = (View) view.getParent()) {
                        if (view.getParent() == this) {
                            x += view.getLeft();
                            y2 = view.getTop();
                        } else if (view.getParent() != StoryViewer.this.storiesViewPager) {
                            x += view.getX();
                            y2 = view.getY();
                        }
                        f5 += y2;
                    }
                    this.outFromRectAvatar.set(x, f5, peerHeaderView2.backupImageView.getMeasuredWidth() + x, peerHeaderView2.backupImageView.getMeasuredHeight() + f5);
                    this.outFromRectContainer.set(0.0f, currentPeerView2.getTop() + currentPeerView2.storyContainer.getTop(), StoryViewer.this.containerView.getMeasuredWidth(), StoryViewer.this.containerView.getMeasuredHeight());
                    StoryViewer.this.containerView.getMatrix().mapRect(this.outFromRectAvatar);
                    StoryViewer.this.containerView.getMatrix().mapRect(this.outFromRectContainer);
                }
                peerHeaderView = peerHeaderView2;
            } else {
                peerHeaderView = null;
            }
            StoryViewer.this.volumeControl.setAlpha(1.0f - StoryViewer.this.progressToDismiss);
            StoryViewer storyViewer3 = StoryViewer.this;
            float fClamp = storyViewer3.swipeToDismissHorizontalOffset == 0.0f ? 1.0f - Utilities.clamp(Math.abs(storyViewer3.swipeToDismissOffset / getMeasuredHeight()), 1.0f, 0.0f) : 1.0f;
            StoryViewer storyViewer4 = StoryViewer.this;
            storyViewer4.storiesViewPager.setHorizontalProgressToDismiss((storyViewer4.swipeToDismissHorizontalOffset / storyViewer4.containerView.getMeasuredWidth()) * StoryViewer.this.progressToOpen);
            StoryViewer storyViewer5 = StoryViewer.this;
            if (storyViewer5.fromX != 0.0f || storyViewer5.fromY != 0.0f) {
                float f6 = storyViewer5.progressToOpen;
                if (f6 == 1.0f) {
                    storyViewer5.containerView.setAlpha(storyViewer5.progressToOpen);
                    StoryViewer storyViewer6 = StoryViewer.this;
                    float f7 = (storyViewer6.progressToOpen * 0.1f) + 0.75f + (fClamp * 0.15f);
                    storyViewer6.containerView.setScaleX(f7);
                    StoryViewer.this.containerView.setScaleY(f7);
                    StoryViewer storyViewer7 = StoryViewer.this;
                    storyViewer7.containerView.setTranslationY(storyViewer7.swipeToDismissOffset);
                    StoryViewer storyViewer8 = StoryViewer.this;
                    storyViewer8.containerView.setTranslationX(storyViewer8.swipeToDismissHorizontalOffset);
                    super.dispatchDraw(canvas);
                } else {
                    if (storyViewer5.isClosed && StoryViewer.this.animateAvatar) {
                        float f8 = StoryViewer.this.progressToOpen;
                        float fClamp2 = 1.0f - Utilities.clamp(((1.0f - f8) - 0.8f) / 0.100000024f, 1.0f, 0.0f);
                        float fClamp3 = Utilities.clamp(f8 - ((1.0f - fClamp2) * 0.05f), 1.0f, 0.0f);
                        StoryViewer.this.containerView.setAlpha(fClamp2);
                        f = f8;
                        f6 = fClamp3;
                    } else {
                        StoryViewer.this.containerView.setAlpha(1.0f);
                        f = f6;
                    }
                    if (StoryViewer.this.isClosed && (transitionViewHolder = (storyViewer = StoryViewer.this).transitionViewHolder) != null && transitionViewHolder.storyImage != null) {
                        HwFrameLayout hwFrameLayout = storyViewer.containerView;
                        f2 = 0.15f;
                        f3 = 1.0f;
                        hwFrameLayout.setAlpha(hwFrameLayout.getAlpha() * ((float) Math.pow(f, 0.20000000298023224d)));
                    } else {
                        f2 = 0.15f;
                        f3 = 1.0f;
                        boolean unused = StoryViewer.this.isClosed;
                    }
                    StoryViewer storyViewer9 = StoryViewer.this;
                    HwFrameLayout hwFrameLayout2 = storyViewer9.containerView;
                    float left = (storyViewer9.fromX - hwFrameLayout2.getLeft()) - (StoryViewer.this.containerView.getMeasuredWidth() / 2.0f);
                    StoryViewer storyViewer10 = StoryViewer.this;
                    float f9 = storyViewer10.progressToOpen;
                    hwFrameLayout2.setTranslationX((left * (f3 - f9)) + (storyViewer10.swipeToDismissHorizontalOffset * f9));
                    StoryViewer storyViewer11 = StoryViewer.this;
                    HwFrameLayout hwFrameLayout3 = storyViewer11.containerView;
                    float top = (storyViewer11.fromY - hwFrameLayout3.getTop()) - (StoryViewer.this.containerView.getMeasuredHeight() / 2.0f);
                    StoryViewer storyViewer12 = StoryViewer.this;
                    float f10 = storyViewer12.progressToOpen;
                    hwFrameLayout3.setTranslationY((top * (f3 - f10)) + (storyViewer12.swipeToDismissOffset * f10));
                    float fLerp2 = AndroidUtilities.lerp(StoryViewer.this.fromWidth / r4.containerView.getMeasuredWidth(), (fClamp * f2) + 0.85f, f6);
                    StoryViewer.this.containerView.setScaleX(fLerp2);
                    StoryViewer.this.containerView.setScaleY(fLerp2);
                    this.path.rewind();
                    RectF rectF = this.rect1;
                    StoryViewer storyViewer13 = StoryViewer.this;
                    float f11 = storyViewer13.fromX;
                    float f12 = storyViewer13.fromWidth;
                    float f13 = storyViewer13.fromY;
                    float f14 = storyViewer13.fromHeight;
                    rectF.set(f11 - (f12 / 2.0f), f13 - (f14 / 2.0f), f11 + (f12 / 2.0f), f13 + (f14 / 2.0f));
                    if (StoryViewer.this.isClosed && StoryViewer.this.animateAvatar) {
                        this.rect2.set(this.outFromRectContainer);
                    } else if (currentPeerView2 != null) {
                        this.rect2.set(0.0f, currentPeerView2.storyContainer.getTop() + StoryViewer.this.fromDismissOffset, getMeasuredWidth(), getMeasuredHeight() + StoryViewer.this.fromDismissOffset);
                    } else {
                        this.rect2.set(0.0f, 0.0f, getMeasuredWidth(), getMeasuredHeight());
                    }
                    if (StoryViewer.this.isClosed && StoryViewer.this.animateAvatar) {
                        this.rect1.inset(AndroidUtilities.m1124dp(12.0f), AndroidUtilities.m1124dp(12.0f));
                    }
                    float fLerp3 = AndroidUtilities.lerp(this.rect1.centerX(), this.rect2.centerX(), StoryViewer.this.progressToOpen);
                    float fLerp4 = AndroidUtilities.lerp(this.rect1.centerY(), this.rect2.centerY(), StoryViewer.this.progressToOpen);
                    float fLerp5 = AndroidUtilities.lerp(this.rect1.height(), this.rect2.height(), f6);
                    float fLerp6 = AndroidUtilities.lerp(this.rect1.width(), this.rect2.width(), f6);
                    if (StoryViewer.this.isClosed && StoryViewer.this.animateAvatar) {
                        this.rect1.inset(-AndroidUtilities.m1124dp(12.0f), -AndroidUtilities.m1124dp(12.0f));
                    }
                    RectF rectF2 = AndroidUtilities.rectTmp;
                    float f15 = fLerp6 / 2.0f;
                    float f16 = fLerp5 / 2.0f;
                    rectF2.set(fLerp3 - f15, fLerp4 - f16, fLerp3 + f15, fLerp4 + f16);
                    if (StoryViewer.this.animateAvatar) {
                        float[] fArr = this.radii;
                        float fLerp7 = AndroidUtilities.lerp(StoryViewer.this.fromWidth / 2.0f, 0.0f, f6);
                        fArr[7] = fLerp7;
                        fArr[6] = fLerp7;
                        fArr[5] = fLerp7;
                        fArr[4] = fLerp7;
                        fArr[3] = fLerp7;
                        fArr[2] = fLerp7;
                        fArr[1] = fLerp7;
                        fArr[0] = fLerp7;
                    } else if (StoryViewer.this.fromRadius != null) {
                        float[] fArr2 = this.radii;
                        float fLerp8 = AndroidUtilities.lerp(StoryViewer.this.fromRadius[0], 0, f);
                        fArr2[1] = fLerp8;
                        fArr2[0] = fLerp8;
                        float[] fArr3 = this.radii;
                        float fLerp9 = AndroidUtilities.lerp(StoryViewer.this.fromRadius[1], 0, f);
                        fArr3[3] = fLerp9;
                        fArr3[2] = fLerp9;
                        float[] fArr4 = this.radii;
                        float fLerp10 = AndroidUtilities.lerp(StoryViewer.this.fromRadius[2], 0, f);
                        fArr4[5] = fLerp10;
                        fArr4[4] = fLerp10;
                        float[] fArr5 = this.radii;
                        float fLerp11 = AndroidUtilities.lerp(StoryViewer.this.fromRadius[3], 0, f);
                        fArr5[7] = fLerp11;
                        fArr5[6] = fLerp11;
                    } else {
                        float[] fArr6 = this.radii;
                        fArr6[7] = 0.0f;
                        fArr6[6] = 0.0f;
                        fArr6[5] = 0.0f;
                        fArr6[4] = 0.0f;
                        fArr6[3] = 0.0f;
                        fArr6[2] = 0.0f;
                        fArr6[1] = 0.0f;
                        fArr6[0] = 0.0f;
                    }
                    this.path.addRoundRect(rectF2, this.radii, Path.Direction.CCW);
                    canvas.save();
                    StoryViewer storyViewer14 = StoryViewer.this;
                    float f17 = storyViewer14.clipTop;
                    if (f17 != 0.0f && storyViewer14.clipBottom != 0.0f) {
                        float fLerp12 = AndroidUtilities.lerp(0.0f, f17, (float) Math.pow(f3 - storyViewer14.progressToOpen, 0.4000000059604645d));
                        float measuredWidth = getMeasuredWidth();
                        float measuredHeight = getMeasuredHeight();
                        StoryViewer storyViewer15 = StoryViewer.this;
                        canvas.clipRect(0.0f, fLerp12, measuredWidth, AndroidUtilities.lerp(measuredHeight, storyViewer15.clipBottom, f3 - storyViewer15.progressToOpen));
                    }
                    StoryViewer storyViewer16 = StoryViewer.this;
                    TransitionViewHolder transitionViewHolder2 = storyViewer16.transitionViewHolder;
                    if (transitionViewHolder2 != null && (avatarStoryParams3 = transitionViewHolder2.params) != null && avatarStoryParams3.drawnLive && storyViewer16.animateAvatar) {
                        canvas.saveLayerAlpha(0.0f, 0.0f, getWidth(), getHeight(), (int) (f * 255.0f), 31);
                    } else {
                        canvas.save();
                    }
                    canvas.clipPath(this.path);
                    super.dispatchDraw(canvas);
                    StoryViewer storyViewer17 = StoryViewer.this;
                    TransitionViewHolder transitionViewHolder3 = storyViewer17.transitionViewHolder;
                    if (transitionViewHolder3 == null || transitionViewHolder3.storyImage == null || (currentPeerView = storyViewer17.storiesViewPager.getCurrentPeerView()) == null || currentPeerView.storyContainer == null) {
                        f4 = 0.0f;
                    } else {
                        boolean visible = StoryViewer.this.transitionViewHolder.storyImage.getVisible();
                        this.rect2.set(StoryViewer.this.swipeToDismissHorizontalOffset + r5.containerView.getLeft() + currentPeerView.getX() + currentPeerView.storyContainer.getX(), StoryViewer.this.swipeToDismissOffset + r5.containerView.getTop() + currentPeerView.getY() + currentPeerView.storyContainer.getY(), ((StoryViewer.this.swipeToDismissHorizontalOffset + r5.containerView.getRight()) - (StoryViewer.this.containerView.getWidth() - currentPeerView.getRight())) - (currentPeerView.getWidth() - currentPeerView.storyContainer.getRight()), ((StoryViewer.this.swipeToDismissOffset + r5.containerView.getBottom()) - (StoryViewer.this.containerView.getHeight() - currentPeerView.getBottom())) - (currentPeerView.getHeight() - currentPeerView.storyContainer.getBottom()));
                        AndroidUtilities.lerp(this.rect1, this.rect2, f, this.rect3);
                        float imageX = StoryViewer.this.transitionViewHolder.storyImage.getImageX();
                        float imageY = StoryViewer.this.transitionViewHolder.storyImage.getImageY();
                        float imageWidth = StoryViewer.this.transitionViewHolder.storyImage.getImageWidth();
                        float imageHeight = StoryViewer.this.transitionViewHolder.storyImage.getImageHeight();
                        StoryViewer.this.transitionViewHolder.storyImage.setImageCoords(this.rect3);
                        float f18 = f3 - f;
                        StoryViewer.this.transitionViewHolder.storyImage.setAlpha(f18);
                        StoryViewer.this.transitionViewHolder.storyImage.setVisible(true, false);
                        int saveCount = canvas.getSaveCount();
                        StoryViewer storyViewer18 = StoryViewer.this;
                        HolderClip holderClip2 = storyViewer18.transitionViewHolder.drawClip;
                        f4 = 0.0f;
                        if (holderClip2 != null) {
                            holderClip2.clip(canvas, this.rect3, f18, storyViewer18.opening);
                        }
                        StoryViewer.this.transitionViewHolder.storyImage.draw(canvas);
                        StoryViewer storyViewer19 = StoryViewer.this;
                        HolderDrawAbove holderDrawAbove2 = storyViewer19.transitionViewHolder.drawAbove;
                        if (holderDrawAbove2 != null) {
                            holderDrawAbove2.draw(canvas, this.rect3, f18, storyViewer19.opening);
                        }
                        StoryViewer.this.transitionViewHolder.storyImage.setVisible(visible, false);
                        StoryViewer.this.transitionViewHolder.storyImage.setImageCoords(imageX, imageY, imageWidth, imageHeight);
                        canvas.restoreToCount(saveCount);
                    }
                    canvas.restore();
                    if (peerHeaderView != null) {
                        StoryViewer storyViewer20 = StoryViewer.this;
                        float x2 = storyViewer20.swipeToDismissHorizontalOffset;
                        float f19 = storyViewer20.swipeToDismissOffset;
                        if (storyViewer20.isClosed && StoryViewer.this.animateAvatar) {
                            this.rect2.set(this.outFromRectAvatar);
                        } else {
                            for (View view2 = peerHeaderView.backupImageView; view2 != this && view2 != null; view2 = (View) view2.getParent()) {
                                if (view2.getParent() == this) {
                                    x2 += view2.getLeft();
                                    y = view2.getTop();
                                } else {
                                    if (view2.getParent() != StoryViewer.this.storiesViewPager) {
                                        x2 += view2.getX();
                                        y = view2.getY();
                                    }
                                    if (view2.getParent() instanceof View) {
                                        break;
                                    }
                                }
                                f19 += y;
                                if (view2.getParent() instanceof View) {
                                }
                            }
                            this.rect2.set(x2, f19, peerHeaderView.backupImageView.getMeasuredWidth() + x2, peerHeaderView.backupImageView.getMeasuredHeight() + f19);
                        }
                        AndroidUtilities.lerp(this.rect1, this.rect2, StoryViewer.this.progressToOpen, this.rect3);
                        int saveCount2 = canvas.getSaveCount();
                        StoryViewer storyViewer21 = StoryViewer.this;
                        TransitionViewHolder transitionViewHolder4 = storyViewer21.transitionViewHolder;
                        if (transitionViewHolder4 != null && (holderClip = transitionViewHolder4.drawClip) != null) {
                            holderClip.clip(canvas, this.rect3, f3 - f, storyViewer21.opening);
                        }
                        if (StoryViewer.this.animateAvatar) {
                            StoryViewer storyViewer22 = StoryViewer.this;
                            TransitionViewHolder transitionViewHolder5 = storyViewer22.transitionViewHolder;
                            boolean z2 = (transitionViewHolder5 == null || transitionViewHolder5.crossfadeToAvatarImage == null) ? false : true;
                            PeerStoriesView currentPeerView3 = storyViewer22.storiesViewPager.getCurrentPeerView();
                            TLRPC.Chat chat = (currentPeerView3 == null || (storyItemHolder = currentPeerView3.currentStory) == null || storyItemHolder.storyItem == null) ? null : MessagesController.getInstance(StoryViewer.this.currentAccount).getChat(Long.valueOf(-currentPeerView3.currentStory.storyItem.dialogId));
                            boolean z3 = chat != null && chat.forum;
                            if (!z2 || StoryViewer.this.progressToOpen != f4) {
                                TransitionViewHolder transitionViewHolder6 = StoryViewer.this.transitionViewHolder;
                                if (transitionViewHolder6 != null && (avatarStoryParams2 = transitionViewHolder6.params) != null && avatarStoryParams2.drawnLive) {
                                    canvas.saveLayerAlpha(this.rect3.left - AndroidUtilities.m1124dp(4.0f), this.rect3.top - AndroidUtilities.m1124dp(4.0f), this.rect3.right + AndroidUtilities.m1124dp(4.0f), this.rect3.bottom + AndroidUtilities.m1124dp(4.0f), 255, 31);
                                }
                                peerHeaderView.backupImageView.getImageReceiver().setImageCoords(this.rect3);
                                TransitionViewHolder transitionViewHolder7 = StoryViewer.this.transitionViewHolder;
                                Integer avatarImageRoundRadius = transitionViewHolder7 != null ? transitionViewHolder7.getAvatarImageRoundRadius() : null;
                                peerHeaderView.backupImageView.getImageReceiver().setRoundRadius(AndroidUtilities.lerp(ExteraConfig.getAvatarCorners(this.rect3.width(), true, z3), avatarImageRoundRadius != null ? avatarImageRoundRadius.intValue() : ExteraConfig.getAvatarCorners(this.rect3.width(), true, z3), f3 - StoryViewer.this.progressToOpen));
                                peerHeaderView.backupImageView.getImageReceiver().setVisible(true, false);
                                float f20 = z2 ? StoryViewer.this.progressToOpen : f3;
                                TransitionViewHolder transitionViewHolder8 = StoryViewer.this.transitionViewHolder;
                                if (transitionViewHolder8 == null || transitionViewHolder8.alpha >= f3 || (paint = transitionViewHolder8.bgPaint) == null) {
                                    fLerp = f20;
                                } else {
                                    paint.setAlpha((int) ((f3 - f) * 255.0f));
                                    canvas.drawCircle(this.rect3.centerX(), this.rect3.centerY(), this.rect3.width() / 2.0f, StoryViewer.this.transitionViewHolder.bgPaint);
                                    fLerp = AndroidUtilities.lerp(StoryViewer.this.transitionViewHolder.alpha, f20, f);
                                }
                                peerHeaderView.backupImageView.getImageReceiver().setAlpha(fLerp);
                                peerHeaderView.drawUploadingProgress(canvas, this.rect3, !StoryViewer.runOpenAnimationAfterLayout, StoryViewer.this.progressToOpen);
                                peerHeaderView.backupImageView.getImageReceiver().draw(canvas);
                                peerHeaderView.backupImageView.getImageReceiver().setAlpha(f20);
                                peerHeaderView.backupImageView.getImageReceiver().setVisible(false, false);
                                TransitionViewHolder transitionViewHolder9 = StoryViewer.this.transitionViewHolder;
                                if (transitionViewHolder9 != null && (avatarStoryParams = transitionViewHolder9.params) != null && avatarStoryParams.drawnLive) {
                                    RectF rectF3 = AndroidUtilities.rectTmp;
                                    rectF3.set(this.rect3);
                                    StoriesUtilities.drawLive(canvas, rectF3, f3 - StoryViewer.this.progressToOpen, true, f4);
                                    canvas.restore();
                                }
                            }
                            StoryViewer storyViewer23 = StoryViewer.this;
                            if (storyViewer23.progressToOpen != f3 && z2) {
                                storyViewer23.avatarRectTmp.set(storyViewer23.transitionViewHolder.crossfadeToAvatarImage.getImageX(), StoryViewer.this.transitionViewHolder.crossfadeToAvatarImage.getImageY(), StoryViewer.this.transitionViewHolder.crossfadeToAvatarImage.getImageX2(), StoryViewer.this.transitionViewHolder.crossfadeToAvatarImage.getImageY2());
                                int i = StoryViewer.this.transitionViewHolder.crossfadeToAvatarImage.getRoundRadius()[0];
                                boolean visible2 = StoryViewer.this.transitionViewHolder.crossfadeToAvatarImage.getVisible();
                                StoryViewer.this.transitionViewHolder.crossfadeToAvatarImage.setImageCoords(this.rect3);
                                StoryViewer.this.transitionViewHolder.crossfadeToAvatarImage.setRoundRadius(ExteraConfig.getAvatarCorners(this.rect3.width(), true, z3));
                                StoryViewer.this.transitionViewHolder.crossfadeToAvatarImage.setVisible(true, false);
                                canvas.saveLayerAlpha(this.rect3, (int) ((f3 - StoryViewer.this.progressToOpen) * 255.0f), 31);
                                StoryViewer.this.transitionViewHolder.crossfadeToAvatarImage.draw(canvas);
                                canvas.restore();
                                StoryViewer.this.transitionViewHolder.crossfadeToAvatarImage.setVisible(visible2, false);
                                StoryViewer storyViewer24 = StoryViewer.this;
                                storyViewer24.transitionViewHolder.crossfadeToAvatarImage.setImageCoords(storyViewer24.avatarRectTmp);
                                StoryViewer.this.transitionViewHolder.crossfadeToAvatarImage.setRoundRadius(i);
                            }
                            StoryViewer storyViewer25 = StoryViewer.this;
                            TransitionViewHolder transitionViewHolder10 = storyViewer25.transitionViewHolder;
                            if (transitionViewHolder10 != null && (holderDrawAbove = transitionViewHolder10.drawAbove) != null) {
                                holderDrawAbove.draw(canvas, this.rect3, f3 - f, storyViewer25.opening);
                            }
                        }
                        canvas.restoreToCount(saveCount2);
                    }
                    StoryViewer storyViewer26 = StoryViewer.this;
                    if (storyViewer26.animateFromCell != null) {
                        float f21 = f3;
                        float fClamp4 = Utilities.clamp(storyViewer26.progressToOpen / 0.4f, f21, 0.0f);
                        if (fClamp4 != f21) {
                            RectF rectF4 = AndroidUtilities.rectTmp;
                            StoryViewer storyViewer27 = StoryViewer.this;
                            float f22 = storyViewer27.fromX;
                            float f23 = storyViewer27.fromY;
                            rectF4.set(f22, f23, storyViewer27.fromWidth + f22, storyViewer27.fromHeight + f23);
                            rectF4.inset(-AndroidUtilities.m1124dp(16.0f), -AndroidUtilities.m1124dp(16.0f));
                            if (fClamp4 != 0.0f) {
                                canvas.saveLayerAlpha(rectF4, (int) ((1.0f - fClamp4) * 255.0f), 31);
                            } else {
                                canvas.save();
                            }
                            StoryViewer storyViewer28 = StoryViewer.this;
                            canvas.translate(storyViewer28.fromXCell, storyViewer28.fromYCell);
                            StoryViewer.this.animateFromCell.drawAvatarOverlays(canvas);
                            canvas.restore();
                        }
                    }
                    canvas.restore();
                }
            }
            if (StoryViewer.runOpenAnimationAfterLayout) {
                StoryViewer.this.startOpenAnimation();
                StoryViewer.runOpenAnimationAfterLayout = false;
            }
        }

        @Override // android.view.ViewGroup, android.view.ViewParent
        public void requestDisallowInterceptTouchEvent(boolean z) {
            super.requestDisallowInterceptTouchEvent(z);
            StoryViewer.this.allowIntercept = false;
        }

        /* JADX WARN: Removed duplicated region for block: B:76:0x0168  */
        @Override // android.view.ViewGroup, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            boolean z;
            boolean z2;
            PeerStoriesView currentPeerView = StoryViewer.this.storiesViewPager.getCurrentPeerView();
            if (currentPeerView != null && currentPeerView.checkTextSelectionEvent(motionEvent)) {
                return true;
            }
            if (StoryViewer.this.isLikesReactions && currentPeerView != null && currentPeerView.checkReactionEvent(motionEvent)) {
                return true;
            }
            if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
                StoryViewer storyViewer = StoryViewer.this;
                storyViewer.inSwipeToDissmissMode = false;
                AndroidUtilities.cancelRunOnUIThread(storyViewer.longPressRunnable);
                StoryViewer storyViewer2 = StoryViewer.this;
                float f = storyViewer2.swipeToDismissHorizontalOffset;
                if (f != 0.0f) {
                    storyViewer2.swipeToDissmissBackAnimator = ValueAnimator.ofFloat(f, 0.0f);
                    StoryViewer.this.swipeToDissmissBackAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.StoryViewer$2$$ExternalSyntheticLambda1
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                            this.f$0.lambda$dispatchTouchEvent$0(valueAnimator);
                        }
                    });
                    StoryViewer.this.swipeToDissmissBackAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.StoryViewer.2.1
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            StoryViewer storyViewer3 = StoryViewer.this;
                            storyViewer3.swipeToDismissHorizontalOffset = 0.0f;
                            storyViewer3.updateProgressToDismiss();
                        }
                    });
                    StoryViewer.this.swipeToDissmissBackAnimator.setDuration(250L);
                    StoryViewer.this.swipeToDissmissBackAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
                    StoryViewer.this.swipeToDissmissBackAnimator.start();
                }
                StoryViewer storyViewer3 = StoryViewer.this;
                if (storyViewer3.progressToDismiss >= 0.3f) {
                    storyViewer3.close(true);
                }
                StoryViewer.this.setInTouchMode(false);
                StoryViewer.this.setLongPressed(false);
                z = true;
            } else {
                z = false;
            }
            if (motionEvent.getAction() == 0) {
                StoryViewer.this.swipeToReplyWaitingKeyboard = false;
                if (currentPeerView != null) {
                    currentPeerView.onActionDown(motionEvent);
                }
                StoryViewer.this.storiesViewPager.onTouchEvent(MotionEvent.obtain(0L, 0L, 3, 0.0f, 0.0f, 0));
            }
            StoryViewer storyViewer4 = StoryViewer.this;
            boolean z3 = (storyViewer4.keyboardVisible || storyViewer4.isClosed || StoryViewer.this.isRecording) ? false : true;
            StoryViewer storyViewer5 = StoryViewer.this;
            if (storyViewer5.selfStoriesViewsOffset == 0.0f && !storyViewer5.inSwipeToDissmissMode && storyViewer5.storiesViewPager.currentState == 1 && motionEvent.getAction() == 2 && z3) {
                float fFloatValue = ((Float) this.lastX.get(motionEvent.getPointerId(0), Float.valueOf(0.0f))).floatValue() - motionEvent.getX(0);
                if ((fFloatValue != 0.0f && !StoryViewer.this.storiesViewPager.canScroll(fFloatValue)) || StoryViewer.this.swipeToDismissHorizontalOffset != 0.0f) {
                    StoryViewer storyViewer6 = StoryViewer.this;
                    float f2 = storyViewer6.swipeToDismissHorizontalOffset;
                    if (f2 == 0.0f) {
                        storyViewer6.swipeToDismissHorizontalDirection = -fFloatValue;
                    }
                    if ((fFloatValue < 0.0f && storyViewer6.swipeToDismissHorizontalDirection > 0.0f) || (fFloatValue > 0.0f && storyViewer6.swipeToDismissHorizontalDirection < 0.0f)) {
                        fFloatValue *= 0.2f;
                    }
                    storyViewer6.swipeToDismissHorizontalOffset = f2 - fFloatValue;
                    storyViewer6.updateProgressToDismiss();
                    StoryViewer storyViewer7 = StoryViewer.this;
                    float f3 = storyViewer7.swipeToDismissHorizontalOffset;
                    if ((f3 > 0.0f && storyViewer7.swipeToDismissHorizontalDirection < 0.0f) || (f3 < 0.0f && storyViewer7.swipeToDismissHorizontalDirection > 0.0f)) {
                        storyViewer7.swipeToDismissHorizontalOffset = 0.0f;
                    }
                    z2 = true;
                }
            } else {
                z2 = false;
            }
            if (currentPeerView != null) {
                StoryViewer storyViewer8 = StoryViewer.this;
                if (storyViewer8.selfStoriesViewsOffset == 0.0f && !storyViewer8.inSwipeToDissmissMode && !storyViewer8.isCaption && !StoryViewer.this.isRecording) {
                    StoryViewer storyViewer9 = StoryViewer.this;
                    if (storyViewer9.storiesViewPager.currentState != 1) {
                        AndroidUtilities.getViewPositionInParent(currentPeerView.storyContainer, this, storyViewer9.pointPosition);
                        float[] fArr = StoryViewer.this.pointPosition;
                        motionEvent.offsetLocation(-fArr[0], -fArr[1]);
                        StoryViewer.this.storiesViewPager.getCurrentPeerView().checkPinchToZoom(motionEvent);
                        float[] fArr2 = StoryViewer.this.pointPosition;
                        motionEvent.offsetLocation(fArr2[0], fArr2[1]);
                    }
                }
            }
            if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
                this.lastX.clear();
            } else {
                for (int i = 0; i < motionEvent.getPointerCount(); i++) {
                    this.lastX.put(motionEvent.getPointerId(i), Float.valueOf(motionEvent.getX(i)));
                }
            }
            if (z2) {
                return true;
            }
            boolean zDispatchTouchEvent = super.dispatchTouchEvent(motionEvent);
            if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
                StoryViewer storyViewer10 = StoryViewer.this;
                if (storyViewer10.selfStoriesViewsOffset != 0.0f && !storyViewer10.flingCalled && StoryViewer.this.realKeyboardHeight < AndroidUtilities.m1124dp(20.0f)) {
                    StoryViewer storyViewer11 = StoryViewer.this;
                    storyViewer11.cancelSwipeToViews(storyViewer11.selfStoryViewsView.progressToOpen > 0.5f);
                }
                PeerStoriesView currentPeerView2 = StoryViewer.this.getCurrentPeerView();
                if (currentPeerView2 != null) {
                    currentPeerView2.cancelTouch();
                }
            }
            if (z) {
                StoryViewer storyViewer12 = StoryViewer.this;
                if (!storyViewer12.swipeToReplyWaitingKeyboard) {
                    storyViewer12.cancelSwipeToReply();
                }
            }
            return zDispatchTouchEvent || (StoryViewer.animationInProgress && StoryViewer.this.isInTouchMode);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$dispatchTouchEvent$0(ValueAnimator valueAnimator) {
            StoryViewer.this.swipeToDismissHorizontalOffset = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            StoryViewer.this.updateProgressToDismiss();
        }

        /* JADX WARN: Removed duplicated region for block: B:11:0x003e  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x005d  */
        @Override // android.view.ViewGroup
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            LiveCommentsView liveCommentsView;
            VideoPlayerHolder videoPlayerHolder;
            PeerStoriesView.VideoPlayerSharedScope videoPlayerSharedScope;
            PeerStoriesView currentPeerView;
            PeerStoriesView.StoryItemHolder storyItemHolder;
            TL_stories.StoryItem storyItem;
            TLRPC.MessageMedia messageMedia;
            TLRPC.Document document;
            LiveCommentsView liveCommentsView2;
            if (motionEvent.getAction() == 0 && StoryViewer.this.progressToOpen == 1.0f) {
                float x = motionEvent.getX();
                this.lastTouchX = x;
                this.startX = x;
                this.startY = motionEvent.getY();
                StoryViewer storyViewer = StoryViewer.this;
                storyViewer.verticalScrollDetected = false;
                if (!storyViewer.isRecording) {
                    StoryViewer storyViewer2 = StoryViewer.this;
                    boolean z = !storyViewer2.findClickableView(storyViewer2.windowView, motionEvent.getX(), motionEvent.getY(), false);
                    storyViewer.allowIntercept = z;
                    StoryViewer storyViewer3 = StoryViewer.this;
                    if (!storyViewer3.isRecording) {
                        StoryViewer storyViewer4 = StoryViewer.this;
                        boolean z2 = !storyViewer4.findClickableView(storyViewer4.windowView, motionEvent.getX(), motionEvent.getY(), true);
                        storyViewer3.allowSwipeToDissmiss = z2;
                        StoryViewer storyViewer5 = StoryViewer.this;
                        storyViewer5.setInTouchMode(storyViewer5.allowIntercept && !storyViewer5.isCaptionPartVisible);
                        PeerStoriesView currentPeerView2 = StoryViewer.this.getCurrentPeerView();
                        if (StoryViewer.this.allowIntercept && currentPeerView2 != null && (liveCommentsView2 = currentPeerView2.liveCommentsView) != null) {
                            liveCommentsView2.setAllowTouches(false);
                        }
                        StoryViewer storyViewer6 = StoryViewer.this;
                        if (storyViewer6.allowIntercept && !storyViewer6.isRecording && StoryViewer.this.isCaptionPartVisible) {
                            StoryViewer.this.delayedTapRunnable = new Runnable() { // from class: org.telegram.ui.Stories.StoryViewer$2$$ExternalSyntheticLambda0
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.lambda$onInterceptTouchEvent$1();
                                }
                            };
                            AndroidUtilities.runOnUIThread(StoryViewer.this.delayedTapRunnable, 150L);
                        }
                        StoryViewer storyViewer7 = StoryViewer.this;
                        if (storyViewer7.allowIntercept && !storyViewer7.keyboardVisible && !storyViewer7.isRecording && !StoryViewer.this.isInTextSelectionMode) {
                            AndroidUtilities.runOnUIThread(StoryViewer.this.longPressRunnable, 400L);
                        }
                    }
                }
            } else if (motionEvent.getAction() == 2) {
                float fAbs = Math.abs(this.startY - motionEvent.getY());
                float fAbs2 = Math.abs(this.startX - motionEvent.getX());
                StoryViewer storyViewer8 = StoryViewer.this;
                if (storyViewer8.isLongpressed && storyViewer8.inSeekingMode && !storyViewer8.isInPinchToZoom) {
                    StoryViewer storyViewer9 = StoryViewer.this;
                    if (!storyViewer9.inSwipeToDissmissMode && (videoPlayerSharedScope = storyViewer9.currentPlayerScope) != null && videoPlayerSharedScope.player != null && (currentPeerView = storyViewer9.storiesViewPager.getCurrentPeerView()) != null && (storyItemHolder = currentPeerView.currentStory) != null && storyItemHolder.uploadingStory == null && storyItemHolder.isVideo()) {
                        long documentDuration = currentPeerView.videoDuration;
                        if (documentDuration <= 0 && (storyItem = currentPeerView.currentStory.storyItem) != null && (messageMedia = storyItem.media) != null && (document = messageMedia.document) != null) {
                            documentDuration = (long) (MessageObject.getDocumentDuration(document) * 1000.0d);
                        }
                        if (documentDuration > 0) {
                            float x2 = motionEvent.getX();
                            VideoPlayerHolder videoPlayerHolder2 = StoryViewer.this.currentPlayerScope.player;
                            if (((int) (videoPlayerHolder2.seek((x2 - this.lastTouchX) / AndroidUtilities.m1124dp(220.0f), documentDuration) * 10.0f)) != ((int) (videoPlayerHolder2.currentSeek * 10.0f))) {
                                try {
                                    currentPeerView.performHapticFeedback(9, 1);
                                } catch (Exception unused) {
                                }
                            }
                            currentPeerView.storyContainer.invalidate();
                            this.lastTouchX = x2;
                        }
                    }
                }
                if (fAbs > fAbs2) {
                    StoryViewer storyViewer10 = StoryViewer.this;
                    if (!storyViewer10.inSeekingMode && !storyViewer10.verticalScrollDetected && fAbs > AndroidUtilities.touchSlop * 2.0f) {
                        storyViewer10.verticalScrollDetected = true;
                    }
                }
                StoryViewer storyViewer11 = StoryViewer.this;
                if (!storyViewer11.inSwipeToDissmissMode && !storyViewer11.inSeekingMode && !storyViewer11.keyboardVisible && storyViewer11.allowSwipeToDissmiss) {
                    if (fAbs > fAbs2 && fAbs > AndroidUtilities.touchSlop * 2.0f) {
                        storyViewer11.inSwipeToDissmissMode = true;
                        PeerStoriesView currentPeerView3 = storyViewer11.storiesViewPager.getCurrentPeerView();
                        if (currentPeerView3 != null) {
                            currentPeerView3.cancelTextSelection();
                        }
                        boolean z3 = currentPeerView3 != null && currentPeerView3.viewsAllowed();
                        StoryViewer storyViewer12 = StoryViewer.this;
                        storyViewer12.allowSwipeToReply = (z3 || currentPeerView3 == null || currentPeerView3.isChannel || currentPeerView3.isPremiumBlocked || storyViewer12.storiesIntro != null) ? false : true;
                        StoryViewer storyViewer13 = StoryViewer.this;
                        storyViewer13.allowSelfStoriesView = z3 && !currentPeerView3.unsupported && currentPeerView3.currentStory.storyItem != null && storyViewer13.storiesIntro == null;
                        StoryViewer storyViewer14 = StoryViewer.this;
                        if (storyViewer14.allowSelfStoriesView && this.keyboardHeight != 0) {
                            storyViewer14.allowSelfStoriesView = false;
                        }
                        if (storyViewer14.allowSelfStoriesView) {
                            storyViewer14.checkSelfStoriesView();
                        }
                        StoryViewer storyViewer15 = StoryViewer.this;
                        storyViewer15.swipeToReplyOffset = 0.0f;
                        if (storyViewer15.delayedTapRunnable != null) {
                            AndroidUtilities.cancelRunOnUIThread(StoryViewer.this.delayedTapRunnable);
                            StoryViewer.this.delayedTapRunnable.run();
                            StoryViewer.this.delayedTapRunnable = null;
                        }
                        AndroidUtilities.cancelRunOnUIThread(StoryViewer.this.longPressRunnable);
                    }
                    StoryViewer.this.layoutAndFindView();
                }
            } else if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
                AndroidUtilities.cancelRunOnUIThread(StoryViewer.this.longPressRunnable);
                if (StoryViewer.this.delayedTapRunnable != null) {
                    AndroidUtilities.cancelRunOnUIThread(StoryViewer.this.delayedTapRunnable);
                    StoryViewer.this.delayedTapRunnable = null;
                }
                StoryViewer.this.setInTouchMode(false);
                StoryViewer storyViewer16 = StoryViewer.this;
                storyViewer16.verticalScrollDetected = false;
                storyViewer16.inSeekingMode = false;
                PeerStoriesView.VideoPlayerSharedScope videoPlayerSharedScope2 = storyViewer16.currentPlayerScope;
                if (videoPlayerSharedScope2 != null && (videoPlayerHolder = videoPlayerSharedScope2.player) != null) {
                    videoPlayerHolder.setSeeking(false);
                }
                PeerStoriesView currentPeerView4 = StoryViewer.this.getCurrentPeerView();
                if (currentPeerView4 != null && (liveCommentsView = currentPeerView4.liveCommentsView) != null) {
                    liveCommentsView.setAllowTouches(true);
                }
            }
            StoryViewer storyViewer17 = StoryViewer.this;
            SelfStoryViewsView selfStoryViewsView = storyViewer17.selfStoryViewsView;
            boolean z4 = selfStoryViewsView != null && selfStoryViewsView.progressToOpen == 1.0f;
            if (!storyViewer17.inSwipeToDissmissMode && !z4) {
                storyViewer17.gestureDetector.onTouchEvent(motionEvent);
            }
            return StoryViewer.this.inSwipeToDissmissMode || super.onInterceptTouchEvent(motionEvent);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onInterceptTouchEvent$1() {
            StoryViewer.this.setInTouchMode(true);
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            LiveCommentsView liveCommentsView;
            if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
                StoryViewer storyViewer = StoryViewer.this;
                storyViewer.inSwipeToDissmissMode = false;
                storyViewer.setInTouchMode(false);
                StoryViewer storyViewer2 = StoryViewer.this;
                if (storyViewer2.progressToDismiss >= 1.0f) {
                    storyViewer2.close(true);
                } else if (!storyViewer2.isClosed) {
                    StoryViewer storyViewer3 = StoryViewer.this;
                    storyViewer3.swipeToDissmissBackAnimator = ValueAnimator.ofFloat(storyViewer3.swipeToDismissOffset, 0.0f);
                    StoryViewer.this.swipeToDissmissBackAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.StoryViewer$2$$ExternalSyntheticLambda2
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                            this.f$0.lambda$onTouchEvent$2(valueAnimator);
                        }
                    });
                    StoryViewer.this.swipeToDissmissBackAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.StoryViewer.2.2
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            StoryViewer storyViewer4 = StoryViewer.this;
                            storyViewer4.swipeToDismissOffset = 0.0f;
                            storyViewer4.swipeToReplyOffset = 0.0f;
                            storyViewer4.updateProgressToDismiss();
                        }
                    });
                    StoryViewer.this.swipeToDissmissBackAnimator.setDuration(150L);
                    StoryViewer.this.swipeToDissmissBackAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
                    StoryViewer.this.swipeToDissmissBackAnimator.start();
                }
                PeerStoriesView currentPeerView = StoryViewer.this.getCurrentPeerView();
                if (currentPeerView != null && (liveCommentsView = currentPeerView.liveCommentsView) != null) {
                    liveCommentsView.setAllowTouches(true);
                }
            }
            StoryViewer storyViewer4 = StoryViewer.this;
            if (!storyViewer4.inSwipeToDissmissMode && !storyViewer4.keyboardVisible && storyViewer4.swipeToReplyOffset == 0.0f && ((storyViewer4.selfStoriesViewsOffset == 0.0f || (!storyViewer4.allowIntercept && !storyViewer4.verticalScrollDetected)) && !storyViewer4.isInTextSelectionMode)) {
                return false;
            }
            StoryViewer.this.gestureDetector.onTouchEvent(motionEvent);
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onTouchEvent$2(ValueAnimator valueAnimator) {
            StoryViewer.this.swipeToDismissOffset = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            StoryViewer.this.updateProgressToDismiss();
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchKeyEventPreIme(KeyEvent keyEvent) {
            if (keyEvent.getKeyCode() == 24 || keyEvent.getKeyCode() == 25) {
                StoryViewer.this.dispatchVolumeEvent(keyEvent);
                return true;
            }
            if (keyEvent.getKeyCode() == 4 && keyEvent.getAction() == 1) {
                StoryViewer.this.onAttachedBackPressed();
                return true;
            }
            return super.dispatchKeyEventPreIme(keyEvent);
        }

        @Override // org.telegram.p029ui.Components.SizeNotifierFrameLayout, android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            BaseFragment baseFragment = this.val$fragment;
            if (baseFragment != null) {
                StoryViewer storyViewer = StoryViewer.this;
                if (storyViewer.ATTACH_TO_FRAGMENT && !storyViewer.ATTACHED_FRAGMENT_IS_EDGE_TO_EDGE) {
                    AndroidUtilities.requestAdjustResize(baseFragment.getParentActivity(), this.val$fragment.getClassGuid());
                }
            }
            Bulletin.addDelegate(this, new Bulletin.Delegate() { // from class: org.telegram.ui.Stories.StoryViewer.2.3
                float[] position = new float[2];

                @Override // org.telegram.ui.Components.Bulletin.Delegate
                public /* synthetic */ boolean allowLayoutChanges() {
                    return Bulletin.Delegate.CC.$default$allowLayoutChanges(this);
                }

                @Override // org.telegram.ui.Components.Bulletin.Delegate
                public /* synthetic */ boolean bottomOffsetAnimated() {
                    return Bulletin.Delegate.CC.$default$bottomOffsetAnimated(this);
                }

                @Override // org.telegram.ui.Components.Bulletin.Delegate
                public /* synthetic */ boolean clipWithGradient(int i) {
                    return Bulletin.Delegate.CC.$default$clipWithGradient(this, i);
                }

                @Override // org.telegram.ui.Components.Bulletin.Delegate
                public /* synthetic */ int getTopOffset(int i) {
                    return Bulletin.Delegate.CC.$default$getTopOffset(this, i);
                }

                @Override // org.telegram.ui.Components.Bulletin.Delegate
                public /* synthetic */ void onBottomOffsetChange(float f) {
                    Bulletin.Delegate.CC.$default$onBottomOffsetChange(this, f);
                }

                @Override // org.telegram.ui.Components.Bulletin.Delegate
                public /* synthetic */ void onHide(Bulletin bulletin) {
                    Bulletin.Delegate.CC.$default$onHide(this, bulletin);
                }

                @Override // org.telegram.ui.Components.Bulletin.Delegate
                public /* synthetic */ void onShow(Bulletin bulletin) {
                    Bulletin.Delegate.CC.$default$onShow(this, bulletin);
                }

                @Override // org.telegram.ui.Components.Bulletin.Delegate
                public int getBottomOffset(int i) {
                    PeerStoriesView currentPeerView = StoryViewer.this.getCurrentPeerView();
                    if (currentPeerView == null) {
                        return 0;
                    }
                    AndroidUtilities.getViewPositionInParent(currentPeerView.storyContainer, StoryViewer.this.windowView, this.position);
                    return (int) (C69592.this.getMeasuredHeight() - (this.position[1] + currentPeerView.storyContainer.getMeasuredHeight()));
                }
            });
            NotificationCenter.getInstance(StoryViewer.this.currentAccount).addObserver(StoryViewer.this, NotificationCenter.storiesListUpdated);
            NotificationCenter.getInstance(StoryViewer.this.currentAccount).addObserver(StoryViewer.this, NotificationCenter.storiesUpdated);
            NotificationCenter.getInstance(StoryViewer.this.currentAccount).addObserver(StoryViewer.this, NotificationCenter.articleClosed);
            NotificationCenter.getInstance(StoryViewer.this.currentAccount).addObserver(StoryViewer.this, NotificationCenter.openArticle);
            NotificationCenter.getInstance(StoryViewer.this.currentAccount).addObserver(StoryViewer.this, NotificationCenter.storyDeleted);
        }

        @Override // org.telegram.p029ui.Components.SizeNotifierFrameLayout, android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            Bulletin.removeDelegate(this);
            NotificationCenter.getInstance(StoryViewer.this.currentAccount).removeObserver(StoryViewer.this, NotificationCenter.storiesListUpdated);
            NotificationCenter.getInstance(StoryViewer.this.currentAccount).removeObserver(StoryViewer.this, NotificationCenter.storiesUpdated);
            NotificationCenter.getInstance(StoryViewer.this.currentAccount).removeObserver(StoryViewer.this, NotificationCenter.articleClosed);
            NotificationCenter.getInstance(StoryViewer.this.currentAccount).removeObserver(StoryViewer.this, NotificationCenter.openArticle);
            NotificationCenter.getInstance(StoryViewer.this.currentAccount).removeObserver(StoryViewer.this, NotificationCenter.storyDeleted);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            ((FrameLayout.LayoutParams) StoryViewer.this.volumeControl.getLayoutParams()).topMargin = AndroidUtilities.statusBarHeight - AndroidUtilities.m1124dp(2.0f);
            StoryViewer.this.volumeControl.getLayoutParams().height = AndroidUtilities.m1124dp(2.0f);
            super.onMeasure(i, i2);
        }
    }

    /* JADX INFO: renamed from: org.telegram.ui.Stories.StoryViewer$5 */
    /* JADX INFO: loaded from: classes7.dex */
    class C69625 implements PeerStoriesView.Delegate {
        final /* synthetic */ Context val$context;
        final /* synthetic */ ArrayList val$peerIds;
        final /* synthetic */ StoriesController.StoriesList val$storiesList;

        C69625(StoriesController.StoriesList storiesList, ArrayList arrayList, Context context) {
            this.val$storiesList = storiesList;
            this.val$peerIds = arrayList;
            this.val$context = context;
        }

        @Override // org.telegram.ui.Stories.PeerStoriesView.Delegate
        public void onPeerSelected(long j, int i) {
            StoryViewer storyViewer = StoryViewer.this;
            if (storyViewer.lastPosition == i && storyViewer.lastDialogId == j) {
                return;
            }
            storyViewer.lastDialogId = j;
            storyViewer.lastPosition = i;
        }

        @Override // org.telegram.ui.Stories.PeerStoriesView.Delegate
        public void shouldSwitchToNext() {
            if (StoryViewer.this.storiesViewPager.getCurrentPeerView().switchToNext(true) || StoryViewer.this.storiesViewPager.switchToNext(true)) {
                return;
            }
            StoryViewer.this.close(true);
        }

        @Override // org.telegram.ui.Stories.PeerStoriesView.Delegate
        public void switchToNextAndRemoveCurrentPeer() {
            if (this.val$storiesList != null) {
                if (StoryViewer.this.storiesViewPager.days == null) {
                    return;
                }
                final ArrayList arrayList = new ArrayList(StoryViewer.this.storiesViewPager.days);
                int iIndexOf = StoryViewer.this.storiesViewPager.getCurrentPeerView() == null ? -1 : arrayList.indexOf(StoryViewer.this.storiesViewPager.getCurrentPeerView().getCurrentDay());
                if (iIndexOf >= 0) {
                    arrayList.remove(iIndexOf);
                    if (!StoryViewer.this.storiesViewPager.switchToNext(true)) {
                        StoryViewer.this.close(false);
                        return;
                    }
                    StoriesViewPager storiesViewPager = StoryViewer.this.storiesViewPager;
                    final StoriesController.StoriesList storiesList = this.val$storiesList;
                    storiesViewPager.onNextIdle(new Runnable() { // from class: org.telegram.ui.Stories.StoryViewer$5$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$switchToNextAndRemoveCurrentPeer$0(storiesList, arrayList);
                        }
                    });
                    return;
                }
                StoryViewer.this.close(false);
                return;
            }
            final ArrayList arrayList2 = new ArrayList(this.val$peerIds);
            final int iIndexOf2 = arrayList2.indexOf(Long.valueOf(StoryViewer.this.storiesViewPager.getCurrentPeerView().getCurrentPeer()));
            if (iIndexOf2 >= 0) {
                arrayList2.remove(iIndexOf2);
                if (!StoryViewer.this.storiesViewPager.switchToNext(true)) {
                    StoryViewer.this.close(false);
                    return;
                } else {
                    StoryViewer.this.storiesViewPager.onNextIdle(new Runnable() { // from class: org.telegram.ui.Stories.StoryViewer$5$$ExternalSyntheticLambda2
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$switchToNextAndRemoveCurrentPeer$1(arrayList2, iIndexOf2);
                        }
                    });
                    return;
                }
            }
            StoryViewer.this.close(false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$switchToNextAndRemoveCurrentPeer$0(StoriesController.StoriesList storiesList, ArrayList arrayList) {
            StoryViewer storyViewer = StoryViewer.this;
            storyViewer.storiesViewPager.setDays(storiesList.dialogId, arrayList, storyViewer.currentAccount);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$switchToNextAndRemoveCurrentPeer$1(ArrayList arrayList, int i) {
            StoryViewer storyViewer = StoryViewer.this;
            storyViewer.storiesViewPager.setPeerIds(arrayList, storyViewer.currentAccount, i);
        }

        @Override // org.telegram.ui.Stories.PeerStoriesView.Delegate
        public void setHideEnterViewProgress(float f) {
            if (StoryViewer.this.hideEnterViewProgress != f) {
                StoryViewer.this.hideEnterViewProgress = f;
                StoryViewer.this.containerView.invalidate();
            }
        }

        @Override // org.telegram.ui.Stories.PeerStoriesView.Delegate
        public void showDialog(Dialog dialog) {
            StoryViewer.this.showDialog(dialog);
        }

        @Override // org.telegram.ui.Stories.PeerStoriesView.Delegate
        public boolean releasePlayer(Runnable runnable) {
            VideoPlayerHolder videoPlayerHolder = StoryViewer.this.playerHolder;
            if (videoPlayerHolder == null) {
                return false;
            }
            boolean zRelease = videoPlayerHolder.release(runnable);
            StoryViewer.this.playerHolder = null;
            return zRelease;
        }

        @Override // org.telegram.ui.Stories.PeerStoriesView.Delegate
        public void requestAdjust(boolean z) {
            StoryViewer.this.requestAdjust(z);
        }

        @Override // org.telegram.ui.Stories.PeerStoriesView.Delegate
        public void setKeyboardVisible(boolean z) {
            StoryViewer storyViewer = StoryViewer.this;
            if (storyViewer.keyboardVisible != z) {
                storyViewer.keyboardVisible = z;
                storyViewer.updatePlayingMode();
            }
        }

        @Override // org.telegram.ui.Stories.PeerStoriesView.Delegate
        public void setAllowTouchesByViewPager(boolean z) {
            StoryViewer storyViewer = StoryViewer.this;
            storyViewer.allowTouchesByViewpager = storyViewer.allowTouchesByViewpager;
            StoryViewer.this.updatePlayingMode();
        }

        @Override // org.telegram.ui.Stories.PeerStoriesView.Delegate
        public void requestPlayer(TL_stories.StoryItem storyItem, long j, int i, boolean z, TLRPC.InputGroupCall inputGroupCall, PeerStoriesView.VideoPlayerSharedScope videoPlayerSharedScope) {
            switchToLive(true, true);
            LivePlayer livePlayer = StoryViewer.this.livePlayer;
            if (livePlayer != null && livePlayer.dialogId == j && livePlayer.equals(inputGroupCall)) {
                return;
            }
            LivePlayerView livePlayerView = StoryViewer.this.liveView;
            if (livePlayerView != null) {
                livePlayerView.setScope(j, null);
                StoryViewer.this.liveView.reset();
            }
            if (LiveStoryPipOverlay.isVisible() && LiveStoryPipOverlay.getLivePlayer() != null && LiveStoryPipOverlay.getLivePlayer().equals(inputGroupCall)) {
                StoryViewer.this.livePlayer = LiveStoryPipOverlay.takeLivePlayer();
                LiveStoryPipOverlay.dismiss(false);
            } else {
                LivePlayer livePlayer2 = StoryViewer.this.livePlayer;
                if (livePlayer2 != null) {
                    if (livePlayer2.outgoing || LiveStoryPipOverlay.isVisible(livePlayer2)) {
                        if (StoryViewer.this.livePlayer.getDisplaySink() == StoryViewer.this.liveView.getSink()) {
                            return;
                        } else {
                            StoryViewer.this.livePlayer.setDisplaySink(null);
                        }
                    } else {
                        StoryViewer.this.livePlayer.destroy();
                    }
                    StoryViewer.this.livePlayer = null;
                }
            }
            if (LiveStoryPipOverlay.isVisible()) {
                LiveStoryPipOverlay.dismiss();
            }
            VideoPlayerHolder videoPlayerHolder = StoryViewer.this.playerHolder;
            if (videoPlayerHolder != null) {
                videoPlayerHolder.release(null);
                StoryViewer.this.playerHolder = null;
            }
            PeerStoriesView.VideoPlayerSharedScope videoPlayerSharedScope2 = StoryViewer.this.currentPlayerScope;
            if (videoPlayerSharedScope2 != null) {
                videoPlayerSharedScope2.player = null;
                videoPlayerSharedScope2.livePlayer = null;
                videoPlayerSharedScope2.firstFrameRendered = false;
                videoPlayerSharedScope2.renderView = null;
                videoPlayerSharedScope2.textureView = null;
                videoPlayerSharedScope2.surfaceView = null;
                videoPlayerSharedScope2.invalidate();
                StoryViewer.this.currentPlayerScope = null;
            }
            if (StoryViewer.this.livePlayer == null) {
                LivePlayer livePlayer3 = LivePlayer.recording;
                if (livePlayer3 != null && livePlayer3.equals(inputGroupCall)) {
                    StoryViewer.this.livePlayer = LivePlayer.recording;
                } else {
                    StoryViewer storyViewer = StoryViewer.this;
                    storyViewer.livePlayer = new LivePlayer(this.val$context, storyViewer.currentAccount, storyItem, j, i, z, inputGroupCall);
                }
            }
            StoryViewer storyViewer2 = StoryViewer.this;
            LivePlayerView livePlayerView2 = storyViewer2.pipLiveView;
            if (livePlayerView2 != null) {
                storyViewer2.livePlayer.setDisplaySink(livePlayerView2.getSink());
            } else {
                storyViewer2.livePlayer.setDisplaySink(storyViewer2.liveView.getSink());
            }
            StoryViewer storyViewer3 = StoryViewer.this;
            storyViewer3.currentPlayerScope = videoPlayerSharedScope;
            videoPlayerSharedScope.firstFrameRendered = false;
            videoPlayerSharedScope.renderView = storyViewer3.aspectRatioFrameLayout;
            LivePlayerView livePlayerView3 = storyViewer3.liveView;
            videoPlayerSharedScope.textureView = livePlayerView3.textureView;
            videoPlayerSharedScope.surfaceView = livePlayerView3.surfaceView;
            videoPlayerSharedScope.livePlayer = storyViewer3.livePlayer;
            livePlayerView3.setScope(j, videoPlayerSharedScope);
            StoryViewer.this.currentPlayerScope.invalidate();
        }

        @Override // org.telegram.ui.Stories.PeerStoriesView.Delegate
        public void requestPlayer(TLRPC.Document document, Uri uri, long j, PeerStoriesView.VideoPlayerSharedScope videoPlayerSharedScope) {
            long j2;
            StoryViewer storyViewer;
            VideoPlayerHolder videoPlayerHolder;
            if (!StoryViewer.this.isClosed) {
                StoryViewer storyViewer2 = StoryViewer.this;
                if (storyViewer2.progressToOpen >= 0.9f) {
                    Uri uri2 = storyViewer2.lastUri;
                    boolean zEquals = TextUtils.equals(uri2 == null ? null : uri2.toString(), uri == null ? null : uri.toString());
                    if (!zEquals || (videoPlayerHolder = (storyViewer = StoryViewer.this).playerHolder) == null) {
                        StoryViewer storyViewer3 = StoryViewer.this;
                        storyViewer3.lastUri = uri;
                        LivePlayerView livePlayerView = storyViewer3.liveView;
                        if (livePlayerView != null) {
                            livePlayerView.setScope(0L, null);
                        }
                        LivePlayer livePlayer = StoryViewer.this.livePlayer;
                        if (livePlayer != null) {
                            if (livePlayer.outgoing) {
                                livePlayer.setDisplaySink(null);
                            } else {
                                livePlayer.destroy();
                            }
                            StoryViewer.this.livePlayer = null;
                        }
                        VideoPlayerHolder videoPlayerHolder2 = StoryViewer.this.playerHolder;
                        if (videoPlayerHolder2 != null) {
                            videoPlayerHolder2.release(null);
                            StoryViewer.this.playerHolder = null;
                        }
                        PeerStoriesView.VideoPlayerSharedScope videoPlayerSharedScope2 = StoryViewer.this.currentPlayerScope;
                        if (videoPlayerSharedScope2 != null) {
                            videoPlayerSharedScope2.player = null;
                            videoPlayerSharedScope2.livePlayer = null;
                            videoPlayerSharedScope2.firstFrameRendered = false;
                            videoPlayerSharedScope2.renderView = null;
                            videoPlayerSharedScope2.textureView = null;
                            videoPlayerSharedScope2.surfaceView = null;
                            videoPlayerSharedScope2.invalidate();
                            StoryViewer.this.currentPlayerScope = null;
                        }
                        if (uri != null) {
                            StoryViewer.this.currentPlayerScope = videoPlayerSharedScope;
                            int i = 0;
                            while (true) {
                                if (i >= StoryViewer.this.preparedPlayers.size()) {
                                    break;
                                }
                                if (((VideoPlayerHolder) StoryViewer.this.preparedPlayers.get(i)).uri.equals(uri)) {
                                    StoryViewer storyViewer4 = StoryViewer.this;
                                    storyViewer4.playerHolder = (VideoPlayerHolder) storyViewer4.preparedPlayers.remove(i);
                                    break;
                                }
                                i++;
                            }
                            StoryViewer storyViewer5 = StoryViewer.this;
                            if (storyViewer5.playerHolder == null) {
                                storyViewer5.playerHolder = storyViewer5.new VideoPlayerHolder(storyViewer5.surfaceView, StoryViewer.this.textureView);
                                StoryViewer.this.playerHolder.document = document;
                            }
                            VideoPlayerHolder videoPlayerHolder3 = StoryViewer.this.playerHolder;
                            videoPlayerHolder3.uri = uri;
                            videoPlayerHolder3.setSpeed(StoryViewer.currentSpeed);
                            StoryViewer storyViewer6 = StoryViewer.this;
                            PeerStoriesView.VideoPlayerSharedScope videoPlayerSharedScope3 = storyViewer6.currentPlayerScope;
                            videoPlayerSharedScope3.player = storyViewer6.playerHolder;
                            videoPlayerSharedScope3.firstFrameRendered = false;
                            videoPlayerSharedScope3.renderView = storyViewer6.aspectRatioFrameLayout;
                            videoPlayerSharedScope3.textureView = storyViewer6.textureView;
                            StoryViewer storyViewer7 = StoryViewer.this;
                            storyViewer7.currentPlayerScope.surfaceView = storyViewer7.surfaceView;
                            StoryViewer storyViewer8 = StoryViewer.this;
                            storyViewer8.currentPlayerScope.livePlayer = null;
                            FileStreamLoadOperation.setPriorityForDocument(storyViewer8.playerHolder.document, 3);
                            FileLoader.getInstance(StoryViewer.this.currentAccount).changePriority(3, StoryViewer.this.playerHolder.document, null, null, null, null, null);
                            if (j != 0 || StoryViewer.this.playerSavedPosition == 0) {
                                j2 = j;
                            } else {
                                long j3 = StoryViewer.this.playerSavedPosition;
                                StoryViewer.this.currentPlayerScope.firstFrameRendered = true;
                                j2 = j3;
                            }
                            FileLog.m1133d("StoryViewer requestPlayer: currentPlayerScope.player start " + uri);
                            StoryViewer storyViewer9 = StoryViewer.this;
                            storyViewer9.currentPlayerScope.player.start(false, storyViewer9.isPaused(), uri, j2, StoryViewer.isInSilentMode, StoryViewer.currentSpeed);
                            StoryViewer.this.currentPlayerScope.invalidate();
                        } else {
                            FileLog.m1133d("StoryViewer requestPlayer: url is null (1)");
                        }
                    } else if (zEquals) {
                        storyViewer.currentPlayerScope = videoPlayerSharedScope;
                        videoPlayerSharedScope.player = videoPlayerHolder;
                        videoPlayerSharedScope.livePlayer = null;
                        videoPlayerHolder.setSpeed(StoryViewer.currentSpeed);
                        StoryViewer storyViewer10 = StoryViewer.this;
                        PeerStoriesView.VideoPlayerSharedScope videoPlayerSharedScope4 = storyViewer10.currentPlayerScope;
                        videoPlayerSharedScope4.firstFrameRendered = storyViewer10.playerHolder.firstFrameRendered;
                        videoPlayerSharedScope4.renderView = storyViewer10.aspectRatioFrameLayout;
                        videoPlayerSharedScope4.textureView = storyViewer10.textureView;
                        StoryViewer storyViewer11 = StoryViewer.this;
                        storyViewer11.currentPlayerScope.surfaceView = storyViewer11.surfaceView;
                        FileLog.m1133d("StoryViewer requestPlayer: same url");
                    }
                    switchToLive(false, uri != null);
                    StoryViewer.this.playerSavedPosition = 0L;
                    StoryViewer.this.updatePlayingMode();
                    return;
                }
            }
            LivePlayerView livePlayerView2 = StoryViewer.this.liveView;
            if (livePlayerView2 != null) {
                livePlayerView2.setScope(0L, null);
            }
            LivePlayer livePlayer2 = StoryViewer.this.livePlayer;
            if (livePlayer2 != null) {
                if (livePlayer2.outgoing) {
                    livePlayer2.setDisplaySink(null);
                } else {
                    livePlayer2.destroy();
                }
                StoryViewer.this.livePlayer = null;
            }
            FileLog.m1133d("StoryViewer requestPlayer ignored, because closed: " + StoryViewer.this.isClosed + ", " + StoryViewer.this.progressToOpen);
            videoPlayerSharedScope.firstFrameRendered = false;
            videoPlayerSharedScope.player = null;
            videoPlayerSharedScope.livePlayer = null;
        }

        private void switchToLive(boolean z, boolean z2) {
            LivePlayerView livePlayerView = StoryViewer.this.liveView;
            if (livePlayerView != null) {
                livePlayerView.setVisibility(z ? 0 : 8);
            }
            if (StoryViewer.this.surfaceView != null) {
                StoryViewer.this.surfaceView.setVisibility(z ? 8 : z2 ? 0 : 4);
            }
            if (StoryViewer.this.textureView != null) {
                StoryViewer.this.textureView.setVisibility(z ? 8 : 0);
            }
        }

        @Override // org.telegram.ui.Stories.PeerStoriesView.Delegate
        public boolean isClosed() {
            return StoryViewer.this.isClosed;
        }

        @Override // org.telegram.ui.Stories.PeerStoriesView.Delegate
        public float getProgressToDismiss() {
            return StoryViewer.this.progressToDismiss;
        }

        @Override // org.telegram.ui.Stories.PeerStoriesView.Delegate
        public void setIsRecording(boolean z) {
            StoryViewer.this.isRecording = z;
            StoryViewer.this.updatePlayingMode();
        }

        @Override // org.telegram.ui.Stories.PeerStoriesView.Delegate
        public void setIsWaiting(boolean z) {
            StoryViewer.this.isWaiting = z;
            StoryViewer.this.updatePlayingMode();
        }

        @Override // org.telegram.ui.Stories.PeerStoriesView.Delegate
        public void setIsCaption(boolean z) {
            StoryViewer.this.isCaption = z;
            StoryViewer.this.updatePlayingMode();
        }

        @Override // org.telegram.ui.Stories.PeerStoriesView.Delegate
        public void setIsCaptionPartVisible(boolean z) {
            StoryViewer.this.isCaptionPartVisible = z;
        }

        @Override // org.telegram.ui.Stories.PeerStoriesView.Delegate
        public void setPopupIsVisible(boolean z) {
            StoryViewer.this.isPopupVisible = z;
            StoryViewer.this.updatePlayingMode();
        }

        @Override // org.telegram.ui.Stories.PeerStoriesView.Delegate
        public void setTranslating(boolean z) {
            StoryViewer storyViewer = StoryViewer.this;
            storyViewer.isTranslating = z;
            storyViewer.updatePlayingMode();
        }

        @Override // org.telegram.ui.Stories.PeerStoriesView.Delegate
        public void setBulletinIsVisible(boolean z) {
            StoryViewer.this.isBulletinVisible = z;
            StoryViewer.this.updatePlayingMode();
        }

        @Override // org.telegram.ui.Stories.PeerStoriesView.Delegate
        public void setIsInPinchToZoom(boolean z) {
            VideoPlayerHolder videoPlayerHolder;
            if (!StoryViewer.this.isInPinchToZoom && z) {
                StoryViewer storyViewer = StoryViewer.this;
                if (storyViewer.inSeekingMode) {
                    storyViewer.inSeekingMode = false;
                    PeerStoriesView.VideoPlayerSharedScope videoPlayerSharedScope = storyViewer.currentPlayerScope;
                    if (videoPlayerSharedScope != null && (videoPlayerHolder = videoPlayerSharedScope.player) != null) {
                        videoPlayerHolder.setSeeking(false);
                    }
                    PeerStoriesView currentPeerView = StoryViewer.this.getCurrentPeerView();
                    if (currentPeerView != null) {
                        currentPeerView.invalidate();
                    }
                }
            }
            StoryViewer.this.isInPinchToZoom = z;
            StoryViewer.this.updatePlayingMode();
        }

        @Override // org.telegram.ui.Stories.PeerStoriesView.Delegate
        public void setIsHintVisible(boolean z) {
            StoryViewer.this.isHintVisible = z;
            StoryViewer.this.updatePlayingMode();
        }

        @Override // org.telegram.ui.Stories.PeerStoriesView.Delegate
        public void setIsSwiping(boolean z) {
            StoryViewer.this.isSwiping = z;
            StoryViewer.this.updatePlayingMode();
        }

        @Override // org.telegram.ui.Stories.PeerStoriesView.Delegate
        public void setIsInSelectionMode(boolean z) {
            StoryViewer.this.isInTextSelectionMode = z;
            StoryViewer.this.updatePlayingMode();
        }

        @Override // org.telegram.ui.Stories.PeerStoriesView.Delegate
        public void setIsLikesReaction(boolean z) {
            StoryViewer.this.isLikesReactions = z;
            StoryViewer.this.updatePlayingMode();
        }

        @Override // org.telegram.ui.Stories.PeerStoriesView.Delegate
        public int getKeyboardHeight() {
            return StoryViewer.this.realKeyboardHeight;
        }

        @Override // org.telegram.ui.Stories.PeerStoriesView.Delegate
        public void preparePlayer(ArrayList arrayList, ArrayList arrayList2) {
            if (SharedConfig.deviceIsHigh() && SharedConfig.allowPreparingHevcPlayers() && !StoryViewer.this.isClosed) {
                for (int i = 0; i < StoryViewer.this.preparedPlayers.size(); i++) {
                    for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                        if (((Uri) arrayList2.get(i2)).equals(((VideoPlayerHolder) StoryViewer.this.preparedPlayers.get(i)).uri)) {
                            arrayList2.remove(i2);
                        }
                    }
                }
                for (int i3 = 0; i3 < arrayList2.size(); i3++) {
                    Uri uri = (Uri) arrayList2.get(i3);
                    StoryViewer storyViewer = StoryViewer.this;
                    final VideoPlayerHolder videoPlayerHolder = storyViewer.new VideoPlayerHolder(storyViewer.surfaceView, StoryViewer.this.textureView);
                    videoPlayerHolder.setOnSeekUpdate(new Runnable() { // from class: org.telegram.ui.Stories.StoryViewer$5$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$preparePlayer$2(videoPlayerHolder);
                        }
                    });
                    videoPlayerHolder.uri = uri;
                    TLRPC.Document document = (TLRPC.Document) arrayList.get(i3);
                    videoPlayerHolder.document = document;
                    FileStreamLoadOperation.setPriorityForDocument(document, 0);
                    videoPlayerHolder.preparePlayer(uri, StoryViewer.isInSilentMode, StoryViewer.currentSpeed);
                    StoryViewer.this.preparedPlayers.add(videoPlayerHolder);
                    if (StoryViewer.this.preparedPlayers.size() > 2) {
                        ((VideoPlayerHolder) StoryViewer.this.preparedPlayers.remove(0)).release(null);
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$preparePlayer$2(VideoPlayerHolder videoPlayerHolder) {
            FrameLayout frameLayout;
            PeerStoriesView.VideoPlayerSharedScope videoPlayerSharedScope;
            PeerStoriesView currentPeerView = StoryViewer.this.storiesViewPager.getCurrentPeerView();
            if (currentPeerView == null || (frameLayout = currentPeerView.storyContainer) == null || (videoPlayerSharedScope = StoryViewer.this.currentPlayerScope) == null || videoPlayerSharedScope.player != videoPlayerHolder) {
                return;
            }
            frameLayout.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ WindowInsetsCompat lambda$open$1(View view, WindowInsetsCompat windowInsetsCompat) {
        int systemWindowInsetBottom;
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.containerView.getLayoutParams();
        marginLayoutParams.topMargin = this.ATTACHED_FRAGMENT_IS_EDGE_TO_EDGE ? 0 : windowInsetsCompat.getSystemWindowInsetTop();
        if (this.ATTACHED_FRAGMENT_IS_EDGE_TO_EDGE) {
            systemWindowInsetBottom = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.navigationBars()).bottom;
        } else {
            systemWindowInsetBottom = windowInsetsCompat.getSystemWindowInsetBottom();
        }
        marginLayoutParams.bottomMargin = systemWindowInsetBottom;
        marginLayoutParams.leftMargin = windowInsetsCompat.getSystemWindowInsetLeft();
        marginLayoutParams.rightMargin = windowInsetsCompat.getSystemWindowInsetRight();
        this.windowView.requestLayout();
        this.containerView.requestLayout();
        return WindowInsetsCompat.CONSUMED;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$open$2() {
        LaunchActivity launchActivity = LaunchActivity.instance;
        if (launchActivity != null) {
            launchActivity.onBackPressed();
        } else {
            onAttachedBackPressed();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showKeyboard() {
        PeerStoriesView currentPeerView = this.storiesViewPager.getCurrentPeerView();
        if (currentPeerView != null && currentPeerView.showKeyboard()) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoryViewer$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.cancelSwipeToReply();
                }
            }, 200L);
        } else {
            cancelSwipeToReply();
        }
    }

    public void cancelSwipeToViews(final boolean z) {
        if (this.swipeToViewsAnimator != null) {
            return;
        }
        if (this.realKeyboardHeight != 0) {
            AndroidUtilities.hideKeyboard(this.selfStoryViewsView);
            return;
        }
        if (this.allowSelfStoriesView || this.selfStoriesViewsOffset != 0.0f) {
            this.locker.lock();
            if (!z) {
                float f = this.selfStoriesViewsOffset;
                SelfStoryViewsView selfStoryViewsView = this.selfStoryViewsView;
                float f2 = selfStoryViewsView.maxSelfStoriesViewsOffset;
                if (f == f2) {
                    this.selfStoriesViewsOffset = f2 - 1.0f;
                    selfStoryViewsView.setOffset(f2 - 1.0f);
                }
            }
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.selfStoriesViewsOffset, z ? this.selfStoryViewsView.maxSelfStoriesViewsOffset : 0.0f);
            this.swipeToViewsAnimator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.StoryViewer$$ExternalSyntheticLambda4
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$cancelSwipeToViews$3(valueAnimator);
                }
            });
            this.swipeToViewsAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.StoryViewer.7
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    StoryViewer.this.locker.unlock();
                    StoryViewer storyViewer = StoryViewer.this;
                    storyViewer.selfStoriesViewsOffset = z ? storyViewer.selfStoryViewsView.maxSelfStoriesViewsOffset : 0.0f;
                    PeerStoriesView currentPeerView = storyViewer.storiesViewPager.getCurrentPeerView();
                    if (currentPeerView != null) {
                        currentPeerView.invalidate();
                    }
                    StoryViewer.this.containerView.invalidate();
                    StoryViewer.this.swipeToViewsAnimator = null;
                }
            });
            if (z) {
                this.swipeToViewsAnimator.setDuration(350L);
                this.swipeToViewsAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            } else {
                this.swipeToViewsAnimator.setDuration(350L);
                this.swipeToViewsAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
            }
            this.swipeToViewsAnimator.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cancelSwipeToViews$3(ValueAnimator valueAnimator) {
        this.selfStoriesViewsOffset = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.containerView.invalidate();
    }

    public void checkSelfStoriesView() {
        if (this.selfStoryViewsView == null) {
            SelfStoryViewsView selfStoryViewsView = new SelfStoryViewsView(this.containerView.getContext(), this);
            this.selfStoryViewsView = selfStoryViewsView;
            this.containerView.addView(selfStoryViewsView, 0);
        }
        PeerStoriesView currentPeerView = this.storiesViewPager.getCurrentPeerView();
        if (currentPeerView != null) {
            if (this.storiesList != null) {
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < this.storiesList.messageObjects.size(); i++) {
                    arrayList.add(((MessageObject) this.storiesList.messageObjects.get(i)).storyItem);
                }
                this.selfStoryViewsView.setItems(this.storiesList.dialogId, arrayList, currentPeerView.getListPosition());
                return;
            }
            this.selfStoryViewsView.setItems(currentPeerView.getCurrentPeer(), currentPeerView.getStoryItems(), currentPeerView.getSelectedPosition());
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    public boolean showDialog(Dialog dialog) {
        try {
            this.currentDialog = dialog;
            dialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Stories.StoryViewer$$ExternalSyntheticLambda8
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    this.f$0.lambda$showDialog$4(dialogInterface);
                }
            });
            dialog.show();
            updatePlayingMode();
            return true;
        } catch (Throwable th) {
            FileLog.m1136e(th);
            this.currentDialog = null;
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showDialog$4(DialogInterface dialogInterface) {
        if (dialogInterface == this.currentDialog) {
            this.currentDialog = null;
            updatePlayingMode();
        }
    }

    public boolean listenToAttachedSheet(BaseFragment.AttachedSheet attachedSheet) {
        this.currentSheet = attachedSheet;
        attachedSheet.setOnDismissListener(new Runnable() { // from class: org.telegram.ui.Stories.StoryViewer$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$listenToAttachedSheet$5();
            }
        });
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$listenToAttachedSheet$5() {
        this.currentSheet = null;
        updatePlayingMode();
    }

    public void cancelSwipeToReply() {
        if (this.swipeToReplyBackAnimator == null) {
            this.inSwipeToDissmissMode = false;
            this.allowSwipeToReply = false;
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.swipeToReplyOffset, 0.0f);
            this.swipeToReplyBackAnimator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.StoryViewer$$ExternalSyntheticLambda12
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$cancelSwipeToReply$6(valueAnimator);
                }
            });
            this.swipeToReplyBackAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.StoryViewer.8
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    StoryViewer storyViewer = StoryViewer.this;
                    storyViewer.swipeToReplyBackAnimator = null;
                    storyViewer.swipeToReplyOffset = 0.0f;
                    storyViewer.swipeToReplyProgress = 0.0f;
                    StoriesViewPager storiesViewPager = storyViewer.storiesViewPager;
                    PeerStoriesView currentPeerView = storiesViewPager != null ? storiesViewPager.getCurrentPeerView() : null;
                    if (currentPeerView != null) {
                        currentPeerView.invalidate();
                    }
                }
            });
            this.swipeToReplyBackAnimator.setDuration(250L);
            this.swipeToReplyBackAnimator.setInterpolator(AdjustPanLayoutHelper.keyboardInterpolator);
            this.swipeToReplyBackAnimator.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cancelSwipeToReply$6(ValueAnimator valueAnimator) {
        this.swipeToReplyOffset = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.swipeToReplyProgress = Utilities.clamp(this.swipeToReplyOffset / AndroidUtilities.m1124dp(200.0f), 1.0f, 0.0f);
        StoriesViewPager storiesViewPager = this.storiesViewPager;
        PeerStoriesView currentPeerView = storiesViewPager == null ? null : storiesViewPager.getCurrentPeerView();
        if (currentPeerView != null) {
            currentPeerView.invalidate();
        }
    }

    public boolean getStoryRect(RectF rectF) {
        PeerStoriesView currentPeerView;
        StoriesViewPager storiesViewPager = this.storiesViewPager;
        if (storiesViewPager == null || (currentPeerView = storiesViewPager.getCurrentPeerView()) == null || currentPeerView.storyContainer == null) {
            return false;
        }
        SizeNotifierFrameLayout sizeNotifierFrameLayout = this.windowView;
        float x = sizeNotifierFrameLayout == null ? 0.0f : sizeNotifierFrameLayout.getX();
        SizeNotifierFrameLayout sizeNotifierFrameLayout2 = this.windowView;
        float y = sizeNotifierFrameLayout2 != null ? sizeNotifierFrameLayout2.getY() : 0.0f;
        rectF.set(this.swipeToDismissHorizontalOffset + x + this.containerView.getLeft() + currentPeerView.getX() + currentPeerView.storyContainer.getX(), this.swipeToDismissOffset + y + this.containerView.getTop() + currentPeerView.getY() + currentPeerView.storyContainer.getY(), (((x + this.swipeToDismissHorizontalOffset) + this.containerView.getRight()) - (this.containerView.getWidth() - currentPeerView.getRight())) - (currentPeerView.getWidth() - currentPeerView.storyContainer.getRight()), (((y + this.swipeToDismissOffset) + this.containerView.getBottom()) - (this.containerView.getHeight() - currentPeerView.getBottom())) - (currentPeerView.getHeight() - currentPeerView.storyContainer.getBottom()));
        return true;
    }

    public void switchByTap(boolean z) {
        PeerStoriesView currentPeerView = this.storiesViewPager.getCurrentPeerView();
        if (currentPeerView == null || currentPeerView.switchToNext(z)) {
            return;
        }
        if (this.storiesViewPager.switchToNext(z)) {
            this.storiesViewPager.lockTouchEvent(150L);
            return;
        }
        if (z) {
            close(true);
            return;
        }
        VideoPlayerHolder videoPlayerHolder = this.playerHolder;
        if (videoPlayerHolder != null) {
            videoPlayerHolder.loopBack();
        }
    }

    public PeerStoriesView getCurrentPeerView() {
        StoriesViewPager storiesViewPager = this.storiesViewPager;
        if (storiesViewPager == null) {
            return null;
        }
        return storiesViewPager.getCurrentPeerView();
    }

    private void lockOrientation(boolean z) {
        Activity activityFindActivity = AndroidUtilities.findActivity(this.fragment.getContext());
        if (activityFindActivity != null) {
            try {
                activityFindActivity.setRequestedOrientation(z ? 1 : -1);
            } catch (Exception unused) {
            }
            if (z) {
                activityFindActivity.getWindow().addFlags(128);
            } else {
                activityFindActivity.getWindow().clearFlags(128);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchVolumeEvent(KeyEvent keyEvent) {
        if (isInSilentMode) {
            toggleSilentMode();
            return;
        }
        PeerStoriesView currentPeerView = this.storiesViewPager.getCurrentPeerView();
        if (currentPeerView != null && !currentPeerView.currentStory.hasSound() && currentPeerView.currentStory.isVideo()) {
            currentPeerView.showNoSoundHint(true);
        } else {
            this.volumeControl.onKeyDown(keyEvent.getKeyCode(), keyEvent);
        }
    }

    public void toggleSilentMode() {
        boolean z = isInSilentMode;
        isInSilentMode = !z;
        VideoPlayerHolder videoPlayerHolder = this.playerHolder;
        if (videoPlayerHolder != null) {
            videoPlayerHolder.setAudioEnabled(z, false);
        }
        for (int i = 0; i < this.preparedPlayers.size(); i++) {
            ((VideoPlayerHolder) this.preparedPlayers.get(i)).setAudioEnabled(!isInSilentMode, true);
        }
        PeerStoriesView currentPeerView = this.storiesViewPager.getCurrentPeerView();
        if (currentPeerView != null) {
            currentPeerView.sharedResources.setIconMuted(!soundEnabled(), true);
        }
        if (isInSilentMode) {
            return;
        }
        this.volumeControl.unmute();
    }

    private void checkInSilentMode() {
        if (checkSilentMode) {
            checkSilentMode = false;
            isInSilentMode = ((AudioManager) this.windowView.getContext().getSystemService(MediaStreamTrack.AUDIO_TRACK_KIND)).getRingerMode() != 2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void layoutAndFindView() {
        PeerStoriesView currentPeerView;
        int selectedPosition;
        this.foundViewToClose = true;
        ImageReceiver imageReceiver = this.transitionViewHolder.avatarImage;
        if (imageReceiver != null) {
            imageReceiver.setVisible(true, true);
        }
        ImageReceiver imageReceiver2 = this.transitionViewHolder.storyImage;
        if (imageReceiver2 != null) {
            imageReceiver2.setAlpha(1.0f);
            this.transitionViewHolder.storyImage.setVisible(true, true);
        }
        if (this.storiesList != null && (currentPeerView = this.storiesViewPager.getCurrentPeerView()) != null && (selectedPosition = currentPeerView.getSelectedPosition()) >= 0 && selectedPosition < this.storiesList.messageObjects.size()) {
            this.messageId = ((MessageObject) this.storiesList.messageObjects.get(selectedPosition)).getId();
        }
        PlaceProvider placeProvider = this.placeProvider;
        if (placeProvider != null) {
            placeProvider.preLayout(this.storiesViewPager.getCurrentDialogId(), this.messageId, new Runnable() { // from class: org.telegram.ui.Stories.StoryViewer$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$layoutAndFindView$7();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$layoutAndFindView$7() {
        updateTransitionParams();
        ImageReceiver imageReceiver = this.transitionViewHolder.avatarImage;
        if (imageReceiver != null) {
            imageReceiver.setVisible(false, true);
        }
        ImageReceiver imageReceiver2 = this.transitionViewHolder.storyImage;
        if (imageReceiver2 != null) {
            imageReceiver2.setVisible(false, true);
        }
    }

    private void updateTransitionParams() {
        if (this.placeProvider != null) {
            ImageReceiver imageReceiver = this.transitionViewHolder.avatarImage;
            if (imageReceiver != null) {
                imageReceiver.setVisible(true, true);
            }
            ImageReceiver imageReceiver2 = this.transitionViewHolder.storyImage;
            if (imageReceiver2 != null) {
                imageReceiver2.setAlpha(1.0f);
                this.transitionViewHolder.storyImage.setVisible(true, true);
            }
            PeerStoriesView currentPeerView = this.storiesViewPager.getCurrentPeerView();
            int selectedPosition = currentPeerView == null ? 0 : currentPeerView.getSelectedPosition();
            int i = (currentPeerView == null || selectedPosition < 0 || selectedPosition >= currentPeerView.storyItems.size()) ? 0 : ((TL_stories.StoryItem) currentPeerView.storyItems.get(selectedPosition)).f1857id;
            TL_stories.StoryItem storyItem = (currentPeerView == null || selectedPosition < 0 || selectedPosition >= currentPeerView.storyItems.size()) ? null : (TL_stories.StoryItem) currentPeerView.storyItems.get(selectedPosition);
            if (storyItem == null && this.isSingleStory) {
                storyItem = this.singleStory;
            }
            long currentDialogId = this.storiesViewPager.getCurrentDialogId();
            StoriesController.StoriesList storiesList = this.storiesList;
            if ((storiesList instanceof StoriesController.SearchStoriesList) && storyItem != null) {
                currentDialogId = storyItem.dialogId;
                i = storyItem.messageId;
            } else if (storiesList != null) {
                i = this.dayStoryId;
            }
            int i2 = i;
            long j = currentDialogId;
            this.transitionViewHolder.clear();
            if (this.placeProvider.findView(j, this.messageId, i2, storyItem == null ? -1 : storyItem.messageType, this.transitionViewHolder)) {
                TransitionViewHolder transitionViewHolder = this.transitionViewHolder;
                transitionViewHolder.storyId = i2;
                View view = transitionViewHolder.view;
                if (view != null) {
                    int[] iArr = new int[2];
                    view.getLocationOnScreen(iArr);
                    View view2 = this.transitionViewHolder.view;
                    if (view2 instanceof ChatMessageCell) {
                        iArr[1] = iArr[1] + view2.getPaddingTop();
                    }
                    int i3 = iArr[0];
                    this.fromXCell = i3;
                    this.fromYCell = iArr[1];
                    TransitionViewHolder transitionViewHolder2 = this.transitionViewHolder;
                    KeyEvent.Callback callback = transitionViewHolder2.view;
                    if (callback instanceof StoriesListPlaceProvider.AvatarOverlaysView) {
                        this.animateFromCell = (StoriesListPlaceProvider.AvatarOverlaysView) callback;
                    } else {
                        this.animateFromCell = null;
                    }
                    this.animateAvatar = false;
                    ImageReceiver imageReceiver3 = transitionViewHolder2.avatarImage;
                    if (imageReceiver3 != null) {
                        this.fromX = i3 + imageReceiver3.getCenterX();
                        this.fromY = iArr[1] + this.transitionViewHolder.avatarImage.getCenterY();
                        this.fromWidth = this.transitionViewHolder.avatarImage.getImageWidth();
                        this.fromHeight = this.transitionViewHolder.avatarImage.getImageHeight();
                        StoriesUtilities.AvatarStoryParams avatarStoryParams = this.transitionViewHolder.params;
                        if (avatarStoryParams != null) {
                            this.fromWidth *= avatarStoryParams.getScale();
                            this.fromHeight *= this.transitionViewHolder.params.getScale();
                        }
                        if (this.transitionViewHolder.view.getParent() instanceof View) {
                            View view3 = (View) this.transitionViewHolder.view.getParent();
                            this.fromX = iArr[0] + (this.transitionViewHolder.avatarImage.getCenterX() * view3.getScaleX());
                            this.fromY = iArr[1] + (this.transitionViewHolder.avatarImage.getCenterY() * view3.getScaleY());
                            this.fromWidth *= view3.getScaleX();
                            this.fromHeight *= view3.getScaleY();
                        }
                        this.animateAvatar = true;
                    } else {
                        ImageReceiver imageReceiver4 = transitionViewHolder2.storyImage;
                        if (imageReceiver4 != null) {
                            this.fromX = i3 + imageReceiver4.getCenterX();
                            this.fromY = iArr[1] + this.transitionViewHolder.storyImage.getCenterY();
                            this.fromWidth = this.transitionViewHolder.storyImage.getImageWidth();
                            this.fromHeight = this.transitionViewHolder.storyImage.getImageHeight();
                            this.fromRadius = this.transitionViewHolder.storyImage.getRoundRadius();
                        }
                    }
                    this.transitionViewHolder.clipParent.getLocationOnScreen(iArr);
                    TransitionViewHolder transitionViewHolder3 = this.transitionViewHolder;
                    float f = transitionViewHolder3.clipTop;
                    if (f == 0.0f && transitionViewHolder3.clipBottom == 0.0f) {
                        this.clipTop = 0.0f;
                        this.clipBottom = 0.0f;
                        return;
                    } else {
                        int i4 = iArr[1];
                        this.clipTop = i4 + f;
                        this.clipBottom = i4 + transitionViewHolder3.clipBottom;
                        return;
                    }
                }
                this.animateAvatar = false;
                this.fromY = 0.0f;
                this.fromX = 0.0f;
                return;
            }
            this.animateAvatar = false;
            this.fromY = 0.0f;
            this.fromX = 0.0f;
            return;
        }
        this.animateAvatar = false;
        this.fromY = 0.0f;
        this.fromX = 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void requestAdjust(boolean z) {
        if (this.ATTACH_TO_FRAGMENT) {
            if (this.ATTACHED_FRAGMENT_IS_EDGE_TO_EDGE) {
                return;
            }
            if (z) {
                AndroidUtilities.requestAdjustNothing(this.fragment.getParentActivity(), this.fragment.getClassGuid());
                return;
            } else {
                AndroidUtilities.requestAdjustResize(this.fragment.getParentActivity(), this.fragment.getClassGuid());
                return;
            }
        }
        WindowManager.LayoutParams layoutParams = this.windowLayoutParams;
        layoutParams.softInputMode = z ? 48 : 16;
        try {
            this.windowManager.updateViewLayout(this.windowView, layoutParams);
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setInTouchMode(boolean z) {
        this.isInTouchMode = z;
        if (z) {
            this.volumeControl.hide();
        }
        updatePlayingMode();
    }

    public void setOverlayVisible(boolean z) {
        this.isOverlayVisible = z;
        updatePlayingMode();
    }

    public void setOnCloseListener(Runnable runnable) {
        this.onCloseListener = runnable;
    }

    public boolean isPaused() {
        BaseFragment baseFragment;
        if (this.isPopupVisible || this.isTranslating || this.isBulletinVisible || this.isCaption || this.isWaiting || this.isInTouchMode || this.keyboardVisible || this.currentDialog != null || this.currentSheet != null || this.allowTouchesByViewpager || this.isClosed || this.isRecording || this.progressToOpen != 1.0f || this.selfStoriesViewsOffset != 0.0f || this.isHintVisible) {
            return true;
        }
        if ((this.isSwiping && this.USE_SURFACE_VIEW) || this.isOverlayVisible || this.isInTextSelectionMode || this.isLikesReactions || this.progressToDismiss != 0.0f || this.storiesIntro != null) {
            return true;
        }
        return (!this.ATTACH_TO_FRAGMENT || (baseFragment = this.fragment) == null || baseFragment.getLastStoryViewer() == this) ? false : true;
    }

    public void updatePlayingMode() {
        updatePipSource();
        if (this.storiesViewPager == null) {
            return;
        }
        boolean zIsPaused = isPaused();
        if (this.ATTACH_TO_FRAGMENT && this.fragment.isPaused()) {
            zIsPaused = true;
        }
        if (ArticleViewer.getInstance().isVisible()) {
            zIsPaused = true;
        }
        this.storiesViewPager.setPaused(zIsPaused);
        VideoPlayerHolder videoPlayerHolder = this.playerHolder;
        if (videoPlayerHolder != null) {
            if (zIsPaused) {
                videoPlayerHolder.pause();
            } else {
                videoPlayerHolder.play(currentSpeed);
            }
        }
        this.storiesViewPager.enableTouch((this.keyboardVisible || this.isClosed || this.isRecording || this.isLongpressed || this.isInPinchToZoom || this.selfStoriesViewsOffset != 0.0f || this.isInTextSelectionMode) ? false : true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean findClickableView(FrameLayout frameLayout, float f, float f2, boolean z) {
        ChatActivityEnterView chatActivityEnterView;
        ChatActivityEnterView chatActivityEnterView2;
        if (frameLayout == null) {
            return false;
        }
        if (this.isPopupVisible) {
            return true;
        }
        if (this.selfStoryViewsView != null && this.selfStoriesViewsOffset != 0.0f) {
            return true;
        }
        PeerStoriesView currentPeerView = this.storiesViewPager.getCurrentPeerView();
        if (currentPeerView != null) {
            if (currentPeerView.findClickableView(currentPeerView, ((f - this.containerView.getX()) - this.storiesViewPager.getX()) - currentPeerView.getX(), ((f2 - this.containerView.getY()) - this.storiesViewPager.getY()) - currentPeerView.getY(), z)) {
                return true;
            }
            if (currentPeerView.keyboardVisible) {
                return false;
            }
        }
        if (z) {
            return false;
        }
        if (currentPeerView != null && (chatActivityEnterView2 = currentPeerView.chatActivityEnterView) != null && chatActivityEnterView2.getVisibility() == 0 && f2 > this.containerView.getY() + this.storiesViewPager.getY() + currentPeerView.getY() + currentPeerView.chatActivityEnterView.getY()) {
            return true;
        }
        if ((currentPeerView == null || (chatActivityEnterView = currentPeerView.chatActivityEnterView) == null || !chatActivityEnterView.isRecordingAudioVideo()) && this.storiesIntro == null) {
            return AndroidUtilities.findClickableView(frameLayout, f, f2, currentPeerView);
        }
        return true;
    }

    public boolean closeKeyboardOrEmoji() {
        PeerStoriesView currentPeerView;
        StoriesViewPager storiesViewPager = this.storiesViewPager;
        if (storiesViewPager == null || (currentPeerView = storiesViewPager.getCurrentPeerView()) == null) {
            return false;
        }
        return currentPeerView.closeKeyboardOrEmoji();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateProgressToDismiss() {
        float fClamp01 = Utilities.clamp01(Math.abs(Math.max(this.swipeToDismissHorizontalOffset, this.swipeToDismissOffset) / AndroidUtilities.m1124dp(80.0f)));
        if (this.progressToDismiss != fClamp01) {
            this.progressToDismiss = fClamp01;
            checkNavBarColor();
            PeerStoriesView currentPeerView = this.storiesViewPager.getCurrentPeerView();
            if (currentPeerView != null) {
                currentPeerView.progressToDismissUpdated();
            }
            LivePlayer livePlayer = this.livePlayer;
            if (livePlayer != null) {
                livePlayer.setVolume((1.0f - this.progressToDismiss) * this.progressToOpen);
            }
        }
        SizeNotifierFrameLayout sizeNotifierFrameLayout = this.windowView;
        if (sizeNotifierFrameLayout != null) {
            sizeNotifierFrameLayout.invalidate();
        }
    }

    public void showViewsAfterOpening() {
        this.showViewsAfterOpening = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startOpenAnimation() {
        PeerStoriesView currentPeerView;
        RadialProgress radialProgress;
        updateTransitionParams();
        this.progressToOpen = 0.0f;
        setNavigationButtonsColor(true);
        this.foundViewToClose = false;
        animationInProgress = true;
        this.fromDismissOffset = this.swipeToDismissOffset;
        if (this.transitionViewHolder.radialProgressUpload != null && (currentPeerView = getCurrentPeerView()) != null && (radialProgress = currentPeerView.headerView.radialProgress) != null) {
            radialProgress.copyParams(this.transitionViewHolder.radialProgressUpload);
        }
        this.opening = true;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.openCloseAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.StoryViewer$$ExternalSyntheticLambda11
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$startOpenAnimation$8(valueAnimator);
            }
        });
        this.locker.lock();
        HwFrameLayout hwFrameLayout = this.containerView;
        if (hwFrameLayout != null) {
            hwFrameLayout.enableHwAcceleration();
        }
        this.openCloseAnimator.addListener(new C69669());
        this.openCloseAnimator.setStartDelay(40L);
        this.openCloseAnimator.setDuration(250L);
        this.openCloseAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
        this.openCloseAnimator.start();
        if (this.doOnAnimationReadyRunnables.isEmpty()) {
            return;
        }
        for (int i = 0; i < this.doOnAnimationReadyRunnables.size(); i++) {
            ((Runnable) this.doOnAnimationReadyRunnables.get(i)).run();
        }
        this.doOnAnimationReadyRunnables.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startOpenAnimation$8(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.progressToOpen = fFloatValue;
        HwFrameLayout hwFrameLayout = this.containerView;
        if (hwFrameLayout != null) {
            hwFrameLayout.checkHwAcceleration(fFloatValue);
        }
        LivePlayer livePlayer = this.livePlayer;
        if (livePlayer != null) {
            livePlayer.setVolume((1.0f - this.progressToDismiss) * this.progressToOpen);
        }
        checkNavBarColor();
        SizeNotifierFrameLayout sizeNotifierFrameLayout = this.windowView;
        if (sizeNotifierFrameLayout != null) {
            sizeNotifierFrameLayout.invalidate();
        }
    }

    /* JADX INFO: renamed from: org.telegram.ui.Stories.StoryViewer$9 */
    /* JADX INFO: loaded from: classes7.dex */
    class C69669 extends AnimatorListenerAdapter {
        C69669() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            StoryViewer storyViewer = StoryViewer.this;
            storyViewer.progressToOpen = 1.0f;
            storyViewer.checkNavBarColor();
            StoryViewer.animationInProgress = false;
            HwFrameLayout hwFrameLayout = StoryViewer.this.containerView;
            if (hwFrameLayout != null) {
                hwFrameLayout.disableHwAcceleration();
            }
            SizeNotifierFrameLayout sizeNotifierFrameLayout = StoryViewer.this.windowView;
            if (sizeNotifierFrameLayout != null) {
                sizeNotifierFrameLayout.invalidate();
            }
            StoryViewer storyViewer2 = StoryViewer.this;
            ImageReceiver imageReceiver = storyViewer2.transitionViewHolder.avatarImage;
            if (imageReceiver != null && !storyViewer2.foundViewToClose) {
                imageReceiver.setVisible(true, true);
                StoryViewer.this.transitionViewHolder.avatarImage = null;
            }
            StoryViewer storyViewer3 = StoryViewer.this;
            ImageReceiver imageReceiver2 = storyViewer3.transitionViewHolder.storyImage;
            if (imageReceiver2 != null && !storyViewer3.foundViewToClose) {
                imageReceiver2.setAlpha(1.0f);
                StoryViewer.this.transitionViewHolder.storyImage.setVisible(true, true);
                StoryViewer.this.transitionViewHolder.storyImage = null;
            }
            PeerStoriesView currentPeerView = StoryViewer.this.getCurrentPeerView();
            if (currentPeerView != null) {
                currentPeerView.updatePosition();
            }
            StoryViewer storyViewer4 = StoryViewer.this;
            LivePlayer livePlayer = storyViewer4.livePlayer;
            if (livePlayer != null) {
                livePlayer.setVolume((1.0f - storyViewer4.progressToDismiss) * storyViewer4.progressToOpen);
            }
            if (StoryViewer.this.showViewsAfterOpening) {
                StoryViewer.this.showViewsAfterOpening = false;
                StoryViewer.this.openViews();
            } else if (!SharedConfig.storiesIntroShown) {
                if (StoryViewer.this.storiesIntro == null) {
                    StoryViewer storyViewer5 = StoryViewer.this;
                    if (storyViewer5.containerView != null) {
                        storyViewer5.storiesIntro = new StoriesIntro(StoryViewer.this.containerView.getContext(), StoryViewer.this.windowView);
                        StoryViewer.this.storiesIntro.setAlpha(0.0f);
                        StoryViewer storyViewer6 = StoryViewer.this;
                        storyViewer6.containerView.addView(storyViewer6.storiesIntro);
                    }
                }
                if (StoryViewer.this.storiesIntro != null) {
                    StoryViewer.this.storiesIntro.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.StoryViewer$9$$ExternalSyntheticLambda0
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f$0.lambda$onAnimationEnd$0(view);
                        }
                    });
                    StoryViewer.this.storiesIntro.animate().alpha(1.0f).setDuration(150L).setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.StoryViewer.9.2
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator2) {
                            super.onAnimationEnd(animator2);
                            if (StoryViewer.this.storiesIntro != null) {
                                StoryViewer.this.storiesIntro.startAnimation(true);
                            }
                        }
                    }).start();
                }
                SharedConfig.setStoriesIntroShown(true);
            }
            StoryViewer.this.updatePlayingMode();
            StoryViewer.this.locker.unlock();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onAnimationEnd$0(View view) {
            StoryViewer.this.storiesIntro.animate().alpha(0.0f).setDuration(150L).setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.StoryViewer.9.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    if (StoryViewer.this.storiesIntro != null) {
                        StoryViewer.this.storiesIntro.stopAnimation();
                        StoryViewer storyViewer = StoryViewer.this;
                        storyViewer.containerView.removeView(storyViewer.storiesIntro);
                    }
                    StoryViewer.this.storiesIntro = null;
                    StoryViewer.this.updatePlayingMode();
                }
            }).start();
        }
    }

    public void instantClose() {
        if (this.isShowing) {
            AndroidUtilities.hideKeyboard(this.windowView);
            this.isClosed = true;
            this.fullyVisible = false;
            this.progressToOpen = 0.0f;
            this.progressToDismiss = 0.0f;
            updatePlayingMode();
            this.fromY = 0.0f;
            this.fromX = 0.0f;
            ImageReceiver imageReceiver = this.transitionViewHolder.avatarImage;
            if (imageReceiver != null) {
                imageReceiver.setVisible(true, true);
            }
            ImageReceiver imageReceiver2 = this.transitionViewHolder.storyImage;
            if (imageReceiver2 != null) {
                imageReceiver2.setVisible(true, true);
            }
            TransitionViewHolder transitionViewHolder = this.transitionViewHolder;
            transitionViewHolder.storyImage = null;
            transitionViewHolder.avatarImage = null;
            HwFrameLayout hwFrameLayout = this.containerView;
            if (hwFrameLayout != null) {
                hwFrameLayout.disableHwAcceleration();
            }
            this.locker.unlock();
            PeerStoriesView.VideoPlayerSharedScope videoPlayerSharedScope = this.currentPlayerScope;
            if (videoPlayerSharedScope != null) {
                videoPlayerSharedScope.invalidate();
            }
            release();
            if (this.ATTACH_TO_FRAGMENT) {
                AndroidUtilities.removeFromParent(this.windowView);
            } else {
                this.windowManager.removeView(this.windowView);
            }
            this.windowView = null;
            this.isShowing = false;
            this.foundViewToClose = false;
            checkNavBarColor();
            Runnable runnable = this.onCloseListener;
            if (runnable != null) {
                runnable.run();
                this.onCloseListener = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cleanupBeforeExit() {
        PeerStoriesView currentPeerView;
        RadialProgress radialProgress;
        HwFrameLayout hwFrameLayout = this.containerView;
        if (hwFrameLayout != null) {
            hwFrameLayout.disableHwAcceleration();
        }
        checkNavBarColor();
        this.locker.unlock();
        StoriesIntro storiesIntro = this.storiesIntro;
        if (storiesIntro != null) {
            storiesIntro.stopAnimation();
            AndroidUtilities.removeFromParent(this.storiesIntro);
            this.storiesIntro = null;
        }
        ImageReceiver imageReceiver = this.transitionViewHolder.avatarImage;
        if (imageReceiver != null) {
            imageReceiver.setVisible(true, true);
            this.transitionViewHolder.avatarImage = null;
        }
        ImageReceiver imageReceiver2 = this.transitionViewHolder.storyImage;
        if (imageReceiver2 != null) {
            imageReceiver2.setAlpha(1.0f);
            this.transitionViewHolder.storyImage.setVisible(true, true);
        }
        if (this.transitionViewHolder.radialProgressUpload != null && (currentPeerView = getCurrentPeerView()) != null && (radialProgress = currentPeerView.headerView.radialProgress) != null) {
            this.transitionViewHolder.radialProgressUpload.copyParams(radialProgress);
        }
        PeerStoriesView.VideoPlayerSharedScope videoPlayerSharedScope = this.currentPlayerScope;
        if (videoPlayerSharedScope != null) {
            videoPlayerSharedScope.invalidate();
        }
        release();
        try {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoryViewer$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$cleanupBeforeExit$9();
                }
            });
        } catch (Exception unused) {
        }
        this.isShowing = false;
        this.foundViewToClose = false;
        Runnable runnable = this.onCloseListener;
        if (runnable != null) {
            runnable.run();
            this.onCloseListener = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cleanupBeforeExit$9() {
        try {
            SizeNotifierFrameLayout sizeNotifierFrameLayout = this.windowView;
            if (sizeNotifierFrameLayout == null) {
                return;
            }
            if (this.ATTACH_TO_FRAGMENT) {
                AndroidUtilities.removeFromParent(sizeNotifierFrameLayout);
            } else {
                this.windowManager.removeView(sizeNotifierFrameLayout);
            }
            this.windowView = null;
        } catch (Exception unused) {
        }
    }

    private void startCloseAnimation(boolean z) {
        setNavigationButtonsColor(false);
        updateTransitionParams();
        this.locker.lock();
        this.fromDismissOffset = this.swipeToDismissOffset;
        this.opening = false;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.progressToOpen, 0.0f);
        this.openCloseAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.StoryViewer$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$startCloseAnimation$10(valueAnimator);
            }
        });
        if (!z) {
            this.fromY = 0.0f;
            this.fromX = 0.0f;
            ImageReceiver imageReceiver = this.transitionViewHolder.avatarImage;
            if (imageReceiver != null) {
                imageReceiver.setVisible(true, true);
            }
            ImageReceiver imageReceiver2 = this.transitionViewHolder.storyImage;
            if (imageReceiver2 != null) {
                imageReceiver2.setVisible(true, true);
            }
            TransitionViewHolder transitionViewHolder = this.transitionViewHolder;
            transitionViewHolder.storyImage = null;
            transitionViewHolder.avatarImage = null;
        } else {
            layoutAndFindView();
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoryViewer$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$startCloseAnimation$11();
            }
        }, 16L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startCloseAnimation$10(ValueAnimator valueAnimator) {
        this.progressToOpen = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        checkNavBarColor();
        SizeNotifierFrameLayout sizeNotifierFrameLayout = this.windowView;
        if (sizeNotifierFrameLayout != null) {
            sizeNotifierFrameLayout.invalidate();
        }
        LivePlayer livePlayer = this.livePlayer;
        if (livePlayer != null) {
            livePlayer.setVolume((1.0f - this.progressToDismiss) * this.progressToOpen);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startCloseAnimation$11() {
        if (this.openCloseAnimator == null) {
            return;
        }
        HwFrameLayout hwFrameLayout = this.containerView;
        if (hwFrameLayout != null) {
            hwFrameLayout.enableHwAcceleration();
        }
        this.openCloseAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.StoryViewer.10
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                StoryViewer.this.cleanupBeforeExit();
            }
        });
        this.openCloseAnimator.setDuration(400L);
        this.openCloseAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        this.openCloseAnimator.start();
    }

    public void release() {
        this.lastUri = null;
        setInTouchMode(false);
        allowScreenshots(true);
        VideoPlayerHolder videoPlayerHolder = this.playerHolder;
        if (videoPlayerHolder != null) {
            videoPlayerHolder.release(null);
            this.playerHolder = null;
        }
        LivePlayerView livePlayerView = this.liveView;
        if (livePlayerView != null) {
            livePlayerView.setScope(0L, null);
        }
        LivePlayer livePlayer = this.livePlayer;
        if (livePlayer != null && !LiveStoryPipOverlay.isVisible(livePlayer)) {
            LivePlayer livePlayer2 = this.livePlayer;
            if (livePlayer2.outgoing) {
                livePlayer2.setDisplaySink(null);
            } else {
                livePlayer2.destroy();
            }
        }
        this.livePlayer = null;
        for (int i = 0; i < this.preparedPlayers.size(); i++) {
            ((VideoPlayerHolder) this.preparedPlayers.get(i)).release(null);
        }
        this.preparedPlayers.clear();
        MessagesController.getInstance(this.currentAccount).getStoriesController().stopAllPollers();
        if (this.ATTACH_TO_FRAGMENT) {
            lockOrientation(false);
        }
        BaseFragment baseFragment = this.fragment;
        if (baseFragment != null) {
            baseFragment.removeSheet(this);
        }
        globalInstances.remove(this);
        this.doOnAnimationReadyRunnables.clear();
        this.selfStoriesViewsOffset = 0.0f;
        lastStoryItem = null;
    }

    public void close(boolean z) {
        AndroidUtilities.hideKeyboard(this.windowView);
        this.isClosed = true;
        this.invalidateOutRect = true;
        updatePlayingMode();
        startCloseAnimation(z);
        if (this.unreadStateChanged) {
            this.unreadStateChanged = false;
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    /* JADX INFO: renamed from: getWindowView */
    public View mo6088getWindowView() {
        return this.windowView;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment.AttachedSheet, android.content.DialogInterface
    public void dismiss() {
        close(true);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    public int getNavigationBarColor(int i) {
        return ColorUtils.blendARGB(i, -16777216, getBlackoutAlpha());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getBlackoutAlpha() {
        return this.progressToOpen * (((1.0f - this.progressToDismiss) * 0.5f) + 0.5f);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    public boolean onAttachedBackPressed() {
        if (this.selfStoriesViewsOffset != 0.0f) {
            if (this.selfStoryViewsView.onBackPressed()) {
                return true;
            }
            cancelSwipeToViews(false);
            return true;
        }
        if (closeKeyboardOrEmoji()) {
            return true;
        }
        close(true);
        return true;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    public boolean isShown() {
        return !this.isClosed;
    }

    public void checkNavBarColor() {
        LaunchActivity launchActivity;
        if (!this.ATTACH_TO_FRAGMENT || (launchActivity = LaunchActivity.instance) == null) {
            return;
        }
        launchActivity.checkSystemBarColors(true, true, true);
    }

    private void setNavigationButtonsColor(boolean z) {
        LaunchActivity launchActivity = LaunchActivity.instance;
        if (!this.ATTACH_TO_FRAGMENT || launchActivity == null) {
            return;
        }
        if (z) {
            this.openedFromLightNavigationBar = launchActivity.isLightNavigationBar();
        }
        if (this.openedFromLightNavigationBar) {
            AndroidUtilities.setLightNavigationBar(launchActivity, !z);
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    public boolean attachedToParent() {
        return this.ATTACH_TO_FRAGMENT && this.windowView != null;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    public void setKeyboardHeightFromParent(int i) {
        if (this.realKeyboardHeight != i) {
            this.realKeyboardHeight = i;
            this.storiesViewPager.setKeyboardHeight(i);
            this.storiesViewPager.requestLayout();
            SelfStoryViewsView selfStoryViewsView = this.selfStoryViewsView;
            if (selfStoryViewsView != null) {
                selfStoryViewsView.setKeyboardHeight(i);
            }
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    public boolean isFullyVisible() {
        return this.fullyVisible;
    }

    public void presentFragment(BaseFragment baseFragment) {
        BaseFragment lastFragment = LaunchActivity.getLastFragment();
        if (lastFragment == null) {
            return;
        }
        if (this.ATTACH_TO_FRAGMENT) {
            lastFragment.presentFragment(baseFragment);
        } else {
            lastFragment.presentFragment(baseFragment);
            close(false);
        }
        cleanupBeforeExit();
    }

    public Theme.ResourcesProvider getResourceProvider() {
        return this.resourcesProvider;
    }

    public FrameLayout getContainerForBulletin() {
        PeerStoriesView currentPeerView = this.storiesViewPager.getCurrentPeerView();
        if (currentPeerView != null) {
            return currentPeerView.storyContainer;
        }
        return null;
    }

    public void startActivityForResult(Intent intent, int i) {
        if (this.fragment.getParentActivity() == null) {
            return;
        }
        this.fragment.getParentActivity().startActivityForResult(intent, i);
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        PeerStoriesView currentPeerView = this.storiesViewPager.getCurrentPeerView();
        if (currentPeerView != null) {
            currentPeerView.onActivityResult(i, i2, intent);
        }
    }

    public void dispatchKeyEvent(KeyEvent keyEvent) {
        if (keyEvent.getKeyCode() == 24 || keyEvent.getKeyCode() == 25) {
            dispatchVolumeEvent(keyEvent);
        }
    }

    public void dismissVisibleDialogs() {
        Dialog dialog = this.currentDialog;
        if (dialog != null) {
            dialog.dismiss();
        }
        BaseFragment.AttachedSheet attachedSheet = this.currentSheet;
        if (attachedSheet != null) {
            attachedSheet.dismiss();
        }
        PeerStoriesView currentPeerView = getCurrentPeerView();
        if (currentPeerView != null) {
            ReactionsContainerLayout reactionsContainerLayout = currentPeerView.reactionsContainerLayout;
            if (reactionsContainerLayout != null && reactionsContainerLayout.getReactionsWindow() != null) {
                currentPeerView.reactionsContainerLayout.getReactionsWindow().dismiss();
            }
            ShareAlert shareAlert = currentPeerView.shareAlert;
            if (shareAlert != null) {
                shareAlert.dismiss();
            }
            currentPeerView.needEnterText();
        }
    }

    public float getProgressToSelfViews() {
        SelfStoryViewsView selfStoryViewsView = this.selfStoryViewsView;
        if (selfStoryViewsView == null) {
            return 0.0f;
        }
        return selfStoryViewsView.progressToOpen;
    }

    public void setSelfStoriesViewsOffset(float f) {
        this.selfStoriesViewsOffset = f;
        PeerStoriesView currentPeerView = this.storiesViewPager.getCurrentPeerView();
        if (currentPeerView != null) {
            currentPeerView.invalidate();
        }
        HwFrameLayout hwFrameLayout = this.containerView;
        if (hwFrameLayout != null) {
            hwFrameLayout.invalidate();
        }
    }

    public void openViews() {
        checkSelfStoriesView();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoryViewer$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$openViews$12();
            }
        }, 30L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openViews$12() {
        this.allowSelfStoriesView = true;
        cancelSwipeToViews(true);
    }

    public boolean soundEnabled() {
        return !isInSilentMode;
    }

    public void allowScreenshots(boolean z) {
        if (BuildVars.DEBUG_PRIVATE_VERSION) {
            return;
        }
        boolean z2 = !this.isShowing || z;
        if (this.allowScreenshots != z2) {
            this.allowScreenshots = z2;
            SurfaceView surfaceView = this.surfaceView;
            if (surfaceView != null) {
                surfaceView.setSecure(!z2);
            }
            LivePlayerView livePlayerView = this.liveView;
            if (livePlayerView != null) {
                livePlayerView.setSecure(!z2);
            }
            if (this.ATTACH_TO_FRAGMENT) {
                if (this.fragment.getParentActivity() != null) {
                    if (z2) {
                        this.fragment.getParentActivity().getWindow().clearFlags(8192);
                        AndroidUtilities.logFlagSecure();
                        return;
                    } else {
                        this.fragment.getParentActivity().getWindow().addFlags(8192);
                        AndroidUtilities.logFlagSecure();
                        return;
                    }
                }
                return;
            }
            if (z2) {
                this.windowLayoutParams.flags &= -8193;
                AndroidUtilities.logFlagSecure();
            } else {
                this.windowLayoutParams.flags |= 8192;
                AndroidUtilities.logFlagSecure();
            }
            try {
                this.windowManager.updateViewLayout(this.windowView, this.windowLayoutParams);
            } catch (Exception e) {
                FileLog.m1136e(e);
            }
        }
    }

    public void openFor(BaseFragment baseFragment, RecyclerListView recyclerListView, ChatActionCell chatActionCell) {
        MessageObject messageObject = chatActionCell.getMessageObject();
        if (baseFragment == null || baseFragment.getContext() == null || messageObject.type != 24) {
            return;
        }
        TLRPC.MessageMedia messageMedia = messageObject.messageOwner.media;
        TL_stories.StoryItem storyItem = messageMedia.storyItem;
        storyItem.dialogId = DialogObject.getPeerDialogId(messageMedia.peer);
        storyItem.messageId = messageObject.getId();
        open(baseFragment.getContext(), messageObject.messageOwner.media.storyItem, StoriesListPlaceProvider.m1320of(recyclerListView));
    }

    public void doOnAnimationReady(Runnable runnable) {
        if (runnable != null) {
            this.doOnAnimationReadyRunnables.add(runnable);
        }
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        int i3 = 0;
        if (i == NotificationCenter.storiesListUpdated) {
            if (this.storiesList == ((StoriesController.StoriesList) objArr[0])) {
                getCurrentPeerView();
                StoriesViewPager storiesViewPager = this.storiesViewPager;
                StoriesController.StoriesList storiesList = this.storiesList;
                storiesViewPager.setDays(storiesList.dialogId, storiesList.getDays(), this.currentAccount);
                SelfStoryViewsView selfStoryViewsView = this.selfStoryViewsView;
                if (selfStoryViewsView != null) {
                    TL_stories.StoryItem selectedStory = selfStoryViewsView.getSelectedStory();
                    ArrayList arrayList = new ArrayList();
                    int i4 = 0;
                    while (i3 < this.storiesList.messageObjects.size()) {
                        if (selectedStory != null && selectedStory.f1857id == ((MessageObject) this.storiesList.messageObjects.get(i3)).storyItem.f1857id) {
                            i4 = i3;
                        }
                        arrayList.add(((MessageObject) this.storiesList.messageObjects.get(i3)).storyItem);
                        i3++;
                    }
                    this.selfStoryViewsView.setItems(this.storiesList.dialogId, arrayList, i4);
                    return;
                }
                return;
            }
            return;
        }
        if (i == NotificationCenter.storiesUpdated) {
            PlaceProvider placeProvider = this.placeProvider;
            if (placeProvider instanceof StoriesListPlaceProvider) {
                StoriesListPlaceProvider storiesListPlaceProvider = (StoriesListPlaceProvider) placeProvider;
                if (!storiesListPlaceProvider.hasPaginationParams || storiesListPlaceProvider.onlySelfStories) {
                    return;
                }
                StoriesController storiesController = MessagesController.getInstance(this.currentAccount).getStoriesController();
                ArrayList hiddenList = storiesListPlaceProvider.hiddedStories ? storiesController.getHiddenList() : storiesController.getDialogListStories();
                ArrayList<Long> dialogIds = this.storiesViewPager.getDialogIds();
                boolean z = false;
                while (i3 < hiddenList.size()) {
                    long peerDialogId = DialogObject.getPeerDialogId(((TL_stories.PeerStories) hiddenList.get(i3)).peer);
                    if ((!storiesListPlaceProvider.onlyUnreadStories || storiesController.hasUnreadStories(peerDialogId)) && !dialogIds.contains(Long.valueOf(peerDialogId))) {
                        dialogIds.add(Long.valueOf(peerDialogId));
                        z = true;
                    }
                    i3++;
                }
                if (z) {
                    this.storiesViewPager.getAdapter().notifyDataSetChanged();
                }
            }
            SelfStoryViewsView selfStoryViewsView2 = this.selfStoryViewsView;
            if (selfStoryViewsView2 != null) {
                selfStoryViewsView2.selfStoriesPreviewView.update();
                return;
            }
            return;
        }
        int i5 = NotificationCenter.openArticle;
        if (i == i5 || i == NotificationCenter.articleClosed) {
            updatePlayingMode();
            if (i == i5) {
                VideoPlayerHolder videoPlayerHolder = this.playerHolder;
                if (videoPlayerHolder != null) {
                    this.playerSavedPosition = videoPlayerHolder.currentPosition;
                    this.playerHolder.release(null);
                    this.playerHolder = null;
                    return;
                }
                this.playerSavedPosition = 0L;
                return;
            }
            if (this.paused || getCurrentPeerView() == null) {
                return;
            }
            getCurrentPeerView().updatePosition();
            return;
        }
        if (i == NotificationCenter.storyDeleted) {
            long jLongValue = ((Long) objArr[0]).longValue();
            int iIntValue = ((Integer) objArr[1]).intValue();
            TL_stories.StoryItem storyItem = this.singleStory;
            if (storyItem != null && storyItem.dialogId == jLongValue && storyItem.f1857id == iIntValue) {
                this.singleStoryDeleted = true;
            }
        }
    }

    public void saveDraft(long j, TL_stories.StoryItem storyItem, CharSequence charSequence) {
        if (j == 0 || storyItem == null) {
            return;
        }
        replyDrafts.put(draftHash(j, storyItem), charSequence);
    }

    public CharSequence getDraft(long j, TL_stories.StoryItem storyItem) {
        return (j == 0 || storyItem == null) ? _UrlKt.FRAGMENT_ENCODE_SET : (CharSequence) replyDrafts.get(draftHash(j, storyItem), _UrlKt.FRAGMENT_ENCODE_SET);
    }

    public void clearDraft(long j, TL_stories.StoryItem storyItem) {
        if (j == 0 || storyItem == null) {
            return;
        }
        replyDrafts.remove(draftHash(j, storyItem));
    }

    private long draftHash(long j, TL_stories.StoryItem storyItem) {
        return j + (j >> 16) + (((long) storyItem.f1857id) << 16);
    }

    public void onResume() {
        this.paused = false;
        if (!ArticleViewer.getInstance().isVisible() && getCurrentPeerView() != null) {
            getCurrentPeerView().updatePosition();
        }
        StoriesIntro storiesIntro = this.storiesIntro;
        if (storiesIntro != null) {
            storiesIntro.startAnimation(false);
        }
        if (LiveStoryPipOverlay.isVisible()) {
            LiveStoryPipOverlay.dismiss();
        }
    }

    public void onPause() {
        this.paused = true;
        VideoPlayerHolder videoPlayerHolder = this.playerHolder;
        if (videoPlayerHolder != null) {
            videoPlayerHolder.release(null);
            this.playerHolder = null;
        }
        if (this.pipLiveView == null) {
            LivePlayerView livePlayerView = this.liveView;
            if (livePlayerView != null) {
                livePlayerView.setScope(0L, null);
            }
            LivePlayer livePlayer = this.livePlayer;
            if (livePlayer != null) {
                if (livePlayer.outgoing) {
                    livePlayer.setDisplaySink(null);
                } else {
                    livePlayer.destroy();
                }
                this.livePlayer = null;
            }
        }
        StoriesIntro storiesIntro = this.storiesIntro;
        if (storiesIntro != null) {
            storiesIntro.stopAnimation();
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    public interface PlaceProvider {
        boolean findView(long j, int i, int i2, int i3, TransitionViewHolder transitionViewHolder);

        void loadNext(boolean z);

        void preLayout(long j, int i, Runnable runnable);

        /* JADX INFO: renamed from: org.telegram.ui.Stories.StoryViewer$PlaceProvider$-CC, reason: invalid class name */
        public abstract /* synthetic */ class CC {
            public static void $default$loadNext(PlaceProvider placeProvider, boolean z) {
            }
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    public static class TransitionViewHolder {
        public float alpha = 1.0f;
        public ImageReceiver avatarImage;
        public Paint bgPaint;
        public boolean checkParentScale;
        public float clipBottom;
        public View clipParent;
        public float clipTop;
        public ImageReceiver crossfadeToAvatarImage;
        public HolderDrawAbove drawAbove;
        public HolderClip drawClip;
        public boolean isLive;
        public StoriesUtilities.AvatarStoryParams params;
        public RadialProgress radialProgressUpload;
        public int storyId;
        public ImageReceiver storyImage;
        public View view;

        public Integer getAvatarImageRoundRadius() {
            View view;
            if (this.avatarImage != null) {
                return Integer.valueOf((int) (this.avatarImage.getRoundRadius()[0] * ((!this.checkParentScale || (view = this.view) == null || view.getParent() == null) ? 1.0f : ((ViewGroup) this.view.getParent()).getScaleY())));
            }
            return null;
        }

        public void clear() {
            this.view = null;
            this.params = null;
            this.avatarImage = null;
            this.storyImage = null;
            this.drawAbove = null;
            this.drawClip = null;
            this.clipParent = null;
            this.radialProgressUpload = null;
            this.isLive = false;
            this.crossfadeToAvatarImage = null;
            this.clipTop = 0.0f;
            this.clipBottom = 0.0f;
            this.storyId = 0;
            this.bgPaint = null;
            this.alpha = 1.0f;
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    public class VideoPlayerHolder extends VideoPlayerHolderBase {
        boolean logBuffering;

        public VideoPlayerHolder(SurfaceView surfaceView, TextureView textureView) {
            if (StoryViewer.this.USE_SURFACE_VIEW) {
                with(surfaceView);
            } else {
                with(textureView);
            }
        }

        @Override // org.telegram.messenger.video.VideoPlayerHolderBase
        public boolean needRepeat() {
            return StoryViewer.this.isCaptionPartVisible;
        }

        @Override // org.telegram.messenger.video.VideoPlayerHolderBase
        public void onRenderedFirstFrame() {
            PeerStoriesView.VideoPlayerSharedScope videoPlayerSharedScope = StoryViewer.this.currentPlayerScope;
            if (videoPlayerSharedScope == null) {
                return;
            }
            videoPlayerSharedScope.firstFrameRendered = true;
            this.firstFrameRendered = true;
            videoPlayerSharedScope.invalidate();
            if (!this.paused || StoryViewer.this.surfaceView == null) {
                return;
            }
            prepareStub();
        }

        @Override // org.telegram.messenger.video.VideoPlayerHolderBase
        public void onStateChanged(boolean z, int i) {
            if (i == 3 || i == 2) {
                if (this.firstFrameRendered && i == 2) {
                    this.logBuffering = true;
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoryViewer$VideoPlayerHolder$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$onStateChanged$0();
                        }
                    });
                }
                if (this.logBuffering && i == 3) {
                    this.logBuffering = false;
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.StoryViewer$VideoPlayerHolder$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$onStateChanged$1();
                        }
                    });
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onStateChanged$0() {
            PeerStoriesView currentPeerView = StoryViewer.this.getCurrentPeerView();
            if (currentPeerView == null || currentPeerView.currentStory.storyItem == null) {
                return;
            }
            FileLog.m1133d("StoryViewer displayed story buffering dialogId=" + currentPeerView.getCurrentPeer() + " storyId=" + currentPeerView.currentStory.storyItem.f1857id);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onStateChanged$1() {
            PeerStoriesView currentPeerView = StoryViewer.this.getCurrentPeerView();
            if (currentPeerView == null || currentPeerView.currentStory.storyItem == null) {
                return;
            }
            FileLog.m1133d("StoryViewer displayed story playing dialogId=" + currentPeerView.getCurrentPeer() + " storyId=" + currentPeerView.currentStory.storyItem.f1857id);
        }
    }

    public void switchToPip() {
        BaseFragment baseFragment;
        if (this.livePlayer == null || (baseFragment = this.fragment) == null || this.liveView == null) {
            return;
        }
        Activity activityFindActivity = AndroidUtilities.findActivity(baseFragment.getContext());
        if (PipUtils.checkAnyPipPermissions(activityFindActivity)) {
            LiveStoryPipOverlay.show(activityFindActivity, this.livePlayer);
            dismiss();
        }
    }

    @Override // org.telegram.messenger.pip.source.IPipSourceDelegate
    public boolean pipIsAvailable() {
        BaseFragment baseFragment = this.fragment;
        return (baseFragment == null || baseFragment == null || getCurrentPeerView() == null || AndroidUtilities.findActivity(this.fragment.getContext()) == null || this.livePlayer == null || this.liveView == null || this.isClosed) ? false : true;
    }

    @Override // org.telegram.messenger.pip.source.IPipSourceDelegate
    public Bitmap pipCreatePrimaryWindowViewBitmap() {
        LivePlayerView livePlayerView = this.liveView;
        if (livePlayerView == null || !livePlayerView.isAvailable()) {
            return null;
        }
        return this.liveView.getBitmap();
    }

    @Override // org.telegram.messenger.pip.source.IPipSourceDelegate
    public Bitmap pipCreatePictureInPictureViewBitmap() {
        LivePlayerView livePlayerView = this.pipLiveView;
        if (livePlayerView == null || !livePlayerView.isAvailable()) {
            return null;
        }
        return this.pipLiveView.getBitmap();
    }

    @Override // org.telegram.messenger.pip.source.IPipSourceDelegate
    public View pipCreatePictureInPictureView() {
        LivePlayerView livePlayerView = new LivePlayerView(this.liveView.getContext(), this.currentAccount, false);
        this.pipLiveView = livePlayerView;
        return livePlayerView;
    }

    @Override // org.telegram.messenger.pip.source.IPipSourceDelegate
    public void pipHidePrimaryWindowView(Runnable runnable) {
        LivePlayerView livePlayerView = this.pipLiveView;
        if (livePlayerView != null) {
            livePlayerView.setOnFirstFrameCallback(runnable);
            this.livePlayer.setDisplaySink(this.pipLiveView.getSink());
        }
        if (this.ATTACH_TO_FRAGMENT) {
            AndroidUtilities.removeFromParent(this.windowView);
        } else {
            this.windowManager.removeView(this.windowView);
        }
        this.windowView.invalidate();
    }

    @Override // org.telegram.messenger.pip.source.IPipSourceDelegate
    public void pipShowPrimaryWindowView(Runnable runnable) {
        LivePlayerView livePlayerView = this.pipLiveView;
        if (livePlayerView != null) {
            livePlayerView.setOnFirstFrameCallback(runnable);
        }
        if (this.ATTACH_TO_FRAGMENT) {
            AndroidUtilities.removeFromParent(this.windowView);
            this.fragment.getLayoutContainer().addView(this.windowView);
        } else {
            this.windowManager.addView(this.windowView, this.windowLayoutParams);
        }
        LivePlayerView livePlayerView2 = this.pipLiveView;
        if (livePlayerView2 != null) {
            livePlayerView2.release();
            this.pipLiveView = null;
        }
        this.windowView.invalidate();
        this.livePlayer.setDisplaySink(this.liveView.getSink());
    }
}
