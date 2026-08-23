package org.telegram.p029ui.Stories.recorder;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.RenderNode;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Parcelable;
import android.text.Layout;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.CharacterStyle;
import android.text.style.ClickableSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.ImageSpan;
import android.text.style.URLSpan;
import android.util.Pair;
import android.util.Property;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.ViewPropertyAnimator;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.core.graphics.ColorUtils;
import androidx.core.graphics.Insets;
import androidx.core.view.WindowInsetsCompat;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import com.exteragram.messenger.utils.system.SystemUtils;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import okhttp3.internal.p025ws.RealWebSocket;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.AnimationNotificationsLocker;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BotFullscreenButtons$$ExternalSyntheticApiModelOutline0;
import org.telegram.messenger.BotWebViewVibrationEffect;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.DialogObject;
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
import org.telegram.messenger.camera.CameraController;
import org.telegram.messenger.camera.CameraView;
import org.telegram.p029ui.AccountFrozenAlert;
import org.telegram.p029ui.ActionBar.ActionBar;
import org.telegram.p029ui.ActionBar.AlertDialog;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.SimpleTextView;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.AvatarSpan;
import org.telegram.p029ui.Cells.ChatMessageCell;
import org.telegram.p029ui.Cells.ShareDialogCell;
import org.telegram.p029ui.Components.AnimatedTextView;
import org.telegram.p029ui.Components.BackupImageView;
import org.telegram.p029ui.Components.BlurringShader;
import org.telegram.p029ui.Components.Bulletin;
import org.telegram.p029ui.Components.BulletinFactory;
import org.telegram.p029ui.Components.CombinedDrawable;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.EditTextEmoji;
import org.telegram.p029ui.Components.EmojiView;
import org.telegram.p029ui.Components.FilterGLThread;
import org.telegram.p029ui.Components.FilterShaders;
import org.telegram.p029ui.Components.GestureDetectorFixDoubleTap;
import org.telegram.p029ui.Components.ItemOptions;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.Paint.RenderView;
import org.telegram.p029ui.Components.Paint.Views.EntitiesContainerView;
import org.telegram.p029ui.Components.Paint.Views.EntityView;
import org.telegram.p029ui.Components.Paint.Views.MessageEntityView;
import org.telegram.p029ui.Components.Paint.Views.PhotoView;
import org.telegram.p029ui.Components.Paint.Views.RoundView;
import org.telegram.p029ui.Components.PermissionRequest;
import org.telegram.p029ui.Components.PhotoFilterBlurControl;
import org.telegram.p029ui.Components.PhotoFilterCurvesControl;
import org.telegram.p029ui.Components.PhotoFilterView;
import org.telegram.p029ui.Components.Premium.LimitReachedBottomSheet;
import org.telegram.p029ui.Components.Premium.PremiumFeatureBottomSheet;
import org.telegram.p029ui.Components.RLottieDrawable;
import org.telegram.p029ui.Components.RLottieImageView;
import org.telegram.p029ui.Components.SizeNotifierFrameLayout;
import org.telegram.p029ui.Components.TextStyleSpan;
import org.telegram.p029ui.Components.ThanosEffect;
import org.telegram.p029ui.Components.URLSpanUserMention;
import org.telegram.p029ui.Components.VideoEditTextureView;
import org.telegram.p029ui.Components.ZoomControlView;
import org.telegram.p029ui.LaunchActivity;
import org.telegram.p029ui.ProfileActivity;
import org.telegram.p029ui.Stories.DarkThemeResourceProvider;
import org.telegram.p029ui.Stories.DialogStoriesCell;
import org.telegram.p029ui.Stories.LivePlayer;
import org.telegram.p029ui.Stories.PeerStoriesView;
import org.telegram.p029ui.Stories.StoriesController;
import org.telegram.p029ui.Stories.StoryViewer;
import org.telegram.p029ui.Stories.StoryWaveEffectView;
import org.telegram.p029ui.Stories.recorder.CollageLayoutButton;
import org.telegram.p029ui.Stories.recorder.DownloadButton;
import org.telegram.p029ui.Stories.recorder.FlashViews;
import org.telegram.p029ui.Stories.recorder.PreviewButtons;
import org.telegram.p029ui.Stories.recorder.PreviewView;
import org.telegram.p029ui.Stories.recorder.QRScanner;
import org.telegram.p029ui.Stories.recorder.RecordControl;
import org.telegram.p029ui.Stories.recorder.StoryEntry;
import org.telegram.p029ui.Stories.recorder.StoryPrivacyBottomSheet;
import org.telegram.p029ui.Stories.recorder.StoryRecorder;
import org.telegram.p029ui.Stories.recorder.TimelineView;
import org.telegram.p029ui.WrappedResourceProvider;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.p028tl.TL_stories;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public class StoryRecorder implements NotificationCenter.NotificationCenterDelegate {
    private static boolean firstOpen = true;
    private static StoryRecorder instance;
    private LinearLayout actionBarButtons;
    private FrameLayout actionBarContainer;
    private final Activity activity;
    private Runnable afterPlayerAwait;
    private boolean animatedRecording;
    private boolean animatedRecordingWasInCheck;
    private Runnable audioGrantedCallback;
    private FlashViews.ImageViewInvertable backButton;
    private BlurringShader.BlurManager blurManager;
    private TLRPC.InputMedia botEdit;
    private long botId;
    private String botLang;
    private HintView2 cameraHint;
    private DualCameraView cameraView;
    private float cameraZoom;
    private FrameLayout captionContainer;
    private CaptionStory captionEdit;
    private View captionEditOverlay;
    private View changeDayNightView;
    private ValueAnimator changeDayNightViewAnimator;
    private float changeDayNightViewProgress;
    private Runnable closeListener;
    private ClosingViewProvider closingSourceProvider;
    private CollageLayoutButton collageButton;
    private HintTextView collageHintTextView;
    private CollageLayoutView2 collageLayoutView;
    private CollageLayoutButton.CollageLayoutListView collageListView;
    private ToggleButton2 collageRemoveButton;
    private ContainerView containerView;
    private ValueAnimator containerViewBackAnimator;
    private FrameLayout controlContainer;
    private ButtonWithCounterView coverButton;
    private TimelineView coverTimelineView;
    private long coverValue;
    private CropEditor cropEditor;
    private CropInlineEditor cropInlineEditor;
    private final int currentAccount;
    private RoundVideoRecorder currentRoundRecorder;
    private float dismissProgress;
    private DownloadButton downloadButton;
    private DraftSavedHint draftSavedHint;
    private ToggleButton dualButton;
    private HintView2 dualHint;
    private AnimatorSet editModeAnimator;
    private boolean fastClose;
    private ToggleButton2 flashButton;
    private String flashButtonMode;
    private int flashButtonResId;
    private FlashViews flashViews;
    private boolean forceBackgroundVisible;
    private boolean fromGallery;
    private float fromRounding;
    private SourceView fromSourceView;
    private ArrayList frontfaceFlashModes;
    private Float frozenDismissProgress;
    private boolean galleryClosing;
    private Runnable galleryLayouted;
    private GalleryListView galleryListView;
    private Boolean galleryListViewOpening;
    private ValueAnimator galleryOpenCloseAnimator;
    private SpringAnimation galleryOpenCloseSpringAnimator;
    private HintTextView hintTextView;
    private int insetBottom;
    private int insetLeft;
    private int insetRight;
    private int insetTop;
    private boolean isBackgroundVisible;
    private boolean isDark;
    private boolean isReposting;
    private boolean isShown;
    private CollageLayout lastCollageLayout;
    private Parcelable lastGalleryScrollPosition;
    private MediaController.AlbumEntry lastGallerySelectedAlbum;
    private TLRPC.InputPeer livePeer;
    private SelectPeerView livePeerView;
    private FlashViews.ImageViewInvertable liveSettingsButton;
    private StoryModeTabs modeSwitcherView;
    private RLottieImageView muteButton;
    private RLottieDrawable muteButtonDrawable;
    private HintView2 muteHint;
    private FrameLayout navbarContainer;
    private boolean noCameraPermission;
    private Runnable onCloseListener;
    private Utilities.Callback4 onClosePrepareListener;
    private Runnable onFullyOpenListener;
    private ValueAnimator openCloseAnimator;
    private float openProgress;
    private int openType;
    private StoryEntry outputEntry;
    private File outputFile;
    private AnimatorSet pageAnimator;
    private PaintView paintView;
    private View paintViewEntitiesView;
    private View paintViewRenderInputView;
    private RenderView paintViewRenderView;
    private View paintViewSelectionContainerView;
    private View paintViewTextDim;
    private PhotoFilterView.EnhanceView photoFilterEnhanceView;
    private PhotoFilterView photoFilterView;
    private PhotoFilterBlurControl photoFilterViewBlurControl;
    private PhotoFilterCurvesControl photoFilterViewCurvesControl;
    private TextureView photoFilterViewTextureView;
    private PlayPauseButton playButton;
    private boolean prepareClosing;
    private boolean previewAlreadySet;
    private PreviewButtons previewButtons;
    private FrameLayout previewContainer;
    private int previewH;
    private PreviewHighlightView previewHighlight;
    private Touchable previewTouchable;
    private PreviewView previewView;
    private int previewW;
    private StoryPrivacyBottomSheet privacySheet;
    private ScannedLinkPreview qrLinkView;
    private QRScanner qrScanner;
    private RecordControl recordControl;
    private AnimatorSet recordingAnimator;
    private HintView2 removeCollageHint;
    private boolean requestedCameraPermission;
    private FlashViews.ImageViewInvertable rotateButton;
    private HintView2 savedDualHint;
    private boolean scrollingX;
    private boolean scrollingY;
    long selectedDialogId;
    private boolean showSavedDraftHint;
    private boolean shownLimitReached;
    private ButtonWithCounterView startLiveButton;
    private MultipleStoriesSelector storiesSelector;
    private boolean switchingStory;
    private ThanosEffect thanosEffect;
    private ImageView themeButton;
    private RLottieDrawable themeButtonDrawable;
    private TimelineView timelineView;
    private SimpleTextView titleTextView;
    private TrashView trash;
    private int underControls;
    private boolean underStatusBar;
    private boolean videoError;
    private PreviewView.TextureViewHolder videoTextureHolder;
    private VideoTimeView videoTimeView;
    private FrameLayout videoTimelineContainerView;
    private VideoTimerView videoTimerView;
    private boolean wasGalleryOpen;
    private boolean wasSend;
    private Runnable whenOpenDone;
    private final WindowManager.LayoutParams windowLayoutParams;
    private final WindowManager windowManager;
    private WindowView windowView;
    private AnimatorSet zoomControlAnimation;
    private Runnable zoomControlHideRunnable;
    private ZoomControlView zoomControlView;
    private final Theme.ResourcesProvider resourcesProvider = new DarkThemeResourceProvider();
    private long wasSendPeer = 0;
    private final RectF fromRect = new RectF();
    private boolean canChangePeer = true;
    private AnimationNotificationsLocker notificationsLocker = new AnimationNotificationsLocker();
    private final RectF rectF = new RectF();
    private final RectF fullRectF = new RectF();
    private final Path clipPath = new Path();
    private final Rect rect = new Rect();
    private int currentPage = 0;
    private int currentEditMode = -1;
    private StoryPrivacyBottomSheet.StoryPrivacy livePrivacy = new StoryPrivacyBottomSheet.StoryPrivacy();
    private ArrayList entries = null;
    private ArrayList selectedEntries = null;
    private ArrayList selectedEntriesOrder = null;
    private int mode = 0;
    private boolean takingPhoto = false;
    private boolean takingVideo = false;
    private boolean stoppingTakingVideo = false;
    private boolean awaitingPlayer = false;
    private int shiftDp = -3;
    private boolean preparingUpload = false;
    private final RecordControl.Delegate recordControlDelegate = new C715615();
    private boolean videoTimerShown = true;
    private boolean applyContainerViewTranslation2 = true;
    private int frontfaceFlashMode = -1;

    /* JADX INFO: loaded from: classes7.dex */
    public interface ClosingViewProvider {
        SourceView getView(long j);

        void preLayout(long j, Runnable runnable);
    }

    /* JADX INFO: loaded from: classes7.dex */
    public interface Touchable {
        boolean onTouch(MotionEvent motionEvent);
    }

    /* JADX INFO: renamed from: -$$Nest$fgetthemeSheet, reason: not valid java name */
    static /* bridge */ /* synthetic */ StoryThemeSheet m19720$$Nest$fgetthemeSheet(StoryRecorder storyRecorder) {
        storyRecorder.getClass();
        return null;
    }

    /* JADX INFO: renamed from: -$$Nest$fgetwaveEffect, reason: not valid java name */
    static /* bridge */ /* synthetic */ StoryWaveEffectView m19729$$Nest$fgetwaveEffect(StoryRecorder storyRecorder) {
        storyRecorder.getClass();
        return null;
    }

    public static StoryRecorder getInstance(Activity activity, int i) {
        StoryRecorder storyRecorder = instance;
        if (storyRecorder != null && (storyRecorder.activity != activity || storyRecorder.currentAccount != i)) {
            storyRecorder.close(false);
            instance = null;
        }
        if (instance == null) {
            instance = new StoryRecorder(activity, i);
        }
        return instance;
    }

    public static void destroyInstance() {
        StoryRecorder storyRecorder = instance;
        if (storyRecorder != null) {
            storyRecorder.close(false);
        }
        instance = null;
    }

    public static boolean isVisible() {
        StoryRecorder storyRecorder = instance;
        return storyRecorder != null && storyRecorder.isShown;
    }

    public StoryRecorder(Activity activity, int i) {
        this.activity = activity;
        this.currentAccount = i;
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        this.windowLayoutParams = layoutParams;
        layoutParams.height = -1;
        layoutParams.width = -1;
        layoutParams.format = -3;
        layoutParams.gravity = 51;
        layoutParams.type = 99;
        if (Build.VERSION.SDK_INT >= 28) {
            layoutParams.layoutInDisplayCutoutMode = 1;
        }
        layoutParams.flags = 134283520 | Integer.MIN_VALUE;
        layoutParams.softInputMode = 16;
        this.windowManager = (WindowManager) activity.getSystemService("window");
        initViews();
    }

    /* JADX INFO: loaded from: classes7.dex */
    public static class SourceView {
        Drawable backgroundDrawable;
        ImageReceiver backgroundImageReceiver;
        Paint backgroundPaint;
        boolean hasShadow;
        Drawable iconDrawable;
        int iconSize;
        float rounding;
        View view;
        int type = 0;
        RectF screenRect = new RectF();

        protected void drawAbove(Canvas canvas, float f) {
        }

        protected abstract void hide();

        protected abstract void show(boolean z);

        public static SourceView fromAvatarImage(final ProfileActivity.AvatarImageView avatarImageView, boolean z) {
            if (avatarImageView == null || avatarImageView.getRootView() == null) {
                return null;
            }
            float scaleX = ((View) avatarImageView.getParent()).getScaleX();
            float imageWidth = avatarImageView.getImageReceiver().getImageWidth() * scaleX;
            float f = z ? 0.32f * imageWidth : imageWidth;
            SourceView sourceView = new SourceView() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.SourceView.1
                @Override // org.telegram.ui.Stories.recorder.StoryRecorder.SourceView
                protected void show(boolean z2) {
                    ProfileActivity.AvatarImageView avatarImageView2 = avatarImageView;
                    avatarImageView2.drawAvatar = true;
                    avatarImageView2.invalidate();
                }

                @Override // org.telegram.ui.Stories.recorder.StoryRecorder.SourceView
                protected void hide() {
                    ProfileActivity.AvatarImageView avatarImageView2 = avatarImageView;
                    avatarImageView2.drawAvatar = false;
                    avatarImageView2.invalidate();
                }
            };
            float[] fArr = new float[2];
            avatarImageView.getRootView().getLocationOnScreen(new int[2]);
            AndroidUtilities.getViewPositionInParent(avatarImageView, (ViewGroup) avatarImageView.getRootView(), fArr);
            float imageX = r4[0] + fArr[0] + (avatarImageView.getImageReceiver().getImageX() * scaleX);
            float imageY = r4[1] + fArr[1] + (avatarImageView.getImageReceiver().getImageY() * scaleX);
            sourceView.screenRect.set(imageX, imageY, imageX + imageWidth, imageWidth + imageY);
            sourceView.backgroundImageReceiver = avatarImageView.getImageReceiver();
            sourceView.rounding = f;
            return sourceView;
        }

        public static SourceView fromStoryViewer(final StoryViewer storyViewer) {
            if (storyViewer == null) {
                return null;
            }
            SourceView sourceView = new SourceView() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.SourceView.2
                @Override // org.telegram.ui.Stories.recorder.StoryRecorder.SourceView
                protected void show(boolean z) {
                    PeerStoriesView currentPeerView = storyViewer.getCurrentPeerView();
                    if (currentPeerView != null) {
                        currentPeerView.animateOut(false);
                    }
                    View view = this.view;
                    if (view != null) {
                        view.setTranslationX(0.0f);
                        this.view.setTranslationY(0.0f);
                    }
                }

                @Override // org.telegram.ui.Stories.recorder.StoryRecorder.SourceView
                protected void hide() {
                    PeerStoriesView currentPeerView = storyViewer.getCurrentPeerView();
                    if (currentPeerView != null) {
                        currentPeerView.animateOut(true);
                    }
                }
            };
            if (!storyViewer.getStoryRect(sourceView.screenRect)) {
                return null;
            }
            sourceView.type = 1;
            sourceView.rounding = AndroidUtilities.m1124dp(8.0f);
            PeerStoriesView currentPeerView = storyViewer.getCurrentPeerView();
            if (currentPeerView != null) {
                sourceView.view = currentPeerView.storyContainer;
            }
            return sourceView;
        }

        /* JADX INFO: renamed from: org.telegram.ui.Stories.recorder.StoryRecorder$SourceView$4 */
        class C71904 extends SourceView {
            final /* synthetic */ BackupImageView val$imageView;

            C71904(BackupImageView backupImageView) {
                this.val$imageView = backupImageView;
            }

            @Override // org.telegram.ui.Stories.recorder.StoryRecorder.SourceView
            protected void show(boolean z) {
                this.val$imageView.setVisibility(0);
            }

            @Override // org.telegram.ui.Stories.recorder.StoryRecorder.SourceView
            protected void hide() {
                final BackupImageView backupImageView = this.val$imageView;
                backupImageView.post(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$SourceView$4$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        backupImageView.setVisibility(8);
                    }
                });
            }
        }

        public static SourceView fromShareCell(ShareDialogCell shareDialogCell) {
            if (shareDialogCell == null) {
                return null;
            }
            BackupImageView imageView = shareDialogCell.getImageView();
            C71904 c71904 = new C71904(imageView);
            int[] iArr = new int[2];
            imageView.getLocationOnScreen(iArr);
            c71904.screenRect.set(iArr[0], iArr[1], r6 + imageView.getWidth(), iArr[1] + imageView.getHeight());
            c71904.backgroundDrawable = new ShareDialogCell.RepostStoryDrawable(imageView.getContext(), (View) null, false, shareDialogCell.resourcesProvider);
            c71904.rounding = Math.max(c71904.screenRect.width(), c71904.screenRect.height()) / 2.0f;
            return c71904;
        }

        public static SourceView fromStoryCell(DialogStoriesCell.StoryCell storyCell) {
            if (storyCell == null || storyCell.getRootView() == null) {
                return null;
            }
            float imageWidth = storyCell.avatarImage.getImageWidth();
            C71915 c71915 = new C71915(storyCell, imageWidth / 2.0f);
            float[] fArr = new float[2];
            storyCell.getRootView().getLocationOnScreen(new int[2]);
            AndroidUtilities.getViewPositionInParent(storyCell, (ViewGroup) storyCell.getRootView(), fArr);
            float imageX = r4[0] + fArr[0] + storyCell.avatarImage.getImageX();
            float imageY = r4[1] + fArr[1] + storyCell.avatarImage.getImageY();
            c71915.screenRect.set(imageX, imageY, imageX + imageWidth, imageWidth + imageY);
            c71915.backgroundImageReceiver = storyCell.avatarImage;
            c71915.rounding = Math.max(c71915.screenRect.width(), c71915.screenRect.height()) / 2.0f;
            return c71915;
        }

        /* JADX INFO: renamed from: org.telegram.ui.Stories.recorder.StoryRecorder$SourceView$5 */
        class C71915 extends SourceView {
            final /* synthetic */ float val$radius;
            final /* synthetic */ DialogStoriesCell.StoryCell val$storyCell;

            C71915(DialogStoriesCell.StoryCell storyCell, float f) {
                this.val$storyCell = storyCell;
                this.val$radius = f;
            }

            @Override // org.telegram.ui.Stories.recorder.StoryRecorder.SourceView
            protected void show(boolean z) {
                DialogStoriesCell.StoryCell storyCell = this.val$storyCell;
                storyCell.drawAvatar = true;
                storyCell.invalidate();
                if (z) {
                    this.val$storyCell.getLocationInWindow(new int[2]);
                    LaunchActivity.makeRipple(r5[0] + (this.val$storyCell.getWidth() / 2.0f), r5[1] + (this.val$storyCell.getHeight() / 2.0f), 1.0f);
                }
            }

            @Override // org.telegram.ui.Stories.recorder.StoryRecorder.SourceView
            protected void hide() {
                final DialogStoriesCell.StoryCell storyCell = this.val$storyCell;
                storyCell.post(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$SourceView$5$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        StoryRecorder.SourceView.C71915.$r8$lambda$CddIKtIMy4frrCudqDPnaYUkxdE(storyCell);
                    }
                });
            }

            public static /* synthetic */ void $r8$lambda$CddIKtIMy4frrCudqDPnaYUkxdE(DialogStoriesCell.StoryCell storyCell) {
                storyCell.drawAvatar = false;
                storyCell.invalidate();
            }

            @Override // org.telegram.ui.Stories.recorder.StoryRecorder.SourceView
            protected void drawAbove(Canvas canvas, float f) {
                DialogStoriesCell.StoryCell storyCell = this.val$storyCell;
                float f2 = this.val$radius;
                storyCell.drawPlus(canvas, f2, f2, (float) Math.pow(f, 16.0d));
            }
        }
    }

    public StoryRecorder closeToWhenSent(ClosingViewProvider closingViewProvider) {
        this.closingSourceProvider = closingViewProvider;
        return this;
    }

    public void replaceSourceView(SourceView sourceView) {
        int i = 0;
        if (sourceView != null) {
            this.fromSourceView = sourceView;
            this.openType = sourceView.type;
            this.fromRect.set(sourceView.screenRect);
            this.fromRounding = sourceView.rounding;
        } else {
            this.fromSourceView = null;
            this.openType = 0;
            this.fromRect.set(0.0f, AndroidUtilities.m1124dp(100.0f), AndroidUtilities.displaySize.x, AndroidUtilities.m1124dp(100.0f) + AndroidUtilities.displaySize.y);
            this.fromRounding = AndroidUtilities.m1124dp(8.0f);
        }
        FrameLayout frameLayout = this.previewContainer;
        int i2 = this.openType;
        if (i2 != 1 && i2 != 0) {
            i = -14737633;
        }
        frameLayout.setBackgroundColor(i);
    }

    public void openBot(long j, String str, SourceView sourceView) {
        this.botId = j;
        this.botLang = str;
        this.botEdit = null;
        open(sourceView, true);
        this.botId = j;
        this.botLang = str;
    }

    public void openBotEntry(long j, String str, StoryEntry storyEntry, SourceView sourceView) {
        WindowView windowView;
        if (this.isShown || storyEntry == null) {
            return;
        }
        if (MessagesController.getInstance(this.currentAccount).isFrozen()) {
            AccountFrozenAlert.show(this.currentAccount);
            return;
        }
        this.botId = j;
        this.botLang = str;
        this.isReposting = false;
        this.prepareClosing = false;
        this.forceBackgroundVisible = false;
        if (this.windowManager != null && (windowView = this.windowView) != null && windowView.getParent() == null) {
            AndroidUtilities.setPreferredMaxRefreshRate(this.windowManager, this.windowView, this.windowLayoutParams);
            this.windowManager.addView(this.windowView, this.windowLayoutParams);
            setupBackDispatcher();
        }
        this.outputEntry = storyEntry;
        storyEntry.botId = j;
        storyEntry.botLang = str;
        this.mode = storyEntry.isVideo ? 1 : 0;
        this.videoTextureHolder.active = false;
        if (sourceView != null) {
            this.fromSourceView = sourceView;
            this.openType = sourceView.type;
            this.fromRect.set(sourceView.screenRect);
            this.fromRounding = sourceView.rounding;
            this.fromSourceView.hide();
        } else {
            this.openType = 0;
            this.fromRect.set(0.0f, AndroidUtilities.m1124dp(100.0f), AndroidUtilities.displaySize.x, AndroidUtilities.m1124dp(100.0f) + AndroidUtilities.displaySize.y);
            this.fromRounding = AndroidUtilities.m1124dp(8.0f);
        }
        this.containerView.updateBackground();
        FrameLayout frameLayout = this.previewContainer;
        int i = this.openType;
        frameLayout.setBackgroundColor((i == 1 || i == 0) ? 0 : -14737633);
        this.containerView.setTranslationX(0.0f);
        this.containerView.setTranslationY(0.0f);
        this.containerView.setTranslationY2(0.0f);
        this.containerView.setScaleX(1.0f);
        this.containerView.setScaleY(1.0f);
        this.dismissProgress = 0.0f;
        AndroidUtilities.lockOrientation(this.activity, 1);
        StoryEntry storyEntry2 = this.outputEntry;
        if (storyEntry2 != null) {
            this.captionEdit.setText(storyEntry2.caption);
        }
        navigateTo(1, false);
        switchToEditMode(-1, false);
        this.previewButtons.appear(false, false);
        this.previewButtons.appear(true, true);
        animateOpenTo(1.0f, true, new StoryRecorder$$ExternalSyntheticLambda10(this));
        addNotificationObservers();
    }

    public void open(SourceView sourceView) {
        open(sourceView, true);
    }

    public void open(SourceView sourceView, boolean z) {
        StoriesController.StoryLimit storyLimitCheckStoryLimit;
        WindowView windowView;
        if (this.isShown) {
            return;
        }
        if (MessagesController.getInstance(this.currentAccount).isFrozen()) {
            AccountFrozenAlert.show(this.currentAccount);
            return;
        }
        int i = 0;
        this.isReposting = false;
        this.prepareClosing = false;
        this.forceBackgroundVisible = false;
        this.videoTextureHolder.active = false;
        if (this.windowManager != null && (windowView = this.windowView) != null && windowView.getParent() == null) {
            AndroidUtilities.setPreferredMaxRefreshRate(this.windowManager, this.windowView, this.windowLayoutParams);
            this.windowManager.addView(this.windowView, this.windowLayoutParams);
            setupBackDispatcher();
        }
        this.collageLayoutView.setCameraThumb(getCameraThumb());
        if (this.botId == 0 && (storyLimitCheckStoryLimit = MessagesController.getInstance(this.currentAccount).getStoriesController().checkStoryLimit()) != null && storyLimitCheckStoryLimit.active(this.currentAccount)) {
            showLimitReachedSheet(storyLimitCheckStoryLimit, true);
        }
        navigateTo(0, false);
        switchToEditMode(-1, false);
        if (sourceView != null) {
            this.fromSourceView = sourceView;
            this.openType = sourceView.type;
            this.fromRect.set(sourceView.screenRect);
            this.fromRounding = sourceView.rounding;
            this.fromSourceView.hide();
        } else {
            this.openType = 0;
            this.fromRect.set(0.0f, AndroidUtilities.m1124dp(100.0f), AndroidUtilities.displaySize.x, AndroidUtilities.m1124dp(100.0f) + AndroidUtilities.displaySize.y);
            this.fromRounding = AndroidUtilities.m1124dp(8.0f);
        }
        this.containerView.updateBackground();
        FrameLayout frameLayout = this.previewContainer;
        int i2 = this.openType;
        if (i2 != 1 && i2 != 0) {
            i = -14737633;
        }
        frameLayout.setBackgroundColor(i);
        this.containerView.setTranslationX(0.0f);
        this.containerView.setTranslationY(0.0f);
        this.containerView.setTranslationY2(0.0f);
        this.containerView.setScaleX(1.0f);
        this.containerView.setScaleY(1.0f);
        this.dismissProgress = 0.0f;
        AndroidUtilities.lockOrientation(this.activity, 1);
        animateOpenTo(1.0f, z, new StoryRecorder$$ExternalSyntheticLambda10(this));
        addNotificationObservers();
        this.botId = 0L;
        this.botLang = _UrlKt.FRAGMENT_ENCODE_SET;
        this.botEdit = null;
    }

    public void openEdit(SourceView sourceView, StoryEntry storyEntry, long j, final boolean z) {
        WindowView windowView;
        if (this.isShown) {
            return;
        }
        if (MessagesController.getInstance(this.currentAccount).isFrozen()) {
            AccountFrozenAlert.show(this.currentAccount);
            return;
        }
        this.isReposting = false;
        this.prepareClosing = false;
        this.forceBackgroundVisible = false;
        if (this.windowManager != null && (windowView = this.windowView) != null && windowView.getParent() == null) {
            AndroidUtilities.setPreferredMaxRefreshRate(this.windowManager, this.windowView, this.windowLayoutParams);
            this.windowManager.addView(this.windowView, this.windowLayoutParams);
            setupBackDispatcher();
        }
        this.outputEntry = storyEntry;
        this.mode = (storyEntry == null || !storyEntry.isVideo) ? 0 : 1;
        this.videoTextureHolder.active = false;
        if (sourceView != null) {
            this.fromSourceView = sourceView;
            this.openType = sourceView.type;
            this.fromRect.set(sourceView.screenRect);
            this.fromRounding = sourceView.rounding;
            this.fromSourceView.hide();
        } else {
            this.openType = 0;
            this.fromRect.set(0.0f, AndroidUtilities.m1124dp(100.0f), AndroidUtilities.displaySize.x, AndroidUtilities.m1124dp(100.0f) + AndroidUtilities.displaySize.y);
            this.fromRounding = AndroidUtilities.m1124dp(8.0f);
        }
        this.containerView.updateBackground();
        FrameLayout frameLayout = this.previewContainer;
        int i = this.openType;
        frameLayout.setBackgroundColor((i == 1 || i == 0) ? 0 : -14737633);
        this.containerView.setTranslationX(0.0f);
        this.containerView.setTranslationY(0.0f);
        this.containerView.setTranslationY2(0.0f);
        this.containerView.setScaleX(1.0f);
        this.containerView.setScaleY(1.0f);
        this.dismissProgress = 0.0f;
        AndroidUtilities.lockOrientation(this.activity, 1);
        StoryEntry storyEntry2 = this.outputEntry;
        if (storyEntry2 != null) {
            this.captionEdit.setText(storyEntry2.caption);
        }
        navigateToPreviewWithPlayerAwait(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda103
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$openEdit$0(z);
            }
        }, j);
        navigateTo(this.outputEntry.isEditingCover ? 2 : 1, false);
        switchToEditMode(-1, false);
        this.previewButtons.appear(false, false);
        addNotificationObservers();
        this.botId = 0L;
        this.botLang = _UrlKt.FRAGMENT_ENCODE_SET;
        this.botEdit = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openEdit$0(boolean z) {
        animateOpenTo(1.0f, z, new StoryRecorder$$ExternalSyntheticLambda10(this));
        this.previewButtons.appear(true, true);
    }

    public void openForward(SourceView sourceView, StoryEntry storyEntry, long j, final boolean z) {
        WindowView windowView;
        if (this.isShown) {
            return;
        }
        if (MessagesController.getInstance(this.currentAccount).isFrozen()) {
            AccountFrozenAlert.show(this.currentAccount);
            return;
        }
        this.isReposting = false;
        this.prepareClosing = false;
        this.forceBackgroundVisible = false;
        if (this.windowManager != null && (windowView = this.windowView) != null && windowView.getParent() == null) {
            AndroidUtilities.setPreferredMaxRefreshRate(this.windowManager, this.windowView, this.windowLayoutParams);
            this.windowManager.addView(this.windowView, this.windowLayoutParams);
            setupBackDispatcher();
        }
        this.outputEntry = storyEntry;
        StoryPrivacySelector.applySaved(this.currentAccount, storyEntry);
        StoryEntry storyEntry2 = this.outputEntry;
        this.mode = (storyEntry2 == null || !storyEntry2.isVideo) ? 0 : 1;
        this.videoTextureHolder.active = false;
        if (sourceView != null) {
            this.fromSourceView = sourceView;
            this.openType = sourceView.type;
            this.fromRect.set(sourceView.screenRect);
            this.fromRounding = sourceView.rounding;
            this.fromSourceView.hide();
        } else {
            this.openType = 0;
            this.fromRect.set(0.0f, AndroidUtilities.m1124dp(100.0f), AndroidUtilities.displaySize.x, AndroidUtilities.m1124dp(100.0f) + AndroidUtilities.displaySize.y);
            this.fromRounding = AndroidUtilities.m1124dp(8.0f);
        }
        this.containerView.updateBackground();
        FrameLayout frameLayout = this.previewContainer;
        int i = this.openType;
        frameLayout.setBackgroundColor((i == 1 || i == 0) ? 0 : -14737633);
        this.containerView.setTranslationX(0.0f);
        this.containerView.setTranslationY(0.0f);
        this.containerView.setTranslationY2(0.0f);
        this.containerView.setScaleX(1.0f);
        this.containerView.setScaleY(1.0f);
        this.dismissProgress = 0.0f;
        AndroidUtilities.lockOrientation(this.activity, 1);
        StoryEntry storyEntry3 = this.outputEntry;
        if (storyEntry3 != null) {
            this.captionEdit.setText(storyEntry3.caption);
        }
        navigateToPreviewWithPlayerAwait(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda123
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$openForward$1(z);
            }
        }, j);
        this.previewButtons.appear(true, false);
        navigateTo(1, false);
        switchToEditMode(-1, false);
        addNotificationObservers();
        this.botId = 0L;
        this.botLang = _UrlKt.FRAGMENT_ENCODE_SET;
        this.botEdit = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openForward$1(boolean z) {
        animateOpenTo(1.0f, z, new StoryRecorder$$ExternalSyntheticLambda10(this));
    }

    public void openRepost(SourceView sourceView, StoryEntry storyEntry) {
        StoriesController.StoryLimit storyLimitCheckStoryLimit;
        WindowView windowView;
        if (this.isShown) {
            return;
        }
        if (MessagesController.getInstance(this.currentAccount).isFrozen()) {
            AccountFrozenAlert.show(this.currentAccount);
            return;
        }
        this.isReposting = true;
        this.prepareClosing = false;
        this.forceBackgroundVisible = false;
        if (this.windowManager != null && (windowView = this.windowView) != null && windowView.getParent() == null) {
            AndroidUtilities.setPreferredMaxRefreshRate(this.windowManager, this.windowView, this.windowLayoutParams);
            this.windowManager.addView(this.windowView, this.windowLayoutParams);
            setupBackDispatcher();
        }
        this.outputEntry = storyEntry;
        StoryPrivacySelector.applySaved(this.currentAccount, storyEntry);
        StoryEntry storyEntry2 = this.outputEntry;
        int i = (storyEntry2 == null || !storyEntry2.isVideo) ? 0 : 1;
        this.mode = i;
        this.videoTextureHolder.active = storyEntry2 != null && storyEntry2.isRepostMessage && i == 1;
        if (this.botId == 0 && (storyLimitCheckStoryLimit = MessagesController.getInstance(this.currentAccount).getStoriesController().checkStoryLimit()) != null && storyLimitCheckStoryLimit.active(this.currentAccount)) {
            showLimitReachedSheet(storyLimitCheckStoryLimit, true);
        }
        if (sourceView != null) {
            this.fromSourceView = sourceView;
            this.openType = sourceView.type;
            this.fromRect.set(sourceView.screenRect);
            this.fromRounding = sourceView.rounding;
            this.fromSourceView.hide();
        } else {
            this.openType = 0;
            this.fromRect.set(0.0f, AndroidUtilities.m1124dp(100.0f), AndroidUtilities.displaySize.x, AndroidUtilities.m1124dp(100.0f) + AndroidUtilities.displaySize.y);
            this.fromRounding = AndroidUtilities.m1124dp(8.0f);
        }
        this.containerView.updateBackground();
        FrameLayout frameLayout = this.previewContainer;
        int i2 = this.openType;
        frameLayout.setBackgroundColor((i2 == 1 || i2 == 0) ? 0 : -14737633);
        this.containerView.setTranslationX(0.0f);
        this.containerView.setTranslationY(0.0f);
        this.containerView.setTranslationY2(0.0f);
        this.containerView.setScaleX(1.0f);
        this.containerView.setScaleY(1.0f);
        this.dismissProgress = 0.0f;
        AndroidUtilities.lockOrientation(this.activity, 1);
        StoryEntry storyEntry3 = this.outputEntry;
        if (storyEntry3 != null) {
            this.captionEdit.setText(storyEntry3.caption);
        }
        this.previewButtons.appear(true, false);
        navigateTo(1, false);
        switchToEditMode(-1, false);
        animateOpenTo(1.0f, true, new StoryRecorder$$ExternalSyntheticLambda10(this));
        addNotificationObservers();
        this.botId = 0L;
        this.botLang = _UrlKt.FRAGMENT_ENCODE_SET;
        this.botEdit = null;
    }

    private void setupBackDispatcher() {
        OnBackInvokedDispatcher onBackInvokedDispatcherFindOnBackInvokedDispatcher;
        if (Build.VERSION.SDK_INT >= 33 && (onBackInvokedDispatcherFindOnBackInvokedDispatcher = this.windowView.findOnBackInvokedDispatcher()) != null) {
            onBackInvokedDispatcherFindOnBackInvokedDispatcher.registerOnBackInvokedCallback(0, new OnBackInvokedCallback() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda86
                public final void onBackInvoked() {
                    this.f$0.onBackPressed();
                }
            });
        }
    }

    public void close(final boolean z) {
        PreviewView previewView;
        if (this.isShown) {
            StoryPrivacyBottomSheet storyPrivacyBottomSheet = this.privacySheet;
            if (storyPrivacyBottomSheet != null) {
                storyPrivacyBottomSheet.lambda$new$0();
                this.privacySheet = null;
            }
            StoryEntry storyEntry = this.outputEntry;
            if (storyEntry != null && !storyEntry.isEditSaved) {
                if ((this.wasSend && storyEntry.isEdit) || storyEntry.draftId != 0) {
                    storyEntry.editedMedia = false;
                }
                storyEntry.destroy(false);
            }
            this.outputEntry = null;
            Utilities.Callback4 callback4 = this.onClosePrepareListener;
            if (callback4 != null && (previewView = this.previewView) != null) {
                if (this.prepareClosing) {
                    return;
                }
                this.prepareClosing = true;
                callback4.run(Long.valueOf(previewView.release()), new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda6
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$close$2(z);
                    }
                }, Boolean.valueOf(this.wasSend), Long.valueOf(this.wasSendPeer));
                return;
            }
            PreviewView previewView2 = this.previewView;
            if (previewView2 != null && !z) {
                previewView2.set(null);
            }
            animateOpenTo(0.0f, z, new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.onCloseDone();
                }
            });
            int i = this.openType;
            if (i == 1 || i == 0) {
                this.windowView.setBackgroundColor(0);
                this.previewButtons.appear(false, true);
            }
            removeNotificationObservers();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$close$2(boolean z) {
        this.onClosePrepareListener = null;
        this.prepareClosing = false;
        close(z);
    }

    private void animateOpenTo(final float f, boolean z, final Runnable runnable) {
        ValueAnimator valueAnimator = this.openCloseAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.openCloseAnimator = null;
        }
        if (z) {
            this.notificationsLocker.lock();
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stopAllHeavyOperations, 512);
            this.frozenDismissProgress = Float.valueOf(this.dismissProgress);
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.openProgress, f);
            this.openCloseAnimator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda89
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    this.f$0.lambda$animateOpenTo$3(valueAnimator2);
                }
            });
            this.openCloseAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    StoryRecorder.this.frozenDismissProgress = null;
                    StoryRecorder.this.openProgress = f;
                    StoryRecorder.this.applyOpenProgress();
                    StoryRecorder.this.containerView.invalidate();
                    StoryRecorder.this.windowView.invalidate();
                    Runnable runnable2 = runnable;
                    if (runnable2 != null) {
                        runnable2.run();
                    }
                    if (StoryRecorder.this.fromSourceView != null) {
                        StoryRecorder.m19729$$Nest$fgetwaveEffect(StoryRecorder.this);
                    }
                    StoryRecorder.this.notificationsLocker.unlock();
                    NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.startAllHeavyOperations, 512);
                    NotificationCenter.getGlobalInstance().runDelayedNotifications();
                    StoryRecorder.this.checkBackgroundVisibility();
                    if (StoryRecorder.this.onFullyOpenListener != null) {
                        StoryRecorder.this.onFullyOpenListener.run();
                        StoryRecorder.this.onFullyOpenListener = null;
                    }
                    StoryRecorder.this.containerView.invalidate();
                    StoryRecorder.this.previewContainer.invalidate();
                }
            });
            if (f < 1.0f && this.wasSend) {
                this.openCloseAnimator.setDuration(250L);
                this.openCloseAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            } else if (f > 0.0f || this.containerView.getTranslationY1() < AndroidUtilities.m1124dp(20.0f)) {
                this.openCloseAnimator.setDuration(300L);
                this.openCloseAnimator.setInterpolator(new FastOutSlowInInterpolator());
            } else if (f < 0.0f && this.fastClose) {
                this.openCloseAnimator.setDuration(200L);
                this.openCloseAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
                this.fastClose = false;
            } else {
                this.openCloseAnimator.setDuration(400L);
                this.openCloseAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            }
            this.openCloseAnimator.start();
        } else {
            this.frozenDismissProgress = null;
            this.openProgress = f;
            applyOpenProgress();
            this.containerView.invalidate();
            this.windowView.invalidate();
            if (runnable != null) {
                runnable.run();
            }
            checkBackgroundVisibility();
        }
        if (f > 0.0f) {
            firstOpen = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateOpenTo$3(ValueAnimator valueAnimator) {
        this.openProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        checkBackgroundVisibility();
        this.containerView.invalidate();
        this.windowView.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onOpenDone() {
        this.isShown = true;
        this.wasSend = false;
        if (this.openType == 1) {
            this.previewContainer.setAlpha(1.0f);
            this.previewContainer.setTranslationX(0.0f);
            this.previewContainer.setTranslationY(0.0f);
            this.actionBarContainer.setAlpha(1.0f);
            this.controlContainer.setAlpha(1.0f);
            this.windowView.setBackgroundColor(-16777216);
            if (this.currentPage == 2) {
                this.coverButton.setAlpha(1.0f);
            }
        }
        Runnable runnable = this.whenOpenDone;
        if (runnable != null) {
            runnable.run();
            this.whenOpenDone = null;
        } else {
            onResumeInternal();
        }
        StoryEntry storyEntry = this.outputEntry;
        if (storyEntry != null && storyEntry.isRepost) {
            createPhotoPaintView();
            hidePhotoPaintView();
            createFilterPhotoView();
        } else {
            if (storyEntry == null || !storyEntry.isRepostMessage) {
                return;
            }
            if (storyEntry.isVideo) {
                this.previewView.setupVideoPlayer(storyEntry, null, 0L);
            }
            createFilterPhotoView();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onCloseDone() {
        EditTextEmoji editTextEmoji;
        this.isShown = false;
        AndroidUtilities.unlockOrientation(this.activity);
        if (this.cameraView != null) {
            if (this.takingVideo) {
                CameraController.getInstance().stopVideoRecording(this.cameraView.getCameraSession(), false);
            }
            destroyCameraView(false);
        }
        PreviewView previewView = this.previewView;
        if (previewView != null) {
            previewView.set(null);
        }
        destroyPhotoPaintView();
        destroyPhotoFilterView();
        File file = this.outputFile;
        if (file != null && !this.wasSend) {
            try {
                file.delete();
            } catch (Exception unused) {
            }
        }
        this.outputFile = null;
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda90
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onCloseDone$4();
            }
        }, 16L);
        SourceView sourceView = this.fromSourceView;
        if (sourceView != null) {
            sourceView.show(false);
        }
        if (this.whenOpenDone != null) {
            this.whenOpenDone = null;
        }
        this.lastGalleryScrollPosition = null;
        StoryRecorder storyRecorder = instance;
        if (storyRecorder != null) {
            storyRecorder.close(false);
        }
        instance = null;
        Runnable runnable = this.onCloseListener;
        if (runnable != null) {
            runnable.run();
            this.onCloseListener = null;
        }
        WindowView windowView = this.windowView;
        if (windowView != null) {
            Bulletin.removeDelegate(windowView);
        }
        FrameLayout frameLayout = this.captionContainer;
        if (frameLayout != null) {
            Bulletin.removeDelegate(frameLayout);
        }
        CollageLayoutView2 collageLayoutView2 = this.collageLayoutView;
        if (collageLayoutView2 != null) {
            collageLayoutView2.clear(true);
        }
        CaptionStory captionStory = this.captionEdit;
        if (captionStory == null || (editTextEmoji = captionStory.editText) == null) {
            return;
        }
        editTextEmoji.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCloseDone$4() {
        WindowView windowView;
        if (this.windowManager == null || (windowView = this.windowView) == null || windowView.getParent() == null) {
            return;
        }
        this.windowManager.removeView(this.windowView);
    }

    public void setOnFullyOpenListener(Runnable runnable) {
        this.onFullyOpenListener = runnable;
    }

    public void setOnPrepareCloseListener(Utilities.Callback4 callback4) {
        this.onClosePrepareListener = callback4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyOpenProgress() {
        View view;
        if (this.openType != 1) {
            return;
        }
        this.fullRectF.set(this.previewContainer.getLeft(), this.previewContainer.getTop(), this.previewContainer.getMeasuredWidth(), this.previewContainer.getMeasuredHeight());
        this.fullRectF.offset(this.containerView.getX(), this.containerView.getY());
        AndroidUtilities.lerp(this.fromRect, this.fullRectF, this.openProgress, this.rectF);
        this.previewContainer.setAlpha(this.openProgress);
        this.previewContainer.setTranslationX((this.rectF.left - r0.getLeft()) - this.containerView.getX());
        this.previewContainer.setTranslationY((this.rectF.top - r0.getTop()) - this.containerView.getY());
        SourceView sourceView = this.fromSourceView;
        if (sourceView != null && (view = sourceView.view) != null) {
            view.setTranslationX((this.fullRectF.left - this.fromRect.left) * this.openProgress);
            this.fromSourceView.view.setTranslationY((this.fullRectF.top - this.fromRect.top) * this.openProgress);
        }
        this.previewContainer.setScaleX(this.rectF.width() / this.previewContainer.getMeasuredWidth());
        this.previewContainer.setScaleY(this.rectF.height() / this.previewContainer.getMeasuredHeight());
        this.actionBarContainer.setAlpha(this.openProgress);
        this.controlContainer.setAlpha(this.openProgress);
        this.captionContainer.setAlpha(this.openProgress);
        if (this.currentPage == 2) {
            this.coverButton.setAlpha(this.openProgress);
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    public class WindowView extends SizeNotifierFrameLayout {
        private boolean allowModeScroll;
        private boolean flingDetected;
        private GestureDetectorFixDoubleTap gestureDetector;
        private boolean ignoreLayout;
        private ScaleGestureDetector scaleGestureDetector;
        private boolean scaling;
        private float stx;
        private float sty;
        private boolean touchInCollageList;

        /* JADX INFO: renamed from: ty */
        private float f2234ty;

        public WindowView(Context context) {
            super(context);
            this.scaling = false;
            this.allowModeScroll = true;
            this.gestureDetector = new GestureDetectorFixDoubleTap(context, new GestureListener());
            this.scaleGestureDetector = new ScaleGestureDetector(context, new ScaleListener());
        }

        @Override // org.telegram.p029ui.Components.SizeNotifierFrameLayout
        public int getBottomPadding() {
            return (getHeight() - StoryRecorder.this.containerView.getBottom()) + StoryRecorder.this.underControls;
        }

        public int getBottomPadding2() {
            return getHeight() - StoryRecorder.this.containerView.getBottom();
        }

        public int getPaddingUnderContainer() {
            return (getHeight() - StoryRecorder.this.insetBottom) - StoryRecorder.this.containerView.getBottom();
        }

        @Override // org.telegram.p029ui.Components.SizeNotifierFrameLayout, android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            boolean z;
            float fFloatValue = StoryRecorder.this.frozenDismissProgress != null ? StoryRecorder.this.frozenDismissProgress.floatValue() : StoryRecorder.this.dismissProgress;
            if (StoryRecorder.this.openType == 0) {
                canvas.drawColor(ColorUtils.setAlphaComponent(-16777216, (int) (StoryRecorder.this.openProgress * 255.0f * (1.0f - fFloatValue))));
            }
            float fLerp = AndroidUtilities.lerp(StoryRecorder.this.fromRounding, 0.0f, StoryRecorder.this.openProgress);
            if (StoryRecorder.this.openProgress != 1.0f) {
                z = true;
                if (StoryRecorder.this.openType == 0) {
                    StoryRecorder.this.fullRectF.set(0.0f, 0.0f, getWidth(), getHeight());
                    StoryRecorder.this.fullRectF.offset(StoryRecorder.this.containerView.getTranslationX(), StoryRecorder.this.containerView.getTranslationY());
                    AndroidUtilities.lerp(StoryRecorder.this.fromRect, StoryRecorder.this.fullRectF, StoryRecorder.this.openProgress, StoryRecorder.this.rectF);
                    canvas.save();
                    StoryRecorder.this.clipPath.rewind();
                    StoryRecorder.this.clipPath.addRoundRect(StoryRecorder.this.rectF, fLerp, fLerp, Path.Direction.CW);
                    canvas.clipPath(StoryRecorder.this.clipPath);
                    canvas.saveLayerAlpha(0.0f, 0.0f, getWidth(), getHeight(), (int) (Utilities.clamp(StoryRecorder.this.openProgress * 3.0f, 1.0f, 0.0f) * 255.0f), 31);
                    canvas.translate(StoryRecorder.this.rectF.left, StoryRecorder.this.rectF.top - (StoryRecorder.this.containerView.getTranslationY() * StoryRecorder.this.openProgress));
                    float fMax = Math.max(StoryRecorder.this.rectF.width() / getWidth(), StoryRecorder.this.rectF.height() / getHeight());
                    canvas.scale(fMax, fMax);
                } else {
                    if (StoryRecorder.this.openType == 1) {
                        StoryRecorder.this.applyOpenProgress();
                    }
                    z = false;
                }
            } else {
                z = false;
            }
            if (StoryRecorder.this.paintView != null) {
                StoryRecorder.this.paintView.onParentPreDraw();
            }
            super.dispatchDraw(canvas);
            if (z) {
                canvas.restore();
                canvas.restore();
                if (StoryRecorder.this.fromSourceView != null) {
                    float fClamp = Utilities.clamp(1.0f - (StoryRecorder.this.openProgress * 1.5f), 1.0f, 0.0f);
                    float fCenterX = StoryRecorder.this.rectF.centerX();
                    float fCenterY = StoryRecorder.this.rectF.centerY();
                    Math.min(StoryRecorder.this.rectF.width(), StoryRecorder.this.rectF.height());
                    if (StoryRecorder.this.fromSourceView.backgroundImageReceiver != null) {
                        StoryRecorder.this.fromSourceView.backgroundImageReceiver.setImageCoords(StoryRecorder.this.rectF);
                        int i = StoryRecorder.this.fromSourceView.backgroundImageReceiver.getRoundRadius()[0];
                        StoryRecorder.this.fromSourceView.backgroundImageReceiver.setRoundRadius((int) fLerp);
                        StoryRecorder.this.fromSourceView.backgroundImageReceiver.setAlpha(fClamp);
                        StoryRecorder.this.fromSourceView.backgroundImageReceiver.draw(canvas);
                        StoryRecorder.this.fromSourceView.backgroundImageReceiver.setRoundRadius(i);
                    } else if (StoryRecorder.this.fromSourceView.backgroundDrawable != null) {
                        StoryRecorder.this.fromSourceView.backgroundDrawable.setBounds((int) StoryRecorder.this.rectF.left, (int) StoryRecorder.this.rectF.top, (int) StoryRecorder.this.rectF.right, (int) StoryRecorder.this.rectF.bottom);
                        StoryRecorder.this.fromSourceView.backgroundDrawable.setAlpha((int) (255.0f * fClamp * fClamp * fClamp));
                        StoryRecorder.this.fromSourceView.backgroundDrawable.draw(canvas);
                    } else if (StoryRecorder.this.fromSourceView.backgroundPaint != null) {
                        if (StoryRecorder.this.fromSourceView.hasShadow) {
                            StoryRecorder.this.fromSourceView.backgroundPaint.setShadowLayer(AndroidUtilities.m1124dp(2.0f), 0.0f, AndroidUtilities.m1124dp(3.0f), Theme.multAlpha(AndroidUtilities.DARK_STATUS_BAR_OVERLAY, fClamp));
                        }
                        StoryRecorder.this.fromSourceView.backgroundPaint.setAlpha((int) (255.0f * fClamp));
                        canvas.drawRoundRect(StoryRecorder.this.rectF, fLerp, fLerp, StoryRecorder.this.fromSourceView.backgroundPaint);
                    }
                    if (StoryRecorder.this.fromSourceView.iconDrawable != null) {
                        StoryRecorder.this.rect.set(StoryRecorder.this.fromSourceView.iconDrawable.getBounds());
                        StoryRecorder.this.fromSourceView.iconDrawable.setBounds((int) (fCenterX - (StoryRecorder.this.fromSourceView.iconSize / 2)), (int) (fCenterY - (StoryRecorder.this.fromSourceView.iconSize / 2)), (int) (fCenterX + (StoryRecorder.this.fromSourceView.iconSize / 2)), (int) (fCenterY + (StoryRecorder.this.fromSourceView.iconSize / 2)));
                        int alpha = StoryRecorder.this.fromSourceView.iconDrawable.getAlpha();
                        StoryRecorder.this.fromSourceView.iconDrawable.setAlpha((int) (alpha * fClamp));
                        StoryRecorder.this.fromSourceView.iconDrawable.draw(canvas);
                        StoryRecorder.this.fromSourceView.iconDrawable.setBounds(StoryRecorder.this.rect);
                        StoryRecorder.this.fromSourceView.iconDrawable.setAlpha(alpha);
                    }
                    canvas.save();
                    canvas.translate(StoryRecorder.this.fromRect.left, StoryRecorder.this.fromRect.top);
                    StoryRecorder.this.fromSourceView.drawAbove(canvas, fClamp);
                    canvas.restore();
                }
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            boolean z = false;
            this.flingDetected = false;
            if (StoryRecorder.this.collageListView != null && StoryRecorder.this.collageListView.isVisible()) {
                float y = StoryRecorder.this.containerView.getY() + StoryRecorder.this.actionBarContainer.getY() + StoryRecorder.this.collageListView.getY();
                if ((motionEvent.getY() >= y && motionEvent.getY() <= y + StoryRecorder.this.collageListView.getHeight()) || this.touchInCollageList) {
                    if (motionEvent.getAction() != 1 && motionEvent.getAction() != 3) {
                        z = true;
                    }
                    this.touchInCollageList = z;
                    return super.dispatchTouchEvent(motionEvent);
                }
                StoryRecorder.this.collageListView.setVisible(false, true);
                StoryRecorder.this.updateActionBarButtons(true);
            }
            if (this.touchInCollageList && (motionEvent.getAction() == 1 || motionEvent.getAction() == 3)) {
                this.touchInCollageList = false;
            }
            this.scaleGestureDetector.onTouchEvent(motionEvent);
            this.gestureDetector.onTouchEvent(motionEvent);
            if (motionEvent.getAction() == 1 && !this.flingDetected) {
                this.allowModeScroll = true;
                if (StoryRecorder.this.containerView.getTranslationY() > 0.0f) {
                    if (StoryRecorder.this.dismissProgress > 0.4f) {
                        StoryRecorder.this.close(true);
                    } else {
                        StoryRecorder.this.animateContainerBack();
                    }
                } else if (StoryRecorder.this.galleryListView != null && StoryRecorder.this.galleryListView.getTranslationY() > 0.0f && !StoryRecorder.this.galleryClosing) {
                    StoryRecorder storyRecorder = StoryRecorder.this;
                    storyRecorder.lambda$animateGalleryListView$74(!storyRecorder.takingVideo && StoryRecorder.this.galleryListView.getTranslationY() < ((float) StoryRecorder.this.galleryListView.getPadding()));
                }
                StoryRecorder.this.galleryClosing = false;
                StoryRecorder.this.scrollingY = false;
                StoryRecorder.this.scrollingX = false;
            }
            return super.dispatchTouchEvent(motionEvent);
        }

        public void cancelGestures() {
            this.scaleGestureDetector.onTouchEvent(AndroidUtilities.emptyMotionEvent());
            this.gestureDetector.onTouchEvent(AndroidUtilities.emptyMotionEvent());
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchKeyEventPreIme(KeyEvent keyEvent) {
            if (keyEvent != null && keyEvent.getKeyCode() == 4 && keyEvent.getAction() == 1) {
                StoryRecorder.this.onBackPressed();
                return true;
            }
            return super.dispatchKeyEventPreIme(keyEvent);
        }

        private final class ScaleListener extends ScaleGestureDetector.SimpleOnScaleGestureListener {
            private ScaleListener() {
            }

            @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
            public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
                if (!WindowView.this.scaling || StoryRecorder.this.cameraView == null || StoryRecorder.this.currentPage != 0 || StoryRecorder.this.cameraView.isDualTouch() || StoryRecorder.this.collageLayoutView.getFilledProgress() >= 1.0f) {
                    return false;
                }
                StoryRecorder.this.cameraZoom += (scaleGestureDetector.getScaleFactor() - 1.0f) * 0.75f;
                StoryRecorder storyRecorder = StoryRecorder.this;
                storyRecorder.cameraZoom = Utilities.clamp(storyRecorder.cameraZoom, 1.0f, 0.0f);
                StoryRecorder.this.cameraView.setZoom(StoryRecorder.this.cameraZoom);
                if (StoryRecorder.this.zoomControlView != null) {
                    StoryRecorder.this.zoomControlView.setZoom(StoryRecorder.this.cameraZoom, false);
                }
                StoryRecorder.this.showZoomControls(true, true);
                return true;
            }

            @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
            public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
                if (StoryRecorder.this.cameraView == null || StoryRecorder.this.currentPage != 0 || StoryRecorder.this.wasGalleryOpen) {
                    return false;
                }
                WindowView.this.scaling = true;
                return super.onScaleBegin(scaleGestureDetector);
            }

            @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
            public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
                WindowView.this.scaling = false;
                StoryRecorder.this.lambda$animateGalleryListView$74(false);
                StoryRecorder.this.animateContainerBack();
                super.onScaleEnd(scaleGestureDetector);
            }
        }

        private final class GestureListener extends GestureDetectorFixDoubleTap.OnGestureListener {
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public void onLongPress(MotionEvent motionEvent) {
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public void onShowPress(MotionEvent motionEvent) {
            }

            private GestureListener() {
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onDown(MotionEvent motionEvent) {
                WindowView.this.sty = 0.0f;
                WindowView.this.stx = 0.0f;
                return false;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onSingleTapUp(MotionEvent motionEvent) {
                StoryRecorder.this.scrollingY = false;
                StoryRecorder.this.scrollingX = false;
                if (!hasDoubleTap(motionEvent) && onSingleTapConfirmed(motionEvent)) {
                    return true;
                }
                if (!StoryRecorder.this.isGalleryOpen() || motionEvent.getY() >= StoryRecorder.this.galleryListView.top()) {
                    return false;
                }
                StoryRecorder.this.lambda$animateGalleryListView$74(false);
                return true;
            }

            /* JADX WARN: Removed duplicated region for block: B:54:0x0158  */
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                boolean z = false;
                if ((StoryRecorder.this.openCloseAnimator == null || !StoryRecorder.this.openCloseAnimator.isRunning()) && StoryRecorder.this.galleryOpenCloseSpringAnimator == null && StoryRecorder.this.galleryOpenCloseAnimator == null && ((StoryRecorder.this.qrLinkView == null || !StoryRecorder.this.qrLinkView.inTouch()) && !StoryRecorder.this.recordControl.isTouch() && ((StoryRecorder.this.cameraView == null || !StoryRecorder.this.cameraView.isDualTouch()) && !WindowView.this.scaling && ((StoryRecorder.this.zoomControlView == null || !StoryRecorder.this.zoomControlView.isTouch()) && !StoryRecorder.this.inCheck() && !StoryRecorder.this.takingVideo && !StoryRecorder.this.takingPhoto && StoryRecorder.this.currentPage == 0)))) {
                    z = true;
                    if (!StoryRecorder.this.scrollingX) {
                        WindowView.this.sty += f2;
                        if (!StoryRecorder.this.scrollingY && Math.abs(WindowView.this.sty) >= AndroidUtilities.touchSlop) {
                            if (StoryRecorder.this.collageLayoutView != null) {
                                StoryRecorder.this.collageLayoutView.cancelTouch();
                            }
                            StoryRecorder.this.scrollingY = true;
                        }
                    }
                    if (StoryRecorder.this.scrollingY) {
                        int measuredHeight = (StoryRecorder.this.windowView.getMeasuredHeight() - ((int) (AndroidUtilities.displaySize.y * 0.35f))) - (AndroidUtilities.statusBarHeight + ActionBar.getCurrentActionBarHeight());
                        if (StoryRecorder.this.galleryListView != null) {
                            float f3 = measuredHeight;
                            if (StoryRecorder.this.galleryListView.getTranslationY() >= f3) {
                                WindowView windowView = WindowView.this;
                                windowView.f2234ty = StoryRecorder.this.containerView.getTranslationY1();
                            } else {
                                WindowView windowView2 = WindowView.this;
                                windowView2.f2234ty = StoryRecorder.this.galleryListView.getTranslationY() - f3;
                            }
                            if (StoryRecorder.this.galleryListView != null && StoryRecorder.this.galleryListView.listView.canScrollVertically(-1)) {
                                f2 = Math.max(0.0f, f2);
                            }
                            WindowView.this.f2234ty -= f2;
                            WindowView windowView3 = WindowView.this;
                            windowView3.f2234ty = Math.max(-measuredHeight, windowView3.f2234ty);
                            if (StoryRecorder.this.currentPage == 1) {
                                WindowView windowView4 = WindowView.this;
                                windowView4.f2234ty = Math.max(0.0f, windowView4.f2234ty);
                            }
                            if (WindowView.this.f2234ty >= 0.0f) {
                                StoryRecorder.this.containerView.setTranslationY(WindowView.this.f2234ty);
                                if (StoryRecorder.this.galleryListView != null) {
                                    StoryRecorder.this.galleryListView.setTranslationY(measuredHeight);
                                }
                            } else {
                                StoryRecorder.this.containerView.setTranslationY(0.0f);
                                if (StoryRecorder.this.galleryListView == null) {
                                    StoryRecorder.this.createGalleryListView();
                                }
                                StoryRecorder.this.galleryListView.setTranslationY(measuredHeight + WindowView.this.f2234ty);
                            }
                        }
                    }
                    if (!StoryRecorder.this.scrollingY) {
                        WindowView.this.stx += f;
                        if (!StoryRecorder.this.scrollingX && Math.abs(WindowView.this.stx) >= AndroidUtilities.touchSlop) {
                            if (StoryRecorder.this.collageLayoutView != null) {
                                StoryRecorder.this.collageLayoutView.cancelTouch();
                            }
                            StoryRecorder.this.scrollingX = true;
                        }
                    }
                }
                return z;
            }

            /* JADX WARN: Removed duplicated region for block: B:65:0x0175  */
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                if ((StoryRecorder.this.openCloseAnimator != null && StoryRecorder.this.openCloseAnimator.isRunning()) || ((StoryRecorder.this.qrLinkView != null && StoryRecorder.this.qrLinkView.inTouch()) || StoryRecorder.this.recordControl.isTouch() || ((StoryRecorder.this.cameraView != null && StoryRecorder.this.cameraView.isDualTouch()) || WindowView.this.scaling || ((StoryRecorder.this.zoomControlView != null && StoryRecorder.this.zoomControlView.isTouch()) || StoryRecorder.this.inCheck())))) {
                    return false;
                }
                boolean z = true;
                WindowView.this.flingDetected = true;
                WindowView.this.allowModeScroll = true;
                if (!StoryRecorder.this.scrollingY) {
                    z = false;
                } else if (Math.abs(StoryRecorder.this.containerView.getTranslationY1()) >= AndroidUtilities.m1124dp(1.0f)) {
                    if ((f2 > 0.0f && Math.abs(f2) > 2000.0f && Math.abs(f2) > Math.abs(f)) || StoryRecorder.this.dismissProgress > 0.4f) {
                        StoryRecorder.this.close(true);
                    } else {
                        StoryRecorder.this.animateContainerBack();
                    }
                } else if (StoryRecorder.this.galleryListView != null && !StoryRecorder.this.galleryClosing && StoryRecorder.this.mode != -1) {
                    if (Math.abs(f2) > 200.0f && (!StoryRecorder.this.galleryListView.listView.canScrollVertically(-1) || !StoryRecorder.this.wasGalleryOpen)) {
                        StoryRecorder storyRecorder = StoryRecorder.this;
                        storyRecorder.lambda$animateGalleryListView$74(!storyRecorder.takingVideo && f2 < 0.0f);
                    } else {
                        StoryRecorder storyRecorder2 = StoryRecorder.this;
                        storyRecorder2.lambda$animateGalleryListView$74(!storyRecorder2.takingVideo && StoryRecorder.this.galleryListView.getTranslationY() < ((float) StoryRecorder.this.galleryListView.getPadding()));
                    }
                }
                StoryRecorder.this.galleryClosing = false;
                StoryRecorder.this.scrollingY = false;
                StoryRecorder.this.scrollingX = false;
                if (z && StoryRecorder.this.collageLayoutView != null) {
                    StoryRecorder.this.collageLayoutView.cancelTouch();
                }
                return z;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
            public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
                if (StoryRecorder.this.cameraView == null) {
                    return false;
                }
                StoryRecorder.this.cameraView.allowToTapFocus();
                return true;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
            public boolean onDoubleTap(MotionEvent motionEvent) {
                if (StoryRecorder.this.cameraView == null || StoryRecorder.this.awaitingPlayer || StoryRecorder.this.takingPhoto || !StoryRecorder.this.cameraView.isInited() || StoryRecorder.this.currentPage != 0 || StoryRecorder.this.mode == -1) {
                    return false;
                }
                StoryRecorder.this.cameraView.switchCamera();
                StoryRecorder.this.recordControl.rotateFlip(180.0f);
                StoryRecorder storyRecorder = StoryRecorder.this;
                storyRecorder.saveCameraFace(storyRecorder.cameraView.isFrontface());
                if (StoryRecorder.this.useDisplayFlashlight()) {
                    StoryRecorder.this.flashViews.flashIn(null);
                    return true;
                }
                StoryRecorder.this.flashViews.flashOut();
                return true;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
            public boolean onDoubleTapEvent(MotionEvent motionEvent) {
                if (StoryRecorder.this.cameraView == null) {
                    return false;
                }
                StoryRecorder.this.cameraView.clearTapFocus();
                return false;
            }

            @Override // org.telegram.ui.Components.GestureDetectorFixDoubleTap.OnGestureListener
            public boolean hasDoubleTap(MotionEvent motionEvent) {
                if (StoryRecorder.this.currentPage != 0 || StoryRecorder.this.cameraView == null || StoryRecorder.this.awaitingPlayer || !StoryRecorder.this.cameraView.isInited() || StoryRecorder.this.takingPhoto || StoryRecorder.this.recordControl.isTouch()) {
                    return false;
                }
                return (StoryRecorder.this.qrLinkView == null || !StoryRecorder.this.qrLinkView.inTouch()) && !StoryRecorder.this.isGalleryOpen() && StoryRecorder.this.galleryListViewOpening == null;
            }
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            int size = View.MeasureSpec.getSize(i);
            int size2 = View.MeasureSpec.getSize(i2);
            int i3 = (size - StoryRecorder.this.insetLeft) - StoryRecorder.this.insetRight;
            int i4 = StoryRecorder.this.insetTop;
            int i5 = StoryRecorder.this.insetBottom;
            int iCeil = (int) Math.ceil((i3 / 9.0f) * 16.0f);
            StoryRecorder.this.underControls = AndroidUtilities.m1124dp(48.0f);
            int i6 = size2 - i5;
            if (StoryRecorder.this.underControls + iCeil <= i6) {
                StoryRecorder.this.previewW = i3;
                StoryRecorder.this.previewH = iCeil;
                StoryRecorder storyRecorder = StoryRecorder.this;
                storyRecorder.underStatusBar = storyRecorder.previewH + StoryRecorder.this.underControls > i6 - i4;
            } else {
                StoryRecorder.this.underStatusBar = false;
                StoryRecorder storyRecorder2 = StoryRecorder.this;
                storyRecorder2.previewH = ((size2 - storyRecorder2.underControls) - i5) - i4;
                StoryRecorder.this.previewW = (int) Math.ceil((r4.previewH * 9.0f) / 16.0f);
            }
            StoryRecorder storyRecorder3 = StoryRecorder.this;
            storyRecorder3.underControls = Utilities.clamp((size2 - storyRecorder3.previewH) - (StoryRecorder.this.underStatusBar ? 0 : i4), AndroidUtilities.m1124dp(68.0f), AndroidUtilities.m1124dp(48.0f));
            int systemUiVisibility = getSystemUiVisibility();
            setSystemUiVisibility(StoryRecorder.this.underStatusBar ? systemUiVisibility | 4 : systemUiVisibility & (-5));
            StoryRecorder.this.containerView.measure(View.MeasureSpec.makeMeasureSpec(StoryRecorder.this.previewW, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(StoryRecorder.this.previewH + StoryRecorder.this.underControls, TLObject.FLAG_30));
            StoryRecorder.this.flashViews.backgroundView.measure(View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(size2, TLObject.FLAG_30));
            if (StoryRecorder.this.thanosEffect != null) {
                StoryRecorder.this.thanosEffect.measure(View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(size2, TLObject.FLAG_30));
            }
            if (StoryRecorder.this.changeDayNightView != null) {
                StoryRecorder.this.changeDayNightView.measure(View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(size2, TLObject.FLAG_30));
            }
            StoryRecorder.m19720$$Nest$fgetthemeSheet(StoryRecorder.this);
            if (StoryRecorder.this.galleryListView != null) {
                StoryRecorder.this.galleryListView.measure(View.MeasureSpec.makeMeasureSpec(StoryRecorder.this.previewW, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(size2, TLObject.FLAG_30));
            }
            if (StoryRecorder.this.captionEdit != null) {
                EmojiView emojiView = StoryRecorder.this.captionEdit.editText.getEmojiView();
                if (measureKeyboardHeight() > AndroidUtilities.m1124dp(20.0f)) {
                    this.ignoreLayout = false;
                }
                if (emojiView != null) {
                    emojiView.measure(View.MeasureSpec.makeMeasureSpec(i3, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(emojiView.getLayoutParams().height, TLObject.FLAG_30));
                }
            }
            if (StoryRecorder.this.paintView != null) {
                if (StoryRecorder.this.paintView.emojiView != null) {
                    StoryRecorder.this.paintView.emojiView.measure(View.MeasureSpec.makeMeasureSpec(i3, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(StoryRecorder.this.paintView.emojiView.getLayoutParams().height, TLObject.FLAG_30));
                }
                if (StoryRecorder.this.paintView.reactionLayout != null) {
                    measureChild(StoryRecorder.this.paintView.reactionLayout, i, i2);
                    if (StoryRecorder.this.paintView.reactionLayout.getReactionsWindow() != null) {
                        measureChild(StoryRecorder.this.paintView.reactionLayout.getReactionsWindow().windowView, i, i2);
                    }
                }
            }
            for (int i7 = 0; i7 < getChildCount(); i7++) {
                View childAt = getChildAt(i7);
                if (childAt instanceof DownloadButton.PreparingVideoToast) {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(i3, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(size2, TLObject.FLAG_30));
                } else if (childAt instanceof Bulletin.ParentLayout) {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(i3, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(Math.min(AndroidUtilities.m1124dp(340.0f), size2 - (StoryRecorder.this.underStatusBar ? 0 : i4)), TLObject.FLAG_30));
                }
            }
            if (StoryRecorder.this.cropEditor != null) {
                measureChildExactly(StoryRecorder.this.cropEditor, size, size2);
                measureChildExactly(StoryRecorder.this.cropEditor.contentView, size, size2);
            }
            if (StoryRecorder.this.cropInlineEditor != null) {
                measureChildExactly(StoryRecorder.this.cropInlineEditor, size, size2);
                measureChildExactly(StoryRecorder.this.cropInlineEditor.contentView, size, size2);
            }
            setMeasuredDimension(size, size2);
        }

        private void measureChildExactly(View view, int i, int i2) {
            view.measure(View.MeasureSpec.makeMeasureSpec(i, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(i2, TLObject.FLAG_30));
        }

        @Override // org.telegram.p029ui.Components.SizeNotifierFrameLayout, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            int i5;
            EmojiView emojiView;
            if (this.ignoreLayout) {
                return;
            }
            int i6 = i3 - i;
            int i7 = i4 - i2;
            int i8 = StoryRecorder.this.insetTop;
            int measuredHeight = StoryRecorder.this.navbarContainer.getMeasuredHeight();
            if (StoryRecorder.this.underStatusBar) {
                i8 = 0;
            }
            int i9 = StoryRecorder.this.insetLeft + (((i6 - StoryRecorder.this.insetRight) - StoryRecorder.this.previewW) / 2);
            int i10 = StoryRecorder.this.insetLeft + (((i6 - StoryRecorder.this.insetRight) + StoryRecorder.this.previewW) / 2);
            if (StoryRecorder.this.underStatusBar) {
                i5 = StoryRecorder.this.previewH;
            } else {
                int i11 = (((((i7 - i8) - StoryRecorder.this.insetBottom) - StoryRecorder.this.previewH) - measuredHeight) / 2) + i8;
                if (StoryRecorder.this.openType == 1 && StoryRecorder.this.fromRect.top + StoryRecorder.this.previewH + measuredHeight < i7 - StoryRecorder.this.insetBottom) {
                    i8 = (int) StoryRecorder.this.fromRect.top;
                } else if (i11 - i8 >= AndroidUtilities.m1124dp(40.0f)) {
                    i8 = i11;
                }
                i5 = StoryRecorder.this.previewH;
            }
            StoryRecorder.this.containerView.layout(i9, i8, i10, i5 + i8 + measuredHeight);
            StoryRecorder.this.flashViews.backgroundView.layout(0, 0, i6, i7);
            if (StoryRecorder.this.thanosEffect != null) {
                StoryRecorder.this.thanosEffect.layout(0, 0, i6, i7);
            }
            if (StoryRecorder.this.changeDayNightView != null) {
                StoryRecorder.this.changeDayNightView.layout(0, 0, i6, i7);
            }
            if (StoryRecorder.this.galleryListView != null) {
                StoryRecorder.this.galleryListView.layout((i6 - StoryRecorder.this.galleryListView.getMeasuredWidth()) / 2, 0, (StoryRecorder.this.galleryListView.getMeasuredWidth() + i6) / 2, i7);
            }
            StoryRecorder.m19720$$Nest$fgetthemeSheet(StoryRecorder.this);
            if (StoryRecorder.this.captionEdit != null && (emojiView = StoryRecorder.this.captionEdit.editText.getEmojiView()) != null) {
                emojiView.layout(StoryRecorder.this.insetLeft, (i7 - StoryRecorder.this.insetBottom) - emojiView.getMeasuredHeight(), i6 - StoryRecorder.this.insetRight, i7 - StoryRecorder.this.insetBottom);
            }
            if (StoryRecorder.this.paintView != null) {
                if (StoryRecorder.this.paintView.emojiView != null) {
                    StoryRecorder.this.paintView.emojiView.layout(StoryRecorder.this.insetLeft, (i7 - StoryRecorder.this.insetBottom) - StoryRecorder.this.paintView.emojiView.getMeasuredHeight(), i6 - StoryRecorder.this.insetRight, i7 - StoryRecorder.this.insetBottom);
                }
                if (StoryRecorder.this.paintView.reactionLayout != null) {
                    StoryRecorder.this.paintView.reactionLayout.layout(StoryRecorder.this.insetLeft, StoryRecorder.this.insetTop, StoryRecorder.this.insetLeft + StoryRecorder.this.paintView.reactionLayout.getMeasuredWidth(), StoryRecorder.this.insetTop + StoryRecorder.this.paintView.reactionLayout.getMeasuredHeight());
                    FrameLayout frameLayout = StoryRecorder.this.paintView.reactionLayout.getReactionsWindow() != null ? StoryRecorder.this.paintView.reactionLayout.getReactionsWindow().windowView : null;
                    if (frameLayout != null) {
                        frameLayout.layout(StoryRecorder.this.insetLeft, StoryRecorder.this.insetTop, StoryRecorder.this.insetLeft + frameLayout.getMeasuredWidth(), StoryRecorder.this.insetTop + frameLayout.getMeasuredHeight());
                    }
                }
            }
            if (StoryRecorder.this.cropEditor != null) {
                StoryRecorder.this.cropEditor.controlsLayout.setPadding(0, StoryRecorder.this.insetTop, 0, StoryRecorder.this.insetBottom);
                StoryRecorder.this.cropEditor.layout(0, 0, i6, i7);
                StoryRecorder.this.cropEditor.contentView.layout(0, 0, i6, i7);
            }
            if (StoryRecorder.this.cropInlineEditor != null) {
                StoryRecorder.this.cropInlineEditor.controlsLayout.setPadding(0, StoryRecorder.this.insetTop, 0, StoryRecorder.this.insetBottom);
                StoryRecorder.this.cropInlineEditor.layout(0, 0, i6, i7);
                StoryRecorder.this.cropInlineEditor.contentView.layout(0, 0, i6, i7);
            }
            for (int i12 = 0; i12 < getChildCount(); i12++) {
                View childAt = getChildAt(i12);
                if (childAt instanceof DownloadButton.PreparingVideoToast) {
                    childAt.layout(0, 0, i6, i7);
                } else if (childAt instanceof Bulletin.ParentLayout) {
                    childAt.layout(0, i8, childAt.getMeasuredWidth(), childAt.getMeasuredHeight() + i8);
                }
            }
        }

        public void drawBlurBitmap(Bitmap bitmap, float f) {
            Canvas canvas = new Canvas(bitmap);
            canvas.drawColor(-16777216);
            float width = bitmap.getWidth() / StoryRecorder.this.windowView.getWidth();
            canvas.scale(width, width);
            TextureView textureView = StoryRecorder.this.previewView.getTextureView();
            if (textureView == null) {
                textureView = StoryRecorder.this.previewView.filterTextureView;
            }
            if (textureView != null) {
                canvas.save();
                canvas.translate(StoryRecorder.this.containerView.getX() + StoryRecorder.this.previewContainer.getX(), StoryRecorder.this.containerView.getY() + StoryRecorder.this.previewContainer.getY());
                try {
                    Bitmap bitmap2 = textureView.getBitmap((int) (textureView.getWidth() / f), (int) (textureView.getHeight() / f));
                    float f2 = 1.0f / width;
                    canvas.scale(f2, f2);
                    canvas.drawBitmap(bitmap2, 0.0f, 0.0f, new Paint(2));
                    bitmap2.recycle();
                } catch (Exception unused) {
                }
                canvas.restore();
            }
            canvas.save();
            canvas.translate(StoryRecorder.this.containerView.getX(), StoryRecorder.this.containerView.getY());
            for (int i = 0; i < StoryRecorder.this.containerView.getChildCount(); i++) {
                View childAt = StoryRecorder.this.containerView.getChildAt(i);
                canvas.save();
                canvas.translate(childAt.getX(), childAt.getY());
                if (childAt.getVisibility() == 0) {
                    if (childAt == StoryRecorder.this.previewContainer) {
                        for (int i2 = 0; i2 < StoryRecorder.this.previewContainer.getChildCount(); i2++) {
                            View childAt2 = StoryRecorder.this.previewContainer.getChildAt(i2);
                            if (childAt2 != StoryRecorder.this.previewView && childAt2 != StoryRecorder.this.cameraView && childAt2.getVisibility() == 0) {
                                canvas.save();
                                canvas.translate(childAt2.getX(), childAt2.getY());
                                childAt2.draw(canvas);
                                canvas.restore();
                            }
                        }
                    } else {
                        childAt.draw(canvas);
                    }
                    canvas.restore();
                }
            }
            canvas.restore();
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    private class ContainerView extends FrameLayout {
        private LinearGradient topGradient;
        private final Paint topGradientPaint;
        private float translationY1;
        private float translationY2;

        public ContainerView(Context context) {
            super(context);
            this.topGradientPaint = new Paint(1);
        }

        public void updateBackground() {
            if (StoryRecorder.this.openType == 0) {
                setBackground(Theme.createRoundRectDrawable(AndroidUtilities.m1124dp(12.0f), -16777216));
            } else {
                setBackground(null);
            }
        }

        @Override // android.view.View
        public void invalidate() {
            if (StoryRecorder.this.openCloseAnimator == null || !StoryRecorder.this.openCloseAnimator.isRunning()) {
                super.invalidate();
            }
        }

        public void setTranslationY2(float f) {
            float f2 = this.translationY1;
            this.translationY2 = f;
            super.setTranslationY(f2 + f);
        }

        public float getTranslationY1() {
            return this.translationY1;
        }

        public float getTranslationY2() {
            return this.translationY2;
        }

        @Override // android.view.View
        public void setTranslationY(float f) {
            this.translationY1 = f;
            super.setTranslationY(this.translationY2 + f);
            StoryRecorder.this.dismissProgress = Utilities.clamp((f / getMeasuredHeight()) * 4.0f, 1.0f, 0.0f);
            StoryRecorder.this.checkBackgroundVisibility();
            StoryRecorder.this.windowView.invalidate();
            float fClamp = 1.0f - (Utilities.clamp(getTranslationY() / AndroidUtilities.m1124dp(320.0f), 1.0f, 0.0f) * 0.1f);
            setScaleX(fClamp);
            setScaleY(fClamp);
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            int i5 = StoryRecorder.this.underStatusBar ? StoryRecorder.this.insetTop : 0;
            int i6 = i3 - i;
            int i7 = i4 - i2;
            StoryRecorder.this.previewContainer.layout(0, 0, StoryRecorder.this.previewW, StoryRecorder.this.previewH);
            StoryRecorder.this.previewContainer.setPivotX(StoryRecorder.this.previewW * 0.5f);
            StoryRecorder.this.actionBarContainer.layout(0, i5, StoryRecorder.this.previewW, StoryRecorder.this.actionBarContainer.getMeasuredHeight() + i5);
            StoryRecorder.this.controlContainer.layout(0, StoryRecorder.this.previewH - StoryRecorder.this.controlContainer.getMeasuredHeight(), StoryRecorder.this.previewW, StoryRecorder.this.previewH);
            StoryRecorder.this.navbarContainer.layout(0, StoryRecorder.this.previewH, StoryRecorder.this.previewW, StoryRecorder.this.previewH + StoryRecorder.this.navbarContainer.getMeasuredHeight());
            StoryRecorder.this.captionContainer.layout(0, 0, StoryRecorder.this.previewW, StoryRecorder.this.previewH);
            if (StoryRecorder.this.captionEditOverlay != null) {
                StoryRecorder.this.captionEditOverlay.layout(0, 0, i6, i7);
            }
            StoryRecorder.this.flashViews.foregroundView.layout(0, 0, i6, i7);
            if (StoryRecorder.this.captionEdit.mentionContainer != null) {
                StoryRecorder.this.captionEdit.mentionContainer.layout(0, 0, StoryRecorder.this.previewW, StoryRecorder.this.previewH);
                StoryRecorder.this.captionEdit.updateMentionsLayoutPosition();
            }
            if (StoryRecorder.this.photoFilterView != null) {
                StoryRecorder.this.photoFilterView.layout(0, 0, StoryRecorder.this.photoFilterView.getMeasuredWidth(), StoryRecorder.this.photoFilterView.getMeasuredHeight());
            }
            if (StoryRecorder.this.paintView != null) {
                StoryRecorder.this.paintView.layout(0, 0, StoryRecorder.this.paintView.getMeasuredWidth(), StoryRecorder.this.paintView.getMeasuredHeight());
            }
            for (int i8 = 0; i8 < getChildCount(); i8++) {
                View childAt = getChildAt(i8);
                if (childAt instanceof ItemOptions.DimView) {
                    childAt.layout(0, 0, i6, i7);
                }
            }
            setPivotX(i6 / 2.0f);
            setPivotY((-i7) * 0.2f);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            int size = View.MeasureSpec.getSize(i);
            int size2 = View.MeasureSpec.getSize(i2);
            measureChildExactly(StoryRecorder.this.previewContainer, StoryRecorder.this.previewW, StoryRecorder.this.previewH);
            StoryRecorder.this.applyFilterMatrix();
            measureChildExactly(StoryRecorder.this.actionBarContainer, StoryRecorder.this.previewW, AndroidUtilities.m1124dp(150.0f));
            measureChildExactly(StoryRecorder.this.controlContainer, StoryRecorder.this.previewW, AndroidUtilities.m1124dp(220.0f));
            measureChildExactly(StoryRecorder.this.navbarContainer, StoryRecorder.this.previewW, StoryRecorder.this.underControls);
            measureChildExactly(StoryRecorder.this.captionContainer, StoryRecorder.this.previewW, StoryRecorder.this.previewH);
            measureChildExactly(StoryRecorder.this.flashViews.foregroundView, size, size2);
            if (StoryRecorder.this.captionEditOverlay != null) {
                measureChildExactly(StoryRecorder.this.captionEditOverlay, size, size2);
            }
            if (StoryRecorder.this.captionEdit.mentionContainer != null) {
                measureChildExactly(StoryRecorder.this.captionEdit.mentionContainer, StoryRecorder.this.previewW, StoryRecorder.this.previewH);
            }
            if (StoryRecorder.this.photoFilterView != null) {
                measureChildExactly(StoryRecorder.this.photoFilterView, size, size2);
            }
            if (StoryRecorder.this.paintView != null) {
                measureChildExactly(StoryRecorder.this.paintView, size, size2);
            }
            for (int i3 = 0; i3 < getChildCount(); i3++) {
                View childAt = getChildAt(i3);
                if (childAt instanceof ItemOptions.DimView) {
                    measureChildExactly(childAt, size, size2);
                }
            }
            setMeasuredDimension(size, size2);
        }

        private void measureChildExactly(View view, int i, int i2) {
            view.measure(View.MeasureSpec.makeMeasureSpec(i, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(i2, TLObject.FLAG_30));
        }

        @Override // android.view.ViewGroup
        protected boolean drawChild(Canvas canvas, View view, long j) {
            boolean zDrawChild = super.drawChild(canvas, view, j);
            if (view == StoryRecorder.this.previewContainer) {
                float f = StoryRecorder.this.underStatusBar ? AndroidUtilities.statusBarHeight : 0.0f;
                if (this.topGradient == null) {
                    LinearGradient linearGradient = new LinearGradient(0.0f, f, 0.0f, f + AndroidUtilities.m1124dp(72.0f), new int[]{TLObject.FLAG_30, 0}, new float[]{f / (AndroidUtilities.m1124dp(72.0f) + f), 1.0f}, Shader.TileMode.CLAMP);
                    this.topGradient = linearGradient;
                    this.topGradientPaint.setShader(linearGradient);
                }
                this.topGradientPaint.setAlpha(255);
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(0.0f, 0.0f, getWidth(), AndroidUtilities.m1124dp(84.0f) + f);
                canvas.drawRoundRect(rectF, AndroidUtilities.m1124dp(12.0f), AndroidUtilities.m1124dp(12.0f), this.topGradientPaint);
            }
            return zDrawChild;
        }
    }

    public Context getContext() {
        return this.activity;
    }

    private void initViews() {
        final Context context = getContext();
        WindowView windowView = new WindowView(context);
        this.windowView = windowView;
        windowView.setFitsSystemWindows(true);
        this.windowView.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.2
            @Override // android.view.View.OnApplyWindowInsetsListener
            public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                Insets insets = WindowInsetsCompat.toWindowInsetsCompat(windowInsets, view).getInsets(WindowInsetsCompat.Type.displayCutout() | WindowInsetsCompat.Type.systemBars());
                StoryRecorder.this.insetTop = Math.max(insets.top, windowInsets.getStableInsetTop());
                StoryRecorder.this.insetBottom = Math.max(insets.bottom, windowInsets.getStableInsetBottom());
                StoryRecorder.this.insetLeft = Math.max(insets.left, windowInsets.getStableInsetLeft());
                StoryRecorder.this.insetRight = Math.max(insets.right, windowInsets.getStableInsetRight());
                StoryRecorder storyRecorder = StoryRecorder.this;
                storyRecorder.insetTop = Math.max(storyRecorder.insetTop, AndroidUtilities.statusBarHeight);
                StoryRecorder.this.windowView.requestLayout();
                if (Build.VERSION.SDK_INT >= 30) {
                    return WindowInsets.CONSUMED;
                }
                return windowInsets.consumeSystemWindowInsets();
            }
        });
        this.windowView.setFocusable(true);
        FlashViews flashViews = new FlashViews(context, this.windowManager, this.windowView, this.windowLayoutParams);
        this.flashViews = flashViews;
        flashViews.add(new FlashViews.Invertable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.3
            @Override // org.telegram.ui.Stories.recorder.FlashViews.Invertable
            public void invalidate() {
            }

            @Override // org.telegram.ui.Stories.recorder.FlashViews.Invertable
            public void setInvert(float f) {
                AndroidUtilities.setLightNavigationBar(StoryRecorder.this.windowView, f > 0.5f);
                AndroidUtilities.setLightStatusBar(StoryRecorder.this.windowView, f > 0.5f);
            }
        });
        this.windowView.addView(this.flashViews.backgroundView, new ViewGroup.LayoutParams(-1, -1));
        WindowView windowView2 = this.windowView;
        ContainerView containerView = new ContainerView(context);
        this.containerView = containerView;
        windowView2.addView(containerView);
        ContainerView containerView2 = this.containerView;
        FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.4
            private RenderNode renderNode;
            private final Rect leftExclRect = new Rect();
            private final Rect rightExclRect = new Rect();

            @Override // android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                if (StoryRecorder.this.previewTouchable != null) {
                    StoryRecorder.this.previewTouchable.onTouch(motionEvent);
                    return true;
                }
                return super.onTouchEvent(motionEvent);
            }

            @Override // android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i, int i2) {
                super.onMeasure(i, i2);
                if (StoryRecorder.this.photoFilterViewCurvesControl != null) {
                    StoryRecorder.this.photoFilterViewCurvesControl.setActualArea(0.0f, 0.0f, StoryRecorder.this.photoFilterViewCurvesControl.getMeasuredWidth(), StoryRecorder.this.photoFilterViewCurvesControl.getMeasuredHeight());
                }
                if (StoryRecorder.this.photoFilterViewBlurControl != null) {
                    StoryRecorder.this.photoFilterViewBlurControl.setActualAreaSize(StoryRecorder.this.photoFilterViewBlurControl.getMeasuredWidth(), StoryRecorder.this.photoFilterViewBlurControl.getMeasuredHeight());
                }
            }

            @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
                super.onLayout(z, i, i2, i3, i4);
                if (Build.VERSION.SDK_INT >= 29) {
                    int i5 = i3 - i;
                    int i6 = i4 - i2;
                    this.leftExclRect.set(0, i6 - AndroidUtilities.m1124dp(120.0f), AndroidUtilities.m1124dp(40.0f), i6);
                    this.rightExclRect.set(i5 - AndroidUtilities.m1124dp(40.0f), i6 - AndroidUtilities.m1124dp(120.0f), i5, i6);
                    setSystemGestureExclusionRects(Arrays.asList(this.leftExclRect, this.rightExclRect));
                }
            }

            @Override // android.view.View
            public void invalidate() {
                if (StoryRecorder.this.openCloseAnimator == null || !StoryRecorder.this.openCloseAnimator.isRunning()) {
                    super.invalidate();
                }
            }

            @Override // android.view.ViewGroup, android.view.View
            protected void dispatchDraw(Canvas canvas) {
                boolean z;
                Canvas canvasBeginRecording;
                int i = Build.VERSION.SDK_INT;
                if (i < 31 || !canvas.isHardwareAccelerated() || AndroidUtilities.makingGlobalBlurBitmap) {
                    z = false;
                    canvasBeginRecording = canvas;
                } else {
                    if (this.renderNode == null) {
                        this.renderNode = BotFullscreenButtons$$ExternalSyntheticApiModelOutline0.m1129m("StoryRecorder.PreviewView");
                    }
                    this.renderNode.setPosition(0, 0, getWidth(), getHeight());
                    canvasBeginRecording = this.renderNode.beginRecording();
                    z = true;
                }
                super.dispatchDraw(canvasBeginRecording);
                if (!z || i < 31) {
                    return;
                }
                this.renderNode.endRecording();
                if (StoryRecorder.this.blurManager != null) {
                    StoryRecorder.this.blurManager.setRenderNode(this, this.renderNode, -14737633);
                }
                canvas.drawRenderNode(this.renderNode);
            }
        };
        this.previewContainer = frameLayout;
        containerView2.addView(frameLayout);
        this.containerView.addView(this.flashViews.foregroundView, new ViewGroup.LayoutParams(-1, -1));
        this.blurManager = new BlurringShader.BlurManager(this.previewContainer);
        this.videoTextureHolder = new PreviewView.TextureViewHolder();
        ContainerView containerView3 = this.containerView;
        FrameLayout frameLayout2 = new FrameLayout(context);
        this.actionBarContainer = frameLayout2;
        containerView3.addView(frameLayout2);
        ContainerView containerView4 = this.containerView;
        FrameLayout frameLayout3 = new FrameLayout(context);
        this.controlContainer = frameLayout3;
        containerView4.addView(frameLayout3);
        ContainerView containerView5 = this.containerView;
        FrameLayout frameLayout4 = new FrameLayout(context) { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.5
            @Override // android.view.View
            public void setTranslationY(float f) {
                if (getTranslationY() == f || StoryRecorder.this.captionEdit == null) {
                    return;
                }
                super.setTranslationY(f);
                StoryRecorder.this.captionEdit.updateMentionsLayoutPosition();
            }
        };
        this.captionContainer = frameLayout4;
        containerView5.addView(frameLayout4);
        this.captionContainer.setVisibility(8);
        this.captionContainer.setAlpha(0.0f);
        ContainerView containerView6 = this.containerView;
        FrameLayout frameLayout5 = new FrameLayout(context);
        this.navbarContainer = frameLayout5;
        containerView6.addView(frameLayout5);
        Bulletin.addDelegate(this.windowView, new Bulletin.Delegate() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.6
            @Override // org.telegram.ui.Components.Bulletin.Delegate
            public /* synthetic */ boolean allowLayoutChanges() {
                return Bulletin.Delegate.CC.$default$allowLayoutChanges(this);
            }

            @Override // org.telegram.ui.Components.Bulletin.Delegate
            public /* synthetic */ boolean bottomOffsetAnimated() {
                return Bulletin.Delegate.CC.$default$bottomOffsetAnimated(this);
            }

            @Override // org.telegram.ui.Components.Bulletin.Delegate
            public boolean clipWithGradient(int i) {
                return true;
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
            public int getTopOffset(int i) {
                return AndroidUtilities.m1124dp(56.0f);
            }

            @Override // org.telegram.ui.Components.Bulletin.Delegate
            public int getBottomOffset(int i) {
                return Bulletin.Delegate.CC.$default$getBottomOffset(this, i);
            }
        });
        CollageLayoutView2 collageLayoutView2 = new CollageLayoutView2(context, this.blurManager, this.containerView, this.resourcesProvider) { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.7
            @Override // org.telegram.p029ui.Stories.recorder.CollageLayoutView2
            protected void onLayoutUpdate(CollageLayout collageLayout) {
                StoryRecorder.this.collageListView.setVisible(false, true);
                if (collageLayout != null && collageLayout.parts.size() > 1) {
                    CollageLayoutButton collageLayoutButton = StoryRecorder.this.collageButton;
                    StoryRecorder.this.lastCollageLayout = collageLayout;
                    collageLayoutButton.setIcon((Drawable) new CollageLayoutButton.CollageLayoutDrawable(collageLayout), true);
                    StoryRecorder.this.collageButton.setSelected(true, true);
                } else {
                    StoryRecorder.this.collageButton.setSelected(false, true);
                }
                StoryRecorder.this.updateActionBarButtons(true);
                if (StoryRecorder.this.galleryListView != null) {
                    StoryRecorder.this.galleryListView.setMultipleOnClick(StoryRecorder.this.collageLayoutView.hasLayout());
                    StoryRecorder.this.galleryListView.setMaxCount(Math.min(10, CollageLayout.getMaxCount() - StoryRecorder.this.collageLayoutView.getFilledCount()));
                }
            }
        };
        this.collageLayoutView = collageLayoutView2;
        final WindowView windowView3 = this.windowView;
        Objects.requireNonNull(windowView3);
        collageLayoutView2.setCancelGestures(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda18
            @Override // java.lang.Runnable
            public final void run() {
                windowView3.cancelGestures();
            }
        });
        this.collageLayoutView.setResetState(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda29
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$initViews$5();
            }
        });
        this.previewContainer.addView(this.collageLayoutView, LayoutHelper.createFrame(-1, -1, 119));
        this.collageLayoutView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda40
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$initViews$6(view);
            }
        });
        FrameLayout frameLayout6 = this.previewContainer;
        int i = this.openType;
        frameLayout6.setBackgroundColor((i == 1 || i == 0) ? 0 : -14737633);
        this.previewContainer.setOutlineProvider(new ViewOutlineProvider() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.8
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                outline.setRoundRect(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight(), AndroidUtilities.m1124dp(12.0f));
            }
        });
        this.previewContainer.setClipToOutline(true);
        this.photoFilterEnhanceView = new PhotoFilterView.EnhanceView(context, new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda47
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.createFilterPhotoView();
            }
        });
        PreviewView previewView = new PreviewView(context, this.blurManager, this.videoTextureHolder) { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.9
            @Override // org.telegram.p029ui.Stories.recorder.PreviewView
            public boolean additionalTouchEvent(MotionEvent motionEvent) {
                if (StoryRecorder.this.captionEdit == null || !StoryRecorder.this.captionEdit.isRecording()) {
                    return StoryRecorder.this.photoFilterEnhanceView.onTouch(motionEvent);
                }
                return false;
            }

            @Override // org.telegram.p029ui.Stories.recorder.PreviewView
            public void applyMatrix() {
                super.applyMatrix();
                StoryRecorder.this.applyFilterMatrix();
            }

            @Override // org.telegram.p029ui.Stories.recorder.PreviewView
            public void onEntityDraggedTop(boolean z) {
                StoryRecorder.this.previewHighlight.show(true, z, StoryRecorder.this.actionBarContainer);
            }

            @Override // org.telegram.p029ui.Stories.recorder.PreviewView
            public void onEntityDraggedBottom(boolean z) {
                StoryRecorder.this.previewHighlight.updateCaption(StoryRecorder.this.captionEdit.getText());
            }

            @Override // org.telegram.p029ui.Stories.recorder.PreviewView
            public void onRoundSelectChange(boolean z) {
                if (StoryRecorder.this.paintView == null) {
                    return;
                }
                if (!z && (StoryRecorder.this.paintView.getSelectedEntity() instanceof RoundView)) {
                    StoryRecorder.this.paintView.lambda$createRound$61(null);
                } else {
                    if (!z || (StoryRecorder.this.paintView.getSelectedEntity() instanceof RoundView) || StoryRecorder.this.paintView.findRoundView() == null) {
                        return;
                    }
                    StoryRecorder.this.paintView.lambda$createRound$61(StoryRecorder.this.paintView.findRoundView());
                }
            }

            @Override // org.telegram.p029ui.Stories.recorder.PreviewView
            public void onRoundRemove() {
                if (StoryRecorder.this.previewView != null) {
                    StoryRecorder.this.previewView.setupRound(null, null, true);
                }
                if (StoryRecorder.this.paintView != null) {
                    StoryRecorder.this.paintView.deleteRound();
                }
                if (StoryRecorder.this.captionEdit != null) {
                    StoryRecorder.this.captionEdit.setHasRoundVideo(false);
                }
                if (StoryRecorder.this.outputEntry != null) {
                    if (StoryRecorder.this.outputEntry.round != null) {
                        try {
                            StoryRecorder.this.outputEntry.round.delete();
                        } catch (Exception unused) {
                        }
                        StoryRecorder.this.outputEntry.round = null;
                    }
                    if (StoryRecorder.this.outputEntry.roundThumb != null) {
                        try {
                            new File(StoryRecorder.this.outputEntry.roundThumb).delete();
                        } catch (Exception unused2) {
                        }
                        StoryRecorder.this.outputEntry.roundThumb = null;
                    }
                }
            }

            @Override // org.telegram.p029ui.Stories.recorder.PreviewView
            protected void invalidateTextureViewHolder() {
                if (StoryRecorder.this.outputEntry == null || !StoryRecorder.this.outputEntry.isRepostMessage || !StoryRecorder.this.outputEntry.isVideo || StoryRecorder.this.paintView == null || StoryRecorder.this.paintView.entitiesView == null) {
                    return;
                }
                for (int i2 = 0; i2 < StoryRecorder.this.paintView.entitiesView.getChildCount(); i2++) {
                    View childAt = StoryRecorder.this.paintView.entitiesView.getChildAt(i2);
                    if (childAt instanceof MessageEntityView) {
                        ((MessageEntityView) childAt).invalidateAll();
                    }
                }
            }

            @Override // org.telegram.p029ui.Stories.recorder.PreviewView
            public void onAudioChanged() {
                if (StoryRecorder.this.paintView != null) {
                    StoryRecorder.this.paintView.setHasAudio((StoryRecorder.this.outputEntry == null || StoryRecorder.this.outputEntry.audioPath == null) ? false : true);
                }
            }
        };
        this.previewView = previewView;
        previewView.setCollageView(this.collageLayoutView);
        this.previewView.invalidateBlur = new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda48
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.invalidateBlur();
            }
        };
        this.previewView.setOnTapListener(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda49
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$initViews$7();
            }
        });
        this.previewView.setVisibility(8);
        this.previewView.whenError(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda50
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$initViews$8();
            }
        });
        this.previewContainer.addView(this.previewView, LayoutHelper.createFrame(-1, -1, 119));
        this.previewContainer.addView(this.photoFilterEnhanceView, LayoutHelper.createFrame(-1, -1, 119));
        WindowView windowView4 = this.windowView;
        C715110 c715110 = new C715110(context, windowView4, windowView4, this.containerView, this.resourcesProvider, this.blurManager);
        this.captionEdit = c715110;
        c715110.setAccount(this.currentAccount);
        this.captionEdit.setUiBlurBitmap(new Utilities.CallbackVoidReturn() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda51
            @Override // org.telegram.messenger.Utilities.CallbackVoidReturn
            public final Object run() {
                return this.f$0.getUiBlurBitmap();
            }
        });
        Bulletin.addDelegate(this.captionContainer, new Bulletin.Delegate() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.11
            @Override // org.telegram.ui.Components.Bulletin.Delegate
            public /* synthetic */ boolean allowLayoutChanges() {
                return Bulletin.Delegate.CC.$default$allowLayoutChanges(this);
            }

            @Override // org.telegram.ui.Components.Bulletin.Delegate
            public /* synthetic */ boolean bottomOffsetAnimated() {
                return Bulletin.Delegate.CC.$default$bottomOffsetAnimated(this);
            }

            @Override // org.telegram.ui.Components.Bulletin.Delegate
            public /* synthetic */ boolean clipWithGradient(int i2) {
                return Bulletin.Delegate.CC.$default$clipWithGradient(this, i2);
            }

            @Override // org.telegram.ui.Components.Bulletin.Delegate
            public /* synthetic */ int getTopOffset(int i2) {
                return Bulletin.Delegate.CC.$default$getTopOffset(this, i2);
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
            public int getBottomOffset(int i2) {
                return StoryRecorder.this.captionEdit.getEditTextHeight() + AndroidUtilities.m1124dp(12.0f);
            }
        });
        this.captionEdit.setOnHeightUpdate(new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda52
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$initViews$9((Integer) obj);
            }
        });
        this.captionEdit.setOnPeriodUpdate(new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda53
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$initViews$10((Integer) obj);
            }
        });
        long j = this.selectedDialogId;
        if (j != 0) {
            this.captionEdit.setDialogId(j);
        }
        this.captionEdit.setOnPremiumHint(new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda19
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.showPremiumPeriodBulletin(((Integer) obj).intValue());
            }
        });
        this.captionEdit.setOnKeyboardOpen(new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda20
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$initViews$11((Boolean) obj);
            }
        });
        View view = new View(context) { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.12
            @Override // android.view.View
            protected void dispatchDraw(Canvas canvas) {
                canvas.save();
                canvas.translate(StoryRecorder.this.captionContainer.getX() + StoryRecorder.this.captionEdit.getX(), StoryRecorder.this.captionContainer.getY() + StoryRecorder.this.captionEdit.getY());
                StoryRecorder.this.captionEdit.drawOver2(canvas, StoryRecorder.this.captionEdit.getBounds(), StoryRecorder.this.captionEdit.getOver2Alpha());
                canvas.restore();
            }
        };
        this.captionEditOverlay = view;
        this.containerView.addView(view);
        TimelineView timelineView = new TimelineView(context, this.containerView, this.previewContainer, this.resourcesProvider, this.blurManager);
        this.timelineView = timelineView;
        timelineView.setOnTimelineClick(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda21
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$initViews$12();
            }
        });
        this.timelineView.setOnHeightChange(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda22
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$initViews$13();
            }
        });
        this.previewView.setVideoTimelineView(this.timelineView);
        this.timelineView.setVisibility(8);
        this.timelineView.setAlpha(0.0f);
        this.timelineView.setMaxCount(1);
        FrameLayout frameLayout7 = new FrameLayout(context);
        this.videoTimelineContainerView = frameLayout7;
        frameLayout7.addView(this.timelineView, LayoutHelper.createFrame(-1, TimelineView.heightDp(), 87, 0.0f, 0.0f, 0.0f, 0.0f));
        VideoTimeView videoTimeView = new VideoTimeView(context);
        this.videoTimeView = videoTimeView;
        videoTimeView.setVisibility(8);
        this.videoTimeView.show(false, false);
        this.videoTimelineContainerView.addView(this.videoTimeView, LayoutHelper.createFrame(-1, 25.0f, 55, 0.0f, 0.0f, 0.0f, 0.0f));
        this.captionContainer.addView(this.videoTimelineContainerView, LayoutHelper.createFrame(-1, TimelineView.heightDp() + 25, 87, 0.0f, 0.0f, 0.0f, 68.0f));
        this.captionContainer.addView(this.captionEdit, LayoutHelper.createFrame(-1, -1.0f, 87, 0.0f, 200.0f, 0.0f, 0.0f));
        this.collageLayoutView.setTimelineView(this.timelineView);
        this.collageLayoutView.setPreviewView(this.previewView);
        TimelineView timelineView2 = new TimelineView(context, this.containerView, this.previewContainer, this.resourcesProvider, this.blurManager);
        this.coverTimelineView = timelineView2;
        timelineView2.setCover();
        this.coverTimelineView.setVisibility(8);
        this.coverTimelineView.setAlpha(0.0f);
        this.captionContainer.addView(this.coverTimelineView, LayoutHelper.createFrame(-1, TimelineView.heightDp(), 87, 0.0f, 0.0f, 0.0f, 6.0f));
        MultipleStoriesSelector multipleStoriesSelector = new MultipleStoriesSelector(context, this.resourcesProvider, this.blurManager) { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.13
            private final Path path = new Path();

            @Override // org.telegram.p029ui.Stories.recorder.MultipleStoriesSelector
            protected boolean customBlur() {
                return StoryRecorder.this.blurManager.hasRenderNode();
            }

            @Override // org.telegram.p029ui.Stories.recorder.MultipleStoriesSelector
            protected void drawBlur(BlurringShader.StoryBlurDrawer storyBlurDrawer, Canvas canvas, RectF rectF, float f, boolean z, float f2, float f3, boolean z2, float f4) {
                if (canvas.isHardwareAccelerated()) {
                    canvas.save();
                    this.path.rewind();
                    this.path.addRoundRect(rectF, f, f, Path.Direction.CW);
                    canvas.clipPath(this.path);
                    canvas.translate(f2, f3);
                    storyBlurDrawer.drawRect(canvas, 0.0f, 0.0f, f4);
                    canvas.restore();
                }
            }

            @Override // org.telegram.p029ui.Stories.recorder.MultipleStoriesSelector
            protected void onSwitchToStory(int i2, StoryEntry storyEntry) {
                showList(false, true);
                if (storyEntry != StoryRecorder.this.outputEntry) {
                    StoryRecorder.this.switchTo(i2);
                }
            }
        };
        this.storiesSelector = multipleStoriesSelector;
        multipleStoriesSelector.setVisibility(8);
        this.captionContainer.addView(this.storiesSelector, LayoutHelper.createFrame(-1, -2, 85));
        FlashViews.ImageViewInvertable imageViewInvertable = new FlashViews.ImageViewInvertable(context);
        this.backButton = imageViewInvertable;
        imageViewInvertable.setContentDescription(LocaleController.getString(C2888R.string.AccDescrGoBack));
        FlashViews.ImageViewInvertable imageViewInvertable2 = this.backButton;
        ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER;
        imageViewInvertable2.setScaleType(scaleType);
        this.backButton.setImageResource(C2888R.drawable.msg_photo_back);
        FlashViews.ImageViewInvertable imageViewInvertable3 = this.backButton;
        PorterDuff.Mode mode = PorterDuff.Mode.MULTIPLY;
        imageViewInvertable3.setColorFilter(new PorterDuffColorFilter(-1, mode));
        this.backButton.setBackground(Theme.createSelectorDrawable(553648127));
        this.backButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda23
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$initViews$14(view2);
            }
        });
        this.actionBarContainer.addView(this.backButton, LayoutHelper.createFrame(56, 56, 51));
        this.flashViews.add(this.backButton);
        SelectPeerView selectPeerView = new SelectPeerView(context, this.currentAccount);
        this.livePeerView = selectPeerView;
        selectPeerView.setShowing(false, false);
        this.livePeerView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda24
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$initViews$16(context, view2);
            }
        });
        this.actionBarContainer.addView(this.livePeerView, LayoutHelper.createFrame(-1, 56.0f, 51, 50.0f, 0.0f, 50.0f, 0.0f));
        SimpleTextView simpleTextView = new SimpleTextView(context);
        this.titleTextView = simpleTextView;
        simpleTextView.setTextSize(20);
        this.titleTextView.setGravity(19);
        this.titleTextView.setTextColor(-1);
        this.titleTextView.setTypeface(AndroidUtilities.bold());
        this.titleTextView.setText(LocaleController.getString(C2888R.string.RecorderNewStory));
        this.titleTextView.getPaint().setShadowLayer(AndroidUtilities.dpf2(1.0f), 0.0f, 1.0f, TLObject.FLAG_30);
        this.titleTextView.setAlpha(0.0f);
        this.titleTextView.setVisibility(8);
        this.titleTextView.setEllipsizeByGradient(true);
        this.titleTextView.setRightPadding(AndroidUtilities.m1124dp(144.0f));
        this.actionBarContainer.addView(this.titleTextView, LayoutHelper.createFrame(-1, 56.0f, 55, 71.0f, 0.0f, 0.0f, 0.0f));
        LinearLayout linearLayout = new LinearLayout(context);
        this.actionBarButtons = linearLayout;
        linearLayout.setOrientation(0);
        this.actionBarButtons.setGravity(5);
        this.actionBarContainer.addView(this.actionBarButtons, LayoutHelper.createFrame(-1, 56.0f, 7, 0.0f, 0.0f, 8.0f, 0.0f));
        this.downloadButton = new DownloadButton(context, new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda25
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$initViews$17((Runnable) obj);
            }
        }, this.currentAccount, this.windowView, this.resourcesProvider);
        HintView2 animatedTextHacks = new HintView2(this.activity, 1).setJoint(1.0f, -71.0f).setDuration(2000L).setBounce(false).setAnimatedTextHacks(true, true, false);
        this.muteHint = animatedTextHacks;
        animatedTextHacks.setPadding(AndroidUtilities.m1124dp(8.0f), 0, AndroidUtilities.m1124dp(8.0f), 0);
        this.actionBarContainer.addView(this.muteHint, LayoutHelper.createFrame(-1, -1.0f, 48, 0.0f, 52.0f, 0.0f, 0.0f));
        RLottieImageView rLottieImageView = new RLottieImageView(context);
        this.muteButton = rLottieImageView;
        rLottieImageView.setScaleType(scaleType);
        RLottieImageView rLottieImageView2 = this.muteButton;
        StoryEntry storyEntry = this.outputEntry;
        rLottieImageView2.setImageResource((storyEntry == null || !storyEntry.muted) ? C2888R.drawable.media_mute : C2888R.drawable.media_unmute);
        this.muteButton.setColorFilter(new PorterDuffColorFilter(-1, mode));
        this.muteButton.setBackground(Theme.createSelectorDrawable(553648127));
        this.muteButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda26
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$initViews$18(view2);
            }
        });
        this.muteButton.setVisibility(8);
        this.muteButton.setAlpha(0.0f);
        PlayPauseButton playPauseButton = new PlayPauseButton(context);
        this.playButton = playPauseButton;
        playPauseButton.setBackground(Theme.createSelectorDrawable(553648127));
        this.playButton.setVisibility(8);
        this.playButton.setAlpha(0.0f);
        this.playButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda27
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$initViews$19(view2);
            }
        });
        this.actionBarButtons.addView(this.playButton, LayoutHelper.createLinear(46, 56, 53));
        this.actionBarButtons.addView(this.muteButton, LayoutHelper.createLinear(46, 56, 53));
        this.actionBarButtons.addView(this.downloadButton, LayoutHelper.createFrame(46, 56, 53));
        ToggleButton2 toggleButton2 = new ToggleButton2(context);
        this.flashButton = toggleButton2;
        toggleButton2.setBackground(Theme.createSelectorDrawable(553648127));
        this.flashButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda28
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$initViews$20(view2);
            }
        });
        this.flashButton.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda30
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view2) {
                return this.f$0.lambda$initViews$24(view2);
            }
        });
        this.flashButton.setVisibility(8);
        this.flashButton.setAlpha(0.0f);
        this.flashViews.add(this.flashButton);
        this.actionBarContainer.addView(this.flashButton, LayoutHelper.createFrame(56, 56, 53));
        ToggleButton toggleButton = new ToggleButton(context, C2888R.drawable.media_dual_camera2_shadow, C2888R.drawable.media_dual_camera2);
        this.dualButton = toggleButton;
        toggleButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda31
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$initViews$25(view2);
            }
        });
        boolean zDualAvailableStatic = DualCameraView.dualAvailableStatic(context);
        this.dualButton.setVisibility(zDualAvailableStatic ? 0 : 8);
        this.dualButton.setAlpha(zDualAvailableStatic ? 1.0f : 0.0f);
        this.flashViews.add(this.dualButton);
        this.actionBarContainer.addView(this.dualButton, LayoutHelper.createFrame(56, 56, 53));
        CollageLayoutButton collageLayoutButton = new CollageLayoutButton(context);
        this.collageButton = collageLayoutButton;
        collageLayoutButton.setBackground(Theme.createSelectorDrawable(553648127));
        if (this.lastCollageLayout == null) {
            this.lastCollageLayout = (CollageLayout) CollageLayout.getLayouts().get(6);
        }
        this.collageButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda32
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$initViews$26(view2);
            }
        });
        this.collageButton.setIcon((Drawable) new CollageLayoutButton.CollageLayoutDrawable(this.lastCollageLayout), false);
        this.collageButton.setSelected(false);
        this.collageButton.setVisibility(0);
        this.collageButton.setAlpha(1.0f);
        this.flashViews.add(this.collageButton);
        this.actionBarContainer.addView(this.collageButton, LayoutHelper.createFrame(56, 56, 53));
        ToggleButton2 toggleButton22 = new ToggleButton2(context);
        this.collageRemoveButton = toggleButton22;
        toggleButton22.setBackground(Theme.createSelectorDrawable(553648127));
        this.collageRemoveButton.setIcon((Drawable) new CollageLayoutButton.CollageLayoutDrawable(new CollageLayout("../../.."), true), false);
        this.collageRemoveButton.setVisibility(8);
        this.collageRemoveButton.setAlpha(0.0f);
        this.collageRemoveButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda33
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$initViews$27(view2);
            }
        });
        this.flashViews.add(this.collageRemoveButton);
        this.actionBarContainer.addView(this.collageRemoveButton, LayoutHelper.createFrame(56, 56, 53));
        CollageLayoutButton.CollageLayoutListView collageLayoutListView = new CollageLayoutButton.CollageLayoutListView(context, this.flashViews);
        this.collageListView = collageLayoutListView;
        collageLayoutListView.listView.scrollToPosition(6);
        this.collageListView.setSelected((CollageLayout) null);
        this.collageListView.setOnLayoutClick(new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda34
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$initViews$28((CollageLayout) obj);
            }
        });
        this.actionBarContainer.addView(this.collageListView, LayoutHelper.createFrame(-1, 56, 53));
        HintView2 onHiddenListener = new HintView2(this.activity, 1).setJoint(1.0f, -20.0f).setDuration(5000L).setCloseButton(true).setText(LocaleController.getString(C2888R.string.StoryCameraDualHint)).setOnHiddenListener(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda35
            @Override // java.lang.Runnable
            public final void run() {
                MessagesController.getGlobalMainSettings().edit().putInt("storydualhint", MessagesController.getGlobalMainSettings().getInt("storydualhint", 0) + 1).apply();
            }
        });
        this.dualHint = onHiddenListener;
        onHiddenListener.setPadding(AndroidUtilities.m1124dp(8.0f), 0, AndroidUtilities.m1124dp(8.0f), 0);
        this.actionBarContainer.addView(this.dualHint, LayoutHelper.createFrame(-1, -1.0f, 48, 0.0f, 52.0f, 0.0f, 0.0f));
        HintView2 multilineText = new HintView2(this.activity, 2).setJoint(0.0f, 28.0f).setDuration(5000L).setMultilineText(true);
        this.savedDualHint = multilineText;
        this.actionBarContainer.addView(multilineText, LayoutHelper.createFrame(-1, -1.0f, 48, 0.0f, 0.0f, 52.0f, 0.0f));
        HintView2 text = new HintView2(this.activity, 1).setJoint(1.0f, -20.0f).setDuration(5000L).setText(LocaleController.getString(C2888R.string.StoryCollageRemoveGrid));
        this.removeCollageHint = text;
        text.setPadding(AndroidUtilities.m1124dp(8.0f), 0, AndroidUtilities.m1124dp(8.0f), 0);
        this.actionBarContainer.addView(this.removeCollageHint, LayoutHelper.createFrame(-1, -1.0f, 48, 0.0f, 52.0f, 0.0f, 0.0f));
        this.videoTimerView = new VideoTimerView(context);
        showVideoTimer(false, false);
        this.actionBarContainer.addView(this.videoTimerView, LayoutHelper.createFrame(-1, 45.0f, 55, 56.0f, 0.0f, 56.0f, 0.0f));
        this.flashViews.add(this.videoTimerView);
        MediaController.loadGalleryPhotosAlbums(0);
        RecordControl recordControl = new RecordControl(context);
        this.recordControl = recordControl;
        recordControl.setDelegate(this.recordControlDelegate);
        this.recordControl.startAsVideo(this.mode == 1);
        this.controlContainer.addView(this.recordControl, LayoutHelper.createFrame(-1, 100, 87));
        this.flashViews.add(this.recordControl);
        this.recordControl.setCollageProgress(this.collageLayoutView.hasLayout() ? this.collageLayoutView.getFilledProgress() : 0.0f, true);
        ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(context, this.resourcesProvider);
        this.startLiveButton = buttonWithCounterView;
        buttonWithCounterView.setRoundRadius(24);
        this.startLiveButton.setColor(-2473124);
        this.startLiveButton.setText(LocaleController.getString(C2888R.string.LiveStoryStart), false);
        this.startLiveButton.setAlpha(0.0f);
        this.startLiveButton.setScaleX(0.8f);
        this.startLiveButton.setScaleY(0.8f);
        this.startLiveButton.setVisibility(8);
        this.controlContainer.addView(this.startLiveButton, LayoutHelper.createFrame(-1, 48.0f, 87, 20.0f, 20.0f, 20.0f, 20.0f));
        this.startLiveButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda36
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$initViews$30(view2);
            }
        });
        HintView2 textAlign = new HintView2(this.activity, 3).setMultilineText(true).setText(LocaleController.getString(C2888R.string.StoryCameraHint2)).setMaxWidth(320.0f).setDuration(5000L).setTextAlign(Layout.Alignment.ALIGN_CENTER);
        this.cameraHint = textAlign;
        this.controlContainer.addView(textAlign, LayoutHelper.createFrame(-1, -1.0f, 80, 0.0f, 0.0f, 0.0f, 100.0f));
        ZoomControlView zoomControlView = new ZoomControlView(context);
        this.zoomControlView = zoomControlView;
        zoomControlView.enabledTouch = false;
        zoomControlView.setAlpha(0.0f);
        this.controlContainer.addView(this.zoomControlView, LayoutHelper.createFrame(-1, 50.0f, 81, 0.0f, 0.0f, 0.0f, 108.0f));
        this.zoomControlView.setDelegate(new ZoomControlView.ZoomControlViewDelegate() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda37
            @Override // org.telegram.ui.Components.ZoomControlView.ZoomControlViewDelegate
            public final void didSetZoom(float f) {
                this.f$0.lambda$initViews$31(f);
            }
        });
        ZoomControlView zoomControlView2 = this.zoomControlView;
        this.cameraZoom = 0.0f;
        zoomControlView2.setZoom(0.0f, false);
        ScannedLinkPreview scannedLinkPreview = new ScannedLinkPreview(context, this.currentAccount, new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda38
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$initViews$32();
            }
        });
        this.qrLinkView = scannedLinkPreview;
        scannedLinkPreview.whenClicked(new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda39
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$initViews$34((Utilities.Callback) obj);
            }
        });
        this.controlContainer.addView(this.qrLinkView, LayoutHelper.createFrame(-1, 80.0f, 87, 0.0f, 0.0f, 0.0f, 90.0f));
        StoryModeTabs storyModeTabs = new StoryModeTabs(context) { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.14
            @Override // org.telegram.p029ui.Stories.recorder.StoryModeTabs
            protected boolean allowTouch() {
                return !StoryRecorder.this.inCheck();
            }
        };
        this.modeSwitcherView = storyModeTabs;
        storyModeTabs.setOnSwitchModeListener(new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda41
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$initViews$35((Integer) obj);
            }
        });
        this.modeSwitcherView.setOnSwitchingModeListener(new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda42
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$initViews$36((Float) obj);
            }
        });
        this.navbarContainer.addView(this.modeSwitcherView, LayoutHelper.createFrame(-1, 48, 55));
        this.flashViews.add(this.modeSwitcherView);
        FlashViews.ImageViewInvertable imageViewInvertable4 = new FlashViews.ImageViewInvertable(context);
        this.rotateButton = imageViewInvertable4;
        imageViewInvertable4.setImageResource(C2888R.drawable.stream_flip);
        this.rotateButton.setScaleType(scaleType);
        this.rotateButton.setColorFilter(new PorterDuffColorFilter(-1, mode));
        this.rotateButton.setBackground(Theme.createSelectorDrawable(553648127));
        this.navbarContainer.addView(this.rotateButton, LayoutHelper.createFrame(24, 24.0f, 19, 20.0f, 0.0f, 20.0f, 4.0f));
        this.flashViews.add(this.rotateButton);
        this.rotateButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda43
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$initViews$37(view2);
            }
        });
        FlashViews.ImageViewInvertable imageViewInvertable5 = new FlashViews.ImageViewInvertable(context);
        this.liveSettingsButton = imageViewInvertable5;
        imageViewInvertable5.setImageResource(C2888R.drawable.stream_settings);
        this.liveSettingsButton.setScaleType(scaleType);
        this.liveSettingsButton.setColorFilter(new PorterDuffColorFilter(-1, mode));
        this.liveSettingsButton.setBackground(Theme.createSelectorDrawable(553648127));
        this.navbarContainer.addView(this.liveSettingsButton, LayoutHelper.createFrame(24, 24.0f, 21, 20.0f, 0.0f, 20.0f, 4.0f));
        this.flashViews.add(this.liveSettingsButton);
        this.liveSettingsButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda44
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$initViews$38(view2);
            }
        });
        HintTextView hintTextView = new HintTextView(context);
        this.hintTextView = hintTextView;
        this.navbarContainer.addView(hintTextView, LayoutHelper.createFrame(-1, 32.0f, 17, 8.0f, 0.0f, 8.0f, 8.0f));
        this.flashViews.add(this.hintTextView);
        HintTextView hintTextView2 = new HintTextView(context);
        this.collageHintTextView = hintTextView2;
        hintTextView2.setText(LocaleController.getString(C2888R.string.StoryCollageReorderHint), false);
        this.collageHintTextView.setAlpha(0.0f);
        this.navbarContainer.addView(this.collageHintTextView, LayoutHelper.createFrame(-1, 32.0f, 17, 8.0f, 0.0f, 8.0f, 8.0f));
        this.flashViews.add(this.collageHintTextView);
        ButtonWithCounterView buttonWithCounterView2 = new ButtonWithCounterView(context, this.resourcesProvider);
        this.coverButton = buttonWithCounterView2;
        buttonWithCounterView2.setVisibility(8);
        this.coverButton.setAlpha(0.0f);
        this.coverButton.setText(LocaleController.getString(C2888R.string.StoryCoverSave), false);
        this.coverButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda45
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$initViews$41(view2);
            }
        });
        this.navbarContainer.addView(this.coverButton, LayoutHelper.createFrame(-1, 48.0f, 119, 10.0f, 10.0f, 10.0f, 10.0f));
        PreviewButtons previewButtons = new PreviewButtons(context);
        this.previewButtons = previewButtons;
        previewButtons.setVisibility(8);
        this.previewButtons.setOnClickListener(new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda46
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$initViews$42((Integer) obj);
            }
        });
        this.navbarContainer.addView(this.previewButtons, LayoutHelper.createFrame(-1, 52, 23));
        TrashView trashView = new TrashView(context);
        this.trash = trashView;
        trashView.setAlpha(0.0f);
        this.trash.setVisibility(8);
        this.previewContainer.addView(this.trash, LayoutHelper.createFrame(-1, 120.0f, 81, 0.0f, 0.0f, 0.0f, 16.0f));
        PreviewHighlightView previewHighlightView = new PreviewHighlightView(context, this.currentAccount, this.resourcesProvider);
        this.previewHighlight = previewHighlightView;
        this.previewContainer.addView(previewHighlightView, LayoutHelper.createFrame(-1, -1, 119));
        updateActionBarButtons(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initViews$5() {
        updateActionBarButtons(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initViews$6(View view) {
        if (this.noCameraPermission) {
            requestCameraPermission(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initViews$7() {
        if (this.currentEditMode == -1 && this.currentPage == 1) {
            CaptionStory captionStory = this.captionEdit;
            if (captionStory.keyboardShown) {
                return;
            }
            if ((captionStory != null && captionStory.isRecording()) || this.timelineView.onBackPressed() || this.storiesSelector.onBackPressed()) {
                return;
            }
            switchToEditMode(0, true);
            PaintView paintView = this.paintView;
            if (paintView != null) {
                paintView.openText();
                this.paintView.enteredThroughText = true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initViews$8() {
        this.videoError = true;
        this.previewButtons.setShareEnabled(false);
        this.downloadButton.showFailedVideo();
    }

    /* JADX INFO: renamed from: org.telegram.ui.Stories.recorder.StoryRecorder$10 */
    /* JADX INFO: loaded from: classes7.dex */
    class C715110 extends CaptionStory {
        private final Path path;

        @Override // org.telegram.p029ui.Stories.recorder.CaptionContainerView
        public boolean drawOver2FromParent() {
            return true;
        }

        C715110(Context context, FrameLayout frameLayout, SizeNotifierFrameLayout sizeNotifierFrameLayout, FrameLayout frameLayout2, Theme.ResourcesProvider resourcesProvider, BlurringShader.BlurManager blurManager) {
            super(context, frameLayout, sizeNotifierFrameLayout, frameLayout2, resourcesProvider, blurManager);
            this.path = new Path();
        }

        @Override // org.telegram.p029ui.Stories.recorder.CaptionContainerView
        protected boolean ignoreTouches(float f, float f2) {
            if (StoryRecorder.this.paintView != null && StoryRecorder.this.paintView.entitiesView != null && !StoryRecorder.this.captionEdit.keyboardShown) {
                float x = f + StoryRecorder.this.captionEdit.getX();
                float y = f2 + StoryRecorder.this.captionEdit.getY();
                float x2 = x + StoryRecorder.this.captionContainer.getX();
                float y2 = y + StoryRecorder.this.captionContainer.getY();
                float x3 = x2 - StoryRecorder.this.previewContainer.getX();
                float y3 = y2 - StoryRecorder.this.previewContainer.getY();
                for (int i = 0; i < StoryRecorder.this.paintView.entitiesView.getChildCount(); i++) {
                    View childAt = StoryRecorder.this.paintView.entitiesView.getChildAt(i);
                    if (childAt instanceof EntityView) {
                        org.telegram.p029ui.Components.Rect selectionBounds = ((EntityView) childAt).getSelectionBounds();
                        RectF rectF = AndroidUtilities.rectTmp;
                        float f3 = selectionBounds.f2057x;
                        float f4 = selectionBounds.f2058y;
                        rectF.set(f3, f4, selectionBounds.width + f3, selectionBounds.height + f4);
                        if (rectF.contains(x3, y3)) {
                            return true;
                        }
                    }
                }
            }
            return false;
        }

        @Override // android.view.View
        public void setVisibility(int i) {
            super.setVisibility(i);
        }

        @Override // org.telegram.p029ui.Stories.recorder.CaptionContainerView
        protected void drawBlurBitmap(Bitmap bitmap, float f) {
            StoryRecorder.this.windowView.drawBlurBitmap(bitmap, f);
            super.drawBlurBitmap(bitmap, f);
        }

        @Override // org.telegram.p029ui.Stories.recorder.CaptionContainerView
        protected boolean captionLimitToast() {
            if (MessagesController.getInstance(this.currentAccount).premiumFeaturesBlocked()) {
                return false;
            }
            Bulletin visibleBulletin = Bulletin.getVisibleBulletin();
            if (visibleBulletin != null && visibleBulletin.tag == 2) {
                return false;
            }
            int i = MessagesController.getInstance(this.currentAccount).storyCaptionLengthLimitPremium;
            SpannableStringBuilder spannableStringBuilderReplaceTags = AndroidUtilities.replaceTags(LocaleController.formatPluralString("CaptionPremiumSubtitle", Math.round(i / MessagesController.getInstance(this.currentAccount).storyCaptionLengthLimitDefault), _UrlKt.FRAGMENT_ENCODE_SET + i));
            int iIndexOf = spannableStringBuilderReplaceTags.toString().indexOf("__");
            if (iIndexOf >= 0) {
                spannableStringBuilderReplaceTags.replace(iIndexOf, iIndexOf + 2, (CharSequence) _UrlKt.FRAGMENT_ENCODE_SET);
                int iIndexOf2 = spannableStringBuilderReplaceTags.toString().indexOf("__");
                if (iIndexOf2 >= 0) {
                    spannableStringBuilderReplaceTags.replace(iIndexOf2, iIndexOf2 + 2, (CharSequence) _UrlKt.FRAGMENT_ENCODE_SET);
                    spannableStringBuilderReplaceTags.setSpan(new ForegroundColorSpan(Theme.getColor(Theme.key_chat_messageLinkIn, this.resourcesProvider)), iIndexOf, iIndexOf2, 33);
                    spannableStringBuilderReplaceTags.setSpan(new ClickableSpan() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.10.1
                        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
                        public void updateDrawState(TextPaint textPaint) {
                            textPaint.setUnderlineText(false);
                        }

                        @Override // android.text.style.ClickableSpan
                        public void onClick(View view) {
                            StoryRecorder.this.openPremium();
                        }
                    }, iIndexOf, iIndexOf2, 33);
                }
            }
            Bulletin bulletinCreateSimpleBulletin = BulletinFactory.m1245of(StoryRecorder.this.captionContainer, this.resourcesProvider).createSimpleBulletin(C2888R.raw.caption_limit, LocaleController.getString(C2888R.string.CaptionPremiumTitle), spannableStringBuilderReplaceTags);
            bulletinCreateSimpleBulletin.tag = 2;
            bulletinCreateSimpleBulletin.setDuration(5000);
            bulletinCreateSimpleBulletin.show(false);
            return true;
        }

        @Override // org.telegram.p029ui.Stories.recorder.CaptionContainerView
        protected void onCaptionLimitUpdate(boolean z) {
            StoryRecorder.this.previewButtons.setShareEnabled((StoryRecorder.this.videoError || z || (MessagesController.getInstance(this.currentAccount).getStoriesController().hasStoryLimit(StoryRecorder.this.getCount()) && (StoryRecorder.this.outputEntry == null || !StoryRecorder.this.outputEntry.isEdit))) ? false : true);
        }

        @Override // org.telegram.p029ui.Stories.recorder.CaptionStory
        public boolean canRecord() {
            if (CameraView.isCameraAllowed()) {
                return StoryRecorder.this.requestAudioPermission();
            }
            return false;
        }

        @Override // org.telegram.p029ui.Stories.recorder.CaptionStory
        public void putRecorder(final RoundVideoRecorder roundVideoRecorder) {
            if (StoryRecorder.this.currentRoundRecorder != null) {
                StoryRecorder.this.currentRoundRecorder.destroy(true);
            }
            if (StoryRecorder.this.previewView != null) {
                StoryRecorder.this.previewView.mute(true);
                StoryRecorder.this.previewView.seek(0L);
            }
            roundVideoRecorder.onDone(new Utilities.Callback3() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$10$$ExternalSyntheticLambda0
                @Override // org.telegram.messenger.Utilities.Callback3
                public final void run(Object obj, Object obj2, Object obj3) {
                    this.f$0.lambda$putRecorder$0(roundVideoRecorder, (File) obj, (String) obj2, (Long) obj3);
                }
            });
            roundVideoRecorder.onDestroy(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$10$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$putRecorder$1();
                }
            });
            FrameLayout frameLayout = StoryRecorder.this.previewContainer;
            StoryRecorder.this.currentRoundRecorder = roundVideoRecorder;
            frameLayout.addView(roundVideoRecorder, LayoutHelper.createFrame(-1, -1.0f));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$putRecorder$0(RoundVideoRecorder roundVideoRecorder, File file, String str, Long l) {
            if (StoryRecorder.this.previewView != null) {
                StoryRecorder.this.previewView.mute(false);
                StoryRecorder.this.previewView.seek(0L);
            }
            if (StoryRecorder.this.outputEntry != null) {
                StoryRecorder.this.outputEntry.round = file;
                StoryRecorder.this.outputEntry.roundThumb = str;
                StoryRecorder.this.outputEntry.roundDuration = l.longValue();
                StoryRecorder.this.outputEntry.roundLeft = 0.0f;
                StoryRecorder.this.outputEntry.roundRight = 1.0f;
                StoryRecorder.this.outputEntry.roundOffset = 0L;
                StoryRecorder.this.outputEntry.roundVolume = 1.0f;
                StoryRecorder.this.createPhotoPaintView();
                if (StoryRecorder.this.previewView != null && StoryRecorder.this.paintView != null) {
                    RoundView roundViewCreateRound = StoryRecorder.this.paintView.createRound(StoryRecorder.this.outputEntry.roundThumb, true);
                    setHasRoundVideo(true);
                    StoryRecorder.this.previewView.setupRound(StoryRecorder.this.outputEntry, roundViewCreateRound, true);
                    roundVideoRecorder.hideTo(roundViewCreateRound);
                    return;
                }
                roundVideoRecorder.destroy(false);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$putRecorder$1() {
            if (StoryRecorder.this.previewView != null) {
                StoryRecorder.this.previewView.mute(false);
                StoryRecorder.this.previewView.seek(0L);
            }
        }

        @Override // org.telegram.p029ui.Stories.recorder.CaptionStory
        public void removeRound() {
            if (StoryRecorder.this.previewView != null) {
                StoryRecorder.this.previewView.setupRound(null, null, true);
            }
            if (StoryRecorder.this.paintView != null) {
                StoryRecorder.this.paintView.deleteRound();
            }
            if (StoryRecorder.this.captionEdit != null) {
                StoryRecorder.this.captionEdit.setHasRoundVideo(false);
            }
            if (StoryRecorder.this.outputEntry != null) {
                if (StoryRecorder.this.outputEntry.round != null) {
                    try {
                        StoryRecorder.this.outputEntry.round.delete();
                    } catch (Exception unused) {
                    }
                    StoryRecorder.this.outputEntry.round = null;
                }
                if (StoryRecorder.this.outputEntry.roundThumb != null) {
                    try {
                        new File(StoryRecorder.this.outputEntry.roundThumb).delete();
                    } catch (Exception unused2) {
                    }
                    StoryRecorder.this.outputEntry.roundThumb = null;
                }
            }
        }

        @Override // org.telegram.p029ui.Stories.recorder.CaptionContainerView
        public void invalidateDrawOver2() {
            if (StoryRecorder.this.captionEditOverlay != null) {
                StoryRecorder.this.captionEditOverlay.invalidate();
            }
        }

        @Override // org.telegram.p029ui.Stories.recorder.CaptionStory
        public int getTimelineHeight() {
            if (StoryRecorder.this.videoTimelineContainerView == null || StoryRecorder.this.timelineView == null || StoryRecorder.this.timelineView.getVisibility() != 0) {
                return 0;
            }
            return StoryRecorder.this.timelineView.getTimelineHeight();
        }

        @Override // org.telegram.p029ui.Stories.recorder.CaptionContainerView
        protected boolean customBlur() {
            return StoryRecorder.this.blurManager.hasRenderNode();
        }

        @Override // org.telegram.p029ui.Stories.recorder.CaptionContainerView
        protected void drawBlur(BlurringShader.StoryBlurDrawer storyBlurDrawer, Canvas canvas, RectF rectF, float f, boolean z, float f2, float f3, boolean z2, float f4) {
            if (canvas.isHardwareAccelerated()) {
                canvas.save();
                this.path.rewind();
                this.path.addRoundRect(rectF, f, f, Path.Direction.CW);
                canvas.clipPath(this.path);
                canvas.translate(f2, f3);
                storyBlurDrawer.drawRect(canvas, 0.0f, 0.0f, f4);
                canvas.restore();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initViews$9(Integer num) {
        MultipleStoriesSelector multipleStoriesSelector;
        FrameLayout frameLayout = this.videoTimelineContainerView;
        if (frameLayout != null) {
            frameLayout.setTranslationY(this.currentEditMode == 2 ? AndroidUtilities.m1124dp(68.0f) : (-(this.captionEdit.getEditTextHeight() + AndroidUtilities.m1124dp(12.0f))) + AndroidUtilities.m1124dp(64.0f));
        }
        MultipleStoriesSelector multipleStoriesSelector2 = this.storiesSelector;
        if (multipleStoriesSelector2 != null) {
            int i = -(this.captionEdit.getEditTextHeight() + AndroidUtilities.m1124dp(24.0f));
            multipleStoriesSelector2.setTranslationY(i - (this.timelineView == null ? 0 : r3.getContentHeight() - AndroidUtilities.m1124dp(5.0f)));
        }
        Bulletin visibleBulletin = Bulletin.getVisibleBulletin();
        if (visibleBulletin != null && visibleBulletin.tag == 2) {
            visibleBulletin.updatePosition();
        }
        if (!this.captionEdit.keyboardShown || (multipleStoriesSelector = this.storiesSelector) == null) {
            return;
        }
        multipleStoriesSelector.showList(false, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initViews$10(Integer num) {
        StoryEntry storyEntry = this.outputEntry;
        if (storyEntry != null) {
            storyEntry.period = num.intValue();
            MessagesController.getGlobalMainSettings().edit().putInt("story_period", num.intValue()).apply();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initViews$11(Boolean bool) {
        TimelineView timelineView;
        if (bool.booleanValue() && (timelineView = this.timelineView) != null) {
            timelineView.onBackPressed();
        }
        this.previewView.updatePauseReason(2, bool.booleanValue());
        this.videoTimelineContainerView.clearAnimation();
        this.videoTimelineContainerView.animate().alpha(bool.booleanValue() ? 0.0f : 1.0f).setDuration(120L).start();
        Bulletin visibleBulletin = Bulletin.getVisibleBulletin();
        if (visibleBulletin == null || visibleBulletin.tag != 2) {
            return;
        }
        visibleBulletin.updatePosition();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initViews$12() {
        if (this.currentPage != 1) {
            return;
        }
        switchToEditMode(2, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initViews$13() {
        MultipleStoriesSelector multipleStoriesSelector = this.storiesSelector;
        if (multipleStoriesSelector != null) {
            int i = -(this.captionEdit.getEditTextHeight() + AndroidUtilities.m1124dp(24.0f));
            multipleStoriesSelector.setTranslationY(i - (this.timelineView == null ? 0 : r2.getContentHeight() - AndroidUtilities.m1124dp(5.0f)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initViews$14(View view) {
        if (this.awaitingPlayer) {
            return;
        }
        onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initViews$16(Context context, View view) {
        new StoryPrivacyBottomSheet.ChoosePeerSheet(context, this.currentAccount, true, this.livePeer, new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda87
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$initViews$15((TLRPC.InputPeer) obj);
            }
        }, this.resourcesProvider).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initViews$15(TLRPC.InputPeer inputPeer) {
        SelectPeerView selectPeerView = this.livePeerView;
        this.livePeer = inputPeer;
        selectPeerView.set(inputPeer);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initViews$17(Runnable runnable) {
        applyPaint();
        applyPaintMessage();
        applyFilter(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initViews$18(View view) {
        String string;
        StoryEntry storyEntry = this.outputEntry;
        if (storyEntry == null || this.awaitingPlayer) {
            return;
        }
        storyEntry.muted = !storyEntry.muted;
        ArrayList arrayList = storyEntry.collageContent;
        if (arrayList != null) {
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                ((StoryEntry) obj).muted = this.outputEntry.muted;
            }
        }
        boolean zIsEmpty = TextUtils.isEmpty(this.outputEntry.audioPath);
        StoryEntry storyEntry2 = this.outputEntry;
        boolean z = storyEntry2.round != null;
        if (this.currentEditMode == -1) {
            HintView2 hintView2 = this.muteHint;
            if (storyEntry2.muted) {
                string = LocaleController.getString((!zIsEmpty || z) ? C2888R.string.StoryOriginalSoundMuted : C2888R.string.StorySoundMuted);
            } else {
                string = LocaleController.getString((!zIsEmpty || z) ? C2888R.string.StoryOriginalSoundNotMuted : C2888R.string.StorySoundNotMuted);
            }
            hintView2.setText(string, this.muteHint.shown());
            this.muteHint.show();
        }
        setIconMuted(this.outputEntry.muted, true);
        this.previewView.checkVolumes();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initViews$19(View view) {
        boolean zIsPlaying = this.previewView.isPlaying();
        this.previewView.play(!zIsPlaying);
        this.playButton.drawable.setPause(!zIsPlaying, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initViews$20(View view) {
        if (this.cameraView == null || this.awaitingPlayer) {
            return;
        }
        String currentFlashMode = getCurrentFlashMode();
        String nextFlashMode = getNextFlashMode();
        if (currentFlashMode == null || currentFlashMode.equals(nextFlashMode)) {
            return;
        }
        setCurrentFlashMode(nextFlashMode);
        setCameraFlashModeIcon(nextFlashMode, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$initViews$24(View view) {
        DualCameraView dualCameraView = this.cameraView;
        if (dualCameraView == null || !dualCameraView.isFrontface()) {
            return false;
        }
        checkFrontfaceFlashModes();
        this.flashButton.setSelected(true);
        this.flashViews.previewStart();
        ItemOptions.makeOptions(this.containerView, this.resourcesProvider, this.flashButton).addView(new SliderView(getContext(), 1).setValue(this.flashViews.warmth).setOnValueChange(new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda94
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$initViews$21((Float) obj);
            }
        })).addSpaceGap().addView(new SliderView(getContext(), 2).setMinMax(0.65f, 1.0f).setValue(this.flashViews.intensity).setOnValueChange(new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda95
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$initViews$22((Float) obj);
            }
        })).setOnDismiss(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda96
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$initViews$23();
            }
        }).setDimAlpha(0).setGravity(5).translate(AndroidUtilities.m1124dp(46.0f), -AndroidUtilities.m1124dp(4.0f)).setBackgroundColor(-1155851493).show();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initViews$21(Float f) {
        this.flashViews.setWarmth(f.floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initViews$22(Float f) {
        this.flashViews.setIntensity(f.floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initViews$23() {
        saveFrontFaceFlashMode();
        this.flashViews.previewEnd();
        this.flashButton.setSelected(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initViews$25(View view) {
        DualCameraView dualCameraView = this.cameraView;
        if (dualCameraView == null || this.currentPage != 0) {
            return;
        }
        dualCameraView.toggleDual();
        this.dualButton.setValue(this.cameraView.isDual());
        this.dualHint.hide();
        MessagesController.getGlobalMainSettings().edit().putInt("storydualhint", 2).apply();
        if (this.savedDualHint.shown()) {
            MessagesController.getGlobalMainSettings().edit().putInt("storysvddualhint", 2).apply();
        }
        this.savedDualHint.hide();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initViews$26(View view) {
        if (this.currentPage != 0 || this.animatedRecording) {
            return;
        }
        DualCameraView dualCameraView = this.cameraView;
        if (dualCameraView != null && dualCameraView.isDual()) {
            this.cameraView.toggleDual();
        }
        if (!this.collageListView.isVisible() && !this.collageLayoutView.hasLayout()) {
            this.collageLayoutView.setLayout(this.lastCollageLayout, true);
            this.collageListView.setSelected(this.lastCollageLayout);
            this.collageButton.setIcon((Drawable) new CollageLayoutButton.CollageLayoutDrawable(this.lastCollageLayout), true);
            this.collageButton.setSelected(true);
            DualCameraView dualCameraView2 = this.cameraView;
            if (dualCameraView2 != null) {
                dualCameraView2.recordHevc = !this.collageLayoutView.hasLayout();
            }
            GalleryListView galleryListView = this.galleryListView;
            if (galleryListView != null) {
                galleryListView.setMultipleOnClick(this.collageLayoutView.hasLayout());
                this.galleryListView.setMaxCount(Math.min(10, CollageLayout.getMaxCount() - this.collageLayoutView.getFilledCount()));
            }
        }
        this.collageListView.setVisible(!r4.isVisible(), true);
        updateActionBarButtons(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initViews$27(View view) {
        this.collageLayoutView.setLayout(null, true);
        this.collageLayoutView.clear(true);
        this.collageListView.setSelected((CollageLayout) null);
        DualCameraView dualCameraView = this.cameraView;
        if (dualCameraView != null) {
            dualCameraView.recordHevc = !this.collageLayoutView.hasLayout();
        }
        this.collageListView.setVisible(false, true);
        updateActionBarButtons(true);
        GalleryListView galleryListView = this.galleryListView;
        if (galleryListView != null) {
            galleryListView.setMultipleOnClick(this.collageLayoutView.hasLayout());
            this.galleryListView.setMaxCount(Math.min(10, CollageLayout.getMaxCount() - this.collageLayoutView.getFilledCount()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initViews$28(CollageLayout collageLayout) {
        CollageLayoutView2 collageLayoutView2 = this.collageLayoutView;
        this.lastCollageLayout = collageLayout;
        collageLayoutView2.setLayout(collageLayout, true);
        this.collageListView.setSelected(collageLayout);
        DualCameraView dualCameraView = this.cameraView;
        if (dualCameraView != null) {
            dualCameraView.recordHevc = !this.collageLayoutView.hasLayout();
        }
        this.collageButton.setDrawable(new CollageLayoutButton.CollageLayoutDrawable(collageLayout));
        setActionBarButtonVisible(this.collageRemoveButton, this.collageListView.isVisible(), true);
        this.recordControl.setCollageProgress(this.collageLayoutView.hasLayout() ? this.collageLayoutView.getFilledProgress() : 0.0f, true);
        GalleryListView galleryListView = this.galleryListView;
        if (galleryListView != null) {
            galleryListView.setMultipleOnClick(this.collageLayoutView.hasLayout());
            this.galleryListView.setMaxCount(Math.min(10, CollageLayout.getMaxCount() - this.collageLayoutView.getFilledCount()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initViews$30(View view) {
        startLive();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initViews$31(float f) {
        DualCameraView dualCameraView = this.cameraView;
        if (dualCameraView != null) {
            this.cameraZoom = f;
            dualCameraView.setZoom(f);
        }
        showZoomControls(true, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initViews$32() {
        CollageLayoutView2 collageLayoutView2 = this.collageLayoutView;
        if (collageLayoutView2 != null) {
            collageLayoutView2.qrDrawer.setQrDetected(this.qrLinkView.isResolved() ? this.qrScanner.getDetected() : null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initViews$34(final Utilities.Callback callback) {
        this.fastClose = true;
        close(true);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda79
            @Override // java.lang.Runnable
            public final void run() {
                callback.run(LaunchActivity.getSafeLastFragment());
            }
        }, 210L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initViews$35(Integer num) {
        if (this.takingPhoto || this.takingVideo) {
            return;
        }
        int iIntValue = num.intValue();
        this.mode = iIntValue;
        this.livePeerView.setShowing(iIntValue == -1, true);
        showVideoTimer(this.mode == 1 && !this.collageListView.isVisible(), true);
        this.modeSwitcherView.switchMode(num.intValue());
        this.recordControl.startAsVideo(num.intValue() == 1);
        if (num.intValue() == -1) {
            DualCameraView dualCameraView = this.cameraView;
            if (dualCameraView != null && dualCameraView.isDual()) {
                this.cameraView.toggleDual();
            }
            HintView2 hintView2 = this.dualHint;
            if (hintView2 != null) {
                hintView2.hide();
            }
            HintView2 hintView22 = this.savedDualHint;
            if (hintView22 != null) {
                hintView22.hide();
            }
            HintView2 hintView23 = this.cameraHint;
            if (hintView23 != null) {
                hintView23.hide();
            }
            this.collageLayoutView.setLayout(null, true);
            this.collageLayoutView.clear(true);
            this.collageListView.setSelected((CollageLayout) null);
            DualCameraView dualCameraView2 = this.cameraView;
            if (dualCameraView2 != null) {
                dualCameraView2.recordHevc = !this.collageLayoutView.hasLayout();
            }
        }
        this.collageListView.setVisible(false, true);
        updateActionBarButtons(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initViews$36(Float f) {
        this.recordControl.startAsVideoT(f.floatValue());
        this.recordControl.setVisibility(f.floatValue() <= -1.0f ? 8 : 0);
        this.recordControl.setAlpha(Utilities.clamp01(f.floatValue() + 1.0f));
        this.startLiveButton.setVisibility(f.floatValue() < 0.0f ? 0 : 8);
        this.startLiveButton.setAlpha(AndroidUtilities.ilerp(f.floatValue(), 0.0f, -1.0f));
        this.startLiveButton.setScaleX(AndroidUtilities.lerp(0.8f, 1.0f, AndroidUtilities.ilerp(f.floatValue(), 0.0f, -1.0f)));
        this.startLiveButton.setScaleY(AndroidUtilities.lerp(0.8f, 1.0f, AndroidUtilities.ilerp(f.floatValue(), 0.0f, -1.0f)));
        this.startLiveButton.setTranslationY(AndroidUtilities.lerp(AndroidUtilities.m1124dp(12.0f), 0, AndroidUtilities.ilerp(f.floatValue(), 0.0f, -1.0f)));
        if (f.floatValue() < 0.0f) {
            lambda$animateGalleryListView$74(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initViews$37(View view) {
        DualCameraView dualCameraView = this.cameraView;
        if (dualCameraView == null || this.awaitingPlayer || this.takingPhoto || !dualCameraView.isInited() || this.currentPage != 0) {
            return;
        }
        this.cameraView.switchCamera();
        this.recordControl.rotateFlip(180.0f);
        saveCameraFace(this.cameraView.isFrontface());
        if (useDisplayFlashlight()) {
            this.flashViews.flashIn(null);
        } else {
            this.flashViews.flashOut();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initViews$38(View view) {
        startLive();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initViews$41(View view) {
        StoryEntry storyEntry = this.outputEntry;
        if (storyEntry == null) {
            return;
        }
        storyEntry.coverSet = true;
        storyEntry.cover = this.coverValue;
        processDone();
        StoryEntry storyEntry2 = this.outputEntry;
        if (storyEntry2 == null || storyEntry2.isEditingCover) {
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda78
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$initViews$40();
            }
        }, 400L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initViews$40() {
        PreviewView previewView;
        if (!this.outputEntry.isEditingCover && this.privacySheet != null && (previewView = this.previewView) != null) {
            previewView.getCoverBitmap(new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda97
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$initViews$39((Bitmap) obj);
                }
            }, this.previewView, this.paintViewRenderView, this.paintViewEntitiesView);
        }
        navigateTo(1, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initViews$39(Bitmap bitmap) {
        StoryEntry storyEntry = this.outputEntry;
        if (storyEntry == null) {
            return;
        }
        AndroidUtilities.recycleBitmap(storyEntry.coverBitmap);
        this.outputEntry.coverBitmap = bitmap;
        StoryPrivacyBottomSheet storyPrivacyBottomSheet = this.privacySheet;
        if (storyPrivacyBottomSheet == null) {
            return;
        }
        storyPrivacyBottomSheet.setCover(bitmap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initViews$42(Integer num) {
        if (this.outputEntry == null || this.captionEdit.isRecording()) {
            return;
        }
        this.captionEdit.clearFocus();
        if (num.intValue() == 5) {
            processDone();
            return;
        }
        if (num.intValue() == 0) {
            switchToEditMode(0, true);
            PaintView paintView = this.paintView;
            if (paintView != null) {
                paintView.enteredThroughText = false;
                paintView.openPaint();
                return;
            }
            return;
        }
        if (num.intValue() == 1) {
            switchToEditMode(0, true);
            PaintView paintView2 = this.paintView;
            if (paintView2 != null) {
                paintView2.openText();
                this.paintView.enteredThroughText = true;
                return;
            }
            return;
        }
        if (num.intValue() == 2) {
            createPhotoPaintView();
            hidePhotoPaintView();
            PaintView paintView3 = this.paintView;
            if (paintView3 != null) {
                paintView3.openStickers();
                return;
            }
            return;
        }
        if (num.intValue() == 4) {
            switchToEditMode(1, true);
        } else if (num.intValue() == 3) {
            switchToEditMode(3, true);
        }
    }

    private void processDone() {
        StoriesController.StoryLimit storyLimitCheckStoryLimit;
        StoryPrivacyBottomSheet storyPrivacyBottomSheet = this.privacySheet;
        if (storyPrivacyBottomSheet != null) {
            storyPrivacyBottomSheet.lambda$new$0();
            this.privacySheet = null;
        }
        if (this.videoError) {
            this.downloadButton.showFailedVideo();
            BotWebViewVibrationEffect.APP_ERROR.vibrate();
            PreviewButtons.ShareButtonView shareButtonView = this.previewButtons.shareButton;
            int i = -this.shiftDp;
            this.shiftDp = i;
            AndroidUtilities.shakeViewSpring(shareButtonView, i);
            return;
        }
        CaptionStory captionStory = this.captionEdit;
        if (captionStory != null && captionStory.isCaptionOverLimit()) {
            BotWebViewVibrationEffect.APP_ERROR.vibrate();
            AnimatedTextView animatedTextView = this.captionEdit.limitTextView;
            int i2 = -this.shiftDp;
            this.shiftDp = i2;
            AndroidUtilities.shakeViewSpring(animatedTextView, i2);
            this.captionEdit.captionLimitToast();
            return;
        }
        StoryEntry storyEntry = this.outputEntry;
        if ((storyEntry == null || (!storyEntry.isEdit && storyEntry.botId == 0)) && (storyLimitCheckStoryLimit = MessagesController.getInstance(this.currentAccount).storiesController.checkStoryLimit()) != null && storyLimitCheckStoryLimit.active(this.currentAccount, getCount())) {
            showLimitReachedSheet(storyLimitCheckStoryLimit, false);
            return;
        }
        this.outputEntry.captionEntitiesAllowed = MessagesController.getInstance(this.currentAccount).storyEntitiesAllowed();
        CaptionStory captionStory2 = this.captionEdit;
        if (captionStory2 != null && !this.outputEntry.captionEntitiesAllowed) {
            CharSequence text = captionStory2.getText();
            if (text instanceof Spannable) {
                Spannable spannable = (Spannable) text;
                if (((TextStyleSpan[]) spannable.getSpans(0, text.length(), TextStyleSpan.class)).length > 0 || ((URLSpan[]) spannable.getSpans(0, text.length(), URLSpan.class)).length > 0) {
                    BulletinFactory.m1245of(this.windowView, this.resourcesProvider).createSimpleBulletin(C2888R.raw.voip_invite, premiumText(LocaleController.getString(C2888R.string.StoryPremiumFormatting))).show(true);
                    CaptionStory captionStory3 = this.captionEdit;
                    int i3 = -this.shiftDp;
                    this.shiftDp = i3;
                    AndroidUtilities.shakeViewSpring(captionStory3, i3);
                    return;
                }
            }
        }
        StoryEntry storyEntry2 = this.outputEntry;
        if (storyEntry2.isEdit || storyEntry2.botId != 0) {
            storyEntry2.editedPrivacy = false;
            applyFilter(null);
            upload(true);
            return;
        }
        if (this.selectedDialogId != 0) {
            storyEntry2.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(this.selectedDialogId);
        }
        this.previewView.updatePauseReason(3, true);
        StoryPrivacyBottomSheet storyPrivacyBottomSheetAllowCover = new StoryPrivacyBottomSheet(this.activity, this.outputEntry.period, this.resourcesProvider).setValue(this.outputEntry.privacy).setPeer(this.outputEntry.peer).setCanChangePeer(this.canChangePeer).whenDismiss(new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda66
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$processDone$43((StoryPrivacyBottomSheet.StoryPrivacy) obj);
            }
        }).allowCover(!this.collageLayoutView.hasLayout());
        ArrayList arrayList = this.selectedEntries;
        this.privacySheet = storyPrivacyBottomSheetAllowCover.setCount(arrayList == null ? this.outputEntry.getTotalCount() : arrayList.size()).isEdit(false).setWarnUsers(getUsersFrom(this.captionEdit.getText())).whenSelectedPeer(new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda67
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$processDone$44((TLRPC.InputPeer) obj);
            }
        }).whenSelectedAlbums(new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda68
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$processDone$45((HashSet) obj);
            }
        }).whenSelectedRules(new StoryPrivacyBottomSheet.DoneCallback() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda69
            @Override // org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet.DoneCallback
            public final void done(StoryPrivacyBottomSheet.StoryPrivacy storyPrivacy, boolean z, boolean z2, boolean z3, boolean z4, TLRPC.InputPeer inputPeer, int i4, Runnable runnable, Runnable runnable2) {
                this.f$0.lambda$processDone$47(storyPrivacy, z, z2, z3, z4, inputPeer, i4, runnable, runnable2);
            }
        }, false);
        StoryEntry storyEntry3 = this.outputEntry;
        if (storyEntry3.isVideo) {
            PreviewView previewView = this.previewView;
            if (previewView != null && !storyEntry3.coverSet && this.currentPage != 2) {
                storyEntry3.cover = previewView.getCurrentPosition();
                this.previewView.getCoverBitmap(new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda70
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        this.f$0.lambda$processDone$48((Bitmap) obj);
                    }
                }, this.previewView, this.paintViewRenderView, this.paintViewEntitiesView);
            }
            this.privacySheet.setCover(this.outputEntry.coverBitmap, new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda71
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$processDone$49();
                }
            });
        }
        this.privacySheet.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda72
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                this.f$0.lambda$processDone$50(dialogInterface);
            }
        });
        this.privacySheet.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processDone$43(StoryPrivacyBottomSheet.StoryPrivacy storyPrivacy) {
        StoryEntry storyEntry = this.outputEntry;
        if (storyEntry != null) {
            storyEntry.privacy = storyPrivacy;
        }
        ArrayList arrayList = this.entries;
        if (arrayList != null) {
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                ((StoryEntry) obj).privacy = storyPrivacy;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processDone$44(TLRPC.InputPeer inputPeer) {
        StoryEntry storyEntry = this.outputEntry;
        if (storyEntry == null) {
            return;
        }
        if (inputPeer == null) {
            inputPeer = new TLRPC.TL_inputPeerSelf();
        }
        storyEntry.peer = inputPeer;
        ArrayList arrayList = this.entries;
        if (arrayList != null) {
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                ((StoryEntry) obj).peer = this.outputEntry.peer;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processDone$45(HashSet hashSet) {
        StoryEntry storyEntry = this.outputEntry;
        if (storyEntry == null) {
            return;
        }
        storyEntry.albums = hashSet;
        ArrayList arrayList = this.entries;
        if (arrayList != null) {
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                ((StoryEntry) obj).albums = hashSet;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processDone$47(StoryPrivacyBottomSheet.StoryPrivacy storyPrivacy, boolean z, boolean z2, boolean z3, boolean z4, TLRPC.InputPeer inputPeer, int i, final Runnable runnable, Runnable runnable2) {
        if (this.outputEntry == null) {
            return;
        }
        this.previewView.updatePauseReason(5, true);
        this.outputEntry.privacy = storyPrivacy;
        StoryPrivacySelector.save(this.currentAccount, storyPrivacy);
        StoryEntry storyEntry = this.outputEntry;
        storyEntry.pinned = z3;
        storyEntry.allowScreenshots = z2;
        storyEntry.privacyRules.clear();
        this.outputEntry.privacyRules.addAll(storyPrivacy.rules);
        StoryEntry storyEntry2 = this.outputEntry;
        storyEntry2.editedPrivacy = true;
        storyEntry2.peer = inputPeer;
        ArrayList arrayList = this.entries;
        if (arrayList != null) {
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                StoryEntry storyEntry3 = (StoryEntry) obj;
                storyEntry3.privacy = storyPrivacy;
                storyEntry3.pinned = z3;
                storyEntry3.allowScreenshots = z2;
                storyEntry3.privacyRules.clear();
                storyEntry3.privacyRules.addAll(storyPrivacy.rules);
                storyEntry3.editedPrivacy = true;
                storyEntry3.peer = inputPeer;
            }
        }
        applyFilter(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda124
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processDone$46(runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processDone$46(Runnable runnable) {
        runnable.run();
        upload(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processDone$48(Bitmap bitmap) {
        StoryEntry storyEntry = this.outputEntry;
        if (storyEntry == null) {
            return;
        }
        Bitmap bitmap2 = storyEntry.coverBitmap;
        if (bitmap2 != null) {
            bitmap2.recycle();
        }
        this.outputEntry.coverBitmap = bitmap;
        StoryPrivacyBottomSheet storyPrivacyBottomSheet = this.privacySheet;
        if (storyPrivacyBottomSheet == null) {
            return;
        }
        storyPrivacyBottomSheet.setCover(bitmap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processDone$49() {
        StoryPrivacyBottomSheet storyPrivacyBottomSheet = this.privacySheet;
        if (storyPrivacyBottomSheet != null) {
            storyPrivacyBottomSheet.lambda$new$0();
        }
        navigateTo(2, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processDone$50(DialogInterface dialogInterface) {
        this.previewView.updatePauseReason(3, false);
        this.privacySheet = null;
    }

    private void startLive() {
        StoryPrivacyBottomSheet storyPrivacyBottomSheet = this.privacySheet;
        if (storyPrivacyBottomSheet != null) {
            storyPrivacyBottomSheet.lambda$new$0();
            this.privacySheet = null;
        }
        StoryPrivacyBottomSheet storyPrivacyBottomSheetWhenSelectedRules = new StoryPrivacyBottomSheet(this.activity, 86400, this.resourcesProvider).setLive(true).setValue(this.livePrivacy).setPeer(getLivePeer()).setCanChangePeer(this.canChangePeer).whenDismiss(new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda80
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$startLive$51((StoryPrivacyBottomSheet.StoryPrivacy) obj);
            }
        }).allowCover(false).setCount(1).isEdit(false).whenSelectedPeer(new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda81
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$startLive$52((TLRPC.InputPeer) obj);
            }
        }).whenSelectedRules(new StoryPrivacyBottomSheet.DoneCallback() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda82
            @Override // org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet.DoneCallback
            public final void done(StoryPrivacyBottomSheet.StoryPrivacy storyPrivacy, boolean z, boolean z2, boolean z3, boolean z4, TLRPC.InputPeer inputPeer, int i, Runnable runnable, Runnable runnable2) {
                this.f$0.lambda$startLive$57(storyPrivacy, z, z2, z3, z4, inputPeer, i, runnable, runnable2);
            }
        }, false);
        this.privacySheet = storyPrivacyBottomSheetWhenSelectedRules;
        storyPrivacyBottomSheetWhenSelectedRules.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startLive$51(StoryPrivacyBottomSheet.StoryPrivacy storyPrivacy) {
        this.livePrivacy = storyPrivacy;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startLive$52(TLRPC.InputPeer inputPeer) {
        SelectPeerView selectPeerView = this.livePeerView;
        this.livePeer = inputPeer;
        selectPeerView.set(inputPeer);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startLive$57(final StoryPrivacyBottomSheet.StoryPrivacy storyPrivacy, final boolean z, final boolean z2, boolean z3, final boolean z4, final TLRPC.InputPeer inputPeer, final int i, Runnable runnable, final Runnable runnable2) {
        PermissionRequest.ensureAllPermissions(C2888R.raw.permission_request_camera, C2888R.string.PermissionNoCameraMicVideo, z4 ? new String[0] : new String[]{"android.permission.CAMERA", "android.permission.RECORD_AUDIO"}, new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda122
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$startLive$56(runnable2, z2, inputPeer, storyPrivacy, z4, z, i, (Boolean) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startLive$56(final Runnable runnable, boolean z, TLRPC.InputPeer inputPeer, StoryPrivacyBottomSheet.StoryPrivacy storyPrivacy, final boolean z2, boolean z3, int i, Boolean bool) {
        if (!bool.booleanValue()) {
            if (runnable != null) {
                runnable.run();
                return;
            }
            return;
        }
        DualCameraView dualCameraView = this.cameraView;
        final boolean z4 = dualCameraView == null || dualCameraView.isFrontface();
        final TL_stories.TL_startLive tL_startLive = new TL_stories.TL_startLive();
        tL_startLive.noforwards = true ^ z;
        tL_startLive.peer = inputPeer == null ? new TLRPC.TL_inputPeerSelf() : inputPeer;
        final long clientUserId = (inputPeer == null || (inputPeer instanceof TLRPC.TL_inputPeerSelf)) ? UserConfig.getInstance(this.currentAccount).getClientUserId() : DialogObject.getPeerDialogId(inputPeer);
        tL_startLive.privacy_rules.addAll(storyPrivacy.rules);
        tL_startLive.random_id = Utilities.random.nextLong();
        tL_startLive.rtmp_stream = z2;
        tL_startLive.messages_enabled = Boolean.valueOf(z3);
        tL_startLive.send_paid_messages_stars = Long.valueOf(i);
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_startLive, new RequestDelegate() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda125
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$startLive$55(tL_startLive, z2, clientUserId, z4, runnable, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startLive$55(final TL_stories.TL_startLive tL_startLive, final boolean z, final long j, final boolean z2, final Runnable runnable, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$startLive$54(tLObject, tL_startLive, z, j, z2, tL_error, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0070  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$startLive$54(TLObject tLObject, TL_stories.TL_startLive tL_startLive, final boolean z, final long j, final boolean z2, TLRPC.TL_error tL_error, Runnable runnable) {
        int i;
        TL_stories.StoryItem storyItem;
        final TLRPC.InputGroupCall inputGroupCall;
        if (!(tLObject instanceof TLRPC.Updates)) {
            if (tL_error != null) {
                if (tL_error.text.startsWith("STORY_LIVE_ALREADY_")) {
                    new AlertDialog.Builder(getContext(), this.resourcesProvider).setTitle(LocaleController.getString(C2888R.string.LiveStoryAlreadyStreamingTitle)).setMessage(LocaleController.getString(C2888R.string.LiveStoryAlreadyStreaming)).setPositiveButton(LocaleController.getString(C2888R.string.f1606OK), null).show();
                    return;
                }
                StoryPrivacyBottomSheet storyPrivacyBottomSheet = this.privacySheet;
                if (storyPrivacyBottomSheet != null) {
                    BulletinFactory.m1245of(storyPrivacyBottomSheet.container, this.resourcesProvider).showForError(tL_error, true);
                    if (runnable != null) {
                        runnable.run();
                        return;
                    }
                    return;
                }
                return;
            }
            return;
        }
        TLRPC.Updates updates = (TLRPC.Updates) tLObject;
        MessagesController.getInstance(this.currentAccount).processUpdates(updates, false);
        DualCameraView dualCameraView = this.cameraView;
        if (dualCameraView != null) {
            dualCameraView.destroy(true, null);
        }
        ArrayList arrayListFindUpdates = MessagesController.findUpdates(updates, TLRPC.TL_updateStoryID.class);
        int size = arrayListFindUpdates.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                i = -1;
                break;
            }
            Object obj = arrayListFindUpdates.get(i2);
            i2++;
            TLRPC.TL_updateStoryID tL_updateStoryID = (TLRPC.TL_updateStoryID) obj;
            if (tL_updateStoryID.random_id == tL_startLive.random_id) {
                i = tL_updateStoryID.f1815id;
                break;
            }
        }
        ArrayList arrayListFindUpdates2 = MessagesController.findUpdates(updates, TL_stories.TL_updateStory.class);
        int size2 = arrayListFindUpdates2.size();
        int i3 = 0;
        while (true) {
            if (i3 >= size2) {
                storyItem = null;
                break;
            }
            Object obj2 = arrayListFindUpdates2.get(i3);
            i3++;
            storyItem = ((TL_stories.TL_updateStory) obj2).story;
            if (storyItem != null && (storyItem.f1857id == i || i == -1)) {
                break;
            }
        }
        if (storyItem != null) {
            TLRPC.MessageMedia messageMedia = storyItem.media;
            inputGroupCall = messageMedia instanceof TLRPC.TL_messageMediaVideoStream ? ((TLRPC.TL_messageMediaVideoStream) messageMedia).call : null;
        }
        if (inputGroupCall != null) {
            LivePlayer livePlayer = LivePlayer.recording;
            if (livePlayer != null) {
                livePlayer.destroy();
                if (LivePlayer.recording != null) {
                    LivePlayer.recording = null;
                    NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.liveStoryUpdated, Long.valueOf(LivePlayer.recording.getCallId()));
                }
            }
            final TL_stories.StoryItem storyItem2 = storyItem;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$startLive$53(z, storyItem2, j, inputGroupCall, z2);
                }
            }, 100L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startLive$53(boolean z, TL_stories.StoryItem storyItem, long j, TLRPC.InputGroupCall inputGroupCall, boolean z2) {
        if (!z) {
            LivePlayer.recording = new LivePlayer(getContext(), this.currentAccount, storyItem, j, storyItem.f1857id, z, inputGroupCall, true, z2);
        }
        SourceView sourceView = this.fromSourceView;
        if (sourceView != null) {
            sourceView.show(false);
        }
        this.fromSourceView = null;
        this.openType = 0;
        RectF rectF = this.fromRect;
        Point point = AndroidUtilities.displaySize;
        rectF.set(0.0f, 0.0f, point.x, point.y);
        this.fromRounding = AndroidUtilities.m1124dp(8.0f);
        close(true);
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        storyItem.dialogId = j;
        storyItem.justUploaded = true;
        safeLastFragment.getOrCreateStoryViewer().open(getContext(), storyItem, (StoryViewer.PlaceProvider) null);
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.liveStoryUpdated, Long.valueOf(inputGroupCall.f1682id));
    }

    private TLRPC.InputPeer getLivePeer() {
        TLRPC.InputPeer inputPeer = this.livePeer;
        if (inputPeer != null) {
            return inputPeer;
        }
        if (this.selectedDialogId != 0) {
            return MessagesController.getInstance(this.currentAccount).getInputPeer(this.selectedDialogId);
        }
        return new TLRPC.TL_inputPeerSelf();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Bitmap getUiBlurBitmap() {
        PreviewView previewView;
        PhotoFilterView photoFilterView = this.photoFilterView;
        Bitmap uiBlurBitmap = photoFilterView != null ? photoFilterView.getUiBlurBitmap() : null;
        return (uiBlurBitmap != null || (previewView = this.previewView) == null || previewView.getTextureView() == null) ? uiBlurBitmap : this.previewView.getTextureView().getUiBlurBitmap();
    }

    private ArrayList getUsersFrom(CharSequence charSequence) {
        ArrayList arrayList = new ArrayList();
        if (charSequence instanceof Spanned) {
            for (URLSpanUserMention uRLSpanUserMention : (URLSpanUserMention[]) ((Spanned) charSequence).getSpans(0, charSequence.length(), URLSpanUserMention.class)) {
                if (uRLSpanUserMention != null) {
                    try {
                        TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(Long.parseLong(uRLSpanUserMention.getURL())));
                        if (user != null && !UserObject.isUserSelf(user) && UserObject.getPublicUsername(user) != null && !arrayList.contains(user)) {
                            arrayList.add(UserObject.getPublicUsername(user));
                        }
                    } catch (Exception unused) {
                    }
                }
            }
        }
        if (charSequence != null) {
            int i = -1;
            for (int i2 = 0; i2 < charSequence.length(); i2++) {
                char cCharAt = charSequence.charAt(i2);
                if (cCharAt == '@') {
                    i = i2 + 1;
                } else if (cCharAt == ' ') {
                    if (i != -1) {
                        String string = charSequence.subSequence(i, i2).toString();
                        TLObject userOrChat = MessagesController.getInstance(this.currentAccount).getUserOrChat(string);
                        if (userOrChat instanceof TLRPC.User) {
                            TLRPC.User user2 = (TLRPC.User) userOrChat;
                            if (!user2.bot && !UserObject.isUserSelf(user2) && user2.f1825id != 777000 && !UserObject.isReplyUser(user2) && !arrayList.contains(string)) {
                                arrayList.add(string);
                            }
                        }
                    }
                    i = -1;
                }
            }
            if (i != -1) {
                String string2 = charSequence.subSequence(i, charSequence.length()).toString();
                TLObject userOrChat2 = MessagesController.getInstance(this.currentAccount).getUserOrChat(string2);
                if (userOrChat2 instanceof TLRPC.User) {
                    TLRPC.User user3 = (TLRPC.User) userOrChat2;
                    if (!user3.bot && !UserObject.isUserSelf(user3) && user3.f1825id != 777000 && !UserObject.isReplyUser(user3) && !arrayList.contains(string2)) {
                        arrayList.add(string2);
                    }
                }
            }
        }
        return arrayList;
    }

    private DraftSavedHint getDraftSavedHint() {
        if (this.draftSavedHint == null) {
            DraftSavedHint draftSavedHint = new DraftSavedHint(getContext());
            this.draftSavedHint = draftSavedHint;
            this.controlContainer.addView(draftSavedHint, LayoutHelper.createFrame(-1, -2.0f, 87, 0.0f, 0.0f, 0.0f, 78.0f));
        }
        return this.draftSavedHint;
    }

    private void upload(final boolean z) {
        if (this.preparingUpload) {
            return;
        }
        this.preparingUpload = true;
        applyPaintInBackground(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda98
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$upload$58(z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$upload$58(boolean z) {
        applyPaintMessage();
        this.preparingUpload = false;
        uploadInternal(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void switchTo(final int i) {
        if (this.switchingStory) {
            return;
        }
        this.storiesSelector.setSelected(i);
        this.switchingStory = true;
        applyPaintSwitching(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda107
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$switchTo$59(i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$switchTo$59(int i) {
        applyPaintMessage();
        this.switchingStory = false;
        File file = this.outputEntry.draftThumbFile;
        if (file != null) {
            file.delete();
            this.outputEntry.draftThumbFile = null;
        }
        prepareThumb(this.outputEntry, true);
        CharSequence[] charSequenceArr = {this.captionEdit.getText()};
        ArrayList<TLRPC.MessageEntity> entities = MessagesController.getInstance(this.currentAccount).storyEntitiesAllowed() ? MediaDataController.getInstance(this.currentAccount).getEntities(charSequenceArr, true) : new ArrayList<>();
        ArrayList<TLRPC.MessageEntity> entities2 = MessagesController.getInstance(this.currentAccount).storyEntitiesAllowed() ? MediaDataController.getInstance(this.currentAccount).getEntities(new CharSequence[]{this.outputEntry.caption}, true) : new ArrayList<>();
        StoryEntry storyEntry = this.outputEntry;
        storyEntry.editedCaption = (TextUtils.equals(storyEntry.caption, charSequenceArr[0]) && MediaDataController.entitiesEqual(entities, entities2)) ? false : true;
        this.outputEntry.caption = new SpannableString(this.captionEdit.getText());
        destroyPhotoPaintView();
        destroyPhotoFilterView();
        StoryEntry storyEntry2 = this.outputEntry;
        this.mode = (storyEntry2 == null || !storyEntry2.isVideo) ? 0 : 1;
        this.outputEntry = (StoryEntry) this.entries.get(i);
        onNavigateStart(0, 1);
        onNavigateEnd(0, 1);
        this.storiesSelector.update();
        this.captionEdit.setText(this.outputEntry.caption);
    }

    private void uploadInternal(final boolean z) {
        if (this.outputEntry == null) {
            close(true);
            return;
        }
        destroyPhotoFilterView();
        Utilities.Callback callback = new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda105
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$uploadInternal$60(z, (StoryEntry) obj);
            }
        };
        if (this.entries == null) {
            ArrayList arrayListCutIntoEntries = this.outputEntry.cutIntoEntries();
            this.entries = arrayListCutIntoEntries;
            if (arrayListCutIntoEntries != null) {
                this.selectedEntries = new ArrayList();
                this.selectedEntriesOrder = new ArrayList();
                for (int i = 0; i < this.entries.size(); i++) {
                    this.selectedEntries.add(Integer.valueOf(i));
                    this.selectedEntriesOrder.add(Integer.valueOf(i));
                }
            }
        }
        if (this.entries != null) {
            ArrayList arrayList = this.selectedEntriesOrder;
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                Integer num = (Integer) obj;
                if (this.selectedEntries.contains(num)) {
                    StoryEntry storyEntry = (StoryEntry) this.entries.get(num.intValue());
                    StoryEntry storyEntry2 = this.outputEntry;
                    if (storyEntry2 == storyEntry) {
                        CharSequence[] charSequenceArr = {this.captionEdit.getText()};
                        ArrayList<TLRPC.MessageEntity> entities = MessagesController.getInstance(this.currentAccount).storyEntitiesAllowed() ? MediaDataController.getInstance(this.currentAccount).getEntities(charSequenceArr, true) : new ArrayList<>();
                        ArrayList<TLRPC.MessageEntity> entities2 = MessagesController.getInstance(this.currentAccount).storyEntitiesAllowed() ? MediaDataController.getInstance(this.currentAccount).getEntities(new CharSequence[]{this.outputEntry.caption}, true) : new ArrayList<>();
                        StoryEntry storyEntry3 = this.outputEntry;
                        storyEntry3.editedCaption = (TextUtils.equals(storyEntry3.caption, charSequenceArr[0]) && MediaDataController.entitiesEqual(entities, entities2)) ? false : true;
                        this.outputEntry.caption = new SpannableString(this.captionEdit.getText());
                    } else if (storyEntry.caption == null) {
                        storyEntry2.editedCaption = false;
                        storyEntry2.caption = new SpannableString(_UrlKt.FRAGMENT_ENCODE_SET);
                    }
                    callback.run(storyEntry);
                }
            }
        } else {
            CharSequence[] charSequenceArr2 = {this.captionEdit.getText()};
            ArrayList<TLRPC.MessageEntity> entities3 = MessagesController.getInstance(this.currentAccount).storyEntitiesAllowed() ? MediaDataController.getInstance(this.currentAccount).getEntities(charSequenceArr2, true) : new ArrayList<>();
            ArrayList<TLRPC.MessageEntity> entities4 = MessagesController.getInstance(this.currentAccount).storyEntitiesAllowed() ? MediaDataController.getInstance(this.currentAccount).getEntities(new CharSequence[]{this.outputEntry.caption}, true) : new ArrayList<>();
            StoryEntry storyEntry4 = this.outputEntry;
            storyEntry4.editedCaption = (TextUtils.equals(storyEntry4.caption, charSequenceArr2[0]) && MediaDataController.entitiesEqual(entities3, entities4)) ? false : true;
            this.outputEntry.caption = new SpannableString(this.captionEdit.getText());
            callback.run(this.outputEntry);
        }
        final long peerDialogId = UserConfig.getInstance(this.currentAccount).clientUserId;
        TLRPC.InputPeer inputPeer = this.outputEntry.peer;
        if (inputPeer != null && !(inputPeer instanceof TLRPC.TL_inputPeerSelf)) {
            peerDialogId = DialogObject.getPeerDialogId(inputPeer);
        }
        this.outputEntry = null;
        this.wasSend = true;
        this.wasSendPeer = peerDialogId;
        this.forceBackgroundVisible = true;
        checkBackgroundVisibility();
        Runnable runnable = new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda106
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$uploadInternal$62(z, peerDialogId);
            }
        };
        ClosingViewProvider closingViewProvider = this.closingSourceProvider;
        if (closingViewProvider != null) {
            closingViewProvider.preLayout(peerDialogId, runnable);
        } else {
            runnable.run();
        }
        MessagesController.getGlobalMainSettings().edit().putInt("storyhint2", 2).apply();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$uploadInternal$60(boolean z, StoryEntry storyEntry) {
        prepareThumb(storyEntry, false);
        MessagesController.getInstance(this.currentAccount).getStoriesController().uploadStory(storyEntry, z);
        if (storyEntry.isDraft && !storyEntry.isEdit) {
            MessagesController.getInstance(this.currentAccount).getStoriesController().getDraftsController().delete(storyEntry);
        }
        storyEntry.cancelCheckStickers();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$uploadInternal$62(boolean z, long j) {
        if (z) {
            SourceView sourceView = this.fromSourceView;
            if (sourceView != null) {
                sourceView.show(true);
                this.fromSourceView = null;
            }
            Runnable runnable = this.closeListener;
            if (runnable != null) {
                runnable.run();
                this.closeListener = null;
            }
            ClosingViewProvider closingViewProvider = this.closingSourceProvider;
            SourceView view = closingViewProvider != null ? closingViewProvider.getView(j) : null;
            this.fromSourceView = view;
            if (view != null) {
                this.openType = view.type;
                this.containerView.updateBackground();
                FrameLayout frameLayout = this.previewContainer;
                int i = this.openType;
                frameLayout.setBackgroundColor((i == 1 || i == 0) ? 0 : -14737633);
                this.fromRect.set(this.fromSourceView.screenRect);
                SourceView sourceView2 = this.fromSourceView;
                this.fromRounding = sourceView2.rounding;
                sourceView2.hide();
                if (SharedConfig.getDevicePerformanceClass() > 1) {
                    LiteMode.isEnabled(LiteMode.FLAGS_CHAT);
                }
            }
            this.closingSourceProvider = null;
            Activity activity = this.activity;
            if (activity instanceof LaunchActivity) {
                ((LaunchActivity) activity).drawerLayoutContainer.post(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda111
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$uploadInternal$61();
                    }
                });
                return;
            } else {
                close(true);
                return;
            }
        }
        close(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$uploadInternal$61() {
        close(true);
    }

    private File prepareThumb(StoryEntry storyEntry, boolean z) {
        final StoryEntry storyEntry2;
        final boolean z2;
        if (storyEntry == null || this.previewView.getWidth() <= 0 || this.previewView.getHeight() <= 0) {
            return null;
        }
        File file = z ? storyEntry.draftThumbFile : storyEntry.uploadThumbFile;
        if (file != null) {
            file.delete();
        }
        View view = this.collageLayoutView.hasLayout() ? this.collageLayoutView : this.previewView;
        float f = z ? 0.33333334f : 1.0f;
        int width = (int) (view.getWidth() * f);
        final Bitmap bitmapCreateBitmap = Bitmap.createBitmap(width, (int) (view.getHeight() * f), Bitmap.Config.RGB_565);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        canvas.save();
        canvas.scale(f, f);
        AndroidUtilities.makingGlobalBlurBitmap = true;
        view.draw(canvas);
        AndroidUtilities.makingGlobalBlurBitmap = false;
        canvas.restore();
        Paint paint = new Paint(2);
        VideoEditTextureView textureView = this.previewView.getTextureView();
        if (storyEntry.isVideo && !storyEntry.isRepostMessage && textureView != null) {
            Bitmap bitmap = textureView.getBitmap();
            Matrix transform = textureView.getTransform(null);
            if (transform != null) {
                Matrix matrix = new Matrix(transform);
                matrix.postScale(f, f);
                transform = matrix;
            }
            canvas.drawBitmap(bitmap, transform, paint);
            bitmap.recycle();
        }
        File file2 = storyEntry.paintBlurFile;
        if (file2 != null) {
            try {
                Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(file2.getPath());
                canvas.save();
                float width2 = width / bitmapDecodeFile.getWidth();
                canvas.scale(width2, width2);
                canvas.drawBitmap(bitmapDecodeFile, 0.0f, 0.0f, paint);
                canvas.restore();
                bitmapDecodeFile.recycle();
            } catch (Exception e) {
                FileLog.m1136e(e);
            }
        }
        File file3 = storyEntry.paintFile;
        if (file3 != null) {
            try {
                Bitmap bitmapDecodeFile2 = BitmapFactory.decodeFile(file3.getPath());
                canvas.save();
                float width3 = width / bitmapDecodeFile2.getWidth();
                canvas.scale(width3, width3);
                canvas.drawBitmap(bitmapDecodeFile2, 0.0f, 0.0f, paint);
                canvas.restore();
                bitmapDecodeFile2.recycle();
            } catch (Exception e2) {
                FileLog.m1136e(e2);
            }
        }
        PaintView paintView = this.paintView;
        if (paintView != null && paintView.entitiesView != null) {
            canvas.save();
            canvas.scale(f, f);
            PaintView paintView2 = this.paintView;
            paintView2.drawForThemeToggle = true;
            EntitiesContainerView entitiesContainerView = paintView2.entitiesView;
            entitiesContainerView.drawForThumb = true;
            entitiesContainerView.draw(canvas);
            PaintView paintView3 = this.paintView;
            paintView3.entitiesView.drawForThumb = false;
            paintView3.drawForThemeToggle = false;
            canvas.restore();
        }
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapCreateBitmap, 40, 22, true);
        final File fileMakeCacheFile = StoryEntry.makeCacheFile(this.currentAccount, false);
        if (z) {
            storyEntry2 = storyEntry;
            z2 = z;
            Utilities.searchQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda101
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$prepareThumb$64(bitmapCreateBitmap, z2, fileMakeCacheFile, storyEntry2);
                }
            });
        } else {
            storyEntry2 = storyEntry;
            z2 = z;
            try {
                bitmapCreateBitmap.compress(Bitmap.CompressFormat.JPEG, z2 ? 95 : 99, new FileOutputStream(fileMakeCacheFile));
            } catch (Exception e3) {
                FileLog.m1136e(e3);
            }
        }
        if (!z2) {
            storyEntry2.uploadThumbFile = fileMakeCacheFile;
        }
        storyEntry2.thumbBitmap = bitmapCreateScaledBitmap;
        return fileMakeCacheFile;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$prepareThumb$64(Bitmap bitmap, boolean z, final File file, final StoryEntry storyEntry) {
        try {
            bitmap.compress(Bitmap.CompressFormat.JPEG, z ? 95 : 99, new FileOutputStream(file));
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda104
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$prepareThumb$63(storyEntry, file);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$prepareThumb$63(StoryEntry storyEntry, File file) {
        storyEntry.draftThumbFile = file;
        MultipleStoriesSelector multipleStoriesSelector = this.storiesSelector;
        if (multipleStoriesSelector != null) {
            multipleStoriesSelector.update();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCameraFlashModeIcon(String str, boolean z) {
        int i;
        this.flashButton.clearAnimation();
        DualCameraView dualCameraView = this.cameraView;
        if ((dualCameraView != null && dualCameraView.isDual()) || this.animatedRecording) {
            str = null;
        }
        this.flashButtonMode = str;
        boolean z2 = false;
        if (str == null) {
            setActionBarButtonVisible(this.flashButton, false, z);
            return;
        }
        int iHashCode = str.hashCode();
        if (iHashCode != 3551) {
            if (iHashCode == 109935) {
                str.equals("off");
            } else if (iHashCode == 3005871 && str.equals("auto")) {
                i = C2888R.drawable.media_photo_flash_auto2;
                this.flashButton.setContentDescription(LocaleController.getString(C2888R.string.AccDescrCameraFlashAuto));
            }
            i = C2888R.drawable.media_photo_flash_off2;
            this.flashButton.setContentDescription(LocaleController.getString(C2888R.string.AccDescrCameraFlashOff));
        } else if (str.equals("on")) {
            i = C2888R.drawable.media_photo_flash_on2;
            this.flashButton.setContentDescription(LocaleController.getString(C2888R.string.AccDescrCameraFlashOn));
        } else {
            i = C2888R.drawable.media_photo_flash_off2;
            this.flashButton.setContentDescription(LocaleController.getString(C2888R.string.AccDescrCameraFlashOff));
        }
        ToggleButton2 toggleButton2 = this.flashButton;
        this.flashButtonResId = i;
        toggleButton2.setIcon(i, false);
        ToggleButton2 toggleButton22 = this.flashButton;
        if (this.currentPage == 0 && !this.collageListView.isVisible() && this.flashButtonMode != null && !inCheck()) {
            z2 = true;
        }
        setActionBarButtonVisible(toggleButton22, z2, z);
    }

    /* JADX INFO: renamed from: org.telegram.ui.Stories.recorder.StoryRecorder$15 */
    /* JADX INFO: loaded from: classes7.dex */
    class C715615 implements RecordControl.Delegate {
        @Override // org.telegram.ui.Stories.recorder.RecordControl.Delegate
        public long getMaxVideoDuration() {
            return 177000L;
        }

        @Override // org.telegram.ui.Stories.recorder.RecordControl.Delegate
        public /* synthetic */ long getMaxVisibleVideoDuration() {
            return RealWebSocket.CANCEL_AFTER_CLOSE_MILLIS;
        }

        @Override // org.telegram.ui.Stories.recorder.RecordControl.Delegate
        public /* synthetic */ boolean showStoriesDrafts() {
            return RecordControl.Delegate.CC.$default$showStoriesDrafts(this);
        }

        C715615() {
        }

        @Override // org.telegram.ui.Stories.recorder.RecordControl.Delegate
        public boolean canRecordAudio() {
            return StoryRecorder.this.requestAudioPermission();
        }

        @Override // org.telegram.ui.Stories.recorder.RecordControl.Delegate
        public void onPhotoShoot() {
            if (StoryRecorder.this.takingPhoto || StoryRecorder.this.awaitingPlayer || StoryRecorder.this.currentPage != 0 || StoryRecorder.this.cameraView == null || !StoryRecorder.this.cameraView.isInited()) {
                return;
            }
            StoryRecorder.this.cameraHint.hide();
            if (StoryRecorder.this.outputFile != null) {
                try {
                    StoryRecorder.this.outputFile.delete();
                } catch (Exception unused) {
                }
                StoryRecorder.this.outputFile = null;
            }
            if (StoryRecorder.this.qrScanner != null) {
                StoryRecorder.this.qrScanner.setPaused(true);
            }
            StoryRecorder storyRecorder = StoryRecorder.this;
            storyRecorder.outputFile = StoryEntry.makeCacheFile(storyRecorder.currentAccount, false);
            StoryRecorder.this.takingPhoto = true;
            StoryRecorder.this.checkFrontfaceFlashModes();
            StoryRecorder.this.isDark = false;
            if (StoryRecorder.this.cameraView.isFrontface() && StoryRecorder.this.frontfaceFlashMode == 1) {
                StoryRecorder.this.checkIsDark();
            }
            if (StoryRecorder.this.useDisplayFlashlight()) {
                StoryRecorder.this.flashViews.flash(new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$15$$ExternalSyntheticLambda2
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        this.f$0.takePicture((Utilities.Callback) obj);
                    }
                });
            } else {
                takePicture(null);
            }
        }

        @Override // org.telegram.ui.Stories.recorder.RecordControl.Delegate
        public void onCheckClick() {
            ArrayList<StoryEntry> content = StoryRecorder.this.collageLayoutView.getContent();
            int i = 0;
            if (content.size() == 1) {
                StoryRecorder.this.outputEntry = content.get(0);
            } else {
                StoryRecorder storyRecorder = StoryRecorder.this;
                storyRecorder.outputEntry = StoryEntry.asCollage(storyRecorder.collageLayoutView.getLayout(), StoryRecorder.this.collageLayoutView.getContent());
            }
            StoryRecorder storyRecorder2 = StoryRecorder.this;
            if (storyRecorder2.outputEntry != null && StoryRecorder.this.outputEntry.isVideo) {
                i = 1;
            }
            storyRecorder2.mode = i;
            if (StoryRecorder.this.modeSwitcherView != null) {
                StoryRecorder.this.modeSwitcherView.switchMode(StoryRecorder.this.mode);
            }
            StoryPrivacySelector.applySaved(StoryRecorder.this.currentAccount, StoryRecorder.this.outputEntry);
            StoryRecorder.this.navigateTo(1, true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void takePicture(final Utilities.Callback callback) {
            boolean z;
            if (!StoryRecorder.this.useDisplayFlashlight()) {
                StoryRecorder.this.cameraView.startTakePictureAnimation(true);
            }
            if ((StoryRecorder.this.cameraView.isDual() && TextUtils.equals(StoryRecorder.this.cameraView.getCameraSession().getCurrentFlashMode(), "off")) || StoryRecorder.this.collageLayoutView.hasLayout()) {
                if (!StoryRecorder.this.collageLayoutView.hasLayout()) {
                    StoryRecorder.this.cameraView.pauseAsTakingPicture();
                }
                Bitmap bitmap = StoryRecorder.this.cameraView.getTextureView().getBitmap();
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(StoryRecorder.this.outputFile.getAbsoluteFile());
                    try {
                        bitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
                        try {
                            fileOutputStream.close();
                            z = true;
                        } catch (Exception e) {
                            e = e;
                            z = true;
                            FileLog.m1136e(e);
                        }
                    } catch (Throwable th) {
                        try {
                            fileOutputStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                } catch (Exception e2) {
                    e = e2;
                    z = false;
                }
                bitmap.recycle();
            } else {
                z = false;
            }
            if (!z) {
                if (StoryRecorder.this.qrScanner != null) {
                    StoryRecorder.this.qrScanner.setPaused(true);
                }
                StoryRecorder.this.takingPhoto = CameraController.getInstance().takePicture(StoryRecorder.this.outputFile, true, StoryRecorder.this.cameraView.getCameraSessionObject(), new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$15$$ExternalSyntheticLambda5
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        this.f$0.lambda$takePicture$1(callback, (Integer) obj);
                    }
                });
                return;
            }
            StoryRecorder.this.takingPhoto = false;
            if (StoryRecorder.this.qrScanner != null) {
                StoryRecorder.this.qrScanner.setPaused(false);
            }
            StoryEntry storyEntryFromPhotoShoot = StoryEntry.fromPhotoShoot(StoryRecorder.this.outputFile, 0);
            storyEntryFromPhotoShoot.botId = StoryRecorder.this.botId;
            storyEntryFromPhotoShoot.botLang = StoryRecorder.this.botLang;
            if (StoryRecorder.this.collageLayoutView.hasLayout()) {
                StoryRecorder.this.outputFile = null;
                if (StoryRecorder.this.collageLayoutView.push(storyEntryFromPhotoShoot)) {
                    StoryRecorder storyRecorder = StoryRecorder.this;
                    storyRecorder.outputEntry = StoryEntry.asCollage(storyRecorder.collageLayoutView.getLayout(), StoryRecorder.this.collageLayoutView.getContent());
                    StoryPrivacySelector.applySaved(StoryRecorder.this.currentAccount, StoryRecorder.this.outputEntry);
                    StoryRecorder.this.fromGallery = false;
                    if (callback != null) {
                        callback.run(null);
                    }
                } else if (callback != null) {
                    callback.run(null);
                }
                StoryRecorder.this.updateActionBarButtons(true);
                return;
            }
            StoryRecorder.this.outputEntry = storyEntryFromPhotoShoot;
            StoryPrivacySelector.applySaved(StoryRecorder.this.currentAccount, StoryRecorder.this.outputEntry);
            StoryRecorder.this.fromGallery = false;
            if (callback != null) {
                callback.run(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$15$$ExternalSyntheticLambda6
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$takePicture$2();
                    }
                });
            } else {
                StoryRecorder.this.navigateTo(1, true);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$takePicture$1(Utilities.Callback callback, Integer num) {
            int i;
            int i2;
            if (StoryRecorder.this.useDisplayFlashlight()) {
                try {
                    StoryRecorder.this.windowView.performHapticFeedback(3, 1);
                } catch (Exception unused) {
                }
            }
            StoryRecorder.this.takingPhoto = false;
            if (StoryRecorder.this.qrScanner != null) {
                StoryRecorder.this.qrScanner.setPaused(false);
            }
            if (StoryRecorder.this.outputFile == null) {
                return;
            }
            try {
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                BitmapFactory.decodeFile(StoryRecorder.this.outputFile.getAbsolutePath(), options);
                i = options.outWidth;
                try {
                    i2 = options.outHeight;
                } catch (Exception unused2) {
                    i2 = -1;
                }
            } catch (Exception unused3) {
                i = -1;
            }
            int i3 = num.intValue() == -1 ? 0 : 90;
            if (num.intValue() == -1) {
                if (i > i2) {
                    i3 = 270;
                }
            } else if (i2 > i && i3 != 0) {
                i3 = 0;
            }
            StoryEntry storyEntryFromPhotoShoot = StoryEntry.fromPhotoShoot(StoryRecorder.this.outputFile, i3);
            if (storyEntryFromPhotoShoot != null) {
                storyEntryFromPhotoShoot.botId = StoryRecorder.this.botId;
                storyEntryFromPhotoShoot.botLang = StoryRecorder.this.botLang;
            }
            if (StoryRecorder.this.collageLayoutView.hasLayout()) {
                StoryRecorder.this.outputFile = null;
                if (StoryRecorder.this.collageLayoutView.push(storyEntryFromPhotoShoot)) {
                    StoryRecorder storyRecorder = StoryRecorder.this;
                    storyRecorder.outputEntry = StoryEntry.asCollage(storyRecorder.collageLayoutView.getLayout(), StoryRecorder.this.collageLayoutView.getContent());
                    StoryPrivacySelector.applySaved(StoryRecorder.this.currentAccount, StoryRecorder.this.outputEntry);
                    StoryRecorder.this.fromGallery = false;
                    if (callback != null) {
                        callback.run(null);
                    }
                } else if (callback != null) {
                    callback.run(null);
                }
                StoryRecorder.this.updateActionBarButtons(true);
                return;
            }
            StoryRecorder.this.outputEntry = storyEntryFromPhotoShoot;
            StoryPrivacySelector.applySaved(StoryRecorder.this.currentAccount, StoryRecorder.this.outputEntry);
            StoryRecorder.this.fromGallery = false;
            if (callback != null) {
                callback.run(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$15$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$takePicture$0();
                    }
                });
            } else {
                StoryRecorder.this.navigateTo(1, true);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$takePicture$0() {
            StoryRecorder.this.navigateTo(1, true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$takePicture$2() {
            StoryRecorder.this.navigateTo(1, true);
        }

        @Override // org.telegram.ui.Stories.recorder.RecordControl.Delegate
        public void onVideoRecordStart(final boolean z, final Runnable runnable) {
            if (StoryRecorder.this.takingVideo || StoryRecorder.this.stoppingTakingVideo || StoryRecorder.this.awaitingPlayer || StoryRecorder.this.currentPage != 0 || StoryRecorder.this.cameraView == null || StoryRecorder.this.cameraView.getCameraSession() == null) {
                return;
            }
            if (StoryRecorder.this.dualHint != null) {
                StoryRecorder.this.dualHint.hide();
            }
            if (StoryRecorder.this.savedDualHint != null) {
                StoryRecorder.this.savedDualHint.hide();
            }
            StoryRecorder.this.cameraHint.hide();
            StoryRecorder.this.takingVideo = true;
            if (StoryRecorder.this.qrScanner != null) {
                StoryRecorder.this.qrScanner.setPaused(true);
            }
            if (StoryRecorder.this.outputFile != null) {
                try {
                    StoryRecorder.this.outputFile.delete();
                } catch (Exception unused) {
                }
                StoryRecorder.this.outputFile = null;
            }
            StoryRecorder storyRecorder = StoryRecorder.this;
            storyRecorder.outputFile = StoryEntry.makeCacheFile(storyRecorder.currentAccount, true);
            StoryRecorder.this.checkFrontfaceFlashModes();
            StoryRecorder.this.isDark = false;
            if (StoryRecorder.this.cameraView.isFrontface() && StoryRecorder.this.frontfaceFlashMode == 1) {
                StoryRecorder.this.checkIsDark();
            }
            if (StoryRecorder.this.useDisplayFlashlight()) {
                StoryRecorder.this.flashViews.flashIn(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$15$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onVideoRecordStart$3(z, runnable);
                    }
                });
            } else {
                lambda$onVideoRecordStart$3(z, runnable);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: startRecording, reason: merged with bridge method [inline-methods] */
        public void lambda$onVideoRecordStart$3(final boolean z, final Runnable runnable) {
            if (StoryRecorder.this.cameraView == null) {
                return;
            }
            CameraController.getInstance().recordVideo(StoryRecorder.this.cameraView.getCameraSessionObject(), StoryRecorder.this.outputFile, false, new CameraController.VideoTakeCallback() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$15$$ExternalSyntheticLambda3
                @Override // org.telegram.messenger.camera.CameraController.VideoTakeCallback
                public final void onFinishVideoRecording(String str, long j) {
                    this.f$0.lambda$startRecording$5(str, j);
                }
            }, new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$15$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$startRecording$6(runnable, z);
                }
            }, StoryRecorder.this.cameraView, true);
            if (StoryRecorder.this.mode != 1) {
                StoryRecorder.this.mode = 1;
                StoryRecorder.this.collageListView.setVisible(false, true);
                StoryRecorder storyRecorder = StoryRecorder.this;
                storyRecorder.showVideoTimer(storyRecorder.mode == 1, true);
                StoryRecorder.this.modeSwitcherView.switchMode(StoryRecorder.this.mode);
                StoryRecorder.this.recordControl.startAsVideo(StoryRecorder.this.mode == 1);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$startRecording$5(String str, long j) {
            if (StoryRecorder.this.recordControl != null) {
                StoryRecorder.this.recordControl.stopRecordingLoading(true);
            }
            if (StoryRecorder.this.useDisplayFlashlight()) {
                StoryRecorder.this.flashViews.flashOut();
            }
            if (StoryRecorder.this.outputFile == null || StoryRecorder.this.cameraView == null) {
                return;
            }
            StoryRecorder.this.takingVideo = false;
            StoryRecorder.this.stoppingTakingVideo = false;
            if (StoryRecorder.this.qrScanner != null) {
                StoryRecorder.this.qrScanner.setPaused(false);
            }
            if (j <= 800) {
                StoryRecorder.this.animateRecording(false, true);
                StoryRecorder.this.setAwakeLock(false);
                StoryRecorder.this.videoTimerView.setRecording(false, true);
                if (StoryRecorder.this.recordControl != null) {
                    StoryRecorder.this.recordControl.stopRecordingLoading(true);
                }
                try {
                    StoryRecorder.this.outputFile.delete();
                    StoryRecorder.this.outputFile = null;
                } catch (Exception e) {
                    FileLog.m1136e(e);
                }
                if (str != null) {
                    try {
                        new File(str).delete();
                        return;
                    } catch (Exception e2) {
                        FileLog.m1136e(e2);
                        return;
                    }
                }
                return;
            }
            StoryRecorder.this.showVideoTimer(false, true);
            StoryEntry storyEntryFromVideoShoot = StoryEntry.fromVideoShoot(StoryRecorder.this.outputFile, str, j);
            storyEntryFromVideoShoot.botId = StoryRecorder.this.botId;
            storyEntryFromVideoShoot.botLang = StoryRecorder.this.botLang;
            storyEntryFromVideoShoot.setupMultipleStoriesSelector();
            StoryRecorder.this.animateRecording(false, true);
            StoryRecorder.this.setAwakeLock(false);
            StoryRecorder.this.videoTimerView.setRecording(false, true);
            if (StoryRecorder.this.recordControl != null) {
                StoryRecorder.this.recordControl.stopRecordingLoading(true);
            }
            if (StoryRecorder.this.collageLayoutView.hasLayout()) {
                StoryRecorder.this.outputFile = null;
                storyEntryFromVideoShoot.videoVolume = 1.0f;
                if (StoryRecorder.this.collageLayoutView.push(storyEntryFromVideoShoot)) {
                    StoryRecorder storyRecorder = StoryRecorder.this;
                    storyRecorder.outputEntry = StoryEntry.asCollage(storyRecorder.collageLayoutView.getLayout(), StoryRecorder.this.collageLayoutView.getContent());
                    StoryPrivacySelector.applySaved(StoryRecorder.this.currentAccount, StoryRecorder.this.outputEntry);
                    StoryRecorder.this.fromGallery = false;
                    int videoWidth = StoryRecorder.this.cameraView.getVideoWidth();
                    int videoHeight = StoryRecorder.this.cameraView.getVideoHeight();
                    if (videoWidth > 0 && videoHeight > 0) {
                        StoryRecorder.this.outputEntry.width = videoWidth;
                        StoryRecorder.this.outputEntry.height = videoHeight;
                        StoryRecorder.this.outputEntry.setupMatrix();
                    }
                }
                StoryRecorder.this.updateActionBarButtons(true);
                return;
            }
            StoryRecorder.this.outputEntry = storyEntryFromVideoShoot;
            StoryPrivacySelector.applySaved(StoryRecorder.this.currentAccount, StoryRecorder.this.outputEntry);
            StoryRecorder.this.fromGallery = false;
            int videoWidth2 = StoryRecorder.this.cameraView.getVideoWidth();
            int videoHeight2 = StoryRecorder.this.cameraView.getVideoHeight();
            if (videoWidth2 > 0 && videoHeight2 > 0) {
                StoryRecorder.this.outputEntry.width = videoWidth2;
                StoryRecorder.this.outputEntry.height = videoHeight2;
                StoryRecorder.this.outputEntry.setupMatrix();
            }
            StoryRecorder.this.navigateToPreviewWithPlayerAwait(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$15$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$startRecording$4();
                }
            }, 0L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$startRecording$4() {
            StoryRecorder.this.navigateTo(1, true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$startRecording$6(Runnable runnable, boolean z) {
            runnable.run();
            StoryRecorder.this.hintTextView.setText(LocaleController.getString(z ? C2888R.string.StoryHintSwipeToZoom : C2888R.string.StoryHintPinchToZoom), false);
            StoryRecorder.this.animateRecording(true, true);
            StoryRecorder.this.setAwakeLock(true);
            StoryRecorder.this.collageListView.setVisible(false, true);
            StoryRecorder.this.videoTimerView.setRecording(true, true);
            StoryRecorder.this.showVideoTimer(true, true);
        }

        @Override // org.telegram.ui.Stories.recorder.RecordControl.Delegate
        public void onVideoRecordLocked() {
            StoryRecorder.this.hintTextView.setText(LocaleController.getString(C2888R.string.StoryHintPinchToZoom), true);
        }

        @Override // org.telegram.ui.Stories.recorder.RecordControl.Delegate
        public void onVideoRecordEnd(boolean z) {
            if (StoryRecorder.this.stoppingTakingVideo || !StoryRecorder.this.takingVideo) {
                return;
            }
            StoryRecorder.this.stoppingTakingVideo = true;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$15$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onVideoRecordEnd$7();
                }
            }, z ? 0L : 400L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onVideoRecordEnd$7() {
            if (StoryRecorder.this.qrScanner != null) {
                StoryRecorder.this.qrScanner.setPaused(false);
            }
            if (StoryRecorder.this.takingVideo && StoryRecorder.this.stoppingTakingVideo && StoryRecorder.this.cameraView != null) {
                StoryRecorder.this.showZoomControls(false, true);
                CameraController.getInstance().stopVideoRecording(StoryRecorder.this.cameraView.getCameraSessionRecording(), false, false);
            }
        }

        @Override // org.telegram.ui.Stories.recorder.RecordControl.Delegate
        public void onVideoDuration(long j) {
            StoryRecorder.this.videoTimerView.setDuration(j, true);
        }

        @Override // org.telegram.ui.Stories.recorder.RecordControl.Delegate
        public void onGalleryClick() {
            if (StoryRecorder.this.currentPage != 0 || StoryRecorder.this.takingPhoto || StoryRecorder.this.takingVideo || !StoryRecorder.this.requestGalleryPermission()) {
                return;
            }
            StoryRecorder.this.lambda$animateGalleryListView$74(true);
        }

        @Override // org.telegram.ui.Stories.recorder.RecordControl.Delegate
        public void onFlipClick() {
            if (StoryRecorder.this.cameraView == null || StoryRecorder.this.awaitingPlayer || StoryRecorder.this.takingPhoto || !StoryRecorder.this.cameraView.isInited() || StoryRecorder.this.currentPage != 0) {
                return;
            }
            if (StoryRecorder.this.savedDualHint != null) {
                StoryRecorder.this.savedDualHint.hide();
            }
            if (StoryRecorder.this.useDisplayFlashlight() && StoryRecorder.this.frontfaceFlashModes != null && !StoryRecorder.this.frontfaceFlashModes.isEmpty()) {
                ApplicationLoader.applicationContext.getSharedPreferences("camera", 0).edit().putString("flashMode", (String) StoryRecorder.this.frontfaceFlashModes.get(StoryRecorder.this.frontfaceFlashMode)).commit();
            }
            StoryRecorder.this.cameraView.switchCamera();
            StoryRecorder storyRecorder = StoryRecorder.this;
            storyRecorder.saveCameraFace(storyRecorder.cameraView.isFrontface());
            if (StoryRecorder.this.useDisplayFlashlight()) {
                StoryRecorder.this.flashViews.flashIn(null);
            } else {
                StoryRecorder.this.flashViews.flashOut();
            }
        }

        @Override // org.telegram.ui.Stories.recorder.RecordControl.Delegate
        public void onFlipLongClick() {
            if (StoryRecorder.this.cameraView != null) {
                StoryRecorder.this.cameraView.toggleDual();
            }
        }

        @Override // org.telegram.ui.Stories.recorder.RecordControl.Delegate
        public void onZoom(float f) {
            StoryRecorder.this.zoomControlView.setZoom(f, true);
            StoryRecorder.this.showZoomControls(false, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAwakeLock(boolean z) {
        if (z) {
            this.windowLayoutParams.flags |= 128;
        } else {
            this.windowLayoutParams.flags &= -129;
        }
        try {
            this.windowManager.updateViewLayout(this.windowView, this.windowLayoutParams);
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void animateRecording(boolean z, boolean z2) {
        CollageLayoutButton.CollageLayoutListView collageLayoutListView;
        if (z) {
            HintView2 hintView2 = this.dualHint;
            if (hintView2 != null) {
                hintView2.hide();
            }
            HintView2 hintView22 = this.savedDualHint;
            if (hintView22 != null) {
                hintView22.hide();
            }
            HintView2 hintView23 = this.muteHint;
            if (hintView23 != null) {
                hintView23.hide();
            }
            HintView2 hintView24 = this.cameraHint;
            if (hintView24 != null) {
                hintView24.hide();
            }
        }
        if (this.animatedRecording == z && this.animatedRecordingWasInCheck == inCheck()) {
            return;
        }
        AnimatorSet animatorSet = this.recordingAnimator;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.recordingAnimator = null;
        }
        this.animatedRecording = z;
        this.animatedRecordingWasInCheck = inCheck();
        if (z && (collageLayoutListView = this.collageListView) != null && collageLayoutListView.isVisible()) {
            this.collageListView.setVisible(false, z2);
        }
        updateActionBarButtons(z2);
        if (z2) {
            AnimatorSet animatorSet2 = new AnimatorSet();
            this.recordingAnimator = animatorSet2;
            HintTextView hintTextView = this.hintTextView;
            Property property = View.ALPHA;
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(hintTextView, (Property<HintTextView, Float>) property, (z && this.currentPage == 0 && !inCheck()) ? 1.0f : 0.0f);
            HintTextView hintTextView2 = this.hintTextView;
            Property property2 = View.TRANSLATION_Y;
            animatorSet2.playTogether(objectAnimatorOfFloat, ObjectAnimator.ofFloat(hintTextView2, (Property<HintTextView, Float>) property2, (z && this.currentPage == 0 && !inCheck()) ? 0.0f : AndroidUtilities.m1124dp(16.0f)), ObjectAnimator.ofFloat(this.collageHintTextView, (Property<HintTextView, Float>) property, (!z && this.currentPage == 0 && inCheck()) ? 0.6f : 0.0f), ObjectAnimator.ofFloat(this.collageHintTextView, (Property<HintTextView, Float>) property2, (!z && this.currentPage == 0 && inCheck()) ? 0.0f : AndroidUtilities.m1124dp(16.0f)), ObjectAnimator.ofFloat(this.modeSwitcherView, (Property<StoryModeTabs, Float>) property, (z || this.currentPage != 0 || inCheck()) ? 0.0f : 1.0f), ObjectAnimator.ofFloat(this.modeSwitcherView, (Property<StoryModeTabs, Float>) property2, (z || this.currentPage != 0 || inCheck()) ? AndroidUtilities.m1124dp(16.0f) : 0.0f));
            this.recordingAnimator.setDuration(260L);
            this.recordingAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            this.recordingAnimator.start();
            return;
        }
        this.hintTextView.setAlpha((z && this.currentPage == 0 && !inCheck()) ? 1.0f : 0.0f);
        this.hintTextView.setTranslationY((z && this.currentPage == 0 && !inCheck()) ? 0.0f : AndroidUtilities.m1124dp(16.0f));
        this.collageHintTextView.setAlpha((!z && this.currentPage == 0 && inCheck()) ? 0.6f : 0.0f);
        this.collageHintTextView.setTranslationY((!z && this.currentPage == 0 && inCheck()) ? 0.0f : AndroidUtilities.m1124dp(16.0f));
        this.modeSwitcherView.setAlpha((z || this.currentPage != 0 || inCheck()) ? 0.0f : 1.0f);
        this.modeSwitcherView.setTranslationY((z || this.currentPage != 0 || inCheck()) ? AndroidUtilities.m1124dp(16.0f) : 0.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkIsDark() {
        DualCameraView dualCameraView = this.cameraView;
        if (dualCameraView == null || dualCameraView.getTextureView() == null) {
            this.isDark = false;
            return;
        }
        Bitmap bitmap = this.cameraView.getTextureView().getBitmap();
        if (bitmap == null) {
            this.isDark = false;
            return;
        }
        int width = bitmap.getWidth() / 12;
        int height = bitmap.getHeight() / 12;
        float fComputePerceivedBrightness = 0.0f;
        for (int i = 0; i < 10; i++) {
            int i2 = 0;
            while (i2 < 10) {
                i2++;
                fComputePerceivedBrightness += AndroidUtilities.computePerceivedBrightness(bitmap.getPixel((i + 1) * width, i2 * height));
            }
        }
        float f = fComputePerceivedBrightness / 100.0f;
        bitmap.recycle();
        this.isDark = f < 0.22f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean useDisplayFlashlight() {
        DualCameraView dualCameraView;
        if ((!this.takingPhoto && !this.takingVideo) || (dualCameraView = this.cameraView) == null || !dualCameraView.isFrontface()) {
            return false;
        }
        int i = this.frontfaceFlashMode;
        return i == 2 || (i == 1 && this.isDark);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showVideoTimer(final boolean z, boolean z2) {
        if (this.videoTimerShown == z) {
            return;
        }
        this.videoTimerShown = z;
        if (z2) {
            this.videoTimerView.animate().alpha(z ? 1.0f : 0.0f).setDuration(350L).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).withEndAction(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda54
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$showVideoTimer$65(z);
                }
            }).start();
            return;
        }
        this.videoTimerView.clearAnimation();
        this.videoTimerView.setAlpha(z ? 1.0f : 0.0f);
        if (z) {
            return;
        }
        this.videoTimerView.setRecording(false, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showVideoTimer$65(boolean z) {
        if (z) {
            return;
        }
        this.videoTimerView.setRecording(false, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showZoomControls(final boolean z, boolean z2) {
        if ((this.zoomControlView.getTag() != null && z) || (this.zoomControlView.getTag() == null && !z)) {
            if (z) {
                Runnable runnable = this.zoomControlHideRunnable;
                if (runnable != null) {
                    AndroidUtilities.cancelRunOnUIThread(runnable);
                }
                Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda83
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$showZoomControls$66();
                    }
                };
                this.zoomControlHideRunnable = runnable2;
                AndroidUtilities.runOnUIThread(runnable2, 2000L);
                return;
            }
            return;
        }
        AnimatorSet animatorSet = this.zoomControlAnimation;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        this.zoomControlView.setTag(z ? 1 : null);
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.zoomControlAnimation = animatorSet2;
        animatorSet2.setDuration(180L);
        if (z) {
            this.zoomControlView.setVisibility(0);
        }
        this.zoomControlAnimation.playTogether(ObjectAnimator.ofFloat(this.zoomControlView, (Property<ZoomControlView, Float>) View.ALPHA, z ? 1.0f : 0.0f));
        this.zoomControlAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.16
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (!z) {
                    StoryRecorder.this.zoomControlView.setVisibility(8);
                }
                StoryRecorder.this.zoomControlAnimation = null;
            }
        });
        this.zoomControlAnimation.start();
        if (z) {
            Runnable runnable3 = new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda84
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$showZoomControls$67();
                }
            };
            this.zoomControlHideRunnable = runnable3;
            AndroidUtilities.runOnUIThread(runnable3, 2000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showZoomControls$66() {
        showZoomControls(false, true);
        this.zoomControlHideRunnable = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showZoomControls$67() {
        showZoomControls(false, true);
        this.zoomControlHideRunnable = null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:69:0x00a4, code lost:
    
        if (r0.editedCaption == false) goto L110;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onBackPressed() {
        StoryEntry storyEntry;
        StoryEntry storyEntry2;
        StoryEntry storyEntry3;
        PaintView paintView;
        StoryEntry storyEntry4;
        PaintView paintView2;
        PaintView paintView3;
        ValueAnimator valueAnimator = this.openCloseAnimator;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            return false;
        }
        CaptionStory captionStory = this.captionEdit;
        if (captionStory != null && captionStory.stopRecording()) {
            return false;
        }
        if (this.takingVideo) {
            this.recordControl.stopRecording();
            return false;
        }
        if (this.takingPhoto || this.captionEdit.onBackPressed() || this.storiesSelector.onBackPressed()) {
            return false;
        }
        GalleryListView galleryListView = this.galleryListView;
        if (galleryListView != null) {
            if (galleryListView.onBackPressed()) {
                return false;
            }
            lambda$animateGalleryListView$74(false);
            this.lastGallerySelectedAlbum = null;
            return false;
        }
        if (this.currentEditMode == 0 && (paintView3 = this.paintView) != null && paintView3.onBackPressed()) {
            return false;
        }
        if (this.currentEditMode > -1) {
            switchToEditMode(-1, true);
            return false;
        }
        if (this.currentPage == 0 && this.collageLayoutView.hasContent()) {
            this.collageLayoutView.clear(true);
            updateActionBarButtons(true);
            return false;
        }
        if (this.currentPage == 1 && (((storyEntry2 = this.outputEntry) == null || (!storyEntry2.isRepost && !storyEntry2.isRepostMessage)) && !this.isReposting)) {
            if (storyEntry2 != null && storyEntry2.isEdit && ((paintView2 = this.paintView) == null || !paintView2.hasChanges())) {
                StoryEntry storyEntry5 = this.outputEntry;
                if (!storyEntry5.editedMedia) {
                }
            }
            PaintView paintView4 = this.paintView;
            if (paintView4 != null && paintView4.onBackPressed()) {
                return false;
            }
            if (this.botId == 0 && (((this.fromGallery && !this.collageLayoutView.hasLayout() && (((paintView = this.paintView) == null || !paintView.hasChanges()) && ((storyEntry4 = this.outputEntry) == null || storyEntry4.filterFile == null))) || !this.previewButtons.isShareEnabled()) && (((storyEntry3 = this.outputEntry) == null || !storyEntry3.isEdit || (!storyEntry3.isRepost && !storyEntry3.isRepostMessage)) && !this.isReposting && (storyEntry3 == null || !storyEntry3.isShare)))) {
                navigateTo(0, true);
            } else if (this.botId != 0) {
                close(true);
            } else {
                showDismissEntry();
            }
            return false;
        }
        if (this.currentPage == 2 && (storyEntry = this.outputEntry) != null && !storyEntry.isEditingCover) {
            processDone();
            navigateTo(1, true);
            return false;
        }
        close(true);
        return true;
    }

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
    private void setReply() {
        SpannableStringBuilder spannableStringBuilderAppend;
        CaptionStory captionStory = this.captionEdit;
        if (captionStory == null) {
            return;
        }
        StoryEntry storyEntry = this.outputEntry;
        if (storyEntry == null || !storyEntry.isRepost) {
            captionStory.setReply(null, null);
            return;
        }
        TLRPC.Peer peer = storyEntry.repostPeer;
        if (peer instanceof TLRPC.TL_peerUser) {
            String userName = UserObject.getUserName(MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(peer.user_id)));
            StoryEntry storyEntry2 = this.outputEntry;
            spannableStringBuilderAppend = new SpannableStringBuilder(MessageObject.userSpan()).append((CharSequence) " ").append((CharSequence) userName);
            storyEntry2.repostPeerName = spannableStringBuilderAppend;
        } else {
            TLRPC.Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-DialogObject.getPeerDialogId(peer)));
            String str = chat == null ? _UrlKt.FRAGMENT_ENCODE_SET : chat.title;
            StoryEntry storyEntry3 = this.outputEntry;
            spannableStringBuilderAppend = new SpannableStringBuilder(MessageObject.userSpan()).append((CharSequence) " ").append((CharSequence) str);
            storyEntry3.repostPeerName = spannableStringBuilderAppend;
        }
        String str2 = this.outputEntry.repostCaption;
        boolean zIsEmpty = TextUtils.isEmpty(str2);
        CharSequence charSequence = str2;
        if (zIsEmpty) {
            SpannableString spannableString = new SpannableString(LocaleController.getString(C2888R.string.Story));
            spannableString.setSpan(new CharacterStyle() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.17
                @Override // android.text.style.CharacterStyle
                public void updateDrawState(TextPaint textPaint) {
                    textPaint.setAlpha(128);
                }
            }, 0, spannableString.length(), 33);
            charSequence = spannableString;
        }
        this.captionEdit.setReply(spannableStringBuilderAppend, charSequence);
    }

    public void navigateToPreviewWithPlayerAwait(Runnable runnable, long j) {
        navigateToPreviewWithPlayerAwait(runnable, j, 800L);
    }

    public void navigateToPreviewWithPlayerAwait(final Runnable runnable, long j, long j2) {
        if (this.awaitingPlayer || this.outputEntry == null) {
            return;
        }
        Runnable runnable2 = this.afterPlayerAwait;
        if (runnable2 != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable2);
        }
        this.previewAlreadySet = true;
        this.awaitingPlayer = true;
        this.afterPlayerAwait = new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda112
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$navigateToPreviewWithPlayerAwait$68(runnable);
            }
        };
        this.previewView.setAlpha(0.0f);
        this.previewView.setVisibility(0);
        this.previewView.set(this.outputEntry, this.afterPlayerAwait, j);
        this.previewView.setupAudio(this.outputEntry, false);
        AndroidUtilities.runOnUIThread(this.afterPlayerAwait, j2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$navigateToPreviewWithPlayerAwait$68(Runnable runnable) {
        lambda$animateGalleryListView$74(false);
        AndroidUtilities.cancelRunOnUIThread(this.afterPlayerAwait);
        this.afterPlayerAwait = null;
        this.awaitingPlayer = false;
        runnable.run();
    }

    /* JADX WARN: Removed duplicated region for block: B:131:0x01de A[PHI: r17
  0x01de: PHI (r17v2 float) = (r17v4 float), (r17v5 float), (r17v5 float) binds: [B:130:0x01dc, B:125:0x01d1, B:127:0x01d7] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0215  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0218  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x022f  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x0240  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0243  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0254  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0257  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0268  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x026b  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x0283  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x02a7  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x02b8  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x02bb  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x02cc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void navigateTo(final int i, boolean z) {
        StoryEntry storyEntry;
        StoryEntry storyEntry2;
        float f;
        float f2;
        ImageView imageView;
        StoryEntry storyEntry3;
        StoryEntry storyEntry4;
        StoryEntry storyEntry5;
        DualCameraView dualCameraView;
        final int i2 = this.currentPage;
        if (i == i2) {
            return;
        }
        this.currentPage = i;
        AnimatorSet animatorSet = this.pageAnimator;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        onNavigateStart(i2, i);
        PreviewButtons previewButtons = this.previewButtons;
        if (previewButtons != null) {
            previewButtons.appear(i == 1, z);
        }
        showVideoTimer(i == 0 && this.mode == 1 && !this.collageListView.isVisible() && !inCheck(), z);
        if (i != 1) {
            this.videoTimeView.show(false, z);
        }
        setActionBarButtonVisible(this.backButton, !this.collageListView.isVisible(), z);
        setActionBarButtonVisible(this.flashButton, (this.animatedRecording || i != 0 || this.collageListView.isVisible() || this.flashButtonMode == null || inCheck()) ? false : true, z);
        setActionBarButtonVisible(this.dualButton, (this.animatedRecording || i != 0 || (dualCameraView = this.cameraView) == null || !dualCameraView.dualAvailable() || this.collageListView.isVisible() || this.collageLayoutView.hasLayout()) ? false : true, true);
        setActionBarButtonVisible(this.collageButton, (this.animatedRecording || i != 0 || this.collageListView.isVisible()) ? false : true, z);
        updateActionBarButtons(z);
        if (z) {
            this.pageAnimator = new AnimatorSet();
            ArrayList arrayList = new ArrayList();
            DualCameraView dualCameraView2 = this.cameraView;
            if (dualCameraView2 != null) {
                arrayList.add(ObjectAnimator.ofFloat(dualCameraView2, (Property<DualCameraView, Float>) View.ALPHA, i == 0 ? 1.0f : 0.0f));
            }
            PreviewView previewView = this.previewView;
            Property property = View.ALPHA;
            arrayList.add(ObjectAnimator.ofFloat(previewView, (Property<PreviewView, Float>) property, ((i != 1 || this.collageLayoutView.hasLayout()) && i != 2) ? 0.0f : 1.0f));
            CollageLayoutView2 collageLayoutView2 = this.collageLayoutView;
            arrayList.add(ObjectAnimator.ofFloat(collageLayoutView2, (Property<CollageLayoutView2, Float>) property, (i == 0 || (i == 1 && collageLayoutView2.hasLayout())) ? 1.0f : 0.0f));
            arrayList.add(ObjectAnimator.ofFloat(this.recordControl, (Property<RecordControl, Float>) property, i == 0 ? 1.0f : 0.0f));
            RecordControl recordControl = this.recordControl;
            Property property2 = View.TRANSLATION_Y;
            arrayList.add(ObjectAnimator.ofFloat(recordControl, (Property<RecordControl, Float>) property2, i == 0 ? 0.0f : AndroidUtilities.m1124dp(24.0f)));
            arrayList.add(ObjectAnimator.ofFloat(this.qrLinkView, (Property<ScannedLinkPreview, Float>) property, i == 0 ? 1.0f : 0.0f));
            arrayList.add(ObjectAnimator.ofFloat(this.modeSwitcherView, (Property<StoryModeTabs, Float>) property, (i != 0 || inCheck()) ? 0.0f : 1.0f));
            arrayList.add(ObjectAnimator.ofFloat(this.modeSwitcherView, (Property<StoryModeTabs, Float>) property2, (i != 0 || inCheck()) ? AndroidUtilities.m1124dp(24.0f) : 0.0f));
            arrayList.add(ObjectAnimator.ofFloat(this.hintTextView, (Property<HintTextView, Float>) property, (i == 0 && this.animatedRecording && !inCheck()) ? 1.0f : 0.0f));
            arrayList.add(ObjectAnimator.ofFloat(this.collageHintTextView, (Property<HintTextView, Float>) property, (i == 0 && !this.animatedRecording && inCheck()) ? 0.6f : 0.0f));
            FrameLayout frameLayout = this.captionContainer;
            if (i == 1) {
                StoryEntry storyEntry6 = this.outputEntry;
                f = 0.0f;
                if (storyEntry6 == null || storyEntry6.botId == 0) {
                    f2 = 1.0f;
                }
                arrayList.add(ObjectAnimator.ofFloat(frameLayout, (Property<FrameLayout, Float>) property, f2));
                arrayList.add(ObjectAnimator.ofFloat(this.captionContainer, (Property<FrameLayout, Float>) property2, ((i == 1 || !((storyEntry5 = this.outputEntry) == null || storyEntry5.botId == 0)) && i != 2) ? AndroidUtilities.m1124dp(12.0f) : f));
                arrayList.add(ObjectAnimator.ofFloat(this.captionEdit, (Property<CaptionStory, Float>) property, i != 2 ? f : 1.0f));
                arrayList.add(ObjectAnimator.ofFloat(this.titleTextView, (Property<SimpleTextView, Float>) property, (i != 1 || i == 2) ? 1.0f : f));
                arrayList.add(ObjectAnimator.ofFloat(this.coverButton, (Property<ButtonWithCounterView, Float>) property, i != 2 ? 1.0f : f));
                arrayList.add(ObjectAnimator.ofFloat(this.timelineView, (Property<TimelineView, Float>) property, i != 1 ? 1.0f : f));
                arrayList.add(ObjectAnimator.ofFloat(this.coverTimelineView, (Property<TimelineView, Float>) property, i != 2 ? 1.0f : f));
                arrayList.add(ObjectAnimator.ofFloat(this.muteButton, (Property<RLottieImageView, Float>) property, (i == 1 || this.mode != 1) ? f : 1.0f));
                arrayList.add(ObjectAnimator.ofFloat(this.playButton, (Property<PlayPauseButton, Float>) property, (i == 1 || (this.mode != 1 && ((storyEntry4 = this.outputEntry) == null || TextUtils.isEmpty(storyEntry4.audioPath)))) ? f : 1.0f));
                arrayList.add(ObjectAnimator.ofFloat(this.downloadButton, (Property<DownloadButton, Float>) property, i != 1 ? 1.0f : f));
                imageView = this.themeButton;
                if (imageView != null) {
                    arrayList.add(ObjectAnimator.ofFloat(imageView, (Property<ImageView, Float>) property, (i == 1 && (storyEntry3 = this.outputEntry) != null && storyEntry3.isRepostMessage) ? 1.0f : f));
                }
                arrayList.add(ObjectAnimator.ofFloat(this.zoomControlView, (Property<ZoomControlView, Float>) property, f));
                this.pageAnimator.playTogether(arrayList);
                this.pageAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.18
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        StoryRecorder.this.onNavigateEnd(i2, i);
                    }
                });
                this.pageAnimator.setDuration(460L);
                this.pageAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
                this.pageAnimator.start();
                return;
            }
            f = 0.0f;
            if (i != 2) {
                f2 = f;
            }
            arrayList.add(ObjectAnimator.ofFloat(frameLayout, (Property<FrameLayout, Float>) property, f2));
            arrayList.add(ObjectAnimator.ofFloat(this.captionContainer, (Property<FrameLayout, Float>) property2, ((i == 1 || !((storyEntry5 = this.outputEntry) == null || storyEntry5.botId == 0)) && i != 2) ? AndroidUtilities.m1124dp(12.0f) : f));
            arrayList.add(ObjectAnimator.ofFloat(this.captionEdit, (Property<CaptionStory, Float>) property, i != 2 ? f : 1.0f));
            arrayList.add(ObjectAnimator.ofFloat(this.titleTextView, (Property<SimpleTextView, Float>) property, (i != 1 || i == 2) ? 1.0f : f));
            arrayList.add(ObjectAnimator.ofFloat(this.coverButton, (Property<ButtonWithCounterView, Float>) property, i != 2 ? 1.0f : f));
            arrayList.add(ObjectAnimator.ofFloat(this.timelineView, (Property<TimelineView, Float>) property, i != 1 ? 1.0f : f));
            arrayList.add(ObjectAnimator.ofFloat(this.coverTimelineView, (Property<TimelineView, Float>) property, i != 2 ? 1.0f : f));
            arrayList.add(ObjectAnimator.ofFloat(this.muteButton, (Property<RLottieImageView, Float>) property, (i == 1 || this.mode != 1) ? f : 1.0f));
            arrayList.add(ObjectAnimator.ofFloat(this.playButton, (Property<PlayPauseButton, Float>) property, (i == 1 || (this.mode != 1 && ((storyEntry4 = this.outputEntry) == null || TextUtils.isEmpty(storyEntry4.audioPath)))) ? f : 1.0f));
            arrayList.add(ObjectAnimator.ofFloat(this.downloadButton, (Property<DownloadButton, Float>) property, i != 1 ? 1.0f : f));
            imageView = this.themeButton;
            if (imageView != null) {
            }
            arrayList.add(ObjectAnimator.ofFloat(this.zoomControlView, (Property<ZoomControlView, Float>) property, f));
            this.pageAnimator.playTogether(arrayList);
            this.pageAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.18
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    StoryRecorder.this.onNavigateEnd(i2, i);
                }
            });
            this.pageAnimator.setDuration(460L);
            this.pageAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            this.pageAnimator.start();
            return;
        }
        DualCameraView dualCameraView3 = this.cameraView;
        if (dualCameraView3 != null) {
            dualCameraView3.setAlpha(i == 0 ? 1.0f : 0.0f);
        }
        this.previewView.setAlpha(((i != 1 || this.collageLayoutView.hasLayout()) && i != 2) ? 0.0f : 1.0f);
        CollageLayoutView2 collageLayoutView22 = this.collageLayoutView;
        collageLayoutView22.setAlpha((i == 0 || (i == 1 && collageLayoutView22.hasLayout())) ? 1.0f : 0.0f);
        this.recordControl.setAlpha(i == 0 ? 1.0f : 0.0f);
        this.recordControl.setTranslationY(i == 0 ? 0.0f : AndroidUtilities.m1124dp(16.0f));
        this.qrLinkView.setAlpha(i == 0 ? 1.0f : 0.0f);
        this.modeSwitcherView.setAlpha((i != 0 || inCheck()) ? 0.0f : 1.0f);
        this.modeSwitcherView.setTranslationY((i != 0 || inCheck()) ? AndroidUtilities.m1124dp(16.0f) : 0.0f);
        this.hintTextView.setAlpha((i == 0 && this.animatedRecording && !inCheck()) ? 1.0f : 0.0f);
        this.collageHintTextView.setAlpha((i == 0 && !this.animatedRecording && inCheck()) ? 0.6f : 0.0f);
        this.captionContainer.setAlpha((i == 1 || i == 2) ? 1.0f : 0.0f);
        this.captionContainer.setTranslationY((i == 1 || i == 2) ? 0.0f : AndroidUtilities.m1124dp(12.0f));
        this.captionEdit.setAlpha(i == 2 ? 0.0f : 1.0f);
        this.muteButton.setAlpha((i == 1 && this.mode == 1) ? 1.0f : 0.0f);
        this.playButton.setAlpha((i != 1 || (this.mode != 1 && ((storyEntry2 = this.outputEntry) == null || TextUtils.isEmpty(storyEntry2.audioPath)))) ? 0.0f : 1.0f);
        this.downloadButton.setAlpha(i == 1 ? 1.0f : 0.0f);
        ImageView imageView2 = this.themeButton;
        if (imageView2 != null) {
            imageView2.setAlpha((i == 1 && (storyEntry = this.outputEntry) != null && storyEntry.isRepostMessage) ? 1.0f : 0.0f);
        }
        this.timelineView.setAlpha(i == 1 ? 1.0f : 0.0f);
        this.coverTimelineView.setAlpha(i == 2 ? 1.0f : 0.0f);
        this.titleTextView.setAlpha((i == 1 || i == 2) ? 1.0f : 0.0f);
        this.coverButton.setAlpha(i == 2 ? 1.0f : 0.0f);
        onNavigateEnd(i2, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void animateContainerBack() {
        ValueAnimator valueAnimator = this.containerViewBackAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.containerViewBackAnimator = null;
        }
        this.applyContainerViewTranslation2 = false;
        final float translationY1 = this.containerView.getTranslationY1();
        final float translationY2 = this.containerView.getTranslationY2();
        this.containerView.getAlpha();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
        this.containerViewBackAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda99
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f$0.lambda$animateContainerBack$69(translationY1, translationY2, valueAnimator2);
            }
        });
        this.containerViewBackAnimator.setDuration(340L);
        this.containerViewBackAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        this.containerViewBackAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.19
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                StoryRecorder.this.containerViewBackAnimator = null;
                StoryRecorder.this.containerView.setTranslationY(0.0f);
                StoryRecorder.this.containerView.setTranslationY2(0.0f);
            }
        });
        this.containerViewBackAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateContainerBack$69(float f, float f2, ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.containerView.setTranslationY(f * fFloatValue);
        this.containerView.setTranslationY2(f2 * fFloatValue);
    }

    public StoryRecorder setMode(int i) {
        if (this.mode == i) {
            return this;
        }
        this.mode = i;
        StoryModeTabs storyModeTabs = this.modeSwitcherView;
        if (storyModeTabs != null) {
            storyModeTabs.switchMode(i);
        }
        showVideoTimer(i == 1, true);
        CollageLayoutButton.CollageLayoutListView collageLayoutListView = this.collageListView;
        if (collageLayoutListView != null) {
            collageLayoutListView.setVisible(false, true);
        }
        updateActionBarButtons(false);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createGalleryListView() {
        createGalleryListView(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void destroyGalleryListView() {
        GalleryListView galleryListView = this.galleryListView;
        if (galleryListView == null) {
            return;
        }
        this.windowView.removeView(galleryListView);
        this.galleryListView = null;
        ValueAnimator valueAnimator = this.galleryOpenCloseAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.galleryOpenCloseAnimator = null;
        }
        SpringAnimation springAnimation = this.galleryOpenCloseSpringAnimator;
        if (springAnimation != null) {
            springAnimation.cancel();
            this.galleryOpenCloseSpringAnimator = null;
        }
        this.galleryListViewOpening = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createGalleryListView(final boolean z) {
        if (this.galleryListView != null) {
            CollageLayoutView2 collageLayoutView2 = this.collageLayoutView;
            if ((collageLayoutView2 != null && collageLayoutView2.hasLayout()) == this.galleryListView.onlyCollaging) {
                return;
            }
        }
        if (getContext() == null) {
            return;
        }
        if (this.galleryListView != null) {
            destroyGalleryListView();
        }
        int i = this.currentAccount;
        Context context = getContext();
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        MediaController.AlbumEntry albumEntry = this.lastGallerySelectedAlbum;
        boolean z2 = !z;
        CollageLayoutView2 collageLayoutView22 = this.collageLayoutView;
        C716221 c716221 = new C716221(i, context, resourcesProvider, albumEntry, z, 1.39f, z2, collageLayoutView22 != null && collageLayoutView22.hasLayout());
        this.galleryListView = c716221;
        c716221.allowSearch(false);
        this.galleryListView.setMultipleOnClick(this.collageLayoutView.hasLayout());
        this.galleryListView.setMaxCount(Math.min(10, CollageLayout.getMaxCount() - this.collageLayoutView.getFilledCount()));
        this.galleryListView.setOnBackClickListener(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda91
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createGalleryListView$71();
            }
        });
        this.galleryListView.setOnSelectListener(new Utilities.Callback2() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda92
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$createGalleryListView$72(z, obj, (Bitmap) obj2);
            }
        });
        this.galleryListView.setOnSelectMultipleListener(new Utilities.Callback3() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda93
            @Override // org.telegram.messenger.Utilities.Callback3
            public final void run(Object obj, Object obj2, Object obj3) {
                this.f$0.lambda$createGalleryListView$73((Boolean) obj, (ArrayList) obj2, (ArrayList) obj3);
            }
        });
        Parcelable parcelable = this.lastGalleryScrollPosition;
        if (parcelable != null) {
            this.galleryListView.layoutManager.onRestoreInstanceState(parcelable);
        }
        this.windowView.addView(this.galleryListView, LayoutHelper.createFrame(-1, -1, 119));
    }

    /* JADX INFO: renamed from: org.telegram.ui.Stories.recorder.StoryRecorder$21 */
    /* JADX INFO: loaded from: classes7.dex */
    class C716221 extends GalleryListView {
        C716221(int i, Context context, Theme.ResourcesProvider resourcesProvider, MediaController.AlbumEntry albumEntry, boolean z, float f, boolean z2, boolean z3) {
            super(i, context, resourcesProvider, albumEntry, z, f, z2, z3);
        }

        @Override // android.view.View
        public void setTranslationY(float f) {
            super.setTranslationY(f);
            if (StoryRecorder.this.applyContainerViewTranslation2) {
                float fClamp = Utilities.clamp(1.0f - (f / (StoryRecorder.this.windowView.getMeasuredHeight() - StoryRecorder.this.galleryListView.top())), 1.0f, 0.0f);
                StoryRecorder.this.containerView.setTranslationY2(AndroidUtilities.m1124dp(-32.0f) * fClamp);
                StoryRecorder.this.containerView.setAlpha(1.0f - (0.6f * fClamp));
                StoryRecorder.this.actionBarContainer.setAlpha(1.0f - fClamp);
            }
        }

        @Override // org.telegram.p029ui.Stories.recorder.GalleryListView
        public void firstLayout() {
            StoryRecorder.this.galleryListView.setTranslationY(StoryRecorder.this.windowView.getMeasuredHeight() - StoryRecorder.this.galleryListView.top());
            if (StoryRecorder.this.galleryLayouted != null) {
                StoryRecorder.this.galleryLayouted.run();
                StoryRecorder.this.galleryLayouted = null;
            }
        }

        @Override // org.telegram.p029ui.Stories.recorder.GalleryListView
        protected void onFullScreen(boolean z) {
            if (StoryRecorder.this.currentPage == 0 && z) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$21$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onFullScreen$0();
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onFullScreen$0() {
            StoryRecorder.this.destroyCameraView(true);
            StoryRecorder.this.collageLayoutView.setCameraThumb(StoryRecorder.this.getCameraThumb());
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0 && motionEvent.getY() < top()) {
                StoryRecorder.this.galleryClosing = true;
                StoryRecorder.this.lambda$animateGalleryListView$74(false);
                return true;
            }
            return super.dispatchTouchEvent(motionEvent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createGalleryListView$71() {
        lambda$animateGalleryListView$74(false);
        this.lastGallerySelectedAlbum = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createGalleryListView$72(boolean z, Object obj, Bitmap bitmap) {
        if (obj == null || this.galleryListViewOpening != null || this.scrollingY || !isGalleryOpen()) {
            return;
        }
        if (z) {
            if (this.outputEntry == null) {
                return;
            }
            createPhotoPaintView();
            this.outputEntry.editedMedia = true;
            if (obj instanceof MediaController.PhotoEntry) {
                PaintView paintView = this.paintView;
                paintView.appearAnimation(paintView.createPhoto(((MediaController.PhotoEntry) obj).path, false));
            } else if (obj instanceof TLObject) {
                PaintView paintView2 = this.paintView;
                paintView2.appearAnimation(paintView2.createPhoto((TLObject) obj, false));
            }
            lambda$animateGalleryListView$74(false);
        } else {
            showVideoTimer(false, true);
            this.modeSwitcherView.switchMode(this.mode);
            this.recordControl.startAsVideo(this.mode == 1);
            lambda$animateGalleryListView$74(false);
            boolean z2 = obj instanceof MediaController.PhotoEntry;
            if (z2) {
                MediaController.PhotoEntry photoEntry = (MediaController.PhotoEntry) obj;
                this.mode = photoEntry.isVideo ? 1 : 0;
                StoryEntry storyEntryFromPhotoEntry = StoryEntry.fromPhotoEntry(photoEntry);
                storyEntryFromPhotoEntry.blurredVideoThumb = bitmap;
                storyEntryFromPhotoEntry.botId = this.botId;
                storyEntryFromPhotoEntry.botLang = this.botLang;
                storyEntryFromPhotoEntry.setupMatrix();
                this.fromGallery = true;
                if (this.collageLayoutView.hasLayout()) {
                    this.outputFile = null;
                    storyEntryFromPhotoEntry.videoVolume = 1.0f;
                    if (this.collageLayoutView.push(storyEntryFromPhotoEntry)) {
                        this.outputEntry = StoryEntry.asCollage(this.collageLayoutView.getLayout(), this.collageLayoutView.getContent());
                    }
                    updateActionBarButtons(true);
                } else {
                    storyEntryFromPhotoEntry.setupMultipleStoriesSelector();
                    this.outputEntry = storyEntryFromPhotoEntry;
                    if (z2) {
                        StoryPrivacySelector.applySaved(this.currentAccount, storyEntryFromPhotoEntry);
                    }
                    navigateTo(1, true);
                }
            } else {
                if (!(obj instanceof StoryEntry)) {
                    return;
                }
                StoryEntry storyEntry = (StoryEntry) obj;
                if (storyEntry.file == null && !storyEntry.isCollage()) {
                    this.downloadButton.showToast(C2888R.raw.error, "Failed to load draft");
                    MessagesController.getInstance(this.currentAccount).getStoriesController().getDraftsController().delete(storyEntry);
                    return;
                }
                storyEntry.botId = this.botId;
                storyEntry.botLang = this.botLang;
                this.mode = storyEntry.isVideo ? 1 : 0;
                storyEntry.blurredVideoThumb = bitmap;
                this.fromGallery = false;
                this.collageLayoutView.set(storyEntry, true);
                this.outputEntry = storyEntry;
                if (z2) {
                    StoryPrivacySelector.applySaved(this.currentAccount, storyEntry);
                }
                navigateTo(1, true);
            }
        }
        GalleryListView galleryListView = this.galleryListView;
        if (galleryListView != null) {
            this.lastGalleryScrollPosition = galleryListView.layoutManager.onSaveInstanceState();
            this.lastGallerySelectedAlbum = this.galleryListView.getSelectedAlbum();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createGalleryListView$73(Boolean bool, ArrayList arrayList, ArrayList arrayList2) {
        if (this.currentPage == 0 && arrayList != null && !arrayList.isEmpty() && this.galleryListViewOpening == null && !this.scrollingY && isGalleryOpen()) {
            this.entries = null;
            this.selectedEntries = null;
            this.selectedEntriesOrder = null;
            if (bool.booleanValue() && this.collageLayoutView.getFilledCount() + arrayList.size() > this.collageLayoutView.getTotalCount()) {
                CollageLayout collageLayoutM1324of = CollageLayout.m1324of(this.collageLayoutView.getFilledCount() + arrayList.size());
                if (collageLayoutM1324of == null) {
                    this.collageLayoutView.setLayout(null, true);
                    this.collageLayoutView.clear(true);
                    this.collageListView.setSelected((CollageLayout) null);
                    DualCameraView dualCameraView = this.cameraView;
                    if (dualCameraView != null) {
                        dualCameraView.recordHevc = !this.collageLayoutView.hasLayout();
                    }
                    this.collageListView.setVisible(false, true);
                    updateActionBarButtons(true);
                    return;
                }
                CollageLayoutView2 collageLayoutView2 = this.collageLayoutView;
                this.lastCollageLayout = collageLayoutM1324of;
                collageLayoutView2.setLayout(collageLayoutM1324of, true);
                this.collageListView.setSelected(collageLayoutM1324of);
                int iIndexOf = CollageLayout.getLayouts().indexOf(collageLayoutM1324of);
                if (iIndexOf >= 0) {
                    this.collageListView.listView.scrollToPosition(iIndexOf);
                }
                DualCameraView dualCameraView2 = this.cameraView;
                if (dualCameraView2 != null) {
                    dualCameraView2.recordHevc = !this.collageLayoutView.hasLayout();
                }
                this.collageButton.setDrawable(new CollageLayoutButton.CollageLayoutDrawable(collageLayoutM1324of));
                setActionBarButtonVisible(this.collageRemoveButton, this.collageListView.isVisible(), true);
                this.recordControl.setCollageProgress(this.collageLayoutView.hasLayout() ? this.collageLayoutView.getFilledProgress() : 0.0f, true);
            }
            this.fromGallery = true;
            int i = 0;
            while (true) {
                if (i >= arrayList.size()) {
                    break;
                }
                StoryEntry storyEntryFromPhotoEntry = StoryEntry.fromPhotoEntry((MediaController.PhotoEntry) arrayList.get(i));
                storyEntryFromPhotoEntry.blurredVideoThumb = (Bitmap) arrayList2.get(i);
                storyEntryFromPhotoEntry.botId = this.botId;
                storyEntryFromPhotoEntry.botLang = this.botLang;
                storyEntryFromPhotoEntry.setupMatrix();
                if (bool.booleanValue()) {
                    if (this.collageLayoutView.push(storyEntryFromPhotoEntry)) {
                        this.outputEntry = StoryEntry.asCollage(this.collageLayoutView.getLayout(), this.collageLayoutView.getContent());
                        break;
                    }
                    i++;
                } else {
                    if (this.outputEntry == null) {
                        this.outputEntry = storyEntryFromPhotoEntry;
                    } else {
                        if (this.entries == null) {
                            ArrayList arrayList3 = new ArrayList();
                            this.entries = arrayList3;
                            arrayList3.add(this.outputEntry);
                        }
                        if (this.entries.size() >= 10) {
                            break;
                        } else {
                            this.entries.add(storyEntryFromPhotoEntry);
                        }
                    }
                    i++;
                }
            }
            if (this.entries != null) {
                showVideoTimer(false, true);
                this.modeSwitcherView.switchMode(this.mode);
                this.recordControl.startAsVideo(this.mode == 1);
                this.selectedEntries = new ArrayList();
                this.selectedEntriesOrder = new ArrayList();
                for (int i2 = 0; i2 < this.entries.size(); i2++) {
                    this.selectedEntries.add(Integer.valueOf(i2));
                    this.selectedEntriesOrder.add(Integer.valueOf(i2));
                }
                this.collageLayoutView.set(null, true);
                this.collageListView.setVisible(false, true);
                updateActionBarButtons(true);
                lambda$animateGalleryListView$74(false);
                navigateTo(1, true);
                MultipleStoriesSelector multipleStoriesSelector = this.storiesSelector;
                if (multipleStoriesSelector != null) {
                    multipleStoriesSelector.showHint();
                }
                GalleryListView galleryListView = this.galleryListView;
                if (galleryListView != null) {
                    this.lastGalleryScrollPosition = galleryListView.layoutManager.onSaveInstanceState();
                    this.lastGallerySelectedAlbum = this.galleryListView.getSelectedAlbum();
                    return;
                }
                return;
            }
            StoryEntry storyEntry = this.outputEntry;
            if (storyEntry != null) {
                storyEntry.setupMultipleStoriesSelector();
            }
            this.collageListView.setVisible(false, true);
            updateActionBarButtons(true);
            lambda$animateGalleryListView$74(false);
            GalleryListView galleryListView2 = this.galleryListView;
            if (galleryListView2 != null) {
                this.lastGalleryScrollPosition = galleryListView2.layoutManager.onSaveInstanceState();
                this.lastGallerySelectedAlbum = this.galleryListView.getSelectedAlbum();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isGalleryOpen() {
        GalleryListView galleryListView;
        return (this.scrollingY || (galleryListView = this.galleryListView) == null || galleryListView.getTranslationY() >= ((float) ((this.windowView.getMeasuredHeight() - ((int) (((float) AndroidUtilities.displaySize.y) * 0.35f))) - (AndroidUtilities.statusBarHeight + ActionBar.getCurrentActionBarHeight())))) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: animateGalleryListView, reason: merged with bridge method [inline-methods] */
    public void lambda$animateGalleryListView$74(final boolean z) {
        DraftSavedHint draftSavedHint;
        this.wasGalleryOpen = z;
        Boolean bool = this.galleryListViewOpening;
        if (bool == null || bool.booleanValue() != z) {
            if (this.galleryListView == null) {
                if (z) {
                    createGalleryListView();
                }
                if (this.galleryListView == null) {
                    return;
                }
            }
            if (this.galleryListView.firstLayout) {
                this.galleryLayouted = new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda15
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$animateGalleryListView$74(z);
                    }
                };
                return;
            }
            ValueAnimator valueAnimator = this.galleryOpenCloseAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.galleryOpenCloseAnimator = null;
            }
            SpringAnimation springAnimation = this.galleryOpenCloseSpringAnimator;
            if (springAnimation != null) {
                springAnimation.cancel();
                this.galleryOpenCloseSpringAnimator = null;
            }
            if (this.galleryListView == null) {
                if (z) {
                    createGalleryListView();
                }
                if (this.galleryListView == null) {
                    return;
                }
            }
            GalleryListView galleryListView = this.galleryListView;
            if (galleryListView != null) {
                galleryListView.ignoreScroll = false;
            }
            if (z && (draftSavedHint = this.draftSavedHint) != null) {
                draftSavedHint.hide(true);
            }
            this.galleryListViewOpening = Boolean.valueOf(z);
            float translationY = this.galleryListView.getTranslationY();
            final float height = z ? 0.0f : (this.windowView.getHeight() - this.galleryListView.top()) + (AndroidUtilities.navigationBarHeight * 2.5f);
            Math.max(1, this.windowView.getHeight());
            this.galleryListView.ignoreScroll = !z;
            this.applyContainerViewTranslation2 = this.containerViewBackAnimator == null;
            if (z) {
                SpringAnimation springAnimation2 = new SpringAnimation(this.galleryListView, DynamicAnimation.TRANSLATION_Y, height);
                this.galleryOpenCloseSpringAnimator = springAnimation2;
                springAnimation2.getSpring().setDampingRatio(0.75f);
                this.galleryOpenCloseSpringAnimator.getSpring().setStiffness(350.0f);
                this.galleryOpenCloseSpringAnimator.addEndListener(new DynamicAnimation.OnAnimationEndListener() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda16
                    @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
                    public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z2, float f, float f2) {
                        this.f$0.lambda$animateGalleryListView$75(height, dynamicAnimation, z2, f, f2);
                    }
                });
                this.galleryOpenCloseSpringAnimator.start();
            } else {
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(translationY, height);
                this.galleryOpenCloseAnimator = valueAnimatorOfFloat;
                valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda17
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        this.f$0.lambda$animateGalleryListView$76(valueAnimator2);
                    }
                });
                this.galleryOpenCloseAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.22
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        StoryRecorder.this.windowView.removeView(StoryRecorder.this.galleryListView);
                        StoryRecorder.this.galleryListView = null;
                        StoryRecorder.this.galleryOpenCloseAnimator = null;
                        StoryRecorder.this.galleryListViewOpening = null;
                        StoryRecorder.this.captionEdit.keyboardNotifier.ignore(StoryRecorder.this.currentPage != 1);
                    }
                });
                this.galleryOpenCloseAnimator.setDuration(450L);
                this.galleryOpenCloseAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
                this.galleryOpenCloseAnimator.start();
            }
            if (!z && !this.awaitingPlayer) {
                this.lastGalleryScrollPosition = null;
            }
            if (z || this.currentPage != 0 || this.noCameraPermission) {
                return;
            }
            createCameraView();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateGalleryListView$75(float f, DynamicAnimation dynamicAnimation, boolean z, float f2, float f3) {
        if (z) {
            return;
        }
        this.galleryListView.setTranslationY(f);
        this.galleryListView.ignoreScroll = false;
        this.galleryOpenCloseSpringAnimator = null;
        this.galleryListViewOpening = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateGalleryListView$76(ValueAnimator valueAnimator) {
        this.galleryListView.setTranslationY(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

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
    private void onNavigateStart(int i, int i2) {
        StoryEntry storyEntry;
        long j;
        StoryEntry storyEntry2;
        StoryEntry storyEntry3;
        StoryEntry storyEntry4;
        VideoEditTextureView textureView;
        StoryEntry storyEntry5;
        if (i2 == 0) {
            requestCameraPermission(false);
            this.recordControl.setVisibility(0);
            RecordControl recordControl = this.recordControl;
            if (recordControl != null) {
                recordControl.stopRecordingLoading(false);
            }
            this.modeSwitcherView.setVisibility(0);
            this.zoomControlView.setVisibility(0);
            this.zoomControlView.setAlpha(0.0f);
            this.videoTimerView.setDuration(0L, true);
            StoryEntry storyEntry6 = this.outputEntry;
            if (storyEntry6 != null) {
                storyEntry6.destroy(false);
                this.outputEntry = null;
            }
            CollageLayoutView2 collageLayoutView2 = this.collageLayoutView;
            if (collageLayoutView2 != null) {
                collageLayoutView2.clear(true);
                this.recordControl.setCollageProgress(0.0f, false);
            }
        }
        if (i == 0) {
            setCameraFlashModeIcon(null, true);
            saveLastCameraBitmap(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda56
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onNavigateStart$77();
                }
            });
            DraftSavedHint draftSavedHint = this.draftSavedHint;
            if (draftSavedHint != null) {
                draftSavedHint.setVisibility(8);
            }
            this.cameraHint.hide();
            HintView2 hintView2 = this.dualHint;
            if (hintView2 != null) {
                hintView2.hide();
            }
        }
        if (i2 == 1 || i == 1) {
            this.downloadButton.setEntry(i2 == 1 ? this.outputEntry : null);
            if (this.mode == 1) {
                this.muteButton.setVisibility(0);
                StoryEntry storyEntry7 = this.outputEntry;
                setIconMuted(storyEntry7 != null && storyEntry7.muted, false);
                this.playButton.setVisibility(0);
                this.previewView.play(true);
                this.playButton.drawable.setPause(this.previewView.isPlaying(), false);
                this.titleTextView.setRightPadding(AndroidUtilities.m1124dp(144.0f));
            } else {
                StoryEntry storyEntry8 = this.outputEntry;
                if (storyEntry8 != null && !TextUtils.isEmpty(storyEntry8.audioPath)) {
                    this.muteButton.setVisibility(8);
                    this.playButton.setVisibility(0);
                    this.playButton.drawable.setPause(true, false);
                    this.titleTextView.setRightPadding(AndroidUtilities.m1124dp(48.0f));
                } else {
                    this.titleTextView.setRightPadding(AndroidUtilities.m1124dp(48.0f));
                }
            }
            this.downloadButton.setVisibility(0);
            StoryEntry storyEntry9 = this.outputEntry;
            if (storyEntry9 != null && storyEntry9.isRepostMessage) {
                getThemeButton().setVisibility(0);
                updateThemeButtonDrawable(false);
            } else {
                ImageView imageView = this.themeButton;
                if (imageView != null) {
                    imageView.setVisibility(8);
                }
            }
            this.previewButtons.setVisibility(0);
            this.previewView.setVisibility(0);
            this.captionEdit.setVisibility(isBot() ? 8 : 0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.videoTimelineContainerView.getLayoutParams();
            layoutParams.bottomMargin = AndroidUtilities.m1124dp(isBot() ? 12.0f : 68.0f);
            this.videoTimelineContainerView.setLayoutParams(layoutParams);
            this.captionContainer.setVisibility(0);
            this.captionContainer.clearFocus();
            CaptionStory captionStory = this.captionEdit;
            StoryEntry storyEntry10 = this.outputEntry;
            captionStory.setPeriod(storyEntry10 == null ? 86400 : storyEntry10.period, false);
            this.captionEdit.setPeriodVisible(!MessagesController.getInstance(this.currentAccount).premiumFeaturesBlocked() && ((storyEntry = this.outputEntry) == null || !storyEntry.isEdit));
            CaptionStory captionStory2 = this.captionEdit;
            StoryEntry storyEntry11 = this.outputEntry;
            captionStory2.setHasRoundVideo((storyEntry11 == null || storyEntry11.round == null) ? false : true);
            setReply();
            TimelineView timelineView = this.timelineView;
            StoryEntry storyEntry12 = this.outputEntry;
            timelineView.setOpen((storyEntry12 != null && storyEntry12.isCollage() && this.outputEntry.hasVideo()) ? false : true, false);
        }
        if (i2 == 2 || i == 2) {
            this.titleTextView.setVisibility(0);
            this.coverTimelineView.setVisibility(0);
            StoryEntry storyEntry13 = this.outputEntry;
            if (storyEntry13 != null && storyEntry13.isEditingCover) {
                this.titleTextView.setText(LocaleController.getString(C2888R.string.RecorderEditCover));
            }
            this.captionContainer.setVisibility(0);
            this.coverButton.setVisibility(0);
        }
        if (i2 == 2) {
            this.titleTextView.setText(LocaleController.getString(C2888R.string.RecorderEditCover));
        }
        if (i2 == 1) {
            this.videoError = false;
            StoryEntry storyEntry14 = this.outputEntry;
            boolean z = (storyEntry14 == null || storyEntry14.botId == 0) ? false : true;
            boolean z2 = storyEntry14 != null && storyEntry14.isEdit;
            this.previewButtons.setShareText(LocaleController.getString(z2 ? C2888R.string.Done : z ? C2888R.string.UploadBotPreview : C2888R.string.Next), !z);
            this.coverTimelineView.setVisibility(8);
            this.coverButton.setVisibility(8);
            if (!this.previewAlreadySet) {
                StoryEntry storyEntry15 = this.outputEntry;
                if (storyEntry15 != null && storyEntry15.isRepostMessage) {
                    this.previewView.preset(storyEntry15);
                } else {
                    this.previewView.set(storyEntry15);
                }
            }
            this.previewAlreadySet = false;
            this.captionEdit.editText.getEditText().setOnPremiumMenuLockClickListener(MessagesController.getInstance(this.currentAccount).storyEntitiesAllowed() ? null : new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda57
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onNavigateStart$78();
                }
            });
            this.storiesSelector.setVisibility(this.entries == null ? 8 : 0);
            ArrayList arrayList = this.entries;
            if (arrayList != null) {
                this.storiesSelector.set(arrayList, this.selectedEntriesOrder, this.selectedEntries);
                this.storiesSelector.setSelected(this.entries.indexOf(this.outputEntry));
            }
            this.timelineView.setMaxCount((z || z2 || this.entries != null || ((storyEntry5 = this.outputEntry) != null && (storyEntry5.isCollage() || !this.outputEntry.isVideo))) ? 1 : 3);
            StoryEntry storyEntry16 = this.outputEntry;
            if (storyEntry16 != null && (storyEntry16.isDraft || storyEntry16.isEdit || this.isReposting)) {
                if (storyEntry16.paintFile != null) {
                    destroyPhotoPaintView();
                    createPhotoPaintView();
                    hidePhotoPaintView();
                }
                StoryEntry storyEntry17 = this.outputEntry;
                if (storyEntry17.isVideo && storyEntry17.filterState != null && (textureView = this.previewView.getTextureView()) != null) {
                    textureView.setDelegate(new VideoEditTextureView.VideoEditTextureViewDelegate() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda58
                        @Override // org.telegram.ui.Components.VideoEditTextureView.VideoEditTextureViewDelegate
                        public final void onEGLThreadAvailable(FilterGLThread filterGLThread) {
                            this.f$0.lambda$onNavigateStart$79(filterGLThread);
                        }
                    });
                }
                this.captionEdit.setText(this.outputEntry.caption);
            } else {
                this.captionEdit.clear();
            }
            PreviewButtons previewButtons = this.previewButtons;
            StoryEntry storyEntry18 = this.outputEntry;
            previewButtons.setButtonVisible(4, storyEntry18 == null || ((!storyEntry18.isRepostMessage || storyEntry18.isVideo) && !storyEntry18.isCollage()));
            this.previewButtons.setButtonVisible(3, (!BuildVars.DEBUG_PRIVATE_VERSION || (storyEntry4 = this.outputEntry) == null || storyEntry4.isRepostMessage || storyEntry4.isCollage()) ? false : true);
            this.previewButtons.setShareEnabled((this.videoError || this.captionEdit.isCaptionOverLimit() || (MessagesController.getInstance(this.currentAccount).getStoriesController().hasStoryLimit(getCount()) && ((storyEntry3 = this.outputEntry) == null || (!storyEntry3.isEdit && storyEntry3.botId == 0)))) ? false : true);
            RLottieImageView rLottieImageView = this.muteButton;
            StoryEntry storyEntry19 = this.outputEntry;
            rLottieImageView.setImageResource((storyEntry19 == null || !storyEntry19.muted) ? C2888R.drawable.media_mute : C2888R.drawable.media_unmute);
            this.previewView.setVisibility(0);
            this.timelineView.setVisibility(0);
            this.titleTextView.setVisibility(0);
            this.titleTextView.setTranslationX(0.0f);
            StoryEntry storyEntry20 = this.outputEntry;
            String str = _UrlKt.FRAGMENT_ENCODE_SET;
            if (storyEntry20 != null && storyEntry20.botId != 0) {
                this.titleTextView.setText(_UrlKt.FRAGMENT_ENCODE_SET);
            } else if (storyEntry20 != null && storyEntry20.isEdit) {
                this.titleTextView.setText(LocaleController.getString(C2888R.string.RecorderEditStory));
            } else if (storyEntry20 != null && storyEntry20.isRepostMessage) {
                this.titleTextView.setText(LocaleController.getString(C2888R.string.RecorderRepost));
            } else if (storyEntry20 != null && storyEntry20.isRepost) {
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                AvatarSpan avatarSpan = new AvatarSpan(this.titleTextView, this.currentAccount, 32.0f);
                this.titleTextView.setTranslationX(-AndroidUtilities.m1124dp(6.0f));
                SpannableString spannableString = new SpannableString("a");
                spannableString.setSpan(avatarSpan, 0, 1, 33);
                if (this.outputEntry.repostPeer instanceof TLRPC.TL_peerUser) {
                    TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.outputEntry.repostPeer.user_id));
                    avatarSpan.setUser(user);
                    spannableStringBuilder.append((CharSequence) spannableString).append((CharSequence) "  ");
                    spannableStringBuilder.append((CharSequence) UserObject.getUserName(user));
                    j = 0;
                } else {
                    j = 0;
                    TLRPC.Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-DialogObject.getPeerDialogId(this.outputEntry.repostPeer)));
                    avatarSpan.setChat(chat);
                    spannableStringBuilder.append((CharSequence) spannableString).append((CharSequence) "  ");
                    if (chat != null) {
                        str = chat.title;
                    }
                    spannableStringBuilder.append((CharSequence) str);
                }
                this.titleTextView.setText(spannableStringBuilder);
            } else {
                j = 0;
                this.titleTextView.setText(LocaleController.getString(C2888R.string.RecorderNewStory));
            }
            j = 0;
        } else {
            j = 0;
        }
        if (i == 1) {
            this.captionEdit.hidePeriodPopup();
            this.muteHint.hide();
            this.storiesSelector.onBackPressed();
        }
        if (i2 == 2 && (storyEntry2 = this.outputEntry) != null) {
            if (storyEntry2.cover < j) {
                storyEntry2.cover = j;
            }
            this.coverValue = storyEntry2.cover;
            long duration = this.previewView.getDuration() < 100 ? this.outputEntry.duration : this.previewView.getDuration();
            StoryEntry storyEntry21 = this.outputEntry;
            if (storyEntry21.duration <= 0) {
                storyEntry21.duration = duration;
            }
            TimelineView timelineView2 = this.coverTimelineView;
            String absolutePath = storyEntry21.getOriginalFile().getAbsolutePath();
            StoryEntry storyEntry22 = this.outputEntry;
            timelineView2.setVideo(false, absolutePath, storyEntry22.duration, storyEntry22.videoVolume);
            TimelineView timelineView3 = this.coverTimelineView;
            StoryEntry storyEntry23 = this.outputEntry;
            float f = duration;
            timelineView3.setCoverVideo((long) (storyEntry23.left * f), (long) (storyEntry23.right * f));
            final Utilities.Callback2 callback2 = new Utilities.Callback2() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda59
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.lambda$onNavigateStart$80((Boolean) obj, (Float) obj2);
                }
            };
            this.coverTimelineView.setDelegate(new TimelineView.TimelineDelegate() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.23
                @Override // org.telegram.ui.Stories.recorder.TimelineView.TimelineDelegate
                public /* synthetic */ void onAudioLeftChange(float f2) {
                    TimelineView.TimelineDelegate.CC.$default$onAudioLeftChange(this, f2);
                }

                @Override // org.telegram.ui.Stories.recorder.TimelineView.TimelineDelegate
                public /* synthetic */ void onAudioOffsetChange(long j2) {
                    TimelineView.TimelineDelegate.CC.$default$onAudioOffsetChange(this, j2);
                }

                @Override // org.telegram.ui.Stories.recorder.TimelineView.TimelineDelegate
                public /* synthetic */ void onAudioRemove() {
                    TimelineView.TimelineDelegate.CC.$default$onAudioRemove(this);
                }

                @Override // org.telegram.ui.Stories.recorder.TimelineView.TimelineDelegate
                public /* synthetic */ void onAudioRightChange(float f2) {
                    TimelineView.TimelineDelegate.CC.$default$onAudioRightChange(this, f2);
                }

                @Override // org.telegram.ui.Stories.recorder.TimelineView.TimelineDelegate
                public /* synthetic */ void onAudioVolumeChange(float f2) {
                    TimelineView.TimelineDelegate.CC.$default$onAudioVolumeChange(this, f2);
                }

                @Override // org.telegram.ui.Stories.recorder.TimelineView.TimelineDelegate
                public /* synthetic */ void onProgressChange(long j2, boolean z3) {
                    TimelineView.TimelineDelegate.CC.$default$onProgressChange(this, j2, z3);
                }

                @Override // org.telegram.ui.Stories.recorder.TimelineView.TimelineDelegate
                public /* synthetic */ void onProgressDragChange(boolean z3) {
                    TimelineView.TimelineDelegate.CC.$default$onProgressDragChange(this, z3);
                }

                @Override // org.telegram.ui.Stories.recorder.TimelineView.TimelineDelegate
                public /* synthetic */ void onRoundLeftChange(float f2) {
                    TimelineView.TimelineDelegate.CC.$default$onRoundLeftChange(this, f2);
                }

                @Override // org.telegram.ui.Stories.recorder.TimelineView.TimelineDelegate
                public /* synthetic */ void onRoundOffsetChange(long j2) {
                    TimelineView.TimelineDelegate.CC.$default$onRoundOffsetChange(this, j2);
                }

                @Override // org.telegram.ui.Stories.recorder.TimelineView.TimelineDelegate
                public /* synthetic */ void onRoundRemove() {
                    TimelineView.TimelineDelegate.CC.$default$onRoundRemove(this);
                }

                @Override // org.telegram.ui.Stories.recorder.TimelineView.TimelineDelegate
                public /* synthetic */ void onRoundRightChange(float f2) {
                    TimelineView.TimelineDelegate.CC.$default$onRoundRightChange(this, f2);
                }

                @Override // org.telegram.ui.Stories.recorder.TimelineView.TimelineDelegate
                public /* synthetic */ void onRoundSelectChange(boolean z3) {
                    TimelineView.TimelineDelegate.CC.$default$onRoundSelectChange(this, z3);
                }

                @Override // org.telegram.ui.Stories.recorder.TimelineView.TimelineDelegate
                public /* synthetic */ void onRoundVolumeChange(float f2) {
                    TimelineView.TimelineDelegate.CC.$default$onRoundVolumeChange(this, f2);
                }

                @Override // org.telegram.ui.Stories.recorder.TimelineView.TimelineDelegate
                public /* synthetic */ void onVideoLeftChange(int i3, float f2) {
                    TimelineView.TimelineDelegate.CC.$default$onVideoLeftChange(this, i3, f2);
                }

                @Override // org.telegram.ui.Stories.recorder.TimelineView.TimelineDelegate
                public /* synthetic */ void onVideoOffsetChange(int i3, long j2) {
                    TimelineView.TimelineDelegate.CC.$default$onVideoOffsetChange(this, i3, j2);
                }

                @Override // org.telegram.ui.Stories.recorder.TimelineView.TimelineDelegate
                public /* synthetic */ void onVideoRightChange(int i3, float f2) {
                    TimelineView.TimelineDelegate.CC.$default$onVideoRightChange(this, i3, f2);
                }

                @Override // org.telegram.ui.Stories.recorder.TimelineView.TimelineDelegate
                public /* synthetic */ void onVideoRightChange(boolean z3, float f2) {
                    TimelineView.TimelineDelegate.CC.$default$onVideoRightChange(this, z3, f2);
                }

                @Override // org.telegram.ui.Stories.recorder.TimelineView.TimelineDelegate
                public /* synthetic */ void onVideoSelected(int i3) {
                    TimelineView.TimelineDelegate.CC.$default$onVideoSelected(this, i3);
                }

                @Override // org.telegram.ui.Stories.recorder.TimelineView.TimelineDelegate
                public /* synthetic */ void onVideoVolumeChange(float f2) {
                    TimelineView.TimelineDelegate.CC.$default$onVideoVolumeChange(this, f2);
                }

                @Override // org.telegram.ui.Stories.recorder.TimelineView.TimelineDelegate
                public /* synthetic */ void onVideoVolumeChange(int i3, float f2) {
                    TimelineView.TimelineDelegate.CC.$default$onVideoVolumeChange(this, i3, f2);
                }

                @Override // org.telegram.ui.Stories.recorder.TimelineView.TimelineDelegate
                public void onVideoLeftChange(boolean z3, float f2) {
                    callback2.run(Boolean.FALSE, Float.valueOf(f2));
                }
            });
            float fMax = (this.coverValue / Math.max(1L, duration)) * 0.96f;
            this.coverTimelineView.setVideoLeft(fMax);
            this.coverTimelineView.setVideoRight(0.04f + fMax);
            callback2.run(Boolean.TRUE, Float.valueOf(fMax));
        }
        PhotoFilterView.EnhanceView enhanceView = this.photoFilterEnhanceView;
        if (enhanceView != null) {
            enhanceView.setAllowTouch(false);
        }
        HintView2 hintView22 = this.savedDualHint;
        if (hintView22 != null) {
            hintView22.hide();
        }
        Bulletin.hideVisible();
        CaptionStory captionStory3 = this.captionEdit;
        if (captionStory3 != null) {
            captionStory3.closeKeyboard();
            this.captionEdit.ignoreTouches = true;
        }
        PreviewView previewView = this.previewView;
        if (previewView != null) {
            previewView.updatePauseReason(8, i2 != 1);
        }
        PaintView paintView = this.paintView;
        if (paintView != null) {
            paintView.setCoverPreview(i2 != 1);
        }
        HintView2 hintView23 = this.removeCollageHint;
        if (hintView23 != null) {
            hintView23.hide();
        }
        CollageLayoutView2 collageLayoutView22 = this.collageLayoutView;
        collageLayoutView22.setPreview(i2 == 1 && collageLayoutView22.hasLayout());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onNavigateStart$77() {
        this.collageLayoutView.setCameraThumb(getCameraThumb());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onNavigateStart$78() {
        BulletinFactory.m1245of(this.windowView, this.resourcesProvider).createSimpleBulletin(C2888R.raw.voip_invite, premiumText(LocaleController.getString(C2888R.string.StoryPremiumFormatting))).show(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onNavigateStart$79(FilterGLThread filterGLThread) {
        StoryEntry storyEntry;
        MediaController.SavedFilterState savedFilterState;
        if (filterGLThread == null || (storyEntry = this.outputEntry) == null || (savedFilterState = storyEntry.filterState) == null) {
            return;
        }
        filterGLThread.setFilterGLThreadDelegate(FilterShaders.getFilterShadersDelegate(savedFilterState));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onNavigateStart$80(Boolean bool, Float f) {
        long duration = this.previewView.getDuration() < 100 ? this.outputEntry.duration : this.previewView.getDuration();
        float fFloatValue = f.floatValue() + ((f.floatValue() / 0.96f) * 0.04f);
        StoryEntry storyEntry = this.outputEntry;
        float f2 = storyEntry.right;
        float f3 = storyEntry.left;
        float f4 = duration;
        long j = (long) (fFloatValue * (f2 - f3) * f4);
        PreviewView previewView = this.previewView;
        long j2 = (long) ((f3 * f4) + j);
        this.coverValue = j2;
        previewView.seekTo(j2, false);
        PaintView paintView = this.paintView;
        if (paintView != null) {
            paintView.setCoverTime(this.coverValue);
        }
        StoryEntry storyEntry2 = this.outputEntry;
        if (storyEntry2 == null || !storyEntry2.isEdit) {
            return;
        }
        storyEntry2.editedMedia = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onNavigateEnd(int i, int i2) {
        int i3;
        if (i == 0) {
            destroyCameraView(false);
            this.recordControl.setVisibility(8);
            this.zoomControlView.setVisibility(8);
            this.modeSwitcherView.setVisibility(8);
            animateRecording(false, false);
            setAwakeLock(false);
        }
        if (i == 2) {
            this.coverTimelineView.setVisibility(8);
            this.captionContainer.setVisibility(i2 == 1 ? 0 : 8);
            this.captionEdit.setVisibility(8);
            this.coverButton.setVisibility(8);
        }
        if (i == 1) {
            this.previewButtons.setVisibility(8);
            this.captionContainer.setVisibility(i2 == 2 ? 0 : 8);
            this.muteButton.setVisibility(8);
            this.playButton.setVisibility(8);
            this.downloadButton.setVisibility(8);
            ImageView imageView = this.themeButton;
            if (imageView != null) {
                imageView.setVisibility(8);
            }
            this.previewView.setVisibility(i2 == 2 ? 0 : 8);
            this.timelineView.setVisibility(8);
            if (i2 != 2) {
                destroyPhotoPaintView();
                destroyPhotoFilterView();
            }
            this.titleTextView.setVisibility(i2 == 2 ? 0 : 8);
            destroyGalleryListView();
            this.trash.setAlpha(0.0f);
            this.trash.setVisibility(8);
            this.videoTimeView.setVisibility(8);
            this.entries = null;
            this.selectedEntries = null;
            this.selectedEntriesOrder = null;
        }
        if (i2 == 1) {
            StoryEntry storyEntry = this.outputEntry;
            if (storyEntry == null || !storyEntry.isRepost) {
                createPhotoPaintView();
                hidePhotoPaintView();
            }
            StoryEntry storyEntry2 = this.outputEntry;
            if (storyEntry2 != null && !storyEntry2.isRepost) {
                boolean z = storyEntry2.isRepostMessage;
            }
            PhotoFilterView.EnhanceView enhanceView = this.photoFilterEnhanceView;
            if (enhanceView != null) {
                enhanceView.setAllowTouch(false);
            }
            this.previewView.updatePauseReason(2, false);
            this.previewView.updatePauseReason(3, false);
            this.previewView.updatePauseReason(4, false);
            this.previewView.updatePauseReason(5, false);
            this.previewView.updatePauseReason(7, false);
            VideoTimeView videoTimeView = this.videoTimeView;
            StoryEntry storyEntry3 = this.outputEntry;
            videoTimeView.setVisibility((storyEntry3 == null || storyEntry3.duration < 30000) ? 8 : 0);
            this.captionContainer.setAlpha(1.0f);
            this.captionContainer.setTranslationY(0.0f);
            CaptionStory captionStory = this.captionEdit;
            StoryEntry storyEntry4 = this.outputEntry;
            captionStory.setVisibility((storyEntry4 == null || storyEntry4.botId == 0) ? 0 : 8);
        }
        if (i2 == 0 && this.showSavedDraftHint) {
            getDraftSavedHint().setVisibility(0);
            getDraftSavedHint().show();
            this.recordControl.updateGalleryImage();
        }
        this.showSavedDraftHint = false;
        PhotoFilterView.EnhanceView enhanceView2 = this.photoFilterEnhanceView;
        if (enhanceView2 != null) {
            enhanceView2.setAllowTouch(i2 == 1 && ((i3 = this.currentEditMode) == -1 || i3 == 1));
        }
        CaptionStory captionStory2 = this.captionEdit;
        if (captionStory2 != null) {
            captionStory2.ignoreTouches = i2 != 1;
        }
        if (i2 == 1) {
            MediaDataController.getInstance(this.currentAccount).checkStickers(0);
            MediaDataController.getInstance(this.currentAccount).loadRecents(0, false, true, false);
            MediaDataController.getInstance(this.currentAccount).loadRecents(2, false, true, false);
            MessagesController.getInstance(this.currentAccount).getStoriesController().loadBlocklistAtFirst();
            MessagesController.getInstance(this.currentAccount).getStoriesController().loadSendAs();
        }
    }

    public void switchToEditMode(int i, boolean z) {
        switchToEditMode(i, false, z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0423  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0438  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0468  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x047c  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x049d  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x04b0  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x04c4  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x04d8  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x04da  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x04ef  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x050c  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x052f  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0537  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x056f  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0572  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0584  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0586  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0596  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x0598  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x05a8  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x05aa  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x05ba  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x05d0  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x05e8  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x0604  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x0635  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01dc  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x02b9  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x02bf  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x03df  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x03ef  */
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
    /*  JADX ERROR: NullPointerException in pass: LoopRegionVisitor
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.use(jadx.core.dex.instructions.args.RegisterArg)" because "ssaVar" is null
        	at jadx.core.dex.nodes.InsnNode.rebindArgs(InsnNode.java:506)
        	at jadx.core.dex.nodes.InsnNode.rebindArgs(InsnNode.java:509)
        */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void switchToEditMode(final int r19, boolean r20, boolean r21) {
        /*
            Method dump skipped, instruction units count: 1708
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p029ui.Stories.recorder.StoryRecorder.switchToEditMode(int, boolean, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$switchToEditMode$81(ValueAnimator valueAnimator) {
        this.cropEditor.setAppearProgress(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$switchToEditMode$82(ValueAnimator valueAnimator) {
        this.cropEditor.setAppearProgress(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$switchToEditMode$83(ValueAnimator valueAnimator) {
        this.cropInlineEditor.setAppearProgress(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$switchToEditMode$84(ValueAnimator valueAnimator) {
        this.cropInlineEditor.setAppearProgress(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    private void hidePhotoPaintView() {
        PaintView paintView = this.paintView;
        if (paintView == null) {
            return;
        }
        this.previewTouchable = null;
        paintView.getTopLayout().setAlpha(0.0f);
        this.paintView.getTopLayout().setTranslationY(-AndroidUtilities.m1124dp(16.0f));
        this.paintView.getBottomLayout().setAlpha(0.0f);
        this.paintView.getBottomLayout().setTranslationY(AndroidUtilities.m1124dp(48.0f));
        this.paintView.getWeightChooserView().setTranslationX(-AndroidUtilities.m1124dp(32.0f));
        this.paintView.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x014a  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0177  */
    /* JADX WARN: Type inference failed for: r14v0, types: [java.util.ArrayList] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void createPhotoPaintView() {
        Bitmap bitmapCreateBitmap;
        boolean z;
        StoryEntry storyEntry;
        File file;
        boolean z2;
        Object obj;
        boolean z3;
        StoryEntry storyEntry2;
        RenderView renderView;
        View renderInputView;
        View textDimView;
        View entitiesView;
        View selectionEntitiesView;
        File file2;
        File file3;
        if (this.paintView != null) {
            return;
        }
        Pair<Integer, Integer> paintSize = this.previewView.getPaintSize();
        StoryEntry storyEntry3 = this.outputEntry;
        Bitmap bitmapDecodeFile = (storyEntry3 == null || !(storyEntry3.isDraft || storyEntry3.isEdit || this.entries != null) || (file3 = storyEntry3.paintFile) == null) ? null : BitmapFactory.decodeFile(file3.getPath());
        if (bitmapDecodeFile == null) {
            bitmapDecodeFile = Bitmap.createBitmap(((Integer) paintSize.first).intValue(), ((Integer) paintSize.second).intValue(), Bitmap.Config.ARGB_8888);
        }
        Bitmap bitmap = bitmapDecodeFile;
        StoryEntry storyEntry4 = this.outputEntry;
        if (storyEntry4 != null && ((storyEntry4.isDraft || storyEntry4.isEdit || this.entries != null) && (file2 = storyEntry4.paintBlurFile) != null)) {
            bitmapCreateBitmap = BitmapFactory.decodeFile(file2.getPath());
            if (bitmapCreateBitmap != null) {
                z = true;
            }
            if (bitmapCreateBitmap == null) {
                bitmapCreateBitmap = Bitmap.createBitmap(((Integer) paintSize.first).intValue(), ((Integer) paintSize.second).intValue(), Bitmap.Config.ARGB_8888);
            }
            Bitmap bitmap2 = bitmapCreateBitmap;
            int measuredWidth = this.previewContainer.getMeasuredWidth();
            int measuredHeight = this.previewContainer.getMeasuredHeight();
            Activity activity = this.activity;
            storyEntry = this.outputEntry;
            if (storyEntry != null || storyEntry.fileDeletable) {
                file = null;
                z2 = false;
            } else {
                file = null;
                z2 = true;
            }
            File file4 = storyEntry != null ? file : storyEntry.file;
            boolean z4 = storyEntry == null && storyEntry.isVideo;
            if (storyEntry != null || storyEntry.botId == 0) {
                obj = file;
                z3 = false;
            } else {
                obj = file;
                z3 = true;
            }
            boolean z5 = z;
            File file5 = file4;
            WindowView windowView = this.windowView;
            int i = this.currentAccount;
            int orientation = this.previewView.getOrientation();
            storyEntry2 = this.outputEntry;
            if (storyEntry2 != null) {
                obj = storyEntry2.mediaEntities;
            }
            C716726 c716726 = new C716726(activity, z2, file5, z4, z3, windowView, activity, i, bitmap, bitmap2, null, orientation, obj, storyEntry2, measuredWidth, measuredHeight, new MediaController.CropState(), null, this.blurManager, this.resourcesProvider, this.videoTextureHolder, this.previewView);
            this.paintView = c716726;
            StoryEntry storyEntry5 = this.outputEntry;
            c716726.setHasAudio(storyEntry5 == null && storyEntry5.audioPath != null);
            this.paintView.setBlurManager(this.blurManager);
            this.containerView.addView(this.paintView);
            renderView = this.paintView.getRenderView();
            this.paintViewRenderView = renderView;
            if (renderView != null) {
                renderView.getPainting().hasBlur = z5;
                this.previewContainer.addView(this.paintViewRenderView);
            }
            renderInputView = this.paintView.getRenderInputView();
            this.paintViewRenderInputView = renderInputView;
            if (renderInputView != null) {
                this.previewContainer.addView(renderInputView);
            }
            textDimView = this.paintView.getTextDimView();
            this.paintViewTextDim = textDimView;
            if (textDimView != null) {
                this.previewContainer.addView(textDimView);
            }
            entitiesView = this.paintView.getEntitiesView();
            this.paintViewEntitiesView = entitiesView;
            if (entitiesView != null) {
                this.previewContainer.addView(entitiesView);
            }
            selectionEntitiesView = this.paintView.getSelectionEntitiesView();
            this.paintViewSelectionContainerView = selectionEntitiesView;
            if (selectionEntitiesView != null) {
                this.previewContainer.addView(selectionEntitiesView);
            }
            orderPreviewViews();
            this.paintView.setOnDoneButtonClickedListener(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda73
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$createPhotoPaintView$85();
                }
            });
            this.paintView.setOnCancelButtonClickedListener(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda74
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$createPhotoPaintView$86();
                }
            });
            this.paintView.init();
        }
        bitmapCreateBitmap = null;
        z = false;
        if (bitmapCreateBitmap == null) {
        }
        Bitmap bitmap22 = bitmapCreateBitmap;
        int measuredWidth2 = this.previewContainer.getMeasuredWidth();
        int measuredHeight2 = this.previewContainer.getMeasuredHeight();
        Activity activity2 = this.activity;
        storyEntry = this.outputEntry;
        if (storyEntry != null) {
            file = null;
            z2 = false;
        }
        if (storyEntry != null) {
        }
        if (storyEntry == null) {
        }
        if (storyEntry != null) {
            obj = file;
            z3 = false;
        }
        boolean z52 = z;
        File file52 = file4;
        WindowView windowView2 = this.windowView;
        int i2 = this.currentAccount;
        int orientation2 = this.previewView.getOrientation();
        storyEntry2 = this.outputEntry;
        if (storyEntry2 != null) {
        }
        C716726 c7167262 = new C716726(activity2, z2, file52, z4, z3, windowView2, activity2, i2, bitmap, bitmap22, null, orientation2, obj, storyEntry2, measuredWidth2, measuredHeight2, new MediaController.CropState(), null, this.blurManager, this.resourcesProvider, this.videoTextureHolder, this.previewView);
        this.paintView = c7167262;
        StoryEntry storyEntry52 = this.outputEntry;
        c7167262.setHasAudio(storyEntry52 == null && storyEntry52.audioPath != null);
        this.paintView.setBlurManager(this.blurManager);
        this.containerView.addView(this.paintView);
        renderView = this.paintView.getRenderView();
        this.paintViewRenderView = renderView;
        if (renderView != null) {
        }
        renderInputView = this.paintView.getRenderInputView();
        this.paintViewRenderInputView = renderInputView;
        if (renderInputView != null) {
        }
        textDimView = this.paintView.getTextDimView();
        this.paintViewTextDim = textDimView;
        if (textDimView != null) {
        }
        entitiesView = this.paintView.getEntitiesView();
        this.paintViewEntitiesView = entitiesView;
        if (entitiesView != null) {
        }
        selectionEntitiesView = this.paintView.getSelectionEntitiesView();
        this.paintViewSelectionContainerView = selectionEntitiesView;
        if (selectionEntitiesView != null) {
        }
        orderPreviewViews();
        this.paintView.setOnDoneButtonClickedListener(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda73
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createPhotoPaintView$85();
            }
        });
        this.paintView.setOnCancelButtonClickedListener(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda74
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createPhotoPaintView$86();
            }
        });
        this.paintView.init();
    }

    /* JADX INFO: renamed from: org.telegram.ui.Stories.recorder.StoryRecorder$26 */
    /* JADX INFO: loaded from: classes7.dex */
    class C716726 extends PaintView {
        private boolean multitouch;

        public static /* synthetic */ void $r8$lambda$13HedSNPwtPHDRHRQdx98EeF9Wo() {
        }

        C716726(Context context, boolean z, File file, boolean z2, boolean z3, WindowView windowView, Activity activity, int i, Bitmap bitmap, Bitmap bitmap2, Bitmap bitmap3, int i2, ArrayList arrayList, StoryEntry storyEntry, int i3, int i4, MediaController.CropState cropState, Runnable runnable, BlurringShader.BlurManager blurManager, Theme.ResourcesProvider resourcesProvider, PreviewView.TextureViewHolder textureViewHolder, PreviewView previewView) {
            super(context, z, file, z2, z3, windowView, activity, i, bitmap, bitmap2, bitmap3, i2, arrayList, storyEntry, i3, i4, cropState, runnable, blurManager, resourcesProvider, textureViewHolder, previewView);
        }

        @Override // org.telegram.ui.Components.Paint.Views.EntityView.EntityViewDelegate
        public void onEntityDraggedTop(boolean z) {
            StoryRecorder.this.previewHighlight.show(true, z, StoryRecorder.this.actionBarContainer);
        }

        @Override // org.telegram.p029ui.Stories.recorder.PaintView
        protected void onGalleryClick() {
            StoryRecorder.this.captionEdit.keyboardNotifier.ignore(true);
            StoryRecorder.this.destroyGalleryListView();
            StoryRecorder.this.createGalleryListView(true);
            StoryRecorder.this.lambda$animateGalleryListView$74(true);
        }

        @Override // org.telegram.ui.Components.Paint.Views.EntityView.EntityViewDelegate
        public void onEntityDraggedBottom(boolean z) {
            StoryRecorder.this.previewHighlight.updateCaption(StoryRecorder.this.captionEdit.getText());
            StoryRecorder.this.previewHighlight.show(false, z && this.multitouch, null);
        }

        @Override // org.telegram.p029ui.Stories.recorder.PaintView, org.telegram.ui.Components.Paint.Views.EntityView.EntityViewDelegate
        public void onEntityDragEnd(boolean z) {
            if (!isEntityDeletable()) {
                z = false;
            }
            StoryRecorder.this.captionEdit.clearAnimation();
            ViewPropertyAnimator duration = StoryRecorder.this.captionEdit.animate().alpha(StoryRecorder.this.currentEditMode == -1 ? 1.0f : 0.0f).setDuration(180L);
            CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT;
            duration.setInterpolator(cubicBezierInterpolator).start();
            StoryRecorder.this.videoTimelineContainerView.clearAnimation();
            StoryRecorder.this.videoTimelineContainerView.animate().alpha((StoryRecorder.this.currentEditMode == -1 || StoryRecorder.this.currentEditMode == 2) ? 1.0f : 0.0f).setDuration(180L).setInterpolator(cubicBezierInterpolator).start();
            showTrash(false, z);
            if (z) {
                removeCurrentEntity();
            }
            super.onEntityDragEnd(z);
            this.multitouch = false;
        }

        @Override // org.telegram.ui.Components.Paint.Views.EntityView.EntityViewDelegate
        public void onEntityDragStart() {
            StoryRecorder.this.paintView.showReactionsLayout(false);
            StoryRecorder.this.captionEdit.clearAnimation();
            ViewPropertyAnimator duration = StoryRecorder.this.captionEdit.animate().alpha(0.0f).setDuration(180L);
            CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT;
            duration.setInterpolator(cubicBezierInterpolator).start();
            if (StoryRecorder.this.currentEditMode != 2) {
                StoryRecorder.this.videoTimelineContainerView.clearAnimation();
                StoryRecorder.this.videoTimelineContainerView.animate().alpha(0.0f).setDuration(180L).setInterpolator(cubicBezierInterpolator).start();
            }
            showTrash(isEntityDeletable(), false);
        }

        public void showTrash(boolean z, boolean z2) {
            if (z) {
                StoryRecorder.this.trash.setVisibility(0);
                StoryRecorder.this.trash.setAlpha(0.0f);
                StoryRecorder.this.trash.clearAnimation();
                StoryRecorder.this.trash.animate().alpha(1.0f).setDuration(180L).setInterpolator(CubicBezierInterpolator.EASE_OUT).start();
                return;
            }
            StoryRecorder.this.trash.onDragInfo(false, z2);
            StoryRecorder.this.trash.clearAnimation();
            StoryRecorder.this.trash.animate().alpha(0.0f).withEndAction(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$26$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$showTrash$0();
                }
            }).setDuration(180L).setInterpolator(CubicBezierInterpolator.EASE_OUT).setStartDelay(z2 ? 500L : 0L).start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$showTrash$0() {
            StoryRecorder.this.trash.setVisibility(8);
        }

        @Override // org.telegram.ui.Components.Paint.Views.EntityView.EntityViewDelegate
        public void onEntityDragMultitouchStart() {
            this.multitouch = true;
            StoryRecorder.this.paintView.showReactionsLayout(false);
            showTrash(false, false);
        }

        @Override // org.telegram.ui.Components.Paint.Views.EntityView.EntityViewDelegate
        public void onEntityDragMultitouchEnd() {
            this.multitouch = false;
            showTrash(isEntityDeletable(), false);
            StoryRecorder.this.previewHighlight.show(false, false, null);
        }

        @Override // org.telegram.ui.Components.Paint.Views.EntityView.EntityViewDelegate
        public void onEntityDragTrash(boolean z) {
            StoryRecorder.this.trash.onDragInfo(z, false);
        }

        @Override // org.telegram.p029ui.Stories.recorder.PaintView
        protected void editSelectedTextEntity() {
            StoryRecorder.this.captionEdit.editText.closeKeyboard();
            StoryRecorder.this.switchToEditMode(0, true);
            super.editSelectedTextEntity();
        }

        @Override // org.telegram.p029ui.Stories.recorder.PaintView
        public void dismiss() {
            StoryRecorder.this.captionEdit.editText.closeKeyboard();
            StoryRecorder.this.switchToEditMode(-1, true);
        }

        @Override // org.telegram.p029ui.Stories.recorder.PaintView
        protected void onOpenCloseStickersAlert(boolean z) {
            if (StoryRecorder.this.previewView != null) {
                StoryRecorder.this.previewView.updatePauseReason(6, z);
                if (StoryRecorder.this.playButton != null) {
                    StoryRecorder.this.playButton.drawable.setPause(StoryRecorder.this.previewView.isPlaying(), true);
                }
            }
            if (StoryRecorder.this.captionEdit != null) {
                StoryRecorder.this.captionEdit.ignoreTouches = z;
                StoryRecorder.this.captionEdit.keyboardNotifier.ignore(z);
            }
        }

        @Override // org.telegram.p029ui.Stories.recorder.PaintView
        protected void onAudioSelect(MessageObject messageObject) {
            StoryRecorder.this.previewView.setupAudio(messageObject, true);
            if (StoryRecorder.this.outputEntry != null && StoryRecorder.this.mode != 1) {
                boolean zIsEmpty = TextUtils.isEmpty(StoryRecorder.this.outputEntry.audioPath);
                final boolean z = !zIsEmpty;
                StoryRecorder.this.playButton.drawable.setPause(!StoryRecorder.this.previewView.isPlaying(), false);
                StoryRecorder.this.playButton.setVisibility(0);
                StoryRecorder.this.playButton.animate().alpha(!zIsEmpty ? 1.0f : 0.0f).withEndAction(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$26$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onAudioSelect$1(z);
                    }
                }).start();
            }
            StoryRecorder storyRecorder = StoryRecorder.this;
            storyRecorder.switchToEditMode((storyRecorder.collageLayoutView.hasLayout() && StoryRecorder.this.collageLayoutView.hasVideo() && !TextUtils.isEmpty(StoryRecorder.this.outputEntry.audioPath)) ? 2 : -1, true, true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onAudioSelect$1(boolean z) {
            if (z) {
                return;
            }
            StoryRecorder.this.playButton.setVisibility(8);
        }

        @Override // org.telegram.ui.Components.Paint.Views.EntityView.EntityViewDelegate
        public void onEntityHandleTouched() {
            StoryRecorder.this.paintView.showReactionsLayout(false);
        }

        @Override // org.telegram.p029ui.Stories.recorder.PaintView
        protected boolean checkAudioPermission(Runnable runnable) {
            if (StoryRecorder.this.activity == null) {
                return true;
            }
            if (Build.VERSION.SDK_INT >= 33) {
                if (StoryRecorder.this.activity.checkSelfPermission("android.permission.READ_MEDIA_AUDIO") != 0) {
                    StoryRecorder.this.activity.requestPermissions(new String[]{"android.permission.READ_MEDIA_AUDIO"}, 115);
                    StoryRecorder.this.audioGrantedCallback = runnable;
                    return false;
                }
            } else if (StoryRecorder.this.activity.checkSelfPermission("android.permission.READ_EXTERNAL_STORAGE") != 0) {
                StoryRecorder.this.activity.requestPermissions(new String[]{"android.permission.READ_EXTERNAL_STORAGE"}, 115);
                StoryRecorder.this.audioGrantedCallback = runnable;
                return false;
            }
            return true;
        }

        @Override // org.telegram.p029ui.Stories.recorder.PaintView
        public void onCreateRound(RoundView roundView) {
            if (StoryRecorder.this.previewView != null) {
                StoryRecorder.this.previewView.attachRoundView(roundView);
            }
            if (StoryRecorder.this.captionEdit != null) {
                StoryRecorder.this.captionEdit.setHasRoundVideo(true);
            }
        }

        @Override // org.telegram.p029ui.Stories.recorder.PaintView
        public void onTryDeleteRound() {
            if (StoryRecorder.this.captionEdit != null) {
                StoryRecorder.this.captionEdit.showRemoveRoundAlert();
            }
        }

        @Override // org.telegram.p029ui.Stories.recorder.PaintView
        public void onDeleteRound() {
            if (StoryRecorder.this.previewView != null) {
                StoryRecorder.this.previewView.setupRound(null, null, true);
            }
            if (StoryRecorder.this.paintView != null) {
                StoryRecorder.this.paintView.deleteRound();
            }
            if (StoryRecorder.this.captionEdit != null) {
                StoryRecorder.this.captionEdit.setHasRoundVideo(false);
            }
            if (StoryRecorder.this.outputEntry != null) {
                if (StoryRecorder.this.outputEntry.round != null) {
                    try {
                        StoryRecorder.this.outputEntry.round.delete();
                    } catch (Exception unused) {
                    }
                    StoryRecorder.this.outputEntry.round = null;
                }
                if (StoryRecorder.this.outputEntry.roundThumb != null) {
                    try {
                        new File(StoryRecorder.this.outputEntry.roundThumb).delete();
                    } catch (Exception unused2) {
                    }
                    StoryRecorder.this.outputEntry.roundThumb = null;
                }
            }
        }

        @Override // org.telegram.p029ui.Stories.recorder.PaintView
        public void onSwitchSegmentedAnimation(final PhotoView photoView) {
            float f;
            if (photoView == null) {
                return;
            }
            ThanosEffect thanosEffect = StoryRecorder.this.getThanosEffect();
            if (thanosEffect == null) {
                photoView.onSwitchSegmentedAnimationStarted(false);
                return;
            }
            Bitmap segmentedOutBitmap = photoView.getSegmentedOutBitmap();
            if (segmentedOutBitmap == null) {
                photoView.onSwitchSegmentedAnimationStarted(false);
                return;
            }
            Matrix matrix = new Matrix();
            float width = photoView.getWidth();
            float height = photoView.getHeight();
            float f2 = 0.0f;
            if (photoView.getRotation() != 0.0f) {
                float width2 = segmentedOutBitmap.getWidth();
                float height2 = segmentedOutBitmap.getHeight();
                float f3 = width2 / 2.0f;
                float f4 = height2 / 2.0f;
                float fSqrt = (float) Math.sqrt((f3 * f3) + (f4 * f4));
                float f5 = fSqrt * 2.0f;
                int i = (int) f5;
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, i, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(bitmapCreateBitmap);
                canvas.save();
                canvas.rotate(photoView.getRotation(), fSqrt, fSqrt);
                canvas.drawBitmap(segmentedOutBitmap, (f5 - width2) / 2.0f, (f5 - height2) / 2.0f, (Paint) null);
                segmentedOutBitmap.recycle();
                float f6 = width / 2.0f;
                float f7 = height / 2.0f;
                float fSqrt2 = ((float) Math.sqrt((f6 * f6) + (f7 * f7))) * 2.0f;
                f2 = (-(fSqrt2 - width)) / 2.0f;
                float f8 = (-(fSqrt2 - height)) / 2.0f;
                height = fSqrt2;
                f = f8;
                width = height;
                segmentedOutBitmap = bitmapCreateBitmap;
            } else {
                f = 0.0f;
            }
            matrix.postScale(width, height);
            matrix.postScale(photoView.getScaleX(), photoView.getScaleY(), width / 2.0f, height / 2.0f);
            matrix.postTranslate(StoryRecorder.this.containerView.getX() + StoryRecorder.this.previewContainer.getX() + photoView.getX() + f2, StoryRecorder.this.containerView.getY() + StoryRecorder.this.previewContainer.getY() + photoView.getY() + f);
            thanosEffect.animate(matrix, segmentedOutBitmap, new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$26$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    photoView.onSwitchSegmentedAnimationStarted(true);
                }
            }, new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$26$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    StoryRecorder.C716726.$r8$lambda$13HedSNPwtPHDRHRQdx98EeF9Wo();
                }
            });
        }

        @Override // org.telegram.p029ui.Stories.recorder.PaintView
        public void onSelectRound(RoundView roundView) {
            if (StoryRecorder.this.timelineView != null) {
                StoryRecorder.this.timelineView.selectRound(true);
            }
        }

        @Override // org.telegram.p029ui.Stories.recorder.PaintView
        public void onDeselectRound(RoundView roundView) {
            if (StoryRecorder.this.timelineView != null) {
                StoryRecorder.this.timelineView.selectRound(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createPhotoPaintView$85() {
        switchToEditMode(-1, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createPhotoPaintView$86() {
        switchToEditMode(-1, true);
    }

    private void orderPreviewViews() {
        RenderView renderView = this.paintViewRenderView;
        if (renderView != null) {
            renderView.bringToFront();
        }
        View view = this.paintViewRenderInputView;
        if (view != null) {
            view.bringToFront();
        }
        View view2 = this.paintViewTextDim;
        if (view2 != null) {
            view2.bringToFront();
        }
        View view3 = this.paintViewEntitiesView;
        if (view3 != null) {
            view3.bringToFront();
        }
        View view4 = this.paintViewSelectionContainerView;
        if (view4 != null) {
            view4.bringToFront();
        }
        TrashView trashView = this.trash;
        if (trashView != null) {
            trashView.bringToFront();
        }
        PhotoFilterView.EnhanceView enhanceView = this.photoFilterEnhanceView;
        if (enhanceView != null) {
            enhanceView.bringToFront();
        }
        PhotoFilterBlurControl photoFilterBlurControl = this.photoFilterViewBlurControl;
        if (photoFilterBlurControl != null) {
            photoFilterBlurControl.bringToFront();
        }
        PhotoFilterCurvesControl photoFilterCurvesControl = this.photoFilterViewCurvesControl;
        if (photoFilterCurvesControl != null) {
            photoFilterCurvesControl.bringToFront();
        }
        PreviewHighlightView previewHighlightView = this.previewHighlight;
        if (previewHighlightView != null) {
            previewHighlightView.bringToFront();
        }
        RoundVideoRecorder roundVideoRecorder = this.currentRoundRecorder;
        if (roundVideoRecorder != null) {
            roundVideoRecorder.bringToFront();
        }
    }

    private void destroyPhotoPaintView() {
        PaintView paintView = this.paintView;
        if (paintView == null) {
            return;
        }
        paintView.onCleanupEntities();
        this.paintView.shutdown();
        this.containerView.removeView(this.paintView);
        this.paintView = null;
        RenderView renderView = this.paintViewRenderView;
        if (renderView != null) {
            this.previewContainer.removeView(renderView);
            this.paintViewRenderView = null;
        }
        View view = this.paintViewTextDim;
        if (view != null) {
            this.previewContainer.removeView(view);
            this.paintViewTextDim = null;
        }
        View view2 = this.paintViewRenderInputView;
        if (view2 != null) {
            this.previewContainer.removeView(view2);
            this.paintViewRenderInputView = null;
        }
        View view3 = this.paintViewEntitiesView;
        if (view3 != null) {
            this.previewContainer.removeView(view3);
            this.paintViewEntitiesView = null;
        }
        View view4 = this.paintViewSelectionContainerView;
        if (view4 != null) {
            this.previewContainer.removeView(view4);
            this.paintViewSelectionContainerView = null;
        }
    }

    private boolean isBot() {
        StoryEntry storyEntry = this.outputEntry;
        return ((storyEntry == null || storyEntry.botId == 0) && this.botId == 0) ? false : true;
    }

    private void onSwitchEditModeStart(int i, int i2) {
        PaintView paintView;
        PaintView paintView2;
        if (i2 == -1) {
            this.backButton.setVisibility(0);
            this.captionEdit.setVisibility(0);
            PaintView paintView3 = this.paintView;
            if (paintView3 != null) {
                paintView3.clearSelection();
            }
            this.downloadButton.setVisibility(0);
            StoryEntry storyEntry = this.outputEntry;
            if (storyEntry != null && storyEntry.isRepostMessage) {
                getThemeButton().setVisibility(0);
                updateThemeButtonDrawable(false);
            } else {
                ImageView imageView = this.themeButton;
                if (imageView != null) {
                    imageView.setVisibility(8);
                }
            }
            this.titleTextView.setVisibility(0);
            if (this.mode == 1) {
                this.muteButton.setVisibility(0);
                this.playButton.setVisibility(0);
            } else {
                StoryEntry storyEntry2 = this.outputEntry;
                if (storyEntry2 != null && !TextUtils.isEmpty(storyEntry2.audioPath)) {
                    this.muteButton.setVisibility(8);
                    this.playButton.setVisibility(0);
                }
            }
            this.timelineView.setVisibility(0);
        }
        if (i2 == 0 && (paintView2 = this.paintView) != null) {
            paintView2.setVisibility(0);
        }
        if ((i2 == 0 || i == 0) && (paintView = this.paintView) != null) {
            paintView.onAnimationStateChanged(true);
        }
        PaintView paintView4 = this.paintView;
        if (paintView4 != null) {
            paintView4.keyboardNotifier.ignore(i2 != 0);
        }
        this.captionEdit.keyboardNotifier.ignore(i2 != -1);
        Bulletin.hideVisible();
        if (this.photoFilterView != null && i == 1) {
            applyFilter(null);
        }
        PhotoFilterView.EnhanceView enhanceView = this.photoFilterEnhanceView;
        if (enhanceView != null) {
            enhanceView.setAllowTouch(false);
        }
        this.muteHint.hide();
        if (i2 == 3) {
            createCropEditor();
            this.cropEditor.setVisibility(0);
            StoryEntry storyEntry3 = this.outputEntry;
            if (storyEntry3 != null) {
                this.cropEditor.setEntry(storyEntry3);
            }
        } else if (i == 3) {
            this.previewView.applyMatrix();
            CropEditor cropEditor = this.cropEditor;
            if (cropEditor != null) {
                cropEditor.disappearStarts();
            }
        }
        if (i2 == 4) {
            createCropInlineEditor();
            this.cropInlineEditor.setVisibility(0);
        } else if (i == 4) {
            this.previewView.applyMatrix();
            CropInlineEditor cropInlineEditor = this.cropInlineEditor;
            if (cropInlineEditor != null) {
                cropInlineEditor.disappearStarts();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSwitchEditModeEnd(int i, int i2) {
        PaintView paintView;
        CropEditor cropEditor;
        CropInlineEditor cropInlineEditor;
        PaintView paintView2;
        if (i2 == 0) {
            this.backButton.setVisibility(8);
        }
        if (i == 0 && (paintView2 = this.paintView) != null) {
            paintView2.setVisibility(8);
        }
        if (i == -1) {
            this.captionEdit.setVisibility(8);
            this.muteButton.setVisibility(i2 == 2 ? 0 : 8);
            this.playButton.setVisibility(i2 == 2 ? 0 : 8);
            this.downloadButton.setVisibility(i2 == 2 ? 0 : 8);
            ImageView imageView = this.themeButton;
            if (imageView != null) {
                imageView.setVisibility(i2 == 2 ? 0 : 8);
            }
            this.timelineView.setVisibility(i2 == 2 ? 0 : 8);
            this.titleTextView.setVisibility(8);
        }
        this.previewView.setAllowCropping(i2 == -1);
        if ((i2 == 0 || i == 0) && (paintView = this.paintView) != null) {
            paintView.onAnimationStateChanged(false);
        }
        PhotoFilterView.EnhanceView enhanceView = this.photoFilterEnhanceView;
        if (enhanceView != null) {
            enhanceView.setAllowTouch(i2 == 1 || i2 == -1);
        }
        if (i2 == 3) {
            CropEditor cropEditor2 = this.cropEditor;
            if (cropEditor2 != null) {
                cropEditor2.setAppearProgress(1.0f);
            }
        } else if (i == 3 && (cropEditor = this.cropEditor) != null) {
            cropEditor.setVisibility(8);
            this.cropEditor.setAppearProgress(0.0f);
            this.cropEditor.stop();
        }
        if (i2 == 4) {
            CropInlineEditor cropInlineEditor2 = this.cropInlineEditor;
            if (cropInlineEditor2 != null) {
                cropInlineEditor2.setAppearProgress(1.0f);
                return;
            }
            return;
        }
        if (i != 4 || (cropInlineEditor = this.cropInlineEditor) == null) {
            return;
        }
        cropInlineEditor.setVisibility(8);
        this.cropInlineEditor.setAppearProgress(0.0f);
        this.cropInlineEditor.stop();
    }

    private void applyPaintInBackground(final Runnable runnable) {
        final PaintView paintView = this.paintView;
        final StoryEntry storyEntry = this.outputEntry;
        if (paintView == null || storyEntry == null) {
            runnable.run();
            return;
        }
        storyEntry.clearPaint();
        final boolean zHasChanges = paintView.hasChanges();
        final boolean zHasBlur = paintView.hasBlur();
        final int i = storyEntry.resultWidth;
        final int i2 = storyEntry.resultHeight;
        Utilities.searchQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda110
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$applyPaintInBackground$88(paintView, i, i2, storyEntry, zHasBlur, zHasChanges, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01f3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$applyPaintInBackground$88(PaintView paintView, int i, int i2, final StoryEntry storyEntry, boolean z, final boolean z2, final Runnable runnable) {
        File file;
        File fileMakeCacheFile;
        int i3;
        int i4;
        final File file2;
        final File file3;
        File fileMakeCacheFile2;
        ArrayList arrayList = new ArrayList();
        paintView.getBitmap(arrayList, i, i2, false, false, false, false, storyEntry);
        if (!storyEntry.isVideo) {
            storyEntry.averageDuration = Utilities.clamp(paintView.getLcm(), 7500L, 5000L);
        }
        List<TLRPC.InputDocument> masks = paintView.getMasks();
        ArrayList arrayList2 = masks != null ? new ArrayList(masks) : null;
        boolean z3 = storyEntry.isVideo;
        boolean zWouldBeVideo = storyEntry.wouldBeVideo();
        arrayList.clear();
        int i5 = 1;
        Bitmap bitmap = paintView.getBitmap(arrayList, i, i2, true, false, false, !z3, storyEntry);
        ArrayList arrayList3 = arrayList.isEmpty() ? null : arrayList;
        final File pathToAttach = FileLoader.getInstance(this.currentAccount).getPathToAttach(ImageLoader.scaleAndSaveImage(bitmap, Bitmap.CompressFormat.PNG, storyEntry.resultWidth, storyEntry.resultHeight, 87, false, 101, 101), true);
        if (bitmap != null && !bitmap.isRecycled()) {
            bitmap.recycle();
        }
        if (storyEntry.isRepostMessage) {
            long j = storyEntry.backgroundWallpaperPeerId;
            if (j != Long.MIN_VALUE) {
                Drawable backgroundDrawable = storyEntry.backgroundDrawable;
                if (backgroundDrawable == null) {
                    backgroundDrawable = PreviewView.getBackgroundDrawable((Drawable) null, this.currentAccount, j, this.isDark);
                }
                if (backgroundDrawable != null) {
                    fileMakeCacheFile2 = StoryEntry.makeCacheFile(this.currentAccount, "webp");
                    Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
                    StoryEntry.drawBackgroundDrawable(new Canvas(bitmapCreateBitmap), backgroundDrawable, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight());
                    try {
                        try {
                            bitmapCreateBitmap.compress(Bitmap.CompressFormat.WEBP, 100, new FileOutputStream(fileMakeCacheFile2));
                        } catch (Exception e) {
                            FileLog.m1136e(e);
                            if (!bitmapCreateBitmap.isRecycled()) {
                            }
                            file = fileMakeCacheFile2;
                        }
                    } finally {
                        if (!bitmapCreateBitmap.isRecycled()) {
                            bitmapCreateBitmap.recycle();
                        }
                    }
                } else {
                    fileMakeCacheFile2 = null;
                }
                file = fileMakeCacheFile2;
            } else {
                file = null;
            }
        }
        if (storyEntry.isRepostMessage && storyEntry.isVideo) {
            int i6 = storyEntry.width;
            int i7 = storyEntry.height;
            MessageEntityView messageEntityViewFindMessageView = paintView.findMessageView();
            ImageReceiver photoImage = (messageEntityViewFindMessageView == null || messageEntityViewFindMessageView.listView.getChildCount() != 1 || i6 <= 0 || i7 <= 0 || !(messageEntityViewFindMessageView.listView.getChildAt(0) instanceof ChatMessageCell)) ? null : ((ChatMessageCell) messageEntityViewFindMessageView.listView.getChildAt(0)).getPhotoImage();
            if (photoImage != null && ((int) photoImage.getImageWidth()) > 0 && ((int) photoImage.getImageHeight()) > 0) {
                float f = i6;
                float f2 = i7;
                float fMax = Math.max(photoImage.getImageWidth() / f, photoImage.getImageHeight() / f2);
                int i8 = (int) ((f * fMax) / 2.0f);
                int i9 = (int) ((f2 * fMax) / 2.0f);
                Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(i8, i9, Bitmap.Config.ARGB_8888);
                float[] fArr = new float[8];
                int i10 = 0;
                while (i10 < photoImage.getRoundRadius().length) {
                    int i11 = i10 * 2;
                    fArr[i11] = photoImage.getRoundRadius()[i10];
                    fArr[i11 + 1] = photoImage.getRoundRadius()[i10];
                    i10++;
                    i5 = i5;
                }
                int i12 = i5;
                Canvas canvas = new Canvas(bitmapCreateBitmap2);
                Path path = new Path();
                canvas.scale(0.5f, 0.5f);
                RectF rectF = AndroidUtilities.rectTmp;
                float f3 = (i8 * 2.0f) / 2.0f;
                float f4 = (i9 * 2.0f) / 2.0f;
                rectF.set(f3 - (photoImage.getImageWidth() / 2.0f), f4 - (photoImage.getImageHeight() / 2.0f), f3 + (photoImage.getImageWidth() / 2.0f), f4 + (photoImage.getImageHeight() / 2.0f));
                path.addRoundRect(rectF, fArr, Path.Direction.CW);
                Paint paint = new Paint(i12);
                paint.setColor(-1);
                canvas.drawPath(path, paint);
                try {
                    fileMakeCacheFile = StoryEntry.makeCacheFile(this.currentAccount, "webp");
                    bitmapCreateBitmap2.compress(Bitmap.CompressFormat.WEBP, 100, new FileOutputStream(fileMakeCacheFile));
                } catch (Exception e2) {
                    FileLog.m1136e(e2);
                    fileMakeCacheFile = null;
                }
                bitmapCreateBitmap2.recycle();
            }
        } else {
            fileMakeCacheFile = null;
        }
        if (zWouldBeVideo) {
            i3 = i;
            i4 = i2;
            file2 = null;
        } else {
            i3 = i;
            i4 = i2;
            Bitmap bitmap2 = paintView.getBitmap(new ArrayList(), i3, i4, false, true, false, false, storyEntry);
            File pathToAttach2 = FileLoader.getInstance(this.currentAccount).getPathToAttach(ImageLoader.scaleAndSaveImage(bitmap2, Bitmap.CompressFormat.PNG, i3, i4, 87, false, 101, 101), true);
            if (bitmap2 != null && !bitmap2.isRecycled()) {
                bitmap2.recycle();
            }
            file2 = pathToAttach2;
        }
        if (z) {
            Bitmap blurBitmap = paintView.getBlurBitmap();
            File pathToAttach3 = FileLoader.getInstance(this.currentAccount).getPathToAttach(ImageLoader.scaleAndSaveImage(blurBitmap, Bitmap.CompressFormat.PNG, i3, i4, 87, false, 101, 101), true);
            if (blurBitmap != null && !blurBitmap.isRecycled()) {
                blurBitmap.recycle();
            }
            file3 = pathToAttach3;
        } else {
            file3 = null;
        }
        final File file4 = fileMakeCacheFile;
        final ArrayList arrayList4 = arrayList2;
        final File file5 = file;
        final ArrayList arrayList5 = arrayList3;
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda113
            @Override // java.lang.Runnable
            public final void run() {
                StoryRecorder.$r8$lambda$Bl9sfNTslB4KK0UIgqCffAOoUAY(storyEntry, z2, arrayList5, pathToAttach, file5, file2, file4, file3, arrayList4, runnable);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$Bl9sfNTslB4KK0UIgqCffAOoUAY(StoryEntry storyEntry, boolean z, ArrayList arrayList, File file, File file2, File file3, File file4, File file5, List list, Runnable runnable) {
        try {
            File file6 = storyEntry.paintFile;
            if (file6 != null) {
                file6.delete();
            }
        } catch (Exception unused) {
        }
        try {
            File file7 = storyEntry.paintEntitiesFile;
            if (file7 != null) {
                file7.delete();
            }
        } catch (Exception unused2) {
        }
        try {
            File file8 = storyEntry.paintBlurFile;
            if (file8 != null) {
                file8.delete();
            }
        } catch (Exception unused3) {
        }
        storyEntry.paintFile = null;
        storyEntry.paintEntitiesFile = null;
        storyEntry.paintBlurFile = null;
        File file9 = storyEntry.backgroundFile;
        if (file9 != null) {
            try {
                file9.delete();
            } catch (Exception e) {
                FileLog.m1136e(e);
            }
            storyEntry.backgroundFile = null;
        }
        File file10 = storyEntry.messageVideoMaskFile;
        if (file10 != null) {
            try {
                file10.delete();
            } catch (Exception e2) {
                FileLog.m1136e(e2);
            }
            storyEntry.messageVideoMaskFile = null;
        }
        storyEntry.editedMedia = z | storyEntry.editedMedia;
        storyEntry.mediaEntities = arrayList;
        storyEntry.paintFile = file;
        storyEntry.backgroundFile = file2;
        storyEntry.paintEntitiesFile = file3;
        storyEntry.messageVideoMaskFile = file4;
        storyEntry.paintBlurFile = file5;
        storyEntry.stickers = list;
        if (runnable != null) {
            runnable.run();
        }
    }

    private void applyPaintSwitching(final Runnable runnable) {
        final PaintView paintView = this.paintView;
        final StoryEntry storyEntry = this.outputEntry;
        if (paintView == null || storyEntry == null) {
            runnable.run();
            return;
        }
        if (!paintView.hasChanges()) {
            runnable.run();
            return;
        }
        storyEntry.clearPaint();
        final boolean zHasChanges = paintView.hasChanges();
        final boolean zHasBlur = paintView.hasBlur();
        final int i = storyEntry.resultWidth;
        final int i2 = storyEntry.resultHeight;
        Utilities.searchQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda114
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$applyPaintSwitching$95(paintView, i, i2, storyEntry, zHasBlur, zHasChanges, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01c1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$applyPaintSwitching$95(PaintView paintView, int i, int i2, final StoryEntry storyEntry, boolean z, final boolean z2, final Runnable runnable) {
        File file;
        File file2;
        String str;
        File file3;
        final File file4;
        final File file5;
        String str2;
        final File fileMakeCacheFile;
        ImageReceiver photoImage;
        final File fileMakeCacheFile2;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        paintView.getBitmap(arrayList2, i, i2, false, false, false, false, storyEntry);
        if (!storyEntry.isVideo) {
            storyEntry.averageDuration = Utilities.clamp(paintView.getLcm(), 7500L, 5000L);
        }
        List<TLRPC.InputDocument> masks = paintView.getMasks();
        ArrayList arrayList3 = masks != null ? new ArrayList(masks) : null;
        boolean z3 = storyEntry.isVideo;
        boolean zWouldBeVideo = storyEntry.wouldBeVideo();
        arrayList2.clear();
        final Bitmap bitmap = paintView.getBitmap(arrayList2, i, i2, true, false, false, !z3, storyEntry);
        ArrayList arrayList4 = arrayList2.isEmpty() ? null : arrayList2;
        final File fileMakeCacheFile3 = StoryEntry.makeCacheFile(this.currentAccount, "png");
        arrayList.add(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda115
            @Override // java.lang.Runnable
            public final void run() {
                StoryRecorder.$r8$lambda$cBQge92n2Aikb7lAOhHPsP6HVLI(bitmap, fileMakeCacheFile3);
            }
        });
        if (storyEntry.isRepostMessage) {
            long j = storyEntry.backgroundWallpaperPeerId;
            if (j != Long.MIN_VALUE) {
                Drawable backgroundDrawable = storyEntry.backgroundDrawable;
                if (backgroundDrawable == null) {
                    backgroundDrawable = PreviewView.getBackgroundDrawable((Drawable) null, this.currentAccount, j, this.isDark);
                }
                if (backgroundDrawable != null) {
                    fileMakeCacheFile2 = StoryEntry.makeCacheFile(this.currentAccount, "webp");
                    final Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
                    file = fileMakeCacheFile3;
                    StoryEntry.drawBackgroundDrawable(new Canvas(bitmapCreateBitmap), backgroundDrawable, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight());
                    arrayList.add(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda116
                        @Override // java.lang.Runnable
                        public final void run() {
                            StoryRecorder.$r8$lambda$layLMPzZu4ISw5ym5LQH0HHr4GM(bitmapCreateBitmap, fileMakeCacheFile2);
                        }
                    });
                } else {
                    file = fileMakeCacheFile3;
                    fileMakeCacheFile2 = null;
                }
                file2 = fileMakeCacheFile2;
            } else {
                file = fileMakeCacheFile3;
                file2 = null;
            }
        }
        if (storyEntry.isRepostMessage && storyEntry.isVideo) {
            int i3 = storyEntry.width;
            int i4 = storyEntry.height;
            MessageEntityView messageEntityViewFindMessageView = paintView.findMessageView();
            if (messageEntityViewFindMessageView != null && messageEntityViewFindMessageView.listView.getChildCount() == 1 && i3 > 0 && i4 > 0) {
                photoImage = messageEntityViewFindMessageView.listView.getChildAt(0) instanceof ChatMessageCell ? ((ChatMessageCell) messageEntityViewFindMessageView.listView.getChildAt(0)).getPhotoImage() : null;
                if (photoImage == null && ((int) photoImage.getImageWidth()) > 0 && ((int) photoImage.getImageHeight()) > 0) {
                    float f = i3;
                    float f2 = i4;
                    float fMax = Math.max(photoImage.getImageWidth() / f, photoImage.getImageHeight() / f2);
                    int i5 = (int) ((f * fMax) / 2.0f);
                    int i6 = (int) ((f2 * fMax) / 2.0f);
                    final Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(i5, i6, Bitmap.Config.ARGB_8888);
                    float[] fArr = new float[8];
                    str = "png";
                    ImageReceiver imageReceiver = photoImage;
                    for (int i7 = 0; i7 < imageReceiver.getRoundRadius().length; i7++) {
                        int i8 = i7 * 2;
                        fArr[i8] = imageReceiver.getRoundRadius()[r22];
                        fArr[i8 + 1] = imageReceiver.getRoundRadius()[r22];
                    }
                    Canvas canvas = new Canvas(bitmapCreateBitmap2);
                    Path path = new Path();
                    canvas.scale(0.5f, 0.5f);
                    RectF rectF = AndroidUtilities.rectTmp;
                    float f3 = (i5 * 2.0f) / 2.0f;
                    float f4 = (i6 * 2.0f) / 2.0f;
                    rectF.set(f3 - (imageReceiver.getImageWidth() / 2.0f), f4 - (imageReceiver.getImageHeight() / 2.0f), f3 + (imageReceiver.getImageWidth() / 2.0f), f4 + (imageReceiver.getImageHeight() / 2.0f));
                    path.addRoundRect(rectF, fArr, Path.Direction.CW);
                    Paint paint = new Paint(1);
                    paint.setColor(-1);
                    canvas.drawPath(path, paint);
                    final File fileMakeCacheFile4 = StoryEntry.makeCacheFile(this.currentAccount, "webp");
                    arrayList.add(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda117
                        @Override // java.lang.Runnable
                        public final void run() {
                            StoryRecorder.m19609$r8$lambda$OeCh5EypcPyWasG24bNEAo8MUM(bitmapCreateBitmap2, fileMakeCacheFile4);
                        }
                    });
                    file3 = fileMakeCacheFile4;
                }
            }
            if (photoImage == null) {
                str = "png";
                file3 = null;
            }
        } else {
            str = "png";
            file3 = null;
        }
        if (paintView.hasChanges()) {
            if (zWouldBeVideo) {
                str2 = str;
                fileMakeCacheFile = null;
            } else {
                str2 = str;
                final Bitmap bitmap2 = paintView.getBitmap(new ArrayList(), i, i2, false, true, false, false, storyEntry);
                fileMakeCacheFile = StoryEntry.makeCacheFile(this.currentAccount, str2);
                arrayList.add(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda118
                    @Override // java.lang.Runnable
                    public final void run() {
                        StoryRecorder.m19619$r8$lambda$iHPC2nUP7ABMHUWxAlpcDaD4bg(bitmap2, fileMakeCacheFile);
                    }
                });
            }
            if (z) {
                final Bitmap blurBitmap = paintView.getBlurBitmap();
                final File fileMakeCacheFile5 = StoryEntry.makeCacheFile(this.currentAccount, str2);
                arrayList.add(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda119
                    @Override // java.lang.Runnable
                    public final void run() {
                        StoryRecorder.$r8$lambda$kpS36TI9lhC7HJol_gzW2lkVCyY(blurBitmap, fileMakeCacheFile5);
                    }
                });
                file4 = fileMakeCacheFile;
                file5 = fileMakeCacheFile5;
            } else {
                file4 = fileMakeCacheFile;
                file5 = null;
            }
        } else {
            file4 = storyEntry.paintEntitiesFile;
            file5 = storyEntry.paintBlurFile;
        }
        final File file6 = file2;
        final ArrayList arrayList5 = arrayList3;
        final File file7 = file3;
        final ArrayList arrayList6 = arrayList4;
        final File file8 = file;
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda120
            @Override // java.lang.Runnable
            public final void run() {
                StoryRecorder.$r8$lambda$1izCNiqIooeCBN01uMurN0_3e68(storyEntry, z2, arrayList6, file8, file6, file4, file7, file5, arrayList5, runnable);
            }
        });
        int size = arrayList.size();
        int i9 = 0;
        while (i9 < size) {
            Object obj = arrayList.get(i9);
            i9++;
            ((Runnable) obj).run();
        }
    }

    public static /* synthetic */ void $r8$lambda$cBQge92n2Aikb7lAOhHPsP6HVLI(Bitmap bitmap, File file) {
        try {
            bitmap.compress(Bitmap.CompressFormat.PNG, 87, new FileOutputStream(file));
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
    }

    public static /* synthetic */ void $r8$lambda$layLMPzZu4ISw5ym5LQH0HHr4GM(Bitmap bitmap, File file) {
        try {
            try {
                bitmap.compress(Bitmap.CompressFormat.WEBP, 100, new FileOutputStream(file));
                if (!bitmap.isRecycled()) {
                    bitmap.recycle();
                }
            } catch (Exception e) {
                FileLog.m1136e(e);
                if (bitmap != null && !bitmap.isRecycled()) {
                    bitmap.recycle();
                }
            }
        } catch (Throwable th) {
            if (bitmap != null && !bitmap.isRecycled()) {
                bitmap.recycle();
            }
            throw th;
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$OeCh5EypcPyWasG24bNEAo8-MUM, reason: not valid java name */
    public static /* synthetic */ void m19609$r8$lambda$OeCh5EypcPyWasG24bNEAo8MUM(Bitmap bitmap, File file) {
        try {
            bitmap.compress(Bitmap.CompressFormat.WEBP, 100, new FileOutputStream(file));
        } catch (Exception e) {
            FileLog.m1136e(e);
        } finally {
            AndroidUtilities.recycleBitmap(bitmap);
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$iHPC2nUP7ABMHUWxAlpcDaD4b-g, reason: not valid java name */
    public static /* synthetic */ void m19619$r8$lambda$iHPC2nUP7ABMHUWxAlpcDaD4bg(Bitmap bitmap, File file) {
        try {
            bitmap.compress(Bitmap.CompressFormat.PNG, 87, new FileOutputStream(file));
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
    }

    public static /* synthetic */ void $r8$lambda$kpS36TI9lhC7HJol_gzW2lkVCyY(Bitmap bitmap, File file) {
        try {
            bitmap.compress(Bitmap.CompressFormat.PNG, 87, new FileOutputStream(file));
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
    }

    public static /* synthetic */ void $r8$lambda$1izCNiqIooeCBN01uMurN0_3e68(StoryEntry storyEntry, boolean z, ArrayList arrayList, File file, File file2, File file3, File file4, File file5, List list, Runnable runnable) {
        try {
            File file6 = storyEntry.paintFile;
            if (file6 != null) {
                file6.delete();
            }
        } catch (Exception unused) {
        }
        try {
            File file7 = storyEntry.paintEntitiesFile;
            if (file7 != null) {
                file7.delete();
            }
        } catch (Exception unused2) {
        }
        try {
            File file8 = storyEntry.paintBlurFile;
            if (file8 != null) {
                file8.delete();
            }
        } catch (Exception unused3) {
        }
        storyEntry.paintFile = null;
        storyEntry.paintEntitiesFile = null;
        storyEntry.paintBlurFile = null;
        File file9 = storyEntry.backgroundFile;
        if (file9 != null) {
            try {
                file9.delete();
            } catch (Exception e) {
                FileLog.m1136e(e);
            }
            storyEntry.backgroundFile = null;
        }
        File file10 = storyEntry.messageVideoMaskFile;
        if (file10 != null) {
            try {
                file10.delete();
            } catch (Exception e2) {
                FileLog.m1136e(e2);
            }
            storyEntry.messageVideoMaskFile = null;
        }
        storyEntry.editedMedia = z | storyEntry.editedMedia;
        storyEntry.mediaEntities = arrayList;
        storyEntry.paintFile = file;
        storyEntry.backgroundFile = file2;
        storyEntry.paintEntitiesFile = file3;
        storyEntry.messageVideoMaskFile = file4;
        storyEntry.paintBlurFile = file5;
        storyEntry.stickers = list;
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v31 */
    /* JADX WARN: Type inference failed for: r2v32 */
    /* JADX WARN: Type inference failed for: r2v33 */
    /* JADX WARN: Type inference failed for: r2v36, types: [java.io.FileOutputStream, java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r2v47 */
    /* JADX WARN: Type inference failed for: r2v48 */
    private void applyPaint() {
        StoryEntry storyEntry;
        Bitmap bitmapCreateBitmap;
        ?? r2;
        if (this.paintView == null || (storyEntry = this.outputEntry) == null) {
            return;
        }
        storyEntry.clearPaint();
        this.outputEntry.editedMedia |= this.paintView.hasChanges();
        StoryEntry storyEntry2 = this.outputEntry;
        ArrayList arrayList = storyEntry2.mediaEntities;
        if (arrayList == null) {
            storyEntry2.mediaEntities = new ArrayList();
        } else {
            arrayList.clear();
        }
        PaintView paintView = this.paintView;
        StoryEntry storyEntry3 = this.outputEntry;
        paintView.getBitmap(storyEntry3.mediaEntities, storyEntry3.resultWidth, storyEntry3.resultHeight, false, false, false, false, storyEntry3);
        StoryEntry storyEntry4 = this.outputEntry;
        if (!storyEntry4.isVideo) {
            storyEntry4.averageDuration = Utilities.clamp(this.paintView.getLcm(), 7500L, 5000L);
        }
        List<TLRPC.InputDocument> masks = this.paintView.getMasks();
        this.outputEntry.stickers = masks != null ? new ArrayList(masks) : null;
        StoryEntry storyEntry5 = this.outputEntry;
        boolean z = storyEntry5.isVideo;
        boolean zWouldBeVideo = storyEntry5.wouldBeVideo();
        this.outputEntry.mediaEntities = new ArrayList();
        PaintView paintView2 = this.paintView;
        StoryEntry storyEntry6 = this.outputEntry;
        Bitmap bitmap = paintView2.getBitmap(storyEntry6.mediaEntities, storyEntry6.resultWidth, storyEntry6.resultHeight, true, false, false, !z, storyEntry6);
        if (this.outputEntry.mediaEntities.isEmpty()) {
            this.outputEntry.mediaEntities = null;
        }
        try {
            File file = this.outputEntry.paintFile;
            if (file != null) {
                file.delete();
            }
        } catch (Exception unused) {
        }
        try {
            File file2 = this.outputEntry.paintEntitiesFile;
            if (file2 != null) {
                file2.delete();
            }
        } catch (Exception unused2) {
        }
        try {
            File file3 = this.outputEntry.paintBlurFile;
            if (file3 != null) {
                file3.delete();
            }
        } catch (Exception unused3) {
        }
        StoryEntry storyEntry7 = this.outputEntry;
        storyEntry7.paintFile = null;
        storyEntry7.paintEntitiesFile = null;
        storyEntry7.paintBlurFile = null;
        FileLoader fileLoader = FileLoader.getInstance(this.currentAccount);
        Bitmap.CompressFormat compressFormat = Bitmap.CompressFormat.PNG;
        StoryEntry storyEntry8 = this.outputEntry;
        storyEntry7.paintFile = fileLoader.getPathToAttach(ImageLoader.scaleAndSaveImage(bitmap, compressFormat, storyEntry8.resultWidth, storyEntry8.resultHeight, 87, false, 101, 101), true);
        if (bitmap != null && !bitmap.isRecycled()) {
            bitmap.recycle();
        }
        StoryEntry storyEntry9 = this.outputEntry;
        if (storyEntry9.isRepostMessage) {
            File file4 = storyEntry9.backgroundFile;
            if (file4 != null) {
                try {
                    file4.delete();
                } catch (Exception e) {
                    FileLog.m1136e(e);
                }
                this.outputEntry.backgroundFile = null;
            }
            StoryEntry storyEntry10 = this.outputEntry;
            long j = storyEntry10.backgroundWallpaperPeerId;
            if (j != Long.MIN_VALUE) {
                Drawable backgroundDrawable = storyEntry10.backgroundDrawable;
                if (backgroundDrawable == null) {
                    backgroundDrawable = PreviewView.getBackgroundDrawable((Drawable) null, this.currentAccount, j, this.isDark);
                }
                if (backgroundDrawable != null) {
                    this.outputEntry.backgroundFile = StoryEntry.makeCacheFile(this.currentAccount, "webp");
                    StoryEntry storyEntry11 = this.outputEntry;
                    bitmapCreateBitmap = Bitmap.createBitmap(storyEntry11.resultWidth, storyEntry11.resultHeight, Bitmap.Config.ARGB_8888);
                    StoryEntry.drawBackgroundDrawable(new Canvas(bitmapCreateBitmap), backgroundDrawable, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight());
                    try {
                        try {
                            bitmapCreateBitmap.compress(Bitmap.CompressFormat.WEBP, 100, new FileOutputStream(this.outputEntry.backgroundFile));
                        } finally {
                            if (!bitmapCreateBitmap.isRecycled()) {
                                bitmapCreateBitmap.recycle();
                            }
                        }
                    } catch (Exception e2) {
                        FileLog.m1136e(e2);
                        if (!bitmapCreateBitmap.isRecycled()) {
                        }
                    }
                }
            }
        }
        StoryEntry storyEntry12 = this.outputEntry;
        boolean z2 = storyEntry12.isRepostMessage;
        File pathToAttach = z2;
        if (z2) {
            File file5 = storyEntry12.messageVideoMaskFile;
            if (file5 != null) {
                try {
                    file5.delete();
                } catch (Exception e3) {
                    FileLog.m1136e(e3);
                }
                this.outputEntry.messageVideoMaskFile = null;
            }
            StoryEntry storyEntry13 = this.outputEntry;
            boolean z3 = storyEntry13.isRepostMessage;
            pathToAttach = z3;
            if (z3) {
                boolean z4 = storyEntry13.isVideo;
                pathToAttach = z4;
                if (z4) {
                    int i = storyEntry13.width;
                    int i2 = storyEntry13.height;
                    MessageEntityView messageEntityViewFindMessageView = this.paintView.findMessageView();
                    pathToAttach = i;
                    if (messageEntityViewFindMessageView != null) {
                        pathToAttach = i;
                        pathToAttach = i;
                        pathToAttach = i;
                        if (messageEntityViewFindMessageView.listView.getChildCount() == 1 && i > 0 && i2 > 0) {
                            pathToAttach = i;
                            if (messageEntityViewFindMessageView.listView.getChildAt(0) instanceof ChatMessageCell) {
                                ImageReceiver photoImage = ((ChatMessageCell) messageEntityViewFindMessageView.listView.getChildAt(0)).getPhotoImage();
                                pathToAttach = i;
                                if (photoImage != null) {
                                    pathToAttach = i;
                                    if (((int) photoImage.getImageWidth()) > 0) {
                                        pathToAttach = i;
                                        if (((int) photoImage.getImageHeight()) > 0) {
                                            float f = i;
                                            float f2 = i2;
                                            float fMax = Math.max(photoImage.getImageWidth() / f, photoImage.getImageHeight() / f2);
                                            int i3 = (int) ((f * fMax) / 2.0f);
                                            int i4 = (int) ((f2 * fMax) / 2.0f);
                                            Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(i3, i4, Bitmap.Config.ARGB_8888);
                                            float[] fArr = new float[8];
                                            for (int i5 = 0; i5 < photoImage.getRoundRadius().length; i5++) {
                                                int i6 = i5 * 2;
                                                fArr[i6] = photoImage.getRoundRadius()[i5];
                                                fArr[i6 + 1] = photoImage.getRoundRadius()[i5];
                                            }
                                            Canvas canvas = new Canvas(bitmapCreateBitmap2);
                                            Path path = new Path();
                                            canvas.scale(0.5f, 0.5f);
                                            RectF rectF = AndroidUtilities.rectTmp;
                                            float f3 = (i3 * 2.0f) / 2.0f;
                                            float f4 = (i4 * 2.0f) / 2.0f;
                                            rectF.set(f3 - (photoImage.getImageWidth() / 2.0f), f4 - (photoImage.getImageHeight() / 2.0f), f3 + (photoImage.getImageWidth() / 2.0f), f4 + (photoImage.getImageHeight() / 2.0f));
                                            path.addRoundRect(rectF, fArr, Path.Direction.CW);
                                            Paint paint = new Paint(1);
                                            ?? fileOutputStream = -1;
                                            paint.setColor(-1);
                                            canvas.drawPath(path, paint);
                                            try {
                                                this.outputEntry.messageVideoMaskFile = StoryEntry.makeCacheFile(this.currentAccount, "webp");
                                                Bitmap.CompressFormat compressFormat2 = Bitmap.CompressFormat.WEBP;
                                                fileOutputStream = new FileOutputStream(this.outputEntry.messageVideoMaskFile);
                                                bitmapCreateBitmap2.compress(compressFormat2, 100, fileOutputStream);
                                                r2 = fileOutputStream;
                                            } catch (Exception e4) {
                                                FileLog.m1136e(e4);
                                                this.outputEntry.messageVideoMaskFile = null;
                                                r2 = fileOutputStream;
                                            }
                                            bitmapCreateBitmap2.recycle();
                                            pathToAttach = r2;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        if (!zWouldBeVideo) {
            PaintView paintView3 = this.paintView;
            ArrayList arrayList2 = new ArrayList();
            StoryEntry storyEntry14 = this.outputEntry;
            Bitmap bitmap2 = paintView3.getBitmap(arrayList2, storyEntry14.resultWidth, storyEntry14.resultHeight, false, true, false, false, storyEntry14);
            StoryEntry storyEntry15 = this.outputEntry;
            FileLoader fileLoader2 = FileLoader.getInstance(this.currentAccount);
            Bitmap.CompressFormat compressFormat3 = Bitmap.CompressFormat.PNG;
            StoryEntry storyEntry16 = this.outputEntry;
            pathToAttach = fileLoader2.getPathToAttach(ImageLoader.scaleAndSaveImage(bitmap2, compressFormat3, storyEntry16.resultWidth, storyEntry16.resultHeight, 87, false, 101, 101), true);
            storyEntry15.paintEntitiesFile = pathToAttach;
            if (bitmap2 != null && !bitmap2.isRecycled()) {
                bitmap2.recycle();
            }
        }
        bitmapCreateBitmap = pathToAttach;
        if (this.paintView.hasBlur()) {
            Bitmap blurBitmap = this.paintView.getBlurBitmap();
            StoryEntry storyEntry17 = this.outputEntry;
            FileLoader fileLoader3 = FileLoader.getInstance(this.currentAccount);
            Bitmap.CompressFormat compressFormat4 = Bitmap.CompressFormat.PNG;
            StoryEntry storyEntry18 = this.outputEntry;
            File pathToAttach2 = fileLoader3.getPathToAttach(ImageLoader.scaleAndSaveImage(blurBitmap, compressFormat4, storyEntry18.resultWidth, storyEntry18.resultHeight, 87, false, 101, 101), true);
            storyEntry17.paintBlurFile = pathToAttach2;
            bitmapCreateBitmap = pathToAttach2;
            if (blurBitmap != null) {
                bitmapCreateBitmap = pathToAttach2;
                if (!blurBitmap.isRecycled()) {
                    blurBitmap.recycle();
                    bitmapCreateBitmap = pathToAttach2;
                }
            }
        }
    }

    private void applyPaintMessage() {
        StoryEntry storyEntry;
        if (this.paintView == null || (storyEntry = this.outputEntry) == null || !storyEntry.isRepostMessage) {
            return;
        }
        File file = storyEntry.messageFile;
        if (file != null) {
            try {
                file.delete();
            } catch (Exception e) {
                FileLog.m1136e(e);
            }
            this.outputEntry.messageFile = null;
        }
        this.outputEntry.messageFile = StoryEntry.makeCacheFile(this.currentAccount, "webp");
        PaintView paintView = this.paintView;
        StoryEntry storyEntry2 = this.outputEntry;
        Bitmap bitmap = paintView.getBitmap(storyEntry2.mediaEntities, storyEntry2.resultWidth, storyEntry2.resultHeight, false, false, true, this.mode != 1, storyEntry2);
        try {
            try {
                bitmap.compress(Bitmap.CompressFormat.WEBP, 100, new FileOutputStream(this.outputEntry.messageFile));
                if (bitmap.isRecycled()) {
                    return;
                }
            } catch (Exception e2) {
                FileLog.m1136e(e2);
                try {
                    this.outputEntry.messageFile.delete();
                } catch (Exception e3) {
                    FileLog.m1136e(e3);
                }
                this.outputEntry.messageFile = null;
                if (bitmap == null || bitmap.isRecycled()) {
                    return;
                }
            }
            bitmap.recycle();
        } catch (Throwable th) {
            if (bitmap != null && !bitmap.isRecycled()) {
                bitmap.recycle();
            }
            throw th;
        }
    }

    private void applyFilter(Runnable runnable) {
        StoryEntry storyEntry;
        PreviewView previewView;
        PhotoFilterView photoFilterView = this.photoFilterView;
        if (photoFilterView == null || (storyEntry = this.outputEntry) == null) {
            if (runnable != null) {
                runnable.run();
                return;
            }
            return;
        }
        storyEntry.editedMedia = photoFilterView.hasChanges() | storyEntry.editedMedia;
        this.outputEntry.updateFilter(this.photoFilterView, runnable);
        if (runnable == null) {
            StoryEntry storyEntry2 = this.outputEntry;
            if (storyEntry2.isVideo || (previewView = this.previewView) == null) {
                return;
            }
            previewView.set(storyEntry2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createFilterPhotoView() {
        StoryEntry storyEntry;
        Bitmap bitmap;
        Bitmap scaledBitmap;
        if (this.photoFilterView != null || (storyEntry = this.outputEntry) == null) {
            return;
        }
        if (storyEntry.isVideo) {
            bitmap = null;
        } else {
            if (storyEntry.filterFile == null) {
                scaledBitmap = this.previewView.getPhotoBitmap();
            } else {
                StoryEntry.DecodeBitmap decodeBitmap = new StoryEntry.DecodeBitmap() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda75
                    @Override // org.telegram.ui.Stories.recorder.StoryEntry.DecodeBitmap
                    public final Bitmap decode(BitmapFactory.Options options) {
                        return this.f$0.lambda$createFilterPhotoView$96(options);
                    }
                };
                Point point = AndroidUtilities.displaySize;
                scaledBitmap = StoryEntry.getScaledBitmap(decodeBitmap, point.x, point.y, true, true);
            }
            bitmap = scaledBitmap;
        }
        if (bitmap != null || this.outputEntry.isVideo) {
            Activity activity = this.activity;
            VideoEditTextureView textureView = this.previewView.getTextureView();
            int orientation = this.previewView.getOrientation();
            StoryEntry storyEntry2 = this.outputEntry;
            PhotoFilterView photoFilterView = new PhotoFilterView(activity, textureView, bitmap, orientation, storyEntry2 != null ? storyEntry2.filterState : null, null, 0, false, false, this.blurManager, this.resourcesProvider);
            this.photoFilterView = photoFilterView;
            this.containerView.addView(photoFilterView);
            PhotoFilterView.EnhanceView enhanceView = this.photoFilterEnhanceView;
            if (enhanceView != null) {
                enhanceView.setFilterView(this.photoFilterView);
            }
            TextureView myTextureView = this.photoFilterView.getMyTextureView();
            this.photoFilterViewTextureView = myTextureView;
            if (myTextureView != null) {
                myTextureView.setOpaque(false);
            }
            this.previewView.setFilterTextureView(this.photoFilterViewTextureView, this.photoFilterView);
            TextureView textureView2 = this.photoFilterViewTextureView;
            if (textureView2 != null) {
                textureView2.setAlpha(0.0f);
                this.photoFilterViewTextureView.animate().alpha(1.0f).setDuration(220L).start();
            }
            applyFilterMatrix();
            PhotoFilterBlurControl blurControl = this.photoFilterView.getBlurControl();
            this.photoFilterViewBlurControl = blurControl;
            if (blurControl != null) {
                this.previewContainer.addView(blurControl);
            }
            PhotoFilterCurvesControl curveControl = this.photoFilterView.getCurveControl();
            this.photoFilterViewCurvesControl = curveControl;
            if (curveControl != null) {
                this.previewContainer.addView(curveControl);
            }
            orderPreviewViews();
            this.photoFilterView.getDoneTextView().setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda76
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$createFilterPhotoView$97(view);
                }
            });
            this.photoFilterView.getCancelTextView().setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda77
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$createFilterPhotoView$98(view);
                }
            });
            this.photoFilterView.getToolsView().setVisibility(8);
            this.photoFilterView.getToolsView().setAlpha(0.0f);
            this.photoFilterView.getToolsView().setTranslationY(AndroidUtilities.m1124dp(186.0f));
            this.photoFilterView.init();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Bitmap lambda$createFilterPhotoView$96(BitmapFactory.Options options) {
        return BitmapFactory.decodeFile(this.outputEntry.file.getAbsolutePath(), options);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createFilterPhotoView$97(View view) {
        switchToEditMode(-1, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createFilterPhotoView$98(View view) {
        switchToEditMode(-1, true);
    }

    public void invalidateBlur() {
        CaptionStory captionStory = this.captionEdit;
        if (captionStory != null) {
            captionStory.invalidateBlur();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyFilterMatrix() {
        if (this.outputEntry == null || this.photoFilterViewTextureView == null || this.previewContainer.getMeasuredWidth() <= 0 || this.previewContainer.getMeasuredHeight() <= 0) {
            return;
        }
        Matrix matrix = new Matrix();
        matrix.reset();
        if (this.outputEntry.orientation != 0) {
            matrix.postRotate(-r1, this.previewContainer.getMeasuredWidth() / 2.0f, this.previewContainer.getMeasuredHeight() / 2.0f);
            if ((this.outputEntry.orientation / 90) % 2 == 1) {
                matrix.postScale(this.previewContainer.getMeasuredWidth() / this.previewContainer.getMeasuredHeight(), this.previewContainer.getMeasuredHeight() / this.previewContainer.getMeasuredWidth(), this.previewContainer.getMeasuredWidth() / 2.0f, this.previewContainer.getMeasuredHeight() / 2.0f);
            }
        }
        matrix.postScale((1.0f / this.previewContainer.getMeasuredWidth()) * this.outputEntry.width, (1.0f / this.previewContainer.getMeasuredHeight()) * this.outputEntry.height);
        matrix.postConcat(this.outputEntry.matrix);
        matrix.postScale(this.previewContainer.getMeasuredWidth() / this.outputEntry.resultWidth, this.previewContainer.getMeasuredHeight() / this.outputEntry.resultHeight);
        this.photoFilterViewTextureView.setTransform(matrix);
        this.photoFilterViewTextureView.invalidate();
    }

    private void destroyPhotoFilterView() {
        PhotoFilterView photoFilterView = this.photoFilterView;
        if (photoFilterView == null) {
            return;
        }
        photoFilterView.shutdown();
        this.photoFilterEnhanceView.setFilterView(null);
        this.containerView.removeView(this.photoFilterView);
        TextureView textureView = this.photoFilterViewTextureView;
        if (textureView != null) {
            this.previewContainer.removeView(textureView);
            this.photoFilterViewTextureView = null;
        }
        this.previewView.setFilterTextureView(null, null);
        PhotoFilterBlurControl photoFilterBlurControl = this.photoFilterViewBlurControl;
        if (photoFilterBlurControl != null) {
            this.previewContainer.removeView(photoFilterBlurControl);
            this.photoFilterViewBlurControl = null;
        }
        PhotoFilterCurvesControl photoFilterCurvesControl = this.photoFilterViewCurvesControl;
        if (photoFilterCurvesControl != null) {
            this.previewContainer.removeView(photoFilterCurvesControl);
            this.photoFilterViewCurvesControl = null;
        }
        this.photoFilterView = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createCameraView() {
        if (this.cameraView != null || getContext() == null) {
            return;
        }
        this.cameraView = new C716827(getContext(), getCameraFace(), false);
        RecordControl recordControl = this.recordControl;
        if (recordControl != null) {
            recordControl.setAmplitude(0.0f, false);
        }
        this.cameraView.recordHevc = !this.collageLayoutView.hasLayout();
        this.cameraView.setThumbDrawable(getCameraThumb());
        this.cameraView.initTexture();
        this.cameraView.setDelegate(new CameraView.CameraViewDelegate() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda13
            @Override // org.telegram.messenger.camera.CameraView.CameraViewDelegate
            public final void onCameraInit() {
                this.f$0.lambda$createCameraView$99();
            }
        });
        setActionBarButtonVisible(this.dualButton, this.cameraView.dualAvailable() && this.currentPage == 0, true);
        this.collageButton.setTranslationX(this.cameraView.dualAvailable() ? 0.0f : AndroidUtilities.m1124dp(46.0f));
        this.collageLayoutView.setCameraView(this.cameraView);
        if (MessagesController.getGlobalMainSettings().getInt("storyhint2", 0) < 1) {
            this.cameraHint.show();
            MessagesController.getGlobalMainSettings().edit().putInt("storyhint2", MessagesController.getGlobalMainSettings().getInt("storyhint2", 0) + 1).apply();
        } else if (!this.cameraView.isSavedDual() && this.cameraView.dualAvailable() && MessagesController.getGlobalMainSettings().getInt("storydualhint", 0) < 2) {
            this.dualHint.show();
        }
        if (this.qrScanner == null) {
            this.qrScanner = new QRScanner(getContext(), new Utilities.Callback() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda14
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$createCameraView$100((QRScanner.Detected) obj);
                }
            });
        }
        this.qrScanner.attach(this.cameraView);
        ScannedLinkPreview scannedLinkPreview = this.qrLinkView;
        if (scannedLinkPreview != null) {
            CollageLayoutView2 collageLayoutView2 = this.collageLayoutView;
            scannedLinkPreview.setBlurRenderNode(collageLayoutView2, collageLayoutView2.getBlurRenderNode());
        }
    }

    /* JADX INFO: renamed from: org.telegram.ui.Stories.recorder.StoryRecorder$27 */
    /* JADX INFO: loaded from: classes7.dex */
    class C716827 extends DualCameraView {
        C716827(Context context, boolean z, boolean z2) {
            super(context, z, z2);
        }

        @Override // org.telegram.p029ui.Stories.recorder.DualCameraView
        public void onEntityDraggedTop(boolean z) {
            StoryRecorder.this.previewHighlight.show(true, z, StoryRecorder.this.actionBarContainer);
        }

        @Override // org.telegram.p029ui.Stories.recorder.DualCameraView
        public void onEntityDraggedBottom(boolean z) {
            StoryRecorder.this.previewHighlight.updateCaption(StoryRecorder.this.captionEdit.getText());
            StoryRecorder.this.previewHighlight.show(false, z, StoryRecorder.this.controlContainer);
        }

        @Override // org.telegram.p029ui.Stories.recorder.DualCameraView, org.telegram.messenger.camera.CameraView
        public void toggleDual() {
            super.toggleDual();
            StoryRecorder.this.dualButton.setValue(isDual());
            StoryRecorder storyRecorder = StoryRecorder.this;
            storyRecorder.setCameraFlashModeIcon(storyRecorder.getCurrentFlashMode(), true);
        }

        @Override // org.telegram.p029ui.Stories.recorder.DualCameraView
        protected void onSavedDualCameraSuccess() {
            if (MessagesController.getGlobalMainSettings().getInt("storysvddualhint", 0) < 2) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$27$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onSavedDualCameraSuccess$0();
                    }
                }, 340L);
            }
            StoryRecorder.this.dualButton.setValue(isDual());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onSavedDualCameraSuccess$0() {
            if (StoryRecorder.this.takingVideo || StoryRecorder.this.takingPhoto || StoryRecorder.this.cameraView == null || StoryRecorder.this.currentPage != 0 || StoryRecorder.this.savedDualHint == null) {
                return;
            }
            String string = LocaleController.getString(isFrontface() ? C2888R.string.StoryCameraSavedDualBackHint : C2888R.string.StoryCameraSavedDualFrontHint);
            StoryRecorder.this.savedDualHint.setMaxWidthPx(HintView2.cutInFancyHalf(string, StoryRecorder.this.savedDualHint.getTextPaint()));
            StoryRecorder.this.savedDualHint.setText(string);
            StoryRecorder.this.savedDualHint.show();
            MessagesController.getGlobalMainSettings().edit().putInt("storysvddualhint", MessagesController.getGlobalMainSettings().getInt("storysvddualhint", 0) + 1).apply();
        }

        @Override // org.telegram.messenger.camera.CameraView
        protected void receivedAmplitude(double d) {
            if (StoryRecorder.this.recordControl != null) {
                StoryRecorder.this.recordControl.setAmplitude(Utilities.clamp((float) (d / 1800.0d), 1.0f, 0.0f), true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createCameraView$99() {
        String currentFlashMode = getCurrentFlashMode();
        if (TextUtils.equals(currentFlashMode, getNextFlashMode())) {
            currentFlashMode = null;
        }
        setCameraFlashModeIcon(this.currentPage == 0 ? currentFlashMode : null, true);
        ZoomControlView zoomControlView = this.zoomControlView;
        if (zoomControlView != null) {
            this.cameraZoom = 0.0f;
            zoomControlView.setZoom(0.0f, false);
        }
        updateActionBarButtons(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createCameraView$100(QRScanner.Detected detected) {
        if (this.qrScanner == null) {
            return;
        }
        this.qrLinkView.setLink(detected == null ? null : detected.link);
        CollageLayoutView2 collageLayoutView2 = this.collageLayoutView;
        if (collageLayoutView2 != null) {
            collageLayoutView2.qrDrawer.setQrDetected(this.qrLinkView.isResolved() ? this.qrScanner.getDetected() : null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkFrontfaceFlashModes() {
        if (this.frontfaceFlashMode < 0) {
            this.frontfaceFlashMode = MessagesController.getGlobalMainSettings().getInt("frontflash", 1);
            ArrayList arrayList = new ArrayList();
            this.frontfaceFlashModes = arrayList;
            arrayList.add("off");
            this.frontfaceFlashModes.add("auto");
            this.frontfaceFlashModes.add("on");
            this.flashViews.setWarmth(MessagesController.getGlobalMainSettings().getFloat("frontflash_warmth", 0.9f));
            this.flashViews.setIntensity(MessagesController.getGlobalMainSettings().getFloat("frontflash_intensity", 1.0f));
        }
    }

    private void saveFrontFaceFlashMode() {
        if (this.frontfaceFlashMode >= 0) {
            MessagesController.getGlobalMainSettings().edit().putFloat("frontflash_warmth", this.flashViews.warmth).putFloat("frontflash_intensity", this.flashViews.intensity).apply();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getCurrentFlashMode() {
        DualCameraView dualCameraView = this.cameraView;
        if (dualCameraView == null || dualCameraView.getCameraSession() == null) {
            return null;
        }
        if (this.cameraView.isFrontface() && !this.cameraView.getCameraSession().hasFlashModes()) {
            checkFrontfaceFlashModes();
            return (String) this.frontfaceFlashModes.get(this.frontfaceFlashMode);
        }
        return this.cameraView.getCameraSession().getCurrentFlashMode();
    }

    private String getNextFlashMode() {
        DualCameraView dualCameraView = this.cameraView;
        if (dualCameraView == null || dualCameraView.getCameraSession() == null) {
            return null;
        }
        if (this.cameraView.isFrontface() && !this.cameraView.getCameraSession().hasFlashModes()) {
            checkFrontfaceFlashModes();
            ArrayList arrayList = this.frontfaceFlashModes;
            return (String) arrayList.get(this.frontfaceFlashMode + 1 >= arrayList.size() ? 0 : this.frontfaceFlashMode + 1);
        }
        return this.cameraView.getCameraSession().getNextFlashMode();
    }

    private void setCurrentFlashMode(String str) {
        DualCameraView dualCameraView = this.cameraView;
        if (dualCameraView == null || dualCameraView.getCameraSession() == null) {
            return;
        }
        if (this.cameraView.isFrontface() && !this.cameraView.getCameraSession().hasFlashModes()) {
            int iIndexOf = this.frontfaceFlashModes.indexOf(str);
            if (iIndexOf >= 0) {
                this.frontfaceFlashMode = iIndexOf;
                MessagesController.getGlobalMainSettings().edit().putInt("frontflash", this.frontfaceFlashMode).apply();
                return;
            }
            return;
        }
        this.cameraView.getCameraSession().setCurrentFlashMode(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Drawable getCameraThumb() {
        Bitmap bitmapDecodeFile;
        try {
            bitmapDecodeFile = BitmapFactory.decodeFile(new File(ApplicationLoader.getFilesDirFixed(), "cthumb.jpg").getAbsolutePath());
        } catch (Throwable unused) {
            bitmapDecodeFile = null;
        }
        if (bitmapDecodeFile != null) {
            return new BitmapDrawable(bitmapDecodeFile);
        }
        return getContext().getResources().getDrawable(C2888R.drawable.icplaceholder);
    }

    private void saveLastCameraBitmap(final Runnable runnable) {
        DualCameraView dualCameraView = this.cameraView;
        if (dualCameraView == null || dualCameraView.getTextureView() == null) {
            return;
        }
        try {
            final Bitmap bitmap = this.cameraView.getTextureView().getBitmap();
            Utilities.themeQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda55
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$saveLastCameraBitmap$101(bitmap, runnable);
                }
            });
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveLastCameraBitmap$101(Bitmap bitmap, Runnable runnable) {
        if (bitmap != null) {
            try {
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), this.cameraView.getMatrix(), true);
                bitmap.recycle();
                Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapCreateBitmap, 80, (int) (bitmapCreateBitmap.getHeight() / (bitmapCreateBitmap.getWidth() / 80.0f)), true);
                if (bitmapCreateScaledBitmap != null) {
                    if (bitmapCreateScaledBitmap != bitmapCreateBitmap) {
                        bitmapCreateBitmap.recycle();
                    }
                    Utilities.blurBitmap(bitmapCreateScaledBitmap, 7, 1, bitmapCreateScaledBitmap.getWidth(), bitmapCreateScaledBitmap.getHeight(), bitmapCreateScaledBitmap.getRowBytes());
                    FileOutputStream fileOutputStream = new FileOutputStream(new File(ApplicationLoader.getFilesDirFixed(), "cthumb.jpg"));
                    bitmapCreateScaledBitmap.compress(Bitmap.CompressFormat.JPEG, 87, fileOutputStream);
                    bitmapCreateScaledBitmap.recycle();
                    fileOutputStream.close();
                }
            } catch (Throwable unused) {
                AndroidUtilities.runOnUIThread(runnable);
                return;
            }
        }
        AndroidUtilities.runOnUIThread(runnable);
    }

    private void showDismissEntry() {
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext(), this.resourcesProvider);
        builder.setTitle(LocaleController.getString(C2888R.string.DiscardChanges));
        builder.setMessage(LocaleController.getString(C2888R.string.PhotoEditorDiscardAlert));
        StoryEntry storyEntry = this.outputEntry;
        if (storyEntry != null && !storyEntry.isEdit && !storyEntry.isShare) {
            builder.setNeutralButton(LocaleController.getString(storyEntry.isDraft ? C2888R.string.StoryKeepDraft : C2888R.string.StorySaveDraft), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda64
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i) {
                    this.f$0.lambda$showDismissEntry$102(alertDialog, i);
                }
            });
        }
        StoryEntry storyEntry2 = this.outputEntry;
        builder.setPositiveButton(LocaleController.getString((storyEntry2 == null || !storyEntry2.isDraft || storyEntry2.isEdit) ? C2888R.string.Discard : C2888R.string.StoryDeleteDraft), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda65
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                this.f$0.lambda$showDismissEntry$103(alertDialog, i);
            }
        });
        builder.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null);
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.show();
        View button = alertDialogCreate.getButton(-1);
        if (button instanceof TextView) {
            int i = Theme.key_text_RedBold;
            ((TextView) button).setTextColor(Theme.getColor(i, this.resourcesProvider));
            button.setBackground(Theme.createRadSelectorDrawable(ColorUtils.setAlphaComponent(Theme.getColor(i, this.resourcesProvider), 51), 6, 6));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showDismissEntry$102(AlertDialog alertDialog, int i) {
        StoryEntry storyEntry = this.outputEntry;
        if (storyEntry == null) {
            return;
        }
        storyEntry.captionEntitiesAllowed = MessagesController.getInstance(this.currentAccount).storyEntitiesAllowed();
        this.showSavedDraftHint = !this.outputEntry.isDraft;
        applyFilter(null);
        applyPaint();
        applyPaintMessage();
        destroyPhotoFilterView();
        StoryEntry storyEntry2 = this.outputEntry;
        storyEntry2.destroy(true);
        storyEntry2.caption = this.captionEdit.getText();
        this.outputEntry = null;
        prepareThumb(storyEntry2, true);
        DraftsController draftsController = MessagesController.getInstance(this.currentAccount).getStoriesController().getDraftsController();
        if (storyEntry2.isDraft) {
            draftsController.edit(storyEntry2);
        } else {
            draftsController.append(storyEntry2);
        }
        navigateTo(0, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showDismissEntry$103(AlertDialog alertDialog, int i) {
        StoryEntry storyEntry = this.outputEntry;
        if (storyEntry != null && !storyEntry.isEdit && ((!storyEntry.isRepost || storyEntry.isRepostMessage) && storyEntry.isDraft)) {
            MessagesController.getInstance(this.currentAccount).getStoriesController().getDraftsController().delete(this.outputEntry);
            this.outputEntry = null;
        }
        StoryEntry storyEntry2 = this.outputEntry;
        if (storyEntry2 != null && (storyEntry2.isShare || storyEntry2.isEdit || (storyEntry2.isRepost && !storyEntry2.isRepostMessage))) {
            close(true);
        } else {
            navigateTo(0, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void destroyCameraView(boolean z) {
        QRScanner qRScanner = this.qrScanner;
        if (qRScanner != null) {
            qRScanner.destroy();
            this.qrScanner = null;
            CollageLayoutView2 collageLayoutView2 = this.collageLayoutView;
            if (collageLayoutView2 != null) {
                collageLayoutView2.qrDrawer.setQrDetected(null);
            }
        }
        ScannedLinkPreview scannedLinkPreview = this.qrLinkView;
        if (scannedLinkPreview != null) {
            scannedLinkPreview.setBlurRenderNode(null, null);
        }
        if (this.cameraView != null) {
            if (z) {
                saveLastCameraBitmap(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda11
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$destroyCameraView$104();
                    }
                });
                return;
            }
            saveLastCameraBitmap(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda12
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$destroyCameraView$105();
                }
            });
            this.cameraView.destroy(true, null);
            AndroidUtilities.removeFromParent(this.cameraView);
            CollageLayoutView2 collageLayoutView22 = this.collageLayoutView;
            if (collageLayoutView22 != null) {
                collageLayoutView22.setCameraView(null);
            }
            this.cameraView = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$destroyCameraView$104() {
        this.collageLayoutView.setCameraThumb(getCameraThumb());
        DualCameraView dualCameraView = this.cameraView;
        if (dualCameraView != null) {
            dualCameraView.destroy(true, null);
            AndroidUtilities.removeFromParent(this.cameraView);
            CollageLayoutView2 collageLayoutView2 = this.collageLayoutView;
            if (collageLayoutView2 != null) {
                collageLayoutView2.setCameraView(null);
            }
            this.cameraView = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$destroyCameraView$105() {
        this.collageLayoutView.setCameraThumb(getCameraThumb());
    }

    private void requestCameraPermission(boolean z) {
        if (!this.requestedCameraPermission || z) {
            this.noCameraPermission = false;
            Activity activity = this.activity;
            if (activity != null) {
                boolean z2 = activity.checkSelfPermission("android.permission.CAMERA") != 0;
                this.noCameraPermission = z2;
                if (z2) {
                    Drawable drawableMutate = getContext().getResources().getDrawable(C2888R.drawable.story_camera).mutate();
                    drawableMutate.setColorFilter(new PorterDuffColorFilter(1040187391, PorterDuff.Mode.MULTIPLY));
                    CombinedDrawable combinedDrawable = new CombinedDrawable(new ColorDrawable(-14540254), drawableMutate);
                    combinedDrawable.setIconSize(AndroidUtilities.m1124dp(64.0f), AndroidUtilities.m1124dp(64.0f));
                    this.collageLayoutView.setCameraThumb(combinedDrawable);
                    if (!this.activity.shouldShowRequestPermissionRationale("android.permission.CAMERA")) {
                        this.activity.requestPermissions(new String[]{"android.permission.CAMERA"}, 111);
                        this.requestedCameraPermission = true;
                    } else {
                        new AlertDialog.Builder(getContext(), this.resourcesProvider).setTopAnimation(C2888R.raw.permission_request_camera, 72, false, Theme.getColor(Theme.key_dialogTopBackground)).setMessage(AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.PermissionNoCameraWithHint))).setPositiveButton(LocaleController.getString(C2888R.string.PermissionOpenSettings), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda85
                            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                            public final void onClick(AlertDialog alertDialog, int i) {
                                this.f$0.lambda$requestCameraPermission$106(alertDialog, i);
                            }
                        }).setNegativeButton(LocaleController.getString(C2888R.string.ContactsPermissionAlertNotNow), null).create().show();
                        return;
                    }
                }
            }
            if (this.noCameraPermission) {
                return;
            }
            if (CameraController.getInstance().isCameraInitied()) {
                createCameraView();
            } else {
                CameraController.getInstance().initCamera(new StoryRecorder$$ExternalSyntheticLambda0(this));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestCameraPermission$106(AlertDialog alertDialog, int i) {
        try {
            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.parse("package:" + ApplicationLoader.applicationContext.getPackageName()));
            this.activity.startActivity(intent);
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean requestGalleryPermission() {
        if (this.activity == null) {
            return true;
        }
        boolean zIsImagesAndVideoPermissionGranted = SystemUtils.isImagesAndVideoPermissionGranted();
        if (!zIsImagesAndVideoPermissionGranted) {
            SystemUtils.requestImagesAndVideoPermission(this.activity);
        }
        return zIsImagesAndVideoPermissionGranted;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean requestAudioPermission() {
        Activity activity = this.activity;
        if (activity == null || activity.checkSelfPermission("android.permission.RECORD_AUDIO") == 0) {
            return true;
        }
        this.activity.requestPermissions(new String[]{"android.permission.RECORD_AUDIO"}, 112);
        return false;
    }

    public static void onResume() {
        StoryRecorder storyRecorder = instance;
        if (storyRecorder != null) {
            storyRecorder.onResumeInternal();
        }
    }

    private void onResumeInternal() {
        if (this.currentPage == 0) {
            ValueAnimator valueAnimator = this.openCloseAnimator;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.whenOpenDone = new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda9
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onResumeInternal$107();
                    }
                };
            } else {
                requestCameraPermission(false);
            }
        }
        CaptionStory captionStory = this.captionEdit;
        if (captionStory != null) {
            captionStory.onResume();
        }
        RecordControl recordControl = this.recordControl;
        if (recordControl != null) {
            recordControl.updateGalleryImage();
        }
        PreviewHighlightView previewHighlightView = this.previewHighlight;
        if (previewHighlightView != null) {
            previewHighlightView.updateCount();
        }
        PaintView paintView = this.paintView;
        if (paintView != null) {
            paintView.onResume();
        }
        PreviewView previewView = this.previewView;
        if (previewView != null) {
            previewView.updatePauseReason(0, false);
        }
        MessagesController.getInstance(this.currentAccount).getStoriesController().getDraftsController().load();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onResumeInternal$107() {
        requestCameraPermission(false);
    }

    public static void onPause() {
        StoryRecorder storyRecorder = instance;
        if (storyRecorder != null) {
            storyRecorder.onPauseInternal();
        }
    }

    private void onPauseInternal() {
        destroyCameraView(false);
        CaptionStory captionStory = this.captionEdit;
        if (captionStory != null) {
            captionStory.onPause();
        }
        PreviewView previewView = this.previewView;
        if (previewView != null) {
            previewView.updatePauseReason(0, true);
        }
    }

    public static void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        StoryRecorder storyRecorder = instance;
        if (storyRecorder != null) {
            storyRecorder.onRequestPermissionsResultInternal(i, strArr, iArr);
        }
    }

    private void onRequestPermissionsResultInternal(int i, String[] strArr, int[] iArr) {
        Runnable runnable;
        boolean z = iArr != null && iArr.length == 1 && iArr[0] == 0;
        if (i == 111) {
            this.noCameraPermission = !z;
            if (z && this.currentPage == 0) {
                this.collageLayoutView.setCameraThumb(null);
                if (CameraController.getInstance().isCameraInitied()) {
                    createCameraView();
                    return;
                } else {
                    CameraController.getInstance().initCamera(new StoryRecorder$$ExternalSyntheticLambda0(this));
                    return;
                }
            }
            return;
        }
        if (i == 114) {
            if (z) {
                MediaController.loadGalleryPhotosAlbums(0);
                lambda$animateGalleryListView$74(true);
                return;
            } else {
                new AlertDialog.Builder(getContext(), this.resourcesProvider).setTopAnimation(C2888R.raw.permission_request_folder, 72, false, Theme.getColor(Theme.key_dialogTopBackground)).setMessage(AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.PermissionStorageWithHint))).setPositiveButton(LocaleController.getString(C2888R.string.PermissionOpenSettings), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda1
                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                    public final void onClick(AlertDialog alertDialog, int i2) {
                        this.f$0.lambda$onRequestPermissionsResultInternal$108(alertDialog, i2);
                    }
                }).setNegativeButton(LocaleController.getString(C2888R.string.ContactsPermissionAlertNotNow), null).create().show();
                return;
            }
        }
        if (i == 112) {
            if (z) {
                return;
            }
            new AlertDialog.Builder(getContext(), this.resourcesProvider).setTopAnimation(C2888R.raw.permission_request_camera, 72, false, Theme.getColor(Theme.key_dialogTopBackground)).setMessage(AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.PermissionNoCameraMicVideo))).setPositiveButton(LocaleController.getString(C2888R.string.PermissionOpenSettings), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda2
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i2) {
                    this.f$0.lambda$onRequestPermissionsResultInternal$109(alertDialog, i2);
                }
            }).setNegativeButton(LocaleController.getString(C2888R.string.ContactsPermissionAlertNotNow), null).create().show();
        } else if (i == 115) {
            if (!z) {
                new AlertDialog.Builder(getContext(), this.resourcesProvider).setTopAnimation(C2888R.raw.permission_request_folder, 72, false, Theme.getColor(Theme.key_dialogTopBackground)).setMessage(AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.PermissionNoAudioStorageStory))).setPositiveButton(LocaleController.getString(C2888R.string.PermissionOpenSettings), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda3
                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                    public final void onClick(AlertDialog alertDialog, int i2) {
                        this.f$0.lambda$onRequestPermissionsResultInternal$110(alertDialog, i2);
                    }
                }).setNegativeButton(LocaleController.getString(C2888R.string.ContactsPermissionAlertNotNow), null).create().show();
            }
            if (z && (runnable = this.audioGrantedCallback) != null) {
                runnable.run();
            }
            this.audioGrantedCallback = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onRequestPermissionsResultInternal$108(AlertDialog alertDialog, int i) {
        try {
            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.parse("package:" + ApplicationLoader.applicationContext.getPackageName()));
            this.activity.startActivity(intent);
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onRequestPermissionsResultInternal$109(AlertDialog alertDialog, int i) {
        try {
            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.parse("package:" + ApplicationLoader.applicationContext.getPackageName()));
            this.activity.startActivity(intent);
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onRequestPermissionsResultInternal$110(AlertDialog alertDialog, int i) {
        try {
            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.parse("package:" + ApplicationLoader.applicationContext.getPackageName()));
            this.activity.startActivity(intent);
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveCameraFace(boolean z) {
        MessagesController.getGlobalMainSettings().edit().putBoolean("stories_camera", z).apply();
    }

    private boolean getCameraFace() {
        return MessagesController.getGlobalMainSettings().getBoolean("stories_camera", false);
    }

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
    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        StoriesController.StoryLimit storyLimitCheckStoryLimit;
        StoryEntry storyEntry;
        boolean z = false;
        z = false;
        z = false;
        z = false;
        if (i == NotificationCenter.albumsDidLoad) {
            RecordControl recordControl = this.recordControl;
            if (recordControl != null) {
                recordControl.updateGalleryImage();
            }
            if (this.lastGallerySelectedAlbum == null || MediaController.allMediaAlbums == null) {
                return;
            }
            for (int i3 = 0; i3 < MediaController.allMediaAlbums.size(); i3++) {
                MediaController.AlbumEntry albumEntry = MediaController.allMediaAlbums.get(i3);
                int i4 = albumEntry.bucketId;
                MediaController.AlbumEntry albumEntry2 = this.lastGallerySelectedAlbum;
                if (i4 == albumEntry2.bucketId && albumEntry.videoOnly == albumEntry2.videoOnly) {
                    this.lastGallerySelectedAlbum = albumEntry;
                    return;
                }
            }
            return;
        }
        if (i == NotificationCenter.storiesDraftsUpdated) {
            RecordControl recordControl2 = this.recordControl;
            if (recordControl2 == null || this.showSavedDraftHint) {
                return;
            }
            recordControl2.updateGalleryImage();
            return;
        }
        if (i == NotificationCenter.storiesLimitUpdate) {
            int i5 = this.currentPage;
            if (i5 == 1) {
                PreviewButtons previewButtons = this.previewButtons;
                if (!this.videoError && !this.captionEdit.isCaptionOverLimit() && (!MessagesController.getInstance(this.currentAccount).getStoriesController().hasStoryLimit(getCount()) || ((storyEntry = this.outputEntry) != null && (storyEntry.isEdit || storyEntry.botId != 0)))) {
                    z = true;
                }
                previewButtons.setShareEnabled(z);
                return;
            }
            if (i5 == 0 && (storyLimitCheckStoryLimit = MessagesController.getInstance(this.currentAccount).getStoriesController().checkStoryLimit()) != null && storyLimitCheckStoryLimit.active(this.currentAccount)) {
                StoryEntry storyEntry2 = this.outputEntry;
                if (storyEntry2 == null || storyEntry2.botId == 0) {
                    showLimitReachedSheet(storyLimitCheckStoryLimit, true);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getCount() {
        ArrayList arrayList = this.selectedEntries;
        if (arrayList != null) {
            return arrayList.size();
        }
        StoryEntry storyEntry = this.outputEntry;
        if (storyEntry != null) {
            return storyEntry.getTotalCount();
        }
        return 1;
    }

    public void addNotificationObservers() {
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.albumsDidLoad);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.storiesDraftsUpdated);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.storiesLimitUpdate);
    }

    public void removeNotificationObservers() {
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.albumsDidLoad);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.storiesDraftsUpdated);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.storiesLimitUpdate);
    }

    private void showLimitReachedSheet(StoriesController.StoryLimit storyLimit, final boolean z) {
        if (this.shownLimitReached) {
            return;
        }
        LimitReachedBottomSheet limitReachedBottomSheet = new LimitReachedBottomSheet(new BaseFragment() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.28
            @Override // org.telegram.p029ui.ActionBar.BaseFragment
            public boolean isLightStatusBar() {
                return false;
            }

            @Override // org.telegram.p029ui.ActionBar.BaseFragment
            public Activity getParentActivity() {
                return StoryRecorder.this.activity;
            }

            @Override // org.telegram.p029ui.ActionBar.BaseFragment
            public Theme.ResourcesProvider getResourceProvider() {
                return new WrappedResourceProvider(StoryRecorder.this.resourcesProvider) { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.28.1
                    @Override // org.telegram.p029ui.WrappedResourceProvider
                    public void appendColors() {
                        this.sparseIntArray.append(Theme.key_dialogBackground, -14737633);
                        this.sparseIntArray.append(Theme.key_windowBackgroundGray, -13421773);
                    }
                };
            }

            @Override // org.telegram.p029ui.ActionBar.BaseFragment
            public boolean presentFragment(BaseFragment baseFragment) {
                StoryRecorder.this.openPremium();
                return false;
            }
        }, this.activity, storyLimit.getLimitReachedType(), this.currentAccount, null) { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.29
            {
                this.storiesCount = StoryRecorder.this.getCount();
            }
        };
        limitReachedBottomSheet.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda8
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                this.f$0.lambda$showLimitReachedSheet$111(z, dialogInterface);
            }
        });
        this.previewView.updatePauseReason(7, true);
        this.shownLimitReached = true;
        limitReachedBottomSheet.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showLimitReachedSheet$111(boolean z, DialogInterface dialogInterface) {
        this.shownLimitReached = false;
        this.previewView.updatePauseReason(7, true);
        if (z) {
            close(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkBackgroundVisibility() {
        boolean z = this.dismissProgress != 0.0f || this.openProgress < 1.0f || this.forceBackgroundVisible;
        if (z == this.isBackgroundVisible) {
            return;
        }
        Activity activity = this.activity;
        if (activity instanceof LaunchActivity) {
            ((LaunchActivity) activity).drawerLayoutContainer.setAllowDrawContent(z);
        }
        this.isBackgroundVisible = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openPremium() {
        PreviewView previewView = this.previewView;
        if (previewView != null) {
            previewView.updatePauseReason(4, true);
        }
        CaptionStory captionStory = this.captionEdit;
        if (captionStory != null) {
            captionStory.hidePeriodPopup();
        }
        PremiumFeatureBottomSheet premiumFeatureBottomSheet = new PremiumFeatureBottomSheet(new BaseFragment() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.30
            @Override // org.telegram.p029ui.ActionBar.BaseFragment
            public boolean isLightStatusBar() {
                return false;
            }

            {
                this.currentAccount = StoryRecorder.this.currentAccount;
            }

            @Override // org.telegram.p029ui.ActionBar.BaseFragment
            public Dialog showDialog(Dialog dialog) {
                dialog.show();
                return dialog;
            }

            @Override // org.telegram.p029ui.ActionBar.BaseFragment
            public Activity getParentActivity() {
                return StoryRecorder.this.activity;
            }

            @Override // org.telegram.p029ui.ActionBar.BaseFragment
            public Theme.ResourcesProvider getResourceProvider() {
                return new WrappedResourceProvider(StoryRecorder.this.resourcesProvider) { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.30.1
                    @Override // org.telegram.p029ui.WrappedResourceProvider
                    public void appendColors() {
                        this.sparseIntArray.append(Theme.key_dialogBackground, -14803426);
                        this.sparseIntArray.append(Theme.key_windowBackgroundGray, -16777216);
                    }
                };
            }
        }, 14, false);
        premiumFeatureBottomSheet.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda100
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                this.f$0.lambda$openPremium$112(dialogInterface);
            }
        });
        premiumFeatureBottomSheet.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openPremium$112(DialogInterface dialogInterface) {
        PreviewView previewView = this.previewView;
        if (previewView != null) {
            previewView.updatePauseReason(4, false);
        }
    }

    private CharSequence premiumText(String str) {
        return AndroidUtilities.replaceSingleTag(str, Theme.key_chat_messageLinkIn, 0, new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda88
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.openPremium();
            }
        }, this.resourcesProvider);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showPremiumPeriodBulletin(int i) {
        int i2 = i / 3600;
        Bulletin.BulletinWindow.BulletinWindowLayout bulletinWindowLayoutMake = Bulletin.BulletinWindow.make(this.activity, new Bulletin.Delegate() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.31
            @Override // org.telegram.ui.Components.Bulletin.Delegate
            public /* synthetic */ boolean allowLayoutChanges() {
                return Bulletin.Delegate.CC.$default$allowLayoutChanges(this);
            }

            @Override // org.telegram.ui.Components.Bulletin.Delegate
            public /* synthetic */ boolean bottomOffsetAnimated() {
                return Bulletin.Delegate.CC.$default$bottomOffsetAnimated(this);
            }

            @Override // org.telegram.ui.Components.Bulletin.Delegate
            public boolean clipWithGradient(int i3) {
                return true;
            }

            @Override // org.telegram.ui.Components.Bulletin.Delegate
            public /* synthetic */ int getBottomOffset(int i3) {
                return Bulletin.Delegate.CC.$default$getBottomOffset(this, i3);
            }

            @Override // org.telegram.ui.Components.Bulletin.Delegate
            public int getTopOffset(int i3) {
                return 0;
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
        });
        WindowManager.LayoutParams layout = bulletinWindowLayoutMake.getLayout();
        if (layout != null) {
            layout.height = -2;
            layout.width = this.containerView.getWidth();
            layout.y = (int) (this.containerView.getY() + AndroidUtilities.m1124dp(56.0f));
            bulletinWindowLayoutMake.updateLayout();
        }
        bulletinWindowLayoutMake.setTouchable(true);
        BulletinFactory.m1245of(bulletinWindowLayoutMake, this.resourcesProvider).createSimpleBulletin(C2888R.raw.fire_on, premiumText(LocaleController.formatPluralString("StoryPeriodPremium", i2, new Object[0])), 3).show(true);
    }

    public void setIconMuted(boolean z, boolean z2) {
        if (this.muteButtonDrawable == null) {
            RLottieDrawable rLottieDrawable = new RLottieDrawable(C2888R.raw.media_mute_unmute, "media_mute_unmute", AndroidUtilities.m1124dp(28.0f), AndroidUtilities.m1124dp(28.0f), true, null);
            this.muteButtonDrawable = rLottieDrawable;
            rLottieDrawable.multiplySpeed(1.5f);
        }
        this.muteButton.setAnimation(this.muteButtonDrawable);
        if (!z2) {
            this.muteButtonDrawable.setCurrentFrame(z ? 20 : 0, false);
            return;
        }
        if (z) {
            if (this.muteButtonDrawable.getCurrentFrame() > 20) {
                this.muteButtonDrawable.setCurrentFrame(0, false);
            }
            this.muteButtonDrawable.setCustomEndFrame(20);
            this.muteButtonDrawable.start();
            return;
        }
        if (this.muteButtonDrawable.getCurrentFrame() == 0 || this.muteButtonDrawable.getCurrentFrame() >= 43) {
            return;
        }
        this.muteButtonDrawable.setCustomEndFrame(43);
        this.muteButtonDrawable.start();
    }

    public StoryRecorder selectedPeerId(long j) {
        this.selectedDialogId = j;
        CaptionStory captionStory = this.captionEdit;
        if (captionStory != null) {
            captionStory.setDialogId(j);
        }
        return this;
    }

    public StoryRecorder canChangePeer(boolean z) {
        this.canChangePeer = z;
        return this;
    }

    public static CharSequence cameraBtnSpan(Context context) {
        SpannableString spannableString = new SpannableString("c");
        final Drawable drawableMutate = context.getResources().getDrawable(C2888R.drawable.story_camera).mutate();
        int iM1124dp = AndroidUtilities.m1124dp(35.0f);
        int i = -iM1124dp;
        drawableMutate.setBounds(i / 4, i, (iM1124dp / 4) * 3, 0);
        spannableString.setSpan(new ImageSpan(drawableMutate) { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.32
            @Override // android.text.style.DynamicDrawableSpan, android.text.style.ReplacementSpan
            public int getSize(Paint paint, CharSequence charSequence, int i2, int i3, Paint.FontMetricsInt fontMetricsInt) {
                return (super.getSize(paint, charSequence, i2, i3, fontMetricsInt) / 3) * 2;
            }

            @Override // android.text.style.DynamicDrawableSpan, android.text.style.ReplacementSpan
            public void draw(Canvas canvas, CharSequence charSequence, int i2, int i3, float f, int i4, int i5, int i6, Paint paint) {
                canvas.save();
                canvas.translate(0.0f, ((i6 - i4) / 2) + AndroidUtilities.m1124dp(1.0f));
                drawableMutate.setAlpha(paint.getAlpha());
                super.draw(canvas, charSequence, i2, i3, f, i4, i5, i6, paint);
                canvas.restore();
            }
        }, 0, 1, 33);
        return spannableString;
    }

    public ThanosEffect getThanosEffect() {
        if (!ThanosEffect.supports()) {
            return null;
        }
        if (this.thanosEffect == null) {
            WindowView windowView = this.windowView;
            ThanosEffect thanosEffect = new ThanosEffect(getContext(), new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda121
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$getThanosEffect$113();
                }
            });
            this.thanosEffect = thanosEffect;
            windowView.addView(thanosEffect);
        }
        return this.thanosEffect;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getThanosEffect$113() {
        ThanosEffect thanosEffect = this.thanosEffect;
        if (thanosEffect != null) {
            this.thanosEffect = null;
            this.windowView.removeView(thanosEffect);
        }
    }

    public ImageView getThemeButton() {
        if (this.themeButton == null) {
            RLottieDrawable rLottieDrawable = new RLottieDrawable(C2888R.raw.sun_outline, _UrlKt.FRAGMENT_ENCODE_SET + C2888R.raw.sun_outline, AndroidUtilities.m1124dp(28.0f), AndroidUtilities.m1124dp(28.0f), true, null);
            this.themeButtonDrawable = rLottieDrawable;
            rLottieDrawable.setPlayInDirectionOfCustomEndFrame(true);
            StoryEntry storyEntry = this.outputEntry;
            if (storyEntry == null || !storyEntry.isDark) {
                this.themeButtonDrawable.setCustomEndFrame(0);
                this.themeButtonDrawable.setCurrentFrame(0);
            } else {
                this.themeButtonDrawable.setCurrentFrame(35);
                this.themeButtonDrawable.setCustomEndFrame(36);
            }
            this.themeButtonDrawable.beginApplyLayerColors();
            int color = Theme.getColor(Theme.key_chats_menuName, this.resourcesProvider);
            this.themeButtonDrawable.setLayerColor("Sunny.**", color);
            this.themeButtonDrawable.setLayerColor("Path 6.**", color);
            this.themeButtonDrawable.setLayerColor("Path.**", color);
            this.themeButtonDrawable.setLayerColor("Path 5.**", color);
            this.themeButtonDrawable.commitApplyLayerColors();
            ImageView imageView = new ImageView(getContext());
            this.themeButton = imageView;
            imageView.setScaleType(ImageView.ScaleType.CENTER);
            this.themeButton.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.MULTIPLY));
            this.themeButton.setBackground(Theme.createSelectorDrawable(553648127));
            this.themeButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda102
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$getThemeButton$114(view);
                }
            });
            this.themeButton.setVisibility(8);
            this.themeButton.setImageDrawable(this.themeButtonDrawable);
            this.themeButton.setAlpha(0.0f);
            this.actionBarButtons.addView(this.themeButton, 0, LayoutHelper.createLinear(46, 56, 53));
        }
        return this.themeButton;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getThemeButton$114(View view) {
        toggleTheme();
    }

    public void updateThemeButtonDrawable(boolean z) {
        RLottieDrawable rLottieDrawable = this.themeButtonDrawable;
        if (rLottieDrawable != null) {
            int framesCount = 0;
            if (z) {
                StoryEntry storyEntry = this.outputEntry;
                if (storyEntry != null && storyEntry.isDark) {
                    framesCount = rLottieDrawable.getFramesCount();
                }
                rLottieDrawable.setCustomEndFrame(framesCount);
                RLottieDrawable rLottieDrawable2 = this.themeButtonDrawable;
                if (rLottieDrawable2 != null) {
                    rLottieDrawable2.start();
                    return;
                }
                return;
            }
            StoryEntry storyEntry2 = this.outputEntry;
            int framesCount2 = (storyEntry2 == null || !storyEntry2.isDark) ? 0 : rLottieDrawable.getFramesCount() - 1;
            this.themeButtonDrawable.setCurrentFrame(framesCount2, false, true);
            this.themeButtonDrawable.setCustomEndFrame(framesCount2);
            ImageView imageView = this.themeButton;
            if (imageView != null) {
                imageView.invalidate();
            }
        }
    }

    public void toggleTheme() {
        ValueAnimator valueAnimator;
        if (this.outputEntry == null || this.changeDayNightView != null || this.themeButton == null || ((valueAnimator = this.changeDayNightViewAnimator) != null && valueAnimator.isRunning())) {
            return;
        }
        final boolean z = this.outputEntry.isDark;
        final Bitmap bitmapCreateBitmap = Bitmap.createBitmap(this.windowView.getWidth(), this.windowView.getHeight(), Bitmap.Config.ARGB_8888);
        final Canvas canvas = new Canvas(bitmapCreateBitmap);
        this.themeButton.setAlpha(0.0f);
        PreviewView previewView = this.previewView;
        if (previewView != null) {
            previewView.drawForThemeToggle = true;
        }
        PaintView paintView = this.paintView;
        if (paintView != null) {
            paintView.drawForThemeToggle = true;
        }
        this.windowView.draw(canvas);
        PreviewView previewView2 = this.previewView;
        if (previewView2 != null) {
            previewView2.drawForThemeToggle = false;
        }
        PaintView paintView2 = this.paintView;
        if (paintView2 != null) {
            paintView2.drawForThemeToggle = false;
        }
        this.themeButton.setAlpha(1.0f);
        final Paint paint = new Paint(1);
        paint.setColor(-16777216);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        final Paint paint2 = new Paint(1);
        paint2.setFilterBitmap(true);
        int[] iArr = new int[2];
        this.themeButton.getLocationInWindow(iArr);
        final float f = iArr[0];
        final float f2 = iArr[1];
        final float measuredWidth = f + (this.themeButton.getMeasuredWidth() / 2.0f);
        final float measuredHeight = f2 + (this.themeButton.getMeasuredHeight() / 2.0f);
        final float fMax = Math.max(bitmapCreateBitmap.getHeight(), bitmapCreateBitmap.getWidth()) + AndroidUtilities.navigationBarHeight;
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        paint2.setShader(new BitmapShader(bitmapCreateBitmap, tileMode, tileMode));
        View view = new View(getContext()) { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.33
            @Override // android.view.View
            protected void onDraw(Canvas canvas2) {
                super.onDraw(canvas2);
                if (z) {
                    if (StoryRecorder.this.changeDayNightViewProgress > 0.0f) {
                        canvas.drawCircle(measuredWidth, measuredHeight, fMax * StoryRecorder.this.changeDayNightViewProgress, paint);
                    }
                    canvas2.drawBitmap(bitmapCreateBitmap, 0.0f, 0.0f, paint2);
                } else {
                    canvas2.drawCircle(measuredWidth, measuredHeight, fMax * (1.0f - StoryRecorder.this.changeDayNightViewProgress), paint2);
                }
                canvas2.save();
                canvas2.translate(f, f2);
                StoryRecorder.this.themeButton.draw(canvas2);
                canvas2.restore();
            }
        };
        this.changeDayNightView = view;
        view.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda108
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                return StoryRecorder.$r8$lambda$ryb6KzN2Wt8tlD9p1N59RPHD9Ek(view2, motionEvent);
            }
        });
        this.changeDayNightViewProgress = 0.0f;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.changeDayNightViewAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.34
            boolean changedNavigationBarColor = false;

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                StoryRecorder.this.changeDayNightViewProgress = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                if (StoryRecorder.this.changeDayNightView != null) {
                    StoryRecorder.this.changeDayNightView.invalidate();
                }
                if (this.changedNavigationBarColor || StoryRecorder.this.changeDayNightViewProgress <= 0.5f) {
                    return;
                }
                this.changedNavigationBarColor = true;
            }
        });
        this.changeDayNightViewAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.35
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (StoryRecorder.this.changeDayNightView != null) {
                    if (StoryRecorder.this.changeDayNightView.getParent() != null) {
                        ((ViewGroup) StoryRecorder.this.changeDayNightView.getParent()).removeView(StoryRecorder.this.changeDayNightView);
                    }
                    StoryRecorder.this.changeDayNightView = null;
                }
                StoryRecorder.this.changeDayNightViewAnimator = null;
                super.onAnimationEnd(animator);
            }
        });
        this.changeDayNightViewAnimator.setStartDelay(80L);
        this.changeDayNightViewAnimator.setDuration(z ? 320L : 450L);
        this.changeDayNightViewAnimator.setInterpolator(z ? CubicBezierInterpolator.EASE_IN : CubicBezierInterpolator.EASE_OUT_QUINT);
        this.changeDayNightViewAnimator.start();
        this.windowView.addView(this.changeDayNightView, new ViewGroup.LayoutParams(-1, -1));
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder$$ExternalSyntheticLambda109
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$toggleTheme$116();
            }
        });
    }

    public static /* synthetic */ boolean $r8$lambda$ryb6KzN2Wt8tlD9p1N59RPHD9Ek(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toggleTheme$116() {
        StoryEntry storyEntry = this.outputEntry;
        if (storyEntry == null) {
            return;
        }
        storyEntry.isDark = !storyEntry.isDark;
        PreviewView previewView = this.previewView;
        if (previewView != null) {
            previewView.setupWallpaper(storyEntry, false);
        }
        PaintView paintView = this.paintView;
        if (paintView != null && paintView.entitiesView != null) {
            for (int i = 0; i < this.paintView.entitiesView.getChildCount(); i++) {
                View childAt = this.paintView.entitiesView.getChildAt(i);
                if (childAt instanceof MessageEntityView) {
                    ((MessageEntityView) childAt).setupTheme(this.outputEntry);
                }
            }
        }
        updateThemeButtonDrawable(true);
    }

    public void setActionBarButtonVisible(final View view, final boolean z, boolean z2) {
        if (view == null) {
            return;
        }
        if (z2) {
            view.setVisibility(0);
            view.animate().alpha(z ? 1.0f : 0.0f).setUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.37
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    StoryRecorder.this.updateActionBarButtonsOffsets();
                }
            }).setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.36
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    StoryRecorder.this.updateActionBarButtonsOffsets();
                    if (z) {
                        return;
                    }
                    view.setVisibility(8);
                }
            }).setDuration(320L).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).start();
        } else {
            view.animate().cancel();
            view.setVisibility(z ? 0 : 8);
            view.setAlpha(z ? 1.0f : 0.0f);
            updateActionBarButtonsOffsets();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean inCheck() {
        return !this.animatedRecording && (this.collageLayoutView.hasLayout() ? this.collageLayoutView.getFilledProgress() : 0.0f) >= 1.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateActionBarButtons(boolean z) {
        DualCameraView dualCameraView;
        boolean z2 = false;
        showVideoTimer(this.currentPage == 0 && this.mode == 1 && !this.collageListView.isVisible() && !inCheck(), z);
        this.collageButton.setSelected(this.collageLayoutView.hasLayout());
        FlashViews.ImageViewInvertable imageViewInvertable = this.backButton;
        CollageLayoutButton.CollageLayoutListView collageLayoutListView = this.collageListView;
        setActionBarButtonVisible(imageViewInvertable, collageLayoutListView == null || !collageLayoutListView.isVisible(), z);
        setActionBarButtonVisible(this.flashButton, (this.animatedRecording || this.mode == -1 || this.currentPage != 0 || this.flashButtonMode == null || this.collageListView.isVisible() || inCheck()) ? false : true, z);
        setActionBarButtonVisible(this.dualButton, (this.animatedRecording || this.mode == -1 || this.currentPage != 0 || (dualCameraView = this.cameraView) == null || !dualCameraView.dualAvailable() || this.collageListView.isVisible() || this.collageLayoutView.hasLayout()) ? false : true, z);
        setActionBarButtonVisible(this.collageButton, (this.animatedRecording || this.mode == -1 || this.currentPage != 0 || this.collageListView.isVisible()) ? false : true, z);
        setActionBarButtonVisible(this.collageRemoveButton, this.collageListView.isVisible(), z);
        this.recordControl.setCollageProgress(this.collageLayoutView.hasLayout() ? this.collageLayoutView.getFilledProgress() : 0.0f, z);
        this.removeCollageHint.show(this.collageListView.isVisible());
        animateRecording(this.animatedRecording, z);
        AndroidUtilities.updateViewShow(this.liveSettingsButton, this.mode == -1 && this.currentPage == 0);
        FlashViews.ImageViewInvertable imageViewInvertable2 = this.rotateButton;
        if (this.mode == -1 && this.currentPage == 0) {
            z2 = true;
        }
        AndroidUtilities.updateViewShow(imageViewInvertable2, z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateActionBarButtonsOffsets() {
        this.collageRemoveButton.setTranslationX(-0.0f);
        float fM1124dp = (AndroidUtilities.m1124dp(46.0f) * this.collageRemoveButton.getAlpha()) + 0.0f;
        this.dualButton.setTranslationX(-fM1124dp);
        float fM1124dp2 = fM1124dp + (AndroidUtilities.m1124dp(46.0f) * this.dualButton.getAlpha());
        this.collageButton.setTranslationX(-fM1124dp2);
        float fM1124dp3 = fM1124dp2 + (AndroidUtilities.m1124dp(46.0f) * this.collageButton.getAlpha());
        this.flashButton.setTranslationX(-fM1124dp3);
        float fM1124dp4 = fM1124dp3 + (AndroidUtilities.m1124dp(46.0f) * this.flashButton.getAlpha());
        this.backButton.setTranslationX(0.0f);
        this.collageListView.setBounds((AndroidUtilities.m1124dp(46.0f) * this.backButton.getAlpha()) + 0.0f + AndroidUtilities.m1124dp(8.0f), fM1124dp4 + AndroidUtilities.m1124dp(8.0f));
    }

    public void createCropEditor() {
        if (this.cropEditor != null) {
            return;
        }
        CropEditor cropEditor = new CropEditor(getContext(), this.previewView, this.resourcesProvider) { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.38
            @Override // org.telegram.p029ui.Stories.recorder.CropEditor
            protected void close() {
                StoryRecorder.this.switchToEditMode(-1, true);
            }
        };
        this.cropEditor = cropEditor;
        this.windowView.addView(cropEditor.contentView);
        this.windowView.addView(this.cropEditor);
    }

    public void createCropInlineEditor() {
        if (this.cropInlineEditor != null) {
            return;
        }
        CropInlineEditor cropInlineEditor = new CropInlineEditor(getContext(), this.previewView, this.resourcesProvider) { // from class: org.telegram.ui.Stories.recorder.StoryRecorder.39
            @Override // org.telegram.p029ui.Stories.recorder.CropInlineEditor
            protected void close() {
                StoryRecorder.this.switchToEditMode(-1, true);
            }
        };
        this.cropInlineEditor = cropInlineEditor;
        this.windowView.addView(cropInlineEditor.contentView);
        this.windowView.addView(this.cropInlineEditor);
    }
}
