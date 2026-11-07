package org.telegram.ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.transition.TransitionManager;
import android.transition.TransitionSet;
import android.transition.TransitionValues;
import android.transition.Visibility;
import android.util.Pair;
import android.util.Property;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.view.animation.Interpolator;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.collection.LongSparseArray;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.exteragram.messenger.pillstack.ui.pills.crypto.RatePill$$ExternalSyntheticLambda1;
import com.exteragram.messenger.utils.AppUtils;
import com.exteragram.messenger.utils.chats.ExteraFileHandler;
import com.exteragram.messenger.utils.text.LocaleUtils;
import com.google.android.gms.cast.MediaError;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import okhttp3.internal.url._UrlKt;
import org.mvel2.asm.Opcodes;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.AnimationNotificationsLocker;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.DispatchQueue;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SavedMessagesController;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.messenger.utils.tlutils.TlUtils;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_account;
import org.telegram.tgnet.tl.TL_bots;
import org.telegram.tgnet.tl.TL_stories;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.ActionBarMenu;
import org.telegram.ui.ActionBar.ActionBarMenuItem;
import org.telegram.ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.ui.ActionBar.ActionBarPopupWindow;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BackDrawable;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.BottomSheet;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.ActionBar.ThemeDescription;
import org.telegram.ui.Adapters.SearchAdapterHelper;
import org.telegram.ui.CalendarActivity;
import org.telegram.ui.Cells.ChatActionCell;
import org.telegram.ui.Cells.ChatMessageCell;
import org.telegram.ui.Cells.CheckBoxCell;
import org.telegram.ui.Cells.ContextLinkCell;
import org.telegram.ui.Cells.DialogCell;
import org.telegram.ui.Cells.GraySectionCell;
import org.telegram.ui.Cells.LoadingCell;
import org.telegram.ui.Cells.ManageChatUserCell;
import org.telegram.ui.Cells.ProfileSearchCell;
import org.telegram.ui.Cells.SharedAudioCell;
import org.telegram.ui.Cells.SharedDocumentCell;
import org.telegram.ui.Cells.SharedLinkCell;
import org.telegram.ui.Cells.SharedMediaSectionCell;
import org.telegram.ui.Cells.SharedPhotoVideoCell;
import org.telegram.ui.Cells.SharedPhotoVideoCell2;
import org.telegram.ui.Cells.UserCell;
import org.telegram.ui.ChatActivity;
import org.telegram.ui.ChatActivityContainer;
import org.telegram.ui.Components.Forum.ForumUtilities;
import org.telegram.ui.Components.FragmentContextView;
import org.telegram.ui.Components.LinkSpanDrawable;
import org.telegram.ui.Components.Premium.LimitReachedBottomSheet;
import org.telegram.ui.Components.Reactions.ReactionsLayoutInBubble;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.ScrollSlidingTextTabStrip;
import org.telegram.ui.Components.SharedMediaLayout;
import org.telegram.ui.Components.SizeNotifierFrameLayout;
import org.telegram.ui.Components.blur3.BlurredBackgroundDrawableViewFactory;
import org.telegram.ui.Components.blur3.ViewGroupPartRenderer;
import org.telegram.ui.Components.blur3.capture.IBlur3Capture;
import org.telegram.ui.Components.blur3.drawable.BlurredBackgroundDrawable;
import org.telegram.ui.Components.blur3.drawable.color.impl.BlurredBackgroundProviderImpl;
import org.telegram.ui.Components.blur3.source.BlurredBackgroundSourceColor;
import org.telegram.ui.Components.spoilers.SpoilersTextView;
import org.telegram.ui.ContentPreviewViewer;
import org.telegram.ui.DialogsActivity;
import org.telegram.ui.Gifts.ProfileGiftsContainer;
import org.telegram.ui.LaunchActivity;
import org.telegram.ui.LocationActivity;
import org.telegram.ui.PhotoViewer;
import org.telegram.ui.PremiumPreviewFragment;
import org.telegram.ui.ProfileActivity;
import org.telegram.ui.ProfileStoriesCollectionTabs;
import org.telegram.ui.SelectStoriesBottomSheet;
import org.telegram.ui.Stars.StarsController;
import org.telegram.ui.Stories.StoriesController;
import org.telegram.ui.Stories.StoriesListPlaceProvider;
import org.telegram.ui.Stories.StoryViewer;
import org.telegram.ui.Stories.UserListPoller;
import org.telegram.ui.Stories.ViewsForPeerStoriesRequester;
import org.telegram.ui.Stories.bots.BotPreviewsEditContainer;
import org.telegram.ui.Stories.recorder.ButtonWithCounterView;
import org.telegram.ui.Stories.recorder.PreviewView;
import org.telegram.ui.Stories.recorder.StoryRecorder;
import org.telegram.ui.ThemeActivity;
import org.telegram.ui.TopicsFragment;

/* JADX INFO: loaded from: classes7.dex */
public abstract class SharedMediaLayout extends FrameLayout implements NotificationCenter.NotificationCenterDelegate, DialogCell.DialogCellDelegate {
    private ActionBar actionBar;
    private AnimatorSet actionModeAnimation;
    private LinearLayout actionModeLayout;
    private ArrayList<View> actionModeViews;
    private SpannableStringBuilder addPostButton;
    private float additionalFloatingTranslation;
    private boolean allowStoriesSingleColumn;
    private int animateToColumnsCount;
    private boolean animatingForward;
    private boolean animatingToOptions;
    private StoriesAdapter animationSupportingArchivedStoriesAdapter;
    private SharedPhotoVideoAdapter animationSupportingPhotoVideoAdapter;
    private StoriesAdapter animationSupportingStoriesAdapter;
    private StoriesAdapter archivedStoriesAdapter;
    private SharedDocumentsAdapter audioAdapter;
    private ArrayList<SharedAudioCell> audioCache;
    private ArrayList<SharedAudioCell> audioCellCache;
    private MediaSearchAdapter audioSearchAdapter;
    private boolean backAnimation;
    private BackDrawable backDrawable;
    private Paint backgroundPaint;
    private BotPreviewsEditContainer botPreviewsContainer;
    private ArrayList<SharedPhotoVideoCell> cache;
    private int cantDeleteMessagesCount;
    private ArrayList<SharedPhotoVideoCell> cellCache;
    private int changeColumnsTab;
    private boolean changeTypeAnimation;
    private ChannelRecommendationsAdapter channelRecommendationsAdapter;
    private ChatUsersAdapter chatUsersAdapter;
    private ImageView closeButton;
    private CommonGroupsAdapter commonGroupsAdapter;
    final Delegate delegate;
    private ActionBarMenuItem deleteItem;
    private long dialog_id;
    private boolean disableScrolling;
    private SharedDocumentsAdapter documentsAdapter;
    private MediaSearchAdapter documentsSearchAdapter;
    private int firstTab;
    private AnimatorSet floatingDateAnimation;
    private ChatActionCell floatingDateView;
    private ActionBarMenuItem forwardItem;
    private FragmentContextView fragmentContextView;
    private FrameLayout fragmentContextViewWrapper;
    private HintView fwdRestrictedHint;
    private GifAdapter gifAdapter;
    public ProfileGiftsContainer giftsContainer;
    private long giftsLastHash;
    FlickerLoadingView globalGradientView;
    private ActionBarMenuItem gotoItem;
    private GroupUsersSearchAdapter groupUsersSearchAdapter;
    private int[] hasMedia;
    private Runnable hideFloatingDateRunnable;
    public final IBlur3Capture iBlur3Capture;
    private final BlurredBackgroundSourceColor iBlur3SourceColor;
    private boolean ignoreSearchCollapse;
    private TLRPC.ChatFull info;
    private int initialTab;
    protected boolean isActionModeShowed;
    boolean isInPinchToZoomTouchMode;
    boolean isPinnedToTop;
    Runnable jumpToRunnable;
    private int lastMainTabId;
    int lastMeasuredTopPadding;
    private int lastVisibleHeight;
    private SharedLinksAdapter linksAdapter;
    private MediaSearchAdapter linksSearchAdapter;
    private int maximumVelocity;
    boolean maybePinchToZoomTouchMode;
    boolean maybePinchToZoomTouchMode2;
    private boolean maybeStartTracking;
    private int[] mediaColumnsCount;
    private MediaPage[] mediaPages;
    private long mergeDialogId;
    SparseArray<Float> messageAlphaEnter;
    AnimationNotificationsLocker notificationsLocker;
    private final NotificationCenter.ObserversGroup observersGroup;
    private float optionsAlpha;
    private RLottieImageView optionsSearchImageView;
    private int pagesPaddingBottom;
    private SharedPhotoVideoAdapter photoVideoAdapter;
    private boolean photoVideoChangeColumnsAnimation;
    private float photoVideoChangeColumnsProgress;
    public ImageView photoVideoOptionsItem;
    private ActionBarMenuItem pinItem;
    int pinchCenterOffset;
    int pinchCenterPosition;
    int pinchCenterX;
    int pinchCenterY;
    float pinchScale;
    boolean pinchScaleUp;
    float pinchStartDistance;
    private Drawable pinnedHeaderShadowDrawable;
    private int pointerId1;
    private int pointerId2;
    private PollAdapter pollAdapter;
    private BaseFragment profileActivity;
    private PhotoViewer.PhotoViewerProvider provider;
    Rect rect;
    private Theme.ResourcesProvider resourcesProvider;
    public TextView saveItem;
    private SavedDialogsAdapter savedDialogsAdapter;
    private ChatActivityContainer savedMessagesContainer;
    private SavedMessagesSearchAdapter savedMessagesSearchAdapter;
    public ScrollSlidingTextTabStripInner scrollSlidingTextTabStrip;
    private boolean scrolling;
    public boolean scrollingByUser;
    private float searchAlpha;
    private ActionBarMenuItem searchItem;
    public ActionBarMenuItem searchItemIcon;
    private int searchItemState;
    public StoriesController.StoriesList searchStoriesList;
    public SearchTagsList searchTagsList;
    private boolean searchWas;
    private boolean searching;
    private ReactionsLayoutInBubble.VisibleReaction searchingReaction;
    private SparseArray<MessageObject>[] selectedFiles;
    private NumberTextView selectedMessagesCountTextView;
    SharedLinkCell.SharedLinkCellDelegate sharedLinkCellDelegate;
    private SharedMediaData[] sharedMediaData;
    private SharedMediaPreloader sharedMediaPreloader;
    private float shiftDp;
    private boolean startedTracking;
    private int startedTrackingPointerId;
    private int startedTrackingX;
    private int startedTrackingY;
    private StoriesAdapter storiesAdapter;
    private boolean storiesColumnsCountSet;
    public ProfileStoriesCollectionTabs storiesContainer;
    private ItemTouchHelper storiesReorder;
    private final HashMap<Integer, StoryAlbumData> storyAlbumsById;
    private final HashMap<Integer, Integer> storyAlbumsByTabType;
    private float subTabsVisibilityFactor;
    private int tabIndexCounter;
    private AnimatorSet tabsAnimation;
    private boolean tabsAnimationInProgress;
    private int topLayoutPadding;
    int topPadding;
    private DialogsActivityTopPanelLayout topPanelLayout;
    private long topicId;
    private ActionBarMenuItem unpinItem;
    private TLRPC.UserFull userInfo;
    private VelocityTracker velocityTracker;
    private final int viewType;
    private SharedDocumentsAdapter voiceAdapter;
    private boolean wasReordering;
    private static final int[] supportedFastScrollTypes = {0, 1, 2, 4};
    private static final Interpolator interpolator = new Interpolator() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda0
        @Override // android.animation.TimeInterpolator
        public final float getInterpolation(float f) {
            return SharedMediaLayout.$r8$lambda$pgrLitFkYqSDqA1BbWpDVroXHNI(f);
        }
    };

    public interface Delegate {
        boolean canSearchMembers();

        TLRPC.Chat getCurrentChat();

        RecyclerListView getListView();

        boolean isFragmentOpened();

        boolean onMemberClick(TLRPC.ChatParticipant chatParticipant, boolean z, boolean z2, View view);

        void scrollToSharedMedia();

        void updateSelectedMediaTabText();
    }

    public interface SharedMediaPreloaderDelegate {
        void mediaCountUpdated();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getStoryAlbumType(int i) {
        return (i & 65535) | 65536;
    }

    public static boolean isStoryAlbumPageType(int i) {
        return (i & Opcodes.V_PREVIEW) == 65536;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showFloatingDateView() {
    }

    public boolean addActionButtons() {
        return true;
    }

    @Override // org.telegram.ui.Cells.DialogCell.DialogCellDelegate
    public boolean canClickButtonInside() {
        return false;
    }

    public boolean canShowSearchItem() {
        return true;
    }

    public boolean customTabs() {
        return false;
    }

    public int getInitialTab() {
        return 0;
    }

    public TL_stories.MediaArea getStoriesArea() {
        return null;
    }

    public String getStoriesHashtag() {
        return null;
    }

    public String getStoriesHashtagUsername() {
        return null;
    }

    public boolean includeSavedDialogs() {
        return false;
    }

    public boolean includeStories() {
        return true;
    }

    public void invalidateBlur() {
    }

    public boolean isArchivedOnlyStoriesView() {
        return false;
    }

    public boolean isSelf() {
        return false;
    }

    public boolean isStoriesView() {
        return false;
    }

    public int mediaPageTopMargin() {
        return 0;
    }

    public void onActionModeSelectedUpdate(SparseArray<MessageObject> sparseArray) {
    }

    public void onBottomButtonVisibilityChange() {
    }

    @Override // org.telegram.ui.Cells.DialogCell.DialogCellDelegate
    public void onButtonClicked(DialogCell dialogCell) {
    }

    @Override // org.telegram.ui.Cells.DialogCell.DialogCellDelegate
    public void onButtonLongPress(DialogCell dialogCell) {
    }

    public boolean onMemberClick(TLRPC.ChatParticipant chatParticipant, boolean z, View view) {
        return false;
    }

    public void onSearchStateChanged(boolean z) {
    }

    public void onTabScroll(boolean z) {
    }

    @Override // org.telegram.ui.Cells.DialogCell.DialogCellDelegate
    public void openHiddenStories() {
    }

    public int overrideColumnsCount() {
        return -1;
    }

    public int processColor(int i) {
        return i;
    }

    @Override // org.telegram.ui.Cells.DialogCell.DialogCellDelegate
    public void showChatPreview(DialogCell dialogCell) {
    }

    public static boolean isAnyStoryPageType(int i) {
        return i == 8 || i == 9 || isStoryAlbumPageType(i);
    }

    public boolean isInFastScroll() {
        MediaPage mediaPage = this.mediaPages[0];
        return (mediaPage == null || mediaPage.listView.getFastScroll() == null || !this.mediaPages[0].listView.getFastScroll().isPressed()) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean postNotifyDataSetChangedSafely(final RecyclerView.Adapter<?> adapter) {
        if (adapter == null) {
            return false;
        }
        InternalListView internalListView = null;
        for (MediaPage mediaPage : this.mediaPages) {
            if (mediaPage != null) {
                if (mediaPage.listView != null && mediaPage.listView.getAdapter() == adapter && mediaPage.listView.isComputingLayout()) {
                    internalListView = mediaPage.listView;
                }
                if (mediaPage.animationSupportingListView != null && mediaPage.animationSupportingListView.getAdapter() == adapter && mediaPage.animationSupportingListView.isComputingLayout()) {
                    internalListView = mediaPage.animationSupportingListView;
                }
            }
        }
        if (internalListView == null) {
            return false;
        }
        internalListView.post(new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda37
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$postNotifyDataSetChangedSafely$0(adapter);
            }
        });
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: notifyDataSetChangedSafely, reason: merged with bridge method [inline-methods] */
    public void lambda$postNotifyDataSetChangedSafely$0(RecyclerView.Adapter<?> adapter) {
        if (adapter == null || postNotifyDataSetChangedSafely(adapter)) {
            return;
        }
        adapter.notifyDataSetChanged();
    }

    public boolean dispatchFastScrollEvent(MotionEvent motionEvent) {
        View view = (View) getParent();
        motionEvent.offsetLocation(((-view.getX()) - getX()) - this.mediaPages[0].listView.getFastScroll().getX(), (((-view.getY()) - getY()) - this.mediaPages[0].getY()) - this.mediaPages[0].listView.getFastScroll().getY());
        return this.mediaPages[0].listView.getFastScroll().dispatchTouchEvent(motionEvent);
    }

    public boolean checkPinchToZoom(MotionEvent motionEvent) {
        RecyclerView.Adapter adapterStoryAlbums_getStoriesAdapterByTabType;
        BotPreviewsEditContainer botPreviewsEditContainer;
        int i = this.mediaPages[0].selectedType;
        if (i == 13 && (botPreviewsEditContainer = this.botPreviewsContainer) != null) {
            return botPreviewsEditContainer.checkPinchToZoom(motionEvent);
        }
        if ((i != 0 && !isAnyStoryPageType(i)) || getParent() == null) {
            return false;
        }
        if (this.photoVideoChangeColumnsAnimation && !this.isInPinchToZoomTouchMode) {
            return true;
        }
        if (motionEvent.getActionMasked() == 0 || motionEvent.getActionMasked() == 5) {
            if (this.maybePinchToZoomTouchMode && !this.isInPinchToZoomTouchMode && motionEvent.getPointerCount() == 2) {
                this.pinchStartDistance = (float) Math.hypot(motionEvent.getX(1) - motionEvent.getX(0), motionEvent.getY(1) - motionEvent.getY(0));
                this.pinchScale = 1.0f;
                this.pointerId1 = motionEvent.getPointerId(0);
                this.pointerId2 = motionEvent.getPointerId(1);
                this.mediaPages[0].listView.cancelClickRunnables(false);
                this.mediaPages[0].listView.cancelLongPress();
                this.mediaPages[0].listView.dispatchTouchEvent(MotionEvent.obtain(0L, 0L, 3, 0.0f, 0.0f, 0));
                View view = (View) getParent();
                this.pinchCenterX = (int) (((((int) ((motionEvent.getX(0) + motionEvent.getX(1)) / 2.0f)) - view.getX()) - getX()) - this.mediaPages[0].getX());
                int y = (int) (((((int) ((motionEvent.getY(0) + motionEvent.getY(1)) / 2.0f)) - view.getY()) - getY()) - this.mediaPages[0].getY());
                this.pinchCenterY = y;
                selectPinchPosition(this.pinchCenterX, y);
                this.maybePinchToZoomTouchMode2 = true;
            }
            if (motionEvent.getActionMasked() == 0) {
                if (((motionEvent.getY() - ((View) getParent()).getY()) - getY()) - this.mediaPages[0].getY() > 0.0f) {
                    this.maybePinchToZoomTouchMode = true;
                }
            }
        } else if (motionEvent.getActionMasked() == 2 && (this.isInPinchToZoomTouchMode || this.maybePinchToZoomTouchMode2)) {
            int i2 = -1;
            int i3 = -1;
            for (int i4 = 0; i4 < motionEvent.getPointerCount(); i4++) {
                if (this.pointerId1 == motionEvent.getPointerId(i4)) {
                    i2 = i4;
                }
                if (this.pointerId2 == motionEvent.getPointerId(i4)) {
                    i3 = i4;
                }
            }
            if (i2 == -1 || i3 == -1) {
                this.maybePinchToZoomTouchMode = false;
                this.maybePinchToZoomTouchMode2 = false;
                this.isInPinchToZoomTouchMode = false;
                finishPinchToMediaColumnsCount();
                return false;
            }
            float fHypot = ((float) Math.hypot(motionEvent.getX(i3) - motionEvent.getX(i2), motionEvent.getY(i3) - motionEvent.getY(i2))) / this.pinchStartDistance;
            this.pinchScale = fHypot;
            if (!this.isInPinchToZoomTouchMode && (fHypot > 1.01f || fHypot < 0.99f)) {
                this.isInPinchToZoomTouchMode = true;
                boolean z = fHypot > 1.0f;
                this.pinchScaleUp = z;
                startPinchToMediaColumnsCount(z);
            }
            if (this.isInPinchToZoomTouchMode) {
                boolean z2 = this.pinchScaleUp;
                if ((z2 && this.pinchScale < 1.0f) || (!z2 && this.pinchScale > 1.0f)) {
                    this.photoVideoChangeColumnsProgress = 0.0f;
                } else {
                    float f = this.pinchScale;
                    this.photoVideoChangeColumnsProgress = Math.max(0.0f, Math.min(1.0f, z2 ? 1.0f - ((2.0f - f) / 1.0f) : (1.0f - f) / 0.5f));
                }
                float f2 = this.photoVideoChangeColumnsProgress;
                if (f2 == 1.0f || f2 == 0.0f) {
                    if (isAnyStoryPageType(this.changeColumnsTab)) {
                        adapterStoryAlbums_getStoriesAdapterByTabType = storyAlbums_getStoriesAdapterByTabType(this.changeColumnsTab);
                    } else {
                        adapterStoryAlbums_getStoriesAdapterByTabType = this.photoVideoAdapter;
                    }
                    if (this.photoVideoChangeColumnsProgress == 1.0f) {
                        int i5 = this.animateToColumnsCount;
                        int iCeil = (((int) Math.ceil(this.pinchCenterPosition / this.animateToColumnsCount)) * i5) + ((int) ((this.startedTrackingX / (this.mediaPages[0].listView.getMeasuredWidth() - ((int) (this.mediaPages[0].listView.getMeasuredWidth() / this.animateToColumnsCount)))) * (i5 - 1)));
                        if (iCeil >= adapterStoryAlbums_getStoriesAdapterByTabType.getItemCount()) {
                            iCeil = adapterStoryAlbums_getStoriesAdapterByTabType.getItemCount() - 1;
                        }
                        this.pinchCenterPosition = iCeil;
                    }
                    finishPinchToMediaColumnsCount();
                    if (this.photoVideoChangeColumnsProgress == 0.0f) {
                        this.pinchScaleUp = !this.pinchScaleUp;
                    }
                    startPinchToMediaColumnsCount(this.pinchScaleUp);
                    this.pinchStartDistance = (float) Math.hypot(motionEvent.getX(1) - motionEvent.getX(0), motionEvent.getY(1) - motionEvent.getY(0));
                }
                this.mediaPages[0].listView.invalidate();
                MediaPage mediaPage = this.mediaPages[0];
                if (mediaPage.fastScrollHintView != null) {
                    mediaPage.invalidate();
                }
            }
        } else if ((motionEvent.getActionMasked() == 1 || ((motionEvent.getActionMasked() == 6 && checkPointerIds(motionEvent)) || motionEvent.getActionMasked() == 3)) && this.isInPinchToZoomTouchMode) {
            this.maybePinchToZoomTouchMode2 = false;
            this.maybePinchToZoomTouchMode = false;
            this.isInPinchToZoomTouchMode = false;
            finishPinchToMediaColumnsCount();
        }
        return this.isInPinchToZoomTouchMode;
    }

    private void selectPinchPosition(int i, int i2) {
        this.pinchCenterPosition = -1;
        int i3 = i2 + this.mediaPages[0].listView.blurTopPadding;
        if (getY() != 0.0f && this.viewType == 1) {
            i3 = 0;
        }
        for (int i4 = 0; i4 < this.mediaPages[0].listView.getChildCount(); i4++) {
            View childAt = this.mediaPages[0].listView.getChildAt(i4);
            childAt.getHitRect(this.rect);
            if (this.rect.contains(i, i3)) {
                this.pinchCenterPosition = this.mediaPages[0].listView.getChildLayoutPosition(childAt);
                this.pinchCenterOffset = childAt.getTop();
            }
        }
        if (this.delegate.canSearchMembers() && this.pinchCenterPosition == -1) {
            this.pinchCenterPosition = (int) (this.mediaPages[0].layoutManager.findFirstVisibleItemPosition() + ((this.mediaColumnsCount[isAnyStoryPageType(this.mediaPages[0].selectedType) ? 1 : 0] - 1) * Math.min(1.0f, Math.max(i / this.mediaPages[0].listView.getMeasuredWidth(), 0.0f))));
            this.pinchCenterOffset = 0;
        }
    }

    private boolean checkPointerIds(MotionEvent motionEvent) {
        if (motionEvent.getPointerCount() < 2) {
            return false;
        }
        if (this.pointerId1 == motionEvent.getPointerId(0) && this.pointerId2 == motionEvent.getPointerId(1)) {
            return true;
        }
        return this.pointerId1 == motionEvent.getPointerId(1) && this.pointerId2 == motionEvent.getPointerId(0);
    }

    public boolean isSwipeBackEnabled() {
        if (canEditStories() && ((getClosestTab() == 8 || getClosestTab() == 13 || isStoryAlbumPageType(getClosestTab())) && isActionModeShown())) {
            return false;
        }
        ProfileGiftsContainer profileGiftsContainer = this.giftsContainer;
        if (profileGiftsContainer != null && profileGiftsContainer.isReordering()) {
            return false;
        }
        ProfileStoriesCollectionTabs profileStoriesCollectionTabs = this.storiesContainer;
        return ((profileStoriesCollectionTabs != null && profileStoriesCollectionTabs.isReordering()) || this.photoVideoChangeColumnsAnimation || this.tabsAnimationInProgress) ? false : true;
    }

    public int getPhotosVideosTypeFilter() {
        return this.sharedMediaData[0].filterType;
    }

    public boolean isPinnedToTop() {
        return this.isPinnedToTop;
    }

    public void setPinnedToTop(boolean z) {
        if (this.isPinnedToTop == z) {
            return;
        }
        this.isPinnedToTop = z;
        int i = 0;
        while (true) {
            MediaPage[] mediaPageArr = this.mediaPages;
            if (i >= mediaPageArr.length) {
                return;
            }
            updateFastScrollVisibility(mediaPageArr[i], true);
            i++;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void drawListForBlur(Canvas canvas, ArrayList<SizeNotifierFrameLayout.IViewWithInvalidateCallback> arrayList) {
        int i = 0;
        while (true) {
            MediaPage[] mediaPageArr = this.mediaPages;
            if (i >= mediaPageArr.length) {
                return;
            }
            MediaPage mediaPage = mediaPageArr[i];
            if (mediaPage != null && mediaPage.getVisibility() == 0) {
                for (int i2 = 0; i2 < this.mediaPages[i].listView.getChildCount(); i2++) {
                    View childAt = this.mediaPages[i].listView.getChildAt(i2);
                    if (childAt.getY() < this.mediaPages[i].listView.blurTopPadding + AndroidUtilities.dp(100.0f)) {
                        int iSave = canvas.save();
                        canvas.translate(this.mediaPages[i].getX() + childAt.getX(), getY() + this.mediaPages[i].getY() + this.mediaPages[i].listView.getY() + childAt.getY());
                        childAt.draw(canvas);
                        if (arrayList != null && (childAt instanceof SizeNotifierFrameLayout.IViewWithInvalidateCallback)) {
                            arrayList.add((SizeNotifierFrameLayout.IViewWithInvalidateCallback) childAt);
                        }
                        canvas.restoreToCount(iSave);
                    }
                }
            }
            i++;
        }
    }

    @Override // org.telegram.ui.Cells.DialogCell.DialogCellDelegate
    public void openStory(DialogCell dialogCell, Runnable runnable) {
        BaseFragment baseFragment = this.profileActivity;
        if (baseFragment != null && baseFragment.getMessagesController().getStoriesController().hasStories(dialogCell.getDialogId())) {
            this.profileActivity.getOrCreateStoryViewer().doOnAnimationReady(runnable);
            StoryViewer orCreateStoryViewer = this.profileActivity.getOrCreateStoryViewer();
            Context context = this.profileActivity.getContext();
            long dialogId = dialogCell.getDialogId();
            StoriesListPlaceProvider storiesListPlaceProviderOf = StoriesListPlaceProvider.of((RecyclerListView) dialogCell.getParent());
            BaseFragment baseFragment2 = this.profileActivity;
            orCreateStoryViewer.open(context, dialogId, storiesListPlaceProviderOf.addBottomClip(((baseFragment2 instanceof ProfileActivity) && ((ProfileActivity) baseFragment2).myProfile) ? AndroidUtilities.dp(68.0f) : 0));
        }
    }

    public static class MediaPage extends FrameLayout {
        private ClippingImageView animatingImageView;
        private GridLayoutManager animationSupportingLayoutManager;
        private InternalListView animationSupportingListView;
        private StickerEmptyView emptyView;
        public ObjectAnimator fastScrollAnimator;
        public boolean fastScrollEnabled;
        public Runnable fastScrollHideHintRunnable;
        public boolean fastScrollHinWasShown;
        public SharedMediaFastScrollTooltip fastScrollHintView;
        public boolean highlightAnimation;
        public int highlightMessageId;
        public float highlightProgress;
        private IBlur3Capture iBlur3Capture;
        private DefaultItemAnimator itemAnimator;
        public long lastCheckScrollTime;
        private ExtendedGridLayoutManager layoutManager;
        private InternalListView listView;
        private FlickerLoadingView progressView;
        private RecyclerAnimationScrollHelper scrollHelper;
        private RecyclerView.RecycledViewPool searchViewPool;
        public int selectedType;
        private RecyclerView.RecycledViewPool viewPool;

        public MediaPage(Context context) {
            super(context);
        }

        @Override // android.view.ViewGroup
        public boolean drawChild(Canvas canvas, View view, long j) {
            if (view == this.animationSupportingListView) {
                return true;
            }
            return super.drawChild(canvas, view, j);
        }

        @Override // android.view.ViewGroup, android.view.View
        public void dispatchDraw(Canvas canvas) {
            super.dispatchDraw(canvas);
            SharedMediaFastScrollTooltip sharedMediaFastScrollTooltip = this.fastScrollHintView;
            if (sharedMediaFastScrollTooltip == null || sharedMediaFastScrollTooltip.getVisibility() != 0) {
                return;
            }
            RecyclerListView.FastScroll fastScroll = this.listView.getFastScroll();
            if (fastScroll != null) {
                float scrollBarY = fastScroll.getScrollBarY() + AndroidUtilities.dp(36.0f);
                if (this.selectedType == 9) {
                    scrollBarY += AndroidUtilities.dp(64.0f);
                }
                int i = this.selectedType;
                if (i == 8 || SharedMediaLayout.isStoryAlbumPageType(i)) {
                    scrollBarY += AndroidUtilities.dp(42.0f);
                }
                float measuredWidth = (getMeasuredWidth() - this.fastScrollHintView.getMeasuredWidth()) - AndroidUtilities.dp(16.0f);
                this.fastScrollHintView.setPivotX(r2.getMeasuredWidth());
                this.fastScrollHintView.setPivotY(0.0f);
                this.fastScrollHintView.setTranslationX(measuredWidth);
                this.fastScrollHintView.setTranslationY(scrollBarY);
            }
            if (fastScroll.getProgress() > 0.85f) {
                SharedMediaLayout.showFastScrollHint(this, null, false);
            }
        }
    }

    public float getPhotoVideoOptionsAlpha(float f) {
        int i;
        ProfileGiftsContainer profileGiftsContainer;
        int i2;
        int i3;
        ProfileGiftsContainer profileGiftsContainer2;
        float f2 = 0.0f;
        if (isArchivedOnlyStoriesView()) {
            return 0.0f;
        }
        MediaPage mediaPage = this.mediaPages[1];
        if (mediaPage != null && ((i2 = mediaPage.selectedType) == 0 || (((i2 == 8 || isStoryAlbumPageType(i2)) && TextUtils.isEmpty(getStoriesHashtag())) || (i3 = this.mediaPages[1].selectedType) == 9 || i3 == 11 || i3 == 13 || (i3 == 14 && (profileGiftsContainer2 = this.giftsContainer) != null && profileGiftsContainer2.canFilter())))) {
            f2 = 0.0f + f;
        }
        MediaPage mediaPage2 = this.mediaPages[0];
        if (mediaPage2 == null) {
            return f2;
        }
        int i4 = mediaPage2.selectedType;
        return (i4 == 0 || ((i4 == 8 || isStoryAlbumPageType(i4)) && TextUtils.isEmpty(getStoriesHashtag())) || (i = this.mediaPages[0].selectedType) == 9 || i == 11 || i == 13 || (i == 14 && (profileGiftsContainer = this.giftsContainer) != null && profileGiftsContainer.canFilter())) ? f2 + (1.0f - f) : f2;
    }

    public float getSearchAlpha(float f) {
        float f2 = 0.0f;
        if (isArchivedOnlyStoriesView()) {
            return 0.0f;
        }
        MediaPage mediaPage = this.mediaPages[1];
        if (mediaPage != null && isSearchItemVisible(mediaPage.selectedType) && this.mediaPages[1].selectedType != 11) {
            f2 = 0.0f + f;
        }
        MediaPage mediaPage2 = this.mediaPages[0];
        return (mediaPage2 == null || !isSearchItemVisible(mediaPage2.selectedType) || this.mediaPages[0].selectedType == 11) ? f2 : f2 + (1.0f - f);
    }

    public void updateSearchItemIcon(float f) {
        ActionBarMenuItem actionBarMenuItem = this.searchItemIcon;
        if (actionBarMenuItem == null) {
            return;
        }
        MediaPage[] mediaPageArr = this.mediaPages;
        MediaPage mediaPage = mediaPageArr[1];
        float f2 = 0.0f;
        if (mediaPage != null && mediaPage.selectedType == 11) {
            f2 = 0.0f + f;
        }
        MediaPage mediaPage2 = mediaPageArr[0];
        if (mediaPage2 != null && mediaPage2.selectedType == 11) {
            f2 += 1.0f - f;
        }
        actionBarMenuItem.setAlpha(f2);
        float f3 = (0.15f * f2) + 0.85f;
        this.searchItemIcon.setScaleX(f3);
        this.searchItemIcon.setScaleY(f3);
        this.searchItemIcon.setVisibility(f2 <= 0.01f ? 8 : 0);
    }

    public void updateSearchItemIconAnimated() {
        ActionBarMenuItem actionBarMenuItem = this.searchItemIcon;
        if (actionBarMenuItem == null) {
            return;
        }
        MediaPage mediaPage = this.mediaPages[1];
        final boolean z = mediaPage != null && mediaPage.selectedType == 11;
        if (z) {
            actionBarMenuItem.setVisibility(0);
        }
        this.searchItemIcon.animate().alpha(z ? 1.0f : 0.0f).scaleX(z ? 1.0f : 0.85f).scaleY(z ? 1.0f : 0.85f).withEndAction(new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda58
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$updateSearchItemIconAnimated$1(z);
            }
        }).setDuration(420L).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateSearchItemIconAnimated$1(boolean z) {
        if (z) {
            return;
        }
        this.searchItemIcon.setVisibility(8);
    }

    public void updateFastScrollVisibility(MediaPage mediaPage, boolean z) {
        boolean z2 = mediaPage.fastScrollEnabled && this.isPinnedToTop;
        RecyclerListView.FastScroll fastScroll = mediaPage.listView.getFastScroll();
        ObjectAnimator objectAnimator = mediaPage.fastScrollAnimator;
        if (objectAnimator != null) {
            objectAnimator.removeAllListeners();
            mediaPage.fastScrollAnimator.cancel();
        }
        if (!z) {
            fastScroll.animate().setListener(null).cancel();
            fastScroll.setVisibility(z2 ? 0 : 8);
            fastScroll.setTag(z2 ? 1 : null);
            fastScroll.setAlpha(1.0f);
            fastScroll.setScaleX(1.0f);
            fastScroll.setScaleY(1.0f);
            return;
        }
        Property property = View.ALPHA;
        if (z2 && fastScroll.getTag() == null) {
            fastScroll.animate().setListener(null).cancel();
            if (fastScroll.getVisibility() != 0) {
                fastScroll.setVisibility(0);
                fastScroll.setAlpha(0.0f);
            }
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(fastScroll, (Property<RecyclerListView.FastScroll, Float>) property, fastScroll.getAlpha(), 1.0f);
            mediaPage.fastScrollAnimator = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration(150L).start();
            fastScroll.setTag(num);
            return;
        }
        if (z2 || fastScroll.getTag() == null) {
            return;
        }
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(fastScroll, (Property<RecyclerListView.FastScroll, Float>) property, fastScroll.getAlpha(), 0.0f);
        objectAnimatorOfFloat2.addListener(new HideViewAfterAnimation(fastScroll));
        mediaPage.fastScrollAnimator = objectAnimatorOfFloat2;
        objectAnimatorOfFloat2.setDuration(150L).start();
        fastScroll.animate().setListener(null).cancel();
        fastScroll.setTag(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2() {
        hideFloatingDateView(true);
    }

    public static /* synthetic */ float $r8$lambda$pgrLitFkYqSDqA1BbWpDVroXHNI(float f) {
        float f2 = f - 1.0f;
        return (f2 * f2 * f2 * f2 * f2) + 1.0f;
    }

    /* JADX INFO: loaded from: classes3.dex */
    public static class SharedMediaPreloader implements NotificationCenter.NotificationCenterDelegate {
        private boolean checkedHasSavedMessages;
        private long dialogId;
        public boolean hasPreviews;
        public boolean hasSavedMessages;
        private boolean mediaWasLoaded;
        private long mergeDialogId;
        private final NotificationCenter.ObserversGroup observersGroup;
        private BaseFragment parentFragment;
        private SharedMediaData[] sharedMediaData;
        private long topicId;
        private int[] mediaCount = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
        private int[] mediaMergeCount = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
        private int[] lastMediaCount = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
        private int[] lastLoadMediaCount = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
        private int[] lastLoadMergeMediaCount = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
        private ArrayList<SharedMediaPreloaderDelegate> delegates = new ArrayList<>();

        public long getTopicId() {
            return this.topicId;
        }

        public boolean hasSharedMedia() {
            int[] lastMediaCount = getLastMediaCount();
            if (lastMediaCount == null) {
                return false;
            }
            for (int i : lastMediaCount) {
                if (i > 0) {
                    return true;
                }
            }
            if (this.hasSavedMessages) {
                return true;
            }
            BaseFragment baseFragment = this.parentFragment;
            return baseFragment != null && this.dialogId == baseFragment.getUserConfig().getClientUserId() && this.topicId == 0 && this.parentFragment.getMessagesController().getSavedMessagesController().hasDialogs();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public SharedMediaPreloader(BaseFragment baseFragment) {
            TLRPC.ChatFull chatFull;
            this.parentFragment = baseFragment;
            if (baseFragment instanceof ChatActivityInterface) {
                ChatActivityInterface chatActivityInterface = (ChatActivityInterface) baseFragment;
                this.dialogId = chatActivityInterface.getDialogId();
                this.mergeDialogId = chatActivityInterface.getMergeDialogId();
                this.topicId = chatActivityInterface.getTopicId();
                if (this.dialogId != baseFragment.getUserConfig().getClientUserId()) {
                    baseFragment.getMessagesController().getSavedMessagesController().hasSavedMessages(this.dialogId, new Utilities.Callback() { // from class: org.telegram.ui.Components.SharedMediaLayout$SharedMediaPreloader$$ExternalSyntheticLambda0
                        @Override // org.telegram.messenger.Utilities.Callback
                        public final void run(Object obj) {
                            this.f$0.lambda$new$0((Boolean) obj);
                        }
                    });
                }
            } else if (baseFragment instanceof ProfileActivity) {
                ProfileActivity profileActivity = (ProfileActivity) baseFragment;
                if (profileActivity.saved) {
                    this.dialogId = profileActivity.getUserConfig().getClientUserId();
                    this.topicId = profileActivity.getDialogId();
                } else {
                    this.dialogId = profileActivity.getDialogId();
                    this.topicId = profileActivity.getTopicId();
                    TLRPC.ChatFull chatInfo = profileActivity.getChatInfo();
                    if (chatInfo != null) {
                        setChatInfo(chatInfo);
                    }
                    if (this.dialogId != baseFragment.getUserConfig().getClientUserId()) {
                        baseFragment.getMessagesController().getSavedMessagesController().hasSavedMessages(this.dialogId, new Utilities.Callback() { // from class: org.telegram.ui.Components.SharedMediaLayout$SharedMediaPreloader$$ExternalSyntheticLambda1
                            @Override // org.telegram.messenger.Utilities.Callback
                            public final void run(Object obj) {
                                this.f$0.lambda$new$1((Boolean) obj);
                            }
                        });
                    }
                }
            } else if (baseFragment instanceof MediaActivity) {
                this.dialogId = ((MediaActivity) baseFragment).getDialogId();
            } else if (baseFragment instanceof DialogsActivity) {
                this.dialogId = baseFragment.getUserConfig().getClientUserId();
            }
            if (this.mergeDialogId == 0 && DialogObject.isChatDialog(this.dialogId) && (chatFull = baseFragment.getMessagesController().getChatFull(-this.dialogId)) != null) {
                long j = chatFull.migrated_from_chat_id;
                if (j != 0) {
                    this.mergeDialogId = -j;
                }
            }
            this.sharedMediaData = new SharedMediaData[9];
            int i = 0;
            while (true) {
                SharedMediaData[] sharedMediaDataArr = this.sharedMediaData;
                if (i >= sharedMediaDataArr.length) {
                    break;
                }
                sharedMediaDataArr[i] = new SharedMediaData();
                this.sharedMediaData[i].setMaxId(0, DialogObject.isEncryptedDialog(this.dialogId) ? Integer.MIN_VALUE : Integer.MAX_VALUE);
                this.sharedMediaData[i].setMaxId(1, Integer.MAX_VALUE);
                i++;
            }
            loadMediaCounts();
            BaseFragment baseFragment2 = this.parentFragment;
            if (baseFragment2 == null) {
                this.observersGroup = null;
            } else {
                this.observersGroup = baseFragment2.getNotificationCenter().createObserversGroup(this).add(NotificationCenter.mediaCountsDidLoad).add(NotificationCenter.mediaCountDidLoad).add(NotificationCenter.didReceiveNewMessages).add(NotificationCenter.messageReceivedByServer).add(NotificationCenter.mediaDidLoad).add(NotificationCenter.messagesDeleted).add(NotificationCenter.replaceMessagesObjects).add(NotificationCenter.chatInfoDidLoad).add(NotificationCenter.fileLoaded).add(NotificationCenter.storiesListUpdated).add(NotificationCenter.savedMessagesDialogsUpdate);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(Boolean bool) {
            boolean zBooleanValue = bool.booleanValue();
            this.hasSavedMessages = zBooleanValue;
            this.checkedHasSavedMessages = true;
            if (zBooleanValue) {
                int size = this.delegates.size();
                for (int i = 0; i < size; i++) {
                    this.delegates.get(i).mediaCountUpdated();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$1(Boolean bool) {
            boolean zBooleanValue = bool.booleanValue();
            this.hasSavedMessages = zBooleanValue;
            this.checkedHasSavedMessages = true;
            if (zBooleanValue) {
                int size = this.delegates.size();
                for (int i = 0; i < size; i++) {
                    this.delegates.get(i).mediaCountUpdated();
                }
            }
        }

        public void addDelegate(SharedMediaPreloaderDelegate sharedMediaPreloaderDelegate) {
            this.delegates.add(sharedMediaPreloaderDelegate);
        }

        public void removeDelegate(SharedMediaPreloaderDelegate sharedMediaPreloaderDelegate) {
            this.delegates.remove(sharedMediaPreloaderDelegate);
        }

        public void onDestroy(BaseFragment baseFragment) {
            onDestroy(baseFragment, false);
        }

        public void onDestroy(BaseFragment baseFragment, boolean z) {
            if (baseFragment == this.parentFragment || z) {
                this.delegates.clear();
                NotificationCenter.ObserversGroup observersGroup = this.observersGroup;
                if (observersGroup != null) {
                    observersGroup.removeAllObservers();
                }
            }
        }

        public int[] getLastMediaCount() {
            return this.lastMediaCount;
        }

        public SharedMediaData[] getSharedMediaData() {
            return this.sharedMediaData;
        }

        /* JADX WARN: Removed duplicated region for block: B:38:0x008e  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x009b  */
        /* JADX WARN: Removed duplicated region for block: B:55:0x00ea  */
        /* JADX WARN: Removed duplicated region for block: B:58:0x00f7  */
        @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void didReceivedNotification(int i, final int i2, Object... objArr) {
            int i3;
            int mediaType;
            int i4;
            int[] iArr;
            int i5;
            int i6;
            int i7;
            int i8 = 0;
            boolean z = true;
            if (i == NotificationCenter.mediaCountsDidLoad) {
                long jLongValue = ((Long) objArr[0]).longValue();
                long jLongValue2 = ((Long) objArr[1]).longValue();
                if (this.topicId == jLongValue2) {
                    long j = this.dialogId;
                    if (jLongValue == j || jLongValue == this.mergeDialogId) {
                        int[] iArr2 = (int[]) objArr[2];
                        if (jLongValue == j) {
                            this.mediaCount = iArr2;
                        } else {
                            this.mediaMergeCount = iArr2;
                        }
                        int i9 = 0;
                        while (i9 < iArr2.length) {
                            int i10 = this.mediaCount[i9];
                            if (i10 >= 0 && (i7 = this.mediaMergeCount[i9]) >= 0) {
                                this.lastMediaCount[i9] = i10 + i7;
                            } else {
                                int[] iArr3 = this.lastMediaCount;
                                if (i10 >= 0) {
                                    iArr3[i9] = i10;
                                } else {
                                    iArr3[i9] = Math.max(this.mediaMergeCount[i9], 0);
                                }
                            }
                            if (jLongValue != this.dialogId || this.lastMediaCount[i9] == 0 || this.lastLoadMediaCount[i9] == this.mediaCount[i9]) {
                                iArr = iArr2;
                                if (jLongValue == this.mergeDialogId && this.lastMediaCount[i9] != 0 && this.lastLoadMergeMediaCount[i9] != this.mediaMergeCount[i9]) {
                                    if (i9 == 0) {
                                        int i11 = this.sharedMediaData[0].filterType;
                                        if (i11 == 1) {
                                            i5 = 6;
                                        } else if (i11 == 2) {
                                            i5 = 7;
                                        }
                                        this.parentFragment.getMediaDataController().loadMedia(jLongValue, this.lastLoadMergeMediaCount[i9] == -1 ? 30 : 20, 0, 0, i5, jLongValue2, 1, this.parentFragment.getClassGuid(), this.sharedMediaData[i9].requestIndex, null, null);
                                        this.lastLoadMergeMediaCount[i9] = this.mediaMergeCount[i9];
                                    } else {
                                        i5 = i9;
                                        this.parentFragment.getMediaDataController().loadMedia(jLongValue, this.lastLoadMergeMediaCount[i9] == -1 ? 30 : 20, 0, 0, i5, jLongValue2, 1, this.parentFragment.getClassGuid(), this.sharedMediaData[i9].requestIndex, null, null);
                                        this.lastLoadMergeMediaCount[i9] = this.mediaMergeCount[i9];
                                    }
                                }
                            } else if (i9 == 0) {
                                int i12 = this.sharedMediaData[0].filterType;
                                if (i12 == 1) {
                                    i6 = 6;
                                } else if (i12 == 2) {
                                    i6 = 7;
                                }
                                iArr = iArr2;
                                this.parentFragment.getMediaDataController().loadMedia(jLongValue, this.lastLoadMediaCount[i9] == -1 ? 30 : 20, 0, 0, i6, jLongValue2, 1, this.parentFragment.getClassGuid(), this.sharedMediaData[i9].requestIndex, null, null);
                                this.lastLoadMediaCount[i9] = this.mediaCount[i9];
                            } else {
                                i6 = i9;
                                iArr = iArr2;
                                this.parentFragment.getMediaDataController().loadMedia(jLongValue, this.lastLoadMediaCount[i9] == -1 ? 30 : 20, 0, 0, i6, jLongValue2, 1, this.parentFragment.getClassGuid(), this.sharedMediaData[i9].requestIndex, null, null);
                                this.lastLoadMediaCount[i9] = this.mediaCount[i9];
                            }
                            i9++;
                            iArr2 = iArr;
                        }
                        this.mediaWasLoaded = true;
                        int size = this.delegates.size();
                        while (i8 < size) {
                            this.delegates.get(i8).mediaCountUpdated();
                            i8++;
                        }
                        return;
                    }
                    return;
                }
                return;
            }
            if (i == NotificationCenter.mediaCountDidLoad) {
                long jLongValue3 = ((Long) objArr[0]).longValue();
                long jLongValue4 = ((Long) objArr[1]).longValue();
                if ((jLongValue3 == this.dialogId || jLongValue3 == this.mergeDialogId) && this.topicId == jLongValue4) {
                    int iIntValue = ((Integer) objArr[4]).intValue();
                    int iIntValue2 = ((Integer) objArr[2]).intValue();
                    if (jLongValue3 == this.dialogId) {
                        this.mediaCount[iIntValue] = iIntValue2;
                    } else {
                        this.mediaMergeCount[iIntValue] = iIntValue2;
                    }
                    int i13 = this.mediaCount[iIntValue];
                    if (i13 >= 0 && (i4 = this.mediaMergeCount[iIntValue]) >= 0) {
                        this.lastMediaCount[iIntValue] = i13 + i4;
                    } else {
                        int[] iArr4 = this.lastMediaCount;
                        if (i13 >= 0) {
                            iArr4[iIntValue] = i13;
                        } else {
                            iArr4[iIntValue] = Math.max(this.mediaMergeCount[iIntValue], 0);
                        }
                    }
                    int size2 = this.delegates.size();
                    while (i8 < size2) {
                        this.delegates.get(i8).mediaCountUpdated();
                        i8++;
                    }
                    return;
                }
                return;
            }
            if (i == NotificationCenter.didReceiveNewMessages) {
                if (((Boolean) objArr[2]).booleanValue()) {
                    return;
                }
                long jLongValue5 = ((Long) objArr[0]).longValue();
                long j2 = this.dialogId;
                if (jLongValue5 == j2 || jLongValue5 == this.mergeDialogId) {
                    int i14 = jLongValue5 == j2 ? 0 : 1;
                    boolean zIsEncryptedDialog = DialogObject.isEncryptedDialog(jLongValue5);
                    ArrayList arrayList = (ArrayList) objArr[1];
                    BaseFragment baseFragment = this.parentFragment;
                    int currentAccount = baseFragment != null ? baseFragment.getCurrentAccount() : -1;
                    for (int i15 = 0; i15 < arrayList.size(); i15++) {
                        MessageObject messageObject = (MessageObject) arrayList.get(i15);
                        if (!messageObject.isEphemeral()) {
                            long j3 = this.topicId;
                            if ((j3 == 0 || j3 == MessageObject.getTopicId(currentAccount, messageObject.messageOwner, true)) && MessageObject.getMedia(messageObject.messageOwner) != null && !messageObject.needDrawBluredPreview() && (mediaType = MediaDataController.getMediaType(messageObject.messageOwner)) != -1 && ((mediaType != 0 || this.sharedMediaData[0].filterType != 2 || messageObject.isVideo()) && (mediaType != 0 || this.sharedMediaData[0].filterType != 1 || !messageObject.isVideo()))) {
                                SharedMediaData sharedMediaData = this.sharedMediaData[mediaType];
                                if (sharedMediaData.startReached) {
                                    sharedMediaData.addMessage(messageObject, i14, true, zIsEncryptedDialog);
                                }
                                if (this.topicId == 0) {
                                    int[] iArr5 = this.sharedMediaData[mediaType].totalCount;
                                    iArr5[i14] = iArr5[i14] + 1;
                                }
                                if (i14 == 0) {
                                    for (int i16 = 0; i16 < this.sharedMediaData[mediaType].fastScrollPeriods.size(); i16++) {
                                        this.sharedMediaData[mediaType].fastScrollPeriods.get(i16).startOffset++;
                                    }
                                }
                            }
                        }
                    }
                    loadMediaCounts();
                    return;
                }
                return;
            }
            if (i == NotificationCenter.messageReceivedByServer) {
                if (((Boolean) objArr[6]).booleanValue()) {
                    return;
                }
                Integer num = (Integer) objArr[0];
                Integer num2 = (Integer) objArr[1];
                Long l = (Long) objArr[3];
                if (l.longValue() != this.dialogId && l.longValue() != this.mergeDialogId) {
                    return;
                }
                int i17 = l.longValue() == this.dialogId ? 0 : 1;
                while (true) {
                    SharedMediaData[] sharedMediaDataArr = this.sharedMediaData;
                    if (i8 >= sharedMediaDataArr.length) {
                        return;
                    }
                    sharedMediaDataArr[i8].replaceMid(i17, num.intValue(), num2.intValue());
                    i8++;
                }
            } else {
                if (i == NotificationCenter.mediaDidLoad) {
                    long jLongValue6 = ((Long) objArr[0]).longValue();
                    if (((Integer) objArr[3]).intValue() == this.parentFragment.getClassGuid()) {
                        int iIntValue3 = ((Integer) objArr[4]).intValue();
                        ArrayList arrayList2 = (ArrayList) objArr[2];
                        boolean zIsEncryptedDialog2 = DialogObject.isEncryptedDialog(jLongValue6);
                        int i18 = jLongValue6 == this.dialogId ? 0 : 1;
                        if (iIntValue3 == 0 || iIntValue3 == 6 || iIntValue3 == 7) {
                            if (iIntValue3 != this.sharedMediaData[0].filterType) {
                                return;
                            } else {
                                iIntValue3 = 0;
                            }
                        }
                        if (iIntValue3 != 0 && iIntValue3 != 1 && iIntValue3 != 2 && iIntValue3 != 4) {
                            this.sharedMediaData[iIntValue3].setTotalCount(i18, ((Integer) objArr[1]).intValue());
                        }
                        this.sharedMediaData[iIntValue3].setEndReached(i18, ((Boolean) objArr[5]).booleanValue());
                        for (int i19 = 0; i19 < arrayList2.size(); i19++) {
                            this.sharedMediaData[iIntValue3].addMessage((MessageObject) arrayList2.get(i19), i18, false, zIsEncryptedDialog2);
                        }
                        return;
                    }
                    return;
                }
                if (i == NotificationCenter.messagesDeleted) {
                    if (((Boolean) objArr[2]).booleanValue()) {
                        return;
                    }
                    long jLongValue7 = ((Long) objArr[1]).longValue();
                    TLRPC.Chat chat = DialogObject.isChatDialog(this.dialogId) ? this.parentFragment.getMessagesController().getChat(Long.valueOf(-this.dialogId)) : null;
                    if (ChatObject.isChannel(chat)) {
                        if ((jLongValue7 != 0 || this.mergeDialogId == 0) && jLongValue7 != chat.id) {
                            return;
                        }
                    } else if (jLongValue7 != 0) {
                        return;
                    }
                    ArrayList arrayList3 = (ArrayList) objArr[0];
                    BaseFragment baseFragment2 = this.parentFragment;
                    int currentAccount2 = baseFragment2 != null ? baseFragment2.getCurrentAccount() : -1;
                    int size3 = arrayList3.size();
                    int i20 = 0;
                    boolean z2 = false;
                    while (i20 < size3) {
                        int i21 = 0;
                        boolean z3 = z2;
                        while (true) {
                            SharedMediaData[] sharedMediaDataArr2 = this.sharedMediaData;
                            if (i21 < sharedMediaDataArr2.length) {
                                MessageObject messageObjectDeleteMessage = sharedMediaDataArr2[i21].deleteMessage(((Integer) arrayList3.get(i20)).intValue(), 0);
                                if (messageObjectDeleteMessage != null) {
                                    if (messageObjectDeleteMessage.getDialogId() == this.dialogId && (this.topicId == 0 || MessageObject.getTopicId(currentAccount2, messageObjectDeleteMessage.messageOwner, true) == this.topicId)) {
                                        int[] iArr6 = this.mediaCount;
                                        int i22 = iArr6[i21];
                                        if (i22 > 0) {
                                            iArr6[i21] = i22 - 1;
                                        }
                                    } else {
                                        int[] iArr7 = this.mediaMergeCount;
                                        int i23 = iArr7[i21];
                                        if (i23 > 0) {
                                            iArr7[i21] = i23 - 1;
                                        }
                                    }
                                    z3 = true;
                                }
                                i21++;
                                z3 = z3;
                            }
                        }
                        i20++;
                        z2 = z3;
                    }
                    if (z2) {
                        int i24 = 0;
                        while (true) {
                            int[] iArr8 = this.mediaCount;
                            if (i24 >= iArr8.length) {
                                break;
                            }
                            int i25 = iArr8[i24];
                            if (i25 >= 0 && (i3 = this.mediaMergeCount[i24]) >= 0) {
                                this.lastMediaCount[i24] = i25 + i3;
                            } else {
                                int[] iArr9 = this.lastMediaCount;
                                if (i25 >= 0) {
                                    iArr9[i24] = i25;
                                } else {
                                    iArr9[i24] = Math.max(this.mediaMergeCount[i24], 0);
                                }
                            }
                            i24++;
                        }
                        int size4 = this.delegates.size();
                        while (i8 < size4) {
                            this.delegates.get(i8).mediaCountUpdated();
                            i8++;
                        }
                    }
                    loadMediaCounts();
                    return;
                }
                if (i == NotificationCenter.replaceMessagesObjects) {
                    long jLongValue8 = ((Long) objArr[0]).longValue();
                    long j4 = this.dialogId;
                    if (jLongValue8 == j4 || jLongValue8 == this.mergeDialogId) {
                        int i26 = jLongValue8 == j4 ? 0 : 1;
                        ArrayList arrayList4 = (ArrayList) objArr[1];
                        BaseFragment baseFragment3 = this.parentFragment;
                        int currentAccount3 = baseFragment3 != null ? baseFragment3.getCurrentAccount() : -1;
                        int size5 = arrayList4.size();
                        int i27 = 0;
                        while (i27 < size5) {
                            MessageObject messageObject2 = (MessageObject) arrayList4.get(i27);
                            int id = messageObject2.getId();
                            long topicId = MessageObject.getTopicId(currentAccount3, messageObject2.messageOwner, z);
                            int mediaType2 = MediaDataController.getMediaType(messageObject2.messageOwner);
                            int i28 = i8;
                            long j5 = this.topicId;
                            if (j5 == 0 || topicId == j5) {
                                int i29 = i28;
                                while (true) {
                                    SharedMediaData[] sharedMediaDataArr3 = this.sharedMediaData;
                                    if (i29 >= sharedMediaDataArr3.length) {
                                        break;
                                    }
                                    MessageObject messageObject3 = sharedMediaDataArr3[i29].messagesDict[i26].get(id);
                                    if (messageObject3 != null) {
                                        int mediaType3 = MediaDataController.getMediaType(messageObject2.messageOwner);
                                        if (mediaType2 == -1 || mediaType3 != mediaType2) {
                                            this.sharedMediaData[i29].deleteMessage(id, i26);
                                            if (i26 == 0) {
                                                int[] iArr10 = this.mediaCount;
                                                int i30 = iArr10[i29];
                                                if (i30 > 0) {
                                                    iArr10[i29] = i30 - 1;
                                                }
                                            } else {
                                                int[] iArr11 = this.mediaMergeCount;
                                                int i31 = iArr11[i29];
                                                if (i31 > 0) {
                                                    iArr11[i29] = i31 - 1;
                                                }
                                            }
                                        } else {
                                            int iIndexOf = this.sharedMediaData[i29].messages.indexOf(messageObject3);
                                            if (iIndexOf >= 0) {
                                                this.sharedMediaData[i29].messagesDict[i26].put(id, messageObject2);
                                                this.sharedMediaData[i29].messages.set(iIndexOf, messageObject2);
                                            }
                                        }
                                    } else {
                                        i29++;
                                    }
                                }
                            }
                            i27++;
                            i8 = i28;
                            z = true;
                        }
                        return;
                    }
                    return;
                }
                if (i == NotificationCenter.chatInfoDidLoad) {
                    TLRPC.ChatFull chatFull = (TLRPC.ChatFull) objArr[0];
                    long j6 = this.dialogId;
                    if (j6 >= 0 || chatFull.id != (-j6)) {
                        return;
                    }
                    setChatInfo(chatFull);
                    return;
                }
                if (i == NotificationCenter.fileLoaded) {
                    final ArrayList arrayList5 = new ArrayList();
                    int i32 = 0;
                    while (true) {
                        SharedMediaData[] sharedMediaDataArr4 = this.sharedMediaData;
                        if (i32 >= sharedMediaDataArr4.length) {
                            break;
                        }
                        arrayList5.addAll(sharedMediaDataArr4[i32].messages);
                        i32++;
                    }
                    final String str = (String) objArr[0];
                    if (str != null) {
                        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout.SharedMediaPreloader.1
                            @Override // java.lang.Runnable
                            public void run() {
                                int i33 = 0;
                                while (i33 < arrayList5.size()) {
                                    if (!str.equals(((MessageObject) arrayList5.get(i33)).getFileName())) {
                                        arrayList5.remove(i33);
                                        i33--;
                                    }
                                    i33++;
                                }
                                if (arrayList5.size() > 0) {
                                    FileLoader.getInstance(i2).checkMediaExistance(arrayList5);
                                }
                            }
                        });
                        return;
                    }
                    return;
                }
                if (i == NotificationCenter.savedMessagesDialogsUpdate) {
                    BaseFragment baseFragment4 = this.parentFragment;
                    boolean z4 = baseFragment4 != null && baseFragment4.getMessagesController().getSavedMessagesController().containsDialog(this.dialogId);
                    if (!this.checkedHasSavedMessages || this.hasSavedMessages == z4) {
                        return;
                    }
                    this.hasSavedMessages = z4;
                    int size6 = this.delegates.size();
                    for (int i33 = 0; i33 < size6; i33++) {
                        this.delegates.get(i33).mediaCountUpdated();
                    }
                }
            }
        }

        private void loadMediaCounts() {
            BaseFragment baseFragment = this.parentFragment;
            if (baseFragment == null) {
                return;
            }
            baseFragment.getMediaDataController().getMediaCounts(this.dialogId, this.topicId, this.parentFragment.getClassGuid());
            if (this.mergeDialogId != 0) {
                this.parentFragment.getMediaDataController().getMediaCounts(this.mergeDialogId, this.topicId, this.parentFragment.getClassGuid());
            }
        }

        private void setChatInfo(TLRPC.ChatFull chatFull) {
            BaseFragment baseFragment = this.parentFragment;
            if (baseFragment == null || chatFull == null) {
                return;
            }
            long j = chatFull.migrated_from_chat_id;
            if (j == 0 || this.mergeDialogId != 0) {
                return;
            }
            this.mergeDialogId = -j;
            baseFragment.getMediaDataController().getMediaCounts(this.mergeDialogId, this.topicId, this.parentFragment.getClassGuid());
        }

        public boolean isMediaWasLoaded() {
            return this.mediaWasLoaded;
        }
    }

    public static class SharedMediaData {
        private int endLoadingStubs;
        public boolean fastScrollDataLoaded;
        public int frozenEndLoadingStubs;
        public int frozenStartOffset;
        private boolean hasPhotos;
        private boolean hasVideos;
        public boolean isFrozen;
        public boolean loading;
        public boolean loadingAfterFastScroll;
        public int min_id;
        public int requestIndex;
        private int startOffset;
        public ArrayList<MessageObject> messages = new ArrayList<>();
        public SparseArray<MessageObject>[] messagesDict = {new SparseArray(), new SparseArray()};
        public ArrayList<String> sections = new ArrayList<>();
        public HashMap<String, ArrayList<MessageObject>> sectionArrays = new HashMap<>();
        public ArrayList<Period> fastScrollPeriods = new ArrayList<>();
        public int[] totalCount = {0, 0};
        public boolean[] endReached = {false, true};
        public int[] max_id = {0, 0};
        public boolean startReached = true;
        public int filterType = 0;
        public ArrayList<MessageObject> frozenMessages = new ArrayList<>();
        RecyclerView.RecycledViewPool recycledViewPool = new RecyclerView.RecycledViewPool();

        public void setTotalCount(int i, int i2) {
            this.totalCount[i] = i2;
        }

        public int getTotalCount() {
            int[] iArr = this.totalCount;
            return iArr[0] + iArr[1];
        }

        public void setMaxId(int i, int i2) {
            this.max_id[i] = i2;
        }

        public void setEndReached(int i, boolean z) {
            this.endReached[i] = z;
        }

        public boolean addMessage(MessageObject messageObject, int i, boolean z, boolean z2) {
            if (this.messagesDict[i].indexOfKey(messageObject.getId()) >= 0) {
                return false;
            }
            if (LocaleUtils.isCustomEmojiOnlyLinkMessage(messageObject.messageOwner)) {
                updateIds(messageObject, i, z2);
                return false;
            }
            ArrayList<MessageObject> arrayList = this.sectionArrays.get(messageObject.monthKey);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                this.sectionArrays.put(messageObject.monthKey, arrayList);
                ArrayList<String> arrayList2 = this.sections;
                if (z) {
                    arrayList2.add(0, messageObject.monthKey);
                } else {
                    arrayList2.add(messageObject.monthKey);
                }
            }
            if (z) {
                arrayList.add(0, messageObject);
                this.messages.add(0, messageObject);
            } else {
                arrayList.add(messageObject);
                this.messages.add(messageObject);
            }
            this.messagesDict[i].put(messageObject.getId(), messageObject);
            updateIds(messageObject, i, z2);
            if (!this.hasVideos && messageObject.isVideo()) {
                this.hasVideos = true;
            }
            if (!this.hasPhotos && messageObject.isPhoto()) {
                this.hasPhotos = true;
            }
            return true;
        }

        private void updateIds(MessageObject messageObject, int i, boolean z) {
            if (!z) {
                if (messageObject.getId() > 0) {
                    this.max_id[i] = Math.min(messageObject.getId(), this.max_id[i]);
                    this.min_id = Math.max(messageObject.getId(), this.min_id);
                    return;
                }
                return;
            }
            this.max_id[i] = Math.max(messageObject.getId(), this.max_id[i]);
            this.min_id = Math.min(messageObject.getId(), this.min_id);
        }

        public MessageObject deleteMessage(int i, int i2) {
            ArrayList<MessageObject> arrayList;
            MessageObject messageObject = this.messagesDict[i2].get(i);
            if (messageObject == null || (arrayList = this.sectionArrays.get(messageObject.monthKey)) == null) {
                return null;
            }
            arrayList.remove(messageObject);
            this.messages.remove(messageObject);
            this.messagesDict[i2].remove(messageObject.getId());
            if (arrayList.isEmpty()) {
                this.sectionArrays.remove(messageObject.monthKey);
                this.sections.remove(messageObject.monthKey);
            }
            int[] iArr = this.totalCount;
            int i3 = iArr[i2] - 1;
            iArr[i2] = i3;
            if (i3 < 0) {
                iArr[i2] = 0;
            }
            return messageObject;
        }

        public void replaceMid(int i, int i2, int i3) {
            MessageObject messageObject = this.messagesDict[i].get(i2);
            if (messageObject != null) {
                this.messagesDict[i].remove(i2);
                this.messagesDict[i].put(i3, messageObject);
                messageObject.messageOwner.id = i3;
                int[] iArr = this.max_id;
                iArr[i] = Math.min(i3, iArr[i]);
            }
        }

        public ArrayList<MessageObject> getMessages() {
            return this.isFrozen ? this.frozenMessages : this.messages;
        }

        public int getStartOffset() {
            return this.isFrozen ? this.frozenStartOffset : this.startOffset;
        }

        public void setListFrozen(boolean z) {
            if (this.isFrozen == z) {
                return;
            }
            this.isFrozen = z;
            if (z) {
                this.frozenStartOffset = this.startOffset;
                this.frozenEndLoadingStubs = this.endLoadingStubs;
                this.frozenMessages.clear();
                this.frozenMessages.addAll(this.messages);
            }
        }

        public int getEndLoadingStubs() {
            return this.isFrozen ? this.frozenEndLoadingStubs : this.endLoadingStubs;
        }
    }

    public static class Period {
        int date;
        public String formatedDate;
        int maxId;
        public int startOffset;

        public Period(TLRPC.TL_searchResultPosition tL_searchResultPosition) {
            int i = tL_searchResultPosition.date;
            this.date = i;
            this.maxId = tL_searchResultPosition.msg_id;
            this.startOffset = tL_searchResultPosition.offset;
            this.formatedDate = LocaleController.formatYearMont(i, true);
        }
    }

    public boolean hasInternet() {
        return this.profileActivity.getConnectionsManager().getConnectionState() == 3;
    }

    public SharedMediaLayout(Context context, long j, SharedMediaPreloader sharedMediaPreloader, int i, ArrayList<Integer> arrayList, TLRPC.ChatFull chatFull, TLRPC.UserFull userFull, int i2, int i3, BaseFragment baseFragment, Delegate delegate, int i4, Theme.ResourcesProvider resourcesProvider) {
        this(context, j, sharedMediaPreloader, i, arrayList, chatFull, userFull, i2, i3, baseFragment, delegate, i4, resourcesProvider, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x0233, code lost:
    
        r38.initialTab = r5;
     */
    /* JADX WARN: Removed duplicated region for block: B:250:0x09fc  */
    /* JADX WARN: Removed duplicated region for block: B:277:0x0d59  */
    /* JADX WARN: Removed duplicated region for block: B:280:0x0dc2  */
    /* JADX WARN: Removed duplicated region for block: B:288:0x0f4a  */
    /* JADX WARN: Removed duplicated region for block: B:304:0x0d53 A[EDGE_INSN: B:304:0x0d53->B:275:0x0d53 BREAK  A[LOOP:3: B:248:0x09f7->B:274:0x0c4f], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public SharedMediaLayout(Context context, final long j, SharedMediaPreloader sharedMediaPreloader, int i, ArrayList<Integer> arrayList, TLRPC.ChatFull chatFull, TLRPC.UserFull userFull, int i2, int i3, BaseFragment baseFragment, Delegate delegate, int i4, Theme.ResourcesProvider resourcesProvider, BlurredBackgroundDrawableViewFactory blurredBackgroundDrawableViewFactory) {
        TLRPC.ProfileTab profileTab;
        int i5;
        int i6;
        final Context context2;
        final SharedMediaLayout sharedMediaLayout;
        Theme.ResourcesProvider resourcesProvider2;
        int top;
        int iFindFirstVisibleItemPosition;
        int i7;
        MediaPage[] mediaPageArr;
        ProfileStoriesCollectionTabs profileStoriesCollectionTabs;
        ProfileStoriesCollectionTabs profileStoriesCollectionTabs2;
        int i8;
        int i9;
        MediaPage mediaPage;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        TL_bots.BotInfo botInfo;
        super(context);
        TLRPC.ChatFull chatFull2 = chatFull;
        this.rect = new Rect();
        this.mediaPages = new MediaPage[2];
        this.cellCache = new ArrayList<>(10);
        this.cache = new ArrayList<>(10);
        this.audioCellCache = new ArrayList<>(10);
        this.audioCache = new ArrayList<>(10);
        this.hideFloatingDateRunnable = new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$2();
            }
        };
        this.actionModeViews = new ArrayList<>();
        this.backgroundPaint = new Paint();
        this.selectedFiles = new SparseArray[]{new SparseArray(), new SparseArray()};
        this.allowStoriesSingleColumn = false;
        this.storiesColumnsCountSet = false;
        this.mediaColumnsCount = new int[]{3, 3};
        this.provider = new PhotoViewer.EmptyPhotoViewerProvider() { // from class: org.telegram.ui.Components.SharedMediaLayout.1
            /* JADX WARN: Removed duplicated region for block: B:100:0x014c A[SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:101:0x022d A[SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:57:0x0149  */
            @Override // org.telegram.ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.ui.PhotoViewer.PhotoViewerProvider
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public PhotoViewer.PlaceProviderObject getPlaceForPhoto(MessageObject messageObject, TLRPC.FileLocation fileLocation, int i15, boolean z, boolean z2) {
                SharedLinkCell sharedLinkCell;
                MessageObject message;
                ImageReceiver linkImageView;
                View pinnedHeader;
                if (messageObject != null && (SharedMediaLayout.this.mediaPages[0].selectedType == 0 || SharedMediaLayout.this.mediaPages[0].selectedType == 1 || SharedMediaLayout.this.mediaPages[0].selectedType == 3 || SharedMediaLayout.this.mediaPages[0].selectedType == 5)) {
                    InternalListView internalListView = SharedMediaLayout.this.mediaPages[0].listView;
                    int childCount = internalListView.getChildCount();
                    int i16 = -1;
                    int i17 = -1;
                    for (int i18 = 0; i18 < childCount; i18++) {
                        View childAt = internalListView.getChildAt(i18);
                        int measuredHeight = SharedMediaLayout.this.mediaPages[0].listView.getMeasuredHeight();
                        View view = (View) SharedMediaLayout.this.getParent();
                        if (view != null && SharedMediaLayout.this.getY() + SharedMediaLayout.this.getMeasuredHeight() > view.getMeasuredHeight()) {
                            measuredHeight -= SharedMediaLayout.this.getBottom() - view.getMeasuredHeight();
                        }
                        if (childAt.getTop() < measuredHeight) {
                            int childAdapterPosition = internalListView.getChildAdapterPosition(childAt);
                            if (childAdapterPosition < i16 || i16 == -1) {
                                i16 = childAdapterPosition;
                            }
                            if (childAdapterPosition > i17 || i17 == -1) {
                                i17 = childAdapterPosition;
                            }
                            int[] iArr = new int[2];
                            if (childAt instanceof SharedPhotoVideoCell2) {
                                SharedPhotoVideoCell2 sharedPhotoVideoCell2 = (SharedPhotoVideoCell2) childAt;
                                MessageObject messageObject2 = sharedPhotoVideoCell2.getMessageObject();
                                if (messageObject2 != null) {
                                    if (messageObject2.getId() == messageObject.getId()) {
                                        linkImageView = sharedPhotoVideoCell2.imageReceiver;
                                        sharedPhotoVideoCell2.getLocationInWindow(iArr);
                                        iArr[0] = iArr[0] + Math.round(sharedPhotoVideoCell2.imageReceiver.getImageX());
                                        iArr[1] = iArr[1] + Math.round(sharedPhotoVideoCell2.imageReceiver.getImageY());
                                    } else {
                                        linkImageView = null;
                                    }
                                    if (linkImageView == null) {
                                        PhotoViewer.PlaceProviderObject placeProviderObject = new PhotoViewer.PlaceProviderObject();
                                        placeProviderObject.viewX = iArr[0];
                                        placeProviderObject.viewY = iArr[1];
                                        placeProviderObject.parentView = internalListView;
                                        placeProviderObject.animatingImageView = SharedMediaLayout.this.mediaPages[0].animatingImageView;
                                        SharedMediaLayout.this.mediaPages[0].listView.getLocationInWindow(iArr);
                                        placeProviderObject.animatingImageViewYOffset = -iArr[1];
                                        placeProviderObject.imageReceiver = linkImageView;
                                        placeProviderObject.allowTakeAnimation = true;
                                        placeProviderObject.radius = linkImageView.getRoundRadius(true);
                                        placeProviderObject.thumb = placeProviderObject.imageReceiver.getBitmapSafe();
                                        placeProviderObject.parentView.getLocationInWindow(iArr);
                                        placeProviderObject.clipTopAddition = 0;
                                        placeProviderObject.starOffset = SharedMediaLayout.this.sharedMediaData[0].startOffset;
                                        if (SharedMediaLayout.this.fragmentContextView != null && SharedMediaLayout.this.fragmentContextView.getVisibility() == 0) {
                                            placeProviderObject.clipTopAddition += AndroidUtilities.dp(36.0f);
                                        }
                                        if (PhotoViewer.isShowingImage(messageObject) && (pinnedHeader = internalListView.getPinnedHeader()) != null) {
                                            int height = (SharedMediaLayout.this.fragmentContextView == null || SharedMediaLayout.this.fragmentContextView.getVisibility() != 0) ? 0 : SharedMediaLayout.this.fragmentContextView.getHeight() - AndroidUtilities.dp(2.5f);
                                            boolean z3 = childAt instanceof SharedDocumentCell;
                                            if (z3) {
                                                height += AndroidUtilities.dp(8.0f);
                                            }
                                            int i19 = height - placeProviderObject.viewY;
                                            if (i19 > childAt.getHeight()) {
                                                internalListView.scrollBy(0, -(i19 + pinnedHeader.getHeight()));
                                                return placeProviderObject;
                                            }
                                            int height2 = placeProviderObject.viewY - internalListView.getHeight();
                                            if (z3) {
                                                height2 -= AndroidUtilities.dp(8.0f);
                                            }
                                            if (height2 >= 0) {
                                                internalListView.scrollBy(0, height2 + childAt.getHeight());
                                            }
                                        }
                                        return placeProviderObject;
                                    }
                                } else {
                                    continue;
                                }
                            } else if (childAt instanceof SharedDocumentCell) {
                                SharedDocumentCell sharedDocumentCell = (SharedDocumentCell) childAt;
                                if (sharedDocumentCell.getMessage().getId() == messageObject.getId()) {
                                    BackupImageView imageView = sharedDocumentCell.getImageView();
                                    linkImageView = imageView.getImageReceiver();
                                    imageView.getLocationInWindow(iArr);
                                }
                                if (linkImageView == null) {
                                }
                            } else if (childAt instanceof ContextLinkCell) {
                                ContextLinkCell contextLinkCell = (ContextLinkCell) childAt;
                                MessageObject messageObject3 = (MessageObject) contextLinkCell.getParentObject();
                                if (messageObject3 != null && messageObject3.getId() == messageObject.getId()) {
                                    linkImageView = contextLinkCell.getPhotoImage();
                                    contextLinkCell.getLocationInWindow(iArr);
                                }
                                if (linkImageView == null) {
                                }
                            } else {
                                if ((childAt instanceof SharedLinkCell) && (message = (sharedLinkCell = (SharedLinkCell) childAt).getMessage()) != null && message.getId() == messageObject.getId()) {
                                    linkImageView = sharedLinkCell.getLinkImageView();
                                    sharedLinkCell.getLocationInWindow(iArr);
                                }
                                if (linkImageView == null) {
                                }
                            }
                        }
                    }
                    if (SharedMediaLayout.this.mediaPages[0].selectedType == 0 && i16 >= 0 && i17 >= 0) {
                        int positionForIndex = SharedMediaLayout.this.photoVideoAdapter.getPositionForIndex(i15);
                        if (positionForIndex <= i16) {
                            SharedMediaLayout.this.mediaPages[0].layoutManager.scrollToPositionWithOffset(positionForIndex, 0);
                            SharedMediaLayout.this.delegate.scrollToSharedMedia();
                        } else if (positionForIndex >= i17 && i17 >= 0) {
                            SharedMediaLayout.this.mediaPages[0].layoutManager.scrollToPositionWithOffset(positionForIndex, 0, true);
                            SharedMediaLayout.this.delegate.scrollToSharedMedia();
                        }
                    }
                }
                return null;
            }
        };
        this.shiftDp = -5.0f;
        this.sharedMediaData = new SharedMediaData[9];
        this.notificationsLocker = new AnimationNotificationsLocker();
        this.messageAlphaEnter = new SparseArray<>();
        this.firstTab = -1;
        this.lastMainTabId = -2;
        this.sharedLinkCellDelegate = new AnonymousClass49();
        this.subTabsVisibilityFactor = 0.0f;
        this.storyAlbumsById = new HashMap<>();
        this.storyAlbumsByTabType = new HashMap<>();
        BlurredBackgroundSourceColor blurredBackgroundSourceColor = new BlurredBackgroundSourceColor();
        this.iBlur3SourceColor = blurredBackgroundSourceColor;
        blurredBackgroundSourceColor.setColor(getThemedColor(Theme.key_windowBackgroundWhite));
        BlurredBackgroundDrawableViewFactory blurredBackgroundDrawableViewFactory2 = blurredBackgroundDrawableViewFactory == null ? new BlurredBackgroundDrawableViewFactory(blurredBackgroundSourceColor) : blurredBackgroundDrawableViewFactory;
        this.viewType = i4;
        this.resourcesProvider = resourcesProvider;
        FlickerLoadingView flickerLoadingView = new FlickerLoadingView(context);
        this.globalGradientView = flickerLoadingView;
        flickerLoadingView.setIsSingleCell(true);
        TLRPC.User user = baseFragment.getMessagesController().getUser(Long.valueOf(j));
        this.sharedMediaPreloader = sharedMediaPreloader;
        this.delegate = delegate;
        int[] lastMediaCount = sharedMediaPreloader.getLastMediaCount();
        long j2 = this.sharedMediaPreloader.topicId;
        this.topicId = j2;
        this.hasMedia = new int[]{lastMediaCount[0], lastMediaCount[1], lastMediaCount[2], lastMediaCount[3], lastMediaCount[4], lastMediaCount[5], j2 == 0 ? i : 0, lastMediaCount[7], lastMediaCount[8]};
        if (userFull != null) {
            profileTab = userFull.main_tab;
        } else {
            profileTab = chatFull2 != null ? chatFull2.main_tab : null;
        }
        if (i2 == 14 || i2 == 10 || i2 == 11 || i2 == 6) {
            this.initialTab = i2;
        } else if (user != null && user.bot && user.bot_has_main_app && user.bot_can_edit) {
            this.initialTab = 13;
        } else if (userFull != null && (botInfo = userFull.bot_info) != null && botInfo.has_preview_medias) {
            this.initialTab = 8;
        } else if ((profileTab instanceof TLRPC.TL_profileTabPosts) && ((userFull != null && userFull.stories_pinned_available) || ((chatFull2 != null && chatFull2.stories_pinned_available) || isStoriesView()))) {
            this.initialTab = 8;
        } else if ((profileTab instanceof TLRPC.TL_profileTabGifts) && ((userFull != null && userFull.stargifts_count > 0) || (chatFull2 != null && chatFull2.stargifts_count > 0))) {
            this.initialTab = 14;
        } else if ((profileTab instanceof TLRPC.TL_profileTabFiles) && ((i14 = this.hasMedia[1]) == -1 || i14 > 0)) {
            this.initialTab = 1;
        } else if ((profileTab instanceof TLRPC.TL_profileTabGifs) && ((i13 = this.hasMedia[5]) == -1 || i13 > 0)) {
            this.initialTab = 5;
        } else if ((profileTab instanceof TLRPC.TL_profileTabLinks) && ((i12 = this.hasMedia[3]) == -1 || i12 > 0)) {
            this.initialTab = 3;
        } else if ((profileTab instanceof TLRPC.TL_profileTabMusic) && ((i11 = this.hasMedia[4]) == -1 || i11 > 0)) {
            this.initialTab = 4;
        } else if ((profileTab instanceof TLRPC.TL_profileTabVoice) && ((i10 = this.hasMedia[2]) == -1 || i10 > 0)) {
            this.initialTab = 2;
        } else if ((userFull != null && userFull.stories_pinned_available) || ((chatFull2 != null && chatFull2.stories_pinned_available) || isStoriesView())) {
            this.initialTab = getInitialTab();
        } else if ((userFull != null && userFull.stargifts_count > 0) || (chatFull2 != null && chatFull2.stargifts_count > 0)) {
            this.initialTab = 14;
        } else if (i2 == -1 || this.topicId != 0) {
            int i15 = 0;
            while (true) {
                int[] iArr = this.hasMedia;
                if (i15 >= iArr.length) {
                    break;
                }
                int i16 = iArr[i15];
                if (i16 == -1 || i16 > 0) {
                    break;
                } else {
                    i15++;
                }
            }
        } else {
            this.initialTab = i2;
        }
        onTabProgress(i2);
        this.info = chatFull2;
        this.userInfo = userFull;
        if (chatFull2 != null) {
            this.mergeDialogId = -chatFull2.migrated_from_chat_id;
        }
        this.dialog_id = j;
        int i17 = 0;
        while (true) {
            SharedMediaData[] sharedMediaDataArr = this.sharedMediaData;
            if (i17 >= sharedMediaDataArr.length) {
                break;
            }
            sharedMediaDataArr[i17] = new SharedMediaData();
            BlurredBackgroundDrawableViewFactory blurredBackgroundDrawableViewFactory3 = blurredBackgroundDrawableViewFactory2;
            this.sharedMediaData[i17].max_id[0] = DialogObject.isEncryptedDialog(this.dialog_id) ? Integer.MIN_VALUE : Integer.MAX_VALUE;
            this.sharedMediaData[i17].max_id[1] = Integer.MAX_VALUE;
            fillMediaData(i17);
            if (this.mergeDialogId != 0 && this.info != null && this.sharedMediaData[i17].messagesDict[1].size() == 0) {
                SharedMediaData sharedMediaData = this.sharedMediaData[i17];
                sharedMediaData.max_id[1] = this.info.migrated_from_max_id;
                sharedMediaData.endReached[1] = false;
            }
            i17++;
            blurredBackgroundDrawableViewFactory2 = blurredBackgroundDrawableViewFactory3;
        }
        BlurredBackgroundDrawableViewFactory blurredBackgroundDrawableViewFactory4 = blurredBackgroundDrawableViewFactory2;
        this.profileActivity = baseFragment;
        this.actionBar = baseFragment.getActionBar();
        this.mediaColumnsCount[0] = overrideColumnsCount() <= 0 ? SharedConfig.mediaColumnsCount : overrideColumnsCount();
        this.mediaColumnsCount[1] = overrideColumnsCount() <= 0 ? SharedConfig.storiesColumnsCount : overrideColumnsCount();
        this.observersGroup = this.profileActivity.getNotificationCenter().createObserversGroup(this).add(NotificationCenter.mediaDidLoad).add(NotificationCenter.messagesDeleted).add(NotificationCenter.didReceiveNewMessages).add(NotificationCenter.messageReceivedByServer).add(NotificationCenter.messagePlayingDidReset).add(NotificationCenter.messagePlayingPlayStateChanged).add(NotificationCenter.messagePlayingDidStart).add(NotificationCenter.storiesListUpdated).add(NotificationCenter.storiesUpdated).add(NotificationCenter.channelRecommendationsLoaded).add(NotificationCenter.savedMessagesDialogsUpdate).add(NotificationCenter.dialogsNeedReload).add(NotificationCenter.starUserGiftsLoaded).add(NotificationCenter.updatedChatRanks).add(NotificationCenter.didUpdatePollResults);
        for (int i18 = 0; i18 < 10; i18++) {
            if (i2 == 4) {
                SharedAudioCell sharedAudioCell = new SharedAudioCell(context) { // from class: org.telegram.ui.Components.SharedMediaLayout.2
                    @Override // org.telegram.ui.Cells.SharedAudioCell
                    public boolean needPlayMessage(MessageObject messageObject) {
                        if (messageObject.isVoice() || messageObject.isRoundVideo()) {
                            boolean zPlayMessage = MediaController.getInstance().playMessage(messageObject);
                            MediaController.getInstance().setVoiceMessagesPlaylist(zPlayMessage ? SharedMediaLayout.this.sharedMediaData[4].messages : null, false);
                            return zPlayMessage;
                        }
                        if (messageObject.isMusic()) {
                            return MediaController.getInstance().setPlaylist(SharedMediaLayout.this.sharedMediaData[4].messages, messageObject, SharedMediaLayout.this.mergeDialogId);
                        }
                        return false;
                    }
                };
                sharedAudioCell.initStreamingIcons();
                this.audioCellCache.add(sharedAudioCell);
            }
        }
        this.maximumVelocity = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
        this.searching = false;
        this.searchingReaction = null;
        SearchTagsList searchTagsList = this.searchTagsList;
        if (searchTagsList != null) {
            searchTagsList.show(false);
        }
        this.searchWas = false;
        Drawable drawable = context.getResources().getDrawable(C2807R.drawable.photos_header_shadow);
        this.pinnedHeaderShadowDrawable = drawable;
        drawable.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_windowBackgroundGrayShadow), PorterDuff.Mode.MULTIPLY));
        ScrollSlidingTextTabStripInner scrollSlidingTextTabStripInner = this.scrollSlidingTextTabStrip;
        int currentTabId = scrollSlidingTextTabStripInner != null ? scrollSlidingTextTabStripInner.getCurrentTabId() : i2;
        this.scrollSlidingTextTabStrip = createScrollingTextTabStrip(context);
        for (int i19 = 1; i19 >= 0; i19--) {
            this.selectedFiles[i19].clear();
        }
        this.cantDeleteMessagesCount = 0;
        this.actionModeViews.clear();
        SavedDialogsAdapter savedDialogsAdapter = this.savedDialogsAdapter;
        if (savedDialogsAdapter != null) {
            savedDialogsAdapter.unselectAll();
        }
        if (addActionButtons()) {
            ActionBarMenu actionBarMenuCreateMenu = this.actionBar.createMenu();
            actionBarMenuCreateMenu.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: org.telegram.ui.Components.SharedMediaLayout.3
                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(View view, int i20, int i21, int i22, int i23, int i24, int i25, int i26, int i27) {
                    if (SharedMediaLayout.this.searchItem == null) {
                        return;
                    }
                    SharedMediaLayout.this.searchItem.setTranslationX(((View) SharedMediaLayout.this.searchItem.getParent()).getMeasuredWidth() - SharedMediaLayout.this.searchItem.getRight());
                }
            });
            if (this.dialog_id == this.profileActivity.getUserConfig().getClientUserId() && (this.profileActivity instanceof MediaActivity) && canShowSearchItem()) {
                this.searchItemIcon = actionBarMenuCreateMenu.addItem(11, C2807R.drawable.outline_header_search);
            }
            ActionBarMenuItem actionBarMenuItemSearchListener = actionBarMenuCreateMenu.addItem(0, 0).setIsSearchField(true).setActionBarMenuItemSearchListener(new C45774());
            this.searchItem = actionBarMenuItemSearchListener;
            actionBarMenuItemSearchListener.setTranslationY(AndroidUtilities.dp(10.0f));
            ActionBarMenuItem actionBarMenuItem = this.searchItem;
            SearchTagsList searchTagsList2 = this.searchTagsList;
            actionBarMenuItem.setSearchFieldHint(LocaleController.getString((searchTagsList2 != null && searchTagsList2.hasFilters() && getSelectedTab() == 11) ? C2807R.string.SavedTagSearchHint : C2807R.string.Search));
            this.searchItem.setContentDescription(LocaleController.getString("Search", C2807R.string.Search));
            this.searchItem.setVisibility(isStoriesView() ? 8 : 4);
        }
        ImageView imageView = new ImageView(context);
        this.photoVideoOptionsItem = imageView;
        imageView.setContentDescription(LocaleController.getString("AccDescrMoreOptions", C2807R.string.AccDescrMoreOptions));
        this.photoVideoOptionsItem.setTranslationY(AndroidUtilities.dp(10.0f));
        this.photoVideoOptionsItem.setVisibility(4);
        if (!isArchivedOnlyStoriesView() && !isSearchingStories()) {
            this.actionBar.addView(this.photoVideoOptionsItem, LayoutHelper.createFrame(48, 56, 85));
            RLottieImageView rLottieImageView = new RLottieImageView(context);
            this.optionsSearchImageView = rLottieImageView;
            rLottieImageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            this.optionsSearchImageView.setAnimation(C2807R.raw.options_to_search, 24, 24);
            this.optionsSearchImageView.getAnimatedDrawable().multiplySpeed(2.0f);
            this.optionsSearchImageView.getAnimatedDrawable().setPlayInDirectionOfCustomEndFrame(true);
            this.optionsSearchImageView.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_actionBarActionModeDefaultIcon), PorterDuff.Mode.SRC_IN));
            this.optionsSearchImageView.setVisibility(8);
            this.actionBar.addView(this.optionsSearchImageView, LayoutHelper.createFrame(48, 56, 85));
        }
        this.photoVideoOptionsItem.setOnClickListener(new ViewOnClickListenerC45805(j, resourcesProvider, context));
        ActionBarMenuItem actionBarMenuItem2 = this.searchItem;
        if (actionBarMenuItem2 != null) {
            EditTextBoldCursor searchField = actionBarMenuItem2.getSearchField();
            int i20 = Theme.key_windowBackgroundWhiteBlackText;
            searchField.setTextColor(getThemedColor(i20));
            searchField.setHintTextColor(getThemedColor(Theme.key_player_time));
            searchField.setCursorColor(getThemedColor(i20));
        }
        this.searchItemState = 0;
        BaseFragment baseFragment2 = this.profileActivity;
        SizeNotifierFrameLayout sizeNotifierFrameLayout = (baseFragment2 == null || !(baseFragment2.getFragmentView() instanceof SizeNotifierFrameLayout)) ? null : (SizeNotifierFrameLayout) this.profileActivity.getFragmentView();
        BlurredLinearLayout blurredLinearLayout = new BlurredLinearLayout(context, sizeNotifierFrameLayout);
        this.actionModeLayout = blurredLinearLayout;
        blurredLinearLayout.setBackgroundColor(getThemedColor(Theme.key_windowBackgroundGray));
        this.actionModeLayout.setAlpha(0.0f);
        this.actionModeLayout.setClickable(true);
        this.actionModeLayout.setVisibility(4);
        ImageView imageView2 = new ImageView(context);
        this.closeButton = imageView2;
        imageView2.setScaleType(ImageView.ScaleType.CENTER);
        ImageView imageView3 = this.closeButton;
        BackDrawable backDrawable = new BackDrawable(true);
        this.backDrawable = backDrawable;
        imageView3.setImageDrawable(backDrawable);
        BackDrawable backDrawable2 = this.backDrawable;
        int i21 = Theme.key_actionBarActionModeDefaultIcon;
        backDrawable2.setColor(getThemedColor(i21));
        ImageView imageView4 = this.closeButton;
        int i22 = Theme.key_actionBarActionModeDefaultSelector;
        imageView4.setBackground(Theme.createSelectorDrawable(getThemedColor(i22), 1));
        this.closeButton.setContentDescription(LocaleController.getString("Close", C2807R.string.Close));
        this.actionModeLayout.addView(this.closeButton, new LinearLayout.LayoutParams(AndroidUtilities.dp(54.0f), -1));
        this.actionModeViews.add(this.closeButton);
        this.closeButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda13
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$4(view);
            }
        });
        NumberTextView numberTextView = new NumberTextView(context);
        this.selectedMessagesCountTextView = numberTextView;
        numberTextView.setTextSize(18);
        this.selectedMessagesCountTextView.setTypeface(AndroidUtilities.bold());
        this.selectedMessagesCountTextView.setTextColor(getThemedColor(i21));
        this.actionModeLayout.addView(this.selectedMessagesCountTextView, LayoutHelper.createLinear(0, -1, 1.0f, 18, 0, 0, 0));
        this.actionModeViews.add(this.selectedMessagesCountTextView);
        SizeNotifierFrameLayout sizeNotifierFrameLayout2 = sizeNotifierFrameLayout;
        if (DialogObject.isEncryptedDialog(this.dialog_id)) {
            i5 = i21;
            i6 = i22;
        } else {
            if (isStoriesView()) {
                i5 = i21;
                i6 = i22;
            } else {
                i6 = i22;
                i5 = i21;
                ActionBarMenuItem actionBarMenuItem3 = new ActionBarMenuItem(context, (ActionBarMenu) null, getThemedColor(i22), getThemedColor(i21), false);
                this.gotoItem = actionBarMenuItem3;
                actionBarMenuItem3.setIcon(C2807R.drawable.msg_message);
                this.gotoItem.setContentDescription(LocaleController.getString(C2807R.string.AccDescrGoToMessage));
                this.gotoItem.setDuplicateParentStateEnabled(false);
                this.actionModeLayout.addView(this.gotoItem, new LinearLayout.LayoutParams(AndroidUtilities.dp(54.0f), -1));
                this.actionModeViews.add(this.gotoItem);
                this.gotoItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda14
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$new$5(view);
                    }
                });
                ActionBarMenuItem actionBarMenuItem4 = new ActionBarMenuItem(context, (ActionBarMenu) null, getThemedColor(i6), getThemedColor(i5), false);
                this.forwardItem = actionBarMenuItem4;
                actionBarMenuItem4.setIcon(C2807R.drawable.msg_forward);
                this.forwardItem.setContentDescription(LocaleController.getString(C2807R.string.Forward));
                this.forwardItem.setDuplicateParentStateEnabled(false);
                this.actionModeLayout.addView(this.forwardItem, new LinearLayout.LayoutParams(AndroidUtilities.dp(54.0f), -1));
                this.actionModeViews.add(this.forwardItem);
                this.forwardItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda15
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$new$6(view);
                    }
                });
                this.forwardItem.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda16
                    @Override // android.view.View.OnLongClickListener
                    public final boolean onLongClick(View view) {
                        return this.f$0.lambda$new$7(view);
                    }
                });
            }
            ActionBarMenuItem actionBarMenuItem5 = new ActionBarMenuItem(context, (ActionBarMenu) null, getThemedColor(i6), getThemedColor(i5), false);
            this.pinItem = actionBarMenuItem5;
            actionBarMenuItem5.setIcon(C2807R.drawable.msg_pin);
            this.pinItem.setContentDescription(LocaleController.getString(C2807R.string.PinMessage));
            this.pinItem.setDuplicateParentStateEnabled(false);
            this.pinItem.setVisibility(8);
            this.actionModeLayout.addView(this.pinItem, new LinearLayout.LayoutParams(AndroidUtilities.dp(54.0f), -1));
            this.actionModeViews.add(this.pinItem);
            this.pinItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda17
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$8(view);
                }
            });
            ActionBarMenuItem actionBarMenuItem6 = new ActionBarMenuItem(context, (ActionBarMenu) null, getThemedColor(i6), getThemedColor(i5), false);
            this.unpinItem = actionBarMenuItem6;
            actionBarMenuItem6.setIcon(C2807R.drawable.msg_unpin);
            this.unpinItem.setContentDescription(LocaleController.getString(C2807R.string.UnpinMessage));
            this.unpinItem.setDuplicateParentStateEnabled(false);
            this.unpinItem.setVisibility(8);
            this.actionModeLayout.addView(this.unpinItem, new LinearLayout.LayoutParams(AndroidUtilities.dp(54.0f), -1));
            this.actionModeViews.add(this.unpinItem);
            this.unpinItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda18
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$9(view);
                }
            });
            updateForwardItem();
        }
        ActionBarMenuItem actionBarMenuItem7 = new ActionBarMenuItem(context, (ActionBarMenu) null, getThemedColor(i6), getThemedColor(i5), false);
        this.deleteItem = actionBarMenuItem7;
        actionBarMenuItem7.setIcon(C2807R.drawable.msg_delete);
        this.deleteItem.setContentDescription(LocaleController.getString("Delete", C2807R.string.Delete));
        this.deleteItem.setDuplicateParentStateEnabled(false);
        this.actionModeLayout.addView(this.deleteItem, new LinearLayout.LayoutParams(AndroidUtilities.dp(54.0f), -1));
        this.actionModeViews.add(this.deleteItem);
        this.deleteItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda19
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$10(view);
            }
        });
        this.photoVideoAdapter = new SharedPhotoVideoAdapter(context) { // from class: org.telegram.ui.Components.SharedMediaLayout.6
            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public void notifyDataSetChanged() {
                if (SharedMediaLayout.this.postNotifyDataSetChangedSafely(this)) {
                    return;
                }
                super.notifyDataSetChanged();
                MediaPage mediaPage2 = SharedMediaLayout.this.getMediaPage(0);
                if (mediaPage2 == null || mediaPage2.animationSupportingListView.getVisibility() != 0) {
                    return;
                }
                SharedMediaLayout sharedMediaLayout2 = SharedMediaLayout.this;
                sharedMediaLayout2.lambda$postNotifyDataSetChangedSafely$0(sharedMediaLayout2.animationSupportingPhotoVideoAdapter);
            }
        };
        this.animationSupportingPhotoVideoAdapter = new SharedPhotoVideoAdapter(context);
        this.documentsAdapter = new SharedDocumentsAdapter(context, 1);
        this.voiceAdapter = new SharedDocumentsAdapter(context, 2);
        this.audioAdapter = new SharedDocumentsAdapter(context, 4);
        this.pollAdapter = new PollAdapter(context, this.profileActivity.getCurrentAccount(), this.profileActivity.getResourceProvider());
        this.gifAdapter = new GifAdapter(context);
        this.documentsSearchAdapter = new MediaSearchAdapter(context, 1);
        this.audioSearchAdapter = new MediaSearchAdapter(context, 4);
        this.linksSearchAdapter = new MediaSearchAdapter(context, 3);
        this.groupUsersSearchAdapter = new GroupUsersSearchAdapter(context);
        this.commonGroupsAdapter = new CommonGroupsAdapter(context);
        this.channelRecommendationsAdapter = new ChannelRecommendationsAdapter(context);
        this.savedDialogsAdapter = new SavedDialogsAdapter(context);
        this.savedMessagesSearchAdapter = new SavedMessagesSearchAdapter(context);
        if (!isStoriesView() && !includeSavedDialogs() && this.topicId == 0) {
            Bundle bundle = new Bundle();
            bundle.putLong("user_id", this.profileActivity.getUserConfig().getClientUserId());
            bundle.putInt("chatMode", 3);
            ChatActivityContainer chatActivityContainer = new ChatActivityContainer(context, this.profileActivity.getParentLayout(), bundle) { // from class: org.telegram.ui.Components.SharedMediaLayout.7
                @Override // org.telegram.ui.ChatActivityContainer
                public void onSearchLoadingUpdate(boolean z) {
                    if (SharedMediaLayout.this.searchItem != null) {
                        SharedMediaLayout.this.searchItem.setShowSearchProgress(z);
                    }
                }
            };
            this.savedMessagesContainer = chatActivityContainer;
            chatActivityContainer.chatActivity.setSavedDialog(this.dialog_id);
            ChatActivityContainer chatActivityContainer2 = this.savedMessagesContainer;
            chatActivityContainer2.chatActivity.reversed = true;
            chatActivityContainer2.setClipToOutline(true);
            this.savedMessagesContainer.setOutlineProvider(new ViewOutlineProvider() { // from class: org.telegram.ui.Components.SharedMediaLayout.8
                @Override // android.view.ViewOutlineProvider
                public void getOutline(View view, Outline outline) {
                    outline.setRoundRect(0, 0, view.getWidth(), view.getHeight() + AndroidUtilities.dp(24.0f), AndroidUtilities.dp(24.0f));
                }
            });
        }
        ChatUsersAdapter chatUsersAdapter = new ChatUsersAdapter(context);
        this.chatUsersAdapter = chatUsersAdapter;
        if (this.topicId == 0) {
            chatUsersAdapter.sortedUsers = arrayList;
            this.chatUsersAdapter.chatInfo = currentTabId != 7 ? null : chatFull2;
        }
        this.storiesAdapter = new StoriesAdapter(context, false) { // from class: org.telegram.ui.Components.SharedMediaLayout.9
            @Override // org.telegram.ui.Components.SharedMediaLayout.StoriesAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
            public void notifyDataSetChanged() {
                super.notifyDataSetChanged();
                MediaPage mediaPage2 = SharedMediaLayout.this.getMediaPage(8);
                if (mediaPage2 != null && mediaPage2.animationSupportingListView.getVisibility() == 0) {
                    SharedMediaLayout.this.animationSupportingStoriesAdapter.notifyDataSetChanged();
                }
                if (mediaPage2 != null) {
                    StickerEmptyView stickerEmptyView = mediaPage2.emptyView;
                    StoriesController.StoriesList storiesList = this.storiesList;
                    stickerEmptyView.showProgress(storiesList != null && (storiesList.isLoading() || (SharedMediaLayout.this.hasInternet() && this.storiesList.getCount() > 0)));
                }
            }
        };
        this.storiesReorder = new ItemTouchHelper(new ItemTouchHelper.Callback() { // from class: org.telegram.ui.Components.SharedMediaLayout.10
            private RecyclerListView listView;

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public void onSwiped(RecyclerView.ViewHolder viewHolder, int i23) {
            }

            private StoriesAdapter getAdapter(RecyclerView recyclerView) {
                RecyclerView.Adapter adapter = recyclerView.getAdapter();
                if (adapter instanceof StoriesAdapter) {
                    return (StoriesAdapter) adapter;
                }
                return null;
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public boolean isLongPressDragEnabled() {
                SharedMediaLayout sharedMediaLayout2 = SharedMediaLayout.this;
                if (sharedMediaLayout2.isActionModeShowed) {
                    return true;
                }
                ProfileStoriesCollectionTabs profileStoriesCollectionTabs3 = sharedMediaLayout2.storiesContainer;
                return profileStoriesCollectionTabs3 != null && profileStoriesCollectionTabs3.isReordering();
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public int getMovementFlags(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
                StoriesAdapter adapter = getAdapter(recyclerView);
                if (isLongPressDragEnabled() && adapter != null && adapter.canReorder(viewHolder.getAdapterPosition())) {
                    InternalListView internalListView = SharedMediaLayout.this.mediaPages[0] == null ? null : SharedMediaLayout.this.mediaPages[0].listView;
                    this.listView = internalListView;
                    if (internalListView != null) {
                        internalListView.setItemAnimator(SharedMediaLayout.this.mediaPages[0].itemAnimator);
                    }
                    return ItemTouchHelper.Callback.makeMovementFlags(15, 0);
                }
                return ItemTouchHelper.Callback.makeMovementFlags(0, 0);
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public boolean onMove(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
                StoriesAdapter adapter = getAdapter(recyclerView);
                if (adapter == null || !adapter.canReorder(viewHolder.getAdapterPosition()) || !adapter.canReorder(viewHolder2.getAdapterPosition())) {
                    return false;
                }
                adapter.swapElements(viewHolder.getAdapterPosition(), viewHolder2.getAdapterPosition());
                return true;
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public void onSelectedChanged(RecyclerView.ViewHolder viewHolder, int i23) {
                RecyclerListView recyclerListView = this.listView;
                if (recyclerListView != null && viewHolder != null) {
                    recyclerListView.hideSelector(false);
                }
                RecyclerListView recyclerListView2 = this.listView;
                if (i23 == 0) {
                    if (recyclerListView2 != null && (recyclerListView2.getAdapter() instanceof StoriesAdapter)) {
                        ((StoriesAdapter) this.listView.getAdapter()).reorderDone();
                    }
                    RecyclerListView recyclerListView3 = this.listView;
                    if (recyclerListView3 != null) {
                        recyclerListView3.setItemAnimator(null);
                    }
                } else {
                    if (recyclerListView2 != null) {
                        recyclerListView2.cancelClickRunnables(false);
                    }
                    if (viewHolder != null) {
                        viewHolder.itemView.setPressed(true);
                    }
                }
                super.onSelectedChanged(viewHolder, i23);
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public void clearView(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
                super.clearView(recyclerView, viewHolder);
                viewHolder.itemView.setPressed(false);
            }
        });
        this.animationSupportingStoriesAdapter = new StoriesAdapter(this, context, false);
        this.archivedStoriesAdapter = new StoriesAdapter(context, true) { // from class: org.telegram.ui.Components.SharedMediaLayout.11
            @Override // org.telegram.ui.Components.SharedMediaLayout.StoriesAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
            public void notifyDataSetChanged() {
                super.notifyDataSetChanged();
                MediaPage mediaPage2 = SharedMediaLayout.this.getMediaPage(9);
                if (mediaPage2 != null && mediaPage2.animationSupportingListView.getVisibility() == 0) {
                    SharedMediaLayout.this.animationSupportingArchivedStoriesAdapter.notifyDataSetChanged();
                }
                if (mediaPage2 != null) {
                    StickerEmptyView stickerEmptyView = mediaPage2.emptyView;
                    StoriesController.StoriesList storiesList = this.storiesList;
                    stickerEmptyView.showProgress(storiesList != null && (storiesList.isLoading() || (SharedMediaLayout.this.hasInternet() && this.storiesList.getCount() > 0)));
                }
            }
        };
        this.animationSupportingArchivedStoriesAdapter = new StoriesAdapter(this, context, true);
        this.linksAdapter = new SharedLinksAdapter(context);
        boolean zIsBot = isBot();
        BaseFragment baseFragment3 = this.profileActivity;
        float f = 48.0f;
        if (zIsBot) {
            sharedMediaLayout = this;
            context2 = context;
            sharedMediaLayout.botPreviewsContainer = new AnonymousClass12(context, baseFragment3, this.dialog_id);
        } else {
            context2 = context;
            sharedMediaLayout = this;
            if (baseFragment3 instanceof ProfileActivity) {
                TextView textView = new TextView(context2);
                sharedMediaLayout.saveItem = textView;
                textView.setText(LocaleController.getString(C2807R.string.Save).toUpperCase());
                sharedMediaLayout.saveItem.setTypeface(AndroidUtilities.bold());
                TextView textView2 = sharedMediaLayout.saveItem;
                int i23 = Theme.key_featuredStickers_addButton;
                textView2.setTextColor(sharedMediaLayout.getThemedColor(i23));
                sharedMediaLayout.saveItem.setTextSize(1, 15.0f);
                sharedMediaLayout.saveItem.setGravity(17);
                sharedMediaLayout.saveItem.setBackground(Theme.createSelectorDrawable(Theme.multAlpha(sharedMediaLayout.getThemedColor(i23), 0.15f), 3));
                sharedMediaLayout.saveItem.setPadding(AndroidUtilities.dp(19.0f), 0, AndroidUtilities.dp(19.0f), 0);
                sharedMediaLayout.actionBar.addView(sharedMediaLayout.saveItem, LayoutHelper.createFrame(-2, 56, 85));
                sharedMediaLayout.saveItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda20
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$new$11(view);
                    }
                });
                sharedMediaLayout.saveItem.setVisibility(8);
                sharedMediaLayout.saveItem.setAlpha(0.0f);
                sharedMediaLayout.saveItem.setScaleX(0.4f);
                sharedMediaLayout.saveItem.setScaleY(0.4f);
                BaseFragment baseFragment4 = sharedMediaLayout.profileActivity;
                AnonymousClass13 anonymousClass13 = sharedMediaLayout.new AnonymousClass13(baseFragment4, context2, baseFragment4.getCurrentAccount(), ((ProfileActivity) sharedMediaLayout.profileActivity).getDialogId(), resourcesProvider);
                resourcesProvider2 = resourcesProvider;
                sharedMediaLayout.giftsContainer = anonymousClass13;
                int iDp = AndroidUtilities.dp(48.0f);
                DialogsActivityTopPanelLayout dialogsActivityTopPanelLayout = sharedMediaLayout.topPanelLayout;
                anonymousClass13.setPaddingTop(iDp + (dialogsActivityTopPanelLayout != null ? (int) dialogsActivityTopPanelLayout.getAnimatedHeightWithPadding(0.0f) : 0));
                boolean z = sharedMediaLayout.dialog_id == UserConfig.getInstance(sharedMediaLayout.profileActivity.getCurrentAccount()).getClientUserId();
                StoriesController.StoriesCollections storyAlbumsList = sharedMediaLayout.getStoriesController().getStoryAlbumsList(sharedMediaLayout.dialog_id, false);
                boolean z2 = (storyAlbumsList == null || storyAlbumsList.collections.isEmpty()) ? false : true;
                if (z || z2) {
                    sharedMediaLayout.storiesContainer = sharedMediaLayout.new AnonymousClass15(context2, sizeNotifierFrameLayout2, sharedMediaLayout.getStoriesController().getStoryAlbumsList(sharedMediaLayout.dialog_id), sharedMediaLayout.new AnonymousClass14(context2, baseFragment, resourcesProvider2));
                }
            }
            sharedMediaLayout.setWillNotDraw(false);
            top = 0;
            iFindFirstVisibleItemPosition = -1;
            i7 = 0;
            while (true) {
                mediaPageArr = sharedMediaLayout.mediaPages;
                if (i7 < mediaPageArr.length) {
                    break;
                }
                if (i7 != 0 || (mediaPage = mediaPageArr[i7]) == null || mediaPage.layoutManager == null) {
                    i8 = top;
                    i9 = iFindFirstVisibleItemPosition;
                } else {
                    iFindFirstVisibleItemPosition = sharedMediaLayout.mediaPages[i7].layoutManager.findFirstVisibleItemPosition();
                    if (iFindFirstVisibleItemPosition != sharedMediaLayout.mediaPages[i7].layoutManager.getItemCount() - 1) {
                        RecyclerListView.Holder holder = (RecyclerListView.Holder) sharedMediaLayout.mediaPages[i7].listView.findViewHolderForAdapterPosition(iFindFirstVisibleItemPosition);
                        if (holder != null) {
                            top = holder.itemView.getTop();
                        } else {
                            iFindFirstVisibleItemPosition = -1;
                        }
                        i8 = top;
                        i9 = iFindFirstVisibleItemPosition;
                    } else {
                        i8 = top;
                        i9 = -1;
                    }
                }
                final MediaPage mediaPage2 = new MediaPage(context2) { // from class: org.telegram.ui.Components.SharedMediaLayout.16
                    @Override // android.view.View
                    public void setTranslationX(float f2) {
                        super.setTranslationX(f2);
                        if (SharedMediaLayout.this.tabsAnimationInProgress) {
                            if (SharedMediaLayout.this.mediaPages[0] == this) {
                                float fAbs = Math.abs(SharedMediaLayout.this.mediaPages[0].getTranslationX()) / SharedMediaLayout.this.mediaPages[0].getMeasuredWidth();
                                SharedMediaLayout sharedMediaLayout2 = SharedMediaLayout.this;
                                sharedMediaLayout2.selectTabWithId(sharedMediaLayout2.mediaPages[1].selectedType, fAbs);
                                boolean zCanShowSearchItem = SharedMediaLayout.this.canShowSearchItem();
                                SharedMediaLayout sharedMediaLayout3 = SharedMediaLayout.this;
                                if (zCanShowSearchItem) {
                                    int i24 = sharedMediaLayout3.searchItemState;
                                    SharedMediaLayout sharedMediaLayout4 = SharedMediaLayout.this;
                                    if (i24 == 2) {
                                        sharedMediaLayout4.searchAlpha = 1.0f - fAbs;
                                    } else if (sharedMediaLayout4.searchItemState == 1) {
                                        SharedMediaLayout.this.searchAlpha = fAbs;
                                    }
                                    SharedMediaLayout.this.updateSearchItemIcon(fAbs);
                                    SharedMediaLayout sharedMediaLayout5 = SharedMediaLayout.this;
                                    sharedMediaLayout5.optionsAlpha = sharedMediaLayout5.getPhotoVideoOptionsAlpha(fAbs);
                                    SharedMediaLayout sharedMediaLayout6 = SharedMediaLayout.this;
                                    sharedMediaLayout6.photoVideoOptionsItem.setVisibility((sharedMediaLayout6.optionsAlpha == 0.0f || !SharedMediaLayout.this.canShowSearchItem() || SharedMediaLayout.this.isArchivedOnlyStoriesView()) ? 4 : 0);
                                } else {
                                    sharedMediaLayout3.searchAlpha = 0.0f;
                                }
                                SharedMediaLayout.this.updateOptionsSearch();
                            }
                        }
                        SharedMediaLayout.this.checkStoriesTabsPosition();
                        SharedMediaLayout.this.checkUi_topPanelLayoutY();
                        SharedMediaLayout.this.invalidateBlur();
                    }
                };
                sharedMediaLayout.addView(mediaPage2, LayoutHelper.createFrame(-1, -1.0f, 51, 0.0f, sharedMediaLayout.mediaPageTopMargin(), 0.0f, 0.0f));
                if (i7 == 1) {
                    mediaPage2.setTranslationX(AndroidUtilities.displaySize.x);
                }
                sharedMediaLayout.mediaPages[i7] = mediaPage2;
                final ExtendedGridLayoutManager extendedGridLayoutManager = new ExtendedGridLayoutManager(context2, 100) { // from class: org.telegram.ui.Components.SharedMediaLayout.17
                    private Size size = new Size();

                    @Override // org.telegram.ui.Components.ExtendedGridLayoutManager, androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
                    public boolean supportsPredictiveItemAnimations() {
                        return false;
                    }

                    @Override // androidx.recyclerview.widget.LinearLayoutManager
                    public void calculateExtraLayoutSpace(RecyclerView.State state, int[] iArr2) {
                        super.calculateExtraLayoutSpace(state, iArr2);
                        int i24 = mediaPage2.selectedType;
                        if (i24 == 0 || SharedMediaLayout.isAnyStoryPageType(i24)) {
                            iArr2[1] = Math.max(iArr2[1], SharedPhotoVideoCell.getItemSize(1) * 2);
                        } else if (mediaPage2.selectedType == 1) {
                            iArr2[1] = Math.max(iArr2[1], AndroidUtilities.dp(56.0f) * 2);
                        }
                    }

                    @Override // org.telegram.ui.Components.ExtendedGridLayoutManager
                    public Size getSizeForItem(int i24) {
                        int i25;
                        int i26;
                        TLRPC.Document document = (mediaPage2.listView.getAdapter() != SharedMediaLayout.this.gifAdapter || SharedMediaLayout.this.sharedMediaData[5].messages.isEmpty()) ? null : SharedMediaLayout.this.sharedMediaData[5].messages.get(i24).getDocument();
                        Size size = this.size;
                        size.height = 100.0f;
                        size.width = 100.0f;
                        if (document != null) {
                            TLRPC.PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(document.thumbs, 90);
                            if (closestPhotoSizeWithSize != null && (i25 = closestPhotoSizeWithSize.f1019w) != 0 && (i26 = closestPhotoSizeWithSize.f1018h) != 0) {
                                Size size2 = this.size;
                                size2.width = i25;
                                size2.height = i26;
                            }
                            ArrayList<TLRPC.DocumentAttribute> arrayList2 = document.attributes;
                            for (int i27 = 0; i27 < arrayList2.size(); i27++) {
                                TLRPC.DocumentAttribute documentAttribute = arrayList2.get(i27);
                                if ((documentAttribute instanceof TLRPC.TL_documentAttributeImageSize) || (documentAttribute instanceof TLRPC.TL_documentAttributeVideo)) {
                                    Size size3 = this.size;
                                    size3.width = documentAttribute.f1017w;
                                    size3.height = documentAttribute.f1016h;
                                    break;
                                }
                            }
                        }
                        return this.size;
                    }

                    @Override // org.telegram.ui.Components.ExtendedGridLayoutManager
                    public int getFlowItemCount() {
                        if (mediaPage2.listView.getAdapter() != SharedMediaLayout.this.gifAdapter) {
                            return 0;
                        }
                        return getItemCount();
                    }

                    @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
                    public void onInitializeAccessibilityNodeInfoForItem(RecyclerView.Recycler recycler, RecyclerView.State state, View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                        super.onInitializeAccessibilityNodeInfoForItem(recycler, state, view, accessibilityNodeInfoCompat);
                        AccessibilityNodeInfoCompat.CollectionItemInfoCompat collectionItemInfo = accessibilityNodeInfoCompat.getCollectionItemInfo();
                        if (collectionItemInfo == null || !collectionItemInfo.isHeading()) {
                            return;
                        }
                        accessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(collectionItemInfo.getRowIndex(), collectionItemInfo.getRowSpan(), collectionItemInfo.getColumnIndex(), collectionItemInfo.getColumnSpan(), false));
                    }
                };
                mediaPage2.layoutManager = extendedGridLayoutManager;
                extendedGridLayoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: org.telegram.ui.Components.SharedMediaLayout.18
                    @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
                    public int getSpanSize(int i24) {
                        return Math.min(getSpanSizeInternal(i24), mediaPage2.layoutManager.getSpanCount());
                    }

                    private int getSpanSizeInternal(int i24) {
                        int i25 = SharedMediaLayout.this.mediaColumnsCount[SharedMediaLayout.isAnyStoryPageType(mediaPage2.selectedType) ? 1 : 0];
                        RecyclerView.Adapter adapter = mediaPage2.listView.getAdapter();
                        SharedPhotoVideoAdapter sharedPhotoVideoAdapter = SharedMediaLayout.this.photoVideoAdapter;
                        SharedMediaLayout sharedMediaLayout2 = SharedMediaLayout.this;
                        if (adapter == sharedPhotoVideoAdapter) {
                            if (sharedMediaLayout2.photoVideoAdapter.getItemViewType(i24) != 2) {
                                return 1;
                            }
                        } else {
                            int iStoryAlbums_getTabTypeByStoriesAdapter = sharedMediaLayout2.storyAlbums_getTabTypeByStoriesAdapter(mediaPage2.listView.getAdapter());
                            MediaPage mediaPage3 = mediaPage2;
                            if (iStoryAlbums_getTabTypeByStoriesAdapter != -1) {
                                if (mediaPage3.listView.getAdapter().getItemViewType(i24) != 2) {
                                    return 1;
                                }
                            } else {
                                RecyclerView.Adapter adapter2 = mediaPage3.listView.getAdapter();
                                GifAdapter gifAdapter = SharedMediaLayout.this.gifAdapter;
                                MediaPage mediaPage4 = mediaPage2;
                                if (adapter2 != gifAdapter) {
                                    return mediaPage4.layoutManager.getSpanCount();
                                }
                                if (mediaPage4.listView.getAdapter() == SharedMediaLayout.this.gifAdapter && SharedMediaLayout.this.sharedMediaData[5].messages.isEmpty()) {
                                    return mediaPage2.layoutManager.getSpanCount();
                                }
                                return mediaPage2.layoutManager.getSpanSizeForItem(i24);
                            }
                        }
                        return i25;
                    }
                });
                sharedMediaLayout.mediaPages[i7].itemAnimator = new DefaultItemAnimator();
                sharedMediaLayout.mediaPages[i7].itemAnimator.setDurations(280L);
                sharedMediaLayout.mediaPages[i7].itemAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
                sharedMediaLayout.mediaPages[i7].itemAnimator.setSupportsChangeAnimations(false);
                sharedMediaLayout.mediaPages[i7].listView = new SharedMediaListView(context2) { // from class: org.telegram.ui.Components.SharedMediaLayout.19
                    float lastY;
                    float startY;

                    @Override // org.telegram.ui.Components.RecyclerListView
                    public void emptyViewUpdated(boolean z3, boolean z4) {
                    }

                    @Override // org.telegram.ui.Components.SharedMediaLayout.SharedMediaListView
                    public RecyclerListView.FastScrollAdapter getMovingAdapter() {
                        boolean zIsAnyStoryPageType = SharedMediaLayout.isAnyStoryPageType(SharedMediaLayout.this.changeColumnsTab);
                        SharedMediaLayout sharedMediaLayout2 = SharedMediaLayout.this;
                        if (zIsAnyStoryPageType) {
                            return sharedMediaLayout2.storyAlbums_getStoriesAdapterByTabType(sharedMediaLayout2.changeColumnsTab);
                        }
                        return sharedMediaLayout2.photoVideoAdapter;
                    }

                    @Override // org.telegram.ui.Components.SharedMediaLayout.SharedMediaListView
                    public RecyclerListView.FastScrollAdapter getSupportingAdapter() {
                        boolean zIsAnyStoryPageType = SharedMediaLayout.isAnyStoryPageType(SharedMediaLayout.this.changeColumnsTab);
                        SharedMediaLayout sharedMediaLayout2 = SharedMediaLayout.this;
                        if (zIsAnyStoryPageType) {
                            return sharedMediaLayout2.storyAlbums_getStoriesSupportingAdapterByTabType(sharedMediaLayout2.changeColumnsTab);
                        }
                        return sharedMediaLayout2.animationSupportingPhotoVideoAdapter;
                    }

                    @Override // org.telegram.ui.Components.SharedMediaLayout.SharedMediaListView
                    public int getColumnsCount() {
                        boolean zIsAnyStoryPageType = SharedMediaLayout.isAnyStoryPageType(SharedMediaLayout.this.changeColumnsTab);
                        SharedMediaLayout sharedMediaLayout2 = SharedMediaLayout.this;
                        if (zIsAnyStoryPageType) {
                            return sharedMediaLayout2.mediaColumnsCount[1];
                        }
                        return sharedMediaLayout2.mediaColumnsCount[0];
                    }

                    @Override // org.telegram.ui.Components.SharedMediaLayout.SharedMediaListView
                    public int getAnimateToColumnsCount() {
                        return SharedMediaLayout.this.animateToColumnsCount;
                    }

                    @Override // org.telegram.ui.Components.SharedMediaLayout.SharedMediaListView
                    public boolean isChangeColumnsAnimation() {
                        return SharedMediaLayout.this.photoVideoChangeColumnsAnimation;
                    }

                    @Override // org.telegram.ui.Components.SharedMediaLayout.SharedMediaListView
                    public float getChangeColumnsProgress() {
                        return SharedMediaLayout.this.photoVideoChangeColumnsProgress;
                    }

                    @Override // org.telegram.ui.Components.SharedMediaLayout.SharedMediaListView
                    public boolean isThisListView() {
                        return this == mediaPage2.listView;
                    }

                    @Override // org.telegram.ui.Components.SharedMediaLayout.SharedMediaListView
                    public SparseArray<Float> getMessageAlphaEnter() {
                        return SharedMediaLayout.this.messageAlphaEnter;
                    }

                    @Override // org.telegram.ui.Components.SharedMediaLayout.SharedMediaListView
                    public boolean isStories() {
                        return SharedMediaLayout.isAnyStoryPageType(SharedMediaLayout.this.changeColumnsTab);
                    }

                    @Override // org.telegram.ui.Components.SharedMediaLayout.SharedMediaListView
                    public InternalListView getSupportingListView() {
                        return mediaPage2.animationSupportingListView;
                    }

                    @Override // org.telegram.ui.Components.SharedMediaLayout.SharedMediaListView
                    public void checkHighlightCell(SharedPhotoVideoCell2 sharedPhotoVideoCell2) {
                        if (sharedPhotoVideoCell2.getMessageId() == mediaPage2.highlightMessageId && sharedPhotoVideoCell2.imageReceiver.hasBitmapImage()) {
                            MediaPage mediaPage3 = mediaPage2;
                            if (!mediaPage3.highlightAnimation) {
                                mediaPage3.highlightProgress = 0.0f;
                                mediaPage3.highlightAnimation = true;
                            }
                            float f2 = mediaPage3.highlightProgress;
                            sharedPhotoVideoCell2.setHighlightProgress(f2 < 0.3f ? f2 / 0.3f : f2 > 0.7f ? (1.0f - f2) / 0.3f : 1.0f);
                            return;
                        }
                        sharedPhotoVideoCell2.setHighlightProgress(0.0f);
                    }

                    @Override // org.telegram.ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
                    public void onLayout(boolean z3, int i24, int i25, int i26, int i27) {
                        super.onLayout(z3, i24, i25, i26, i27);
                        SharedMediaLayout sharedMediaLayout2 = SharedMediaLayout.this;
                        MediaPage mediaPage3 = mediaPage2;
                        sharedMediaLayout2.checkLoadMoreScroll(mediaPage3, mediaPage3.listView, extendedGridLayoutManager);
                        if (mediaPage2.selectedType == 0) {
                            PhotoViewer.getInstance().checkCurrentImageVisibility();
                        }
                    }

                    @Override // org.telegram.ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
                    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                        if (SharedMediaLayout.this.profileActivity != null && SharedMediaLayout.this.profileActivity.isInPreviewMode()) {
                            this.lastY = motionEvent.getY();
                            if (motionEvent.getAction() == 1) {
                                SharedMediaLayout.this.profileActivity.finishPreviewFragment();
                            } else if (motionEvent.getAction() == 2) {
                                float f2 = this.startY - this.lastY;
                                SharedMediaLayout.this.profileActivity.movePreviewFragment(f2);
                                if (f2 < 0.0f) {
                                    this.startY = this.lastY;
                                }
                            }
                            return true;
                        }
                        return super.dispatchTouchEvent(motionEvent);
                    }

                    @Override // org.telegram.ui.Components.SharedMediaLayout.SharedMediaListView, org.telegram.ui.Components.BlurredRecyclerView, org.telegram.ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
                    public void dispatchDraw(Canvas canvas) {
                        View childAt;
                        View childAt2;
                        if ((getAdapter() == SharedMediaLayout.this.archivedStoriesAdapter || getAdapter() == SharedMediaLayout.this.storiesAdapter) && getChildCount() > 0 && (childAt = getChildAt(0)) != null && getChildAdapterPosition(childAt) == 0) {
                            int top2 = childAt.getTop();
                            if (SharedMediaLayout.this.photoVideoChangeColumnsAnimation) {
                                if (SharedMediaLayout.this.changeColumnsTab == (getAdapter() == SharedMediaLayout.this.storiesAdapter ? 8 : 9) && mediaPage2.animationSupportingListView.getChildCount() > 0 && (childAt2 = mediaPage2.animationSupportingListView.getChildAt(0)) != null && mediaPage2.animationSupportingListView.getChildAdapterPosition(childAt2) == 0) {
                                    top2 = AndroidUtilities.lerp(top2, childAt2.getTop(), SharedMediaLayout.this.photoVideoChangeColumnsProgress);
                                }
                            }
                            if (getAdapter() != SharedMediaLayout.this.storiesAdapter) {
                                if (this.archivedHintPaint == null) {
                                    TextPaint textPaint = new TextPaint(1);
                                    this.archivedHintPaint = textPaint;
                                    textPaint.setTextSize(AndroidUtilities.dp(14.0f));
                                    this.archivedHintPaint.setColor(getThemedColor(Theme.key_windowBackgroundWhiteGrayText2));
                                }
                                int measuredWidth = getMeasuredWidth() - AndroidUtilities.dp(60.0f);
                                StaticLayout staticLayout = this.archivedHintLayout;
                                if (staticLayout == null || staticLayout.getWidth() != measuredWidth) {
                                    this.archivedHintLayout = new StaticLayout(LocaleController.getString(SharedMediaLayout.this.isArchivedOnlyStoriesView() ? SharedMediaLayout.this.profileActivity != null && ChatObject.isChannelAndNotMegaGroup(SharedMediaLayout.this.profileActivity.getMessagesController().getChat(Long.valueOf(-SharedMediaLayout.this.dialog_id))) ? C2807R.string.ProfileStoriesArchiveChannelHint : C2807R.string.ProfileStoriesArchiveGroupHint : C2807R.string.ProfileStoriesArchiveHint), this.archivedHintPaint, measuredWidth, Layout.Alignment.ALIGN_CENTER, 1.0f, 0.0f, false);
                                    this.archivedHintLayoutWidth = 0.0f;
                                    this.archivedHintLayoutLeft = measuredWidth;
                                    for (int i24 = 0; i24 < this.archivedHintLayout.getLineCount(); i24++) {
                                        this.archivedHintLayoutWidth = Math.max(this.archivedHintLayoutWidth, this.archivedHintLayout.getLineWidth(i24));
                                        this.archivedHintLayoutLeft = Math.min(this.archivedHintLayoutLeft, this.archivedHintLayout.getLineLeft(i24));
                                    }
                                }
                                canvas.save();
                                canvas.translate(((getWidth() - this.archivedHintLayoutWidth) / 2.0f) - this.archivedHintLayoutLeft, top2 - ((AndroidUtilities.dp(64.0f) + this.archivedHintLayout.getHeight()) / 2.0f));
                                this.archivedHintLayout.draw(canvas);
                                canvas.restore();
                            }
                        }
                        super.dispatchDraw(canvas);
                        MediaPage mediaPage3 = mediaPage2;
                        if (mediaPage3.highlightAnimation) {
                            float f2 = mediaPage3.highlightProgress + 0.010666667f;
                            mediaPage3.highlightProgress = f2;
                            if (f2 >= 1.0f) {
                                mediaPage3.highlightProgress = 0.0f;
                                mediaPage3.highlightAnimation = false;
                                mediaPage3.highlightMessageId = 0;
                            }
                            invalidate();
                        }
                        if (this.poller == null) {
                            this.poller = UserListPoller.getInstance(SharedMediaLayout.this.profileActivity.getCurrentAccount());
                        }
                        this.poller.checkList(this);
                        if (isChangeColumnsAnimation()) {
                            return;
                        }
                        SharedMediaLayout.this.changeColumnsTab = -1;
                    }

                    @Override // org.telegram.ui.Components.RecyclerListView
                    public Integer getSelectorColor(int i24) {
                        if (getAdapter() == SharedMediaLayout.this.channelRecommendationsAdapter && SharedMediaLayout.this.channelRecommendationsAdapter.more > 0 && i24 == SharedMediaLayout.this.channelRecommendationsAdapter.getItemCount() - 1) {
                            return 0;
                        }
                        return super.getSelectorColor(i24);
                    }

                    @Override // androidx.recyclerview.widget.RecyclerView
                    public void onScrolled(int i24, int i25) {
                        super.onScrolled(i24, i25);
                        if (this.scrollingByUser && SharedMediaLayout.this.getSelectedTab() == 11 && SharedMediaLayout.this.profileActivity != null) {
                            AndroidUtilities.hideKeyboard(SharedMediaLayout.this.profileActivity.getParentActivity().getCurrentFocus());
                        }
                        SharedMediaLayout.this.checkStoriesTabsPosition();
                        if (getAdapter() == SharedMediaLayout.this.pollAdapter) {
                            SharedMediaLayout.this.pollAdapter.onScrolled(this);
                        }
                    }

                    @Override // android.view.View
                    public boolean performAccessibilityAction(int i24, Bundle bundle2) {
                        View viewFindOuterScrollingAncestor;
                        try {
                        } catch (Exception e) {
                            FileLog.m1040e(e);
                        }
                        if (i24 == 4096) {
                            View viewFindOuterScrollingAncestor2 = findOuterScrollingAncestor();
                            if (viewFindOuterScrollingAncestor2 != null && viewFindOuterScrollingAncestor2.canScrollVertically(1) && viewFindOuterScrollingAncestor2.performAccessibilityAction(i24, bundle2)) {
                                return true;
                            }
                        } else {
                            if (i24 == 8192) {
                                if (!canScrollVertically(-1) && (viewFindOuterScrollingAncestor = findOuterScrollingAncestor()) != null && viewFindOuterScrollingAncestor.canScrollVertically(-1) && viewFindOuterScrollingAncestor.performAccessibilityAction(i24, bundle2)) {
                                    return true;
                                }
                            }
                            return super.performAccessibilityAction(i24, bundle2);
                        }
                        return super.performAccessibilityAction(i24, bundle2);
                    }

                    private View findOuterScrollingAncestor() {
                        try {
                            for (Object parent = getParent(); parent instanceof View; parent = ((View) parent).getParent()) {
                                if (parent != this && (parent instanceof RecyclerView)) {
                                    return (View) parent;
                                }
                            }
                            return null;
                        } catch (Exception e) {
                            FileLog.m1040e(e);
                            return null;
                        }
                    }
                };
                sharedMediaLayout.mediaPages[i7].listView.setFastScrollEnabled(1);
                sharedMediaLayout.mediaPages[i7].listView.setScrollingTouchSlop(1);
                sharedMediaLayout.mediaPages[i7].listView.setPinnedSectionOffsetY(-AndroidUtilities.dp(2.0f));
                sharedMediaLayout.mediaPages[i7].listView.setPadding(0, AndroidUtilities.dp(54.0f), 0, 0);
                sharedMediaLayout.mediaPages[i7].listView.setItemAnimator(null);
                sharedMediaLayout.mediaPages[i7].listView.setClipToPadding(false);
                sharedMediaLayout.mediaPages[i7].listView.setSectionsType(2);
                sharedMediaLayout.mediaPages[i7].listView.setLayoutManager(extendedGridLayoutManager);
                MediaPage mediaPage3 = sharedMediaLayout.mediaPages[i7];
                float f2 = f;
                mediaPage3.addView(mediaPage3.listView, LayoutHelper.createFrame(-1, -1.0f));
                sharedMediaLayout.mediaPages[i7].animationSupportingListView = new InternalListView(context2);
                InternalListView internalListView = sharedMediaLayout.mediaPages[i7].animationSupportingListView;
                MediaPage mediaPage4 = sharedMediaLayout.mediaPages[i7];
                GridLayoutManager gridLayoutManager = new GridLayoutManager(context2, 3) { // from class: org.telegram.ui.Components.SharedMediaLayout.20
                    @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
                    public boolean supportsPredictiveItemAnimations() {
                        return false;
                    }

                    @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
                    public int scrollVerticallyBy(int i24, RecyclerView.Recycler recycler, RecyclerView.State state) {
                        if (SharedMediaLayout.this.photoVideoChangeColumnsAnimation) {
                            i24 = 0;
                        }
                        return super.scrollVerticallyBy(i24, recycler, state);
                    }
                };
                mediaPage4.animationSupportingLayoutManager = gridLayoutManager;
                internalListView.setLayoutManager(gridLayoutManager);
                MediaPage mediaPage5 = sharedMediaLayout.mediaPages[i7];
                mediaPage5.addView(mediaPage5.animationSupportingListView, LayoutHelper.createFrame(-1, -1.0f));
                sharedMediaLayout.mediaPages[i7].animationSupportingListView.setVisibility(8);
                sharedMediaLayout.mediaPages[i7].animationSupportingListView.addItemDecoration(new RecyclerView.ItemDecoration() { // from class: org.telegram.ui.Components.SharedMediaLayout.21
                    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
                    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
                        if (view instanceof SharedPhotoVideoCell2) {
                            SharedPhotoVideoCell2 sharedPhotoVideoCell2 = (SharedPhotoVideoCell2) view;
                            int childAdapterPosition = mediaPage2.animationSupportingListView.getChildAdapterPosition(sharedPhotoVideoCell2);
                            int spanCount = mediaPage2.animationSupportingLayoutManager.getSpanCount();
                            sharedPhotoVideoCell2.isTop = childAdapterPosition < spanCount;
                            int i24 = childAdapterPosition % spanCount;
                            sharedPhotoVideoCell2.isFirst = i24 == 0;
                            sharedPhotoVideoCell2.isLast = i24 == spanCount - 1;
                            rect.left = 0;
                            rect.top = 0;
                            rect.bottom = 0;
                            rect.right = 0;
                            return;
                        }
                        rect.left = 0;
                        rect.top = 0;
                        rect.bottom = 0;
                        rect.right = 0;
                    }
                });
                sharedMediaLayout.mediaPages[i7].listView.addItemDecoration(new RecyclerView.ItemDecoration() { // from class: org.telegram.ui.Components.SharedMediaLayout.22
                    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
                    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
                        if (mediaPage2.listView.getAdapter() == SharedMediaLayout.this.gifAdapter) {
                            int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
                            rect.left = 0;
                            rect.bottom = 0;
                            if (!mediaPage2.layoutManager.isFirstRow(childAdapterPosition)) {
                                rect.top = AndroidUtilities.dp(2.0f);
                            } else {
                                rect.top = 0;
                            }
                            rect.right = mediaPage2.layoutManager.isLastInRow(childAdapterPosition) ? 0 : AndroidUtilities.dp(2.0f);
                            return;
                        }
                        if (view instanceof SharedPhotoVideoCell2) {
                            SharedPhotoVideoCell2 sharedPhotoVideoCell2 = (SharedPhotoVideoCell2) view;
                            int childAdapterPosition2 = mediaPage2.listView.getChildAdapterPosition(sharedPhotoVideoCell2);
                            int spanCount = mediaPage2.layoutManager.getSpanCount();
                            sharedPhotoVideoCell2.isTop = childAdapterPosition2 < spanCount;
                            int i24 = childAdapterPosition2 % spanCount;
                            sharedPhotoVideoCell2.isFirst = i24 == 0;
                            sharedPhotoVideoCell2.isLast = i24 == spanCount - 1;
                            rect.left = 0;
                            rect.top = 0;
                            rect.bottom = 0;
                            rect.right = 0;
                            return;
                        }
                        rect.left = 0;
                        rect.top = 0;
                        rect.bottom = 0;
                        rect.right = 0;
                    }
                });
                final Theme.ResourcesProvider resourcesProvider3 = resourcesProvider2;
                sharedMediaLayout.mediaPages[i7].listView.setOnItemClickListener(new RecyclerListView.OnItemClickListenerExtended() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda21
                    @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListenerExtended
                    public final void onItemClick(View view, int i24, float f3, float f4) {
                        this.f$0.lambda$new$30(mediaPage2, context2, j, resourcesProvider3, view, i24, f3, f4);
                    }
                });
                sharedMediaLayout.mediaPages[i7].listView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.SharedMediaLayout.24
                    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                    public void onScrollStateChanged(RecyclerView recyclerView, int i24) {
                        SharedMediaLayout.this.scrolling = i24 != 0;
                    }

                    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                    public void onScrolled(RecyclerView recyclerView, int i24, int i25) {
                        int i26;
                        SharedMediaLayout.this.checkLoadMoreScroll(mediaPage2, (RecyclerListView) recyclerView, extendedGridLayoutManager);
                        if (i25 != 0 && ((SharedMediaLayout.this.mediaPages[0].selectedType == 0 || SharedMediaLayout.this.mediaPages[0].selectedType == 5) && !SharedMediaLayout.this.sharedMediaData[0].messages.isEmpty())) {
                            SharedMediaLayout.this.showFloatingDateView();
                        }
                        if (i25 != 0 && ((i26 = mediaPage2.selectedType) == 0 || SharedMediaLayout.isAnyStoryPageType(i26))) {
                            SharedMediaLayout.showFastScrollHint(mediaPage2, SharedMediaLayout.this.sharedMediaData, true);
                        }
                        mediaPage2.listView.checkSection(true);
                        MediaPage mediaPage6 = mediaPage2;
                        if (mediaPage6.fastScrollHintView != null) {
                            mediaPage6.invalidate();
                        }
                        SharedMediaLayout.this.invalidateBlur();
                    }
                });
                sharedMediaLayout.mediaPages[i7].listView.setOnItemLongClickListener(new RecyclerListView.OnItemLongClickListenerExtended() { // from class: org.telegram.ui.Components.SharedMediaLayout.25
                    @Override // org.telegram.ui.Components.RecyclerListView.OnItemLongClickListenerExtended
                    public boolean onItemClick(View view, int i24, float f3, float f4) {
                        int iIntValue;
                        int i25 = 0;
                        if (SharedMediaLayout.this.photoVideoChangeColumnsAnimation || mediaPage2.listView.getAdapter() == SharedMediaLayout.this.savedMessagesSearchAdapter) {
                            return false;
                        }
                        SharedMediaLayout sharedMediaLayout2 = SharedMediaLayout.this;
                        if (sharedMediaLayout2.isActionModeShowed) {
                            MediaPage mediaPage6 = mediaPage2;
                            if (mediaPage6.selectedType != 11) {
                                mediaPage6.listView.clickItem(view, i24);
                                return true;
                            }
                        }
                        int i26 = mediaPage2.selectedType;
                        if (i26 == 7 && (view instanceof UserCell)) {
                            if (sharedMediaLayout2.chatUsersAdapter.sortedUsers.isEmpty()) {
                                iIntValue = i24;
                            } else {
                                if (i24 >= SharedMediaLayout.this.chatUsersAdapter.sortedUsers.size()) {
                                    return false;
                                }
                                iIntValue = ((Integer) SharedMediaLayout.this.chatUsersAdapter.sortedUsers.get(i24)).intValue();
                            }
                            if (iIntValue < 0 || iIntValue >= SharedMediaLayout.this.chatUsersAdapter.chatInfo.participants.participants.size()) {
                                return false;
                            }
                            TLRPC.ChatParticipant chatParticipant = SharedMediaLayout.this.chatUsersAdapter.chatInfo.participants.participants.get(iIntValue);
                            RecyclerListView recyclerListView = (RecyclerListView) view.getParent();
                            while (true) {
                                if (i25 >= recyclerListView.getChildCount()) {
                                    break;
                                }
                                View childAt = recyclerListView.getChildAt(i25);
                                if (recyclerListView.getChildAdapterPosition(childAt) == i24) {
                                    view = childAt;
                                    break;
                                }
                                i25++;
                            }
                            return SharedMediaLayout.this.onMemberClick(chatParticipant, true, view);
                        }
                        if (i26 == 1 && (view instanceof SharedDocumentCell)) {
                            return sharedMediaLayout2.onItemLongClick(((SharedDocumentCell) view).getMessage(), view, 0);
                        }
                        if (i26 == 3 && (view instanceof SharedLinkCell)) {
                            return sharedMediaLayout2.onItemLongClick(((SharedLinkCell) view).getMessage(), view, 0);
                        }
                        if ((i26 == 2 || i26 == 4) && (view instanceof SharedAudioCell)) {
                            return sharedMediaLayout2.onItemLongClick(((SharedAudioCell) view).getMessage(), view, 0);
                        }
                        if (i26 == 5 && (view instanceof ContextLinkCell)) {
                            return sharedMediaLayout2.onItemLongClick((MessageObject) ((ContextLinkCell) view).getParentObject(), view, 0);
                        }
                        if ((i26 == 0 || (SharedMediaLayout.isAnyStoryPageType(i26) && SharedMediaLayout.this.canEditStories())) && (view instanceof SharedPhotoVideoCell2)) {
                            MessageObject messageObject = ((SharedPhotoVideoCell2) view).getMessageObject();
                            if (messageObject != null) {
                                return SharedMediaLayout.this.onItemLongClick(messageObject, view, mediaPage2.selectedType);
                            }
                        } else {
                            int i27 = mediaPage2.selectedType;
                            if (i27 == 10) {
                                SharedMediaLayout.this.channelRecommendationsAdapter.openPreview(i24);
                                return true;
                            }
                            if (i27 == 11) {
                                SharedMediaLayout.this.savedDialogsAdapter.select(view);
                                return true;
                            }
                        }
                        return false;
                    }

                    @Override // org.telegram.ui.Components.RecyclerListView.OnItemLongClickListenerExtended
                    public void onMove(float f3, float f4) {
                        if (SharedMediaLayout.this.profileActivity != null) {
                            Point point = AndroidUtilities.displaySize;
                            if (point.x > point.y) {
                                SharedMediaLayout.this.profileActivity.movePreviewFragment(f4);
                            }
                        }
                    }

                    @Override // org.telegram.ui.Components.RecyclerListView.OnItemLongClickListenerExtended
                    public void onLongClickRelease() {
                        if (SharedMediaLayout.this.profileActivity != null) {
                            Point point = AndroidUtilities.displaySize;
                            if (point.x > point.y) {
                                SharedMediaLayout.this.profileActivity.finishPreviewFragment();
                            }
                        }
                    }
                });
                if (i7 == 0 && i9 != -1) {
                    extendedGridLayoutManager.scrollToPositionWithOffset(i9, i8);
                }
                final InternalListView internalListView2 = sharedMediaLayout.mediaPages[i7].listView;
                sharedMediaLayout.mediaPages[i7].animatingImageView = new ClippingImageView(context2) { // from class: org.telegram.ui.Components.SharedMediaLayout.26
                    @Override // android.view.View
                    public void invalidate() {
                        super.invalidate();
                        internalListView2.invalidate();
                    }
                };
                sharedMediaLayout.mediaPages[i7].animatingImageView.setVisibility(8);
                sharedMediaLayout.mediaPages[i7].listView.addOverlayView(sharedMediaLayout.mediaPages[i7].animatingImageView, LayoutHelper.createFrame(-1, -1.0f));
                sharedMediaLayout.mediaPages[i7].progressView = new FlickerLoadingView(context2) { // from class: org.telegram.ui.Components.SharedMediaLayout.27
                    @Override // org.telegram.ui.Components.FlickerLoadingView
                    public int getColumnsCount() {
                        return SharedMediaLayout.this.mediaColumnsCount[SharedMediaLayout.isAnyStoryPageType(mediaPage2.selectedType) ? 1 : 0];
                    }

                    @Override // org.telegram.ui.Components.FlickerLoadingView
                    public int getViewType() {
                        setIsSingleCell(false);
                        int i24 = mediaPage2.selectedType;
                        if (i24 == 0 || i24 == 5) {
                            return 2;
                        }
                        if (i24 == 1) {
                            return 3;
                        }
                        if (i24 == 2 || i24 == 4) {
                            return 6;
                        }
                        if (i24 == 3) {
                            return 5;
                        }
                        if (i24 == 7) {
                            return 6;
                        }
                        if (i24 != 6) {
                            return SharedMediaLayout.isAnyStoryPageType(i24) ? 27 : 1;
                        }
                        if (SharedMediaLayout.this.scrollSlidingTextTabStrip.getTabsCount() == 1) {
                            setIsSingleCell(true);
                        }
                        return 1;
                    }

                    @Override // org.telegram.ui.Components.FlickerLoadingView, android.view.View
                    public void onDraw(Canvas canvas) {
                        SharedMediaLayout.this.backgroundPaint.setColor(SharedMediaLayout.this.getThemedColor(Theme.key_windowBackgroundWhite));
                        canvas.drawRect(0.0f, 0.0f, getMeasuredWidth(), getMeasuredHeight(), SharedMediaLayout.this.backgroundPaint);
                        super.onDraw(canvas);
                    }
                };
                sharedMediaLayout.mediaPages[i7].progressView.showDate(false);
                sharedMediaLayout.mediaPages[i7].progressView.setClipToOutline(true);
                sharedMediaLayout.mediaPages[i7].progressView.setOutlineProvider(new ViewOutlineProvider() { // from class: org.telegram.ui.Components.SharedMediaLayout.28
                    @Override // android.view.ViewOutlineProvider
                    public void getOutline(View view, Outline outline) {
                        outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), AndroidUtilities.dp(16.0f));
                    }
                });
                if (i7 != 0) {
                    sharedMediaLayout.mediaPages[i7].setVisibility(8);
                }
                MediaPage mediaPage6 = sharedMediaLayout.mediaPages[i7];
                mediaPage6.emptyView = new StickerEmptyView(context2, mediaPage6.progressView, 1) { // from class: org.telegram.ui.Components.SharedMediaLayout.29
                    @Override // org.telegram.ui.Components.StickerEmptyView
                    public void onVisibilityChange(float f3) {
                        super.onVisibilityChange(f3);
                        SharedMediaLayout.this.onBottomButtonVisibilityChange();
                    }
                };
                sharedMediaLayout.mediaPages[i7].emptyView.setVisibility(8, false);
                sharedMediaLayout.mediaPages[i7].emptyView.setAnimateLayoutChange(true);
                MediaPage mediaPage7 = sharedMediaLayout.mediaPages[i7];
                mediaPage7.addView(mediaPage7.emptyView, LayoutHelper.createFrame(-1, -1.0f));
                sharedMediaLayout.mediaPages[i7].emptyView.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda9
                    @Override // android.view.View.OnTouchListener
                    public final boolean onTouch(View view, MotionEvent motionEvent) {
                        return SharedMediaLayout.m14462$r8$lambda$MiPncLsaYY7WU8J9w4AqtENG1M(view, motionEvent);
                    }
                });
                sharedMediaLayout.mediaPages[i7].emptyView.showProgress(true, false);
                sharedMediaLayout.mediaPages[i7].emptyView.title.setText(LocaleController.getString("NoResult", C2807R.string.NoResult));
                sharedMediaLayout.mediaPages[i7].emptyView.button.setVisibility(8);
                sharedMediaLayout.mediaPages[i7].emptyView.subtitle.setText(LocaleController.getString(C2807R.string.SearchEmptyViewFilteredSubtitle2));
                sharedMediaLayout.mediaPages[i7].emptyView.button.setVisibility(8);
                sharedMediaLayout.mediaPages[i7].emptyView.addView(sharedMediaLayout.mediaPages[i7].progressView, LayoutHelper.createFrame(-1, -1.0f, 119, 12.0f, 60.0f, 12.0f, 12.0f));
                sharedMediaLayout.mediaPages[i7].listView.setEmptyView(sharedMediaLayout.mediaPages[i7].emptyView);
                sharedMediaLayout.mediaPages[i7].listView.setAnimateEmptyView(true, 0);
                MediaPage mediaPage8 = sharedMediaLayout.mediaPages[i7];
                mediaPage8.scrollHelper = new RecyclerAnimationScrollHelper(mediaPage8.listView, sharedMediaLayout.mediaPages[i7].layoutManager);
                i7++;
                f = f2;
                resourcesProvider2 = resourcesProvider;
                top = i8;
                iFindFirstVisibleItemPosition = i9;
            }
            float f3 = f;
            profileStoriesCollectionTabs = sharedMediaLayout.storiesContainer;
            if (profileStoriesCollectionTabs != null) {
                sharedMediaLayout.addView(profileStoriesCollectionTabs, LayoutHelper.createFrame(-1, 42.0f, 48, 0.0f, 48.0f, 0.0f, 0.0f));
            }
            ChatActionCell chatActionCell = new ChatActionCell(context2);
            sharedMediaLayout.floatingDateView = chatActionCell;
            chatActionCell.setCustomDate((int) (System.currentTimeMillis() / 1000), false, false);
            sharedMediaLayout.floatingDateView.setAlpha(0.0f);
            sharedMediaLayout.floatingDateView.setOverrideColor(Theme.key_chat_mediaTimeBackground, Theme.key_chat_mediaTimeText);
            sharedMediaLayout.floatingDateView.setTranslationY(-AndroidUtilities.dp(f3));
            sharedMediaLayout.addView(sharedMediaLayout.floatingDateView, LayoutHelper.createFrame(-2, -2.0f, 49, 0.0f, 52.0f, 0.0f, 0.0f));
            if (!sharedMediaLayout.customTabs()) {
                DialogsActivityTopPanelLayout dialogsActivityTopPanelLayout2 = new DialogsActivityTopPanelLayout(context2);
                sharedMediaLayout.topPanelLayout = dialogsActivityTopPanelLayout2;
                dialogsActivityTopPanelLayout2.setPadding(AndroidUtilities.dp(11.0f), AndroidUtilities.dp(21.0f), AndroidUtilities.dp(11.0f), AndroidUtilities.dp(21.0f));
                BlurredBackgroundDrawable blurredBackgroundDrawableCreate = blurredBackgroundDrawableViewFactory4.create(sharedMediaLayout.topPanelLayout, BlurredBackgroundProviderImpl.topPanel(resourcesProvider));
                blurredBackgroundDrawableCreate.setRadius(AndroidUtilities.dp(24.0f));
                blurredBackgroundDrawableCreate.setPadding(AndroidUtilities.dp(7.0f));
                sharedMediaLayout.topPanelLayout.setBlurredBackground(blurredBackgroundDrawableCreate);
                FrameLayout frameLayout = new FrameLayout(context2);
                sharedMediaLayout.fragmentContextViewWrapper = frameLayout;
                sharedMediaLayout.topPanelLayout.addView(frameLayout);
                sharedMediaLayout.topPanelLayout.setViewVisible(sharedMediaLayout.fragmentContextViewWrapper, true, false);
                sharedMediaLayout.topPanelLayout.setOnAnimatedHeightChangedListener(new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda10
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$new$33();
                    }
                });
                FragmentContextView fragmentContextView = new FragmentContextView(context2, baseFragment, this, false, resourcesProvider) { // from class: org.telegram.ui.Components.SharedMediaLayout.30
                    @Override // org.telegram.ui.Components.FragmentContextView, android.view.View
                    public void setVisibility(int i24) {
                        SharedMediaLayout.this.topPanelLayout.setViewVisible(SharedMediaLayout.this.fragmentContextViewWrapper, i24 == 0);
                    }
                };
                sharedMediaLayout.fragmentContextView = fragmentContextView;
                sharedMediaLayout.fragmentContextViewWrapper.addView(fragmentContextView);
                sharedMediaLayout.topPanelLayout.setCallFragmentContextView(sharedMediaLayout.fragmentContextView);
                sharedMediaLayout.addView(sharedMediaLayout.topPanelLayout, LayoutHelper.createFrame(-1, -2.0f, 48, 0.0f, 34.0f, 0.0f, 0.0f));
                sharedMediaLayout.fragmentContextView.setDelegate(new FragmentContextView.FragmentContextViewDelegate() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda11
                    @Override // org.telegram.ui.Components.FragmentContextView.FragmentContextViewDelegate
                    public final void onAnimation(boolean z3, boolean z4) {
                        this.f$0.lambda$new$34(z3, z4);
                    }
                });
                BlurredBackgroundDrawable blurredBackgroundDrawableCreate2 = blurredBackgroundDrawableViewFactory4.create(sharedMediaLayout.scrollSlidingTextTabStrip, BlurredBackgroundProviderImpl.topPanel(resourcesProvider));
                blurredBackgroundDrawableCreate2.setRadius(AndroidUtilities.dp(18.0f));
                blurredBackgroundDrawableCreate2.setPadding(AndroidUtilities.dp(6.666f));
                sharedMediaLayout.scrollSlidingTextTabStrip.setPadding(0, AndroidUtilities.dp(7.0f), 0, AndroidUtilities.dp(7.0f));
                sharedMediaLayout.scrollSlidingTextTabStrip.setClipToPadding(false);
                sharedMediaLayout.scrollSlidingTextTabStrip.setBackground(null);
                sharedMediaLayout.scrollSlidingTextTabStrip.setBlurredBackground(blurredBackgroundDrawableCreate2);
                sharedMediaLayout.scrollSlidingTextTabStrip.setOpen(false);
                sharedMediaLayout.addView(sharedMediaLayout.scrollSlidingTextTabStrip, LayoutHelper.createFrame(-2, 50.0f, 49, -2.0f, 0.0f, -2.0f, 0.0f));
                Context context3 = sharedMediaLayout.getContext();
                BaseFragment baseFragment5 = sharedMediaLayout.profileActivity;
                SharedMediaLayout sharedMediaLayout2 = sharedMediaLayout;
                SearchTagsList searchTagsList3 = new SearchTagsList(context3, baseFragment5, baseFragment5.getCurrentAccount(), sharedMediaLayout.includeSavedDialogs() ? 0L : sharedMediaLayout.dialog_id, resourcesProvider) { // from class: org.telegram.ui.Components.SharedMediaLayout.31
                    @Override // org.telegram.ui.Components.SearchTagsList
                    public boolean setFilter(ReactionsLayoutInBubble.VisibleReaction visibleReaction) {
                        if (SharedMediaLayout.this.searchItem == null) {
                            return false;
                        }
                        SharedMediaLayout.this.searchingReaction = visibleReaction;
                        String string = SharedMediaLayout.this.searchItem.getSearchField().getText().toString();
                        SharedMediaLayout.this.searchWas = (string.length() == 0 && SharedMediaLayout.this.searchingReaction == null) ? false : true;
                        SharedMediaLayout.this.switchToCurrentSelectedMode(false);
                        int i24 = SharedMediaLayout.this.mediaPages[0].selectedType;
                        SharedMediaLayout sharedMediaLayout3 = SharedMediaLayout.this;
                        if (i24 == 11) {
                            if (sharedMediaLayout3.savedMessagesSearchAdapter != null) {
                                SharedMediaLayout.this.savedMessagesSearchAdapter.search(string, SharedMediaLayout.this.searchingReaction);
                            }
                            AndroidUtilities.hideKeyboard(SharedMediaLayout.this.searchItem.getSearchField());
                        } else if (sharedMediaLayout3.mediaPages[0].selectedType == 12 && SharedMediaLayout.this.savedMessagesContainer != null) {
                            SharedMediaLayout.this.savedMessagesContainer.chatActivity.setTagFilter(visibleReaction);
                        }
                        return true;
                    }

                    @Override // org.telegram.ui.Components.SearchTagsList
                    public void onShownUpdate(boolean z3) {
                        SharedMediaLayout.this.scrollSlidingTextTabStrip.setAlpha(1.0f - this.shownT);
                        SharedMediaLayout.this.scrollSlidingTextTabStrip.setPivotX(r5.getWidth() / 2.0f);
                        SharedMediaLayout.this.scrollSlidingTextTabStrip.setScaleX(((1.0f - this.shownT) * 0.2f) + 0.8f);
                        SharedMediaLayout.this.scrollSlidingTextTabStrip.setPivotY(AndroidUtilities.dp(48.0f));
                        SharedMediaLayout.this.scrollSlidingTextTabStrip.setScaleY(((1.0f - this.shownT) * 0.2f) + 0.8f);
                    }

                    @Override // org.telegram.ui.Components.SearchTagsList
                    public void updateTags(boolean z3) {
                        super.updateTags(z3);
                        show(SharedMediaLayout.this.searching && (SharedMediaLayout.this.getSelectedTab() == 11 || SharedMediaLayout.this.getSelectedTab() == 12) && SharedMediaLayout.this.searchTagsList.hasFilters());
                        ActionBarMenuItem actionBarMenuItem8 = SharedMediaLayout.this.searchItemIcon;
                        if (actionBarMenuItem8 != null) {
                            actionBarMenuItem8.setIcon((hasFilters() && SharedMediaLayout.this.profileActivity.getUserConfig().isPremium()) ? C2807R.drawable.navbar_search_tag : C2807R.drawable.outline_header_search, z3);
                        }
                        if (SharedMediaLayout.this.searchItem != null) {
                            ActionBarMenuItem actionBarMenuItem9 = SharedMediaLayout.this.searchItem;
                            SearchTagsList searchTagsList4 = SharedMediaLayout.this.searchTagsList;
                            actionBarMenuItem9.setSearchFieldHint(LocaleController.getString((searchTagsList4 != null && searchTagsList4.hasFilters() && SharedMediaLayout.this.getSelectedTab() == 11) ? C2807R.string.SavedTagSearchHint : C2807R.string.Search));
                        }
                    }
                };
                sharedMediaLayout = sharedMediaLayout2;
                sharedMediaLayout.searchTagsList = searchTagsList3;
                searchTagsList3.setBlurredFactory(blurredBackgroundDrawableViewFactory4, BlurredBackgroundProviderImpl.topPanel(resourcesProvider));
                sharedMediaLayout.searchTagsList.setShown(0.0f);
                sharedMediaLayout.addView(sharedMediaLayout.searchTagsList, LayoutHelper.createFrame(-1, 38.0f, 51, 0.0f, 4.0f, 0.0f, 0.0f));
                sharedMediaLayout.addView(sharedMediaLayout.actionModeLayout, LayoutHelper.createFrame(-1, 48, 51));
            }
            sharedMediaLayout.updateTabs(false);
            sharedMediaLayout.switchToCurrentSelectedMode(false);
            if (sharedMediaLayout.hasMedia[0] >= 0) {
                sharedMediaLayout.loadFastScrollData(false);
            }
            profileStoriesCollectionTabs2 = sharedMediaLayout.storiesContainer;
            if (profileStoriesCollectionTabs2 != null && i3 > 0) {
                profileStoriesCollectionTabs2.setInitialTabId(i3);
            }
            sharedMediaLayout.iBlur3Capture = new IBlur3Capture() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda12
                @Override // org.telegram.ui.Components.blur3.capture.IBlur3Capture
                public final void capture(Canvas canvas, RectF rectF) {
                    this.f$0.lambda$new$35(canvas, rectF);
                }
            };
        }
        resourcesProvider2 = resourcesProvider;
        sharedMediaLayout.setWillNotDraw(false);
        top = 0;
        iFindFirstVisibleItemPosition = -1;
        i7 = 0;
        while (true) {
            mediaPageArr = sharedMediaLayout.mediaPages;
            if (i7 < mediaPageArr.length) {
            }
            MediaPage mediaPage62 = sharedMediaLayout.mediaPages[i7];
            mediaPage62.emptyView = new StickerEmptyView(context2, mediaPage62.progressView, 1) { // from class: org.telegram.ui.Components.SharedMediaLayout.29
                @Override // org.telegram.ui.Components.StickerEmptyView
                public void onVisibilityChange(float f32) {
                    super.onVisibilityChange(f32);
                    SharedMediaLayout.this.onBottomButtonVisibilityChange();
                }
            };
            sharedMediaLayout.mediaPages[i7].emptyView.setVisibility(8, false);
            sharedMediaLayout.mediaPages[i7].emptyView.setAnimateLayoutChange(true);
            MediaPage mediaPage72 = sharedMediaLayout.mediaPages[i7];
            mediaPage72.addView(mediaPage72.emptyView, LayoutHelper.createFrame(-1, -1.0f));
            sharedMediaLayout.mediaPages[i7].emptyView.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda9
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    return SharedMediaLayout.m14462$r8$lambda$MiPncLsaYY7WU8J9w4AqtENG1M(view, motionEvent);
                }
            });
            sharedMediaLayout.mediaPages[i7].emptyView.showProgress(true, false);
            sharedMediaLayout.mediaPages[i7].emptyView.title.setText(LocaleController.getString("NoResult", C2807R.string.NoResult));
            sharedMediaLayout.mediaPages[i7].emptyView.button.setVisibility(8);
            sharedMediaLayout.mediaPages[i7].emptyView.subtitle.setText(LocaleController.getString(C2807R.string.SearchEmptyViewFilteredSubtitle2));
            sharedMediaLayout.mediaPages[i7].emptyView.button.setVisibility(8);
            sharedMediaLayout.mediaPages[i7].emptyView.addView(sharedMediaLayout.mediaPages[i7].progressView, LayoutHelper.createFrame(-1, -1.0f, 119, 12.0f, 60.0f, 12.0f, 12.0f));
            sharedMediaLayout.mediaPages[i7].listView.setEmptyView(sharedMediaLayout.mediaPages[i7].emptyView);
            sharedMediaLayout.mediaPages[i7].listView.setAnimateEmptyView(true, 0);
            MediaPage mediaPage82 = sharedMediaLayout.mediaPages[i7];
            mediaPage82.scrollHelper = new RecyclerAnimationScrollHelper(mediaPage82.listView, sharedMediaLayout.mediaPages[i7].layoutManager);
            i7++;
            f = f2;
            resourcesProvider2 = resourcesProvider;
            top = i8;
            iFindFirstVisibleItemPosition = i9;
        }
        float f32 = f;
        profileStoriesCollectionTabs = sharedMediaLayout.storiesContainer;
        if (profileStoriesCollectionTabs != null) {
        }
        ChatActionCell chatActionCell2 = new ChatActionCell(context2);
        sharedMediaLayout.floatingDateView = chatActionCell2;
        chatActionCell2.setCustomDate((int) (System.currentTimeMillis() / 1000), false, false);
        sharedMediaLayout.floatingDateView.setAlpha(0.0f);
        sharedMediaLayout.floatingDateView.setOverrideColor(Theme.key_chat_mediaTimeBackground, Theme.key_chat_mediaTimeText);
        sharedMediaLayout.floatingDateView.setTranslationY(-AndroidUtilities.dp(f32));
        sharedMediaLayout.addView(sharedMediaLayout.floatingDateView, LayoutHelper.createFrame(-2, -2.0f, 49, 0.0f, 52.0f, 0.0f, 0.0f));
        if (!sharedMediaLayout.customTabs()) {
        }
        sharedMediaLayout.updateTabs(false);
        sharedMediaLayout.switchToCurrentSelectedMode(false);
        if (sharedMediaLayout.hasMedia[0] >= 0) {
        }
        profileStoriesCollectionTabs2 = sharedMediaLayout.storiesContainer;
        if (profileStoriesCollectionTabs2 != null) {
            profileStoriesCollectionTabs2.setInitialTabId(i3);
        }
        sharedMediaLayout.iBlur3Capture = new IBlur3Capture() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda12
            @Override // org.telegram.ui.Components.blur3.capture.IBlur3Capture
            public final void capture(Canvas canvas, RectF rectF) {
                this.f$0.lambda$new$35(canvas, rectF);
            }
        };
    }

    /* JADX INFO: renamed from: org.telegram.ui.Components.SharedMediaLayout$4 */
    public class C45774 extends ActionBarMenuItem.ActionBarMenuItemSearchListener {
        public C45774() {
        }

        @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
        public void onSearchExpand() {
            SharedMediaLayout.this.searching = true;
            SharedMediaLayout sharedMediaLayout = SharedMediaLayout.this;
            SearchTagsList searchTagsList = sharedMediaLayout.searchTagsList;
            if (searchTagsList != null) {
                searchTagsList.show((sharedMediaLayout.getSelectedTab() == 11 || SharedMediaLayout.this.getSelectedTab() == 12) && SharedMediaLayout.this.searchTagsList.hasFilters());
            }
            ImageView imageView = SharedMediaLayout.this.photoVideoOptionsItem;
            if (imageView != null) {
                imageView.setVisibility(8);
            }
            ActionBarMenuItem actionBarMenuItem = SharedMediaLayout.this.searchItemIcon;
            if (actionBarMenuItem != null) {
                actionBarMenuItem.setVisibility(8);
            }
            SharedMediaLayout.this.searchItem.setVisibility(8);
            SharedMediaLayout.this.onSearchStateChanged(true);
            if (SharedMediaLayout.this.optionsSearchImageView != null) {
                SharedMediaLayout.this.optionsSearchImageView.animate().scaleX(0.6f).scaleY(0.6f).alpha(0.0f).setDuration(320L).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).start();
            }
        }

        @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
        public void onSearchCollapse() {
            SharedMediaLayout.this.searching = false;
            SharedMediaLayout.this.searchingReaction = null;
            ActionBarMenuItem actionBarMenuItem = SharedMediaLayout.this.searchItemIcon;
            if (actionBarMenuItem != null) {
                actionBarMenuItem.setVisibility(0);
            }
            SharedMediaLayout sharedMediaLayout = SharedMediaLayout.this;
            if (sharedMediaLayout.photoVideoOptionsItem != null && sharedMediaLayout.getPhotoVideoOptionsAlpha(0.0f) > 0.5f) {
                SharedMediaLayout.this.photoVideoOptionsItem.setVisibility(0);
            }
            SearchTagsList searchTagsList = SharedMediaLayout.this.searchTagsList;
            if (searchTagsList != null) {
                searchTagsList.clear();
                SharedMediaLayout.this.searchTagsList.show(false);
            }
            if (SharedMediaLayout.this.savedMessagesContainer != null) {
                SharedMediaLayout.this.savedMessagesContainer.chatActivity.clearSearch();
            }
            SharedMediaLayout.this.searchWas = false;
            SharedMediaLayout.this.searchItem.setVisibility(0);
            SharedMediaLayout.this.documentsSearchAdapter.search(null, true);
            SharedMediaLayout.this.linksSearchAdapter.search(null, true);
            SharedMediaLayout.this.audioSearchAdapter.search(null, true);
            SharedMediaLayout.this.groupUsersSearchAdapter.search(null, true);
            if (SharedMediaLayout.this.savedMessagesSearchAdapter != null) {
                SharedMediaLayout.this.savedMessagesSearchAdapter.search(null, null);
            }
            SharedMediaLayout.this.onSearchStateChanged(false);
            if (SharedMediaLayout.this.optionsSearchImageView != null) {
                SharedMediaLayout.this.optionsSearchImageView.animate().scaleX(1.0f).scaleY(1.0f).alpha(1.0f).setDuration(320L).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).start();
            }
            boolean z = SharedMediaLayout.this.ignoreSearchCollapse;
            SharedMediaLayout sharedMediaLayout2 = SharedMediaLayout.this;
            if (z) {
                sharedMediaLayout2.ignoreSearchCollapse = false;
            } else {
                sharedMediaLayout2.switchToCurrentSelectedMode(false);
            }
        }

        @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
        public void onTextChanged(EditText editText) {
            String string = editText.getText().toString();
            if (SharedMediaLayout.this.savedMessagesContainer != null) {
                SharedMediaLayout.this.savedMessagesContainer.chatActivity.setSearchQuery(string);
                if (TextUtils.isEmpty(string) && SharedMediaLayout.this.searchingReaction == null) {
                    SharedMediaLayout.this.savedMessagesContainer.chatActivity.clearSearch();
                }
            }
            SharedMediaLayout.this.searchItem.setVisibility(8);
            SharedMediaLayout.this.searchWas = (string.length() == 0 && SharedMediaLayout.this.searchingReaction == null) ? false : true;
            SharedMediaLayout.this.post(new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$4$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onTextChanged$0();
                }
            });
            int i = SharedMediaLayout.this.mediaPages[0].selectedType;
            SharedMediaLayout sharedMediaLayout = SharedMediaLayout.this;
            if (i == 1) {
                if (sharedMediaLayout.documentsSearchAdapter == null) {
                    return;
                }
                SharedMediaLayout.this.documentsSearchAdapter.search(string, true);
                return;
            }
            int i2 = sharedMediaLayout.mediaPages[0].selectedType;
            SharedMediaLayout sharedMediaLayout2 = SharedMediaLayout.this;
            if (i2 == 3) {
                if (sharedMediaLayout2.linksSearchAdapter == null) {
                    return;
                }
                SharedMediaLayout.this.linksSearchAdapter.search(string, true);
                return;
            }
            int i3 = sharedMediaLayout2.mediaPages[0].selectedType;
            SharedMediaLayout sharedMediaLayout3 = SharedMediaLayout.this;
            if (i3 == 4) {
                if (sharedMediaLayout3.audioSearchAdapter == null) {
                    return;
                }
                SharedMediaLayout.this.audioSearchAdapter.search(string, true);
                return;
            }
            int i4 = sharedMediaLayout3.mediaPages[0].selectedType;
            SharedMediaLayout sharedMediaLayout4 = SharedMediaLayout.this;
            if (i4 == 7) {
                if (sharedMediaLayout4.groupUsersSearchAdapter == null) {
                    return;
                }
                SharedMediaLayout.this.groupUsersSearchAdapter.search(string, true);
            } else {
                if (sharedMediaLayout4.mediaPages[0].selectedType != 11 || SharedMediaLayout.this.savedMessagesSearchAdapter == null) {
                    return;
                }
                SharedMediaLayout.this.savedMessagesSearchAdapter.search(string, SharedMediaLayout.this.searchingReaction);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onTextChanged$0() {
            SharedMediaLayout.this.switchToCurrentSelectedMode(false);
        }

        @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
        public void onSearchPressed(EditText editText) {
            super.onSearchPressed(editText);
            if (SharedMediaLayout.this.savedMessagesContainer != null) {
                SharedMediaLayout.this.savedMessagesContainer.chatActivity.hitSearch();
            }
        }

        @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
        public void onLayout(int i, int i2, int i3, int i4) {
            SharedMediaLayout.this.searchItem.setTranslationX(((View) SharedMediaLayout.this.searchItem.getParent()).getMeasuredWidth() - SharedMediaLayout.this.searchItem.getRight());
        }
    }

    /* JADX INFO: renamed from: org.telegram.ui.Components.SharedMediaLayout$5 */
    public class ViewOnClickListenerC45805 implements View.OnClickListener {
        final /* synthetic */ Context val$context;
        final /* synthetic */ long val$did;
        final /* synthetic */ Theme.ResourcesProvider val$resourcesProvider;

        public ViewOnClickListenerC45805(long j, Theme.ResourcesProvider resourcesProvider, Context context) {
            this.val$did = j;
            this.val$resourcesProvider = resourcesProvider;
            this.val$context = context;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            StoriesController.StoriesList storiesList;
            TLRPC.Chat chat;
            TLRPC.TL_chatAdminRights tL_chatAdminRights;
            final ActionBarMenuSubItem actionBarMenuSubItemAdd;
            boolean z;
            final ActionBarMenuSubItem actionBarMenuSubItem;
            final ActionBarMenuSubItem actionBarMenuSubItem2;
            StoryAlbumData storyAlbumDataStoryAlbums_getByTabType;
            final int closestTab = SharedMediaLayout.this.getClosestTab();
            boolean zIsAnyStoryPageType = SharedMediaLayout.isAnyStoryPageType(closestTab);
            TLRPC.User user = MessagesController.getInstance(SharedMediaLayout.this.profileActivity.getCurrentAccount()).getUser(Long.valueOf(SharedMediaLayout.this.dialog_id));
            boolean zCanEditStoryAlbums = SharedMediaLayout.this.getStoriesController().canEditStoryAlbums(SharedMediaLayout.this.dialog_id);
            if (SharedMediaLayout.isStoryAlbumPageType(closestTab) && zCanEditStoryAlbums && (storyAlbumDataStoryAlbums_getByTabType = SharedMediaLayout.this.storyAlbums_getByTabType(closestTab)) != null) {
                int i = storyAlbumDataStoryAlbums_getByTabType.albumId;
                SharedMediaLayout sharedMediaLayout = SharedMediaLayout.this;
                sharedMediaLayout.buildItemOptionsForStoryAlbumActionBar(sharedMediaLayout.profileActivity, SharedMediaLayout.this.photoVideoOptionsItem, this.val$did, i).setOnTopOfScrim().setDimAlpha(0).show();
                return;
            }
            boolean z2 = true;
            if (closestTab == 14) {
                ProfileGiftsContainer.Page currentPage = SharedMediaLayout.this.giftsContainer.getCurrentPage();
                final StarsController.GiftsList giftsList = currentPage.list;
                if (giftsList == null) {
                    return;
                }
                final boolean zCanFilterHidden = SharedMediaLayout.this.giftsContainer.canFilterHidden();
                final ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions(SharedMediaLayout.this.profileActivity, SharedMediaLayout.this.photoVideoOptionsItem);
                if (giftsList.isCollection) {
                    actionBarMenuSubItemAdd = null;
                    z = false;
                } else {
                    actionBarMenuSubItemAdd = itemOptionsMakeOptions.add();
                    z = true;
                }
                if (SharedMediaLayout.this.giftsContainer.canAdd()) {
                    itemOptionsMakeOptions.add(C2807R.drawable.menu_folder_add, LocaleController.getString(C2807R.string.Gift2NewCollection), new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$5$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$onClick$0(itemOptionsMakeOptions);
                        }
                    });
                    z = true;
                }
                if (SharedMediaLayout.this.giftsContainer.collections.isMine()) {
                    if (!giftsList.getPinned().isEmpty() || currentPage.isCollection) {
                        itemOptionsMakeOptions.add(C2807R.drawable.tabs_reorder, LocaleController.getString(C2807R.string.Gift2Reorder), new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$5$$ExternalSyntheticLambda7
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$onClick$1(itemOptionsMakeOptions);
                            }
                        });
                    }
                    z = true;
                }
                if (z) {
                    itemOptionsMakeOptions.addGap();
                }
                final ActionBarMenuSubItem actionBarMenuSubItemAddChecked = itemOptionsMakeOptions.addChecked();
                actionBarMenuSubItemAddChecked.setText(LocaleController.getString(C2807R.string.Gift2FilterUnlimited));
                final ActionBarMenuSubItem actionBarMenuSubItemAddChecked2 = itemOptionsMakeOptions.addChecked();
                actionBarMenuSubItemAddChecked2.setText(LocaleController.getString(C2807R.string.Gift2FilterLimited));
                final ActionBarMenuSubItem actionBarMenuSubItemAddChecked3 = itemOptionsMakeOptions.addChecked();
                actionBarMenuSubItemAddChecked3.setText(LocaleController.getString(C2807R.string.Gift2FilterUpgradable));
                final ActionBarMenuSubItem actionBarMenuSubItemAddChecked4 = itemOptionsMakeOptions.addChecked();
                actionBarMenuSubItemAddChecked4.setText(LocaleController.getString(C2807R.string.Gift2FilterUnique));
                if (zCanFilterHidden) {
                    itemOptionsMakeOptions.addGap();
                    ActionBarMenuSubItem actionBarMenuSubItemAddChecked5 = itemOptionsMakeOptions.addChecked();
                    actionBarMenuSubItemAddChecked5.setText(LocaleController.getString(C2807R.string.Gift2FilterDisplayed));
                    ActionBarMenuSubItem actionBarMenuSubItemAddChecked6 = itemOptionsMakeOptions.addChecked();
                    actionBarMenuSubItemAddChecked6.setText(LocaleController.getString(C2807R.string.Gift2FilterHidden));
                    actionBarMenuSubItem2 = actionBarMenuSubItemAddChecked6;
                    actionBarMenuSubItem = actionBarMenuSubItemAddChecked5;
                } else {
                    actionBarMenuSubItem = null;
                    actionBarMenuSubItem2 = null;
                }
                final Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$5$$ExternalSyntheticLambda8
                    @Override // java.lang.Runnable
                    public final void run() {
                        SharedMediaLayout.ViewOnClickListenerC45805.$r8$lambda$SnfKaJ_hFOWoYueR4EwLh631Kjs(actionBarMenuSubItemAdd, giftsList, actionBarMenuSubItemAddChecked, actionBarMenuSubItemAddChecked2, actionBarMenuSubItemAddChecked3, actionBarMenuSubItemAddChecked4, zCanFilterHidden, actionBarMenuSubItem, actionBarMenuSubItem2);
                    }
                };
                ActionBarMenuSubItem actionBarMenuSubItem3 = actionBarMenuSubItem;
                ActionBarMenuSubItem actionBarMenuSubItem4 = actionBarMenuSubItem2;
                runnable.run();
                if (actionBarMenuSubItemAdd != null) {
                    actionBarMenuSubItemAdd.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.SharedMediaLayout$5$$ExternalSyntheticLambda9
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            SharedMediaLayout.ViewOnClickListenerC45805.m14631$r8$lambda$QoBLcpFC7KXPjFJ4VZizTuExeM(giftsList, runnable, view2);
                        }
                    });
                }
                ProfileGiftsContainer.setGiftFilterOptionsClickListeners(actionBarMenuSubItemAddChecked, giftsList, runnable, 1);
                ProfileGiftsContainer.setGiftFilterOptionsClickListeners(actionBarMenuSubItemAddChecked2, giftsList, runnable, 2);
                ProfileGiftsContainer.setGiftFilterOptionsClickListeners(actionBarMenuSubItemAddChecked3, giftsList, runnable, 4);
                ProfileGiftsContainer.setGiftFilterOptionsClickListeners(actionBarMenuSubItemAddChecked4, giftsList, runnable, 8);
                if (zCanFilterHidden) {
                    ProfileGiftsContainer.setGiftFilterOptionsClickListeners(actionBarMenuSubItem3, giftsList, runnable, 256);
                    ProfileGiftsContainer.setGiftFilterOptionsClickListeners(actionBarMenuSubItem4, giftsList, runnable, 512);
                }
                itemOptionsMakeOptions.setOnTopOfScrim().setDismissWithButtons(false).setDimAlpha(0).show();
                return;
            }
            if (closestTab == 13 && user != null && user.bot && user.bot_has_main_app && user.bot_can_edit && SharedMediaLayout.this.botPreviewsContainer != null) {
                ItemOptions.makeOptions(SharedMediaLayout.this.profileActivity, SharedMediaLayout.this.photoVideoOptionsItem).addIf(SharedMediaLayout.this.botPreviewsContainer.getItemsCount() < SharedMediaLayout.this.profileActivity.getMessagesController().botPreviewMediasMax, C2807R.drawable.msg_addbot, LocaleController.getString(C2807R.string.ProfileBotAddPreview), new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$5$$ExternalSyntheticLambda10
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onClick$4();
                    }
                }).addIf(SharedMediaLayout.this.botPreviewsContainer.getItemsCount() > 1 && !SharedMediaLayout.this.botPreviewsContainer.isSelectedAll(), C2807R.drawable.tabs_reorder, LocaleController.getString(C2807R.string.ProfileBotReorder), new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$5$$ExternalSyntheticLambda11
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onClick$5();
                    }
                }).addIf(SharedMediaLayout.this.botPreviewsContainer.getItemsCount() > 0, C2807R.drawable.msg_select, LocaleController.getString(SharedMediaLayout.this.botPreviewsContainer.isSelectedAll() ? C2807R.string.ProfileBotUnSelect : C2807R.string.ProfileBotSelect), new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$5$$ExternalSyntheticLambda12
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onClick$6();
                    }
                }).addIf(!TextUtils.isEmpty(SharedMediaLayout.this.botPreviewsContainer.getCurrentLang()), C2807R.drawable.msg_delete, (CharSequence) LocaleController.formatString(C2807R.string.ProfileBotRemoveLang, TranslateAlert2.languageName(SharedMediaLayout.this.botPreviewsContainer.getCurrentLang())), true, new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$5$$ExternalSyntheticLambda13
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onClick$7();
                    }
                }).translate(0.0f, -AndroidUtilities.dp(52.0f)).setDimAlpha(0).show();
                return;
            }
            int selectedTab = SharedMediaLayout.this.getSelectedTab();
            SharedMediaLayout sharedMediaLayout2 = SharedMediaLayout.this;
            if (selectedTab == 11) {
                ItemOptions.makeOptions(sharedMediaLayout2.profileActivity, SharedMediaLayout.this.photoVideoOptionsItem).add(C2807R.drawable.msg_discussion, LocaleController.getString(C2807R.string.SavedViewAsMessages), new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$5$$ExternalSyntheticLambda14
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onClick$8();
                    }
                }).addGap().add(C2807R.drawable.msg_home, LocaleController.getString(C2807R.string.AddShortcut), new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$5$$ExternalSyntheticLambda15
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onClick$9();
                    }
                }).add(C2807R.drawable.msg_delete, LocaleController.getString(C2807R.string.DeleteAll), new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$5$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onClick$11();
                    }
                }).translate(0.0f, -AndroidUtilities.dp(52.0f)).setDimAlpha(0).show();
                return;
            }
            final ItemOptions itemOptionsMakeOptions2 = ItemOptions.makeOptions(sharedMediaLayout2.profileActivity, SharedMediaLayout.this.photoVideoOptionsItem);
            if ((closestTab == 8 || SharedMediaLayout.isStoryAlbumPageType(closestTab)) && zCanEditStoryAlbums) {
                int i2 = C2807R.drawable.menu_album_add;
                String string = LocaleController.getString(C2807R.string.StoriesAlbumAddAlbum);
                final Theme.ResourcesProvider resourcesProvider = this.val$resourcesProvider;
                itemOptionsMakeOptions2.add(i2, string, new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$5$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onClick$13(resourcesProvider, itemOptionsMakeOptions2);
                    }
                });
                itemOptionsMakeOptions2.addGap();
            }
            SharedMediaLayout.this.addZoomInZoomOutItemOptions(itemOptionsMakeOptions2);
            boolean z3 = zIsAnyStoryPageType || !((!SharedMediaLayout.this.sharedMediaData[0].hasPhotos || !SharedMediaLayout.this.sharedMediaData[0].hasVideos) && SharedMediaLayout.this.sharedMediaData[0].endReached[0] && SharedMediaLayout.this.sharedMediaData[0].endReached[1] && SharedMediaLayout.this.sharedMediaData[0].startReached);
            if (!DialogObject.isEncryptedDialog(SharedMediaLayout.this.dialog_id) && (user == null || !user.bot)) {
                itemOptionsMakeOptions2.add(C2807R.drawable.msg_calendar2, LocaleController.getString(C2807R.string.Calendar), new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$5$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onClick$14(closestTab, itemOptionsMakeOptions2);
                    }
                });
                if (SharedMediaLayout.this.info != null && !SharedMediaLayout.this.isStoriesView() && (chat = MessagesController.getInstance(SharedMediaLayout.this.profileActivity.getCurrentAccount()).getChat(Long.valueOf(SharedMediaLayout.this.info.id))) != null && (tL_chatAdminRights = chat.admin_rights) != null && tL_chatAdminRights.edit_stories) {
                    itemOptionsMakeOptions2.add(C2807R.drawable.msg_archive, LocaleController.getString(C2807R.string.OpenChannelArchiveStories), new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$5$$ExternalSyntheticLambda4
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$onClick$15(itemOptionsMakeOptions2);
                        }
                    });
                }
                if (z3) {
                    itemOptionsMakeOptions2.addGap();
                    final ActionBarMenuSubItem actionBarMenuSubItem5 = new ActionBarMenuSubItem(this.val$context, true, false, false, this.val$resourcesProvider);
                    final ActionBarMenuSubItem actionBarMenuSubItem6 = new ActionBarMenuSubItem(this.val$context, true, false, true, this.val$resourcesProvider);
                    actionBarMenuSubItem5.setTextAndIcon(LocaleController.getString("MediaShowPhotos", C2807R.string.MediaShowPhotos), 0);
                    itemOptionsMakeOptions2.getLayout().addView(actionBarMenuSubItem5);
                    actionBarMenuSubItem6.setTextAndIcon(LocaleController.getString("MediaShowVideos", C2807R.string.MediaShowVideos), 0);
                    itemOptionsMakeOptions2.getLayout().addView(actionBarMenuSubItem6);
                    SharedMediaLayout sharedMediaLayout3 = SharedMediaLayout.this;
                    if (zIsAnyStoryPageType) {
                        final StoriesAdapter storiesAdapterStoryAlbums_getStoriesAdapterByTabType = sharedMediaLayout3.storyAlbums_getStoriesAdapterByTabType(closestTab);
                        if (storiesAdapterStoryAlbums_getStoriesAdapterByTabType != null && (storiesList = storiesAdapterStoryAlbums_getStoriesAdapterByTabType.storiesList) != null) {
                            actionBarMenuSubItem5.setChecked(storiesList.showPhotos());
                            actionBarMenuSubItem6.setChecked(storiesAdapterStoryAlbums_getStoriesAdapterByTabType.storiesList.showVideos());
                        }
                        actionBarMenuSubItem5.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.SharedMediaLayout$5$$ExternalSyntheticLambda5
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                this.f$0.lambda$onClick$16(actionBarMenuSubItem6, actionBarMenuSubItem5, storiesAdapterStoryAlbums_getStoriesAdapterByTabType, view2);
                            }
                        });
                        actionBarMenuSubItem6.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.SharedMediaLayout$5$$ExternalSyntheticLambda6
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                this.f$0.lambda$onClick$17(actionBarMenuSubItem5, actionBarMenuSubItem6, storiesAdapterStoryAlbums_getStoriesAdapterByTabType, view2);
                            }
                        });
                    } else {
                        actionBarMenuSubItem5.setChecked(sharedMediaLayout3.sharedMediaData[0].filterType == 0 || SharedMediaLayout.this.sharedMediaData[0].filterType == 1);
                        actionBarMenuSubItem5.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.SharedMediaLayout.5.1
                            @Override // android.view.View.OnClickListener
                            public void onClick(View view2) {
                                if (SharedMediaLayout.this.changeTypeAnimation) {
                                    return;
                                }
                                if (!actionBarMenuSubItem6.getCheckView().isChecked() && actionBarMenuSubItem5.getCheckView().isChecked()) {
                                    ActionBarMenuSubItem actionBarMenuSubItem7 = actionBarMenuSubItem5;
                                    SharedMediaLayout sharedMediaLayout4 = SharedMediaLayout.this;
                                    float f = -sharedMediaLayout4.shiftDp;
                                    sharedMediaLayout4.shiftDp = f;
                                    AndroidUtilities.shakeViewSpring(actionBarMenuSubItem7, f);
                                    return;
                                }
                                actionBarMenuSubItem5.setChecked(!r2.getCheckView().isChecked());
                                if (actionBarMenuSubItem5.getCheckView().isChecked() && actionBarMenuSubItem6.getCheckView().isChecked()) {
                                    SharedMediaLayout.this.sharedMediaData[0].filterType = 0;
                                } else {
                                    SharedMediaLayout.this.sharedMediaData[0].filterType = 2;
                                }
                                SharedMediaLayout.this.changeMediaFilterType();
                            }
                        });
                        if (SharedMediaLayout.this.sharedMediaData[0].filterType != 0 && SharedMediaLayout.this.sharedMediaData[0].filterType != 2) {
                            z2 = false;
                        }
                        actionBarMenuSubItem6.setChecked(z2);
                        actionBarMenuSubItem6.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.SharedMediaLayout.5.2
                            @Override // android.view.View.OnClickListener
                            public void onClick(View view2) {
                                if (SharedMediaLayout.this.changeTypeAnimation) {
                                    return;
                                }
                                if (!actionBarMenuSubItem5.getCheckView().isChecked() && actionBarMenuSubItem6.getCheckView().isChecked()) {
                                    ActionBarMenuSubItem actionBarMenuSubItem7 = actionBarMenuSubItem6;
                                    SharedMediaLayout sharedMediaLayout4 = SharedMediaLayout.this;
                                    float f = -sharedMediaLayout4.shiftDp;
                                    sharedMediaLayout4.shiftDp = f;
                                    AndroidUtilities.shakeViewSpring(actionBarMenuSubItem7, f);
                                    return;
                                }
                                actionBarMenuSubItem6.setChecked(!r3.getCheckView().isChecked());
                                if (actionBarMenuSubItem5.getCheckView().isChecked() && actionBarMenuSubItem6.getCheckView().isChecked()) {
                                    SharedMediaLayout.this.sharedMediaData[0].filterType = 0;
                                } else {
                                    SharedMediaLayout.this.sharedMediaData[0].filterType = 1;
                                }
                                SharedMediaLayout.this.changeMediaFilterType();
                            }
                        });
                    }
                }
            }
            itemOptionsMakeOptions2.setDismissWithButtons(false).setOnTopOfScrim().setDimAlpha(0).show();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onClick$0(ItemOptions itemOptions) {
            SharedMediaLayout.this.giftsContainer.createCollection();
            itemOptions.dismiss();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onClick$1(ItemOptions itemOptions) {
            SharedMediaLayout.this.giftsContainer.setReordering(true);
            itemOptions.dismiss();
        }

        public static /* synthetic */ void $r8$lambda$SnfKaJ_hFOWoYueR4EwLh631Kjs(ActionBarMenuSubItem actionBarMenuSubItem, StarsController.GiftsList giftsList, ActionBarMenuSubItem actionBarMenuSubItem2, ActionBarMenuSubItem actionBarMenuSubItem3, ActionBarMenuSubItem actionBarMenuSubItem4, ActionBarMenuSubItem actionBarMenuSubItem5, boolean z, ActionBarMenuSubItem actionBarMenuSubItem6, ActionBarMenuSubItem actionBarMenuSubItem7) {
            if (actionBarMenuSubItem != null) {
                actionBarMenuSubItem.setTextAndIcon(LocaleController.getString(giftsList.sort_by_date ? C2807R.string.Gift2FilterSortByValue : C2807R.string.Gift2FilterSortByDate), giftsList.sort_by_date ? C2807R.drawable.menu_sort_value : C2807R.drawable.menu_sort_date);
            }
            actionBarMenuSubItem2.setChecked(giftsList.isInclude_unlimited());
            actionBarMenuSubItem3.setChecked(giftsList.isInclude_limited());
            actionBarMenuSubItem4.setChecked(giftsList.isInclude_upgradable());
            actionBarMenuSubItem5.setChecked(giftsList.isInclude_unique());
            if (z) {
                actionBarMenuSubItem6.setChecked(giftsList.isInclude_displayed());
                actionBarMenuSubItem7.setChecked(giftsList.isInclude_hidden());
            }
        }

        /* JADX INFO: renamed from: $r8$lambda$QoBLcpFC-7KXPjFJ4VZizTuExeM, reason: not valid java name */
        public static /* synthetic */ void m14631$r8$lambda$QoBLcpFC7KXPjFJ4VZizTuExeM(StarsController.GiftsList giftsList, Runnable runnable, View view) {
            giftsList.sort_by_date = !giftsList.sort_by_date;
            runnable.run();
            giftsList.invalidate(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onClick$4() {
            StoryRecorder.getInstance(SharedMediaLayout.this.profileActivity.getParentActivity(), SharedMediaLayout.this.profileActivity.getCurrentAccount()).openBot(SharedMediaLayout.this.dialog_id, SharedMediaLayout.this.botPreviewsContainer.getCurrentLang(), null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onClick$5() {
            SharedMediaLayout.this.botPreviewsContainer.selectAll();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onClick$6() {
            boolean zIsSelectedAll = SharedMediaLayout.this.botPreviewsContainer.isSelectedAll();
            SharedMediaLayout sharedMediaLayout = SharedMediaLayout.this;
            if (zIsSelectedAll) {
                sharedMediaLayout.botPreviewsContainer.unselectAll();
            } else {
                sharedMediaLayout.botPreviewsContainer.selectAll();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onClick$7() {
            SharedMediaLayout.this.botPreviewsContainer.deleteLang(SharedMediaLayout.this.botPreviewsContainer.getCurrentLang());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onClick$8() {
            SharedMediaLayout.this.profileActivity.getMessagesController().setSavedViewAs(false);
            Bundle bundle = new Bundle();
            bundle.putLong("user_id", SharedMediaLayout.this.profileActivity.getUserConfig().getClientUserId());
            SharedMediaLayout.this.profileActivity.presentFragment(new ChatActivity(bundle), true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onClick$9() {
            try {
                SharedMediaLayout.this.profileActivity.getMediaDataController().installShortcut(SharedMediaLayout.this.profileActivity.getUserConfig().getClientUserId(), MediaDataController.SHORTCUT_TYPE_USER_OR_CHAT);
            } catch (Exception e) {
                FileLog.m1040e(e);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onClick$11() {
            final TLRPC.User currentUser = SharedMediaLayout.this.profileActivity.getUserConfig().getCurrentUser();
            AlertsCreator.createClearOrDeleteDialogAlert(SharedMediaLayout.this.profileActivity, false, null, currentUser, false, true, false, true, new MessagesStorage.BooleanCallback() { // from class: org.telegram.ui.Components.SharedMediaLayout$5$$ExternalSyntheticLambda17
                @Override // org.telegram.messenger.MessagesStorage.BooleanCallback
                public final void run(boolean z) {
                    this.f$0.lambda$onClick$10(currentUser, z);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onClick$10(TLRPC.User user, boolean z) {
            SharedMediaLayout.this.profileActivity.finishFragment();
            if (SharedMediaLayout.this.profileActivity instanceof NotificationCenter.NotificationCenterDelegate) {
                SharedMediaLayout.this.profileActivity.getNotificationCenter().removeObserver((NotificationCenter.NotificationCenterDelegate) SharedMediaLayout.this.profileActivity, NotificationCenter.closeChats);
            }
            SharedMediaLayout.this.profileActivity.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.closeChats, new Object[0]);
            SharedMediaLayout.this.profileActivity.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.needDeleteDialog, Long.valueOf(SharedMediaLayout.this.dialog_id), user, null, Boolean.valueOf(z));
            SharedMediaLayout.this.profileActivity.getMessagesController().setSavedViewAs(false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onClick$12(String str) {
            StoriesController storiesController = SharedMediaLayout.this.getStoriesController();
            long j = SharedMediaLayout.this.dialog_id;
            final SharedMediaLayout sharedMediaLayout = SharedMediaLayout.this;
            storiesController.createAlbum(j, str, new Utilities.Callback() { // from class: org.telegram.ui.Components.SharedMediaLayout$5$$ExternalSyntheticLambda18
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    sharedMediaLayout.onStoryAlbumCreate((StoriesController.StoryAlbum) obj);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onClick$13(Theme.ResourcesProvider resourcesProvider, ItemOptions itemOptions) {
            AlertsCreator.createStoriesAlbumEnterNameForCreate(SharedMediaLayout.this.getContext(), SharedMediaLayout.this.profileActivity, resourcesProvider, new MessagesStorage.StringCallback() { // from class: org.telegram.ui.Components.SharedMediaLayout$5$$ExternalSyntheticLambda16
                @Override // org.telegram.messenger.MessagesStorage.StringCallback
                public final void run(String str) {
                    this.f$0.lambda$onClick$12(str);
                }
            });
            itemOptions.dismiss();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onClick$14(int i, ItemOptions itemOptions) {
            SharedMediaLayout.this.showMediaCalendar(i, false);
            itemOptions.dismiss();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onClick$15(ItemOptions itemOptions) {
            Bundle bundle = new Bundle();
            bundle.putInt("type", 2);
            bundle.putLong("dialog_id", -SharedMediaLayout.this.info.id);
            MediaActivity mediaActivity = new MediaActivity(bundle, null);
            mediaActivity.setChatInfo(SharedMediaLayout.this.info);
            SharedMediaLayout.this.profileActivity.presentFragment(mediaActivity);
            itemOptions.dismiss();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onClick$16(ActionBarMenuSubItem actionBarMenuSubItem, ActionBarMenuSubItem actionBarMenuSubItem2, StoriesAdapter storiesAdapter, View view) {
            if (SharedMediaLayout.this.changeTypeAnimation) {
                return;
            }
            if (!actionBarMenuSubItem.getCheckView().isChecked() && actionBarMenuSubItem2.getCheckView().isChecked()) {
                SharedMediaLayout sharedMediaLayout = SharedMediaLayout.this;
                float f = -sharedMediaLayout.shiftDp;
                sharedMediaLayout.shiftDp = f;
                AndroidUtilities.shakeViewSpring(view, f);
                return;
            }
            actionBarMenuSubItem2.getCheckView().setChecked(!actionBarMenuSubItem2.getCheckView().isChecked(), true);
            StoriesController.StoriesList storiesList = storiesAdapter.storiesList;
            if (storiesList == null) {
                return;
            }
            storiesList.updateFilters(actionBarMenuSubItem2.getCheckView().isChecked(), actionBarMenuSubItem.getCheckView().isChecked());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onClick$17(ActionBarMenuSubItem actionBarMenuSubItem, ActionBarMenuSubItem actionBarMenuSubItem2, StoriesAdapter storiesAdapter, View view) {
            if (SharedMediaLayout.this.changeTypeAnimation) {
                return;
            }
            if (!actionBarMenuSubItem.getCheckView().isChecked() && actionBarMenuSubItem2.getCheckView().isChecked()) {
                SharedMediaLayout sharedMediaLayout = SharedMediaLayout.this;
                float f = -sharedMediaLayout.shiftDp;
                sharedMediaLayout.shiftDp = f;
                AndroidUtilities.shakeViewSpring(view, f);
                return;
            }
            actionBarMenuSubItem2.getCheckView().setChecked(!actionBarMenuSubItem2.getCheckView().isChecked(), true);
            StoriesController.StoriesList storiesList = storiesAdapter.storiesList;
            if (storiesList == null) {
                return;
            }
            storiesList.updateFilters(actionBarMenuSubItem.getCheckView().isChecked(), actionBarMenuSubItem2.getCheckView().isChecked());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$4(View view) {
        closeActionMode();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$5(View view) {
        onActionBarItemClick(view, 102);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$6(View view) {
        onActionBarItemClick(view, 100);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$7(View view) {
        onActionBarItemClick(view, 105);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$8(View view) {
        onActionBarItemClick(view, 103);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$9(View view) {
        onActionBarItemClick(view, 104);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$10(View view) {
        onActionBarItemClick(view, 101);
    }

    /* JADX INFO: renamed from: org.telegram.ui.Components.SharedMediaLayout$12, reason: invalid class name */
    public class AnonymousClass12 extends BotPreviewsEditContainer {
        public AnonymousClass12(Context context, BaseFragment baseFragment, long j) {
            super(context, baseFragment, j);
        }

        @Override // org.telegram.ui.Stories.bots.BotPreviewsEditContainer
        public void onSelectedTabChanged() {
            SharedMediaLayout.this.onSelectedTabChanged();
        }

        @Override // org.telegram.ui.Stories.bots.BotPreviewsEditContainer
        public boolean isSelected(MessageObject messageObject) {
            return SharedMediaLayout.this.selectedFiles[(messageObject.getDialogId() > SharedMediaLayout.this.dialog_id ? 1 : (messageObject.getDialogId() == SharedMediaLayout.this.dialog_id ? 0 : -1)) == 0 ? (char) 0 : (char) 1].indexOfKey(messageObject.getId()) >= 0;
        }

        @Override // org.telegram.ui.Stories.bots.BotPreviewsEditContainer
        public boolean select(MessageObject messageObject) {
            if (messageObject == null) {
                return false;
            }
            char c2 = messageObject.getDialogId() == SharedMediaLayout.this.dialog_id ? (char) 0 : (char) 1;
            if (SharedMediaLayout.this.selectedFiles[c2].indexOfKey(messageObject.getId()) >= 0 || SharedMediaLayout.this.selectedFiles[0].size() + SharedMediaLayout.this.selectedFiles[1].size() >= 100) {
                return false;
            }
            SharedMediaLayout.this.selectedFiles[c2].put(messageObject.getId(), messageObject);
            if (!messageObject.canDeleteMessage(false, null)) {
                SharedMediaLayout.this.cantDeleteMessagesCount++;
            }
            SharedMediaLayout sharedMediaLayout = SharedMediaLayout.this;
            if (!sharedMediaLayout.isActionModeShowed) {
                AndroidUtilities.hideKeyboard(sharedMediaLayout.profileActivity.getParentActivity().getCurrentFocus());
                int i = 8;
                SharedMediaLayout.this.deleteItem.setVisibility(SharedMediaLayout.this.cantDeleteMessagesCount == 0 ? 0 : 8);
                if (SharedMediaLayout.this.gotoItem != null) {
                    SharedMediaLayout.this.gotoItem.setVisibility((SharedMediaLayout.this.getClosestTab() == 8 || SharedMediaLayout.this.getClosestTab() == 13) ? 8 : 0);
                }
                if (SharedMediaLayout.this.pinItem != null) {
                    SharedMediaLayout.this.pinItem.setVisibility(8);
                }
                if (SharedMediaLayout.this.unpinItem != null) {
                    SharedMediaLayout.this.unpinItem.setVisibility(8);
                }
                if (SharedMediaLayout.this.forwardItem != null) {
                    ActionBarMenuItem actionBarMenuItem = SharedMediaLayout.this.forwardItem;
                    if (SharedMediaLayout.this.getClosestTab() != 8 && SharedMediaLayout.this.getClosestTab() != 13) {
                        i = 0;
                    }
                    actionBarMenuItem.setVisibility(i);
                }
                SharedMediaLayout.this.selectedMessagesCountTextView.setNumber(SharedMediaLayout.this.selectedFiles[0].size() + SharedMediaLayout.this.selectedFiles[1].size(), false);
                AnimatorSet animatorSet = new AnimatorSet();
                ArrayList arrayList = new ArrayList();
                for (int i2 = 0; i2 < SharedMediaLayout.this.actionModeViews.size(); i2++) {
                    View view = (View) SharedMediaLayout.this.actionModeViews.get(i2);
                    AndroidUtilities.clearDrawableAnimation(view);
                    arrayList.add(ObjectAnimator.ofFloat(view, (Property<View, Float>) View.SCALE_Y, 0.1f, 1.0f));
                }
                animatorSet.playTogether(arrayList);
                animatorSet.setDuration(250L);
                animatorSet.start();
                SharedMediaLayout.this.scrolling = false;
                SharedMediaLayout.this.showActionMode(true);
            } else {
                sharedMediaLayout.selectedMessagesCountTextView.setNumber(SharedMediaLayout.this.selectedFiles[0].size() + SharedMediaLayout.this.selectedFiles[1].size(), true);
            }
            updateSelection(true);
            return true;
        }

        @Override // org.telegram.ui.Stories.bots.BotPreviewsEditContainer
        public boolean unselect(MessageObject messageObject) {
            if (messageObject == null) {
                return false;
            }
            char c2 = messageObject.getDialogId() == SharedMediaLayout.this.dialog_id ? (char) 0 : (char) 1;
            if (SharedMediaLayout.this.selectedFiles[c2].indexOfKey(messageObject.getId()) < 0) {
                return false;
            }
            SharedMediaLayout.this.selectedFiles[c2].remove(messageObject.getId());
            if (!messageObject.canDeleteMessage(false, null)) {
                SharedMediaLayout.this.cantDeleteMessagesCount--;
            }
            if (SharedMediaLayout.this.selectedFiles[0].size() == 0 && SharedMediaLayout.this.selectedFiles[1].size() == 0) {
                AndroidUtilities.hideKeyboard(SharedMediaLayout.this.profileActivity.getParentActivity().getCurrentFocus());
                SharedMediaLayout.this.selectedFiles[0].clear();
                SharedMediaLayout.this.selectedFiles[1].clear();
                int i = 8;
                SharedMediaLayout.this.deleteItem.setVisibility(SharedMediaLayout.this.cantDeleteMessagesCount == 0 ? 0 : 8);
                if (SharedMediaLayout.this.gotoItem != null) {
                    SharedMediaLayout.this.gotoItem.setVisibility((SharedMediaLayout.this.getClosestTab() == 8 || SharedMediaLayout.this.getClosestTab() == 13) ? 8 : 0);
                }
                if (SharedMediaLayout.this.pinItem != null) {
                    SharedMediaLayout.this.pinItem.setVisibility(8);
                }
                if (SharedMediaLayout.this.unpinItem != null) {
                    SharedMediaLayout.this.unpinItem.setVisibility(8);
                }
                if (SharedMediaLayout.this.forwardItem != null) {
                    ActionBarMenuItem actionBarMenuItem = SharedMediaLayout.this.forwardItem;
                    if (SharedMediaLayout.this.getClosestTab() != 8 && SharedMediaLayout.this.getClosestTab() != 13) {
                        i = 0;
                    }
                    actionBarMenuItem.setVisibility(i);
                }
                AnimatorSet animatorSet = new AnimatorSet();
                ArrayList arrayList = new ArrayList();
                for (int i2 = 0; i2 < SharedMediaLayout.this.actionModeViews.size(); i2++) {
                    View view = (View) SharedMediaLayout.this.actionModeViews.get(i2);
                    AndroidUtilities.clearDrawableAnimation(view);
                    arrayList.add(ObjectAnimator.ofFloat(view, (Property<View, Float>) View.SCALE_Y, 1.0f, 0.1f));
                }
                animatorSet.playTogether(arrayList);
                animatorSet.setDuration(250L);
                animatorSet.start();
                SharedMediaLayout.this.scrolling = false;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$12$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$unselect$0();
                    }
                }, 20L);
            } else {
                SharedMediaLayout.this.selectedMessagesCountTextView.setNumber(SharedMediaLayout.this.selectedFiles[0].size() + SharedMediaLayout.this.selectedFiles[1].size(), true);
            }
            updateSelection(true);
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$unselect$0() {
            SharedMediaLayout sharedMediaLayout = SharedMediaLayout.this;
            if (sharedMediaLayout.isActionModeShowed) {
                sharedMediaLayout.showActionMode(false);
            }
        }

        @Override // org.telegram.ui.Stories.bots.BotPreviewsEditContainer
        public boolean isActionModeShowed() {
            return SharedMediaLayout.this.isActionModeShowed;
        }

        @Override // org.telegram.ui.Stories.bots.BotPreviewsEditContainer
        public int getStartedTrackingX() {
            return SharedMediaLayout.this.startedTrackingX;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$11(View view) {
        if (this.saveItem.getAlpha() < 0.1f) {
            return;
        }
        ProfileGiftsContainer profileGiftsContainer = this.giftsContainer;
        if (profileGiftsContainer != null && profileGiftsContainer.isReordering()) {
            this.giftsContainer.resetReordering();
        }
        ProfileStoriesCollectionTabs profileStoriesCollectionTabs = this.storiesContainer;
        if (profileStoriesCollectionTabs == null || !profileStoriesCollectionTabs.isReordering()) {
            return;
        }
        saveAndStopAlbumsReorder();
    }

    /* JADX INFO: renamed from: org.telegram.ui.Components.SharedMediaLayout$13, reason: invalid class name */
    public class AnonymousClass13 extends ProfileGiftsContainer {
        public AnonymousClass13(BaseFragment baseFragment, Context context, int i, long j, Theme.ResourcesProvider resourcesProvider) {
            super(baseFragment, context, i, j, resourcesProvider);
        }

        @Override // org.telegram.ui.Gifts.ProfileGiftsContainer
        public int processColor(int i) {
            return SharedMediaLayout.this.processColor(i);
        }

        @Override // org.telegram.ui.Gifts.ProfileGiftsContainer
        public void updatedReordering(final boolean z) {
            SharedMediaLayout.this.saveItem.setVisibility(0);
            SharedMediaLayout.this.saveItem.animate().alpha(z ? 1.0f : 0.0f).scaleX(z ? 1.0f : 0.4f).scaleY(z ? 1.0f : 0.4f).withEndAction(new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$13$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$updatedReordering$0(z);
                }
            }).start();
            SharedMediaLayout.this.updateOptionsSearch(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$updatedReordering$0(boolean z) {
            if (z) {
                return;
            }
            SharedMediaLayout.this.saveItem.setVisibility(0);
        }
    }

    /* JADX INFO: renamed from: org.telegram.ui.Components.SharedMediaLayout$14, reason: invalid class name */
    public class AnonymousClass14 implements ProfileStoriesCollectionTabs.Delegate {
        final /* synthetic */ Context val$context;
        final /* synthetic */ BaseFragment val$parent;
        final /* synthetic */ Theme.ResourcesProvider val$resourcesProvider;

        public AnonymousClass14(Context context, BaseFragment baseFragment, Theme.ResourcesProvider resourcesProvider) {
            this.val$context = context;
            this.val$parent = baseFragment;
            this.val$resourcesProvider = resourcesProvider;
        }

        @Override // org.telegram.ui.ProfileStoriesCollectionTabs.Delegate
        public void onTabAlbumSelected(int i, boolean z) {
            SharedMediaLayout sharedMediaLayout = SharedMediaLayout.this;
            if (i <= 0) {
                sharedMediaLayout.openStoryTabIdPage(8, z);
            } else {
                SharedMediaLayout.this.openStoryTabIdPage(sharedMediaLayout.storyAlbums_getByAlbumId(i).tabType, z);
            }
        }

        @Override // org.telegram.ui.ProfileStoriesCollectionTabs.Delegate
        public void onTabAlbumScrollEnd(int i) {
            SharedMediaLayout.this.onPageMediaProgress(1.0f);
        }

        @Override // org.telegram.ui.ProfileStoriesCollectionTabs.Delegate
        public void onTabAlbumAnimationUpdate(float f) {
            SharedMediaLayout.this.onPageMediaProgress(f);
        }

        @Override // org.telegram.ui.ProfileStoriesCollectionTabs.Delegate
        public void onTabAlbumCreateCollection() {
            AlertsCreator.createStoriesAlbumEnterNameForCreate(this.val$context, this.val$parent, this.val$resourcesProvider, new MessagesStorage.StringCallback() { // from class: org.telegram.ui.Components.SharedMediaLayout$14$$ExternalSyntheticLambda4
                @Override // org.telegram.messenger.MessagesStorage.StringCallback
                public final void run(String str) {
                    this.f$0.lambda$onTabAlbumCreateCollection$0(str);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onTabAlbumCreateCollection$0(String str) {
            StoriesController storiesController = SharedMediaLayout.this.getStoriesController();
            long j = SharedMediaLayout.this.dialog_id;
            final SharedMediaLayout sharedMediaLayout = SharedMediaLayout.this;
            storiesController.createAlbum(j, str, new Utilities.Callback() { // from class: org.telegram.ui.Components.SharedMediaLayout$14$$ExternalSyntheticLambda5
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    sharedMediaLayout.onStoryAlbumCreate((StoriesController.StoryAlbum) obj);
                }
            });
        }

        @Override // org.telegram.ui.ProfileStoriesCollectionTabs.Delegate
        public void onTabAlbumLongClick(View view, final int i) {
            if (SharedMediaLayout.this.getStoriesController().canEditStoryAlbums(SharedMediaLayout.this.dialog_id)) {
                ItemOptions scrimViewBackground = ItemOptions.makeOptions(SharedMediaLayout.this.profileActivity, view).setScrimViewBackground(new Drawable() { // from class: org.telegram.ui.Components.SharedMediaLayout.14.1
                    private final Drawable bg;
                    private final Rect bgBounds = new Rect();

                    @Override // android.graphics.drawable.Drawable
                    public int getOpacity() {
                        return -2;
                    }

                    @Override // android.graphics.drawable.Drawable
                    public void setColorFilter(ColorFilter colorFilter) {
                    }

                    {
                        this.bg = Theme.createRoundRectDrawable(AndroidUtilities.dp(16.0f), AndroidUtilities.dp(16.0f), Theme.blendOver(Theme.getColor(Theme.key_windowBackgroundWhite, AnonymousClass14.this.val$resourcesProvider), Theme.multAlpha(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, AnonymousClass14.this.val$resourcesProvider), 0.04f)));
                    }

                    @Override // android.graphics.drawable.Drawable
                    public void draw(Canvas canvas) {
                        this.bgBounds.set(getBounds());
                        this.bgBounds.inset(AndroidUtilities.dp(2.0f), AndroidUtilities.dp(8.0f));
                        this.bg.setBounds(this.bgBounds);
                        this.bg.draw(canvas);
                    }

                    @Override // android.graphics.drawable.Drawable
                    public void setAlpha(int i2) {
                        this.bg.setAlpha(i2);
                    }
                });
                scrimViewBackground.add(C2807R.drawable.menu_add_stories, LocaleController.getString(C2807R.string.StoriesAlbumMenuAddStories), new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$14$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onTabAlbumLongClick$1(i);
                    }
                });
                SharedMediaLayout sharedMediaLayout = SharedMediaLayout.this;
                sharedMediaLayout.addStoryAlbumShareItemOptions(scrimViewBackground, sharedMediaLayout.profileActivity, SharedMediaLayout.this.dialog_id, i);
                scrimViewBackground.add(C2807R.drawable.msg_edit, LocaleController.getString(C2807R.string.StoriesAlbumMenuEditName), new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$14$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onTabAlbumLongClick$2(i);
                    }
                });
                scrimViewBackground.add(C2807R.drawable.tabs_reorder, LocaleController.getString(C2807R.string.StoriesAlbumMenuReorder), new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$14$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onTabAlbumLongClick$3(i);
                    }
                });
                scrimViewBackground.add(C2807R.drawable.msg_delete, (CharSequence) LocaleController.getString(C2807R.string.StoriesAlbumMenuDeleteAlbum), true, new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$14$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onTabAlbumLongClick$4(i);
                    }
                });
                scrimViewBackground.show();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onTabAlbumLongClick$1(int i) {
            SharedMediaLayout sharedMediaLayout = SharedMediaLayout.this;
            sharedMediaLayout.openAddStoriesToAlbumSheet(sharedMediaLayout.profileActivity, SharedMediaLayout.this.dialog_id, i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onTabAlbumLongClick$2(int i) {
            SharedMediaLayout sharedMediaLayout = SharedMediaLayout.this;
            sharedMediaLayout.openRenameStoriesAlbumAlert(sharedMediaLayout.profileActivity, SharedMediaLayout.this.dialog_id, i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onTabAlbumLongClick$3(int i) {
            SharedMediaLayout.this.lambda$onItemLongClick$60(i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onTabAlbumLongClick$4(int i) {
            SharedMediaLayout sharedMediaLayout = SharedMediaLayout.this;
            sharedMediaLayout.openDeleteStoriesAlbumAlert(sharedMediaLayout.profileActivity, SharedMediaLayout.this.dialog_id, i);
        }
    }

    /* JADX INFO: renamed from: org.telegram.ui.Components.SharedMediaLayout$15, reason: invalid class name */
    public class AnonymousClass15 extends ProfileStoriesCollectionTabs {
        public AnonymousClass15(Context context, SizeNotifierFrameLayout sizeNotifierFrameLayout, StoriesController.StoriesCollections storiesCollections, ProfileStoriesCollectionTabs.Delegate delegate) {
            super(context, sizeNotifierFrameLayout, storiesCollections, delegate);
        }

        @Override // org.telegram.ui.ProfileStoriesCollectionTabs
        public void updatedReordering(final boolean z) {
            SharedMediaLayout.this.saveItem.setVisibility(0);
            SharedMediaLayout.this.saveItem.animate().alpha(z ? 1.0f : 0.0f).scaleX(z ? 1.0f : 0.4f).scaleY(z ? 1.0f : 0.4f).withEndAction(new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$15$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$updatedReordering$0(z);
                }
            }).start();
            SharedMediaLayout.this.updateOptionsSearch(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$updatedReordering$0(boolean z) {
            if (z) {
                return;
            }
            SharedMediaLayout.this.saveItem.setVisibility(0);
        }

        @Override // org.telegram.ui.ProfileStoriesCollectionTabs
        public void onVisibilityChange(float f) {
            super.onVisibilityChange(f);
            if (SharedMediaLayout.this.mediaPages != null) {
                for (final MediaPage mediaPage : SharedMediaLayout.this.mediaPages) {
                    if (mediaPage != null && mediaPage.listView != null) {
                        int paddingTop = mediaPage.listView.getPaddingTop();
                        InternalListView internalListView = mediaPage.listView;
                        int paddingLeft = mediaPage.listView.getPaddingLeft();
                        int pagePaddingTop = SharedMediaLayout.this.getPagePaddingTop(mediaPage.selectedType);
                        int paddingRight = mediaPage.listView.getPaddingRight();
                        InternalListView internalListView2 = mediaPage.listView;
                        SharedMediaLayout sharedMediaLayout = SharedMediaLayout.this;
                        int pagePaddingBottom = sharedMediaLayout.getPagePaddingBottom(sharedMediaLayout.isStoriesView());
                        internalListView2.hintPaddingBottom = pagePaddingBottom;
                        internalListView.setPadding(paddingLeft, pagePaddingTop, paddingRight, pagePaddingBottom);
                        final int paddingTop2 = paddingTop - mediaPage.listView.getPaddingTop();
                        if (paddingTop2 != 0) {
                            AndroidUtilities.doOnLayout(mediaPage.listView, new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$15$$ExternalSyntheticLambda1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    mediaPage.listView.scrollBy(0, paddingTop2);
                                }
                            });
                        }
                    }
                    if (mediaPage != null && mediaPage.progressView != null) {
                        SharedMediaLayout.this.updateProgressViewLayout(mediaPage);
                    }
                }
            }
            SharedMediaLayout.this.checkUi_topPanelLayoutY();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$30(MediaPage mediaPage, final Context context, final long j, final Theme.ResourcesProvider resourcesProvider, View view, int i, final float f, final float f2) {
        TLRPC.TL_chatAdminRights tL_chatAdminRights;
        long peerId;
        int i2 = mediaPage.selectedType;
        if (i2 == 7) {
            if (view instanceof UserCell) {
                int iIntValue = !this.chatUsersAdapter.sortedUsers.isEmpty() ? ((Integer) this.chatUsersAdapter.sortedUsers.get(i)).intValue() : i;
                TLRPC.ChatParticipant chatParticipant = this.chatUsersAdapter.chatInfo.participants.participants.get(iIntValue);
                if (iIntValue < 0 || iIntValue >= this.chatUsersAdapter.chatInfo.participants.participants.size()) {
                    return;
                }
                onMemberClick(chatParticipant, false, view);
                return;
            }
            RecyclerView.Adapter adapter = mediaPage.listView.getAdapter();
            GroupUsersSearchAdapter groupUsersSearchAdapter = this.groupUsersSearchAdapter;
            if (adapter == groupUsersSearchAdapter) {
                TLObject item = groupUsersSearchAdapter.getItem(i);
                if (item instanceof TLRPC.ChannelParticipant) {
                    peerId = MessageObject.getPeerId(((TLRPC.ChannelParticipant) item).peer);
                } else if (!(item instanceof TLRPC.ChatParticipant)) {
                    return;
                } else {
                    peerId = ((TLRPC.ChatParticipant) item).user_id;
                }
                if (peerId == 0 || peerId == this.profileActivity.getUserConfig().getClientUserId()) {
                    return;
                }
                Bundle bundle = new Bundle();
                bundle.putLong("user_id", peerId);
                this.profileActivity.presentFragment(new ProfileActivity(bundle));
                return;
            }
            return;
        }
        if (i2 == 6 && (view instanceof ProfileSearchCell)) {
            TLRPC.Chat chat = ((ProfileSearchCell) view).getChat();
            Bundle bundle2 = new Bundle();
            bundle2.putLong("chat_id", chat.id);
            if (this.profileActivity.getMessagesController().checkCanOpenChat(bundle2, this.profileActivity)) {
                boolean z = chat.forum;
                BaseFragment baseFragment = this.profileActivity;
                if (z) {
                    baseFragment.presentFragment(TopicsFragment.getTopicsOrChat(baseFragment, bundle2));
                    return;
                } else {
                    baseFragment.presentFragment(new ChatActivity(bundle2));
                    return;
                }
            }
            return;
        }
        if (i2 == 1 && (view instanceof SharedDocumentCell)) {
            onItemClick(i, view, ((SharedDocumentCell) view).getMessage(), 0, mediaPage.selectedType);
            return;
        }
        if (i2 == 3 && (view instanceof SharedLinkCell)) {
            onItemClick(i, view, ((SharedLinkCell) view).getMessage(), 0, mediaPage.selectedType);
            return;
        }
        if ((i2 == 2 || i2 == 4) && (view instanceof SharedAudioCell)) {
            onItemClick(i, view, ((SharedAudioCell) view).getMessage(), 0, mediaPage.selectedType);
            return;
        }
        if (i2 == 5 && (view instanceof ContextLinkCell)) {
            onItemClick(i, view, (MessageObject) ((ContextLinkCell) view).getParentObject(), 0, mediaPage.selectedType);
            return;
        }
        if (i2 == 0 && (view instanceof SharedPhotoVideoCell2)) {
            final SharedPhotoVideoCell2 sharedPhotoVideoCell2 = (SharedPhotoVideoCell2) view;
            MessageObject messageObject = sharedPhotoVideoCell2.getMessageObject();
            if (messageObject != null && messageObject.isSensitive()) {
                BaseFragment baseFragment2 = this.profileActivity;
                if (baseFragment2 == null) {
                    return;
                }
                final int currentAccount = baseFragment2.getCurrentAccount();
                final MessagesController messagesController = MessagesController.getInstance(currentAccount);
                final AlertDialog alertDialog = new AlertDialog(context, 3);
                alertDialog.showDelayed(200L);
                messagesController.getContentSettings(new Utilities.Callback() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda24
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        this.f$0.lambda$new$17(alertDialog, messagesController, context, sharedPhotoVideoCell2, f, f2, currentAccount, (TL_account.contentSettings) obj);
                    }
                });
                return;
            }
            if (!this.isActionModeShowed && sharedPhotoVideoCell2.canRevealSpoiler()) {
                sharedPhotoVideoCell2.startRevealMedia(f, f2);
                return;
            } else {
                if (messageObject != null) {
                    onItemClick(i, view, messageObject, 0, mediaPage.selectedType);
                    return;
                }
                return;
            }
        }
        if (isAnyStoryPageType(i2) && (view instanceof SharedPhotoVideoCell2)) {
            MessageObject messageObject2 = ((SharedPhotoVideoCell2) view).getMessageObject();
            if (messageObject2 != null) {
                onItemClick(i, view, messageObject2, 0, mediaPage.selectedType);
                return;
            }
            return;
        }
        int i3 = mediaPage.selectedType;
        if (i3 == 10) {
            if (((view instanceof ProfileSearchCell) || f2 < AndroidUtilities.dp(60.0f)) && i >= 0 && i < this.channelRecommendationsAdapter.chats.size()) {
                Bundle bundle3 = new Bundle();
                TLObject tLObject = (TLObject) this.channelRecommendationsAdapter.chats.get(i);
                if (tLObject instanceof TLRPC.Chat) {
                    bundle3.putLong("chat_id", ((TLRPC.Chat) tLObject).id);
                } else if (!(tLObject instanceof TLRPC.User)) {
                    return;
                } else {
                    bundle3.putLong("user_id", ((TLRPC.User) tLObject).id);
                }
                this.profileActivity.presentFragment(new ChatActivity(bundle3));
                return;
            }
            return;
        }
        if (i3 == 11) {
            RecyclerView.Adapter adapter2 = mediaPage.listView.getAdapter();
            SavedMessagesSearchAdapter savedMessagesSearchAdapter = this.savedMessagesSearchAdapter;
            if (adapter2 != savedMessagesSearchAdapter) {
                if (this.isActionModeShowed) {
                    if (this.savedDialogsAdapter.itemTouchHelper.isIdle()) {
                        this.savedDialogsAdapter.select(view);
                        return;
                    }
                    return;
                }
                Bundle bundle4 = new Bundle();
                if (i < 0 || i >= this.savedDialogsAdapter.dialogs.size()) {
                    return;
                }
                SavedMessagesController.SavedDialog savedDialog = (SavedMessagesController.SavedDialog) this.savedDialogsAdapter.dialogs.get(i);
                bundle4.putLong("user_id", this.profileActivity.getUserConfig().getClientUserId());
                bundle4.putInt("chatMode", 3);
                ChatActivity chatActivity = new ChatActivity(bundle4);
                chatActivity.setSavedDialog(savedDialog.dialogId);
                this.profileActivity.presentFragment(chatActivity);
                return;
            }
            if (i < 0) {
                return;
            }
            int size = savedMessagesSearchAdapter.dialogs.size();
            SavedMessagesSearchAdapter savedMessagesSearchAdapter2 = this.savedMessagesSearchAdapter;
            if (i < size) {
                SavedMessagesController.SavedDialog savedDialog2 = savedMessagesSearchAdapter2.dialogs.get(i);
                Bundle bundle5 = new Bundle();
                bundle5.putLong("user_id", this.profileActivity.getUserConfig().getClientUserId());
                bundle5.putInt("chatMode", 3);
                ChatActivity chatActivity2 = new ChatActivity(bundle5);
                chatActivity2.setSavedDialog(savedDialog2.dialogId);
                this.profileActivity.presentFragment(chatActivity2);
                return;
            }
            final int size2 = i - savedMessagesSearchAdapter2.dialogs.size();
            if (size2 < this.savedMessagesSearchAdapter.messages.size()) {
                MessageObject messageObject3 = this.savedMessagesSearchAdapter.messages.get(size2);
                Bundle bundle6 = new Bundle();
                bundle6.putLong("user_id", this.profileActivity.getUserConfig().getClientUserId());
                bundle6.putInt("message_id", messageObject3.getId());
                ChatActivity chatActivity3 = new ChatActivity(bundle6) { // from class: org.telegram.ui.Components.SharedMediaLayout.23
                    boolean firstCreateView = true;

                    @Override // org.telegram.ui.ChatActivity, org.telegram.ui.ActionBar.BaseFragment
                    public void onTransitionAnimationStart(boolean z2, boolean z3) {
                        if (this.firstCreateView) {
                            if (this.searchItem != null) {
                                lambda$openSearchWithText$421(_UrlKt.FRAGMENT_ENCODE_SET);
                                this.searchItem.setSearchFieldText(SharedMediaLayout.this.savedMessagesSearchAdapter.lastQuery, false);
                            }
                            SearchTagsList searchTagsList = this.actionBarSearchTags;
                            if (searchTagsList != null) {
                                searchTagsList.setChosen(SharedMediaLayout.this.savedMessagesSearchAdapter.lastReaction, false);
                            }
                            SharedMediaLayout.this.profileActivity.getMediaDataController().portSavedSearchResults(getClassGuid(), SharedMediaLayout.this.savedMessagesSearchAdapter.lastReaction, SharedMediaLayout.this.savedMessagesSearchAdapter.lastQuery, SharedMediaLayout.this.savedMessagesSearchAdapter.cachedMessages, SharedMediaLayout.this.savedMessagesSearchAdapter.loadedMessages, size2, SharedMediaLayout.this.savedMessagesSearchAdapter.count, SharedMediaLayout.this.savedMessagesSearchAdapter.endReached);
                            this.firstCreateView = false;
                        }
                        super.onTransitionAnimationStart(z2, z3);
                    }
                };
                chatActivity3.setHighlightMessageId(messageObject3.getId());
                this.profileActivity.presentFragment(chatActivity3);
                return;
            }
            return;
        }
        if (i3 == 15 && (view instanceof ChatMessageCell)) {
            ChatMessageCell chatMessageCell = (ChatMessageCell) view;
            final MessageObject messageObject4 = chatMessageCell.getMessageObject();
            mediaPage.listView.stopScroll();
            final int currentAccount2 = this.profileActivity.getCurrentAccount();
            TLRPC.Chat chat2 = this.profileActivity.getMessagesController().getChat(Long.valueOf(j));
            ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions(mediaPage, resourcesProvider, chatMessageCell);
            itemOptionsMakeOptions.offsetByContainer();
            itemOptionsMakeOptions.setGravity(messageObject4.isOutOwner() ? 5 : 3);
            itemOptionsMakeOptions.add(C2807R.drawable.msg_message, LocaleController.getString(C2807R.string.AccDescrGoToMessage), new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda25
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$18(j, messageObject4);
                }
            });
            if (!messageObject4.isPollClosed()) {
                if (messageObject4.canUnvote()) {
                    itemOptionsMakeOptions.add(C2807R.drawable.msg_unvote, LocaleController.getString(C2807R.string.Unvote), new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda26
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$new$22(resourcesProvider, currentAccount2, messageObject4);
                        }
                    });
                }
                if (!messageObject4.isForwarded() && ((messageObject4.isOut() && (!ChatObject.isChannel(chat2) || chat2.megagroup)) || (ChatObject.isChannel(chat2) && !chat2.megagroup && (chat2.creator || ((tL_chatAdminRights = chat2.admin_rights) != null && tL_chatAdminRights.edit_messages))))) {
                    itemOptionsMakeOptions.add(C2807R.drawable.msg_pollstop, LocaleController.getString(messageObject4.isQuiz() ? C2807R.string.StopQuiz : C2807R.string.StopPoll), new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda27
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$new$29(resourcesProvider, messageObject4, currentAccount2);
                        }
                    });
                }
            }
            itemOptionsMakeOptions.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$17(AlertDialog alertDialog, final MessagesController messagesController, final Context context, final SharedPhotoVideoCell2 sharedPhotoVideoCell2, final float f, final float f2, final int i, final TL_account.contentSettings contentsettings) {
        alertDialog.dismissUnless(200L);
        final boolean z = messagesController.config.needAgeVideoVerification.get() && !TextUtils.isEmpty(messagesController.verifyAgeBotUsername);
        boolean z2 = (contentsettings == null || !contentsettings.sensitive_can_change) && z;
        final boolean[] zArr = new boolean[1];
        FrameLayout frameLayout = new FrameLayout(context);
        if (z) {
            zArr[0] = true;
        } else if (contentsettings != null && contentsettings.sensitive_can_change) {
            BaseFragment baseFragment = this.profileActivity;
            CheckBoxCell checkBoxCell = new CheckBoxCell(context, 1, baseFragment == null ? null : baseFragment.getResourceProvider());
            checkBoxCell.setBackground(Theme.getSelectorDrawable(false));
            checkBoxCell.setText(LocaleController.getString(C2807R.string.MessageShowSensitiveContentAlways), _UrlKt.FRAGMENT_ENCODE_SET, zArr[0], false);
            checkBoxCell.setPadding(LocaleController.isRTL ? AndroidUtilities.dp(16.0f) : AndroidUtilities.dp(8.0f), 0, LocaleController.isRTL ? AndroidUtilities.dp(8.0f) : AndroidUtilities.dp(16.0f), 0);
            frameLayout.addView(checkBoxCell, LayoutHelper.createFrame(-1, 48.0f, 51, 0.0f, 0.0f, 0.0f, 0.0f));
            checkBoxCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda38
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SharedMediaLayout.$r8$lambda$jxpdSI0XcvEexIJzVpeHgPhKHs8(zArr, view);
                }
            });
        }
        BaseFragment baseFragment2 = this.profileActivity;
        AlertDialog.Builder negativeButton = new AlertDialog.Builder(context, baseFragment2 == null ? null : baseFragment2.getResourceProvider()).setTitle(LocaleController.getString(C2807R.string.MessageShowSensitiveContentMediaTitle)).setMessage(LocaleController.getString(z2 ? C2807R.string.MessageShowSensitiveContentMediaTextClosed : C2807R.string.MessageShowSensitiveContentMediaText)).setView(frameLayout).setCustomViewOffset(9).setNegativeButton(LocaleController.getString(z2 ? C2807R.string.MessageShowSensitiveContentMediaTextClosedButton : C2807R.string.Cancel), null);
        if (!z2) {
            negativeButton.setPositiveButton(LocaleController.getString(C2807R.string.MessageShowSensitiveContentButton), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda39
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog2, int i2) {
                    SharedMediaLayout.$r8$lambda$eBnPQ__zxwyUKXtky2SPmcbv5OM(sharedPhotoVideoCell2, f, f2, zArr, z, contentsettings, context, i, messagesController, alertDialog2, i2);
                }
            });
        }
        BaseFragment baseFragment3 = this.profileActivity;
        if (baseFragment3 != null && baseFragment3.getContext() != null) {
            this.profileActivity.showDialog(negativeButton.create());
        } else {
            negativeButton.show();
        }
    }

    public static /* synthetic */ void $r8$lambda$jxpdSI0XcvEexIJzVpeHgPhKHs8(boolean[] zArr, View view) {
        boolean z = !zArr[0];
        zArr[0] = z;
        ((CheckBoxCell) view).setChecked(z, true);
    }

    public static /* synthetic */ void $r8$lambda$eBnPQ__zxwyUKXtky2SPmcbv5OM(final SharedPhotoVideoCell2 sharedPhotoVideoCell2, final float f, final float f2, boolean[] zArr, boolean z, TL_account.contentSettings contentsettings, Context context, int i, final MessagesController messagesController, AlertDialog alertDialog, int i2) {
        final Utilities.Callback callback = new Utilities.Callback() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda63
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                sharedPhotoVideoCell2.startRevealMedia(f, f2);
            }
        };
        if (zArr[0]) {
            if (z || (contentsettings != null && contentsettings.sensitive_can_change)) {
                BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
                ThemeActivity.verifyAge(context, i, new Utilities.Callback() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda64
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        SharedMediaLayout.$r8$lambda$fxSn8p6GLBqfyeTT_SGKKnwUk8U(messagesController, callback, (Boolean) obj);
                    }
                }, safeLastFragment == null ? null : safeLastFragment.getResourceProvider());
                return;
            } else {
                callback.run(Boolean.TRUE);
                return;
            }
        }
        callback.run(Boolean.FALSE);
    }

    public static /* synthetic */ void $r8$lambda$fxSn8p6GLBqfyeTT_SGKKnwUk8U(MessagesController messagesController, Utilities.Callback callback, Boolean bool) {
        final BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (!bool.booleanValue()) {
            if (safeLastFragment != null) {
                BulletinFactory.of(safeLastFragment).createSimpleBulletin(C2807R.raw.error, LocaleController.getString(C2807R.string.AgeVerificationFailedTitle), LocaleController.getString(C2807R.string.AgeVerificationFailedText)).show();
            }
        } else {
            messagesController.setContentSettings(true);
            if (safeLastFragment != null) {
                BulletinFactory.of(safeLastFragment).createSimpleBulletinDetail(C2807R.raw.chats_infotip, AndroidUtilities.replaceArrows(AndroidUtilities.premiumText(LocaleController.getString(C2807R.string.SensitiveContentSettingsToast), new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda83
                    @Override // java.lang.Runnable
                    public final void run() {
                        safeLastFragment.presentFragment(new ThemeActivity(0).highlightSensitiveRow());
                    }
                }), true)).show(true);
            }
            callback.run(Boolean.TRUE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$18(long j, MessageObject messageObject) {
        this.profileActivity.presentFragment(ChatActivity.of(j, messageObject.getId()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$22(Theme.ResourcesProvider resourcesProvider, final int i, MessageObject messageObject) {
        final AlertDialog[] alertDialogArr = {new AlertDialog(getContext(), 3, resourcesProvider)};
        final int iSendVote = SendMessagesHelper.getInstance(i).sendVote(messageObject, null, new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda51
            @Override // java.lang.Runnable
            public final void run() {
                SharedMediaLayout.$r8$lambda$tlmpdWnLsvkkm6tCe5g7ElrDZzk(alertDialogArr);
            }
        });
        if (iSendVote != 0) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda52
                @Override // java.lang.Runnable
                public final void run() {
                    SharedMediaLayout.$r8$lambda$ISP_0waSH7fZavyjWT2pbY6nVLg(alertDialogArr, i, iSendVote);
                }
            }, 500L);
        }
    }

    public static /* synthetic */ void $r8$lambda$tlmpdWnLsvkkm6tCe5g7ElrDZzk(AlertDialog[] alertDialogArr) {
        try {
            alertDialogArr[0].dismiss();
        } catch (Throwable unused) {
        }
        alertDialogArr[0] = null;
    }

    public static /* synthetic */ void $r8$lambda$ISP_0waSH7fZavyjWT2pbY6nVLg(AlertDialog[] alertDialogArr, final int i, final int i2) {
        AlertDialog alertDialog = alertDialogArr[0];
        if (alertDialog == null) {
            return;
        }
        alertDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda74
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                ConnectionsManager.getInstance(i).cancelRequest(i2, true);
            }
        });
        alertDialogArr[0].show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$29(final Theme.ResourcesProvider resourcesProvider, final MessageObject messageObject, final int i) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext(), resourcesProvider);
        builder.setDimEnabled(false);
        if (messageObject.isQuiz()) {
            builder.setTitle(LocaleController.getString(C2807R.string.StopQuizAlertTitle));
            builder.setMessage(LocaleController.getString(C2807R.string.StopQuizAlertText));
        } else {
            builder.setTitle(LocaleController.getString(C2807R.string.StopPollAlertTitle));
            builder.setMessage(LocaleController.getString(C2807R.string.StopPollAlertText));
        }
        builder.setPositiveButton(LocaleController.getString(C2807R.string.Stop), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda55
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i2) {
                this.f$0.lambda$new$28(resourcesProvider, messageObject, i, alertDialog, i2);
            }
        });
        builder.setNegativeButton(LocaleController.getString(C2807R.string.Cancel), null);
        builder.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$28(Theme.ResourcesProvider resourcesProvider, MessageObject messageObject, final int i, AlertDialog alertDialog, int i2) {
        final AlertDialog[] alertDialogArr = {new AlertDialog(getContext(), 3, resourcesProvider)};
        final TLRPC.TL_messages_editMessage tL_messages_editMessage = new TLRPC.TL_messages_editMessage();
        TLRPC.TL_messageMediaPoll tL_messageMediaPoll = (TLRPC.TL_messageMediaPoll) messageObject.messageOwner.media;
        TLRPC.TL_inputMediaPoll tL_inputMediaPoll = new TLRPC.TL_inputMediaPoll();
        TLRPC.TL_poll tL_poll = new TLRPC.TL_poll();
        tL_inputMediaPoll.poll = tL_poll;
        TLRPC.Poll poll = tL_messageMediaPoll.poll;
        tL_poll.id = poll.id;
        tL_poll.question = poll.question;
        tL_poll.answers = poll.answers;
        tL_poll.closed = true;
        tL_messages_editMessage.media = tL_inputMediaPoll;
        tL_messages_editMessage.peer = MessagesController.getInstance(i).getInputPeer(this.dialog_id);
        tL_messages_editMessage.id = messageObject.getId();
        tL_messages_editMessage.flags |= 16384;
        final int iSendRequest = ConnectionsManager.getInstance(i).sendRequest(tL_messages_editMessage, new RequestDelegate() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda72
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$new$25(alertDialogArr, i, tL_messages_editMessage, tLObject, tL_error);
            }
        });
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda73
            @Override // java.lang.Runnable
            public final void run() {
                SharedMediaLayout.$r8$lambda$SdKpKEKnntOutYaH9R_ZPaN00Ns(alertDialogArr, i, iSendRequest);
            }
        }, 500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$25(final AlertDialog[] alertDialogArr, final int i, final TLRPC.TL_messages_editMessage tL_messages_editMessage, TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda78
            @Override // java.lang.Runnable
            public final void run() {
                SharedMediaLayout.$r8$lambda$g9i3q6gq0S8sIBkZ30Cvg9gQFn0(alertDialogArr);
            }
        });
        if (tL_error == null) {
            MessagesController.getInstance(i).processUpdates((TLRPC.Updates) tLObject, false);
        } else {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda79
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$24(i, tL_error, tL_messages_editMessage);
                }
            });
        }
    }

    public static /* synthetic */ void $r8$lambda$g9i3q6gq0S8sIBkZ30Cvg9gQFn0(AlertDialog[] alertDialogArr) {
        try {
            alertDialogArr[0].dismiss();
        } catch (Throwable unused) {
        }
        alertDialogArr[0] = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$24(int i, TLRPC.TL_error tL_error, TLRPC.TL_messages_editMessage tL_messages_editMessage) {
        AlertsCreator.processError(i, tL_error, this.profileActivity, tL_messages_editMessage, new Object[0]);
    }

    public static /* synthetic */ void $r8$lambda$SdKpKEKnntOutYaH9R_ZPaN00Ns(AlertDialog[] alertDialogArr, final int i, final int i2) {
        AlertDialog alertDialog = alertDialogArr[0];
        if (alertDialog == null) {
            return;
        }
        alertDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda80
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                ConnectionsManager.getInstance(i).cancelRequest(i2, true);
            }
        });
        alertDialogArr[0].show();
    }

    /* JADX INFO: renamed from: $r8$lambda$MiPncLsaYY7WU8J9w4Aqt-ENG1M, reason: not valid java name */
    public static /* synthetic */ boolean m14462$r8$lambda$MiPncLsaYY7WU8J9w4AqtENG1M(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$33() {
        this.topLayoutPadding = (int) this.topPanelLayout.getAnimatedHeightWithPadding(AndroidUtilities.dp(14.0f));
        ProfileGiftsContainer profileGiftsContainer = this.giftsContainer;
        if (profileGiftsContainer != null) {
            profileGiftsContainer.setPaddingTop(AndroidUtilities.dp(48.0f) + ((int) this.topPanelLayout.getAnimatedHeightWithPadding(AndroidUtilities.dp(7.0f))));
        }
        MediaPage[] mediaPageArr = this.mediaPages;
        if (mediaPageArr != null) {
            for (final MediaPage mediaPage : mediaPageArr) {
                if (mediaPage != null) {
                    int paddingTop = mediaPage.listView.getPaddingTop();
                    InternalListView internalListView = mediaPage.listView;
                    int paddingLeft = mediaPage.listView.getPaddingLeft();
                    int pagePaddingTop = getPagePaddingTop(mediaPage.selectedType);
                    int paddingRight = mediaPage.listView.getPaddingRight();
                    InternalListView internalListView2 = mediaPage.listView;
                    int pagePaddingBottom = getPagePaddingBottom(isStoriesView());
                    internalListView2.hintPaddingBottom = pagePaddingBottom;
                    internalListView.setPadding(paddingLeft, pagePaddingTop, paddingRight, pagePaddingBottom);
                    final int paddingTop2 = paddingTop - mediaPage.listView.getPaddingTop();
                    if (paddingTop2 != 0) {
                        AndroidUtilities.doOnLayout(mediaPage.listView, new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda23
                            @Override // java.lang.Runnable
                            public final void run() {
                                SharedMediaLayout.$r8$lambda$w73q0O8ZLLesdj9NLbXWgH0DyJM(paddingTop2, mediaPage);
                            }
                        });
                    }
                }
            }
        }
    }

    public static /* synthetic */ void $r8$lambda$w73q0O8ZLLesdj9NLbXWgH0DyJM(int i, MediaPage mediaPage) {
        if (i < 0 || mediaPage.listView.canScrollVertically(-1)) {
            mediaPage.listView.scrollBy(0, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$34(boolean z, boolean z2) {
        if (!z) {
            requestLayout();
        }
        setVisibleHeight(this.lastVisibleHeight);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$35(Canvas canvas, RectF rectF) {
        IBlur3Capture iBlur3Capture;
        for (MediaPage mediaPage : this.mediaPages) {
            if (mediaPage.iBlur3Capture != null) {
                mediaPage.iBlur3Capture.capture(canvas, rectF);
            }
        }
        ProfileGiftsContainer profileGiftsContainer = this.giftsContainer;
        if (profileGiftsContainer == null || (iBlur3Capture = profileGiftsContainer.iBlur3Capture) == null) {
            return;
        }
        iBlur3Capture.capture(canvas, rectF);
    }

    public boolean isBot() {
        TLRPC.User user;
        return this.dialog_id > 0 && (user = MessagesController.getInstance(this.profileActivity.getCurrentAccount()).getUser(Long.valueOf(this.dialog_id))) != null && user.bot;
    }

    public void setStoriesFilter(boolean z, boolean z2) {
        StoriesController.StoriesList storiesList;
        StoriesController.StoriesList storiesList2;
        StoriesAdapter storiesAdapter = this.storiesAdapter;
        if (storiesAdapter != null && (storiesList2 = storiesAdapter.storiesList) != null) {
            storiesList2.updateFilters(z, z2);
        }
        StoriesAdapter storiesAdapter2 = this.archivedStoriesAdapter;
        if (storiesAdapter2 == null || (storiesList = storiesAdapter2.storiesList) == null) {
            return;
        }
        storiesList.updateFilters(z, z2);
    }

    public void setForwardRestrictedHint(HintView hintView) {
        this.fwdRestrictedHint = hintView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getMessageId(View view) {
        if (view instanceof SharedPhotoVideoCell2) {
            return ((SharedPhotoVideoCell2) view).getMessageId();
        }
        if (view instanceof SharedDocumentCell) {
            return ((SharedDocumentCell) view).getMessage().getId();
        }
        if (view instanceof SharedAudioCell) {
            return ((SharedAudioCell) view).getMessage().getId();
        }
        return 0;
    }

    private void updateForwardItem() {
        if (this.forwardItem == null) {
            return;
        }
        boolean z = this.profileActivity.getMessagesController().isPeerNoForwards(this.dialog_id) || hasNoforwardsMessage();
        this.forwardItem.setAlpha(z ? 0.5f : 1.0f);
        if (z && this.forwardItem.getBackground() != null) {
            this.forwardItem.setBackground(null);
        } else {
            if (z || this.forwardItem.getBackground() != null) {
                return;
            }
            this.forwardItem.setBackground(Theme.createSelectorDrawable(getThemedColor(Theme.key_actionBarActionModeDefaultSelector), 5));
        }
    }

    private boolean hasNoforwardsMessage() {
        MessageObject messageObject;
        TLRPC.Message message;
        boolean z = false;
        for (int i = 1; i >= 0; i--) {
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < this.selectedFiles[i].size(); i2++) {
                arrayList.add(Integer.valueOf(this.selectedFiles[i].keyAt(i2)));
            }
            int size = arrayList.size();
            int i3 = 0;
            while (true) {
                if (i3 >= size) {
                    break;
                }
                Object obj = arrayList.get(i3);
                i3++;
                Integer num = (Integer) obj;
                if (num.intValue() > 0 && (messageObject = this.selectedFiles[i].get(num.intValue())) != null && (message = messageObject.messageOwner) != null && message.noforwards) {
                    z = true;
                    break;
                }
            }
            if (z) {
                return z;
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeMediaFilterType() {
        final Bitmap bitmapCreateBitmap;
        final MediaPage mediaPage = getMediaPage(0);
        if (mediaPage != null && mediaPage.getMeasuredHeight() > 0 && mediaPage.getMeasuredWidth() > 0) {
            try {
                bitmapCreateBitmap = Bitmap.createBitmap(mediaPage.getMeasuredWidth(), mediaPage.getMeasuredHeight(), Bitmap.Config.ARGB_8888);
            } catch (Exception e) {
                FileLog.m1040e(e);
                bitmapCreateBitmap = null;
            }
            if (bitmapCreateBitmap != null) {
                this.changeTypeAnimation = true;
                mediaPage.listView.draw(new Canvas(bitmapCreateBitmap));
                final View view = new View(mediaPage.getContext());
                view.setBackground(new BitmapDrawable(bitmapCreateBitmap));
                mediaPage.addView(view);
                view.animate().alpha(0.0f).setDuration(200L).setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.SharedMediaLayout.32
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        SharedMediaLayout.this.changeTypeAnimation = false;
                        if (view.getParent() != null) {
                            mediaPage.removeView(view);
                            bitmapCreateBitmap.recycle();
                        }
                    }
                }).start();
                mediaPage.listView.setAlpha(0.0f);
                mediaPage.listView.animate().alpha(1.0f).setUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda75
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        mediaPage.listView.invalidate();
                    }
                }).setDuration(200L).start();
            }
        }
        int[] lastMediaCount = this.sharedMediaPreloader.getLastMediaCount();
        ArrayList<MessageObject> arrayList = this.sharedMediaPreloader.getSharedMediaData()[0].messages;
        this.sharedMediaData[0].setTotalCount(1, 0);
        SharedMediaData sharedMediaData = this.sharedMediaData[0];
        int i = sharedMediaData.filterType;
        if (i == 0) {
            sharedMediaData.setTotalCount(0, lastMediaCount[0]);
        } else if (i == 1) {
            sharedMediaData.setTotalCount(0, lastMediaCount[6]);
        } else {
            sharedMediaData.setTotalCount(0, lastMediaCount[7]);
        }
        this.sharedMediaData[0].fastScrollDataLoaded = false;
        jumpToDate(0, DialogObject.isEncryptedDialog(this.dialog_id) ? Integer.MIN_VALUE : Integer.MAX_VALUE, 0, true);
        loadFastScrollData(false);
        this.delegate.updateSelectedMediaTabText();
        boolean zIsEncryptedDialog = DialogObject.isEncryptedDialog(this.dialog_id);
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            MessageObject messageObject = arrayList.get(i2);
            SharedMediaData sharedMediaData2 = this.sharedMediaData[0];
            int i3 = sharedMediaData2.filterType;
            if (i3 == 0) {
                sharedMediaData2.addMessage(messageObject, 0, false, zIsEncryptedDialog);
            } else if (i3 == 1) {
                if (messageObject.isPhoto()) {
                    this.sharedMediaData[0].addMessage(messageObject, 0, false, zIsEncryptedDialog);
                }
            } else if (!messageObject.isPhoto()) {
                this.sharedMediaData[0].addMessage(messageObject, 0, false, zIsEncryptedDialog);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MediaPage getMediaPage(int i) {
        int i2 = 0;
        while (true) {
            MediaPage[] mediaPageArr = this.mediaPages;
            if (i2 >= mediaPageArr.length) {
                return null;
            }
            MediaPage mediaPage = mediaPageArr[i2];
            if (mediaPage != null && mediaPage.selectedType == i) {
                return mediaPage;
            }
            i2++;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x007e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void showMediaCalendar(int i, boolean z) {
        int i2;
        MediaPage mediaPage;
        if (z && getY() != 0.0f && this.viewType == 1) {
            return;
        }
        if (z && isAnyStoryPageType(i) && getStoriesCount(i) <= 0) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putLong("dialog_id", this.dialog_id);
        bundle.putLong("topic_id", this.topicId);
        if (!z || (mediaPage = getMediaPage(0)) == null) {
            i2 = 0;
        } else {
            ArrayList<Period> arrayList = this.sharedMediaData[0].fastScrollPeriods;
            int iFindFirstVisibleItemPosition = mediaPage.layoutManager.findFirstVisibleItemPosition();
            if (iFindFirstVisibleItemPosition >= 0) {
                Period period = null;
                if (arrayList != null) {
                    int i3 = 0;
                    while (true) {
                        if (i3 >= arrayList.size()) {
                            break;
                        }
                        if (iFindFirstVisibleItemPosition <= arrayList.get(i3).startOffset) {
                            period = arrayList.get(i3);
                            break;
                        }
                        i3++;
                    }
                    if (period == null) {
                        period = arrayList.get(arrayList.size() - 1);
                    }
                }
                if (period != null) {
                    i2 = period.date;
                }
            }
        }
        if (i == 9) {
            bundle.putInt("type", 3);
        } else if (i == 8) {
            bundle.putInt("type", 2);
        } else {
            bundle.putInt("type", 1);
        }
        CalendarActivity calendarActivity = new CalendarActivity(bundle, this.sharedMediaData[0].filterType, i2);
        calendarActivity.setCallback(new CalendarActivity.Callback() { // from class: org.telegram.ui.Components.SharedMediaLayout.33
            @Override // org.telegram.ui.CalendarActivity.Callback
            public void onDateSelected(int i4, int i5) {
                SharedMediaLayout sharedMediaLayout;
                int i6 = -1;
                int i7 = 0;
                while (true) {
                    int size = SharedMediaLayout.this.sharedMediaData[0].messages.size();
                    sharedMediaLayout = SharedMediaLayout.this;
                    if (i7 >= size) {
                        break;
                    }
                    if (sharedMediaLayout.sharedMediaData[0].messages.get(i7).getId() == i4) {
                        i6 = i7;
                    }
                    i7++;
                }
                MediaPage mediaPage2 = sharedMediaLayout.getMediaPage(0);
                if (i6 >= 0 && mediaPage2 != null) {
                    mediaPage2.layoutManager.scrollToPositionWithOffset(i6, 0);
                } else {
                    SharedMediaLayout.this.jumpToDate(0, i4, i5, true);
                }
                if (mediaPage2 != null) {
                    mediaPage2.highlightMessageId = i4;
                    mediaPage2.highlightAnimation = false;
                }
            }
        });
        this.profileActivity.presentFragment(calendarActivity);
    }

    private void startPinchToMediaColumnsCount(boolean z) {
        final MediaPage mediaPage;
        if (this.photoVideoChangeColumnsAnimation) {
            return;
        }
        int i = 0;
        int i2 = 0;
        while (true) {
            MediaPage[] mediaPageArr = this.mediaPages;
            if (i2 >= mediaPageArr.length) {
                mediaPage = null;
                break;
            }
            int i3 = mediaPageArr[i2].selectedType;
            if (i3 == 0 || isAnyStoryPageType(i3)) {
                break;
            } else {
                i2++;
            }
        }
        mediaPage = this.mediaPages[i2];
        if (mediaPage == null) {
            return;
        }
        int i4 = mediaPage.selectedType;
        this.changeColumnsTab = i4;
        boolean zIsAnyStoryPageType = isAnyStoryPageType(i4);
        int nextMediaColumnsCount = getNextMediaColumnsCount(zIsAnyStoryPageType ? 1 : 0, this.mediaColumnsCount[zIsAnyStoryPageType ? 1 : 0], z);
        this.animateToColumnsCount = nextMediaColumnsCount;
        if (nextMediaColumnsCount == this.mediaColumnsCount[zIsAnyStoryPageType ? 1 : 0]) {
            return;
        }
        if (this.allowStoriesSingleColumn && isAnyStoryPageType(this.changeColumnsTab)) {
            return;
        }
        mediaPage.animationSupportingListView.setVisibility(0);
        if (isAnyStoryPageType(this.changeColumnsTab)) {
            mediaPage.animationSupportingListView.setAdapter(storyAlbums_getStoriesSupportingAdapterByTabType(this.changeColumnsTab));
        } else {
            mediaPage.animationSupportingListView.setAdapter(this.animationSupportingPhotoVideoAdapter);
        }
        mediaPage.animationSupportingListView.setPadding(mediaPage.animationSupportingListView.getPaddingLeft(), getPagePaddingTop(this.changeColumnsTab), mediaPage.animationSupportingListView.getPaddingRight(), getPagePaddingBottom(isStoriesView()));
        mediaPage.animationSupportingLayoutManager.setSpanCount(nextMediaColumnsCount);
        mediaPage.animationSupportingListView.invalidateItemDecorations();
        mediaPage.animationSupportingLayoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: org.telegram.ui.Components.SharedMediaLayout.34
            @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
            public int getSpanSize(int i5) {
                RecyclerView.Adapter adapter = mediaPage.animationSupportingListView.getAdapter();
                SharedPhotoVideoAdapter sharedPhotoVideoAdapter = SharedMediaLayout.this.animationSupportingPhotoVideoAdapter;
                SharedMediaLayout sharedMediaLayout = SharedMediaLayout.this;
                if (adapter == sharedPhotoVideoAdapter) {
                    if (sharedMediaLayout.animationSupportingPhotoVideoAdapter.getItemViewType(i5) == 2) {
                        return mediaPage.animationSupportingLayoutManager.getSpanCount();
                    }
                    return 1;
                }
                if (sharedMediaLayout.storyAlbums_getTabTypeByStoriesSupportingAdapter(adapter) == -1 || ((StoriesAdapter) adapter).getItemViewType(i5) != 2) {
                    return 1;
                }
                return mediaPage.animationSupportingLayoutManager.getSpanCount();
            }
        });
        AndroidUtilities.updateVisibleRows(mediaPage.listView);
        this.photoVideoChangeColumnsAnimation = true;
        if (this.changeColumnsTab == 0) {
            this.sharedMediaData[0].setListFrozen(true);
        }
        this.photoVideoChangeColumnsProgress = 0.0f;
        if (this.pinchCenterPosition < 0) {
            saveScrollPosition();
            return;
        }
        while (true) {
            MediaPage[] mediaPageArr2 = this.mediaPages;
            if (i >= mediaPageArr2.length) {
                return;
            }
            MediaPage mediaPage2 = mediaPageArr2[i];
            if (mediaPage2.selectedType == this.changeColumnsTab) {
                mediaPage2.animationSupportingLayoutManager.scrollToPositionWithOffset(this.pinchCenterPosition, this.pinchCenterOffset - this.mediaPages[i].animationSupportingListView.getPaddingTop());
            }
            i++;
        }
    }

    private void finishPinchToMediaColumnsCount() {
        final MediaPage mediaPage;
        RecyclerView.Adapter adapter;
        if (!this.photoVideoChangeColumnsAnimation) {
            return;
        }
        int i = 0;
        int i2 = 0;
        while (true) {
            MediaPage[] mediaPageArr = this.mediaPages;
            if (i2 >= mediaPageArr.length) {
                mediaPage = null;
                break;
            }
            mediaPage = mediaPageArr[i2];
            if (mediaPage.selectedType == this.changeColumnsTab) {
                break;
            } else {
                i2++;
            }
        }
        if (mediaPage == null) {
            return;
        }
        boolean zIsAnyStoryPageType = isAnyStoryPageType(mediaPage.selectedType);
        float f = this.photoVideoChangeColumnsProgress;
        if (f != 1.0f) {
            if (f == 0.0f) {
                this.photoVideoChangeColumnsAnimation = false;
                if (this.changeColumnsTab == 0) {
                    this.sharedMediaData[0].setListFrozen(false);
                }
                mediaPage.animationSupportingListView.setVisibility(8);
                mediaPage.listView.invalidate();
                return;
            }
            final boolean z = f > 0.2f;
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f, z ? 1.0f : 0.0f);
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.SharedMediaLayout.35
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    SharedMediaLayout.this.photoVideoChangeColumnsProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    mediaPage.listView.invalidate();
                }
            });
            final int i3 = zIsAnyStoryPageType ? 1 : 0;
            valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.SharedMediaLayout.36
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    SharedMediaLayout sharedMediaLayout;
                    View viewFindViewByPosition;
                    RecyclerView.Adapter adapter2;
                    SharedMediaLayout.this.photoVideoChangeColumnsAnimation = false;
                    if (z) {
                        SharedMediaLayout.this.mediaColumnsCount[i3] = SharedMediaLayout.this.animateToColumnsCount;
                        int i4 = i3;
                        SharedMediaLayout sharedMediaLayout2 = SharedMediaLayout.this;
                        if (i4 == 0) {
                            SharedConfig.setMediaColumnsCount(sharedMediaLayout2.animateToColumnsCount);
                        } else if (sharedMediaLayout2.getStoriesCount(mediaPage.selectedType) >= 5) {
                            SharedConfig.setStoriesColumnsCount(SharedMediaLayout.this.animateToColumnsCount);
                        }
                    }
                    int i5 = 0;
                    while (true) {
                        int length = SharedMediaLayout.this.mediaPages.length;
                        sharedMediaLayout = SharedMediaLayout.this;
                        if (i5 >= length) {
                            break;
                        }
                        if (sharedMediaLayout.mediaPages[i5] != null && SharedMediaLayout.this.mediaPages[i5].listView != null) {
                            SharedMediaLayout sharedMediaLayout3 = SharedMediaLayout.this;
                            if (sharedMediaLayout3.isTabZoomable(sharedMediaLayout3.mediaPages[i5].selectedType) && (adapter2 = SharedMediaLayout.this.mediaPages[i5].listView.getAdapter()) != null) {
                                int itemCount = adapter2.getItemCount();
                                if (i5 == 0) {
                                    SharedMediaLayout.this.sharedMediaData[0].setListFrozen(false);
                                }
                                if (z) {
                                    SharedMediaLayout.this.mediaPages[i5].layoutManager.setSpanCount(SharedMediaLayout.this.mediaColumnsCount[i3]);
                                    SharedMediaLayout.this.mediaPages[i5].listView.invalidateItemDecorations();
                                    if (adapter2.getItemCount() == itemCount) {
                                        AndroidUtilities.updateVisibleRows(SharedMediaLayout.this.mediaPages[i5].listView);
                                    } else {
                                        adapter2.notifyDataSetChanged();
                                    }
                                }
                                SharedMediaLayout.this.mediaPages[i5].animationSupportingListView.setVisibility(8);
                            }
                        }
                        i5++;
                    }
                    if (sharedMediaLayout.pinchCenterPosition >= 0) {
                        for (int i6 = 0; i6 < SharedMediaLayout.this.mediaPages.length; i6++) {
                            if (SharedMediaLayout.this.mediaPages[i6].selectedType == SharedMediaLayout.this.changeColumnsTab) {
                                if (z && (viewFindViewByPosition = SharedMediaLayout.this.mediaPages[i6].animationSupportingLayoutManager.findViewByPosition(SharedMediaLayout.this.pinchCenterPosition)) != null) {
                                    SharedMediaLayout.this.pinchCenterOffset = viewFindViewByPosition.getTop();
                                }
                                ExtendedGridLayoutManager extendedGridLayoutManager = SharedMediaLayout.this.mediaPages[i6].layoutManager;
                                SharedMediaLayout sharedMediaLayout4 = SharedMediaLayout.this;
                                extendedGridLayoutManager.scrollToPositionWithOffset(sharedMediaLayout4.pinchCenterPosition, (-sharedMediaLayout4.mediaPages[i6].listView.getPaddingTop()) + SharedMediaLayout.this.pinchCenterOffset);
                            }
                        }
                    } else {
                        sharedMediaLayout.saveScrollPosition();
                    }
                    super.onAnimationEnd(animator);
                }
            });
            valueAnimatorOfFloat.setInterpolator(CubicBezierInterpolator.DEFAULT);
            valueAnimatorOfFloat.setDuration(200L);
            valueAnimatorOfFloat.start();
            return;
        }
        this.photoVideoChangeColumnsAnimation = false;
        int[] iArr = this.mediaColumnsCount;
        int i4 = this.animateToColumnsCount;
        iArr[zIsAnyStoryPageType ? 1 : 0] = i4;
        if (!zIsAnyStoryPageType) {
            SharedConfig.setMediaColumnsCount(i4);
        } else if (getStoriesCount(mediaPage.selectedType) >= 5) {
            SharedConfig.setStoriesColumnsCount(this.animateToColumnsCount);
        }
        int i5 = 0;
        while (true) {
            MediaPage[] mediaPageArr2 = this.mediaPages;
            if (i5 >= mediaPageArr2.length) {
                break;
            }
            MediaPage mediaPage2 = mediaPageArr2[i5];
            if (mediaPage2 != null && mediaPage2.listView != null && isTabZoomable(this.mediaPages[i5].selectedType) && (adapter = this.mediaPages[i5].listView.getAdapter()) != null) {
                int itemCount = adapter.getItemCount();
                if (i5 == 0) {
                    this.sharedMediaData[0].setListFrozen(false);
                }
                this.mediaPages[i5].animationSupportingListView.setVisibility(8);
                this.mediaPages[i5].layoutManager.setSpanCount(this.mediaColumnsCount[zIsAnyStoryPageType ? 1 : 0]);
                this.mediaPages[i5].listView.invalidateItemDecorations();
                this.mediaPages[i5].listView.invalidate();
                if (adapter.getItemCount() == itemCount) {
                    AndroidUtilities.updateVisibleRows(this.mediaPages[i5].listView);
                } else {
                    adapter.notifyDataSetChanged();
                }
            }
            i5++;
        }
        if (this.pinchCenterPosition < 0) {
            saveScrollPosition();
            return;
        }
        while (true) {
            MediaPage[] mediaPageArr3 = this.mediaPages;
            if (i >= mediaPageArr3.length) {
                return;
            }
            MediaPage mediaPage3 = mediaPageArr3[i];
            if (mediaPage3.selectedType == this.changeColumnsTab) {
                View viewFindViewByPosition = mediaPage3.animationSupportingLayoutManager.findViewByPosition(this.pinchCenterPosition);
                if (viewFindViewByPosition != null) {
                    this.pinchCenterOffset = viewFindViewByPosition.getTop();
                }
                this.mediaPages[i].layoutManager.scrollToPositionWithOffset(this.pinchCenterPosition, (-this.mediaPages[i].listView.getPaddingTop()) + this.pinchCenterOffset);
            }
            i++;
        }
    }

    private void animateToMediaColumnsCount(final int i) {
        final MediaPage mediaPage = getMediaPage(this.changeColumnsTab);
        this.pinchCenterPosition = -1;
        if (mediaPage != null) {
            mediaPage.listView.stopScroll();
            this.animateToColumnsCount = i;
            mediaPage.animationSupportingListView.setVisibility(0);
            if (isAnyStoryPageType(this.changeColumnsTab)) {
                mediaPage.animationSupportingListView.setAdapter(storyAlbums_getStoriesSupportingAdapterByTabType(this.changeColumnsTab));
            } else {
                mediaPage.animationSupportingListView.setAdapter(this.animationSupportingPhotoVideoAdapter);
            }
            InternalListView internalListView = mediaPage.animationSupportingListView;
            int paddingLeft = mediaPage.animationSupportingListView.getPaddingLeft();
            InternalListView internalListView2 = mediaPage.animationSupportingListView;
            int pagePaddingTop = getPagePaddingTop(mediaPage.selectedType);
            internalListView2.hintPaddingTop = pagePaddingTop;
            int paddingRight = mediaPage.animationSupportingListView.getPaddingRight();
            InternalListView internalListView3 = mediaPage.animationSupportingListView;
            int pagePaddingBottom = getPagePaddingBottom(isStoriesView());
            internalListView3.hintPaddingBottom = pagePaddingBottom;
            internalListView.setPadding(paddingLeft, pagePaddingTop, paddingRight, pagePaddingBottom);
            mediaPage.animationSupportingLayoutManager.setSpanCount(i);
            mediaPage.animationSupportingListView.invalidateItemDecorations();
            int i2 = 0;
            while (true) {
                MediaPage[] mediaPageArr = this.mediaPages;
                if (i2 >= mediaPageArr.length) {
                    break;
                }
                MediaPage mediaPage2 = mediaPageArr[i2];
                if (mediaPage2 != null && isTabZoomable(mediaPage2.selectedType)) {
                    AndroidUtilities.updateVisibleRows(this.mediaPages[i2].listView);
                }
                i2++;
            }
            this.photoVideoChangeColumnsAnimation = true;
            if (this.changeColumnsTab == 0) {
                this.sharedMediaData[0].setListFrozen(true);
            }
            this.photoVideoChangeColumnsProgress = 0.0f;
            saveScrollPosition();
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            this.notificationsLocker.lock();
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.SharedMediaLayout.37
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    SharedMediaLayout.this.photoVideoChangeColumnsProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    mediaPage.listView.invalidate();
                }
            });
            final int i3 = isAnyStoryPageType(mediaPage.selectedType) ? 1 : 0;
            valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.SharedMediaLayout.38
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    RecyclerView.Adapter adapter;
                    SharedMediaLayout.this.notificationsLocker.unlock();
                    SharedMediaLayout.this.photoVideoChangeColumnsAnimation = false;
                    SharedMediaLayout.this.mediaColumnsCount[i3] = i;
                    int i4 = 0;
                    while (true) {
                        int length = SharedMediaLayout.this.mediaPages.length;
                        SharedMediaLayout sharedMediaLayout = SharedMediaLayout.this;
                        if (i4 < length) {
                            if (sharedMediaLayout.mediaPages[i4] != null && SharedMediaLayout.this.mediaPages[i4].listView != null) {
                                SharedMediaLayout sharedMediaLayout2 = SharedMediaLayout.this;
                                if (sharedMediaLayout2.isTabZoomable(sharedMediaLayout2.mediaPages[i4].selectedType) && (adapter = SharedMediaLayout.this.mediaPages[i4].listView.getAdapter()) != null) {
                                    int itemCount = adapter.getItemCount();
                                    if (i4 == 0) {
                                        SharedMediaLayout.this.sharedMediaData[0].setListFrozen(false);
                                    }
                                    SharedMediaLayout.this.mediaPages[i4].layoutManager.setSpanCount(SharedMediaLayout.this.mediaColumnsCount[i3]);
                                    SharedMediaLayout.this.mediaPages[i4].listView.invalidateItemDecorations();
                                    if (adapter.getItemCount() == itemCount) {
                                        AndroidUtilities.updateVisibleRows(SharedMediaLayout.this.mediaPages[i4].listView);
                                    } else {
                                        adapter.notifyDataSetChanged();
                                    }
                                    SharedMediaLayout.this.mediaPages[i4].animationSupportingListView.setVisibility(8);
                                }
                            }
                            i4++;
                        } else {
                            sharedMediaLayout.saveScrollPosition();
                            return;
                        }
                    }
                }
            });
            valueAnimatorOfFloat.setInterpolator(CubicBezierInterpolator.DEFAULT);
            valueAnimatorOfFloat.setStartDelay(100L);
            valueAnimatorOfFloat.setDuration(350L);
            valueAnimatorOfFloat.start();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        if (this.scrollSlidingTextTabStrip != null) {
            canvas.save();
            canvas.translate(this.scrollSlidingTextTabStrip.getX(), this.scrollSlidingTextTabStrip.getY());
            this.scrollSlidingTextTabStrip.drawBackground(canvas);
            canvas.restore();
        }
        super.dispatchDraw(canvas);
        FragmentContextView fragmentContextView = this.fragmentContextView;
        if (fragmentContextView != null && fragmentContextView.isCallStyle() && this.topPanelLayout == null) {
            canvas.save();
            canvas.translate(this.fragmentContextView.getX(), this.fragmentContextView.getY());
            this.fragmentContextView.setDrawOverlay(true);
            this.fragmentContextView.draw(canvas);
            this.fragmentContextView.setDrawOverlay(false);
            canvas.restore();
        }
    }

    private ScrollSlidingTextTabStripInner createScrollingTextTabStrip(Context context) {
        ScrollSlidingTextTabStripInner scrollSlidingTextTabStripInner = new ScrollSlidingTextTabStripInner(context, this.resourcesProvider) { // from class: org.telegram.ui.Components.SharedMediaLayout.39
            @Override // org.telegram.ui.Components.ScrollSlidingTextTabStrip
            public int processColor(int i) {
                return SharedMediaLayout.this.processColor(i);
            }
        };
        int i = this.initialTab;
        if (i != -1) {
            scrollSlidingTextTabStripInner.setInitialTabId(i);
            this.initialTab = -1;
        }
        scrollSlidingTextTabStripInner.animationDuration = 320L;
        scrollSlidingTextTabStripInner.setColors(Theme.key_profile_tabSelectedLine, Theme.key_profile_tabSelectedText, Theme.key_profile_tabText, Theme.key_profile_tabSelector);
        scrollSlidingTextTabStripInner.setUseMinimalWidth(true);
        scrollSlidingTextTabStripInner.setDelegate(new AnonymousClass40());
        return scrollSlidingTextTabStripInner;
    }

    /* JADX INFO: renamed from: org.telegram.ui.Components.SharedMediaLayout$40, reason: invalid class name */
    public class AnonymousClass40 implements ScrollSlidingTextTabStrip.ScrollSlidingTabStripDelegate {
        @Override // org.telegram.ui.Components.ScrollSlidingTextTabStrip.ScrollSlidingTabStripDelegate
        public boolean canReorder(int i) {
            return false;
        }

        public AnonymousClass40() {
        }

        @Override // org.telegram.ui.Components.ScrollSlidingTextTabStrip.ScrollSlidingTabStripDelegate
        public void onPageSelected(int i, boolean z) {
            if (SharedMediaLayout.this.mediaPages[0].selectedType == i) {
                return;
            }
            ProfileStoriesCollectionTabs profileStoriesCollectionTabs = SharedMediaLayout.this.storiesContainer;
            if (profileStoriesCollectionTabs != null && i == 8) {
                profileStoriesCollectionTabs.selectTabWithId(0, 1.0f);
            }
            SharedMediaLayout.this.mediaPages[1].selectedType = i;
            SharedMediaLayout.this.mediaPages[1].setVisibility(0);
            SharedMediaLayout.this.hideFloatingDateView(true);
            SharedMediaLayout.this.switchToCurrentSelectedMode(true);
            SharedMediaLayout.this.animatingForward = z;
            SharedMediaLayout.this.onSelectedTabChanged();
            SharedMediaLayout.this.animateSearchToOptions(!r5.isSearchItemVisible(i), true);
            SharedMediaLayout.this.updateOptionsSearch(true);
        }

        @Override // org.telegram.ui.Components.ScrollSlidingTextTabStrip.ScrollSlidingTabStripDelegate
        public void onSamePageSelected() {
            SharedMediaLayout.this.scrollToTop();
        }

        @Override // org.telegram.ui.Components.ScrollSlidingTextTabStrip.ScrollSlidingTabStripDelegate
        public void onPageScrolled(float f) {
            if (f != 1.0f || SharedMediaLayout.this.mediaPages[1].getVisibility() == 0) {
                boolean z = SharedMediaLayout.this.animatingForward;
                SharedMediaLayout sharedMediaLayout = SharedMediaLayout.this;
                if (z) {
                    sharedMediaLayout.mediaPages[0].setTranslationX((-f) * SharedMediaLayout.this.mediaPages[0].getMeasuredWidth());
                    SharedMediaLayout.this.mediaPages[1].setTranslationX(SharedMediaLayout.this.mediaPages[0].getMeasuredWidth() - (SharedMediaLayout.this.mediaPages[0].getMeasuredWidth() * f));
                } else {
                    sharedMediaLayout.mediaPages[0].setTranslationX(SharedMediaLayout.this.mediaPages[0].getMeasuredWidth() * f);
                    SharedMediaLayout.this.mediaPages[1].setTranslationX((SharedMediaLayout.this.mediaPages[0].getMeasuredWidth() * f) - SharedMediaLayout.this.mediaPages[0].getMeasuredWidth());
                }
                SharedMediaLayout sharedMediaLayout2 = SharedMediaLayout.this;
                sharedMediaLayout2.onTabProgress(sharedMediaLayout2.getTabProgress());
                SharedMediaLayout sharedMediaLayout3 = SharedMediaLayout.this;
                sharedMediaLayout3.optionsAlpha = sharedMediaLayout3.getPhotoVideoOptionsAlpha(f);
                SharedMediaLayout sharedMediaLayout4 = SharedMediaLayout.this;
                sharedMediaLayout4.photoVideoOptionsItem.setVisibility((sharedMediaLayout4.optionsAlpha == 0.0f || !SharedMediaLayout.this.canShowSearchItem() || SharedMediaLayout.this.isArchivedOnlyStoriesView()) ? 4 : 0);
                if (SharedMediaLayout.this.searchItem != null && !SharedMediaLayout.this.canShowSearchItem()) {
                    SharedMediaLayout.this.searchItem.setVisibility(SharedMediaLayout.this.isStoriesView() ? 8 : 4);
                    SharedMediaLayout.this.searchAlpha = 0.0f;
                } else {
                    SharedMediaLayout sharedMediaLayout5 = SharedMediaLayout.this;
                    sharedMediaLayout5.searchAlpha = sharedMediaLayout5.getSearchAlpha(f);
                    SharedMediaLayout.this.updateSearchItemIconAnimated();
                }
                SharedMediaLayout.this.updateOptionsSearch();
                if (f == 1.0f) {
                    MediaPage mediaPage = SharedMediaLayout.this.mediaPages[0];
                    SharedMediaLayout.this.mediaPages[0] = SharedMediaLayout.this.mediaPages[1];
                    SharedMediaLayout.this.mediaPages[1] = mediaPage;
                    SharedMediaLayout.this.mediaPages[1].setVisibility(8);
                    if (SharedMediaLayout.this.searchItem != null && SharedMediaLayout.this.searchItemState == 2) {
                        SharedMediaLayout.this.searchItem.setVisibility(SharedMediaLayout.this.isStoriesView() ? 8 : 4);
                    }
                    SharedMediaLayout.this.searchItemState = 0;
                    SharedMediaLayout.this.startStopVisibleGifs();
                }
            }
        }

        @Override // org.telegram.ui.Components.ScrollSlidingTextTabStrip.ScrollSlidingTabStripDelegate
        public boolean showOptions(final int i, View view) {
            TLRPC.ProfileTab profileTab;
            if (SharedMediaLayout.this.profileActivity == null) {
                return false;
            }
            final boolean zIsBroadcastChannelProfile = SharedMediaLayout.this.isBroadcastChannelProfile();
            if (SharedMediaLayout.getTab(i, zIsBroadcastChannelProfile) == null) {
                return false;
            }
            SharedMediaLayout sharedMediaLayout = SharedMediaLayout.this;
            if (zIsBroadcastChannelProfile) {
                if (!ChatObject.canUserDoAction(sharedMediaLayout.profileActivity.getMessagesController().getChat(Long.valueOf(SharedMediaLayout.this.info.id)), 5)) {
                    return false;
                }
                profileTab = SharedMediaLayout.this.info.main_tab;
            } else {
                if (sharedMediaLayout.dialog_id != SharedMediaLayout.this.profileActivity.getUserConfig().getClientUserId() || SharedMediaLayout.this.userInfo == null) {
                    return false;
                }
                profileTab = SharedMediaLayout.this.userInfo.main_tab;
            }
            if (profileTab != null && (i == SharedMediaLayout.getTabId(profileTab) || SharedMediaLayout.this.firstTab == i)) {
                return false;
            }
            ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions(SharedMediaLayout.this.profileActivity, view);
            itemOptionsMakeOptions.setScrimViewBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(24.0f), Theme.getColor(Theme.key_windowBackgroundWhite)));
            itemOptionsMakeOptions.add(C2807R.drawable.tabs_reorder, LocaleController.getString(C2807R.string.ProfileTabSetAsMain), new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$40$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$showOptions$0(zIsBroadcastChannelProfile, i);
                }
            });
            itemOptionsMakeOptions.show();
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$showOptions$0(boolean z, int i) {
            TLObject tLObject;
            if (SharedMediaLayout.this.profileActivity == null) {
                return;
            }
            if (z) {
                TLRPC.TL_channels_setMainProfileTab tL_channels_setMainProfileTab = new TLRPC.TL_channels_setMainProfileTab();
                tL_channels_setMainProfileTab.tab = SharedMediaLayout.getTab(i, true);
                tL_channels_setMainProfileTab.channel = SharedMediaLayout.this.profileActivity.getMessagesController().getInputChannel(SharedMediaLayout.this.info.id);
                SharedMediaLayout.this.info.flags2 |= 4194304;
                SharedMediaLayout.this.info.main_tab = tL_channels_setMainProfileTab.tab;
                tLObject = tL_channels_setMainProfileTab;
            } else {
                TLRPC.TL_account_setMainProfileTab tL_account_setMainProfileTab = new TLRPC.TL_account_setMainProfileTab();
                tL_account_setMainProfileTab.tab = SharedMediaLayout.getTab(i, true);
                tLObject = tL_account_setMainProfileTab;
                if (SharedMediaLayout.this.userInfo != null) {
                    SharedMediaLayout.this.userInfo.flags2 |= 1048576;
                    SharedMediaLayout.this.userInfo.main_tab = tL_account_setMainProfileTab.tab;
                    SharedMediaLayout.this.profileActivity.getMessagesStorage().updateUserInfo(SharedMediaLayout.this.userInfo, true);
                    tLObject = tL_account_setMainProfileTab;
                }
            }
            SharedMediaLayout.this.profileActivity.getConnectionsManager().sendRequest(tLObject, null);
            SharedMediaLayout.this.updateTabs(true);
        }
    }

    public void drawBackgroundWithBlur(Canvas canvas, float f, Rect rect, Paint paint) {
        canvas.drawRect(rect, paint);
    }

    /* JADX INFO: renamed from: startAlbumsReorder, reason: merged with bridge method [inline-methods] */
    public void lambda$onItemLongClick$60(int i) {
        MediaPage mediaPage;
        int iStoryAlbums_getAlbumIdByTabType = storyAlbums_getAlbumIdByTabType(getClosestTab());
        ProfileStoriesCollectionTabs profileStoriesCollectionTabs = this.storiesContainer;
        if (iStoryAlbums_getAlbumIdByTabType != i) {
            if (profileStoriesCollectionTabs != null) {
                profileStoriesCollectionTabs.lambda$setInitialTabId$2(i);
                return;
            }
            return;
        }
        profileStoriesCollectionTabs.setReorderingAlbums(true);
        StoryAlbumData storyAlbumDataStoryAlbums_getByAlbumId = storyAlbums_getByAlbumId(i);
        if (storyAlbumDataStoryAlbums_getByAlbumId == null || (mediaPage = getMediaPage(storyAlbumDataStoryAlbums_getByAlbumId.tabType)) == null) {
            return;
        }
        InternalListView internalListView = mediaPage.listView;
        for (int i2 = 0; i2 < internalListView.getChildCount(); i2++) {
            View childAt = internalListView.getChildAt(i2);
            if (childAt instanceof SharedPhotoVideoCell2) {
                ((SharedPhotoVideoCell2) childAt).setReordering(true, true);
            }
        }
        StoriesAdapter storiesAdapter = storyAlbumDataStoryAlbums_getByAlbumId.adapter;
        if (storiesAdapter != null) {
            storiesAdapter.setInAlbumStoriesReorder(true);
        }
        updateOptionsSearch(true);
    }

    public void saveAndStopAlbumsReorder() {
        MediaPage mediaPage;
        StoryAlbumData storyAlbumDataStoryAlbums_getByAlbumId = storyAlbums_getByAlbumId(storyAlbums_getAlbumIdByTabType(getClosestTab()));
        if (storyAlbumDataStoryAlbums_getByAlbumId == null || (mediaPage = getMediaPage(storyAlbumDataStoryAlbums_getByAlbumId.tabType)) == null) {
            return;
        }
        this.storiesContainer.resetReordering();
        InternalListView internalListView = mediaPage.listView;
        for (int i = 0; i < internalListView.getChildCount(); i++) {
            View childAt = internalListView.getChildAt(i);
            if (childAt instanceof SharedPhotoVideoCell2) {
                ((SharedPhotoVideoCell2) childAt).setReordering(false, true);
            }
        }
        StoriesAdapter storiesAdapter = storyAlbumDataStoryAlbums_getByAlbumId.adapter;
        if (storiesAdapter != null) {
            storiesAdapter.setInAlbumStoriesReorder(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openStoryTabIdPage(int i, boolean z) {
        MediaPage[] mediaPageArr = this.mediaPages;
        if (mediaPageArr[0].selectedType == i) {
            return;
        }
        MediaPage mediaPage = mediaPageArr[1];
        mediaPage.selectedType = i;
        mediaPage.setVisibility(0);
        hideFloatingDateView(true);
        switchToCurrentSelectedMode(true);
        this.animatingForward = z;
        onSelectedTabChanged();
        animateSearchToOptions(!isSearchItemVisible(i), true);
        updateOptionsSearch(true);
    }

    public void onPageMediaProgress(float f) {
        if (f != 1.0f || this.mediaPages[1].getVisibility() == 0) {
            boolean z = this.animatingForward;
            MediaPage[] mediaPageArr = this.mediaPages;
            if (z) {
                mediaPageArr[0].setTranslationX((-f) * r2.getMeasuredWidth());
                this.mediaPages[1].setTranslationX(r2[0].getMeasuredWidth() - (this.mediaPages[0].getMeasuredWidth() * f));
            } else {
                mediaPageArr[0].setTranslationX(r2.getMeasuredWidth() * f);
                this.mediaPages[1].setTranslationX((r2[0].getMeasuredWidth() * f) - this.mediaPages[0].getMeasuredWidth());
            }
            onTabProgress(getTabProgress());
            float photoVideoOptionsAlpha = getPhotoVideoOptionsAlpha(f);
            this.optionsAlpha = photoVideoOptionsAlpha;
            this.photoVideoOptionsItem.setVisibility((photoVideoOptionsAlpha == 0.0f || !canShowSearchItem() || isArchivedOnlyStoriesView()) ? 4 : 0);
            if (this.searchItem != null && !canShowSearchItem()) {
                this.searchItem.setVisibility(isStoriesView() ? 8 : 4);
                this.searchAlpha = 0.0f;
            } else {
                this.searchAlpha = getSearchAlpha(f);
                updateSearchItemIconAnimated();
            }
            updateOptionsSearch();
            if (f == 1.0f) {
                MediaPage[] mediaPageArr2 = this.mediaPages;
                MediaPage mediaPage = mediaPageArr2[0];
                mediaPageArr2[0] = mediaPageArr2[1];
                mediaPageArr2[1] = mediaPage;
                mediaPage.setVisibility(8);
                ActionBarMenuItem actionBarMenuItem = this.searchItem;
                if (actionBarMenuItem != null && this.searchItemState == 2) {
                    actionBarMenuItem.setVisibility(isStoriesView() ? 8 : 4);
                }
                this.searchItemState = 0;
                startStopVisibleGifs();
            }
        }
    }

    private boolean fillMediaData(int i) {
        SharedMediaData[] sharedMediaData = this.sharedMediaPreloader.getSharedMediaData();
        int i2 = 0;
        if (sharedMediaData == null) {
            return false;
        }
        SharedMediaData[] sharedMediaDataArr = this.sharedMediaData;
        if (i == 0) {
            SharedMediaData sharedMediaData2 = sharedMediaDataArr[i];
            if (!sharedMediaData2.fastScrollDataLoaded) {
                int[] iArr = sharedMediaData2.totalCount;
                int[] iArr2 = sharedMediaData[i].totalCount;
                iArr[0] = iArr2[0];
                iArr[1] = iArr2[1];
            }
        } else {
            int[] iArr3 = sharedMediaDataArr[i].totalCount;
            int[] iArr4 = sharedMediaData[i].totalCount;
            iArr3[0] = iArr4[0];
            iArr3[1] = iArr4[1];
        }
        this.sharedMediaData[i].messages.addAll(sharedMediaData[i].messages);
        this.sharedMediaData[i].sections.addAll(sharedMediaData[i].sections);
        for (Map.Entry<String, ArrayList<MessageObject>> entry : sharedMediaData[i].sectionArrays.entrySet()) {
            this.sharedMediaData[i].sectionArrays.put(entry.getKey(), new ArrayList<>(entry.getValue()));
        }
        while (true) {
            SharedMediaData[] sharedMediaDataArr2 = this.sharedMediaData;
            if (i2 < 2) {
                sharedMediaDataArr2[i].messagesDict[i2] = sharedMediaData[i].messagesDict[i2].clone();
                SharedMediaData sharedMediaData3 = this.sharedMediaData[i];
                int[] iArr5 = sharedMediaData3.max_id;
                SharedMediaData sharedMediaData4 = sharedMediaData[i];
                iArr5[i2] = sharedMediaData4.max_id[i2];
                sharedMediaData3.endReached[i2] = sharedMediaData4.endReached[i2];
                i2++;
            } else {
                sharedMediaDataArr2[i].fastScrollPeriods.addAll(sharedMediaData[i].fastScrollPeriods);
                return !sharedMediaData[i].messages.isEmpty();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideFloatingDateView(boolean z) {
        AndroidUtilities.cancelRunOnUIThread(this.hideFloatingDateRunnable);
        if (this.floatingDateView.getTag() == null) {
            return;
        }
        this.floatingDateView.setTag(null);
        AnimatorSet animatorSet = this.floatingDateAnimation;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.floatingDateAnimation = null;
        }
        if (z) {
            AnimatorSet animatorSet2 = new AnimatorSet();
            this.floatingDateAnimation = animatorSet2;
            animatorSet2.setDuration(180L);
            this.floatingDateAnimation.playTogether(ObjectAnimator.ofFloat(this.floatingDateView, (Property<ChatActionCell, Float>) View.ALPHA, 0.0f), ObjectAnimator.ofFloat(this.floatingDateView, (Property<ChatActionCell, Float>) View.TRANSLATION_Y, (-AndroidUtilities.dp(48.0f)) + this.additionalFloatingTranslation));
            this.floatingDateAnimation.setInterpolator(CubicBezierInterpolator.EASE_OUT);
            this.floatingDateAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.SharedMediaLayout.41
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    SharedMediaLayout.this.floatingDateAnimation = null;
                }
            });
            this.floatingDateAnimation.start();
            return;
        }
        this.floatingDateView.setAlpha(0.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:16:0x002d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void scrollToTop() {
        int itemSize;
        int iFindFirstVisibleItemPosition;
        int i = this.mediaPages[0].selectedType;
        if (i == 0) {
            itemSize = SharedPhotoVideoCell.getItemSize(1);
        } else if (i == 1 || i == 2) {
            itemSize = AndroidUtilities.dp(56.0f);
        } else if (i == 3) {
            itemSize = AndroidUtilities.dp(100.0f);
        } else if (i != 4) {
            if (i == 5) {
                itemSize = AndroidUtilities.dp(60.0f);
            } else {
                itemSize = AndroidUtilities.dp(58.0f);
            }
        }
        MediaPage mediaPage = this.mediaPages[0];
        if (mediaPage.selectedType == 0) {
            iFindFirstVisibleItemPosition = mediaPage.layoutManager.findFirstVisibleItemPosition() / this.mediaColumnsCount[0];
        } else {
            iFindFirstVisibleItemPosition = mediaPage.layoutManager.findFirstVisibleItemPosition();
        }
        float f = iFindFirstVisibleItemPosition * itemSize;
        float measuredHeight = this.mediaPages[0].listView.getMeasuredHeight() * 1.2f;
        MediaPage[] mediaPageArr = this.mediaPages;
        if (f >= measuredHeight) {
            mediaPageArr[0].scrollHelper.setScrollDirection(1);
            this.mediaPages[0].scrollHelper.scrollToPosition(0, 0, false, true);
        } else {
            mediaPageArr[0].listView.smoothScrollToPosition(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkLoadMoreScroll(MediaPage mediaPage, final RecyclerListView recyclerListView, LinearLayoutManager linearLayoutManager) {
        int i;
        int i2;
        RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition;
        StoriesController.StoriesList storiesList;
        if (this.photoVideoChangeColumnsAnimation || this.jumpToRunnable != null) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (recyclerListView.getFastScroll() == null || !recyclerListView.getFastScroll().isPressed() || jCurrentTimeMillis - mediaPage.lastCheckScrollTime >= 300) {
            mediaPage.lastCheckScrollTime = jCurrentTimeMillis;
            if ((this.searching && this.searchWas && mediaPage.selectedType != 11) || mediaPage.selectedType == 7) {
                return;
            }
            int iFindFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition();
            int iAbs = iFindFirstVisibleItemPosition == -1 ? 0 : Math.abs(linearLayoutManager.findLastVisibleItemPosition() - iFindFirstVisibleItemPosition) + 1;
            int itemCount = recyclerListView.getAdapter() == null ? 0 : recyclerListView.getAdapter().getItemCount();
            final int i3 = mediaPage.selectedType;
            if (i3 == 0 || i3 == 1 || i3 == 2 || i3 == 4) {
                itemCount = this.sharedMediaData[i3].getStartOffset() + this.sharedMediaData[i3].messages.size();
                SharedMediaData sharedMediaData = this.sharedMediaData[i3];
                if (sharedMediaData.fastScrollDataLoaded && sharedMediaData.fastScrollPeriods.size() > 2 && mediaPage.selectedType == 0 && this.sharedMediaData[i3].messages.size() != 0) {
                    float f = i3 == 0 ? this.mediaColumnsCount[0] : 1;
                    int measuredHeight = (int) ((recyclerListView.getMeasuredHeight() / (recyclerListView.getMeasuredWidth() / f)) * f * 1.5f);
                    if (measuredHeight < 100) {
                        measuredHeight = 100;
                    }
                    if (measuredHeight < this.sharedMediaData[i3].fastScrollPeriods.get(1).startOffset) {
                        measuredHeight = this.sharedMediaData[i3].fastScrollPeriods.get(1).startOffset;
                    }
                    if ((iFindFirstVisibleItemPosition > itemCount && iFindFirstVisibleItemPosition - itemCount > measuredHeight) || ((i = iFindFirstVisibleItemPosition + iAbs) < this.sharedMediaData[i3].startOffset && this.sharedMediaData[0].startOffset - i > measuredHeight)) {
                        Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda29
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$checkLoadMoreScroll$37(i3, recyclerListView);
                            }
                        };
                        this.jumpToRunnable = runnable;
                        AndroidUtilities.runOnUIThread(runnable);
                        return;
                    }
                }
            }
            int i4 = mediaPage.selectedType;
            if (i4 == 7) {
                return;
            }
            boolean zIsAnyStoryPageType = isAnyStoryPageType(i4);
            int i5 = mediaPage.selectedType;
            if (zIsAnyStoryPageType) {
                StoriesAdapter storiesAdapterStoryAlbums_getStoriesAdapterByTabType = storyAlbums_getStoriesAdapterByTabType(i5);
                if (storiesAdapterStoryAlbums_getStoriesAdapterByTabType == null || (storiesList = storiesAdapterStoryAlbums_getStoriesAdapterByTabType.storiesList) == null || iFindFirstVisibleItemPosition + iAbs <= storiesList.getLoadedCount() - this.mediaColumnsCount[1]) {
                    return;
                }
                storiesAdapterStoryAlbums_getStoriesAdapterByTabType.load(false);
                return;
            }
            if (i5 == 6) {
                if (iAbs <= 0 || this.commonGroupsAdapter.endReached || this.commonGroupsAdapter.loading || this.commonGroupsAdapter.chats.isEmpty() || iFindFirstVisibleItemPosition + iAbs < itemCount - 5) {
                    return;
                }
                CommonGroupsAdapter commonGroupsAdapter = this.commonGroupsAdapter;
                commonGroupsAdapter.getChats(((TLRPC.Chat) commonGroupsAdapter.chats.get(this.commonGroupsAdapter.chats.size() - 1)).id, 100);
                return;
            }
            if (i5 == 11) {
                int iMax = -1;
                for (int i6 = 0; i6 < mediaPage.listView.getChildCount(); i6++) {
                    iMax = Math.max(mediaPage.listView.getChildAdapterPosition(mediaPage.listView.getChildAt(i6)), iMax);
                }
                RecyclerView.Adapter adapter = mediaPage.listView.getAdapter();
                SavedMessagesSearchAdapter savedMessagesSearchAdapter = this.savedMessagesSearchAdapter;
                if (adapter == savedMessagesSearchAdapter) {
                    if (iMax + 1 >= savedMessagesSearchAdapter.dialogs.size() + this.savedMessagesSearchAdapter.loadedMessages.size()) {
                        this.savedMessagesSearchAdapter.loadMore();
                        return;
                    }
                    return;
                } else {
                    if (iMax + 1 >= this.profileActivity.getMessagesController().getSavedMessagesController().getLoadedCount()) {
                        this.profileActivity.getMessagesController().getSavedMessagesController().loadDialogs(false);
                        return;
                    }
                    return;
                }
            }
            int i7 = 10;
            if (i5 == 10 || i5 == 12 || i5 == 13 || i5 == 14) {
                return;
            }
            if (i5 == 0) {
                i7 = 3;
            } else if (i5 != 5) {
                i7 = 6;
            }
            int i8 = i5 == 15 ? 8 : i5;
            if (iAbs + iFindFirstVisibleItemPosition > itemCount - i7 || this.sharedMediaData[i8].loadingAfterFastScroll) {
                SharedMediaData[] sharedMediaDataArr = this.sharedMediaData;
                SharedMediaData sharedMediaData2 = sharedMediaDataArr[i8];
                if (!sharedMediaData2.loading) {
                    if (i5 == 0) {
                        int i9 = sharedMediaDataArr[0].filterType;
                        i2 = i9 == 1 ? 6 : i9 == 2 ? 7 : 0;
                    } else {
                        i2 = i5 == 1 ? 1 : i5 == 2 ? 2 : i5 == 4 ? 4 : i5 == 5 ? 5 : i5 == 15 ? 8 : 3;
                    }
                    boolean[] zArr = sharedMediaData2.endReached;
                    if (!zArr[0]) {
                        sharedMediaData2.loading = true;
                        this.profileActivity.getMediaDataController().loadMedia(this.dialog_id, 50, this.sharedMediaData[i8].max_id[0], 0, i2, this.topicId, 1, this.profileActivity.getClassGuid(), this.sharedMediaData[i8].requestIndex, null, null);
                    } else if (this.mergeDialogId != 0 && !zArr[1]) {
                        sharedMediaData2.loading = true;
                        this.profileActivity.getMediaDataController().loadMedia(this.mergeDialogId, 50, this.sharedMediaData[i8].max_id[1], 0, i2, this.topicId, 1, this.profileActivity.getClassGuid(), this.sharedMediaData[i8].requestIndex, null, null);
                    }
                }
            }
            int positionForIndex = this.sharedMediaData[i8].startOffset;
            if (i8 == 0) {
                positionForIndex = this.photoVideoAdapter.getPositionForIndex(0);
            }
            if (iFindFirstVisibleItemPosition - positionForIndex < i7 + 1) {
                SharedMediaData sharedMediaData3 = this.sharedMediaData[i8];
                if (!sharedMediaData3.loading && !sharedMediaData3.startReached && !sharedMediaData3.loadingAfterFastScroll) {
                    loadFromStart(mediaPage.selectedType);
                }
            }
            if (this.mediaPages[0].listView == recyclerListView) {
                int i10 = this.mediaPages[0].selectedType;
                if ((i10 != 0 && i10 != 5) || iFindFirstVisibleItemPosition == -1 || (viewHolderFindViewHolderForAdapterPosition = recyclerListView.findViewHolderForAdapterPosition(iFindFirstVisibleItemPosition)) == null) {
                    return;
                }
                if (viewHolderFindViewHolderForAdapterPosition.getItemViewType() == 0 || viewHolderFindViewHolderForAdapterPosition.getItemViewType() == 12) {
                    View view = viewHolderFindViewHolderForAdapterPosition.itemView;
                    if (view instanceof SharedPhotoVideoCell) {
                        MessageObject messageObject = ((SharedPhotoVideoCell) view).getMessageObject(0);
                        if (messageObject != null) {
                            this.floatingDateView.setCustomDate(messageObject.messageOwner.date, false, true);
                            return;
                        }
                        return;
                    }
                    if (view instanceof ContextLinkCell) {
                        this.floatingDateView.setCustomDate(((ContextLinkCell) view).getDate(), false, true);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkLoadMoreScroll$37(int i, RecyclerListView recyclerListView) {
        findPeriodAndJumpToDate(i, recyclerListView, false);
        this.jumpToRunnable = null;
    }

    private void loadFromStart(int i) {
        int i2;
        int i3 = 2;
        if (i == 0) {
            int i4 = this.sharedMediaData[0].filterType;
            if (i4 == 1) {
                i3 = 6;
            } else if (i4 == 2) {
                i3 = 7;
            } else {
                i2 = 0;
            }
            i2 = i3;
        } else if (i == 1) {
            i2 = 1;
        } else {
            if (i != 2) {
                i3 = 4;
                if (i != 4) {
                    i3 = 5;
                    if (i != 5) {
                        i3 = 3;
                    }
                }
            }
            i2 = i3;
        }
        this.sharedMediaData[i].loading = true;
        this.profileActivity.getMediaDataController().loadMedia(this.dialog_id, 50, 0, this.sharedMediaData[i].min_id, i2, this.topicId, 1, this.profileActivity.getClassGuid(), this.sharedMediaData[i].requestIndex, null, null);
    }

    public ActionBarMenuItem getSearchItem() {
        return this.searchItem;
    }

    public RLottieImageView getSearchOptionsItem() {
        return this.optionsSearchImageView;
    }

    public TextView getSaveItem() {
        return this.saveItem;
    }

    public boolean isSearchItemVisible() {
        return isSearchItemVisible(this.mediaPages[0].selectedType);
    }

    public boolean isSearchItemVisible(int i) {
        if (i == 7) {
            return this.delegate.canSearchMembers();
        }
        return (isSearchingStories() || i == 0 || isAnyStoryPageType(i) || i == 2 || i == 5 || i == 6 || i == 11 || i == 10 || i == 13 || i == 14) ? false : true;
    }

    public boolean isTabZoomable(int i) {
        return i == 0 || isAnyStoryPageType(i);
    }

    public boolean isCalendarItemVisible() {
        int i = this.mediaPages[0].selectedType;
        return i == 0 || isAnyStoryPageType(i) || this.mediaPages[0].selectedType == 11;
    }

    public boolean isOptionsItemVisible() {
        ProfileGiftsContainer profileGiftsContainer;
        int i = this.mediaPages[0].selectedType;
        if (i == 0 || isAnyStoryPageType(i) || i == 11 || i == 13) {
            return true;
        }
        return i == 14 && (profileGiftsContainer = this.giftsContainer) != null && profileGiftsContainer.canFilter();
    }

    public int getSelectedTab() {
        int currentTabId = this.scrollSlidingTextTabStrip.getCurrentTabId();
        ProfileStoriesCollectionTabs profileStoriesCollectionTabs = this.storiesContainer;
        if (profileStoriesCollectionTabs != null && currentTabId == 8) {
            int currentAlbumId = profileStoriesCollectionTabs.getCurrentAlbumId();
            if (currentAlbumId == 0) {
                return 8;
            }
            if (currentAlbumId > 0) {
                return storyAlbums_getByAlbumId(currentAlbumId).tabType;
            }
        }
        return currentTabId;
    }

    public int getClosestTab() {
        MediaPage mediaPage = this.mediaPages[1];
        if (mediaPage != null && mediaPage.getVisibility() == 0) {
            if (this.tabsAnimationInProgress && !this.backAnimation) {
                return this.mediaPages[1].selectedType;
            }
            if (Math.abs(this.mediaPages[1].getTranslationX()) < this.mediaPages[1].getMeasuredWidth() / 2.0f) {
                return this.mediaPages[1].selectedType;
            }
        }
        return getSelectedTab();
    }

    public void onSelectedTabChanged() {
        boolean z = isStoriesView() || isArchivedOnlyStoriesView();
        if (this.archivedStoriesAdapter.poller != null) {
            this.archivedStoriesAdapter.poller.start(z && getClosestTab() == 9);
        }
        if (this.storiesAdapter.poller != null) {
            this.storiesAdapter.poller.start(z && getClosestTab() == 8);
        }
        for (StoryAlbumData storyAlbumData : this.storyAlbumsById.values()) {
            StoriesAdapter storiesAdapter = storyAlbumData.adapter;
            if (storiesAdapter.storiesList != null) {
                storiesAdapter.poller.start(z && getClosestTab() == storyAlbumData.tabType);
            }
        }
        ActionBarMenuItem actionBarMenuItem = this.searchItem;
        if (actionBarMenuItem != null) {
            SearchTagsList searchTagsList = this.searchTagsList;
            actionBarMenuItem.setSearchFieldHint(LocaleController.getString((searchTagsList != null && searchTagsList.hasFilters() && getSelectedTab() == 11) ? C2807R.string.SavedTagSearchHint : C2807R.string.Search));
        }
        checkStoriesTabsPosition();
    }

    public void onDestroy() {
        this.observersGroup.removeAllObservers();
        ChatActivityContainer chatActivityContainer = this.savedMessagesContainer;
        if (chatActivityContainer != null) {
            chatActivityContainer.onDestroy();
        }
        StoriesAdapter storiesAdapter = this.storiesAdapter;
        if (storiesAdapter != null && storiesAdapter.storiesList != null) {
            storiesAdapter.destroy();
        }
        StoriesAdapter storiesAdapter2 = this.archivedStoriesAdapter;
        if (storiesAdapter2 != null && storiesAdapter2.storiesList != null) {
            storiesAdapter2.destroy();
        }
        Iterator<StoryAlbumData> it = this.storyAlbumsById.values().iterator();
        while (it.hasNext()) {
            StoriesAdapter storiesAdapter3 = it.next().adapter;
            if (storiesAdapter3.storiesList != null) {
                storiesAdapter3.destroy();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkCurrentTabValid() {
        if (this.scrollSlidingTextTabStrip.hasTab(this.scrollSlidingTextTabStrip.getCurrentTabId())) {
            return;
        }
        int firstTabId = this.scrollSlidingTextTabStrip.getFirstTabId();
        this.scrollSlidingTextTabStrip.setInitialTabId(firstTabId);
        this.mediaPages[0].selectedType = firstTabId;
        switchToCurrentSelectedMode(false);
    }

    public void setNewMediaCounts(int[] iArr) {
        for (int i = 0; i <= 6 && this.hasMedia[i] < 0; i++) {
        }
        System.arraycopy(iArr, 0, this.hasMedia, 0, 6);
        updateTabs(true);
        checkCurrentTabValid();
        if (this.hasMedia[0] >= 0) {
            loadFastScrollData(false);
        }
    }

    private void loadFastScrollData(boolean z) {
        if (this.topicId != 0 || isSearchingStories()) {
            return;
        }
        int i = 0;
        while (true) {
            int[] iArr = supportedFastScrollTypes;
            if (i >= iArr.length) {
                return;
            }
            final int i2 = iArr[i];
            if ((this.sharedMediaData[i2].fastScrollDataLoaded && !z) || DialogObject.isEncryptedDialog(this.dialog_id)) {
                return;
            }
            this.sharedMediaData[i2].fastScrollDataLoaded = false;
            TLRPC.TL_messages_getSearchResultsPositions tL_messages_getSearchResultsPositions = new TLRPC.TL_messages_getSearchResultsPositions();
            if (i2 == 0) {
                int i3 = this.sharedMediaData[i2].filterType;
                if (i3 == 1) {
                    tL_messages_getSearchResultsPositions.filter = new TLRPC.TL_inputMessagesFilterPhotos();
                } else if (i3 == 2) {
                    tL_messages_getSearchResultsPositions.filter = new TLRPC.TL_inputMessagesFilterVideo();
                } else {
                    tL_messages_getSearchResultsPositions.filter = new TLRPC.TL_inputMessagesFilterPhotoVideo();
                }
            } else if (i2 == 1) {
                tL_messages_getSearchResultsPositions.filter = new TLRPC.TL_inputMessagesFilterDocument();
            } else if (i2 == 2) {
                tL_messages_getSearchResultsPositions.filter = new TLRPC.TL_inputMessagesFilterRoundVoice();
            } else {
                tL_messages_getSearchResultsPositions.filter = new TLRPC.TL_inputMessagesFilterMusic();
            }
            tL_messages_getSearchResultsPositions.limit = 100;
            tL_messages_getSearchResultsPositions.peer = this.profileActivity.getMessagesController().getInputPeer(this.dialog_id);
            if (this.topicId != 0 && this.profileActivity.getUserConfig().getClientUserId() == this.dialog_id) {
                tL_messages_getSearchResultsPositions.flags |= 4;
                tL_messages_getSearchResultsPositions.saved_peer_id = this.profileActivity.getMessagesController().getInputPeer(this.topicId);
            }
            final int i4 = this.sharedMediaData[i2].requestIndex;
            ConnectionsManager.getInstance(this.profileActivity.getCurrentAccount()).bindRequestToGuid(ConnectionsManager.getInstance(this.profileActivity.getCurrentAccount()).sendRequest(tL_messages_getSearchResultsPositions, new RequestDelegate() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda1
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$loadFastScrollData$41(i4, i2, tLObject, tL_error);
                }
            }), this.profileActivity.getClassGuid());
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadFastScrollData$41(final int i, final int i2, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda28
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadFastScrollData$40(tL_error, i, i2, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadFastScrollData$40(final TLRPC.TL_error tL_error, final int i, final int i2, final TLObject tLObject) {
        NotificationCenter.getInstance(this.profileActivity.getCurrentAccount()).doOnIdle(new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda57
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadFastScrollData$39(tL_error, i, i2, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadFastScrollData$39(TLRPC.TL_error tL_error, int i, int i2, TLObject tLObject) {
        if (tL_error != null) {
            return;
        }
        SharedMediaData sharedMediaData = this.sharedMediaData[i2];
        if (i != sharedMediaData.requestIndex) {
            return;
        }
        TLRPC.TL_messages_searchResultsPositions tL_messages_searchResultsPositions = (TLRPC.TL_messages_searchResultsPositions) tLObject;
        sharedMediaData.fastScrollPeriods.clear();
        int size = tL_messages_searchResultsPositions.positions.size();
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            TLRPC.TL_searchResultPosition tL_searchResultPosition = tL_messages_searchResultsPositions.positions.get(i4);
            if (tL_searchResultPosition.date != 0) {
                this.sharedMediaData[i2].fastScrollPeriods.add(new Period(tL_searchResultPosition));
            }
        }
        Collections.sort(this.sharedMediaData[i2].fastScrollPeriods, new Comparator() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda66
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return SharedMediaLayout.$r8$lambda$siAEEsCa6I5m_AtJh24R7TlZoAo((SharedMediaLayout.Period) obj, (SharedMediaLayout.Period) obj2);
            }
        });
        this.sharedMediaData[i2].setTotalCount(0, tL_messages_searchResultsPositions.count);
        SharedMediaData sharedMediaData2 = this.sharedMediaData[i2];
        sharedMediaData2.fastScrollDataLoaded = true;
        if (!sharedMediaData2.fastScrollPeriods.isEmpty()) {
            while (true) {
                MediaPage[] mediaPageArr = this.mediaPages;
                if (i3 >= mediaPageArr.length) {
                    break;
                }
                MediaPage mediaPage = mediaPageArr[i3];
                if (mediaPage.selectedType == i2) {
                    mediaPage.fastScrollEnabled = true;
                    updateFastScrollVisibility(mediaPage, true);
                }
                i3++;
            }
        }
        this.photoVideoAdapter.notifyDataSetChanged();
    }

    public static /* synthetic */ int $r8$lambda$siAEEsCa6I5m_AtJh24R7TlZoAo(Period period, Period period2) {
        return period2.date - period.date;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void showFastScrollHint(final MediaPage mediaPage, SharedMediaData[] sharedMediaDataArr, boolean z) {
        Runnable runnable;
        if (z) {
            if (SharedConfig.fastScrollHintCount <= 0 || mediaPage.fastScrollHintView != null || mediaPage.fastScrollHinWasShown || mediaPage.listView.getFastScroll() == null || !mediaPage.listView.getFastScroll().isVisible || mediaPage.listView.getFastScroll().getVisibility() != 0 || sharedMediaDataArr[0].getTotalCount() < 50) {
                return;
            }
            SharedConfig.setFastScrollHintCount(SharedConfig.fastScrollHintCount - 1);
            mediaPage.fastScrollHinWasShown = true;
            final SharedMediaFastScrollTooltip sharedMediaFastScrollTooltip = new SharedMediaFastScrollTooltip(mediaPage.getContext());
            mediaPage.fastScrollHintView = sharedMediaFastScrollTooltip;
            mediaPage.addView(sharedMediaFastScrollTooltip, LayoutHelper.createFrame(-2, -2.0f));
            mediaPage.fastScrollHintView.setAlpha(0.0f);
            mediaPage.fastScrollHintView.setScaleX(0.8f);
            mediaPage.fastScrollHintView.setScaleY(0.8f);
            mediaPage.fastScrollHintView.animate().alpha(1.0f).scaleX(1.0f).scaleY(1.0f).setDuration(150L).start();
            mediaPage.invalidate();
            Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda40
                @Override // java.lang.Runnable
                public final void run() {
                    SharedMediaLayout.m14475$r8$lambda$uBsOs_1UgJT2hEBoWDMQHcuVrk(mediaPage, sharedMediaFastScrollTooltip);
                }
            };
            mediaPage.fastScrollHideHintRunnable = runnable2;
            AndroidUtilities.runOnUIThread(runnable2, 4000L);
            return;
        }
        if (mediaPage.fastScrollHintView == null || (runnable = mediaPage.fastScrollHideHintRunnable) == null) {
            return;
        }
        AndroidUtilities.cancelRunOnUIThread(runnable);
        mediaPage.fastScrollHideHintRunnable.run();
        mediaPage.fastScrollHideHintRunnable = null;
        mediaPage.fastScrollHintView = null;
    }

    /* JADX INFO: renamed from: $r8$lambda$uBs-Os_1UgJT2hEBoWDMQHcuVrk, reason: not valid java name */
    public static /* synthetic */ void m14475$r8$lambda$uBsOs_1UgJT2hEBoWDMQHcuVrk(MediaPage mediaPage, final SharedMediaFastScrollTooltip sharedMediaFastScrollTooltip) {
        mediaPage.fastScrollHintView = null;
        mediaPage.fastScrollHideHintRunnable = null;
        sharedMediaFastScrollTooltip.animate().alpha(0.0f).scaleX(0.5f).scaleY(0.5f).setDuration(220L).setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.SharedMediaLayout.42
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (sharedMediaFastScrollTooltip.getParent() != null) {
                    ((ViewGroup) sharedMediaFastScrollTooltip.getParent()).removeView(sharedMediaFastScrollTooltip);
                }
            }
        }).start();
    }

    public void setCommonGroupsCount(int i) {
        if (this.topicId == 0) {
            this.hasMedia[6] = i;
        }
        updateTabs(true);
        checkCurrentTabValid();
    }

    public void onActionBarItemClick(View view, int i) {
        BotPreviewsEditContainer botPreviewsEditContainer;
        TLRPC.Chat chat;
        TLRPC.User user;
        TLRPC.EncryptedChat encryptedChat;
        boolean z;
        if (i != 101) {
            if (i == 100 || i == 105) {
                final boolean z2 = i == 105;
                if (this.userInfo != null && this.profileActivity.getMessagesController().isUserNoForwards(this.userInfo)) {
                    HintView hintView = this.fwdRestrictedHint;
                    if (hintView != null) {
                        hintView.setText(LocaleController.getString(C2807R.string.ForwardsRestrictedInfoUser));
                        this.fwdRestrictedHint.showForView(view, true);
                        return;
                    }
                    return;
                }
                if (this.info != null) {
                    TLRPC.Chat chat2 = this.profileActivity.getMessagesController().getChat(Long.valueOf(this.info.id));
                    if (this.profileActivity.getMessagesController().isChatNoForwards(chat2)) {
                        HintView hintView2 = this.fwdRestrictedHint;
                        if (hintView2 != null) {
                            hintView2.setText((!ChatObject.isChannel(chat2) || chat2.megagroup) ? LocaleController.getString(C2807R.string.ForwardsRestrictedInfoGroup) : LocaleController.getString(C2807R.string.ForwardsRestrictedInfoChannel));
                            this.fwdRestrictedHint.showForView(view, true);
                            return;
                        }
                        return;
                    }
                }
                if (hasNoforwardsMessage()) {
                    HintView hintView3 = this.fwdRestrictedHint;
                    if (hintView3 != null) {
                        hintView3.setText(LocaleController.getString("ForwardsRestrictedInfoBot", C2807R.string.ForwardsRestrictedInfoBot));
                        this.fwdRestrictedHint.showForView(view, true);
                        return;
                    }
                    return;
                }
                Bundle bundle = new Bundle();
                bundle.putBoolean("onlySelect", true);
                bundle.putBoolean("canSelectTopics", true);
                bundle.putInt("dialogsType", 3);
                bundle.putBoolean("forward_noquote", z2);
                DialogsActivity dialogsActivity = new DialogsActivity(bundle);
                dialogsActivity.setDelegate(new DialogsActivity.DialogsActivityDelegate() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda36
                    @Override // org.telegram.ui.DialogsActivity.DialogsActivityDelegate
                    public final boolean didSelectDialogs(DialogsActivity dialogsActivity2, ArrayList arrayList, CharSequence charSequence, boolean z3, boolean z4, int i2, int i3, TopicsFragment topicsFragment) {
                        return this.f$0.lambda$onActionBarItemClick$49(z2, dialogsActivity2, arrayList, charSequence, z3, z4, i2, i3, topicsFragment);
                    }
                });
                this.profileActivity.presentFragment(dialogsActivity);
                return;
            }
            if (i == 102) {
                if (this.selectedFiles[0].size() + this.selectedFiles[1].size() != 1) {
                    return;
                }
                SparseArray<MessageObject>[] sparseArrayArr = this.selectedFiles;
                MessageObject messageObjectValueAt = sparseArrayArr[sparseArrayArr[0].size() == 1 ? (char) 0 : (char) 1].valueAt(0);
                Bundle bundle2 = new Bundle();
                long dialogId = messageObjectValueAt.getDialogId();
                if (DialogObject.isEncryptedDialog(dialogId)) {
                    bundle2.putInt("enc_id", DialogObject.getEncryptedChatId(dialogId));
                } else if (DialogObject.isUserDialog(dialogId)) {
                    bundle2.putLong("user_id", dialogId);
                } else {
                    TLRPC.Chat chat3 = this.profileActivity.getMessagesController().getChat(Long.valueOf(-dialogId));
                    if (chat3 != null && chat3.migrated_to != null) {
                        bundle2.putLong("migrated_to", dialogId);
                        dialogId = -chat3.migrated_to.channel_id;
                    }
                    bundle2.putLong("chat_id", -dialogId);
                }
                bundle2.putInt("message_id", messageObjectValueAt.getId());
                bundle2.putBoolean("need_remove_previous_same_chat_activity", false);
                ChatActivity chatActivity = new ChatActivity(bundle2);
                chatActivity.highlightMessageId = messageObjectValueAt.getId();
                long j = this.topicId;
                if (j != 0) {
                    ForumUtilities.applyTopic(chatActivity, MessagesStorage.TopicKey.of(dialogId, j));
                    bundle2.putInt("message_id", messageObjectValueAt.getId());
                }
                this.profileActivity.presentFragment(chatActivity, false);
                return;
            }
            if (i == 103 || i == 104) {
                if (getClosestTab() == 8) {
                    StoriesAdapter storiesAdapter = this.storiesAdapter;
                    if (storiesAdapter == null || storiesAdapter.storiesList == null) {
                        return;
                    }
                    ArrayList<Integer> arrayList = new ArrayList<>();
                    for (int i2 = 0; i2 < this.selectedFiles[0].size(); i2++) {
                        arrayList.add(Integer.valueOf(this.selectedFiles[0].valueAt(i2).getId()));
                    }
                    pinOnUnpinStories(arrayList, i == 103);
                    closeActionMode(false);
                    return;
                }
                SavedMessagesController savedMessagesController = this.profileActivity.getMessagesController().getSavedMessagesController();
                ArrayList<Long> arrayList2 = new ArrayList<>();
                for (int i3 = 0; i3 < savedMessagesController.allDialogs.size(); i3++) {
                    long j2 = savedMessagesController.allDialogs.get(i3).dialogId;
                    if (this.savedDialogsAdapter.selectedDialogs.contains(Long.valueOf(j2))) {
                        arrayList2.add(Long.valueOf(j2));
                    }
                }
                if (savedMessagesController.updatePinned(arrayList2, i == 103, true)) {
                    int i4 = 0;
                    while (true) {
                        MediaPage[] mediaPageArr = this.mediaPages;
                        if (i4 >= mediaPageArr.length) {
                            break;
                        }
                        MediaPage mediaPage = mediaPageArr[i4];
                        if (mediaPage.selectedType == 11) {
                            mediaPage.layoutManager.scrollToPositionWithOffset(0, 0);
                            break;
                        }
                        i4++;
                    }
                } else {
                    this.profileActivity.showDialog(new LimitReachedBottomSheet(this.profileActivity, getContext(), 33, this.profileActivity.getCurrentAccount(), null));
                }
                closeActionMode(true);
                return;
            }
            return;
        }
        if (isAnyStoryPageType(getSelectedTab()) || getSelectedTab() == 13) {
            if (this.selectedFiles[0] != null) {
                if (isBot() && (botPreviewsEditContainer = this.botPreviewsContainer) != null && botPreviewsEditContainer.getCurrentList() != null) {
                    final StoriesController.BotPreviewsList currentList = this.botPreviewsContainer.getCurrentList();
                    final ArrayList arrayList3 = new ArrayList();
                    for (int i5 = 0; i5 < this.selectedFiles[0].size(); i5++) {
                        TL_stories.StoryItem storyItem = this.selectedFiles[0].valueAt(i5).storyItem;
                        if (storyItem != null) {
                            arrayList3.add(storyItem.media);
                        }
                    }
                    if (arrayList3.isEmpty()) {
                        return;
                    }
                    AlertDialog.Builder builder = new AlertDialog.Builder(getContext(), this.resourcesProvider);
                    builder.setTitle(LocaleController.getString(arrayList3.size() > 1 ? C2807R.string.DeleteBotPreviewsTitle : C2807R.string.DeleteBotPreviewTitle));
                    builder.setMessage(LocaleController.formatPluralString("DeleteBotPreviewsSubtitle", arrayList3.size(), new Object[0]));
                    builder.setPositiveButton(LocaleController.getString(C2807R.string.Delete), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda30
                        @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                        public final void onClick(AlertDialog alertDialog, int i6) {
                            this.f$0.lambda$onActionBarItemClick$43(currentList, arrayList3, alertDialog, i6);
                        }
                    });
                    builder.setNegativeButton(LocaleController.getString(C2807R.string.Cancel), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda31
                        @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                        public final void onClick(AlertDialog alertDialog, int i6) {
                            alertDialog.dismiss();
                        }
                    });
                    AlertDialog alertDialogCreate = builder.create();
                    alertDialogCreate.show();
                    alertDialogCreate.redPositive();
                    return;
                }
                final ArrayList arrayList4 = new ArrayList();
                for (int i6 = 0; i6 < this.selectedFiles[0].size(); i6++) {
                    TL_stories.StoryItem storyItem2 = this.selectedFiles[0].valueAt(i6).storyItem;
                    if (storyItem2 != null) {
                        arrayList4.add(storyItem2);
                    }
                }
                if (arrayList4.isEmpty()) {
                    return;
                }
                AlertDialog.Builder builder2 = new AlertDialog.Builder(getContext(), this.resourcesProvider);
                builder2.setTitle(LocaleController.getString(arrayList4.size() > 1 ? C2807R.string.DeleteStoriesTitle : C2807R.string.DeleteStoryTitle));
                builder2.setMessage(LocaleController.formatPluralString("DeleteStoriesSubtitle", arrayList4.size(), new Object[0]));
                builder2.setPositiveButton(LocaleController.getString(C2807R.string.Delete), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda32
                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                    public final void onClick(AlertDialog alertDialog, int i7) {
                        this.f$0.lambda$onActionBarItemClick$45(arrayList4, alertDialog, i7);
                    }
                });
                builder2.setNegativeButton(LocaleController.getString(C2807R.string.Cancel), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda33
                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                    public final void onClick(AlertDialog alertDialog, int i7) {
                        alertDialog.dismiss();
                    }
                });
                AlertDialog alertDialogCreate2 = builder2.create();
                alertDialogCreate2.show();
                alertDialogCreate2.redPositive();
                return;
            }
            return;
        }
        if (getSelectedTab() == 11) {
            SavedMessagesController savedMessagesController2 = this.profileActivity.getMessagesController().getSavedMessagesController();
            final ArrayList arrayList5 = new ArrayList();
            for (int i7 = 0; i7 < savedMessagesController2.allDialogs.size(); i7++) {
                long j3 = savedMessagesController2.allDialogs.get(i7).dialogId;
                if (this.savedDialogsAdapter.selectedDialogs.contains(Long.valueOf(j3))) {
                    arrayList5.add(Long.valueOf(j3));
                }
            }
            boolean zIsEmpty = arrayList5.isEmpty();
            String userName = _UrlKt.FRAGMENT_ENCODE_SET;
            if (zIsEmpty) {
                z = false;
            } else {
                Long l = (Long) arrayList5.get(0);
                long jLongValue = l.longValue();
                boolean z3 = jLongValue == this.profileActivity.getUserConfig().getClientUserId();
                z = z3;
                if (jLongValue < 0) {
                    TLRPC.Chat chat4 = this.profileActivity.getMessagesController().getChat(Long.valueOf(-jLongValue));
                    z = z3;
                    if (chat4 != null) {
                        userName = chat4.title;
                        z = z3;
                    }
                } else if (jLongValue >= 0) {
                    TLRPC.User user2 = this.profileActivity.getMessagesController().getUser(l);
                    z = z3;
                    if (user2 != null) {
                        if (UserObject.isAnonymous(user2)) {
                            userName = LocaleController.getString(C2807R.string.AnonymousForward);
                            z = z3;
                        } else {
                            userName = UserObject.getUserName(user2);
                            z = z3;
                        }
                    }
                }
            }
            AlertDialog alertDialogCreate3 = new AlertDialog.Builder(getContext(), this.resourcesProvider).setTitle(arrayList5.size() == 1 ? LocaleController.formatString(z ? C2807R.string.ClearHistoryMyNotesTitle : C2807R.string.ClearHistoryTitleSingle2, userName) : LocaleController.formatPluralString("ClearHistoryTitleMultiple", arrayList5.size(), new Object[0])).setMessage(arrayList5.size() == 1 ? LocaleController.formatString(z ? C2807R.string.ClearHistoryMyNotesMessage : C2807R.string.ClearHistoryMessageSingle, userName) : LocaleController.formatPluralString("ClearHistoryMessageMultiple", arrayList5.size(), new Object[0])).setPositiveButton(LocaleController.getString(C2807R.string.Remove), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda34
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i8) {
                    this.f$0.lambda$onActionBarItemClick$47(arrayList5, alertDialog, i8);
                }
            }).setNegativeButton(LocaleController.getString(C2807R.string.Cancel), null).create();
            this.profileActivity.showDialog(alertDialogCreate3);
            TextView textView = (TextView) alertDialogCreate3.getButton(-1);
            if (textView != null) {
                textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
                return;
            }
            return;
        }
        if (DialogObject.isEncryptedDialog(this.dialog_id)) {
            encryptedChat = this.profileActivity.getMessagesController().getEncryptedChat(Integer.valueOf(DialogObject.getEncryptedChatId(this.dialog_id)));
            user = null;
            chat = null;
        } else {
            boolean zIsUserDialog = DialogObject.isUserDialog(this.dialog_id);
            BaseFragment baseFragment = this.profileActivity;
            if (zIsUserDialog) {
                user = baseFragment.getMessagesController().getUser(Long.valueOf(this.dialog_id));
                chat = null;
                encryptedChat = null;
            } else {
                chat = baseFragment.getMessagesController().getChat(Long.valueOf(-this.dialog_id));
                user = null;
                encryptedChat = null;
            }
        }
        AlertsCreator.createDeleteMessagesAlert(this.profileActivity, user, chat, encryptedChat, null, this.mergeDialogId, null, this.selectedFiles, null, 0, 0, null, new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda35
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onActionBarItemClick$48();
            }
        }, null, this.resourcesProvider);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onActionBarItemClick$43(StoriesController.BotPreviewsList botPreviewsList, ArrayList arrayList, AlertDialog alertDialog, int i) {
        botPreviewsList.delete((ArrayList<TLRPC.MessageMedia>) arrayList);
        BulletinFactory.of(this.profileActivity).createSimpleBulletin(C2807R.raw.ic_delete, LocaleController.formatPluralString("BotPreviewsDeleted", arrayList.size(), new Object[0])).show();
        closeActionMode(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onActionBarItemClick$45(ArrayList arrayList, AlertDialog alertDialog, int i) {
        this.profileActivity.getMessagesController().getStoriesController().deleteStories(this.dialog_id, arrayList);
        BulletinFactory.of(this.profileActivity).createSimpleBulletin(C2807R.raw.ic_delete, LocaleController.formatPluralString("StoriesDeleted", arrayList.size(), new Object[0])).show();
        closeActionMode(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onActionBarItemClick$47(ArrayList arrayList, AlertDialog alertDialog, int i) {
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            this.profileActivity.getMessagesController().deleteSavedDialog(((Long) arrayList.get(i2)).longValue());
        }
        closeActionMode();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onActionBarItemClick$48() {
        showActionMode(false);
        this.actionBar.closeSearchField();
        this.cantDeleteMessagesCount = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$onActionBarItemClick$49(boolean z, DialogsActivity dialogsActivity, ArrayList arrayList, CharSequence charSequence, boolean z2, boolean z3, int i, int i2, TopicsFragment topicsFragment) {
        long j;
        boolean z4 = z;
        ArrayList<MessageObject> arrayList2 = new ArrayList<>();
        int i3 = 1;
        while (true) {
            int i4 = 0;
            if (i3 < 0) {
                break;
            }
            ArrayList arrayList3 = new ArrayList();
            for (int i5 = 0; i5 < this.selectedFiles[i3].size(); i5++) {
                arrayList3.add(Integer.valueOf(this.selectedFiles[i3].keyAt(i5)));
            }
            Collections.sort(arrayList3);
            int size = arrayList3.size();
            while (i4 < size) {
                Object obj = arrayList3.get(i4);
                i4++;
                Integer num = (Integer) obj;
                if (num.intValue() > 0) {
                    arrayList2.add(this.selectedFiles[i3].get(num.intValue()));
                }
            }
            this.selectedFiles[i3].clear();
            i3--;
        }
        this.cantDeleteMessagesCount = 0;
        showActionMode(false);
        SavedDialogsAdapter savedDialogsAdapter = this.savedDialogsAdapter;
        if (savedDialogsAdapter != null) {
            savedDialogsAdapter.unselectAll();
        }
        if (arrayList.size() > 1 || ((MessagesStorage.TopicKey) arrayList.get(0)).dialogId == this.profileActivity.getUserConfig().getClientUserId() || charSequence != null) {
            updateRowsSelection(true);
            int i6 = 0;
            while (i6 < arrayList.size()) {
                long j2 = ((MessagesStorage.TopicKey) arrayList.get(i6)).dialogId;
                if (charSequence != null) {
                    j = j2;
                    this.profileActivity.getSendMessagesHelper().sendMessage(SendMessagesHelper.SendMessageParams.of(charSequence.toString(), j, null, null, null, true, null, null, null, true, 0, 0, null, false));
                } else {
                    j = j2;
                }
                this.profileActivity.getSendMessagesHelper().sendMessage(arrayList2, j, z4, false, true, 0, 0L);
                i6++;
                z4 = z;
            }
            dialogsActivity.finishFragment();
            BaseFragment baseFragment = this.profileActivity;
            UndoView undoView = baseFragment instanceof ProfileActivity ? ((ProfileActivity) baseFragment).getUndoView() : null;
            if (undoView != null) {
                if (arrayList.size() == 1) {
                    undoView.showWithAction(((MessagesStorage.TopicKey) arrayList.get(0)).dialogId, 53, Integer.valueOf(arrayList2.size()));
                } else {
                    undoView.showWithAction(0L, 53, Integer.valueOf(arrayList2.size()), Integer.valueOf(arrayList.size()), (Runnable) null, (Runnable) null);
                }
            }
        } else {
            long j3 = ((MessagesStorage.TopicKey) arrayList.get(0)).dialogId;
            Bundle bundle = new Bundle();
            bundle.putBoolean("scrollToTopOnResume", true);
            if (DialogObject.isEncryptedDialog(j3)) {
                bundle.putInt("enc_id", DialogObject.getEncryptedChatId(j3));
            } else {
                if (DialogObject.isUserDialog(j3)) {
                    bundle.putLong("user_id", j3);
                } else {
                    bundle.putLong("chat_id", -j3);
                }
                if (!this.profileActivity.getMessagesController().checkCanOpenChat(bundle, dialogsActivity)) {
                    return true;
                }
            }
            this.profileActivity.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.closeChats, new Object[0]);
            bundle.putBoolean("forward_noquote", z4);
            ChatActivity chatActivity = new ChatActivity(bundle);
            ForumUtilities.applyTopic(chatActivity, (MessagesStorage.TopicKey) arrayList.get(0));
            dialogsActivity.presentFragment(chatActivity, true);
            chatActivity.setForwardParams(z4);
            chatActivity.showFieldPanelForForward(true, arrayList2);
        }
        return true;
    }

    private void pinOnUnpinStories(ArrayList<Integer> arrayList, boolean z) {
        StoriesAdapter storiesAdapter = this.storiesAdapter;
        if (storiesAdapter == null || storiesAdapter.storiesList == null) {
            return;
        }
        if (z && arrayList.size() > this.profileActivity.getMessagesController().storiesPinnedToTopCountMax) {
            BulletinFactory.of(this.profileActivity).createSimpleBulletin(C2807R.raw.chats_infotip, AndroidUtilities.replaceTags(LocaleController.formatPluralString("StoriesPinLimit", this.profileActivity.getMessagesController().storiesPinnedToTopCountMax, new Object[0]))).show();
            return;
        }
        if (this.storiesAdapter.storiesList.updatePinned(arrayList, z)) {
            BulletinFactory.of(this.profileActivity).createSimpleBulletin(C2807R.raw.chats_infotip, AndroidUtilities.replaceTags(LocaleController.formatPluralString("StoriesPinLimit", this.profileActivity.getMessagesController().storiesPinnedToTopCountMax, new Object[0]))).show();
            return;
        }
        BaseFragment baseFragment = this.profileActivity;
        if (z) {
            BulletinFactory.of(baseFragment).createSimpleBulletin(C2807R.raw.ic_pin, AndroidUtilities.replaceTags(LocaleController.formatPluralString("StoriesPinned", arrayList.size(), new Object[0])), LocaleController.formatPluralString("StoriesPinnedText", arrayList.size(), new Object[0])).show();
        } else {
            BulletinFactory.of(baseFragment).createSimpleBulletin(C2807R.raw.ic_unpin, AndroidUtilities.replaceTags(LocaleController.formatPluralString("StoriesUnpinned", arrayList.size(), new Object[0]))).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void selectTabWithId(int i, float f) {
        if (this.scrollSlidingTextTabStrip != null) {
            this.scrollSlidingTextTabStrip.selectTabWithId(isStoryAlbumPageType(i) ? 8 : i, f);
        }
        if (this.storiesContainer != null) {
            if (isStoryAlbumPageType(i)) {
                this.storiesContainer.selectTabWithId(storyAlbums_getAlbumIdByTabType(i), f);
            } else if (i == 8) {
                this.storiesContainer.selectTabWithId(0, f);
            }
        }
    }

    private int getNextPageId(boolean z) {
        int nextAlbumId;
        int closestTab = getClosestTab();
        int nextPageId = this.scrollSlidingTextTabStrip.getNextPageId(z);
        if (this.storiesContainer != null) {
            if (isStoryAlbumPageType(closestTab) || closestTab == 8) {
                nextAlbumId = this.storiesContainer.getNextAlbumId(z);
            } else {
                nextAlbumId = (isStoryAlbumPageType(nextPageId) || nextPageId == 8) ? this.storiesContainer.getCurrentAlbumId() : -1;
            }
            if (nextAlbumId == 0) {
                return 8;
            }
            if (nextAlbumId > 0) {
                return storyAlbums_getByAlbumId(nextAlbumId).tabType;
            }
        }
        return nextPageId;
    }

    private boolean prepareForMoving(MotionEvent motionEvent, boolean z) {
        MediaPage mediaPage;
        ProfileGiftsContainer profileGiftsContainer;
        BotPreviewsEditContainer botPreviewsEditContainer;
        int nextPageId = getNextPageId(z);
        if (nextPageId < 0) {
            return false;
        }
        if (this.searchItem != null && !canShowSearchItem()) {
            this.searchItem.setVisibility(isStoriesView() ? 8 : 4);
            this.searchAlpha = 0.0f;
        } else {
            this.searchAlpha = getSearchAlpha(0.0f);
            updateSearchItemIcon(0.0f);
        }
        if (this.searching && getSelectedTab() == 11) {
            return false;
        }
        if (canEditStories() && this.isActionModeShowed && (getClosestTab() == 8 || isStoryAlbumPageType(getClosestTab()))) {
            return false;
        }
        MediaPage mediaPage2 = this.mediaPages[0];
        if (mediaPage2 != null && mediaPage2.selectedType == 13 && (botPreviewsEditContainer = this.botPreviewsContainer) != null && !botPreviewsEditContainer.canScroll(z)) {
            return false;
        }
        MediaPage mediaPage3 = this.mediaPages[0];
        if (mediaPage3 != null && mediaPage3.selectedType == 14 && (profileGiftsContainer = this.giftsContainer) != null && !profileGiftsContainer.canScroll(z)) {
            return false;
        }
        if (this.isActionModeShowed && (mediaPage = this.mediaPages[0]) != null && mediaPage.selectedType == 13) {
            return false;
        }
        ProfileGiftsContainer profileGiftsContainer2 = this.giftsContainer;
        if (profileGiftsContainer2 != null && profileGiftsContainer2.isReordering()) {
            return false;
        }
        ProfileStoriesCollectionTabs profileStoriesCollectionTabs = this.storiesContainer;
        if (profileStoriesCollectionTabs != null && profileStoriesCollectionTabs.isReordering()) {
            return false;
        }
        updateOptionsSearch();
        getParent().requestDisallowInterceptTouchEvent(true);
        hideFloatingDateView(true);
        this.maybeStartTracking = false;
        this.startedTracking = true;
        onTabScroll(true);
        this.startedTrackingX = (int) motionEvent.getX();
        this.actionBar.setEnabled(false);
        this.scrollSlidingTextTabStrip.setEnabled(false);
        MediaPage mediaPage4 = this.mediaPages[1];
        mediaPage4.selectedType = nextPageId;
        mediaPage4.setVisibility(0);
        this.animatingForward = z;
        switchToCurrentSelectedMode(true);
        MediaPage[] mediaPageArr = this.mediaPages;
        if (z) {
            mediaPageArr[1].setTranslationX(mediaPageArr[0].getMeasuredWidth());
        } else {
            mediaPageArr[1].setTranslationX(-mediaPageArr[0].getMeasuredWidth());
        }
        onTabProgress(getTabProgress());
        return true;
    }

    @Override // android.view.View
    public void forceHasOverlappingRendering(boolean z) {
        super.forceHasOverlappingRendering(z);
    }

    @Override // android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        this.topPadding = i2;
        int i5 = 0;
        while (true) {
            MediaPage[] mediaPageArr = this.mediaPages;
            if (i5 >= mediaPageArr.length) {
                break;
            }
            mediaPageArr[i5].setTranslationY(this.topPadding - this.lastMeasuredTopPadding);
            i5++;
        }
        if (this.topPanelLayout != null) {
            checkUi_topPanelLayoutY();
        } else {
            FragmentContextView fragmentContextView = this.fragmentContextView;
            if (fragmentContextView != null) {
                fragmentContextView.setTranslationY(AndroidUtilities.dp(48.0f) + i2);
            }
        }
        this.additionalFloatingTranslation = i2;
        ChatActionCell chatActionCell = this.floatingDateView;
        chatActionCell.setTranslationY((chatActionCell.getTag() == null ? -AndroidUtilities.dp(48.0f) : 0) + this.additionalFloatingTranslation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkUi_topPanelLayoutY() {
        if (this.topPanelLayout != null) {
            ProfileStoriesCollectionTabs profileStoriesCollectionTabs = this.storiesContainer;
            float fDp = 0.0f;
            if (profileStoriesCollectionTabs != null) {
                fDp = 0.0f + (AndroidUtilities.dp(38.0f) * this.storiesContainer.getVisibilityFactor() * (1.0f - Math.abs(profileStoriesCollectionTabs.getTranslationX() / this.storiesContainer.getMeasuredWidth())));
            }
            this.topPanelLayout.setTranslationY(this.topPadding + fDp);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        SharedMediaLayout sharedMediaLayout;
        int i3;
        int i4;
        int size = View.MeasureSpec.getSize(i);
        int height = this.delegate.getListView() != null ? this.delegate.getListView().getHeight() : 0;
        if (height == 0) {
            height = View.MeasureSpec.getSize(i2);
        }
        setMeasuredDimension(size, height);
        int childCount = getChildCount();
        int i5 = 0;
        while (i5 < childCount) {
            View childAt = this.getChildAt(i5);
            if (childAt == null || childAt.getVisibility() == 8) {
                sharedMediaLayout = this;
                i3 = i;
            } else if (childAt instanceof MediaPage) {
                sharedMediaLayout = this;
                i3 = i;
                sharedMediaLayout.measureChildWithMargins(childAt, i3, 0, View.MeasureSpec.makeMeasureSpec(height, TLObject.FLAG_30), 0);
                MediaPage mediaPage = (MediaPage) childAt;
                mediaPage.listView.setPadding(0, mediaPage.listView.topPadding, 0, mediaPage.listView.bottomPadding);
            } else {
                sharedMediaLayout = this;
                i3 = i;
                i4 = i2;
                sharedMediaLayout.measureChildWithMargins(childAt, i3, 0, i4, 0);
                i5++;
                this = sharedMediaLayout;
                i = i3;
                i2 = i4;
            }
            i4 = i2;
            i5++;
            this = sharedMediaLayout;
            i = i3;
            i2 = i4;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0066  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean checkTabsAnimationInProgress() {
        AnimatorSet animatorSet;
        if (!this.tabsAnimationInProgress) {
            return false;
        }
        boolean z = this.backAnimation;
        MediaPage[] mediaPageArr = this.mediaPages;
        if (z) {
            if (Math.abs(mediaPageArr[0].getTranslationX()) < 1.0f) {
                this.mediaPages[0].setTranslationX(0.0f);
                this.mediaPages[1].setTranslationX(r0[0].getMeasuredWidth() * (this.animatingForward ? 1 : -1));
                animatorSet = this.tabsAnimation;
                if (animatorSet != null) {
                    animatorSet.cancel();
                    this.tabsAnimation = null;
                }
                this.tabsAnimationInProgress = false;
            }
        } else if (Math.abs(mediaPageArr[1].getTranslationX()) < 1.0f) {
            this.mediaPages[0].setTranslationX(r0.getMeasuredWidth() * (this.animatingForward ? -1 : 1));
            this.mediaPages[1].setTranslationX(0.0f);
            animatorSet = this.tabsAnimation;
            if (animatorSet != null) {
            }
            this.tabsAnimationInProgress = false;
        }
        onTabProgress(getTabProgress());
        return this.tabsAnimationInProgress;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return checkTabsAnimationInProgress() || this.scrollSlidingTextTabStrip.isAnimatingIndicator() || onTouchEvent(motionEvent);
    }

    public boolean isCurrentTabFirst() {
        return getSelectedTab() == this.scrollSlidingTextTabStrip.getFirstTabId();
    }

    public RecyclerListView getCurrentListView() {
        ChatActivityContainer chatActivityContainer;
        MediaPage mediaPage = this.mediaPages[0];
        int i = mediaPage.selectedType;
        if (i == 13) {
            return this.botPreviewsContainer.getCurrentListView();
        }
        if (i == 14) {
            return this.giftsContainer.getCurrentListView();
        }
        if (i == 12 && (chatActivityContainer = this.savedMessagesContainer) != null) {
            return chatActivityContainer.chatActivity.getChatListView();
        }
        return mediaPage.listView;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        if (this.disableScrolling || this.profileActivity.getParentLayout() == null || this.profileActivity.getParentLayout().checkTransitionAnimation() || checkTabsAnimationInProgress() || this.isInPinchToZoomTouchMode) {
            return false;
        }
        if (motionEvent != null) {
            if (this.velocityTracker == null) {
                this.velocityTracker = VelocityTracker.obtain();
            }
            this.velocityTracker.addMovement(motionEvent);
            HintView hintView = this.fwdRestrictedHint;
            if (hintView != null) {
                hintView.hide();
            }
        }
        if (motionEvent != null && motionEvent.getAction() == 0 && !this.startedTracking && !this.maybeStartTracking && motionEvent.getY() >= AndroidUtilities.dp(90.0f)) {
            this.startedTrackingPointerId = motionEvent.getPointerId(0);
            this.maybeStartTracking = true;
            this.startedTrackingX = (int) motionEvent.getX();
            this.startedTrackingY = (int) motionEvent.getY();
            this.velocityTracker.clear();
        } else if (motionEvent != null && motionEvent.getAction() == 2 && motionEvent.getPointerId(0) == this.startedTrackingPointerId) {
            int x = (int) (motionEvent.getX() - this.startedTrackingX);
            int iAbs = Math.abs(((int) motionEvent.getY()) - this.startedTrackingY);
            if (this.startedTracking && (((z = this.animatingForward) && x > 0) || (!z && x < 0))) {
                if (!prepareForMoving(motionEvent, x < 0)) {
                    this.maybeStartTracking = true;
                    this.startedTracking = false;
                    onTabScroll(false);
                    this.mediaPages[0].setTranslationX(0.0f);
                    this.mediaPages[1].setTranslationX(this.animatingForward ? r4[0].getMeasuredWidth() : -r4[0].getMeasuredWidth());
                    selectTabWithId(this.mediaPages[1].selectedType, 0.0f);
                    onTabProgress(getTabProgress());
                }
            }
            if (!this.maybeStartTracking || this.startedTracking) {
                if (this.startedTracking) {
                    this.mediaPages[0].setTranslationX(x);
                    boolean z2 = this.animatingForward;
                    MediaPage[] mediaPageArr = this.mediaPages;
                    if (z2) {
                        mediaPageArr[1].setTranslationX(mediaPageArr[0].getMeasuredWidth() + x);
                    } else {
                        mediaPageArr[1].setTranslationX(x - mediaPageArr[0].getMeasuredWidth());
                    }
                    float fAbs = Math.abs(x) / this.mediaPages[0].getMeasuredWidth();
                    if (!canShowSearchItem()) {
                        this.searchAlpha = 0.0f;
                    } else {
                        this.searchAlpha = getSearchAlpha(fAbs);
                        updateSearchItemIcon(fAbs);
                        float photoVideoOptionsAlpha = getPhotoVideoOptionsAlpha(fAbs);
                        this.optionsAlpha = photoVideoOptionsAlpha;
                        this.photoVideoOptionsItem.setVisibility((photoVideoOptionsAlpha == 0.0f || !canShowSearchItem() || isArchivedOnlyStoriesView()) ? 4 : 0);
                    }
                    updateOptionsSearch();
                    selectTabWithId(this.mediaPages[1].selectedType, fAbs);
                    onTabProgress(getTabProgress());
                    onSelectedTabChanged();
                }
            } else if (Math.abs(x) >= AndroidUtilities.getPixelsInCM(0.3f, true) && Math.abs(x) > iAbs) {
                prepareForMoving(motionEvent, x < 0);
            }
        } else if (motionEvent == null || (motionEvent.getPointerId(0) == this.startedTrackingPointerId && (motionEvent.getAction() == 3 || motionEvent.getAction() == 1 || motionEvent.getAction() == 6))) {
            stopScroll(motionEvent);
        }
        return this.startedTracking;
    }

    public void scrollToPage(int i) {
        ScrollSlidingTextTabStripInner scrollSlidingTextTabStripInner;
        if (this.disableScrolling || (scrollSlidingTextTabStripInner = this.scrollSlidingTextTabStrip) == null) {
            return;
        }
        scrollSlidingTextTabStripInner.scrollTo(i);
    }

    private void stopScroll(MotionEvent motionEvent) {
        float xVelocity;
        float yVelocity;
        float measuredWidth;
        int measuredWidth2;
        VelocityTracker velocityTracker = this.velocityTracker;
        if (velocityTracker == null) {
            return;
        }
        velocityTracker.computeCurrentVelocity(1000, this.maximumVelocity);
        if (motionEvent == null || motionEvent.getAction() == 3) {
            xVelocity = 0.0f;
            yVelocity = 0.0f;
        } else {
            xVelocity = this.velocityTracker.getXVelocity();
            yVelocity = this.velocityTracker.getYVelocity();
            if (!this.startedTracking && Math.abs(xVelocity) >= AppUtils.getSwipeVelocity() && Math.abs(xVelocity) > Math.abs(yVelocity)) {
                prepareForMoving(motionEvent, xVelocity < 0.0f);
            }
        }
        if (this.startedTracking) {
            float x = this.mediaPages[0].getX();
            this.tabsAnimation = new AnimatorSet();
            this.backAnimation = Math.abs(x) < ((float) this.mediaPages[0].getMeasuredWidth()) / 3.0f && (Math.abs(xVelocity) < ((float) AppUtils.getSwipeVelocity()) || Math.abs(xVelocity) < Math.abs(yVelocity));
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$stopScroll$50(valueAnimator);
                }
            });
            boolean z = this.backAnimation;
            Property property = View.TRANSLATION_X;
            if (z) {
                measuredWidth = Math.abs(x);
                boolean z2 = this.animatingForward;
                AnimatorSet animatorSet = this.tabsAnimation;
                if (z2) {
                    animatorSet.playTogether(ObjectAnimator.ofFloat(this.mediaPages[0], (Property<MediaPage, Float>) property, 0.0f), ObjectAnimator.ofFloat(this.mediaPages[1], (Property<MediaPage, Float>) property, r10.getMeasuredWidth()), valueAnimatorOfFloat);
                } else {
                    animatorSet.playTogether(ObjectAnimator.ofFloat(this.mediaPages[0], (Property<MediaPage, Float>) property, 0.0f), ObjectAnimator.ofFloat(this.mediaPages[1], (Property<MediaPage, Float>) property, -r10.getMeasuredWidth()), valueAnimatorOfFloat);
                }
            } else {
                measuredWidth = this.mediaPages[0].getMeasuredWidth() - Math.abs(x);
                boolean z3 = this.animatingForward;
                AnimatorSet animatorSet2 = this.tabsAnimation;
                if (z3) {
                    animatorSet2.playTogether(ObjectAnimator.ofFloat(this.mediaPages[0], (Property<MediaPage, Float>) property, -r7.getMeasuredWidth()), ObjectAnimator.ofFloat(this.mediaPages[1], (Property<MediaPage, Float>) property, 0.0f), valueAnimatorOfFloat);
                } else {
                    animatorSet2.playTogether(ObjectAnimator.ofFloat(this.mediaPages[0], (Property<MediaPage, Float>) property, r7.getMeasuredWidth()), ObjectAnimator.ofFloat(this.mediaPages[1], (Property<MediaPage, Float>) property, 0.0f), valueAnimatorOfFloat);
                }
            }
            this.tabsAnimation.setInterpolator(interpolator);
            int measuredWidth3 = getMeasuredWidth();
            float f = measuredWidth3 / 2;
            float fDistanceInfluenceForSnapDuration = f + (AndroidUtilities.distanceInfluenceForSnapDuration(Math.min(1.0f, (measuredWidth * 1.0f) / measuredWidth3)) * f);
            float fAbs = Math.abs(xVelocity);
            if (fAbs > 0.0f) {
                measuredWidth2 = Math.round(Math.abs(fDistanceInfluenceForSnapDuration / fAbs) * 1000.0f) * 4;
            } else {
                measuredWidth2 = (int) (((measuredWidth / getMeasuredWidth()) + 1.0f) * 100.0f);
            }
            this.tabsAnimation.setDuration(Math.max(150, Math.min(measuredWidth2, MediaError.DetailedErrorCode.TEXT_UNKNOWN)));
            this.tabsAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.SharedMediaLayout.43
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    SharedMediaLayout.this.tabsAnimation = null;
                    boolean z4 = SharedMediaLayout.this.backAnimation;
                    SharedMediaLayout sharedMediaLayout = SharedMediaLayout.this;
                    if (z4) {
                        sharedMediaLayout.mediaPages[1].setVisibility(8);
                        if (SharedMediaLayout.this.searchItem != null && !SharedMediaLayout.this.canShowSearchItem()) {
                            SharedMediaLayout.this.searchItem.setVisibility(SharedMediaLayout.this.isStoriesView() ? 8 : 4);
                            SharedMediaLayout.this.searchAlpha = 0.0f;
                        } else {
                            SharedMediaLayout sharedMediaLayout2 = SharedMediaLayout.this;
                            sharedMediaLayout2.searchAlpha = sharedMediaLayout2.getSearchAlpha(0.0f);
                            SharedMediaLayout.this.updateSearchItemIcon(0.0f);
                        }
                        SharedMediaLayout.this.updateOptionsSearch();
                        SharedMediaLayout.this.searchItemState = 0;
                    } else {
                        MediaPage mediaPage = sharedMediaLayout.mediaPages[0];
                        SharedMediaLayout.this.mediaPages[0] = SharedMediaLayout.this.mediaPages[1];
                        SharedMediaLayout.this.mediaPages[1] = mediaPage;
                        SharedMediaLayout.this.mediaPages[1].setVisibility(8);
                        if (SharedMediaLayout.this.searchItem != null && SharedMediaLayout.this.searchItemState == 2) {
                            SharedMediaLayout.this.searchItem.setVisibility(SharedMediaLayout.this.isStoriesView() ? 8 : 4);
                        }
                        SharedMediaLayout.this.searchItemState = 0;
                        SharedMediaLayout sharedMediaLayout3 = SharedMediaLayout.this;
                        sharedMediaLayout3.selectTabWithId(sharedMediaLayout3.mediaPages[0].selectedType, 1.0f);
                        SharedMediaLayout.this.onSelectedTabChanged();
                        SharedMediaLayout.this.startStopVisibleGifs();
                    }
                    SharedMediaLayout.this.tabsAnimationInProgress = false;
                    SharedMediaLayout.this.maybeStartTracking = false;
                    SharedMediaLayout.this.startedTracking = false;
                    SharedMediaLayout.this.onTabScroll(false);
                    SharedMediaLayout.this.actionBar.setEnabled(true);
                    SharedMediaLayout.this.scrollSlidingTextTabStrip.setEnabled(true);
                }
            });
            this.tabsAnimation.start();
            this.tabsAnimationInProgress = true;
            this.startedTracking = false;
            onSelectedTabChanged();
        } else {
            this.maybeStartTracking = false;
            this.actionBar.setEnabled(true);
            this.scrollSlidingTextTabStrip.setEnabled(true);
        }
        VelocityTracker velocityTracker2 = this.velocityTracker;
        if (velocityTracker2 != null) {
            velocityTracker2.recycle();
            this.velocityTracker = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$stopScroll$50(ValueAnimator valueAnimator) {
        onTabProgress(getTabProgress());
    }

    public void disableScroll(boolean z) {
        if (z) {
            stopScroll(null);
        }
        this.disableScrolling = z;
    }

    public boolean closeActionMode() {
        return closeActionMode(true);
    }

    public boolean closeActionMode(boolean z) {
        if (!this.isActionModeShowed) {
            return false;
        }
        for (int i = 1; i >= 0; i--) {
            this.selectedFiles[i].clear();
        }
        this.cantDeleteMessagesCount = 0;
        onActionModeSelectedUpdate(this.selectedFiles[0]);
        BotPreviewsEditContainer botPreviewsEditContainer = this.botPreviewsContainer;
        if (botPreviewsEditContainer != null) {
            botPreviewsEditContainer.unselectAll();
            this.botPreviewsContainer.updateSelection(true);
        }
        showActionMode(false);
        updateRowsSelection(z);
        SavedDialogsAdapter savedDialogsAdapter = this.savedDialogsAdapter;
        if (savedDialogsAdapter != null) {
            savedDialogsAdapter.unselectAll();
        }
        return true;
    }

    public void setVisibleHeight(int i) {
        this.lastVisibleHeight = i;
        for (int i2 = 0; i2 < this.mediaPages.length; i2++) {
            float f = (-(getMeasuredHeight() - Math.max(i, AndroidUtilities.dp(this.mediaPages[i2].selectedType == 8 ? 280.0f : 120.0f)))) / 2.0f;
            this.mediaPages[i2].emptyView.setTranslationY(f);
            this.mediaPages[i2].progressView.setTranslationY(-f);
        }
        BotPreviewsEditContainer botPreviewsEditContainer = this.botPreviewsContainer;
        if (botPreviewsEditContainer != null) {
            botPreviewsEditContainer.setVisibleHeight(i);
        }
        ProfileGiftsContainer profileGiftsContainer = this.giftsContainer;
        if (profileGiftsContainer != null) {
            profileGiftsContainer.setVisibleHeight(i);
        }
    }

    public SparseArray<MessageObject> getActionModeSelected() {
        return this.selectedFiles[0];
    }

    public boolean isActionModeShown() {
        return this.isActionModeShowed;
    }

    public void showActionMode(final boolean z) {
        if (this.isActionModeShowed == z) {
            return;
        }
        this.isActionModeShowed = z;
        AnimatorSet animatorSet = this.actionModeAnimation;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        if (z) {
            this.actionModeLayout.setVisibility(0);
        }
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.actionModeAnimation = animatorSet2;
        animatorSet2.playTogether(ObjectAnimator.ofFloat(this.actionModeLayout, (Property<LinearLayout, Float>) View.ALPHA, z ? 1.0f : 0.0f));
        this.actionModeAnimation.setDuration(180L);
        this.actionModeAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.SharedMediaLayout.44
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                SharedMediaLayout.this.actionModeAnimation = null;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (SharedMediaLayout.this.actionModeAnimation == null) {
                    return;
                }
                SharedMediaLayout.this.actionModeAnimation = null;
                if (z) {
                    return;
                }
                SharedMediaLayout.this.actionModeLayout.setVisibility(4);
            }
        });
        this.actionModeAnimation.start();
        if (z) {
            updateStoriesPinButton();
        }
    }

    private void updateStoriesPinButton() {
        boolean z;
        StoriesController.StoriesList storiesList;
        if (isBot()) {
            ActionBarMenuItem actionBarMenuItem = this.pinItem;
            if (actionBarMenuItem != null) {
                actionBarMenuItem.setVisibility(8);
            }
            ActionBarMenuItem actionBarMenuItem2 = this.unpinItem;
            if (actionBarMenuItem2 != null) {
                actionBarMenuItem2.setVisibility(8);
                return;
            }
            return;
        }
        if (getClosestTab() == 9) {
            ActionBarMenuItem actionBarMenuItem3 = this.pinItem;
            if (actionBarMenuItem3 != null) {
                actionBarMenuItem3.setVisibility(8);
            }
            ActionBarMenuItem actionBarMenuItem4 = this.unpinItem;
            if (actionBarMenuItem4 != null) {
                actionBarMenuItem4.setVisibility(8);
                return;
            }
            return;
        }
        if (getClosestTab() == 8) {
            int i = 0;
            while (true) {
                if (i >= this.selectedFiles[0].size()) {
                    z = false;
                    break;
                }
                MessageObject messageObjectValueAt = this.selectedFiles[0].valueAt(i);
                StoriesAdapter storiesAdapter = this.storiesAdapter;
                if (storiesAdapter != null && (storiesList = storiesAdapter.storiesList) != null && !storiesList.isPinned(messageObjectValueAt.getId())) {
                    z = true;
                    break;
                }
                i++;
            }
            ActionBarMenuItem actionBarMenuItem5 = this.pinItem;
            if (actionBarMenuItem5 != null) {
                actionBarMenuItem5.setVisibility(z ? 0 : 8);
            }
            ActionBarMenuItem actionBarMenuItem6 = this.unpinItem;
            if (actionBarMenuItem6 != null) {
                actionBarMenuItem6.setVisibility(z ? 8 : 0);
                return;
            }
            return;
        }
        if (isStoryAlbumPageType(getClosestTab())) {
            ActionBarMenuItem actionBarMenuItem7 = this.pinItem;
            if (actionBarMenuItem7 != null) {
                actionBarMenuItem7.setVisibility(8);
            }
            ActionBarMenuItem actionBarMenuItem8 = this.unpinItem;
            if (actionBarMenuItem8 != null) {
                actionBarMenuItem8.setVisibility(8);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:128:0x02b7  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x03a7  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x03c9  */
    /* JADX WARN: Removed duplicated region for block: B:284:0x04b6  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:476:0x04dc A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x020e  */
    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        RecyclerView.Adapter adapter;
        int i3;
        int size;
        int i4;
        boolean z;
        RecyclerView.Adapter adapter2;
        int i5;
        RecyclerView.Adapter adapter3;
        int itemCount;
        SharedMediaData sharedMediaData;
        SharedMediaData sharedMediaData2;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        if (i == NotificationCenter.mediaDidLoad) {
            long jLongValue = ((Long) objArr[0]).longValue();
            int iIntValue = ((Integer) objArr[3]).intValue();
            int iIntValue2 = ((Integer) objArr[7]).intValue();
            int iIntValue3 = ((Integer) objArr[4]).intValue();
            boolean zBooleanValue = ((Boolean) objArr[6]).booleanValue();
            if (iIntValue3 == 6 || iIntValue3 == 7) {
                iIntValue3 = 0;
            }
            if (iIntValue == this.profileActivity.getClassGuid() && iIntValue2 == this.sharedMediaData[iIntValue3].requestIndex) {
                ArrayList arrayList = (ArrayList) objArr[2];
                boolean zIsEncryptedDialog = DialogObject.isEncryptedDialog(this.dialog_id);
                int i11 = jLongValue == this.dialog_id ? 0 : 1;
                if (iIntValue3 != 0 && iIntValue3 != 1 && iIntValue3 != 2 && iIntValue3 != 4) {
                    this.sharedMediaData[iIntValue3].setTotalCount(i11, ((Integer) objArr[1]).intValue());
                }
                if (iIntValue3 == 0) {
                    adapter3 = this.photoVideoAdapter;
                } else if (iIntValue3 == 1) {
                    adapter3 = this.documentsAdapter;
                } else if (iIntValue3 == 2) {
                    adapter3 = this.voiceAdapter;
                } else if (iIntValue3 == 3) {
                    adapter3 = this.linksAdapter;
                } else if (iIntValue3 == 4) {
                    adapter3 = this.audioAdapter;
                } else if (iIntValue3 == 5) {
                    adapter3 = this.gifAdapter;
                } else if (iIntValue3 == 15) {
                    adapter3 = this.pollAdapter;
                    iIntValue3 = 8;
                } else {
                    i5 = iIntValue3;
                    adapter3 = null;
                    int size2 = this.sharedMediaData[i5].messages.size();
                    if (adapter3 == null) {
                        itemCount = adapter3.getItemCount();
                        if (adapter3 instanceof RecyclerListView.SectionsAdapter) {
                            ((RecyclerListView.SectionsAdapter) adapter3).notifySectionsChanged();
                        }
                    } else {
                        itemCount = 0;
                    }
                    this.sharedMediaData[i5].loading = false;
                    SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
                    if (!zBooleanValue) {
                        int size3 = arrayList.size() - 1;
                        while (size3 >= 0) {
                            ArrayList arrayList2 = arrayList;
                            MessageObject messageObject = (MessageObject) arrayList2.get(size3);
                            if (this.sharedMediaData[i5].addMessage(messageObject, i11, true, zIsEncryptedDialog)) {
                                sparseBooleanArray.put(messageObject.getId(), true);
                                this.sharedMediaData[i5].startOffset--;
                                if (this.sharedMediaData[i5].startOffset < 0) {
                                    this.sharedMediaData[i5].startOffset = 0;
                                }
                            }
                            size3--;
                            arrayList = arrayList2;
                        }
                        this.sharedMediaData[i5].startReached = ((Boolean) objArr[5]).booleanValue();
                        SharedMediaData sharedMediaData3 = this.sharedMediaData[i5];
                        if (sharedMediaData3.startReached) {
                            sharedMediaData3.startOffset = 0;
                        }
                    } else {
                        for (int i12 = 0; i12 < arrayList.size(); i12++) {
                            MessageObject messageObject2 = (MessageObject) arrayList.get(i12);
                            if (this.sharedMediaData[i5].addMessage(messageObject2, i11, false, zIsEncryptedDialog)) {
                                sparseBooleanArray.put(messageObject2.getId(), true);
                                this.sharedMediaData[i5].endLoadingStubs--;
                                if (this.sharedMediaData[i5].endLoadingStubs < 0) {
                                    this.sharedMediaData[i5].endLoadingStubs = 0;
                                }
                            }
                        }
                        SharedMediaData sharedMediaData4 = this.sharedMediaData[i5];
                        if (sharedMediaData4.loadingAfterFastScroll && sharedMediaData4.messages.size() > 0) {
                            SharedMediaData sharedMediaData5 = this.sharedMediaData[i5];
                            sharedMediaData5.min_id = sharedMediaData5.messages.get(0).getId();
                        }
                        this.sharedMediaData[i5].endReached[i11] = ((Boolean) objArr[5]).booleanValue();
                        SharedMediaData sharedMediaData6 = this.sharedMediaData[i5];
                        if (sharedMediaData6.endReached[i11]) {
                            int size4 = sharedMediaData6.messagesDict[i11].size();
                            if (i11 == 0) {
                                size4 += this.sharedMediaData[i5].startOffset;
                            }
                            this.sharedMediaData[i5].setTotalCount(i11, size4);
                        }
                    }
                    if (!zBooleanValue && i11 == 0) {
                        sharedMediaData2 = this.sharedMediaData[i5];
                        if (sharedMediaData2.endReached[i11] && this.mergeDialogId != 0) {
                            sharedMediaData2.loading = true;
                            this.profileActivity.getMediaDataController().loadMedia(this.mergeDialogId, 50, this.sharedMediaData[i5].max_id[1], 0, i5, this.topicId, 1, this.profileActivity.getClassGuid(), this.sharedMediaData[i5].requestIndex, null, null);
                        }
                    }
                    int i13 = i5;
                    if (adapter3 != null) {
                        int i14 = 0;
                        InternalListView internalListView = null;
                        while (true) {
                            MediaPage[] mediaPageArr = this.mediaPages;
                            if (i14 >= mediaPageArr.length) {
                                break;
                            }
                            MediaPage mediaPage = mediaPageArr[i14];
                            if (mediaPage != null && mediaPage.listView != null && this.mediaPages[i14].listView.getAdapter() == adapter3) {
                                internalListView = this.mediaPages[i14].listView;
                                this.mediaPages[i14].listView.stopScroll();
                            }
                            i14++;
                        }
                        int itemCount2 = adapter3.getItemCount();
                        SharedPhotoVideoAdapter sharedPhotoVideoAdapter = this.photoVideoAdapter;
                        if (adapter3 == sharedPhotoVideoAdapter) {
                            if (sharedPhotoVideoAdapter.getItemCount() == itemCount) {
                                AndroidUtilities.updateVisibleRows(internalListView);
                            } else {
                                this.photoVideoAdapter.notifyDataSetChanged();
                            }
                        } else {
                            try {
                                adapter3.notifyDataSetChanged();
                            } catch (Throwable unused) {
                            }
                        }
                        if (!this.sharedMediaData[i13].messages.isEmpty() || this.sharedMediaData[i13].loading) {
                            if (internalListView != null && (adapter3 == this.photoVideoAdapter || itemCount2 >= itemCount)) {
                                animateItemsEnter(internalListView, itemCount, sparseBooleanArray);
                            }
                        } else if (internalListView != null) {
                            animateItemsEnter(internalListView, itemCount, sparseBooleanArray);
                        }
                        if (internalListView != null && !this.sharedMediaData[i13].loadingAfterFastScroll) {
                            if (size2 == 0) {
                                for (int i15 = 0; i15 < 2; i15++) {
                                    if (this.mediaPages[i15].selectedType == 0) {
                                        ((LinearLayoutManager) internalListView.getLayoutManager()).scrollToPositionWithOffset(this.photoVideoAdapter.getPositionForIndex(0), 0);
                                    }
                                }
                            } else {
                                saveScrollPosition();
                            }
                        }
                    }
                    sharedMediaData = this.sharedMediaData[i13];
                    if (sharedMediaData.loadingAfterFastScroll) {
                        if (sharedMediaData.messages.size() == 0) {
                            loadFromStart(i13);
                        } else {
                            this.sharedMediaData[i13].loadingAfterFastScroll = false;
                        }
                    }
                    this.scrolling = true;
                    return;
                }
                i5 = iIntValue3;
                int size22 = this.sharedMediaData[i5].messages.size();
                if (adapter3 == null) {
                }
                this.sharedMediaData[i5].loading = false;
                SparseBooleanArray sparseBooleanArray2 = new SparseBooleanArray();
                if (!zBooleanValue) {
                }
                if (!zBooleanValue) {
                    sharedMediaData2 = this.sharedMediaData[i5];
                    if (sharedMediaData2.endReached[i11]) {
                        sharedMediaData2.loading = true;
                        this.profileActivity.getMediaDataController().loadMedia(this.mergeDialogId, 50, this.sharedMediaData[i5].max_id[1], 0, i5, this.topicId, 1, this.profileActivity.getClassGuid(), this.sharedMediaData[i5].requestIndex, null, null);
                    }
                }
                int i132 = i5;
                if (adapter3 != null) {
                }
                sharedMediaData = this.sharedMediaData[i132];
                if (sharedMediaData.loadingAfterFastScroll) {
                }
                this.scrolling = true;
                return;
            }
            if (this.sharedMediaPreloader == null || !this.sharedMediaData[iIntValue3].messages.isEmpty() || this.sharedMediaData[iIntValue3].loadingAfterFastScroll || !fillMediaData(iIntValue3)) {
                return;
            }
            if (iIntValue3 == 0) {
                adapter2 = this.photoVideoAdapter;
            } else if (iIntValue3 == 1) {
                adapter2 = this.documentsAdapter;
            } else if (iIntValue3 == 2) {
                adapter2 = this.voiceAdapter;
            } else if (iIntValue3 == 3) {
                adapter2 = this.linksAdapter;
            } else if (iIntValue3 == 4) {
                adapter2 = this.audioAdapter;
            } else if (iIntValue3 == 5) {
                adapter2 = this.gifAdapter;
            } else {
                adapter2 = iIntValue3 == 15 ? this.pollAdapter : null;
            }
            if (adapter2 != null) {
                while (true) {
                    MediaPage[] mediaPageArr2 = this.mediaPages;
                    if (i7 >= mediaPageArr2.length) {
                        break;
                    }
                    MediaPage mediaPage2 = mediaPageArr2[i7];
                    if (mediaPage2 != null && mediaPage2.listView != null && this.mediaPages[i7].listView.getAdapter() == adapter2) {
                        this.mediaPages[i7].listView.stopScroll();
                    }
                    i7++;
                }
                adapter2.notifyDataSetChanged();
            }
            this.scrolling = true;
            return;
        }
        int i16 = -1;
        if (i == NotificationCenter.messagesDeleted) {
            if (((Boolean) objArr[2]).booleanValue()) {
                return;
            }
            TLRPC.Chat chat = DialogObject.isChatDialog(this.dialog_id) ? this.profileActivity.getMessagesController().getChat(Long.valueOf(-this.dialog_id)) : null;
            long jLongValue2 = ((Long) objArr[1]).longValue();
            if (ChatObject.isChannel(chat)) {
                if (jLongValue2 == 0 && this.mergeDialogId != 0) {
                    i3 = 1;
                    ArrayList arrayList3 = (ArrayList) objArr[0];
                    size = arrayList3.size();
                    i4 = 0;
                    z = false;
                    while (i4 < size) {
                        int i17 = 0;
                        boolean z2 = z;
                        while (true) {
                            SharedMediaData[] sharedMediaDataArr = this.sharedMediaData;
                            if (i17 < sharedMediaDataArr.length) {
                                if (sharedMediaDataArr[i17].deleteMessage(((Integer) arrayList3.get(i4)).intValue(), i3) != null) {
                                    i16 = i17;
                                    z2 = true;
                                }
                                i17++;
                                z2 = z2;
                            }
                        }
                        i4++;
                        z = z2;
                    }
                    if (z) {
                        this.scrolling = true;
                        SharedPhotoVideoAdapter sharedPhotoVideoAdapter2 = this.photoVideoAdapter;
                        if (sharedPhotoVideoAdapter2 != null) {
                            sharedPhotoVideoAdapter2.notifyDataSetChanged();
                        }
                        SharedDocumentsAdapter sharedDocumentsAdapter = this.documentsAdapter;
                        if (sharedDocumentsAdapter != null) {
                            sharedDocumentsAdapter.notifyDataSetChanged();
                        }
                        SharedDocumentsAdapter sharedDocumentsAdapter2 = this.voiceAdapter;
                        if (sharedDocumentsAdapter2 != null) {
                            sharedDocumentsAdapter2.notifyDataSetChanged();
                        }
                        SharedLinksAdapter sharedLinksAdapter = this.linksAdapter;
                        if (sharedLinksAdapter != null) {
                            sharedLinksAdapter.notifyDataSetChanged();
                        }
                        SharedDocumentsAdapter sharedDocumentsAdapter3 = this.audioAdapter;
                        if (sharedDocumentsAdapter3 != null) {
                            sharedDocumentsAdapter3.notifyDataSetChanged();
                        }
                        PollAdapter pollAdapter = this.pollAdapter;
                        if (pollAdapter != null) {
                            pollAdapter.notifyDataSetChanged();
                        }
                        GifAdapter gifAdapter = this.gifAdapter;
                        if (gifAdapter != null) {
                            gifAdapter.notifyDataSetChanged();
                        }
                        if (i16 == 0 || i16 == 1 || i16 == 2 || i16 == 4) {
                            loadFastScrollData(true);
                        }
                    }
                    getMediaPage(i16);
                    return;
                }
                if (jLongValue2 != chat.id) {
                    return;
                }
            } else if (jLongValue2 != 0) {
                return;
            }
            i3 = 0;
            ArrayList arrayList32 = (ArrayList) objArr[0];
            size = arrayList32.size();
            i4 = 0;
            z = false;
            while (i4 < size) {
            }
            if (z) {
            }
            getMediaPage(i16);
            return;
        }
        if (i == NotificationCenter.didReceiveNewMessages) {
            if (((Boolean) objArr[2]).booleanValue()) {
                return;
            }
            long jLongValue3 = ((Long) objArr[0]).longValue();
            long j = this.dialog_id;
            if (jLongValue3 != j) {
                return;
            }
            ArrayList arrayList4 = (ArrayList) objArr[1];
            boolean zIsEncryptedDialog2 = DialogObject.isEncryptedDialog(j);
            int i18 = 0;
            boolean z3 = false;
            while (i18 < arrayList4.size()) {
                MessageObject messageObject3 = (MessageObject) arrayList4.get(i18);
                if (MessageObject.getMedia(messageObject3.messageOwner) != null && !messageObject3.needDrawBluredPreview()) {
                    int mediaType = MediaDataController.getMediaType(messageObject3.messageOwner);
                    if (mediaType == i16) {
                        return;
                    }
                    SharedMediaData sharedMediaData7 = this.sharedMediaData[mediaType];
                    if (sharedMediaData7.startReached) {
                        if (sharedMediaData7.addMessage(messageObject3, messageObject3.getDialogId() == this.dialog_id ? 0 : 1, true, zIsEncryptedDialog2)) {
                            this.hasMedia[mediaType] = 1;
                            z3 = true;
                        }
                    }
                }
                i18++;
                i16 = -1;
                z3 = z3;
            }
            if (!z3) {
                return;
            }
            this.scrolling = true;
            while (true) {
                MediaPage[] mediaPageArr3 = this.mediaPages;
                if (i8 < mediaPageArr3.length) {
                    int i19 = mediaPageArr3[i8].selectedType;
                    if (i19 == 0) {
                        adapter = this.photoVideoAdapter;
                    } else if (i19 == 1) {
                        adapter = this.documentsAdapter;
                    } else if (i19 == 2) {
                        adapter = this.voiceAdapter;
                    } else if (i19 == 3) {
                        adapter = this.linksAdapter;
                    } else if (i19 == 4) {
                        adapter = this.audioAdapter;
                    } else if (i19 == 5) {
                        adapter = this.gifAdapter;
                        if (adapter != null) {
                            adapter.getItemCount();
                            this.photoVideoAdapter.notifyDataSetChanged();
                            this.documentsAdapter.notifyDataSetChanged();
                            this.voiceAdapter.notifyDataSetChanged();
                            this.linksAdapter.notifyDataSetChanged();
                            this.audioAdapter.notifyDataSetChanged();
                            this.pollAdapter.notifyDataSetChanged();
                            this.gifAdapter.notifyDataSetChanged();
                        }
                        i8++;
                    } else {
                        adapter = i19 == 15 ? this.pollAdapter : null;
                        if (adapter != null) {
                        }
                        i8++;
                    }
                    if (adapter != null) {
                    }
                    i8++;
                } else {
                    updateTabs(true);
                    return;
                }
            }
        } else if (i == NotificationCenter.messageReceivedByServer) {
            if (((Boolean) objArr[6]).booleanValue()) {
                return;
            }
            Integer num = (Integer) objArr[0];
            Integer num2 = (Integer) objArr[1];
            Long l = (Long) objArr[3];
            if (l.longValue() != this.dialog_id && l.longValue() != this.mergeDialogId) {
                return;
            }
            int i20 = l.longValue() == this.dialog_id ? 0 : 1;
            while (true) {
                SharedMediaData[] sharedMediaDataArr2 = this.sharedMediaData;
                if (i9 >= sharedMediaDataArr2.length) {
                    return;
                }
                sharedMediaDataArr2[i9].replaceMid(i20, num.intValue(), num2.intValue());
                i9++;
            }
        } else if (i == NotificationCenter.messagePlayingDidStart || i == NotificationCenter.messagePlayingPlayStateChanged || i == NotificationCenter.messagePlayingDidReset) {
            if (i == NotificationCenter.messagePlayingDidReset || i == NotificationCenter.messagePlayingPlayStateChanged) {
                int i21 = 0;
                while (true) {
                    MediaPage[] mediaPageArr4 = this.mediaPages;
                    if (i21 >= mediaPageArr4.length) {
                        return;
                    }
                    MediaPage mediaPage3 = mediaPageArr4[i21];
                    if (mediaPage3 != null && mediaPage3.listView != null) {
                        int childCount = this.mediaPages[i21].listView.getChildCount();
                        for (int i22 = 0; i22 < childCount; i22++) {
                            View childAt = this.mediaPages[i21].listView.getChildAt(i22);
                            if (childAt instanceof SharedAudioCell) {
                                SharedAudioCell sharedAudioCell = (SharedAudioCell) childAt;
                                if (sharedAudioCell.getMessage() != null) {
                                    sharedAudioCell.updateButtonState(false, true);
                                }
                            }
                        }
                    }
                    i21++;
                }
            } else {
                if (((MessageObject) objArr[0]).eventId != 0) {
                    return;
                }
                int i23 = 0;
                while (true) {
                    MediaPage[] mediaPageArr5 = this.mediaPages;
                    if (i23 >= mediaPageArr5.length) {
                        return;
                    }
                    int childCount2 = mediaPageArr5[i23].listView.getChildCount();
                    for (int i24 = 0; i24 < childCount2; i24++) {
                        View childAt2 = this.mediaPages[i23].listView.getChildAt(i24);
                        if (childAt2 instanceof SharedAudioCell) {
                            SharedAudioCell sharedAudioCell2 = (SharedAudioCell) childAt2;
                            if (sharedAudioCell2.getMessage() != null) {
                                sharedAudioCell2.updateButtonState(false, true);
                            }
                        }
                    }
                    i23++;
                }
            }
        } else {
            if (i == NotificationCenter.storiesListUpdated) {
                StoriesController.StoriesList storiesList = (StoriesController.StoriesList) objArr[0];
                MediaPage mediaPage4 = getMediaPage(storyAlbums_getTabTypeByStoriesList(storiesList));
                if (mediaPage4 != null) {
                    if (mediaPage4.fastScrollEnabled != (storiesList.getCount() > 0)) {
                        mediaPage4.fastScrollEnabled = storiesList.getCount() > 0;
                        updateFastScrollVisibility(mediaPage4, true);
                    }
                }
                if (mediaPage4 != null) {
                    AndroidUtilities.notifyDataSetChanged(mediaPage4.listView);
                    if (mediaPage4.listView.getLayoutManager() instanceof LinearLayoutManager) {
                        checkLoadMoreScroll(mediaPage4, mediaPage4.listView, (LinearLayoutManager) mediaPage4.listView.getLayoutManager());
                    }
                }
                Delegate delegate = this.delegate;
                if (delegate != null) {
                    delegate.updateSelectedMediaTabText();
                    return;
                }
                return;
            }
            if (i == NotificationCenter.storiesUpdated) {
                for (MediaPage mediaPage5 : this.mediaPages) {
                    if (mediaPage5 != null && mediaPage5.listView != null && isAnyStoryPageType(mediaPage5.selectedType)) {
                        if (isBot() && mediaPage5.listView.getAdapter() != null) {
                            AndroidUtilities.notifyDataSetChanged(mediaPage5.listView);
                        } else {
                            for (int i25 = 0; i25 < mediaPage5.listView.getChildCount(); i25++) {
                                View childAt3 = mediaPage5.listView.getChildAt(i25);
                                if (childAt3 instanceof SharedPhotoVideoCell2) {
                                    ((SharedPhotoVideoCell2) childAt3).updateViews();
                                }
                            }
                        }
                    }
                }
                return;
            }
            if (i == NotificationCenter.channelRecommendationsLoaded) {
                if (((Long) objArr[0]).longValue() == this.dialog_id) {
                    this.channelRecommendationsAdapter.update(true);
                    updateTabs(true);
                    checkCurrentTabValid();
                    return;
                }
                return;
            }
            if (i == NotificationCenter.savedMessagesDialogsUpdate) {
                long j2 = this.dialog_id;
                if (j2 == 0 || j2 == this.profileActivity.getUserConfig().getClientUserId()) {
                    this.savedDialogsAdapter.update(true);
                    updateTabs(true);
                    checkCurrentTabValid();
                    onSelectedTabChanged();
                    return;
                }
                return;
            }
            if (i == NotificationCenter.dialogsNeedReload) {
                this.savedDialogsAdapter.update(true);
                return;
            }
            if (i == NotificationCenter.starUserGiftsLoaded) {
                if (((Long) objArr[0]).longValue() == this.dialog_id) {
                    updateTabs(true);
                    return;
                }
                return;
            }
            if (i == NotificationCenter.updatedChatRanks) {
                long jLongValue4 = ((Long) objArr[0]).longValue();
                long jLongValue5 = ((Long) objArr[1]).longValue();
                if (this.dialog_id != (-jLongValue4)) {
                    return;
                }
                String str = (String) objArr[2];
                ChatUsersAdapter chatUsersAdapter = this.chatUsersAdapter;
                if (chatUsersAdapter == null) {
                    return;
                }
                chatUsersAdapter.updateRank(jLongValue5, str);
                while (true) {
                    MediaPage[] mediaPageArr6 = this.mediaPages;
                    if (i10 >= mediaPageArr6.length) {
                        return;
                    }
                    MediaPage mediaPage6 = mediaPageArr6[i10];
                    if (mediaPage6.selectedType == 7) {
                        AndroidUtilities.updateVisibleRows(mediaPage6.listView);
                    }
                    i10++;
                }
            } else {
                if (i != NotificationCenter.didUpdatePollResults) {
                    return;
                }
                long jLongValue6 = ((Long) objArr[0]).longValue();
                TLRPC.TL_poll tL_poll = (TLRPC.TL_poll) objArr[1];
                TLRPC.PollResults pollResults = (TLRPC.PollResults) objArr[2];
                while (true) {
                    MediaPage[] mediaPageArr7 = this.mediaPages;
                    if (i6 >= mediaPageArr7.length) {
                        return;
                    }
                    RecyclerView.Adapter adapter4 = mediaPageArr7[i6].listView.getAdapter();
                    PollAdapter pollAdapter2 = this.pollAdapter;
                    if (adapter4 == pollAdapter2) {
                        pollAdapter2.update(this.mediaPages[i6].listView, jLongValue6, tL_poll, pollResults);
                    }
                    i6++;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveScrollPosition() {
        int i;
        int i2 = 0;
        while (true) {
            MediaPage[] mediaPageArr = this.mediaPages;
            if (i2 >= mediaPageArr.length) {
                return;
            }
            InternalListView internalListView = mediaPageArr[i2].listView;
            if (internalListView != null) {
                int id = 0;
                int top = 0;
                for (int i3 = 0; i3 < internalListView.getChildCount(); i3++) {
                    View childAt = internalListView.getChildAt(i3);
                    if (childAt instanceof SharedPhotoVideoCell2) {
                        SharedPhotoVideoCell2 sharedPhotoVideoCell2 = (SharedPhotoVideoCell2) childAt;
                        int messageId = sharedPhotoVideoCell2.getMessageId();
                        top = sharedPhotoVideoCell2.getTop();
                        id = messageId;
                    }
                    if (childAt instanceof SharedDocumentCell) {
                        SharedDocumentCell sharedDocumentCell = (SharedDocumentCell) childAt;
                        int id2 = sharedDocumentCell.getMessage().getId();
                        top = sharedDocumentCell.getTop();
                        id = id2;
                    }
                    if (childAt instanceof SharedAudioCell) {
                        SharedAudioCell sharedAudioCell = (SharedAudioCell) childAt;
                        id = sharedAudioCell.getMessage().getId();
                        top = sharedAudioCell.getTop();
                    }
                    if (id != 0) {
                        break;
                    }
                }
                if (id != 0) {
                    int i4 = this.mediaPages[i2].selectedType;
                    int i5 = -1;
                    if (isAnyStoryPageType(i4)) {
                        StoriesAdapter storiesAdapterStoryAlbums_getStoriesAdapterByTabType = storyAlbums_getStoriesAdapterByTabType(i4);
                        if (storiesAdapterStoryAlbums_getStoriesAdapterByTabType != null && storiesAdapterStoryAlbums_getStoriesAdapterByTabType.storiesList != null) {
                            int i6 = 0;
                            while (true) {
                                if (i6 >= storiesAdapterStoryAlbums_getStoriesAdapterByTabType.storiesList.messageObjects.size()) {
                                    break;
                                }
                                if (id == storiesAdapterStoryAlbums_getStoriesAdapterByTabType.storiesList.messageObjects.get(i6).getId()) {
                                    i5 = i6;
                                    break;
                                }
                                i6++;
                            }
                        }
                        i = i5;
                    } else if (i4 >= 0 && i4 < this.sharedMediaData.length) {
                        int i7 = 0;
                        while (true) {
                            if (i7 >= this.sharedMediaData[i4].messages.size()) {
                                break;
                            }
                            if (id == this.sharedMediaData[i4].messages.get(i7).getId()) {
                                i5 = i7;
                                break;
                            }
                            i7++;
                        }
                        i = this.sharedMediaData[i4].startOffset + i5;
                    }
                    if (i5 >= 0) {
                        ((LinearLayoutManager) internalListView.getLayoutManager()).scrollToPositionWithOffset(i, (-this.mediaPages[i2].listView.getPaddingTop()) + top);
                        if (this.photoVideoChangeColumnsAnimation) {
                            this.mediaPages[i2].animationSupportingLayoutManager.scrollToPositionWithOffset(i, (-this.mediaPages[i2].listView.getPaddingTop()) + top);
                        }
                    }
                }
            }
            i2++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void animateItemsEnter(RecyclerListView recyclerListView, int i, SparseBooleanArray sparseBooleanArray) {
        int childCount = recyclerListView.getChildCount();
        View view = null;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = recyclerListView.getChildAt(i2);
            if (childAt instanceof FlickerLoadingView) {
                view = childAt;
            }
        }
        if (view != null) {
            recyclerListView.removeView(view);
        }
        getViewTreeObserver().addOnPreDrawListener(new AnonymousClass45(recyclerListView, sparseBooleanArray, view, i));
    }

    /* JADX INFO: renamed from: org.telegram.ui.Components.SharedMediaLayout$45, reason: invalid class name */
    public class AnonymousClass45 implements ViewTreeObserver.OnPreDrawListener {
        final /* synthetic */ SparseBooleanArray val$addedMesages;
        final /* synthetic */ RecyclerListView val$finalListView;
        final /* synthetic */ View val$finalProgressView;
        final /* synthetic */ int val$oldItemCount;

        public AnonymousClass45(RecyclerListView recyclerListView, SparseBooleanArray sparseBooleanArray, View view, int i) {
            this.val$finalListView = recyclerListView;
            this.val$addedMesages = sparseBooleanArray;
            this.val$finalProgressView = view;
            this.val$oldItemCount = i;
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            SharedMediaLayout.this.getViewTreeObserver().removeOnPreDrawListener(this);
            RecyclerView.Adapter adapter = this.val$finalListView.getAdapter();
            if (adapter == SharedMediaLayout.this.photoVideoAdapter || adapter == SharedMediaLayout.this.documentsAdapter || adapter == SharedMediaLayout.this.audioAdapter || adapter == SharedMediaLayout.this.voiceAdapter) {
                if (this.val$addedMesages != null) {
                    int childCount = this.val$finalListView.getChildCount();
                    for (int i = 0; i < childCount; i++) {
                        final int messageId = SharedMediaLayout.getMessageId(this.val$finalListView.getChildAt(i));
                        if (messageId != 0 && this.val$addedMesages.get(messageId, false)) {
                            SharedMediaLayout.this.messageAlphaEnter.put(messageId, Float.valueOf(0.0f));
                            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                            final RecyclerListView recyclerListView = this.val$finalListView;
                            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.SharedMediaLayout$45$$ExternalSyntheticLambda0
                                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                    this.f$0.lambda$onPreDraw$0(messageId, recyclerListView, valueAnimator);
                                }
                            });
                            valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.SharedMediaLayout.45.1
                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                public void onAnimationEnd(Animator animator) {
                                    SharedMediaLayout.this.messageAlphaEnter.remove(messageId);
                                    AnonymousClass45.this.val$finalListView.invalidate();
                                }
                            });
                            valueAnimatorOfFloat.setStartDelay((int) ((Math.min(this.val$finalListView.getMeasuredHeight(), Math.max(0, r7.getTop())) / this.val$finalListView.getMeasuredHeight()) * 100.0f));
                            valueAnimatorOfFloat.setDuration(250L);
                            final RecyclerListView recyclerListView2 = this.val$finalListView;
                            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.SharedMediaLayout$45$$ExternalSyntheticLambda1
                                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                    SharedMediaLayout.AnonymousClass45.m14623$r8$lambda$h78GCnjdnV3MccEuarhmHPUoP4(recyclerListView2, valueAnimator);
                                }
                            });
                            valueAnimatorOfFloat.start();
                        }
                        this.val$finalListView.invalidate();
                    }
                }
            } else {
                int childCount2 = this.val$finalListView.getChildCount();
                AnimatorSet animatorSet = new AnimatorSet();
                for (int i2 = 0; i2 < childCount2; i2++) {
                    View childAt = this.val$finalListView.getChildAt(i2);
                    if (childAt != this.val$finalProgressView && this.val$finalListView.getChildAdapterPosition(childAt) >= this.val$oldItemCount - 1) {
                        childAt.setAlpha(0.0f);
                        int iMin = (int) ((Math.min(this.val$finalListView.getMeasuredHeight(), Math.max(0, childAt.getTop())) / this.val$finalListView.getMeasuredHeight()) * 100.0f);
                        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(childAt, (Property<View, Float>) View.ALPHA, 0.0f, 1.0f);
                        objectAnimatorOfFloat.setStartDelay(iMin);
                        objectAnimatorOfFloat.setDuration(200L);
                        final RecyclerListView recyclerListView3 = this.val$finalListView;
                        objectAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.SharedMediaLayout$45$$ExternalSyntheticLambda2
                            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                SharedMediaLayout.AnonymousClass45.$r8$lambda$9HP2m9yoRyge3uwExQb29jZ24es(recyclerListView3, valueAnimator);
                            }
                        });
                        animatorSet.playTogether(objectAnimatorOfFloat);
                    }
                    View view = this.val$finalProgressView;
                    if (view != null && view.getParent() == null) {
                        this.val$finalListView.addView(this.val$finalProgressView);
                        final RecyclerView.LayoutManager layoutManager = this.val$finalListView.getLayoutManager();
                        if (layoutManager != null) {
                            layoutManager.ignoreView(this.val$finalProgressView);
                            View view2 = this.val$finalProgressView;
                            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.ALPHA, view2.getAlpha(), 0.0f);
                            objectAnimatorOfFloat2.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.SharedMediaLayout.45.2
                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                public void onAnimationEnd(Animator animator) {
                                    AnonymousClass45.this.val$finalProgressView.setAlpha(1.0f);
                                    layoutManager.stopIgnoringView(AnonymousClass45.this.val$finalProgressView);
                                    AnonymousClass45 anonymousClass45 = AnonymousClass45.this;
                                    anonymousClass45.val$finalListView.removeView(anonymousClass45.val$finalProgressView);
                                }
                            });
                            final RecyclerListView recyclerListView4 = this.val$finalListView;
                            objectAnimatorOfFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.SharedMediaLayout$45$$ExternalSyntheticLambda3
                                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                    SharedMediaLayout.AnonymousClass45.m14622$r8$lambda$Y677mWGxnnRjtWwoEbZ6XmyO2U(recyclerListView4, valueAnimator);
                                }
                            });
                            objectAnimatorOfFloat2.start();
                        }
                    }
                }
                animatorSet.start();
            }
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onPreDraw$0(int i, RecyclerListView recyclerListView, ValueAnimator valueAnimator) {
            SharedMediaLayout.this.messageAlphaEnter.put(i, (Float) valueAnimator.getAnimatedValue());
            recyclerListView.invalidate();
        }

        /* JADX INFO: renamed from: $r8$lambda$h78GCnjdnV3Mc-cEuarhmHPUoP4, reason: not valid java name */
        public static /* synthetic */ void m14623$r8$lambda$h78GCnjdnV3MccEuarhmHPUoP4(RecyclerListView recyclerListView, ValueAnimator valueAnimator) {
            if (recyclerListView.hasSections()) {
                recyclerListView.invalidate();
            }
        }

        public static /* synthetic */ void $r8$lambda$9HP2m9yoRyge3uwExQb29jZ24es(RecyclerListView recyclerListView, ValueAnimator valueAnimator) {
            if (recyclerListView.hasSections()) {
                recyclerListView.invalidate();
            }
        }

        /* JADX INFO: renamed from: $r8$lambda$Y67-7mWGxnnRjtWwoEbZ6XmyO2U, reason: not valid java name */
        public static /* synthetic */ void m14622$r8$lambda$Y677mWGxnnRjtWwoEbZ6XmyO2U(RecyclerListView recyclerListView, ValueAnimator valueAnimator) {
            if (recyclerListView.hasSections()) {
                recyclerListView.invalidate();
            }
        }
    }

    public void onResume() {
        this.scrolling = true;
        SharedPhotoVideoAdapter sharedPhotoVideoAdapter = this.photoVideoAdapter;
        if (sharedPhotoVideoAdapter != null) {
            sharedPhotoVideoAdapter.notifyDataSetChanged();
        }
        SharedDocumentsAdapter sharedDocumentsAdapter = this.documentsAdapter;
        if (sharedDocumentsAdapter != null) {
            sharedDocumentsAdapter.notifyDataSetChanged();
        }
        SharedLinksAdapter sharedLinksAdapter = this.linksAdapter;
        if (sharedLinksAdapter != null) {
            sharedLinksAdapter.notifyDataSetChanged();
        }
        for (int i = 0; i < this.mediaPages.length; i++) {
            fixLayoutInternal(i);
        }
        ChatActivityContainer chatActivityContainer = this.savedMessagesContainer;
        if (chatActivityContainer != null) {
            chatActivityContainer.onResume();
        }
    }

    public void onPause() {
        ChatActivityContainer chatActivityContainer = this.savedMessagesContainer;
        if (chatActivityContainer != null) {
            chatActivityContainer.onPause();
        }
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        final int i = 0;
        while (true) {
            MediaPage[] mediaPageArr = this.mediaPages;
            if (i >= mediaPageArr.length) {
                return;
            }
            if (mediaPageArr[i].listView != null) {
                this.mediaPages[i].listView.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: org.telegram.ui.Components.SharedMediaLayout.46
                    @Override // android.view.ViewTreeObserver.OnPreDrawListener
                    public boolean onPreDraw() {
                        SharedMediaLayout.this.mediaPages[i].getViewTreeObserver().removeOnPreDrawListener(this);
                        SharedMediaLayout.this.fixLayoutInternal(i);
                        return true;
                    }
                });
            }
            i++;
        }
    }

    public void setChatInfo(TLRPC.ChatFull chatFull) {
        TLRPC.ChatFull chatFull2 = this.info;
        boolean z = chatFull2 != null && chatFull2.stories_pinned_available;
        this.info = chatFull;
        if (chatFull != null) {
            long j = chatFull.migrated_from_chat_id;
            if (j != 0 && this.mergeDialogId == 0) {
                this.mergeDialogId = -j;
                int i = 0;
                while (true) {
                    SharedMediaData[] sharedMediaDataArr = this.sharedMediaData;
                    if (i >= sharedMediaDataArr.length) {
                        break;
                    }
                    if (sharedMediaDataArr[i].messagesDict[1].size() == 0) {
                        SharedMediaData sharedMediaData = this.sharedMediaData[i];
                        sharedMediaData.max_id[1] = this.info.migrated_from_max_id;
                        sharedMediaData.endReached[1] = false;
                    }
                    i++;
                }
            }
        }
        TLRPC.ChatFull chatFull3 = this.info;
        if (chatFull3 == null || z == chatFull3.stories_pinned_available) {
            return;
        }
        ScrollSlidingTextTabStripInner scrollSlidingTextTabStripInner = this.scrollSlidingTextTabStrip;
        if (scrollSlidingTextTabStripInner != null) {
            scrollSlidingTextTabStripInner.setInitialTabId(isArchivedOnlyStoriesView() ? 9 : 8);
        }
        updateTabs(true);
        switchToCurrentSelectedMode(false);
    }

    public void setUserInfo(TLRPC.UserFull userFull) {
        TLRPC.UserFull userFull2 = this.userInfo;
        boolean z = userFull2 != null && userFull2.stories_pinned_available;
        this.userInfo = userFull;
        updateTabs(true);
        if (userFull == null || z == userFull.stories_pinned_available) {
            return;
        }
        scrollToPage(8);
    }

    public void setChatUsers(ArrayList<Integer> arrayList, TLRPC.ChatFull chatFull) {
        int i = 0;
        int i2 = 0;
        while (true) {
            MediaPage[] mediaPageArr = this.mediaPages;
            if (i2 < mediaPageArr.length) {
                MediaPage mediaPage = mediaPageArr[i2];
                if (mediaPage.selectedType == 7 && mediaPage.listView.getAdapter() != null && this.mediaPages[i2].listView.getAdapter().getItemCount() != 0 && this.profileActivity.getMessagesController().getStoriesController().hasLoadingStories()) {
                    return;
                } else {
                    i2++;
                }
            } else {
                if (this.topicId == 0) {
                    this.chatUsersAdapter.chatInfo = chatFull;
                    this.chatUsersAdapter.sortedUsers = arrayList;
                }
                updateTabs(true);
                while (true) {
                    MediaPage[] mediaPageArr2 = this.mediaPages;
                    if (i >= mediaPageArr2.length) {
                        return;
                    }
                    MediaPage mediaPage2 = mediaPageArr2[i];
                    if (mediaPage2.selectedType == 7 && mediaPage2.listView.getAdapter() != null) {
                        AndroidUtilities.notifyDataSetChanged(this.mediaPages[i].listView);
                    }
                    i++;
                }
            }
        }
    }

    public void updateAdapters() {
        SharedPhotoVideoAdapter sharedPhotoVideoAdapter = this.photoVideoAdapter;
        if (sharedPhotoVideoAdapter != null) {
            sharedPhotoVideoAdapter.notifyDataSetChanged();
        }
        SharedDocumentsAdapter sharedDocumentsAdapter = this.documentsAdapter;
        if (sharedDocumentsAdapter != null) {
            sharedDocumentsAdapter.notifyDataSetChanged();
        }
        SharedDocumentsAdapter sharedDocumentsAdapter2 = this.voiceAdapter;
        if (sharedDocumentsAdapter2 != null) {
            sharedDocumentsAdapter2.notifyDataSetChanged();
        }
        SharedLinksAdapter sharedLinksAdapter = this.linksAdapter;
        if (sharedLinksAdapter != null) {
            sharedLinksAdapter.notifyDataSetChanged();
        }
        SharedDocumentsAdapter sharedDocumentsAdapter3 = this.audioAdapter;
        if (sharedDocumentsAdapter3 != null) {
            sharedDocumentsAdapter3.notifyDataSetChanged();
        }
        PollAdapter pollAdapter = this.pollAdapter;
        if (pollAdapter != null) {
            pollAdapter.notifyDataSetChanged();
        }
        GifAdapter gifAdapter = this.gifAdapter;
        if (gifAdapter != null) {
            gifAdapter.notifyDataSetChanged();
        }
        StoriesAdapter storiesAdapter = this.storiesAdapter;
        if (storiesAdapter != null) {
            storiesAdapter.notifyDataSetChanged();
        }
        Iterator<StoryAlbumData> it = this.storyAlbumsById.values().iterator();
        while (it.hasNext()) {
            it.next().adapter.notifyDataSetChanged();
        }
    }

    private void updateRowsSelection(boolean z) {
        int i = 0;
        while (true) {
            MediaPage[] mediaPageArr = this.mediaPages;
            if (i >= mediaPageArr.length) {
                return;
            }
            int childCount = mediaPageArr[i].listView.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = this.mediaPages[i].listView.getChildAt(i2);
                if (childAt instanceof SharedDocumentCell) {
                    ((SharedDocumentCell) childAt).setChecked(false, z);
                } else if (childAt instanceof SharedPhotoVideoCell2) {
                    ((SharedPhotoVideoCell2) childAt).setChecked(false, z);
                } else if (childAt instanceof SharedLinkCell) {
                    ((SharedLinkCell) childAt).setChecked(false, z);
                } else if (childAt instanceof SharedAudioCell) {
                    ((SharedAudioCell) childAt).setChecked(false, z);
                } else if (childAt instanceof ContextLinkCell) {
                    ((ContextLinkCell) childAt).setChecked(false, z);
                } else if (childAt instanceof DialogCell) {
                    ((DialogCell) childAt).setChecked(false, z);
                }
            }
            i++;
        }
    }

    public void setMergeDialogId(long j) {
        this.mergeDialogId = j;
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x01f6 A[PHI: r12 r15
  0x01f6: PHI (r12v11 int) = (r12v9 int), (r12v13 int) binds: [B:173:0x0209, B:166:0x01f4] A[DONT_GENERATE, DONT_INLINE]
  0x01f6: PHI (r15v27 int) = (r15v14 int), (r15v30 int) binds: [B:173:0x0209, B:166:0x01f4] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0212  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0214  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x021f  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0227  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x0229  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0234  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x023c  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x023e  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x0249  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x0263  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x028b  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x0298  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x02a4  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x02a7  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x02b0  */
    /* JADX WARN: Removed duplicated region for block: B:335:0x05dc  */
    /* JADX WARN: Removed duplicated region for block: B:345:0x063b  */
    /* JADX WARN: Removed duplicated region for block: B:350:0x0648  */
    /* JADX WARN: Removed duplicated region for block: B:363:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0107  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void updateTabs(boolean z) {
        long j;
        TLRPC.User user;
        TLRPC.UserFull userFull;
        TLRPC.ChatFull chatFull;
        TLRPC.ProfileTab profileTab;
        TLRPC.ProfileTab profileTab2;
        int i;
        int i2;
        boolean z2;
        int i3;
        int i4;
        int i5;
        boolean z3;
        boolean z4;
        int selectedTab;
        int i6;
        Integer num;
        int i7;
        int i8;
        TLRPC.UserFull userFull2;
        TLRPC.ChatFull chatFull2;
        int i9;
        TLRPC.UserFull userFull3;
        TLRPC.ChatFull chatFull3;
        TLRPC.UserFull userFull4;
        TL_bots.BotInfo botInfo;
        BaseFragment baseFragment;
        SharedMediaPreloader sharedMediaPreloader;
        if (this.scrollSlidingTextTabStrip == null) {
            return;
        }
        boolean z5 = !this.delegate.isFragmentOpened() ? false : z;
        boolean z6 = (this.savedMessagesContainer == null || (sharedMediaPreloader = this.sharedMediaPreloader) == null || !sharedMediaPreloader.hasSavedMessages) ? false : true;
        if (this.dialog_id <= 0 || (baseFragment = this.profileActivity) == null) {
            j = 0;
            user = null;
        } else {
            j = 0;
            user = baseFragment.getMessagesController().getUser(Long.valueOf(this.dialog_id));
        }
        boolean z7 = user != null && user.bot && user.bot_has_main_app && user.bot_can_edit;
        boolean z8 = (user == null || !user.bot || user.bot_can_edit || (userFull4 = this.userInfo) == null || (botInfo = userFull4.bot_info) == null || !botInfo.has_preview_medias || z7) ? false : true;
        boolean z9 = (DialogObject.isUserDialog(this.dialog_id) || DialogObject.isChatDialog(this.dialog_id)) && !DialogObject.isEncryptedDialog(this.dialog_id) && (((userFull = this.userInfo) != null && userFull.stories_pinned_available) || (((chatFull = this.info) != null && chatFull.stories_pinned_available) || isStoriesView())) && includeStories();
        boolean z10 = this.giftsContainer != null && (((userFull3 = this.userInfo) != null && userFull3.stargifts_count > 0) || ((chatFull3 = this.info) != null && chatFull3.stargifts_count > 0));
        TLRPC.ChatFull chatFull4 = this.info;
        if (chatFull4 != null) {
            profileTab2 = chatFull4.main_tab;
        } else {
            TLRPC.UserFull userFull5 = this.userInfo;
            if (userFull5 != null) {
                profileTab2 = userFull5.main_tab;
            } else {
                profileTab = null;
                int tabId = getTabId(profileTab);
                long j2 = j;
                int i10 = this.lastMainTabId;
                i = (i10 != -2 || i10 == tabId) ? 0 : 1;
                if (this.wasReordering != this.scrollSlidingTextTabStrip.isReordering()) {
                    i++;
                }
                if ((!z9 || z8) != this.scrollSlidingTextTabStrip.hasTab(8)) {
                    i++;
                }
                if (z7 != this.scrollSlidingTextTabStrip.hasTab(13)) {
                    i++;
                }
                if (isSearchingStories() != this.scrollSlidingTextTabStrip.hasTab(8)) {
                    i++;
                }
                if (z10 != this.scrollSlidingTextTabStrip.hasTab(14)) {
                    ProfileGiftsContainer profileGiftsContainer = this.giftsContainer;
                    if (profileGiftsContainer != null && z10) {
                        i2 = 13;
                        z2 = z8;
                        if (this.giftsLastHash != profileGiftsContainer.getLastEmojisHash()) {
                            i++;
                        }
                    }
                    if (isStoriesView()) {
                        i3 = 15;
                        i4 = 7;
                        i5 = tabId;
                        z3 = false;
                        z4 = false;
                    } else {
                        if ((this.chatUsersAdapter.chatInfo == null) == this.scrollSlidingTextTabStrip.hasTab(7)) {
                            i++;
                        }
                        if ((this.hasMedia[0] <= 0) == this.scrollSlidingTextTabStrip.hasTab(0)) {
                            i++;
                        }
                        i4 = 7;
                        if ((this.hasMedia[1] <= 0) == this.scrollSlidingTextTabStrip.hasTab(1)) {
                            i++;
                        }
                        boolean zIsEncryptedDialog = DialogObject.isEncryptedDialog(this.dialog_id);
                        int[] iArr = this.hasMedia;
                        if (!zIsEncryptedDialog) {
                            if ((iArr[3] <= 0) == this.scrollSlidingTextTabStrip.hasTab(3)) {
                                i++;
                            }
                            i5 = tabId;
                            if ((this.hasMedia[4] <= 0) == this.scrollSlidingTextTabStrip.hasTab(4)) {
                                i++;
                            }
                            if ((this.hasMedia[8] <= 0) == this.scrollSlidingTextTabStrip.hasTab(15)) {
                                i++;
                            }
                            if ((this.hasMedia[2] > 0) == this.scrollSlidingTextTabStrip.hasTab(2)) {
                                i++;
                            }
                            if ((this.hasMedia[5] > 0) == this.scrollSlidingTextTabStrip.hasTab(5)) {
                                i++;
                            }
                            if ((this.hasMedia[6] > 0) == this.scrollSlidingTextTabStrip.hasTab(6)) {
                                i++;
                            }
                            z3 = !this.channelRecommendationsAdapter.chats.isEmpty();
                            if (z3 != this.scrollSlidingTextTabStrip.hasTab(10)) {
                                i++;
                            }
                            z4 = (includeSavedDialogs() || this.profileActivity.getMessagesController().getSavedMessagesController().unsupported || !this.profileActivity.getMessagesController().getSavedMessagesController().hasDialogs()) ? false : true;
                            i3 = 15;
                            if (z4 != this.scrollSlidingTextTabStrip.hasTab(11)) {
                                i++;
                            }
                            if (z6 != this.scrollSlidingTextTabStrip.hasTab(12)) {
                                i++;
                            }
                        } else {
                            i5 = tabId;
                            if ((iArr[4] <= 0) == this.scrollSlidingTextTabStrip.hasTab(4)) {
                            }
                            if ((this.hasMedia[2] > 0) == this.scrollSlidingTextTabStrip.hasTab(2)) {
                            }
                            if ((this.hasMedia[5] > 0) == this.scrollSlidingTextTabStrip.hasTab(5)) {
                            }
                            if ((this.hasMedia[6] > 0) == this.scrollSlidingTextTabStrip.hasTab(6)) {
                            }
                            z3 = !this.channelRecommendationsAdapter.chats.isEmpty();
                            if (z3 != this.scrollSlidingTextTabStrip.hasTab(10)) {
                            }
                            if (includeSavedDialogs()) {
                                i3 = 15;
                                if (z4 != this.scrollSlidingTextTabStrip.hasTab(11)) {
                                }
                                if (z6 != this.scrollSlidingTextTabStrip.hasTab(12)) {
                                }
                            }
                        }
                    }
                    if (i > 0) {
                        if (z5) {
                            TransitionSet transitionSet = new TransitionSet();
                            transitionSet.setOrdering(0);
                            transitionSet.addTransition(new Visibility() { // from class: org.telegram.ui.Components.SharedMediaLayout.47
                                @Override // android.transition.Visibility
                                public Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
                                    AnimatorSet animatorSet = new AnimatorSet();
                                    animatorSet.playTogether(ObjectAnimator.ofFloat(view, (Property<View, Float>) View.ALPHA, 0.0f, 1.0f), ObjectAnimator.ofFloat(view, (Property<View, Float>) View.SCALE_X, 0.5f, 1.0f), ObjectAnimator.ofFloat(view, (Property<View, Float>) View.SCALE_Y, 0.5f, 1.0f));
                                    animatorSet.setInterpolator(CubicBezierInterpolator.DEFAULT);
                                    return animatorSet;
                                }

                                @Override // android.transition.Visibility
                                public Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
                                    AnimatorSet animatorSet = new AnimatorSet();
                                    animatorSet.playTogether(ObjectAnimator.ofFloat(view, (Property<View, Float>) View.ALPHA, view.getAlpha(), 0.0f), ObjectAnimator.ofFloat(view, (Property<View, Float>) View.SCALE_X, view.getScaleX(), 0.5f), ObjectAnimator.ofFloat(view, (Property<View, Float>) View.SCALE_Y, view.getScaleX(), 0.5f));
                                    animatorSet.setInterpolator(CubicBezierInterpolator.DEFAULT);
                                    return animatorSet;
                                }
                            });
                            i6 = 0;
                            num = 0;
                            transitionSet.setDuration(200L);
                            TransitionManager.beginDelayedTransition(this.scrollSlidingTextTabStrip.getTabsContainer(), transitionSet);
                            this.scrollSlidingTextTabStrip.recordIndicatorParams();
                        } else {
                            i6 = 0;
                            num = 0;
                        }
                        SparseArray<View> sparseArrayRemoveTabs = this.scrollSlidingTextTabStrip.removeTabs();
                        if (i > 3) {
                            sparseArrayRemoveTabs = null;
                        }
                        final ArrayList arrayList = new ArrayList();
                        if (isSearchingStories()) {
                            i7 = i6;
                            arrayList.add(new Pair(8, LocaleController.getString(C2807R.string.ProfileStories)));
                            this.scrollSlidingTextTabStrip.animationDuration = 420L;
                        } else {
                            i7 = i6;
                        }
                        if (z2) {
                            arrayList.add(new Pair(8, LocaleController.getString(C2807R.string.ProfileBotPreviewTab)));
                            i8 = 3;
                        } else {
                            i8 = 3;
                            if ((DialogObject.isUserDialog(this.dialog_id) || DialogObject.isChatDialog(this.dialog_id)) && !DialogObject.isEncryptedDialog(this.dialog_id) && ((((userFull2 = this.userInfo) != null && userFull2.stories_pinned_available) || (((chatFull2 = this.info) != null && chatFull2.stories_pinned_available) || isStoriesView())) && includeStories())) {
                                if (isArchivedOnlyStoriesView()) {
                                    arrayList.add(new Pair(9, LocaleController.getString(C2807R.string.ProfileArchivedStories)));
                                    this.scrollSlidingTextTabStrip.animationDuration = 420L;
                                } else {
                                    arrayList.add(new Pair(8, LocaleController.getString(C2807R.string.ProfileStories)));
                                    if (isStoriesView()) {
                                        arrayList.add(new Pair(9, LocaleController.getString(C2807R.string.ProfileArchivedStories)));
                                    }
                                }
                            }
                        }
                        if (z10) {
                            String string = LocaleController.getString(C2807R.string.ProfileGifts);
                            CharSequence lastEmojis = this.giftsContainer.getLastEmojis(null);
                            CharSequence[] charSequenceArr = new CharSequence[2];
                            charSequenceArr[i7] = string;
                            charSequenceArr[1] = lastEmojis;
                            arrayList.add(new Pair(14, TextUtils.concat(charSequenceArr)));
                            this.giftsLastHash = this.giftsContainer.getLastEmojisHash();
                        }
                        if (z7) {
                            arrayList.add(new Pair(Integer.valueOf(i2), LocaleController.getString(C2807R.string.ProfileBotPreviewTab)));
                        }
                        if (!isStoriesView()) {
                            if (z4) {
                                arrayList.add(new Pair(11, LocaleController.getString(C2807R.string.SavedDialogsTab)));
                            }
                            if (this.chatUsersAdapter.chatInfo != null) {
                                arrayList.add(new Pair(Integer.valueOf(i4), LocaleController.getString(C2807R.string.GroupMembers)));
                            }
                            int[] iArr2 = this.hasMedia;
                            if (iArr2[i7] > 0) {
                                if (iArr2[1] == 0 && iArr2[2] == 0 && iArr2[i8] == 0 && iArr2[4] == 0 && iArr2[5] == 0 && iArr2[6] == 0 && this.chatUsersAdapter.chatInfo == null) {
                                    arrayList.add(new Pair(num, LocaleController.getString(C2807R.string.SharedMediaTabFull2)));
                                } else {
                                    arrayList.add(new Pair(num, LocaleController.getString(C2807R.string.SharedMediaTab2)));
                                }
                            }
                            if (z6) {
                                arrayList.add(new Pair(12, LocaleController.getString(C2807R.string.SavedMessagesTab2)));
                                MessagesController.getGlobalMainSettings().edit().putInt("savedhint", i8).apply();
                            }
                            if (this.hasMedia[1] > 0) {
                                arrayList.add(new Pair(1, LocaleController.getString(C2807R.string.SharedFilesTab2)));
                            }
                            boolean zIsEncryptedDialog2 = DialogObject.isEncryptedDialog(this.dialog_id);
                            int[] iArr3 = this.hasMedia;
                            if (!zIsEncryptedDialog2) {
                                if (iArr3[3] > 0) {
                                    arrayList.add(new Pair(3, LocaleController.getString(C2807R.string.SharedLinksTab2)));
                                }
                                if (this.hasMedia[4] > 0) {
                                    arrayList.add(new Pair(4, LocaleController.getString(C2807R.string.SharedMusicTab2)));
                                }
                                if (this.hasMedia[8] > 0) {
                                    arrayList.add(new Pair(Integer.valueOf(i3), LocaleController.getString(C2807R.string.SharedPollTab)));
                                }
                            } else if (iArr3[4] > 0) {
                                arrayList.add(new Pair(4, LocaleController.getString(C2807R.string.SharedMusicTab2)));
                            }
                            if (this.hasMedia[2] > 0) {
                                arrayList.add(new Pair(2, LocaleController.getString(C2807R.string.SharedVoiceTab2)));
                            }
                            if (this.hasMedia[5] > 0) {
                                arrayList.add(new Pair(5, LocaleController.getString(C2807R.string.SharedGIFsTab2)));
                            }
                            if (this.hasMedia[6] > 0) {
                                arrayList.add(new Pair(6, LocaleController.getString(C2807R.string.SharedGroupsTab2)));
                            }
                            if (z3) {
                                arrayList.add(new Pair(10, LocaleController.getString(this.dialog_id > j2 ? C2807R.string.SimilarBotsTab : C2807R.string.SimilarChannelsTab)));
                            }
                        }
                        if (this.scrollSlidingTextTabStrip.isReordering()) {
                            Utilities.CallbackReturn callbackReturn = new Utilities.CallbackReturn() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda5
                                @Override // org.telegram.messenger.Utilities.CallbackReturn
                                public final Object run(Object obj) {
                                    return SharedMediaLayout.$r8$lambda$M6zaUu1gbTWVgZ75iN__66TMJCU(arrayList, (Integer) obj);
                                }
                            };
                            boolean zIsBroadcastChannelProfile = isBroadcastChannelProfile();
                            int i11 = i3;
                            for (int i12 = i7; i12 < i11; i12++) {
                                if (getTab(i12, zIsBroadcastChannelProfile) != null && !((Boolean) callbackReturn.run(Integer.valueOf(i12))).booleanValue()) {
                                    arrayList.add(new Pair(Integer.valueOf(i12), getTabName(i12)));
                                }
                            }
                        }
                        if (profileTab != null) {
                            int tabId2 = getTabId(profileTab);
                            int i13 = i7;
                            while (true) {
                                if (i13 >= arrayList.size()) {
                                    i13 = -1;
                                    break;
                                } else if (((Integer) ((Pair) arrayList.get(i13)).first).intValue() == tabId2) {
                                    break;
                                } else {
                                    i13++;
                                }
                            }
                            if (i13 >= 0) {
                                Pair pair = (Pair) arrayList.remove(i13);
                                i9 = i7;
                                arrayList.add(i9, pair);
                            } else {
                                i9 = i7;
                            }
                            if (!arrayList.isEmpty()) {
                                this.firstTab = ((Integer) ((Pair) arrayList.get(i9)).first).intValue();
                            }
                            int size = arrayList.size();
                            int i14 = 0;
                            while (i14 < size) {
                                Object obj = arrayList.get(i14);
                                i14++;
                                Pair pair2 = (Pair) obj;
                                if (!this.scrollSlidingTextTabStrip.hasTab(((Integer) pair2.first).intValue())) {
                                    this.scrollSlidingTextTabStrip.addTextTab(((Integer) pair2.first).intValue(), (CharSequence) pair2.second, sparseArrayRemoveTabs);
                                }
                            }
                            this.lastMainTabId = i5;
                            this.wasReordering = this.scrollSlidingTextTabStrip.isReordering();
                            this.scrollSlidingTextTabStrip.finishAddingTabs();
                            onSelectedTabChanged();
                            checkStoriesTabsPosition();
                        }
                    } else if (this.lastMainTabId == -2) {
                        this.lastMainTabId = i5;
                    }
                    selectedTab = getSelectedTab();
                    if (selectedTab >= 0) {
                        this.mediaPages[0].selectedType = selectedTab;
                        return;
                    }
                    return;
                }
                i++;
                i2 = 13;
                z2 = z8;
                if (isStoriesView()) {
                }
                if (i > 0) {
                }
                selectedTab = getSelectedTab();
                if (selectedTab >= 0) {
                }
            }
        }
        profileTab = profileTab2;
        int tabId3 = getTabId(profileTab);
        long j22 = j;
        int i102 = this.lastMainTabId;
        if (i102 != -2) {
        }
        if (this.wasReordering != this.scrollSlidingTextTabStrip.isReordering()) {
        }
        if ((!z9 || z8) != this.scrollSlidingTextTabStrip.hasTab(8)) {
        }
        if (z7 != this.scrollSlidingTextTabStrip.hasTab(13)) {
        }
        if (isSearchingStories() != this.scrollSlidingTextTabStrip.hasTab(8)) {
        }
        if (z10 != this.scrollSlidingTextTabStrip.hasTab(14)) {
        }
        i2 = 13;
        z2 = z8;
        if (isStoriesView()) {
        }
        if (i > 0) {
        }
        selectedTab = getSelectedTab();
        if (selectedTab >= 0) {
        }
    }

    public static /* synthetic */ Boolean $r8$lambda$M6zaUu1gbTWVgZ75iN__66TMJCU(ArrayList arrayList, Integer num) {
        for (int i = 0; i < arrayList.size(); i++) {
            if (((Pair) arrayList.get(i)).first == num) {
                return Boolean.TRUE;
            }
        }
        return Boolean.FALSE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startStopVisibleGifs() {
        int i = 0;
        while (true) {
            MediaPage[] mediaPageArr = this.mediaPages;
            if (i >= mediaPageArr.length) {
                return;
            }
            int childCount = mediaPageArr[i].listView.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = this.mediaPages[i].listView.getChildAt(i2);
                if (childAt instanceof ContextLinkCell) {
                    ImageReceiver photoImage = ((ContextLinkCell) childAt).getPhotoImage();
                    if (i == 0) {
                        photoImage.setAllowStartAnimation(true);
                        photoImage.startAnimation();
                    } else {
                        photoImage.setAllowStartAnimation(false);
                        photoImage.stopAnimation();
                    }
                }
            }
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:396:0x082a  */
    /* JADX WARN: Type inference failed for: r4v206, types: [org.telegram.ui.Components.RecyclerListView, org.telegram.ui.Components.SharedMediaLayout$InternalListView] */
    /* JADX WARN: Type inference failed for: r5v101 */
    /* JADX WARN: Type inference failed for: r5v103 */
    /* JADX WARN: Type inference failed for: r5v104 */
    /* JADX WARN: Type inference failed for: r5v105 */
    /* JADX WARN: Type inference failed for: r5v106 */
    /* JADX WARN: Type inference failed for: r5v107 */
    /* JADX WARN: Type inference failed for: r5v108 */
    /* JADX WARN: Type inference failed for: r5v109 */
    /* JADX WARN: Type inference failed for: r5v110 */
    /* JADX WARN: Type inference failed for: r5v111 */
    /* JADX WARN: Type inference failed for: r5v112 */
    /* JADX WARN: Type inference failed for: r5v113 */
    /* JADX WARN: Type inference failed for: r5v114 */
    /* JADX WARN: Type inference failed for: r5v115 */
    /* JADX WARN: Type inference failed for: r5v116 */
    /* JADX WARN: Type inference failed for: r5v117 */
    /* JADX WARN: Type inference failed for: r5v41 */
    /* JADX WARN: Type inference failed for: r5v42 */
    /* JADX WARN: Type inference failed for: r5v50, types: [boolean] */
    /* JADX WARN: Type inference failed for: r5v68 */
    /* JADX WARN: Type inference failed for: r9v23, types: [boolean] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void switchToCurrentSelectedMode(boolean z) {
        MediaPage[] mediaPageArr;
        char c2;
        int i;
        char c3;
        char c4;
        char c5;
        char c6;
        char c7;
        float f;
        int i2;
        int i3;
        ?? r5;
        int i4;
        boolean z2;
        RecyclerView.RecycledViewPool recycledViewPool;
        int i5;
        int i6;
        int i7;
        ?? r52;
        PollAdapter pollAdapter;
        ProfileGiftsContainer profileGiftsContainer = this.giftsContainer;
        if (profileGiftsContainer != null) {
            profileGiftsContainer.resetReordering();
        }
        int i8 = 0;
        while (true) {
            mediaPageArr = this.mediaPages;
            if (i8 >= mediaPageArr.length) {
                break;
            }
            mediaPageArr[i8].listView.stopScroll();
            i8++;
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) mediaPageArr[z ? 1 : 0].getLayoutParams();
        layoutParams.topMargin = AndroidUtilities.dp(mediaPageTopMargin());
        RecyclerView.Adapter adapter = this.mediaPages[z ? 1 : 0].listView.getAdapter();
        if (adapter == this.storiesAdapter) {
            this.storiesReorder.attachToRecyclerView(null);
        }
        boolean z3 = this.searching;
        String string = _UrlKt.FRAGMENT_ENCODE_SET;
        if (z3 && this.searchWas) {
            if (this.mediaPages[z ? 1 : 0].searchViewPool == null) {
                this.mediaPages[z ? 1 : 0].searchViewPool = new RecyclerView.RecycledViewPool();
            }
            recycledViewPool = this.mediaPages[z ? 1 : 0].searchViewPool;
            MediaPage[] mediaPageArr2 = this.mediaPages;
            if (z) {
                int i9 = mediaPageArr2[z ? 1 : 0].selectedType;
                if (i9 == 0 || i9 == 2 || i9 == 5 || i9 == 6 || (i9 == 7 && !this.delegate.canSearchMembers())) {
                    this.searching = false;
                    SearchTagsList searchTagsList = this.searchTagsList;
                    if (searchTagsList != null) {
                        searchTagsList.show(false);
                    }
                    this.searchWas = false;
                    switchToCurrentSelectedMode(true);
                    return;
                }
                ActionBarMenuItem actionBarMenuItem = this.searchItem;
                if (actionBarMenuItem != null) {
                    string = actionBarMenuItem.getSearchField().getText().toString();
                }
                int i10 = this.mediaPages[z ? 1 : 0].selectedType;
                if (i10 == 1) {
                    MediaSearchAdapter mediaSearchAdapter = this.documentsSearchAdapter;
                    if (mediaSearchAdapter != null) {
                        mediaSearchAdapter.search(string, false);
                        if (adapter != this.documentsSearchAdapter) {
                            recycleAdapter(adapter);
                            this.mediaPages[z ? 1 : 0].listView.setAdapter(this.documentsSearchAdapter);
                        }
                    }
                } else if (i10 == 3) {
                    MediaSearchAdapter mediaSearchAdapter2 = this.linksSearchAdapter;
                    if (mediaSearchAdapter2 != null) {
                        mediaSearchAdapter2.search(string, false);
                        if (adapter != this.linksSearchAdapter) {
                            recycleAdapter(adapter);
                            this.mediaPages[z ? 1 : 0].listView.setAdapter(this.linksSearchAdapter);
                        }
                    }
                } else if (i10 == 4) {
                    MediaSearchAdapter mediaSearchAdapter3 = this.audioSearchAdapter;
                    if (mediaSearchAdapter3 != null) {
                        mediaSearchAdapter3.search(string, false);
                        if (adapter != this.audioSearchAdapter) {
                            recycleAdapter(adapter);
                            this.mediaPages[z ? 1 : 0].listView.setAdapter(this.audioSearchAdapter);
                        }
                    }
                } else if (i10 == 7) {
                    GroupUsersSearchAdapter groupUsersSearchAdapter = this.groupUsersSearchAdapter;
                    if (groupUsersSearchAdapter != null) {
                        groupUsersSearchAdapter.search(string, false);
                        if (adapter != this.groupUsersSearchAdapter) {
                            recycleAdapter(adapter);
                            this.mediaPages[z ? 1 : 0].listView.setAdapter(this.groupUsersSearchAdapter);
                        }
                    }
                } else if (i10 == 11) {
                    SavedMessagesSearchAdapter savedMessagesSearchAdapter = this.savedMessagesSearchAdapter;
                    if (savedMessagesSearchAdapter != null) {
                        savedMessagesSearchAdapter.search(string, this.searchingReaction);
                        if (adapter != this.savedMessagesSearchAdapter) {
                            recycleAdapter(adapter);
                            this.mediaPages[z ? 1 : 0].listView.setAdapter(this.savedMessagesSearchAdapter);
                        }
                    }
                } else if (i10 == 15 && (pollAdapter = this.pollAdapter) != null && adapter != pollAdapter) {
                    recycleAdapter(adapter);
                    this.pollAdapter.listView = this.mediaPages[z ? 1 : 0].listView;
                    this.mediaPages[z ? 1 : 0].listView.setAdapter(this.pollAdapter);
                }
            } else if (mediaPageArr2[z ? 1 : 0].listView != null) {
                int i11 = this.mediaPages[z ? 1 : 0].selectedType;
                if (i11 == 1) {
                    if (adapter != this.documentsSearchAdapter) {
                        recycleAdapter(adapter);
                        this.mediaPages[z ? 1 : 0].listView.setAdapter(this.documentsSearchAdapter);
                    }
                    this.documentsSearchAdapter.notifyDataSetChanged();
                } else if (i11 == 3) {
                    if (adapter != this.linksSearchAdapter) {
                        recycleAdapter(adapter);
                        this.mediaPages[z ? 1 : 0].listView.setAdapter(this.linksSearchAdapter);
                    }
                    this.linksSearchAdapter.notifyDataSetChanged();
                } else if (i11 == 4) {
                    if (adapter != this.audioSearchAdapter) {
                        recycleAdapter(adapter);
                        this.mediaPages[z ? 1 : 0].listView.setAdapter(this.audioSearchAdapter);
                    }
                    this.audioSearchAdapter.notifyDataSetChanged();
                } else if (i11 == 7) {
                    if (adapter != this.groupUsersSearchAdapter) {
                        recycleAdapter(adapter);
                        this.mediaPages[z ? 1 : 0].listView.setAdapter(this.groupUsersSearchAdapter);
                    }
                    this.groupUsersSearchAdapter.notifyDataSetChanged();
                } else if (i11 == 11) {
                    if (adapter != this.savedMessagesSearchAdapter) {
                        recycleAdapter(adapter);
                        this.mediaPages[z ? 1 : 0].listView.setAdapter(this.savedMessagesSearchAdapter);
                    }
                    this.savedMessagesSearchAdapter.notifyDataSetChanged();
                }
            }
            r52 = 0;
            z2 = false;
            i2 = 4;
            i5 = 100;
            i4 = 8;
        } else {
            if (this.mediaPages[z ? 1 : 0].viewPool == null) {
                c2 = 0;
                this.mediaPages[z ? 1 : 0].viewPool = new RecyclerView.RecycledViewPool();
            } else {
                c2 = 0;
            }
            RecyclerView.RecycledViewPool recycledViewPool2 = this.mediaPages[z ? 1 : 0].viewPool;
            this.mediaPages[z ? 1 : 0].listView.setPinnedHeaderShadowDrawable(null);
            int i12 = this.mediaPages[z ? 1 : 0].selectedType;
            if (i12 == 8 || isStoryAlbumPageType(i12)) {
                layoutParams.topMargin = AndroidUtilities.dp(mediaPageTopMargin());
            }
            InternalListView internalListView = this.mediaPages[z ? 1 : 0].listView;
            int paddingLeft = this.mediaPages[z ? 1 : 0].listView.getPaddingLeft();
            InternalListView internalListView2 = this.mediaPages[z ? 1 : 0].listView;
            int pagePaddingTop = getPagePaddingTop(this.mediaPages[z ? 1 : 0].selectedType);
            internalListView2.hintPaddingTop = pagePaddingTop;
            int paddingRight = this.mediaPages[z ? 1 : 0].listView.getPaddingRight();
            InternalListView internalListView3 = this.mediaPages[z ? 1 : 0].listView;
            int pagePaddingBottom = getPagePaddingBottom(isStoriesView());
            internalListView3.hintPaddingBottom = pagePaddingBottom;
            internalListView.setPadding(paddingLeft, pagePaddingTop, paddingRight, pagePaddingBottom);
            int i13 = this.mediaPages[z ? 1 : 0].selectedType;
            if (i13 == 0) {
                if (adapter != this.photoVideoAdapter) {
                    recycleAdapter(adapter);
                    this.mediaPages[z ? 1 : 0].listView.setAdapter(this.photoVideoAdapter);
                }
                int i14 = -AndroidUtilities.dp(1.0f);
                layoutParams.rightMargin = i14;
                layoutParams.leftMargin = i14;
                SharedMediaData sharedMediaData = this.sharedMediaData[c2];
                char c8 = (!sharedMediaData.fastScrollDataLoaded || sharedMediaData.fastScrollPeriods.isEmpty()) ? c2 : (char) 1;
                i = this.mediaColumnsCount[c2];
                this.mediaPages[z ? 1 : 0].listView.setPinnedHeaderShadowDrawable(this.pinnedHeaderShadowDrawable);
                SharedMediaData sharedMediaData2 = this.sharedMediaData[c2];
                if (sharedMediaData2.recycledViewPool == null) {
                    sharedMediaData2.recycledViewPool = new RecyclerView.RecycledViewPool();
                }
                c3 = c8;
                recycledViewPool2 = this.sharedMediaData[c2].recycledViewPool;
                c7 = c2;
            } else {
                if (i13 == 1) {
                    SharedMediaData sharedMediaData3 = this.sharedMediaData[1];
                    char c9 = (!sharedMediaData3.fastScrollDataLoaded || sharedMediaData3.fastScrollPeriods.isEmpty()) ? c2 : (char) 1;
                    c6 = c9;
                    if (adapter != this.documentsAdapter) {
                        recycleAdapter(adapter);
                        this.mediaPages[z ? 1 : 0].listView.setAdapter(this.documentsAdapter);
                        c6 = c9;
                    }
                } else if (i13 == 2) {
                    SharedMediaData sharedMediaData4 = this.sharedMediaData[2];
                    char c10 = (!sharedMediaData4.fastScrollDataLoaded || sharedMediaData4.fastScrollPeriods.isEmpty()) ? c2 : (char) 1;
                    c6 = c10;
                    if (adapter != this.voiceAdapter) {
                        recycleAdapter(adapter);
                        this.mediaPages[z ? 1 : 0].listView.setAdapter(this.voiceAdapter);
                        c6 = c10;
                    }
                } else {
                    if (i13 == 3) {
                        if (adapter != this.linksAdapter) {
                            recycleAdapter(adapter);
                            this.mediaPages[z ? 1 : 0].listView.setAdapter(this.linksAdapter);
                        }
                    } else if (i13 == 4) {
                        SharedMediaData sharedMediaData5 = this.sharedMediaData[4];
                        char c11 = (!sharedMediaData5.fastScrollDataLoaded || sharedMediaData5.fastScrollPeriods.isEmpty()) ? c2 : (char) 1;
                        c6 = c11;
                        if (adapter != this.audioAdapter) {
                            recycleAdapter(adapter);
                            this.mediaPages[z ? 1 : 0].listView.setAdapter(this.audioAdapter);
                            c6 = c11;
                        }
                    } else {
                        if (i13 == 5) {
                            if (adapter != this.gifAdapter) {
                                recycleAdapter(adapter);
                                this.mediaPages[z ? 1 : 0].listView.setAdapter(this.gifAdapter);
                            }
                        } else if (i13 == 15) {
                            if (adapter != this.pollAdapter) {
                                recycleAdapter(adapter);
                                this.pollAdapter.listView = this.mediaPages[z ? 1 : 0].listView;
                                this.mediaPages[z ? 1 : 0].listView.setAdapter(this.pollAdapter);
                            }
                        } else if (i13 == 6) {
                            if (adapter != this.commonGroupsAdapter) {
                                recycleAdapter(adapter);
                                this.mediaPages[z ? 1 : 0].listView.setAdapter(this.commonGroupsAdapter);
                            }
                        } else if (i13 == 7) {
                            if (adapter != this.chatUsersAdapter) {
                                recycleAdapter(adapter);
                                this.mediaPages[z ? 1 : 0].listView.setAdapter(this.chatUsersAdapter);
                            }
                        } else {
                            boolean zIsAnyStoryPageType = isAnyStoryPageType(i13);
                            MediaPage[] mediaPageArr3 = this.mediaPages;
                            if (zIsAnyStoryPageType) {
                                StoriesAdapter storiesAdapterStoryAlbums_getStoriesAdapterByTabType = storyAlbums_getStoriesAdapterByTabType(mediaPageArr3[z ? 1 : 0].selectedType);
                                if (adapter != storiesAdapterStoryAlbums_getStoriesAdapterByTabType) {
                                    recycleAdapter(adapter);
                                    this.mediaPages[z ? 1 : 0].listView.setAdapter(storiesAdapterStoryAlbums_getStoriesAdapterByTabType);
                                    this.mediaPages[z ? 1 : 0].listView.updateEmptyViewAnimated();
                                }
                                MediaPage mediaPage = this.mediaPages[z ? 1 : 0];
                                if (mediaPage.selectedType != 9) {
                                    this.storiesReorder.attachToRecyclerView(mediaPage.listView);
                                }
                                i = this.mediaColumnsCount[1];
                                char c12 = c2;
                                c3 = c12;
                                c7 = c12;
                            } else {
                                int i15 = mediaPageArr3[z ? 1 : 0].selectedType;
                                if (i15 == 10) {
                                    if (adapter != this.channelRecommendationsAdapter) {
                                        recycleAdapter(adapter);
                                        this.mediaPages[z ? 1 : 0].listView.setAdapter(this.channelRecommendationsAdapter);
                                    }
                                } else if (i15 == 11) {
                                    if (adapter != this.savedDialogsAdapter) {
                                        recycleAdapter(adapter);
                                        this.mediaPages[z ? 1 : 0].listView.setAdapter(this.savedDialogsAdapter);
                                        SavedDialogsAdapter savedDialogsAdapter = this.savedDialogsAdapter;
                                        ItemTouchHelper itemTouchHelper = savedDialogsAdapter.itemTouchHelper;
                                        InternalListView internalListView4 = this.mediaPages[z ? 1 : 0].listView;
                                        savedDialogsAdapter.attachedToRecyclerView = internalListView4;
                                        itemTouchHelper.attachToRecyclerView(internalListView4);
                                    }
                                    recycledViewPool2 = this.savedDialogsAdapter.viewPool;
                                } else if (i15 == 12) {
                                    if (adapter != null) {
                                        recycleAdapter(adapter);
                                        this.mediaPages[z ? 1 : 0].listView.setAdapter(null);
                                    }
                                    if (this.savedMessagesContainer.getParent() != this.mediaPages[z ? 1 : 0]) {
                                        AndroidUtilities.removeFromParent(this.savedMessagesContainer);
                                        this.mediaPages[z ? 1 : 0].addView(this.savedMessagesContainer, LayoutHelper.createFrame(-1, -1.0f, 119, 0.0f, 56.0f, 0.0f, 0.0f));
                                    }
                                } else if (i15 == 13) {
                                    if (adapter != null) {
                                        recycleAdapter(adapter);
                                        this.mediaPages[z ? 1 : 0].listView.setAdapter(null);
                                    }
                                    BotPreviewsEditContainer botPreviewsEditContainer = this.botPreviewsContainer;
                                    if (botPreviewsEditContainer != null && botPreviewsEditContainer.getParent() != this.mediaPages[z ? 1 : 0]) {
                                        AndroidUtilities.removeFromParent(this.botPreviewsContainer);
                                        this.mediaPages[z ? 1 : 0].addView(this.botPreviewsContainer);
                                    }
                                } else if (i15 == 14) {
                                    if (adapter != null) {
                                        recycleAdapter(adapter);
                                        this.mediaPages[z ? 1 : 0].listView.setAdapter(null);
                                    }
                                    ProfileGiftsContainer profileGiftsContainer2 = this.giftsContainer;
                                    if (profileGiftsContainer2 != null && profileGiftsContainer2.getParent() != this.mediaPages[z ? 1 : 0]) {
                                        AndroidUtilities.removeFromParent(this.giftsContainer);
                                        this.mediaPages[z ? 1 : 0].addView(this.giftsContainer);
                                        this.mediaPages[z ? 1 : 0].emptyView.setVisibility(4);
                                    }
                                }
                            }
                        }
                        char c13 = c2;
                        c4 = c13;
                        c5 = c13;
                        i = 100;
                        c7 = c5;
                        c3 = c4;
                    }
                    c5 = 1;
                    c4 = c2;
                    i = 100;
                    c7 = c5;
                    c3 = c4;
                }
                c4 = c6;
                c5 = 1;
                i = 100;
                c7 = c5;
                c3 = c4;
            }
            updateProgressViewLayout(this.mediaPages[z ? 1 : 0]);
            MediaPage[] mediaPageArr4 = this.mediaPages;
            if (c7 != 0) {
                mediaPageArr4[z ? 1 : 0].listView.setSections(c2);
            } else {
                mediaPageArr4[z ? 1 : 0].listView.disableSections();
            }
            MediaPage mediaPage2 = this.mediaPages[z ? 1 : 0];
            if (mediaPage2.selectedType == 15) {
                f = 1.0f;
                mediaPage2.setBackground(PreviewView.getBackgroundDrawable(mediaPage2.getBackground(), this.profileActivity.getCurrentAccount(), this.dialog_id, Theme.isCurrentThemeDark()));
                this.mediaPages[z ? 1 : 0].setOutlineProvider(new ViewOutlineProvider() { // from class: org.telegram.ui.Components.SharedMediaLayout.48
                    @Override // android.view.ViewOutlineProvider
                    public void getOutline(View view, Outline outline) {
                        outline.setRoundRect(0, AndroidUtilities.dp(50.0f), view.getWidth(), view.getHeight() + AndroidUtilities.dp(24.0f), AndroidUtilities.dp(24.0f));
                    }
                });
                this.mediaPages[z ? 1 : 0].setClipToOutline(true);
            } else {
                f = 1.0f;
                mediaPage2.setClipToOutline(false);
                this.mediaPages[z ? 1 : 0].setBackground(null);
            }
            MediaPage mediaPage3 = this.mediaPages[z ? 1 : 0];
            if (mediaPage3.selectedType == 11) {
                mediaPage3.listView.setItemAnimator(this.mediaPages[z ? 1 : 0].itemAnimator);
            } else {
                mediaPage3.listView.setItemAnimator(null);
                if (this.savedDialogsAdapter != null) {
                    InternalListView internalListView5 = this.mediaPages[z ? 1 : 0].listView;
                    SavedDialogsAdapter savedDialogsAdapter2 = this.savedDialogsAdapter;
                    if (internalListView5 == savedDialogsAdapter2.attachedToRecyclerView) {
                        ItemTouchHelper itemTouchHelper2 = savedDialogsAdapter2.itemTouchHelper;
                        savedDialogsAdapter2.attachedToRecyclerView = null;
                        itemTouchHelper2.attachToRecyclerView(null);
                    }
                }
            }
            ChatActivityContainer chatActivityContainer = this.savedMessagesContainer;
            if (chatActivityContainer != null && this.mediaPages[z ? 1 : 0].selectedType != 12 && chatActivityContainer.getParent() == this.mediaPages[z ? 1 : 0]) {
                this.savedMessagesContainer.chatActivity.onRemoveFromParent();
                this.mediaPages[z ? 1 : 0].removeView(this.savedMessagesContainer);
            }
            BotPreviewsEditContainer botPreviewsEditContainer2 = this.botPreviewsContainer;
            if (botPreviewsEditContainer2 != null && this.mediaPages[z ? 1 : 0].selectedType != 13) {
                ViewParent parent = botPreviewsEditContainer2.getParent();
                MediaPage mediaPage4 = this.mediaPages[z ? 1 : 0];
                if (parent == mediaPage4) {
                    mediaPage4.removeView(this.botPreviewsContainer);
                }
            }
            ProfileGiftsContainer profileGiftsContainer3 = this.giftsContainer;
            if (profileGiftsContainer3 != null && this.mediaPages[z ? 1 : 0].selectedType != 14) {
                ViewParent parent2 = profileGiftsContainer3.getParent();
                MediaPage mediaPage5 = this.mediaPages[z ? 1 : 0];
                if (parent2 == mediaPage5) {
                    mediaPage5.removeView(this.giftsContainer);
                }
            }
            int i16 = this.mediaPages[z ? 1 : 0].selectedType;
            if (i16 == 0 || i16 == 11 || isAnyStoryPageType(i16) || (i6 = this.mediaPages[z ? 1 : 0].selectedType) == 2 || i6 == 5 || i6 == 6 || ((i6 == 7 && !this.delegate.canSearchMembers()) || (i7 = this.mediaPages[z ? 1 : 0].selectedType) == 10 || i7 == 13 || i7 == 14)) {
                i2 = 4;
                if (z) {
                    this.searchItemState = 2;
                } else {
                    this.searchItemState = 0;
                    ActionBarMenuItem actionBarMenuItem2 = this.searchItem;
                    if (actionBarMenuItem2 != null) {
                        actionBarMenuItem2.setVisibility((isStoriesView() || this.searching) ? 8 : 4);
                    }
                }
            } else {
                ActionBarMenuItem actionBarMenuItem3 = this.searchItem;
                if (z) {
                    if (actionBarMenuItem3 != null && actionBarMenuItem3.getVisibility() == 4 && !this.actionBar.isSearchFieldVisible()) {
                        if (canShowSearchItem()) {
                            this.searchItemState = 1;
                            this.searchItem.setVisibility(0);
                        } else {
                            this.searchItem.setVisibility(isStoriesView() ? 8 : 4);
                        }
                        float f2 = z ? 1.0f : 0.0f;
                        this.searchAlpha = getSearchAlpha(f2);
                        updateSearchItemIcon(f - f2);
                    } else {
                        this.searchItemState = 0;
                        this.searchAlpha = f;
                    }
                } else {
                    float f3 = f;
                    if (actionBarMenuItem3 != null) {
                        i2 = 4;
                        if (actionBarMenuItem3.getVisibility() == 4) {
                            if (canShowSearchItem()) {
                                this.searchItemState = 0;
                                this.searchAlpha = f3;
                                this.searchItem.setVisibility(0);
                            } else {
                                this.searchItem.setVisibility(isStoriesView() ? 8 : 4);
                                this.searchAlpha = 0.0f;
                            }
                        }
                    }
                    updateOptionsSearch();
                }
                i2 = 4;
                updateOptionsSearch();
            }
            int i17 = this.mediaPages[z ? 1 : 0].selectedType;
            if (i17 == 6) {
                r5 = c3;
                if (!this.commonGroupsAdapter.loading) {
                    r5 = c3;
                    if (!this.commonGroupsAdapter.endReached) {
                        r5 = c3;
                        if (this.commonGroupsAdapter.chats.isEmpty()) {
                            this.commonGroupsAdapter.getChats(0L, 100);
                            r5 = c3;
                        }
                    }
                }
            } else {
                r5 = c3;
                if (i17 != 7) {
                    boolean zIsAnyStoryPageType2 = isAnyStoryPageType(i17);
                    MediaPage[] mediaPageArr5 = this.mediaPages;
                    if (zIsAnyStoryPageType2) {
                        StoriesAdapter storiesAdapterStoryAlbums_getStoriesAdapterByTabType2 = storyAlbums_getStoriesAdapterByTabType(mediaPageArr5[z ? 1 : 0].selectedType);
                        r5 = c3;
                        if (storiesAdapterStoryAlbums_getStoriesAdapterByTabType2 != null) {
                            StoriesController.StoriesList storiesList = storiesAdapterStoryAlbums_getStoriesAdapterByTabType2.storiesList;
                            storiesAdapterStoryAlbums_getStoriesAdapterByTabType2.load(false);
                            this.mediaPages[z ? 1 : 0].emptyView.showProgress(storiesList != null && (storiesList.isLoading() || (hasInternet() && storiesList.getCount() > 0)), z);
                            r5 = (storiesList == null || storiesList.getCount() <= 0 || isSearchingStories()) ? false : true;
                        }
                    } else {
                        int i18 = mediaPageArr5[z ? 1 : 0].selectedType;
                        r5 = c3;
                        if (i18 != 10) {
                            r5 = c3;
                            r5 = c3;
                            r5 = c3;
                            if (i18 != 11 && i18 != 12 && i18 != 13) {
                                r5 = c3;
                                if (i18 != 14) {
                                    if (i18 == 15) {
                                        i18 = 8;
                                    }
                                    SharedMediaData sharedMediaData6 = this.sharedMediaData[i18];
                                    r5 = c3;
                                    if (!sharedMediaData6.loading) {
                                        r5 = c3;
                                        if (!sharedMediaData6.endReached[0]) {
                                            r5 = c3;
                                            if (sharedMediaData6.messages.isEmpty()) {
                                                this.sharedMediaData[i18].loading = true;
                                                this.documentsAdapter.notifyDataSetChanged();
                                                if (i18 == 0) {
                                                    int i19 = this.sharedMediaData[0].filterType;
                                                    if (i19 == 1) {
                                                        i3 = 6;
                                                    } else if (i19 == 2) {
                                                        i3 = 7;
                                                    }
                                                    this.profileActivity.getMediaDataController().loadMedia(this.dialog_id, 50, 0, 0, i3, this.topicId, 1, this.profileActivity.getClassGuid(), this.sharedMediaData[i3].requestIndex, null, null);
                                                    r5 = c3;
                                                } else {
                                                    i3 = i18;
                                                    this.profileActivity.getMediaDataController().loadMedia(this.dialog_id, 50, 0, 0, i3, this.topicId, 1, this.profileActivity.getClassGuid(), this.sharedMediaData[i3].requestIndex, null, null);
                                                    r5 = c3;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            int i20 = this.mediaPages[z ? 1 : 0].selectedType;
            if (i20 == 8 || isStoryAlbumPageType(i20)) {
                StickerEmptyView stickerEmptyView = this.mediaPages[z ? 1 : 0].emptyView;
                final boolean zIsStoryAlbumPageType = isStoryAlbumPageType(this.mediaPages[z ? 1 : 0].selectedType);
                final int iStoryAlbums_getAlbumIdByTabType = storyAlbums_getAlbumIdByTabType(this.mediaPages[z ? 1 : 0].selectedType);
                stickerEmptyView.stickerView.setVisibility((zIsStoryAlbumPageType || isSelf() || isBot()) ? 8 : 0);
                if (zIsStoryAlbumPageType) {
                    stickerEmptyView.button.setVisibility(0);
                    stickerEmptyView.button.setText(LocaleController.getString(C2807R.string.StoriesAlbumAddToAlbum), false);
                    i4 = 8;
                } else if (isSelf()) {
                    i4 = 8;
                    stickerEmptyView.button.setVisibility(8);
                } else {
                    i4 = 8;
                    stickerEmptyView.setStickerType(11);
                    stickerEmptyView.button.setVisibility(!isSearchingStories() ? 0 : 8);
                    stickerEmptyView.button.setText(addPostText(), false);
                }
                SpoilersTextView spoilersTextView = stickerEmptyView.title;
                if (zIsStoryAlbumPageType) {
                    spoilersTextView.setText(LocaleController.getString(C2807R.string.StoriesAlbumOrganizeTitle));
                    stickerEmptyView.subtitle.setText(LocaleController.getString(C2807R.string.StoriesAlbumOrganizeDescription));
                } else {
                    spoilersTextView.setText(LocaleController.getString(!isSearchingStories() ? isStoriesView() ? C2807R.string.NoPublicStoriesTitle2 : C2807R.string.NoStoriesTitle : C2807R.string.NoHashtagStoriesTitle));
                    LinkSpanDrawable.LinksTextView linksTextView = stickerEmptyView.subtitle;
                    if (isStoriesView()) {
                        string = LocaleController.getString(C2807R.string.NoStoriesSubtitle2);
                    }
                    linksTextView.setText(string);
                }
                stickerEmptyView.button.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda3
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$switchToCurrentSelectedMode$52(zIsStoryAlbumPageType, iStoryAlbums_getAlbumIdByTabType, view);
                    }
                });
            } else {
                MediaPage mediaPage6 = this.mediaPages[z ? 1 : 0];
                if (mediaPage6.selectedType == 9) {
                    boolean zIsSelf = isSelf();
                    MediaPage[] mediaPageArr6 = this.mediaPages;
                    if (zIsSelf) {
                        mediaPageArr6[z ? 1 : 0].emptyView.stickerView.setVisibility(8);
                        this.mediaPages[z ? 1 : 0].emptyView.button.setVisibility(8);
                    } else {
                        mediaPageArr6[z ? 1 : 0].emptyView.stickerView.setVisibility(0);
                        this.mediaPages[z ? 1 : 0].emptyView.setStickerType(11);
                        this.mediaPages[z ? 1 : 0].emptyView.button.setVisibility(0);
                        this.mediaPages[z ? 1 : 0].emptyView.button.setText(addPostText(), false);
                    }
                    this.mediaPages[z ? 1 : 0].emptyView.title.setText(LocaleController.getString(C2807R.string.NoArchivedStoriesTitle));
                    LinkSpanDrawable.LinksTextView linksTextView2 = this.mediaPages[z ? 1 : 0].emptyView.subtitle;
                    if (isStoriesView()) {
                        string = LocaleController.getString(C2807R.string.NoArchivedStoriesSubtitle);
                    }
                    linksTextView2.setText(string);
                    this.mediaPages[z ? 1 : 0].emptyView.button.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda4
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            this.f$0.lambda$switchToCurrentSelectedMode$53(view);
                        }
                    });
                    i4 = 8;
                } else {
                    mediaPage6.emptyView.stickerView.setVisibility(0);
                    this.mediaPages[z ? 1 : 0].emptyView.setStickerType(1);
                    this.mediaPages[z ? 1 : 0].emptyView.title.setText(LocaleController.getString(C2807R.string.NoResult));
                    this.mediaPages[z ? 1 : 0].emptyView.subtitle.setText(LocaleController.getString(C2807R.string.SearchEmptyViewFilteredSubtitle2));
                    this.mediaPages[z ? 1 : 0].emptyView.button.setVisibility(8);
                    i4 = 8;
                }
            }
            z2 = false;
            this.mediaPages[z ? 1 : 0].listView.setVisibility(0);
            int i21 = i;
            recycledViewPool = recycledViewPool2;
            i5 = i21;
            r52 = r5;
        }
        MediaPage mediaPage7 = this.mediaPages[z ? 1 : 0];
        mediaPage7.fastScrollEnabled = r52;
        updateFastScrollVisibility(mediaPage7, z2);
        this.mediaPages[z ? 1 : 0].layoutManager.setSpanCount(i5);
        this.mediaPages[z ? 1 : 0].listView.invalidateItemDecorations();
        if (recycledViewPool != null) {
            this.mediaPages[z ? 1 : 0].listView.setRecycledViewPool(recycledViewPool);
            this.mediaPages[z ? 1 : 0].animationSupportingListView.setRecycledViewPool(recycledViewPool);
        }
        if (this.searchItemState == 2 && this.actionBar.isSearchFieldVisible()) {
            this.ignoreSearchCollapse = true;
            this.actionBar.closeSearchField();
            this.searchItemState = 0;
            this.searchAlpha = 0.0f;
            ActionBarMenuItem actionBarMenuItem4 = this.searchItem;
            if (actionBarMenuItem4 != null) {
                actionBarMenuItem4.setVisibility(isStoriesView() ? i4 : i2);
            }
            updateOptionsSearch();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$switchToCurrentSelectedMode$52(boolean z, int i, View view) {
        BaseFragment baseFragment = this.profileActivity;
        if (z) {
            openAddStoriesToAlbumSheet(baseFragment, this.dialog_id, i);
        } else {
            baseFragment.getMessagesController().getMainSettings().edit().putBoolean("story_keep", true).apply();
            StoryRecorder.getInstance(this.profileActivity.getParentActivity(), this.profileActivity.getCurrentAccount()).open(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$switchToCurrentSelectedMode$53(View view) {
        this.profileActivity.getMessagesController().getMainSettings().edit().putBoolean("story_keep", true).apply();
        StoryRecorder.getInstance(this.profileActivity.getParentActivity(), this.profileActivity.getCurrentAccount()).open(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean onItemLongClick(MessageObject messageObject, View view, int i) {
        return onItemLongClick(messageObject, view, i, true);
    }

    private boolean onItemLongClick(final MessageObject messageObject, final View view, final int i, boolean z) {
        StoriesAdapter storiesAdapter;
        StoriesController.StoriesList storiesList;
        if (this.isActionModeShowed || this.profileActivity.getParentActivity() == null || messageObject == null) {
            return false;
        }
        ProfileStoriesCollectionTabs profileStoriesCollectionTabs = this.storiesContainer;
        if (profileStoriesCollectionTabs != null && profileStoriesCollectionTabs.isReordering()) {
            return false;
        }
        AndroidUtilities.hideKeyboard(this.profileActivity.getParentActivity().getCurrentFocus());
        int i2 = 8;
        if (z && ((isStoryAlbumPageType(getClosestTab()) || getClosestTab() == 8) && !isActionModeShown())) {
            if (view instanceof SharedPhotoVideoCell2) {
                ((SharedPhotoVideoCell2) view).initFullSizeReceiver();
            }
            final TL_stories.StoryItem storyItem = messageObject.storyItem;
            if (storyItem == null) {
                return false;
            }
            final HashSet hashSet = new HashSet();
            ArrayList<Integer> arrayList = storyItem.albums;
            if (arrayList != null) {
                hashSet.addAll(arrayList);
            }
            boolean zIsStoryAlbumPageType = isStoryAlbumPageType(getClosestTab());
            final ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions(this.profileActivity, view, true);
            final ItemOptions itemOptionsMakeSwipeback = itemOptionsMakeOptions.makeSwipeback();
            itemOptionsMakeSwipeback.add(C2807R.drawable.ic_ab_back, LocaleController.getString(C2807R.string.Back), new RatePill$$ExternalSyntheticLambda1(itemOptionsMakeOptions));
            itemOptionsMakeSwipeback.addGap();
            ItemOptions.addAlbumsItemOptions(itemOptionsMakeSwipeback, getStoriesController().getStoryAlbumsList(this.dialog_id), hashSet, true, new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda42
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onItemLongClick$56(storyItem, itemOptionsMakeOptions);
                }
            }, new Utilities.Callback() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda43
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$onItemLongClick$57(hashSet, storyItem, itemOptionsMakeOptions, (StoriesController.StoryAlbum) obj);
                }
            });
            itemOptionsMakeOptions.add(C2807R.drawable.menu_album_add, LocaleController.getString(C2807R.string.StoriesAlbumAddToAlbum), new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda44
                @Override // java.lang.Runnable
                public final void run() {
                    itemOptionsMakeOptions.openSwipeback(itemOptionsMakeSwipeback);
                }
            });
            itemOptionsMakeOptions.addGap();
            itemOptionsMakeOptions.add(C2807R.drawable.msg_select, LocaleController.getString(C2807R.string.StoriesAlbumMenuSelect), new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda45
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onItemLongClick$59(messageObject, view, i);
                }
            });
            if (zIsStoryAlbumPageType) {
                final int iStoryAlbums_getAlbumIdByTabType = storyAlbums_getAlbumIdByTabType(getClosestTab());
                final String albumName = getStoriesController().getAlbumName(this.dialog_id, iStoryAlbums_getAlbumIdByTabType);
                itemOptionsMakeOptions.add(C2807R.drawable.tabs_reorder, LocaleController.getString(C2807R.string.StoriesAlbumMenuReorder), new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda46
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onItemLongClick$60(iStoryAlbums_getAlbumIdByTabType);
                    }
                });
                itemOptionsMakeOptions.add(C2807R.drawable.msg_removefolder, LocaleController.getString(C2807R.string.StoriesAlbumMenuRemoveFromAlbum), new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda47
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onItemLongClick$62(iStoryAlbums_getAlbumIdByTabType, storyItem, albumName);
                    }
                });
            } else {
                if (getClosestTab() == 8 && (storiesAdapter = this.storiesAdapter) != null && (storiesList = storiesAdapter.storiesList) != null) {
                    if (storiesList.isPinned(storyItem.id)) {
                        itemOptionsMakeOptions.add(C2807R.drawable.chats_unpin, LocaleController.getString(C2807R.string.StoriesAlbumMenuUnpin), new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda48
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$onItemLongClick$63(storyItem);
                            }
                        });
                    } else {
                        itemOptionsMakeOptions.add(C2807R.drawable.chats_pin, LocaleController.getString(C2807R.string.StoriesAlbumMenuPin), new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda49
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$onItemLongClick$64(storyItem);
                            }
                        });
                    }
                }
                itemOptionsMakeOptions.add(C2807R.drawable.msg_archive, LocaleController.getString(C2807R.string.StoriesAlbumMenuArchive), new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda50
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onItemLongClick$65(storyItem);
                    }
                });
            }
            itemOptionsMakeOptions.add(C2807R.drawable.msg_delete, (CharSequence) LocaleController.getString(C2807R.string.Delete), true, new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda41
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onItemLongClick$68(storyItem);
                }
            });
            itemOptionsMakeOptions.setGravity(3);
            itemOptionsMakeOptions.setBlur(true);
            itemOptionsMakeOptions.allowMoveScrim();
            itemOptionsMakeOptions.allowMoveScrimGravity(3);
            Point point = AndroidUtilities.displaySize;
            Point point2 = AndroidUtilities.displaySize;
            int iMin = Math.min((int) (Math.min(point.x, point.y) * 0.6777f), (int) (((Math.max(point2.x, point2.y) * 0.4333f) * 3.0f) / 4.0f));
            itemOptionsMakeOptions.animateToSize(iMin, (iMin * 4) / 3);
            itemOptionsMakeOptions.setDrawScrim(true);
            itemOptionsMakeOptions.hideScrimUnder();
            itemOptionsMakeOptions.forceBottom(true);
            itemOptionsMakeOptions.show();
            return true;
        }
        this.selectedFiles[messageObject.getDialogId() == this.dialog_id ? (char) 0 : (char) 1].put(messageObject.getId(), messageObject);
        if (!messageObject.canDeleteMessage(false, null)) {
            this.cantDeleteMessagesCount++;
        }
        this.deleteItem.setVisibility(this.cantDeleteMessagesCount == 0 ? 0 : 8);
        ActionBarMenuItem actionBarMenuItem = this.gotoItem;
        if (actionBarMenuItem != null) {
            actionBarMenuItem.setVisibility((getClosestTab() == 8 || getClosestTab() == 13 || getClosestTab() == 14) ? 8 : 0);
        }
        ActionBarMenuItem actionBarMenuItem2 = this.forwardItem;
        if (actionBarMenuItem2 != null) {
            if (getClosestTab() != 8 && getClosestTab() != 13 && getClosestTab() != 14) {
                i2 = 0;
            }
            actionBarMenuItem2.setVisibility(i2);
        }
        this.selectedMessagesCountTextView.setNumber(1, false);
        AnimatorSet animatorSet = new AnimatorSet();
        ArrayList arrayList2 = new ArrayList();
        for (int i3 = 0; i3 < this.actionModeViews.size(); i3++) {
            View view2 = this.actionModeViews.get(i3);
            AndroidUtilities.clearDrawableAnimation(view2);
            arrayList2.add(ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.SCALE_Y, 0.1f, 1.0f));
        }
        animatorSet.playTogether(arrayList2);
        animatorSet.setDuration(250L);
        animatorSet.start();
        this.scrolling = false;
        if (view instanceof SharedDocumentCell) {
            ((SharedDocumentCell) view).setChecked(true, true);
        } else if (view instanceof SharedPhotoVideoCell) {
            ((SharedPhotoVideoCell) view).setChecked(i, true, true);
        } else if (view instanceof SharedLinkCell) {
            ((SharedLinkCell) view).setChecked(true, true);
        } else if (view instanceof SharedAudioCell) {
            ((SharedAudioCell) view).setChecked(true, true);
        } else if (view instanceof ContextLinkCell) {
            ((ContextLinkCell) view).setChecked(true, true);
        } else if (view instanceof SharedPhotoVideoCell2) {
            ((SharedPhotoVideoCell2) view).setChecked(true, true);
        }
        if (!this.isActionModeShowed) {
            showActionMode(true);
        }
        onActionModeSelectedUpdate(this.selectedFiles[0]);
        updateForwardItem();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onItemLongClick$56(final TL_stories.StoryItem storyItem, ItemOptions itemOptions) {
        AlertsCreator.createStoriesAlbumEnterNameForCreate(getContext(), null, this.resourcesProvider, new MessagesStorage.StringCallback() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda69
            @Override // org.telegram.messenger.MessagesStorage.StringCallback
            public final void run(String str) {
                this.f$0.lambda$onItemLongClick$55(storyItem, str);
            }
        });
        itemOptions.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onItemLongClick$55(final TL_stories.StoryItem storyItem, String str) {
        getStoriesController().createAlbum(this.dialog_id, str, new Utilities.Callback() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda81
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$onItemLongClick$54(storyItem, (StoriesController.StoryAlbum) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onItemLongClick$54(TL_stories.StoryItem storyItem, StoriesController.StoryAlbum storyAlbum) {
        getStoriesController().addStoryToAlbum(this.dialog_id, storyAlbum.album_id, storyItem);
        onStoryAlbumCreate(storyAlbum);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onItemLongClick$57(HashSet hashSet, TL_stories.StoryItem storyItem, ItemOptions itemOptions, StoriesController.StoryAlbum storyAlbum) {
        String string;
        if (hashSet.contains(Integer.valueOf(storyAlbum.album_id))) {
            getStoriesController().addStoryToAlbum(this.dialog_id, storyAlbum.album_id, storyItem);
            string = LocaleController.formatString(C2807R.string.StoryAddedToAlbumX, storyAlbum.title);
        } else {
            getStoriesController().removeStoryFromAlbum(this.dialog_id, storyAlbum.album_id, storyItem);
            string = LocaleController.formatString(C2807R.string.StoryRemovedFromAlbumX, storyAlbum.title);
        }
        BulletinFactory.of(this.profileActivity).createSimpleBulletin(C2807R.raw.contact_check, AndroidUtilities.replaceTags(string)).show();
        itemOptions.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onItemLongClick$59(MessageObject messageObject, View view, int i) {
        onItemLongClick(messageObject, view, i, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onItemLongClick$61(int i, TL_stories.StoryItem storyItem) {
        getStoriesController().addStoryToAlbum(this.dialog_id, i, storyItem);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onItemLongClick$62(final int i, final TL_stories.StoryItem storyItem, String str) {
        Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda65
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onItemLongClick$61(i, storyItem);
            }
        };
        getStoriesController().removeStoryFromAlbum(this.dialog_id, i, storyItem);
        BulletinFactory.of(this.profileActivity).createSimpleBulletin(C2807R.raw.chats_archived, AndroidUtilities.replaceTags(LocaleController.formatPluralString("StoryRemovedFromAlbumTitle", 1, str)), LocaleController.getString(C2807R.string.UndoNoCaps), runnable).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onItemLongClick$63(TL_stories.StoryItem storyItem) {
        pinOnUnpinStories(new ArrayList<>(Collections.singletonList(Integer.valueOf(storyItem.id))), false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onItemLongClick$64(TL_stories.StoryItem storyItem) {
        pinOnUnpinStories(new ArrayList<>(Collections.singletonList(Integer.valueOf(storyItem.id))), true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onItemLongClick$65(TL_stories.StoryItem storyItem) {
        getStoriesController().updateStoriesPinned(this.dialog_id, new ArrayList<>(Collections.singletonList(storyItem)), false, null);
        BulletinFactory.of(this.profileActivity).createSimpleBulletin(C2807R.raw.chats_archived, LocaleController.formatPluralString("StoryArchived", 1, new Object[0]), 5000).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onItemLongClick$68(final TL_stories.StoryItem storyItem) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext(), this.resourcesProvider);
        builder.setTitle(LocaleController.getString(C2807R.string.DeleteStoryTitle));
        builder.setMessage(LocaleController.formatPluralString("DeleteStoriesSubtitle", 1, new Object[0]));
        builder.setPositiveButton(LocaleController.getString(C2807R.string.Delete), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda70
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                this.f$0.lambda$onItemLongClick$66(storyItem, alertDialog, i);
            }
        });
        builder.setNegativeButton(LocaleController.getString(C2807R.string.Cancel), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda71
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                alertDialog.dismiss();
            }
        });
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.show();
        alertDialogCreate.redPositive();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onItemLongClick$66(TL_stories.StoryItem storyItem, AlertDialog alertDialog, int i) {
        ArrayList<TL_stories.StoryItem> arrayList = new ArrayList<>(1);
        arrayList.add(storyItem);
        this.profileActivity.getMessagesController().getStoriesController().deleteStories(this.dialog_id, arrayList);
        BulletinFactory.of(this.profileActivity).createSimpleBulletin(C2807R.raw.ic_delete, LocaleController.formatPluralString("StoriesDeleted", 1, new Object[0])).show();
        closeActionMode(false);
    }

    private void parseMarkdownAsync(final MessageObject messageObject) {
        BaseFragment baseFragment = this.profileActivity;
        if (baseFragment == null || baseFragment.getParentActivity() == null) {
            return;
        }
        final AlertDialog alertDialog = new AlertDialog(this.profileActivity.getParentActivity(), 3, this.profileActivity.getResourceProvider());
        alertDialog.setCanceledOnTouchOutside(false);
        final boolean[] zArr = {false};
        alertDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda67
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                SharedMediaLayout.m14457$r8$lambda$G6Awdk7c2tTwIZ4XdiXDN3z9nI(zArr, dialogInterface);
            }
        });
        alertDialog.showDelayed(150L);
        new Thread(new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda68
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$parseMarkdownAsync$71(messageObject, alertDialog, zArr);
            }
        }).start();
    }

    /* JADX INFO: renamed from: $r8$lambda$G6Awdk7c2tTwI-Z4XdiXDN3z9nI, reason: not valid java name */
    public static /* synthetic */ void m14457$r8$lambda$G6Awdk7c2tTwIZ4XdiXDN3z9nI(boolean[] zArr, DialogInterface dialogInterface) {
        zArr[0] = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$parseMarkdownAsync$71(final MessageObject messageObject, final AlertDialog alertDialog, final boolean[] zArr) {
        final TLRPC.WebPage webPageFromMarkdown;
        Throwable th = null;
        try {
            webPageFromMarkdown = MarkdownParser.fromMarkdown(messageObject);
        } catch (Throwable th2) {
            FileLog.m1040e(th2);
            webPageFromMarkdown = null;
            th = th2;
        }
        final boolean z = th == null && webPageFromMarkdown != null;
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda77
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$parseMarkdownAsync$70(alertDialog, zArr, z, messageObject, webPageFromMarkdown);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$parseMarkdownAsync$70(AlertDialog alertDialog, boolean[] zArr, boolean z, MessageObject messageObject, TLRPC.WebPage webPage) {
        try {
            alertDialog.dismiss();
        } catch (Throwable unused) {
        }
        if (zArr[0]) {
            return;
        }
        if (z) {
            TLRPC.MessageMedia messageMedia = messageObject.messageOwner.media;
            if (messageMedia != null) {
                messageMedia.webpage = webPage;
            }
            this.profileActivity.createArticleViewer(false).open(messageObject);
            return;
        }
        AndroidUtilities.openDocument(messageObject, this.profileActivity.getParentActivity(), this.profileActivity);
    }

    private void onItemClick(int i, View view, MessageObject messageObject, int i2, int i3) {
        if (messageObject == null || this.photoVideoChangeColumnsAnimation) {
            return;
        }
        ProfileStoriesCollectionTabs profileStoriesCollectionTabs = this.storiesContainer;
        if (profileStoriesCollectionTabs == null || !profileStoriesCollectionTabs.isReordering()) {
            String link = null;
            link = null;
            int iDp = 0;
            iDp = 0;
            if (this.isActionModeShowed) {
                int i4 = 8;
                if (i3 == 8 && !canEditStories()) {
                    return;
                }
                char c2 = messageObject.getDialogId() == this.dialog_id ? (char) 0 : (char) 1;
                int iIndexOfKey = this.selectedFiles[c2].indexOfKey(messageObject.getId());
                SparseArray<MessageObject>[] sparseArrayArr = this.selectedFiles;
                if (iIndexOfKey >= 0) {
                    sparseArrayArr[c2].remove(messageObject.getId());
                    if (!messageObject.canDeleteMessage(false, null)) {
                        this.cantDeleteMessagesCount--;
                    }
                } else {
                    if (sparseArrayArr[0].size() + this.selectedFiles[1].size() >= 100) {
                        return;
                    }
                    this.selectedFiles[c2].put(messageObject.getId(), messageObject);
                    if (!messageObject.canDeleteMessage(false, null)) {
                        this.cantDeleteMessagesCount++;
                    }
                }
                onActionModeSelectedUpdate(this.selectedFiles[0]);
                if (this.selectedFiles[0].size() == 0 && this.selectedFiles[1].size() == 0) {
                    showActionMode(false);
                } else {
                    this.selectedMessagesCountTextView.setNumber(this.selectedFiles[0].size() + this.selectedFiles[1].size(), true);
                    this.deleteItem.setVisibility(this.cantDeleteMessagesCount == 0 ? 0 : 8);
                    ActionBarMenuItem actionBarMenuItem = this.gotoItem;
                    if (actionBarMenuItem != null) {
                        actionBarMenuItem.setVisibility((getClosestTab() == 8 || getClosestTab() == 13 || getClosestTab() == 14 || this.selectedFiles[0].size() != 1) ? 8 : 0);
                    }
                    ActionBarMenuItem actionBarMenuItem2 = this.forwardItem;
                    if (actionBarMenuItem2 != null) {
                        if (getClosestTab() != 8 && getClosestTab() != 13 && getClosestTab() != 14) {
                            i4 = 0;
                        }
                        actionBarMenuItem2.setVisibility(i4);
                    }
                    updateStoriesPinButton();
                }
                this.scrolling = false;
                if (view instanceof SharedDocumentCell) {
                    ((SharedDocumentCell) view).setChecked(this.selectedFiles[c2].indexOfKey(messageObject.getId()) >= 0, true);
                } else if (view instanceof SharedPhotoVideoCell) {
                    ((SharedPhotoVideoCell) view).setChecked(i2, this.selectedFiles[c2].indexOfKey(messageObject.getId()) >= 0, true);
                } else if (view instanceof SharedLinkCell) {
                    ((SharedLinkCell) view).setChecked(this.selectedFiles[c2].indexOfKey(messageObject.getId()) >= 0, true);
                } else if (view instanceof SharedAudioCell) {
                    ((SharedAudioCell) view).setChecked(this.selectedFiles[c2].indexOfKey(messageObject.getId()) >= 0, true);
                } else if (view instanceof ContextLinkCell) {
                    ((ContextLinkCell) view).setChecked(this.selectedFiles[c2].indexOfKey(messageObject.getId()) >= 0, true);
                } else if (view instanceof SharedPhotoVideoCell2) {
                    ((SharedPhotoVideoCell2) view).setChecked(this.selectedFiles[c2].indexOfKey(messageObject.getId()) >= 0, true);
                }
            } else if (i3 == 0) {
                int i5 = i - this.sharedMediaData[i3].startOffset;
                if (i5 >= 0 && i5 < this.sharedMediaData[i3].messages.size()) {
                    PhotoViewer.getInstance().setParentActivity(this.profileActivity);
                    PhotoViewer.getInstance().openPhoto(this.sharedMediaData[i3].messages, i5, this.dialog_id, this.mergeDialogId, this.topicId, this.provider);
                }
            } else if (i3 == 2 || i3 == 4) {
                if (view instanceof SharedAudioCell) {
                    ((SharedAudioCell) view).didPressedButton();
                }
            } else if (i3 == 5) {
                PhotoViewer.getInstance().setParentActivity(this.profileActivity);
                int iIndexOf = this.sharedMediaData[i3].messages.indexOf(messageObject);
                if (iIndexOf < 0) {
                    ArrayList<MessageObject> arrayList = new ArrayList<>();
                    arrayList.add(messageObject);
                    PhotoViewer.getInstance().openPhoto(arrayList, 0, 0L, 0L, 0L, this.provider);
                } else {
                    PhotoViewer.getInstance().openPhoto(this.sharedMediaData[i3].messages, iIndexOf, this.dialog_id, this.mergeDialogId, this.topicId, this.provider);
                }
            } else if (i3 == 1) {
                if (view instanceof SharedDocumentCell) {
                    SharedDocumentCell sharedDocumentCell = (SharedDocumentCell) view;
                    TLRPC.Document document = messageObject.getDocument();
                    if (sharedDocumentCell.isLoaded()) {
                        if (ExteraFileHandler.open(this.profileActivity, messageObject)) {
                            return;
                        }
                        if (messageObject.canPreviewDocument()) {
                            PhotoViewer.getInstance().setParentActivity(this.profileActivity);
                            int iIndexOf2 = this.sharedMediaData[i3].messages.indexOf(messageObject);
                            if (iIndexOf2 < 0) {
                                ArrayList<MessageObject> arrayList2 = new ArrayList<>();
                                arrayList2.add(messageObject);
                                PhotoViewer.getInstance().openPhoto(arrayList2, 0, 0L, 0L, 0L, this.provider);
                                return;
                            }
                            PhotoViewer.getInstance().openPhoto(this.sharedMediaData[i3].messages, iIndexOf2, this.dialog_id, this.mergeDialogId, this.topicId, this.provider);
                            return;
                        }
                        if (MarkdownParser.isMarkdown(messageObject)) {
                            parseMarkdownAsync(messageObject);
                            return;
                        }
                        AndroidUtilities.openDocument(messageObject, this.profileActivity.getParentActivity(), this.profileActivity);
                    } else if (!sharedDocumentCell.isLoading()) {
                        MessageObject message = sharedDocumentCell.getMessage();
                        message.putInDownloadsStore = true;
                        this.profileActivity.getFileLoader().loadFile(document, message, 0, 0);
                        sharedDocumentCell.updateFileExistIcon(true);
                    } else {
                        this.profileActivity.getFileLoader().cancelLoadFile(document);
                        sharedDocumentCell.updateFileExistIcon(true);
                    }
                }
            } else if (i3 == 3) {
                try {
                    TLRPC.WebPage webPage = MessageObject.getMedia(messageObject.messageOwner) != null ? MessageObject.getMedia(messageObject.messageOwner).webpage : null;
                    if (webPage != null && !(webPage instanceof TLRPC.TL_webPageEmpty)) {
                        if (webPage.cached_page != null) {
                            LaunchActivity launchActivity = LaunchActivity.instance;
                            if (launchActivity == null || launchActivity.getBottomSheetTabs() == null || LaunchActivity.instance.getBottomSheetTabs().tryReopenTab(messageObject) == null) {
                                this.profileActivity.createArticleViewer(false).open(messageObject);
                                return;
                            }
                            return;
                        }
                        String str = webPage.embed_url;
                        if (str != null && str.length() != 0) {
                            openWebView(webPage, messageObject);
                            return;
                        }
                        link = webPage.url;
                    }
                    if (link == null) {
                        link = ((SharedLinkCell) view).getLink(0);
                    }
                    if (link != null) {
                        openUrl(link);
                    }
                } catch (Exception e) {
                    FileLog.m1040e(e);
                }
            } else if (isAnyStoryPageType(i3)) {
                StoriesAdapter storiesAdapterStoryAlbums_getStoriesAdapterByTabType = storyAlbums_getStoriesAdapterByTabType(i3);
                final StoriesController.StoriesList storiesList = storiesAdapterStoryAlbums_getStoriesAdapterByTabType != null ? storiesAdapterStoryAlbums_getStoriesAdapterByTabType.storiesList : null;
                if (storiesList == null) {
                    return;
                }
                StoryViewer orCreateStoryViewer = this.profileActivity.getOrCreateStoryViewer();
                Context context = getContext();
                int id = messageObject.getId();
                StoriesListPlaceProvider storiesListPlaceProviderWith = StoriesListPlaceProvider.of(this.mediaPages[i2].listView).with(new StoriesListPlaceProvider.LoadNextInterface() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda56
                    @Override // org.telegram.ui.Stories.StoriesListPlaceProvider.LoadNextInterface
                    public final void loadNext(boolean z) {
                        SharedMediaLayout.$r8$lambda$XwjspRaojwZ1j_a50Ifuf4pXHOI(storiesList, z);
                    }
                });
                BaseFragment baseFragment = this.profileActivity;
                if ((baseFragment instanceof ProfileActivity) && ((ProfileActivity) baseFragment).myProfile) {
                    iDp = AndroidUtilities.dp(68.0f);
                }
                orCreateStoryViewer.open(context, id, storiesList, storiesListPlaceProviderWith.addBottomClip(iDp));
            }
            updateForwardItem();
        }
    }

    public static /* synthetic */ void $r8$lambda$XwjspRaojwZ1j_a50Ifuf4pXHOI(StoriesController.StoriesList storiesList, boolean z) {
        if (z) {
            storiesList.load(false, 30);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openUrl(String str) {
        boolean zShouldShowUrlInAlert = AndroidUtilities.shouldShowUrlInAlert(str);
        BaseFragment baseFragment = this.profileActivity;
        if (zShouldShowUrlInAlert) {
            AlertsCreator.showOpenUrlAlert(baseFragment, str, true, true);
        } else {
            Browser.openUrl(baseFragment.getParentActivity(), str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openWebView(TLRPC.WebPage webPage, MessageObject messageObject) {
        EmbedBottomSheet.show(this.profileActivity, messageObject, this.provider, webPage.site_name, webPage.description, webPage.url, webPage.embed_url, webPage.embed_width, webPage.embed_height, false);
    }

    private void recycleAdapter(RecyclerView.Adapter adapter) {
        if (adapter instanceof SharedPhotoVideoAdapter) {
            this.cellCache.addAll(this.cache);
            this.cache.clear();
        } else if (adapter == this.audioAdapter) {
            this.audioCellCache.addAll(this.audioCache);
            this.audioCache.clear();
        } else {
            PollAdapter pollAdapter = this.pollAdapter;
            if (adapter == pollAdapter) {
                pollAdapter.listView = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fixLayoutInternal(int i) {
        ((WindowManager) ApplicationLoader.applicationContext.getSystemService("window")).getDefaultDisplay().getRotation();
        if (i == 0) {
            if (!AndroidUtilities.isTablet() && ApplicationLoader.applicationContext.getResources().getConfiguration().orientation == 2) {
                this.selectedMessagesCountTextView.setTextSize(18);
            } else {
                this.selectedMessagesCountTextView.setTextSize(20);
            }
        }
        if (i == 0) {
            this.photoVideoAdapter.notifyDataSetChanged();
        }
    }

    /* JADX INFO: renamed from: org.telegram.ui.Components.SharedMediaLayout$49, reason: invalid class name */
    public class AnonymousClass49 implements SharedLinkCell.SharedLinkCellDelegate {
        public AnonymousClass49() {
        }

        @Override // org.telegram.ui.Cells.SharedLinkCell.SharedLinkCellDelegate
        public void needOpenWebView(TLRPC.WebPage webPage, MessageObject messageObject) {
            SharedMediaLayout.this.openWebView(webPage, messageObject);
        }

        @Override // org.telegram.ui.Cells.SharedLinkCell.SharedLinkCellDelegate
        public boolean canPerformActions() {
            return !SharedMediaLayout.this.isActionModeShowed;
        }

        @Override // org.telegram.ui.Cells.SharedLinkCell.SharedLinkCellDelegate
        public void onLinkPress(final String str, boolean z) {
            if (z) {
                BottomSheet.Builder builder = new BottomSheet.Builder(SharedMediaLayout.this.profileActivity.getParentActivity());
                builder.setTitle(str);
                builder.setItems(new CharSequence[]{LocaleController.getString("Open", C2807R.string.Open), LocaleController.getString("Copy", C2807R.string.Copy)}, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.SharedMediaLayout$49$$ExternalSyntheticLambda0
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        this.f$0.lambda$onLinkPress$0(str, dialogInterface, i);
                    }
                });
                SharedMediaLayout.this.profileActivity.showDialog(builder.create());
                return;
            }
            SharedMediaLayout.this.openUrl(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onLinkPress$0(String str, DialogInterface dialogInterface, int i) {
            if (i == 0) {
                SharedMediaLayout.this.openUrl(str);
                return;
            }
            if (i == 1) {
                if (str.startsWith("mailto:")) {
                    str = str.substring(7);
                } else if (str.startsWith("tel:")) {
                    str = str.substring(4);
                }
                AndroidUtilities.addToClipboard(str);
            }
        }
    }

    public class SharedLinksAdapter extends RecyclerListView.SectionsAdapter {
        private Context mContext;

        @Override // org.telegram.ui.Components.RecyclerListView.SectionsAdapter
        public Object getItem(int i, int i2) {
            return null;
        }

        @Override // org.telegram.ui.Components.RecyclerListView.FastScrollAdapter
        public String getLetter(int i) {
            return null;
        }

        public SharedLinksAdapter(Context context) {
            this.mContext = context;
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SectionsAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder, int i, int i2) {
            if (SharedMediaLayout.this.sharedMediaData[3].sections.size() != 0 || SharedMediaLayout.this.sharedMediaData[3].loading) {
                return i == 0 || i2 != 0;
            }
            return false;
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SectionsAdapter
        public int getSectionCount() {
            int i = 1;
            if (SharedMediaLayout.this.sharedMediaData[3].sections.size() == 0 && !SharedMediaLayout.this.sharedMediaData[3].loading) {
                return 1;
            }
            int size = SharedMediaLayout.this.sharedMediaData[3].sections.size();
            if (SharedMediaLayout.this.sharedMediaData[3].sections.isEmpty() || (SharedMediaLayout.this.sharedMediaData[3].endReached[0] && SharedMediaLayout.this.sharedMediaData[3].endReached[1])) {
                i = 0;
            }
            return size + i;
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SectionsAdapter
        public int getCountForSection(int i) {
            if ((SharedMediaLayout.this.sharedMediaData[3].sections.size() != 0 || SharedMediaLayout.this.sharedMediaData[3].loading) && i < SharedMediaLayout.this.sharedMediaData[3].sections.size()) {
                return SharedMediaLayout.this.sharedMediaData[3].sectionArrays.get(SharedMediaLayout.this.sharedMediaData[3].sections.get(i)).size() + (i == 0 ? 0 : 1);
            }
            return 1;
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SectionsAdapter
        public View getSectionHeaderView(int i, View view) {
            if (view == null) {
                view = new GraySectionCell(this.mContext, 28, SharedMediaLayout.this.resourcesProvider);
            }
            if (i == 0) {
                view.setAlpha(0.0f);
                return view;
            }
            if (i < SharedMediaLayout.this.sharedMediaData[3].sections.size()) {
                view.setAlpha(1.0f);
                ((GraySectionCell) view).setText(LocaleController.formatSectionDate(SharedMediaLayout.this.sharedMediaData[3].sectionArrays.get(SharedMediaLayout.this.sharedMediaData[3].sections.get(i)).get(0).messageOwner.date));
            }
            return view;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View graySectionCell;
            if (i == 3) {
                graySectionCell = new GraySectionCell(this.mContext, 28, SharedMediaLayout.this.resourcesProvider);
            } else if (i == 4) {
                SharedLinkCell sharedLinkCell = new SharedLinkCell(this.mContext, 0, SharedMediaLayout.this.resourcesProvider);
                sharedLinkCell.setDelegate(SharedMediaLayout.this.sharedLinkCellDelegate);
                graySectionCell = sharedLinkCell;
            } else {
                if (i == 5) {
                    View viewCreateEmptyStubView = SharedMediaLayout.createEmptyStubView(this.mContext, 3, SharedMediaLayout.this.dialog_id, SharedMediaLayout.this.resourcesProvider);
                    viewCreateEmptyStubView.setLayoutParams(new RecyclerView.LayoutParams(-1, -1));
                    return new RecyclerListView.Holder(viewCreateEmptyStubView);
                }
                FlickerLoadingView flickerLoadingView = new FlickerLoadingView(this.mContext, SharedMediaLayout.this.resourcesProvider);
                flickerLoadingView.setIsSingleCell(true);
                flickerLoadingView.showDate(false);
                flickerLoadingView.setViewType(5);
                graySectionCell = flickerLoadingView;
            }
            graySectionCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            return new RecyclerListView.Holder(graySectionCell);
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SectionsAdapter
        public void onBindViewHolder(int i, int i2, RecyclerView.ViewHolder viewHolder) {
            if (viewHolder.getItemViewType() == 6 || viewHolder.getItemViewType() == 5) {
                return;
            }
            ArrayList<MessageObject> arrayList = SharedMediaLayout.this.sharedMediaData[3].sectionArrays.get(SharedMediaLayout.this.sharedMediaData[3].sections.get(i));
            int itemViewType = viewHolder.getItemViewType();
            if (itemViewType == 3) {
                MessageObject messageObject = arrayList.get(0);
                View view = viewHolder.itemView;
                if (view instanceof GraySectionCell) {
                    ((GraySectionCell) view).setText(LocaleController.formatSectionDate(messageObject.messageOwner.date));
                    return;
                }
                return;
            }
            if (itemViewType != 4) {
                return;
            }
            if (i != 0) {
                i2--;
            }
            if (!(viewHolder.itemView instanceof SharedLinkCell) || i2 < 0 || i2 >= arrayList.size()) {
                return;
            }
            SharedLinkCell sharedLinkCell = (SharedLinkCell) viewHolder.itemView;
            MessageObject messageObject2 = arrayList.get(i2);
            sharedLinkCell.setLink(messageObject2, i2 != arrayList.size() - 1 || (i == SharedMediaLayout.this.sharedMediaData[3].sections.size() - 1 && SharedMediaLayout.this.sharedMediaData[3].loading));
            SharedMediaLayout sharedMediaLayout = SharedMediaLayout.this;
            if (sharedMediaLayout.isActionModeShowed) {
                sharedLinkCell.setChecked(sharedMediaLayout.selectedFiles[(messageObject2.getDialogId() > SharedMediaLayout.this.dialog_id ? 1 : (messageObject2.getDialogId() == SharedMediaLayout.this.dialog_id ? 0 : -1)) == 0 ? (char) 0 : (char) 1].indexOfKey(messageObject2.getId()) >= 0, !SharedMediaLayout.this.scrolling);
            } else {
                sharedLinkCell.setChecked(false, !sharedMediaLayout.scrolling);
            }
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SectionsAdapter
        public int getItemViewType(int i, int i2) {
            if (SharedMediaLayout.this.sharedMediaData[3].sections.size() == 0 && !SharedMediaLayout.this.sharedMediaData[3].loading) {
                return 5;
            }
            if (i < SharedMediaLayout.this.sharedMediaData[3].sections.size()) {
                return (i == 0 || i2 != 0) ? 4 : 3;
            }
            return 6;
        }

        @Override // org.telegram.ui.Components.RecyclerListView.FastScrollAdapter
        public void getPositionForScrollProgress(RecyclerListView recyclerListView, float f, int[] iArr) {
            iArr[0] = 0;
            iArr[1] = 0;
        }
    }

    public class SharedDocumentsAdapter extends RecyclerListView.FastScrollAdapter {
        private int currentType;
        private boolean inFastScrollMode;
        private Context mContext;

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return true;
        }

        public SharedDocumentsAdapter(Context context, int i) {
            this.mContext = context;
            this.currentType = i;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            boolean z = SharedMediaLayout.this.sharedMediaData[this.currentType].loadingAfterFastScroll;
            SharedMediaLayout sharedMediaLayout = SharedMediaLayout.this;
            if (z) {
                return sharedMediaLayout.sharedMediaData[this.currentType].getTotalCount();
            }
            if (sharedMediaLayout.sharedMediaData[this.currentType].messages.size() == 0 && !SharedMediaLayout.this.sharedMediaData[this.currentType].loading) {
                return 1;
            }
            if (SharedMediaLayout.this.sharedMediaData[this.currentType].messages.size() == 0 && ((!SharedMediaLayout.this.sharedMediaData[this.currentType].endReached[0] || !SharedMediaLayout.this.sharedMediaData[this.currentType].endReached[1]) && SharedMediaLayout.this.sharedMediaData[this.currentType].startReached)) {
                return 0;
            }
            int totalCount = SharedMediaLayout.this.sharedMediaData[this.currentType].getTotalCount();
            SharedMediaLayout sharedMediaLayout2 = SharedMediaLayout.this;
            if (totalCount == 0) {
                int startOffset = sharedMediaLayout2.sharedMediaData[this.currentType].getStartOffset() + SharedMediaLayout.this.sharedMediaData[this.currentType].getMessages().size();
                return startOffset != 0 ? (SharedMediaLayout.this.sharedMediaData[this.currentType].endReached[0] && SharedMediaLayout.this.sharedMediaData[this.currentType].endReached[1]) ? startOffset : SharedMediaLayout.this.sharedMediaData[this.currentType].getEndLoadingStubs() != 0 ? startOffset + SharedMediaLayout.this.sharedMediaData[this.currentType].getEndLoadingStubs() : startOffset + 1 : startOffset;
            }
            return Math.max(sharedMediaLayout2.sharedMediaData[this.currentType].getTotalCount(), SharedMediaLayout.this.sharedMediaData[this.currentType].getStartOffset() + SharedMediaLayout.this.sharedMediaData[this.currentType].getMessages().size());
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View view;
            View view2;
            int i2 = 0;
            if (i == 7) {
                SharedDocumentCell sharedDocumentCell = new SharedDocumentCell(this.mContext, 0, SharedMediaLayout.this.resourcesProvider);
                sharedDocumentCell.setGlobalGradientView(SharedMediaLayout.this.globalGradientView);
                view = sharedDocumentCell;
            } else if (i == 8) {
                FlickerLoadingView flickerLoadingView = new FlickerLoadingView(this.mContext, SharedMediaLayout.this.resourcesProvider);
                if (this.currentType == 2) {
                    flickerLoadingView.setViewType(4);
                } else {
                    flickerLoadingView.setViewType(3);
                }
                flickerLoadingView.showDate(false);
                flickerLoadingView.setIsSingleCell(true);
                flickerLoadingView.setGlobalGradientView(SharedMediaLayout.this.globalGradientView);
                view = flickerLoadingView;
            } else {
                if (i == 9) {
                    View viewCreateEmptyStubView = SharedMediaLayout.createEmptyStubView(this.mContext, this.currentType, SharedMediaLayout.this.dialog_id, SharedMediaLayout.this.resourcesProvider);
                    viewCreateEmptyStubView.setLayoutParams(new RecyclerView.LayoutParams(-1, -1));
                    return new RecyclerListView.Holder(viewCreateEmptyStubView);
                }
                if (this.currentType == 4 && !SharedMediaLayout.this.audioCellCache.isEmpty()) {
                    View view3 = (View) SharedMediaLayout.this.audioCellCache.get(0);
                    SharedMediaLayout.this.audioCellCache.remove(0);
                    ViewGroup viewGroup2 = (ViewGroup) view3.getParent();
                    view2 = view3;
                    if (viewGroup2 != null) {
                        viewGroup2.removeView(view3);
                        view2 = view3;
                    }
                } else {
                    view2 = new SharedAudioCell(this.mContext, i2, SharedMediaLayout.this.resourcesProvider) { // from class: org.telegram.ui.Components.SharedMediaLayout.SharedDocumentsAdapter.1
                        @Override // org.telegram.ui.Cells.SharedAudioCell
                        public boolean needPlayMessage(MessageObject messageObject) {
                            if (messageObject.isVoice() || messageObject.isRoundVideo()) {
                                boolean zPlayMessage = MediaController.getInstance().playMessage(messageObject);
                                MediaController.getInstance().setVoiceMessagesPlaylist(zPlayMessage ? SharedMediaLayout.this.sharedMediaData[SharedDocumentsAdapter.this.currentType].messages : null, false);
                                return zPlayMessage;
                            }
                            if (messageObject.isMusic()) {
                                return MediaController.getInstance().setPlaylist(SharedMediaLayout.this.sharedMediaData[SharedDocumentsAdapter.this.currentType].messages, messageObject, SharedMediaLayout.this.mergeDialogId);
                            }
                            return false;
                        }
                    };
                }
                SharedAudioCell sharedAudioCell = (SharedAudioCell) view2;
                sharedAudioCell.setGlobalGradientView(SharedMediaLayout.this.globalGradientView);
                view = view2;
                if (this.currentType == 4) {
                    SharedMediaLayout.this.audioCache.add(sharedAudioCell);
                    view = view2;
                }
            }
            view.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            return new RecyclerListView.Holder(view);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            ArrayList<MessageObject> arrayList = SharedMediaLayout.this.sharedMediaData[this.currentType].messages;
            int itemViewType = viewHolder.getItemViewType();
            if (itemViewType == 7) {
                View view = viewHolder.itemView;
                if (view instanceof SharedDocumentCell) {
                    SharedDocumentCell sharedDocumentCell = (SharedDocumentCell) view;
                    MessageObject messageObject = arrayList.get(i - SharedMediaLayout.this.sharedMediaData[this.currentType].startOffset);
                    sharedDocumentCell.setDocument(messageObject, i != arrayList.size() - 1);
                    SharedMediaLayout sharedMediaLayout = SharedMediaLayout.this;
                    if (sharedMediaLayout.isActionModeShowed) {
                        sharedDocumentCell.setChecked(sharedMediaLayout.selectedFiles[(messageObject.getDialogId() > SharedMediaLayout.this.dialog_id ? 1 : (messageObject.getDialogId() == SharedMediaLayout.this.dialog_id ? 0 : -1)) == 0 ? (char) 0 : (char) 1].indexOfKey(messageObject.getId()) >= 0, !SharedMediaLayout.this.scrolling);
                        return;
                    } else {
                        sharedDocumentCell.setChecked(false, !sharedMediaLayout.scrolling);
                        return;
                    }
                }
                return;
            }
            if (itemViewType != 10) {
                return;
            }
            View view2 = viewHolder.itemView;
            if (view2 instanceof SharedAudioCell) {
                SharedAudioCell sharedAudioCell = (SharedAudioCell) view2;
                MessageObject messageObject2 = arrayList.get(i - SharedMediaLayout.this.sharedMediaData[this.currentType].startOffset);
                sharedAudioCell.setMessageObject(messageObject2, i != arrayList.size() - 1);
                SharedMediaLayout sharedMediaLayout2 = SharedMediaLayout.this;
                if (sharedMediaLayout2.isActionModeShowed) {
                    sharedAudioCell.setChecked(sharedMediaLayout2.selectedFiles[(messageObject2.getDialogId() > SharedMediaLayout.this.dialog_id ? 1 : (messageObject2.getDialogId() == SharedMediaLayout.this.dialog_id ? 0 : -1)) == 0 ? (char) 0 : (char) 1].indexOfKey(messageObject2.getId()) >= 0, !SharedMediaLayout.this.scrolling);
                } else {
                    sharedAudioCell.setChecked(false, !sharedMediaLayout2.scrolling);
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (SharedMediaLayout.this.sharedMediaData[this.currentType].sections.size() == 0 && !SharedMediaLayout.this.sharedMediaData[this.currentType].loading) {
                return 9;
            }
            if (i < SharedMediaLayout.this.sharedMediaData[this.currentType].startOffset || i >= SharedMediaLayout.this.sharedMediaData[this.currentType].startOffset + SharedMediaLayout.this.sharedMediaData[this.currentType].messages.size()) {
                return 8;
            }
            int i2 = this.currentType;
            return (i2 == 2 || i2 == 4) ? 10 : 7;
        }

        @Override // org.telegram.ui.Components.RecyclerListView.FastScrollAdapter
        public String getLetter(int i) {
            if (SharedMediaLayout.this.sharedMediaData[this.currentType].fastScrollPeriods == null) {
                return _UrlKt.FRAGMENT_ENCODE_SET;
            }
            ArrayList<Period> arrayList = SharedMediaLayout.this.sharedMediaData[this.currentType].fastScrollPeriods;
            if (arrayList.isEmpty()) {
                return _UrlKt.FRAGMENT_ENCODE_SET;
            }
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                if (i <= arrayList.get(i2).startOffset) {
                    return arrayList.get(i2).formatedDate;
                }
            }
            return arrayList.get(arrayList.size() - 1).formatedDate;
        }

        @Override // org.telegram.ui.Components.RecyclerListView.FastScrollAdapter
        public void getPositionForScrollProgress(RecyclerListView recyclerListView, float f, int[] iArr) {
            int measuredHeight = recyclerListView.getChildAt(0).getMeasuredHeight();
            float totalItemsCount = f * ((getTotalItemsCount() * measuredHeight) - (recyclerListView.getMeasuredHeight() - recyclerListView.getPaddingTop()));
            iArr[0] = (int) (totalItemsCount / measuredHeight);
            iArr[1] = ((int) totalItemsCount) % measuredHeight;
        }

        @Override // org.telegram.ui.Components.RecyclerListView.FastScrollAdapter
        public void onStartFastScroll() {
            this.inFastScrollMode = true;
            MediaPage mediaPage = SharedMediaLayout.this.getMediaPage(this.currentType);
            if (mediaPage != null) {
                SharedMediaLayout.showFastScrollHint(mediaPage, null, false);
            }
        }

        @Override // org.telegram.ui.Components.RecyclerListView.FastScrollAdapter
        public void onFinishFastScroll(RecyclerListView recyclerListView) {
            if (this.inFastScrollMode) {
                this.inFastScrollMode = false;
                if (recyclerListView != null) {
                    int messageId = 0;
                    for (int i = 0; i < recyclerListView.getChildCount() && (messageId = SharedMediaLayout.getMessageId(recyclerListView.getChildAt(i))) == 0; i++) {
                    }
                    if (messageId == 0) {
                        SharedMediaLayout.this.findPeriodAndJumpToDate(this.currentType, recyclerListView, true);
                    }
                }
            }
        }

        @Override // org.telegram.ui.Components.RecyclerListView.FastScrollAdapter
        public int getTotalItemsCount() {
            return SharedMediaLayout.this.sharedMediaData[this.currentType].getTotalCount();
        }
    }

    public static View createEmptyStubView(Context context, int i, long j, Theme.ResourcesProvider resourcesProvider) {
        EmptyStubView emptyStubView = new EmptyStubView(context, resourcesProvider);
        if (i == 0) {
            boolean zIsEncryptedDialog = DialogObject.isEncryptedDialog(j);
            TextView textView = emptyStubView.emptyTextView;
            if (zIsEncryptedDialog) {
                textView.setText(LocaleController.getString(C2807R.string.NoMediaSecret));
                return emptyStubView;
            }
            textView.setText(LocaleController.getString(C2807R.string.NoMedia));
            return emptyStubView;
        }
        if (i == 1) {
            boolean zIsEncryptedDialog2 = DialogObject.isEncryptedDialog(j);
            TextView textView2 = emptyStubView.emptyTextView;
            if (zIsEncryptedDialog2) {
                textView2.setText(LocaleController.getString(C2807R.string.NoSharedFilesSecret));
                return emptyStubView;
            }
            textView2.setText(LocaleController.getString(C2807R.string.NoSharedFiles));
            return emptyStubView;
        }
        if (i == 2) {
            boolean zIsEncryptedDialog3 = DialogObject.isEncryptedDialog(j);
            TextView textView3 = emptyStubView.emptyTextView;
            if (zIsEncryptedDialog3) {
                textView3.setText(LocaleController.getString(C2807R.string.NoSharedVoiceSecret));
                return emptyStubView;
            }
            textView3.setText(LocaleController.getString(C2807R.string.NoSharedVoice));
            return emptyStubView;
        }
        if (i == 3) {
            boolean zIsEncryptedDialog4 = DialogObject.isEncryptedDialog(j);
            TextView textView4 = emptyStubView.emptyTextView;
            if (zIsEncryptedDialog4) {
                textView4.setText(LocaleController.getString(C2807R.string.NoSharedLinksSecret));
                return emptyStubView;
            }
            textView4.setText(LocaleController.getString(C2807R.string.NoSharedLinks));
            return emptyStubView;
        }
        if (i == 4) {
            boolean zIsEncryptedDialog5 = DialogObject.isEncryptedDialog(j);
            TextView textView5 = emptyStubView.emptyTextView;
            if (zIsEncryptedDialog5) {
                textView5.setText(LocaleController.getString(C2807R.string.NoSharedAudioSecret));
                return emptyStubView;
            }
            textView5.setText(LocaleController.getString(C2807R.string.NoSharedAudio));
            return emptyStubView;
        }
        if (i == 5) {
            boolean zIsEncryptedDialog6 = DialogObject.isEncryptedDialog(j);
            TextView textView6 = emptyStubView.emptyTextView;
            if (zIsEncryptedDialog6) {
                textView6.setText(LocaleController.getString(C2807R.string.NoSharedGifSecret));
                return emptyStubView;
            }
            textView6.setText(LocaleController.getString(C2807R.string.NoGIFs));
            return emptyStubView;
        }
        if (i == 6) {
            emptyStubView.emptyImageView.setImageDrawable(null);
            emptyStubView.emptyTextView.setText(LocaleController.getString(C2807R.string.NoGroupsInCommon));
            return emptyStubView;
        }
        if (i == 7) {
            emptyStubView.emptyImageView.setImageDrawable(null);
            emptyStubView.emptyTextView.setText(_UrlKt.FRAGMENT_ENCODE_SET);
        }
        return emptyStubView;
    }

    public static class EmptyStubView extends LinearLayout {
        final ImageView emptyImageView;
        final TextView emptyTextView;
        boolean ignoreRequestLayout;

        public EmptyStubView(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            TextView textView = new TextView(context);
            this.emptyTextView = textView;
            ImageView imageView = new ImageView(context);
            this.emptyImageView = imageView;
            setOrientation(1);
            setGravity(17);
            addView(imageView, LayoutHelper.createLinear(-2, -2));
            textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, resourcesProvider));
            textView.setGravity(17);
            textView.setTextSize(1, 17.0f);
            textView.setPadding(AndroidUtilities.dp(40.0f), 0, AndroidUtilities.dp(40.0f), AndroidUtilities.dp(128.0f));
            addView(textView, LayoutHelper.createLinear(-2, -2, 17, 0, 24, 0, 0));
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onMeasure(int i, int i2) {
            int rotation = ((WindowManager) ApplicationLoader.applicationContext.getSystemService("window")).getDefaultDisplay().getRotation();
            this.ignoreRequestLayout = true;
            if (AndroidUtilities.isTablet()) {
                this.emptyTextView.setPadding(AndroidUtilities.dp(40.0f), 0, AndroidUtilities.dp(40.0f), AndroidUtilities.dp(128.0f));
            } else if (rotation == 3 || rotation == 1) {
                this.emptyTextView.setPadding(AndroidUtilities.dp(40.0f), 0, AndroidUtilities.dp(40.0f), 0);
            } else {
                this.emptyTextView.setPadding(AndroidUtilities.dp(40.0f), 0, AndroidUtilities.dp(40.0f), AndroidUtilities.dp(128.0f));
            }
            this.ignoreRequestLayout = false;
            super.onMeasure(i, i2);
        }

        @Override // android.view.View, android.view.ViewParent
        public void requestLayout() {
            if (this.ignoreRequestLayout) {
                return;
            }
            super.requestLayout();
        }
    }

    public class SharedPhotoVideoAdapter extends RecyclerListView.FastScrollAdapter {
        protected boolean inFastScrollMode;
        protected Context mContext;
        SharedPhotoVideoCell2.SharedResources sharedResources;

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return false;
        }

        public SharedPhotoVideoAdapter(Context context) {
            this.mContext = context;
        }

        public int getPositionForIndex(int i) {
            return SharedMediaLayout.this.sharedMediaData[0].startOffset + i;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            boolean zIsEncryptedDialog = DialogObject.isEncryptedDialog(SharedMediaLayout.this.dialog_id);
            SharedMediaLayout sharedMediaLayout = SharedMediaLayout.this;
            if (zIsEncryptedDialog) {
                if (sharedMediaLayout.sharedMediaData[0].messages.size() == 0 && !SharedMediaLayout.this.sharedMediaData[0].loading) {
                    return 1;
                }
                if (SharedMediaLayout.this.sharedMediaData[0].messages.size() == 0 && (!SharedMediaLayout.this.sharedMediaData[0].endReached[0] || !SharedMediaLayout.this.sharedMediaData[0].endReached[1])) {
                    return 0;
                }
                int startOffset = SharedMediaLayout.this.sharedMediaData[0].getStartOffset() + SharedMediaLayout.this.sharedMediaData[0].getMessages().size();
                return startOffset != 0 ? (SharedMediaLayout.this.sharedMediaData[0].endReached[0] && SharedMediaLayout.this.sharedMediaData[0].endReached[1]) ? startOffset : startOffset + 1 : startOffset;
            }
            boolean z = sharedMediaLayout.sharedMediaData[0].loadingAfterFastScroll;
            SharedMediaLayout sharedMediaLayout2 = SharedMediaLayout.this;
            if (z) {
                return sharedMediaLayout2.sharedMediaData[0].getTotalCount();
            }
            if (sharedMediaLayout2.sharedMediaData[0].messages.size() == 0 && !SharedMediaLayout.this.sharedMediaData[0].loading) {
                return 1;
            }
            if (SharedMediaLayout.this.sharedMediaData[0].messages.size() == 0 && ((!SharedMediaLayout.this.sharedMediaData[0].endReached[0] || !SharedMediaLayout.this.sharedMediaData[0].endReached[1]) && SharedMediaLayout.this.sharedMediaData[0].startReached)) {
                return 0;
            }
            int totalCount = SharedMediaLayout.this.sharedMediaData[0].getTotalCount();
            SharedMediaLayout sharedMediaLayout3 = SharedMediaLayout.this;
            if (totalCount == 0) {
                int startOffset2 = sharedMediaLayout3.sharedMediaData[0].getStartOffset() + SharedMediaLayout.this.sharedMediaData[0].getMessages().size();
                return startOffset2 != 0 ? (SharedMediaLayout.this.sharedMediaData[0].endReached[0] && SharedMediaLayout.this.sharedMediaData[0].endReached[1]) ? startOffset2 : SharedMediaLayout.this.sharedMediaData[0].getEndLoadingStubs() != 0 ? startOffset2 + SharedMediaLayout.this.sharedMediaData[0].getEndLoadingStubs() : startOffset2 + 1 : startOffset2;
            }
            return Math.max(sharedMediaLayout3.sharedMediaData[0].getTotalCount(), SharedMediaLayout.this.sharedMediaData[0].getStartOffset() + SharedMediaLayout.this.sharedMediaData[0].getMessages().size());
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            if (i == 0 || i == 19) {
                if (this.sharedResources == null) {
                    this.sharedResources = new SharedPhotoVideoCell2.SharedResources(viewGroup.getContext(), SharedMediaLayout.this.resourcesProvider);
                }
                SharedPhotoVideoCell2 sharedPhotoVideoCell2 = new SharedPhotoVideoCell2(this.mContext, this.sharedResources, SharedMediaLayout.this.profileActivity.getCurrentAccount());
                if (i == 19) {
                    sharedPhotoVideoCell2.setCheck2();
                }
                sharedPhotoVideoCell2.setGradientView(SharedMediaLayout.this.globalGradientView);
                if (SharedMediaLayout.this.storyAlbums_getTabTypeByStoriesAdapter(this) != -1) {
                    sharedPhotoVideoCell2.isStory = true;
                }
                sharedPhotoVideoCell2.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
                return new RecyclerListView.Holder(sharedPhotoVideoCell2);
            }
            View viewCreateEmptyStubView = SharedMediaLayout.createEmptyStubView(this.mContext, 0, SharedMediaLayout.this.dialog_id, SharedMediaLayout.this.resourcesProvider);
            viewCreateEmptyStubView.setLayoutParams(new RecyclerView.LayoutParams(-1, -1));
            return new RecyclerListView.Holder(viewCreateEmptyStubView);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            int i2;
            if (viewHolder.getItemViewType() == 0) {
                ArrayList<MessageObject> messages = SharedMediaLayout.this.sharedMediaData[0].getMessages();
                int startOffset = i - SharedMediaLayout.this.sharedMediaData[0].getStartOffset();
                View view = viewHolder.itemView;
                if (view instanceof SharedPhotoVideoCell2) {
                    SharedPhotoVideoCell2 sharedPhotoVideoCell2 = (SharedPhotoVideoCell2) view;
                    int messageId = sharedPhotoVideoCell2.getMessageId();
                    SharedPhotoVideoAdapter sharedPhotoVideoAdapter = SharedMediaLayout.this.photoVideoAdapter;
                    SharedMediaLayout sharedMediaLayout = SharedMediaLayout.this;
                    if (this == sharedPhotoVideoAdapter) {
                        i2 = sharedMediaLayout.mediaColumnsCount[0];
                    } else {
                        int iStoryAlbums_getTabTypeByStoriesAdapter = sharedMediaLayout.storyAlbums_getTabTypeByStoriesAdapter(this);
                        SharedMediaLayout sharedMediaLayout2 = SharedMediaLayout.this;
                        if (iStoryAlbums_getTabTypeByStoriesAdapter != -1) {
                            i2 = sharedMediaLayout2.mediaColumnsCount[1];
                        } else {
                            i2 = sharedMediaLayout2.animateToColumnsCount;
                        }
                    }
                    if (startOffset >= 0 && startOffset < messages.size()) {
                        MessageObject messageObject = messages.get(startOffset);
                        boolean z = messageObject.getId() == messageId;
                        SharedMediaLayout sharedMediaLayout3 = SharedMediaLayout.this;
                        if (sharedMediaLayout3.isActionModeShowed) {
                            sharedPhotoVideoCell2.setChecked(sharedMediaLayout3.selectedFiles[(messageObject.getDialogId() > SharedMediaLayout.this.dialog_id ? 1 : (messageObject.getDialogId() == SharedMediaLayout.this.dialog_id ? 0 : -1)) == 0 ? (char) 0 : (char) 1].indexOfKey(messageObject.getId()) >= 0, z);
                        } else {
                            sharedPhotoVideoCell2.setChecked(false, z);
                        }
                        sharedPhotoVideoCell2.setMessageObject(messageObject, i2);
                        return;
                    }
                    sharedPhotoVideoCell2.setMessageObject(null, i2);
                    sharedPhotoVideoCell2.setChecked(false, false);
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (!this.inFastScrollMode && SharedMediaLayout.this.sharedMediaData[0].getMessages().size() == 0 && !SharedMediaLayout.this.sharedMediaData[0].loading && SharedMediaLayout.this.sharedMediaData[0].startReached) {
                return 2;
            }
            SharedMediaLayout.this.sharedMediaData[0].getStartOffset();
            SharedMediaLayout.this.sharedMediaData[0].getMessages().size();
            SharedMediaLayout.this.sharedMediaData[0].getStartOffset();
            return 0;
        }

        @Override // org.telegram.ui.Components.RecyclerListView.FastScrollAdapter
        public String getLetter(int i) {
            if (SharedMediaLayout.this.sharedMediaData[0].fastScrollPeriods == null) {
                return _UrlKt.FRAGMENT_ENCODE_SET;
            }
            ArrayList<Period> arrayList = SharedMediaLayout.this.sharedMediaData[0].fastScrollPeriods;
            if (arrayList.isEmpty()) {
                return _UrlKt.FRAGMENT_ENCODE_SET;
            }
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                if (i <= arrayList.get(i2).startOffset) {
                    return arrayList.get(i2).formatedDate;
                }
            }
            return arrayList.get(arrayList.size() - 1).formatedDate;
        }

        @Override // org.telegram.ui.Components.RecyclerListView.FastScrollAdapter
        public void getPositionForScrollProgress(RecyclerListView recyclerListView, float f, int[] iArr) {
            int i;
            int measuredHeight = recyclerListView.getChildAt(0).getMeasuredHeight();
            if (SharedMediaLayout.this.storyAlbums_getTabTypeByStoriesSupportingAdapter(this) != -1 || this == SharedMediaLayout.this.animationSupportingPhotoVideoAdapter) {
                i = SharedMediaLayout.this.animateToColumnsCount;
            } else {
                int iStoryAlbums_getTabTypeByStoriesAdapter = SharedMediaLayout.this.storyAlbums_getTabTypeByStoriesAdapter(this);
                SharedMediaLayout sharedMediaLayout = SharedMediaLayout.this;
                if (iStoryAlbums_getTabTypeByStoriesAdapter != -1) {
                    i = sharedMediaLayout.mediaColumnsCount[1];
                } else {
                    i = sharedMediaLayout.mediaColumnsCount[0];
                }
            }
            int iCeil = (int) (Math.ceil(getTotalItemsCount() / i) * ((double) measuredHeight));
            int measuredHeight2 = recyclerListView.getMeasuredHeight() - recyclerListView.getPaddingTop();
            if (measuredHeight == 0) {
                iArr[1] = 0;
                iArr[0] = 0;
            } else {
                float f2 = f * (iCeil - measuredHeight2);
                iArr[0] = ((int) (f2 / measuredHeight)) * i;
                iArr[1] = ((int) f2) % measuredHeight;
            }
        }

        @Override // org.telegram.ui.Components.RecyclerListView.FastScrollAdapter
        public void onStartFastScroll() {
            this.inFastScrollMode = true;
            MediaPage mediaPage = SharedMediaLayout.this.getMediaPage(0);
            if (mediaPage != null) {
                SharedMediaLayout.showFastScrollHint(mediaPage, null, false);
            }
        }

        @Override // org.telegram.ui.Components.RecyclerListView.FastScrollAdapter
        public void onFinishFastScroll(RecyclerListView recyclerListView) {
            if (this.inFastScrollMode) {
                this.inFastScrollMode = false;
                if (recyclerListView != null) {
                    int messageId = 0;
                    for (int i = 0; i < recyclerListView.getChildCount(); i++) {
                        View childAt = recyclerListView.getChildAt(i);
                        if (childAt instanceof SharedPhotoVideoCell2) {
                            messageId = ((SharedPhotoVideoCell2) childAt).getMessageId();
                        }
                        if (messageId != 0) {
                            break;
                        }
                    }
                    if (messageId == 0) {
                        SharedMediaLayout.this.findPeriodAndJumpToDate(0, recyclerListView, true);
                    }
                }
            }
        }

        @Override // org.telegram.ui.Components.RecyclerListView.FastScrollAdapter
        public int getTotalItemsCount() {
            return SharedMediaLayout.this.sharedMediaData[0].getTotalCount();
        }

        @Override // org.telegram.ui.Components.RecyclerListView.FastScrollAdapter
        public float getScrollProgress(RecyclerListView recyclerListView) {
            int i;
            if (this == SharedMediaLayout.this.animationSupportingPhotoVideoAdapter || SharedMediaLayout.this.storyAlbums_getTabTypeByStoriesSupportingAdapter(this) != -1) {
                i = SharedMediaLayout.this.animateToColumnsCount;
            } else {
                int iStoryAlbums_getTabTypeByStoriesAdapter = SharedMediaLayout.this.storyAlbums_getTabTypeByStoriesAdapter(this);
                SharedMediaLayout sharedMediaLayout = SharedMediaLayout.this;
                if (iStoryAlbums_getTabTypeByStoriesAdapter != -1) {
                    i = sharedMediaLayout.mediaColumnsCount[1];
                } else {
                    i = sharedMediaLayout.mediaColumnsCount[0];
                }
            }
            int iCeil = (int) Math.ceil(getTotalItemsCount() / i);
            if (recyclerListView.getChildCount() == 0) {
                return 0.0f;
            }
            int measuredHeight = recyclerListView.getChildAt(0).getMeasuredHeight();
            if (recyclerListView.getChildAdapterPosition(recyclerListView.getChildAt(0)) < 0) {
                return 0.0f;
            }
            return (((r4 / i) * measuredHeight) - (r1.getTop() - recyclerListView.getPaddingTop())) / ((iCeil * measuredHeight) - (recyclerListView.getMeasuredHeight() - recyclerListView.getPaddingTop()));
        }

        @Override // org.telegram.ui.Components.RecyclerListView.FastScrollAdapter
        public boolean fastScrollIsVisible(RecyclerListView recyclerListView) {
            if (SharedMediaLayout.this.isSearchingStories()) {
                return false;
            }
            return recyclerListView.getChildCount() != 0 && ((int) Math.ceil((double) (((float) getTotalItemsCount()) / ((float) ((this == SharedMediaLayout.this.photoVideoAdapter || SharedMediaLayout.this.storyAlbums_getTabTypeByStoriesAdapter(this) != -1) ? SharedMediaLayout.this.mediaColumnsCount[0] : SharedMediaLayout.this.animateToColumnsCount))))) * recyclerListView.getChildAt(0).getMeasuredHeight() > recyclerListView.getMeasuredHeight();
        }

        @Override // org.telegram.ui.Components.RecyclerListView.FastScrollAdapter
        public void onFastScrollSingleTap() {
            SharedMediaLayout.this.showMediaCalendar(0, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void findPeriodAndJumpToDate(int i, RecyclerListView recyclerListView, boolean z) {
        ArrayList<Period> arrayList = this.sharedMediaData[i].fastScrollPeriods;
        int iFindFirstVisibleItemPosition = ((LinearLayoutManager) recyclerListView.getLayoutManager()).findFirstVisibleItemPosition();
        if (iFindFirstVisibleItemPosition >= 0) {
            Period period = null;
            if (arrayList != null) {
                int i2 = 0;
                while (true) {
                    if (i2 >= arrayList.size()) {
                        break;
                    }
                    if (iFindFirstVisibleItemPosition <= arrayList.get(i2).startOffset) {
                        period = arrayList.get(i2);
                        break;
                    }
                    i2++;
                }
                if (period == null) {
                    period = arrayList.get(arrayList.size() - 1);
                }
            }
            if (period != null) {
                jumpToDate(i, period.maxId, period.startOffset + 1, z);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void jumpToDate(int i, int i2, int i3, boolean z) {
        this.sharedMediaData[i].messages.clear();
        this.sharedMediaData[i].messagesDict[0].clear();
        this.sharedMediaData[i].messagesDict[1].clear();
        this.sharedMediaData[i].setMaxId(0, i2);
        this.sharedMediaData[i].setEndReached(0, false);
        SharedMediaData sharedMediaData = this.sharedMediaData[i];
        sharedMediaData.startReached = false;
        sharedMediaData.startOffset = i3;
        SharedMediaData sharedMediaData2 = this.sharedMediaData[i];
        sharedMediaData2.endLoadingStubs = (sharedMediaData2.getTotalCount() - i3) - 1;
        if (this.sharedMediaData[i].endLoadingStubs < 0) {
            this.sharedMediaData[i].endLoadingStubs = 0;
        }
        SharedMediaData sharedMediaData3 = this.sharedMediaData[i];
        sharedMediaData3.min_id = i2;
        sharedMediaData3.loadingAfterFastScroll = true;
        sharedMediaData3.loading = false;
        sharedMediaData3.requestIndex++;
        MediaPage mediaPage = getMediaPage(i);
        if (mediaPage != null && mediaPage.listView.getAdapter() != null) {
            mediaPage.listView.getAdapter().notifyDataSetChanged();
        }
        if (!z) {
            return;
        }
        int i4 = 0;
        while (true) {
            MediaPage[] mediaPageArr = this.mediaPages;
            if (i4 >= mediaPageArr.length) {
                return;
            }
            MediaPage mediaPage2 = mediaPageArr[i4];
            if (mediaPage2.selectedType == i) {
                mediaPage2.layoutManager.scrollToPositionWithOffset(Math.min(this.sharedMediaData[i].getTotalCount() - 1, this.sharedMediaData[i].startOffset), 0);
            }
            i4++;
        }
    }

    public class PollAdapter extends RecyclerListView.SelectionAdapter {
        private final int currentAccount;
        public RecyclerListView listView;
        private final Context mContext;
        private final ChatMessageCell.ChatMessageCellDelegate messageDelegate;
        private final Theme.ResourcesProvider resourcesProvider;
        private final ArrayList<MessageObject> pollsToCheck = new ArrayList<>(10);
        private final ArrayList<MessageObject> groupedByDay = new ArrayList<>();

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return false;
        }

        public PollAdapter(Context context, final int i, final Theme.ResourcesProvider resourcesProvider) {
            this.mContext = context;
            this.currentAccount = i;
            this.resourcesProvider = resourcesProvider;
            this.messageDelegate = new ChatMessageCell.ChatMessageCellDelegate() { // from class: org.telegram.ui.Components.SharedMediaLayout.PollAdapter.1
                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public boolean canPerformActions() {
                    return true;
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public void didPressVoteButtons(ChatMessageCell chatMessageCell, ArrayList<TLRPC.PollAnswer> arrayList, int i2, int i3, int i4) {
                    SendMessagesHelper.getInstance(i).sendVote(chatMessageCell.getMessageObject(), arrayList, null);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public void didPressPollMedia(final ChatMessageCell chatMessageCell, ImageReceiver imageReceiver, final TLRPC.PollAnswer pollAnswer, TLRPC.MessageMedia messageMedia, float f, float f2, int i2) {
                    int size;
                    TLRPC.Document document;
                    TLRPC.PollResults pollResults;
                    TLRPC.MessageMedia messageMedia2;
                    TLRPC.Document document2;
                    TLRPC.Document document3;
                    TLRPC.TL_textWithEntities tL_textWithEntities;
                    MessageObject messageObject = chatMessageCell.getMessageObject();
                    TLRPC.MessageMedia media = MessageObject.getMedia(messageObject);
                    if (messageMedia == null || messageObject == null || !(media instanceof TLRPC.TL_messageMediaPoll)) {
                        return;
                    }
                    final TLRPC.TL_messageMediaPoll tL_messageMediaPoll = (TLRPC.TL_messageMediaPoll) media;
                    if (messageMedia.geo != null) {
                        if (AndroidUtilities.isMapsInstalled(SharedMediaLayout.this.profileActivity)) {
                            LocationActivity locationActivity = new LocationActivity(3) { // from class: org.telegram.ui.Components.SharedMediaLayout.PollAdapter.1.1
                                @Override // org.telegram.ui.LocationActivity
                                public boolean disablePermissionCheck() {
                                    return true;
                                }
                            };
                            locationActivity.setResourceProvider(resourcesProvider);
                            TLRPC.TL_message tL_message = new TLRPC.TL_message();
                            tL_message.local_id = -1;
                            tL_message.peer_id = MessagesController.getInstance(i).getPeer(SharedMediaLayout.this.dialog_id);
                            TLRPC.TL_messageMediaGeo tL_messageMediaGeo = new TLRPC.TL_messageMediaGeo();
                            tL_messageMediaGeo.geo = messageMedia.geo;
                            String str = messageMedia.address;
                            if (str == null) {
                                str = (pollAnswer == null || (tL_textWithEntities = pollAnswer.text) == null) ? _UrlKt.FRAGMENT_ENCODE_SET : tL_textWithEntities.text;
                            }
                            tL_messageMediaGeo.address = str;
                            tL_message.media = tL_messageMediaGeo;
                            locationActivity.setSharingAllowed(false);
                            locationActivity.setMessageObject(new MessageObject(UserConfig.selectedAccount, tL_message, false, false));
                            SharedMediaLayout.this.profileActivity.presentFragment(locationActivity);
                            return;
                        }
                        return;
                    }
                    if (MessageObject.isAnyKindOfStickerOrEmoji(messageMedia.document)) {
                        ContentPreviewViewer.getInstance().setParentActivity(SharedMediaLayout.this.profileActivity.getParentActivity());
                        ContentPreviewViewer.getInstance().setDelegate(new ContentPreviewViewer.ContentPreviewViewerDelegate() { // from class: org.telegram.ui.Components.SharedMediaLayout.PollAdapter.1.2
                            @Override // org.telegram.ui.ContentPreviewViewer.ContentPreviewViewerDelegate
                            public boolean canSchedule() {
                                return false;
                            }

                            @Override // org.telegram.ui.ContentPreviewViewer.ContentPreviewViewerDelegate
                            public boolean isInScheduleMode() {
                                return false;
                            }

                            @Override // org.telegram.ui.ContentPreviewViewer.ContentPreviewViewerDelegate
                            public boolean needSend(int i3) {
                                return false;
                            }

                            @Override // org.telegram.ui.ContentPreviewViewer.ContentPreviewViewerDelegate
                            public void sendSticker(TLRPC.Document document4, String str2, Object obj, boolean z, int i3, int i4) {
                            }

                            @Override // org.telegram.ui.ContentPreviewViewer.ContentPreviewViewerDelegate
                            public void openSet(TLRPC.InputStickerSet inputStickerSet, boolean z) {
                                if (inputStickerSet == null || SharedMediaLayout.this.getContext() == null) {
                                    return;
                                }
                                TLRPC.TL_inputStickerSetID tL_inputStickerSetID = new TLRPC.TL_inputStickerSetID();
                                tL_inputStickerSetID.access_hash = inputStickerSet.access_hash;
                                tL_inputStickerSetID.id = inputStickerSet.id;
                                StickersAlert stickersAlert = new StickersAlert(SharedMediaLayout.this.getContext(), SharedMediaLayout.this.profileActivity, tL_inputStickerSetID, null, null, resourcesProvider, false);
                                stickersAlert.setCalcMandatoryInsets(true);
                                stickersAlert.setClearsInputField(z);
                                stickersAlert.show();
                            }

                            @Override // org.telegram.ui.ContentPreviewViewer.ContentPreviewViewerDelegate
                            public long getDialogId() {
                                return SharedMediaLayout.this.dialog_id;
                            }

                            @Override // org.telegram.ui.ContentPreviewViewer.ContentPreviewViewerDelegate
                            public TLRPC.TL_messageMediaPoll getPoll() {
                                return tL_messageMediaPoll;
                            }

                            @Override // org.telegram.ui.ContentPreviewViewer.ContentPreviewViewerDelegate
                            public TLRPC.PollAnswer getPollAnswer() {
                                return pollAnswer;
                            }

                            @Override // org.telegram.ui.ContentPreviewViewer.ContentPreviewViewerDelegate
                            public MessageObject getPollMessageObject() {
                                return chatMessageCell.getMessageObject();
                            }

                            @Override // org.telegram.ui.ContentPreviewViewer.ContentPreviewViewerDelegate
                            public void retractVote() {
                                SendMessagesHelper.getInstance(i).sendVote(chatMessageCell.getMessageObject(), null, null);
                            }

                            @Override // org.telegram.ui.ContentPreviewViewer.ContentPreviewViewerDelegate
                            public void sendVote() {
                                ArrayList<TLRPC.PollAnswer> arrayList = new ArrayList<>(1);
                                arrayList.add(pollAnswer);
                                SendMessagesHelper.getInstance(i).sendVote(chatMessageCell.getMessageObject(), arrayList, null);
                            }
                        });
                        ContentPreviewViewer contentPreviewViewer = ContentPreviewViewer.getInstance();
                        TLRPC.Document document4 = messageMedia.document;
                        contentPreviewViewer.open(document4, null, _UrlKt.FRAGMENT_ENCODE_SET, null, null, MessageObject.isAnimatedEmoji(document4) ? 2 : 0, false, chatMessageCell.getMessageObject(), resourcesProvider, 200);
                        return;
                    }
                    TLRPC.Message message = messageObject.messageOwner;
                    ArrayList<Integer> arrayList = new ArrayList<>();
                    ArrayList<MessageObject> arrayList2 = new ArrayList<>();
                    TLRPC.MessageMedia messageMedia3 = tL_messageMediaPoll.attached_media;
                    if (messageMedia3 != null && messageMedia3.geo == null && ((document3 = messageMedia3.document) == null || MessageObject.isVideoDocument(document3))) {
                        size = messageMedia3 == messageMedia ? arrayList2.size() : -1;
                        TLRPC.TL_message tL_messageCopy = copy(message);
                        tL_messageCopy.media = messageMedia3;
                        arrayList2.add(new MessageObject(i, tL_messageCopy, false, true) { // from class: org.telegram.ui.Components.SharedMediaLayout.PollAdapter.1.3
                            @Override // org.telegram.messenger.MessageObject
                            public boolean canDeleteMessage(boolean z, TLRPC.Chat chat) {
                                return false;
                            }
                        });
                        arrayList.add(-2);
                    } else {
                        size = -1;
                    }
                    if (messageObject.expandedExplanation && (pollResults = tL_messageMediaPoll.results) != null && (messageMedia2 = pollResults.solution_media) != null && messageMedia2.geo == null && ((document2 = messageMedia2.document) == null || MessageObject.isVideoDocument(document2))) {
                        if (messageMedia2 == messageMedia) {
                            size = arrayList2.size();
                        }
                        TLRPC.TL_message tL_messageCopy2 = copy(message);
                        tL_messageCopy2.media = messageMedia2;
                        TLRPC.PollResults pollResults2 = tL_messageMediaPoll.results;
                        tL_messageCopy2.message = pollResults2.solution;
                        tL_messageCopy2.entities = pollResults2.solution_entities;
                        arrayList2.add(new MessageObject(i, tL_messageCopy2, false, true) { // from class: org.telegram.ui.Components.SharedMediaLayout.PollAdapter.1.4
                            @Override // org.telegram.messenger.MessageObject
                            public boolean canDeleteMessage(boolean z, TLRPC.Chat chat) {
                                return false;
                            }
                        });
                        arrayList.add(-3);
                    }
                    TlUtils.calculateAnswerShuffleHash(tL_messageMediaPoll.poll, UserConfig.getInstance(i).getClientUserId());
                    TLRPC.Poll poll = tL_messageMediaPoll.poll;
                    ArrayList<TLRPC.PollAnswer> arrayList3 = poll.shuffled_answers;
                    if (arrayList3 == null) {
                        arrayList3 = poll.answers;
                    }
                    int size2 = size;
                    while (i < arrayList3.size()) {
                        TLRPC.PollAnswer pollAnswer2 = arrayList3.get(i);
                        TLRPC.MessageMedia messageMedia4 = pollAnswer2.media;
                        if (messageMedia4 != null && messageMedia4.geo == null && ((document = messageMedia4.document) == null || MessageObject.isVideoDocument(document))) {
                            if (pollAnswer2.unshuffled_index == i2) {
                                size2 = arrayList2.size();
                            }
                            TLRPC.TL_message tL_messageCopy3 = copy(message);
                            tL_messageCopy3.media = messageMedia4;
                            TLRPC.TL_textWithEntities tL_textWithEntities2 = pollAnswer2.text;
                            tL_messageCopy3.message = tL_textWithEntities2.text;
                            tL_messageCopy3.entities = tL_textWithEntities2.entities;
                            arrayList2.add(new MessageObject(i, tL_messageCopy3, false, true) { // from class: org.telegram.ui.Components.SharedMediaLayout.PollAdapter.1.5
                                @Override // org.telegram.messenger.MessageObject
                                public boolean canDeleteMessage(boolean z, TLRPC.Chat chat) {
                                    return false;
                                }
                            });
                            arrayList.add(Integer.valueOf(pollAnswer2.unshuffled_index));
                        }
                        i++;
                    }
                    if (size2 <= -1 || arrayList2.isEmpty()) {
                        return;
                    }
                    messageObject.pollMediaMapping = arrayList;
                    PhotoViewer.getInstance().setParentActivity(SharedMediaLayout.this.profileActivity, resourcesProvider);
                    PhotoViewer.getInstance().openPhoto(arrayList2, size2, SharedMediaLayout.this.dialog_id, 0L, 0L, new PhotoViewer.EmptyPhotoViewerProvider() { // from class: org.telegram.ui.Components.SharedMediaLayout.PollAdapter.1.6
                        @Override // org.telegram.ui.PhotoViewer.PhotoViewerProvider
                        public boolean forceAllInGroup() {
                            return true;
                        }

                        @Override // org.telegram.ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.ui.PhotoViewer.PhotoViewerProvider
                        public PhotoViewer.PlaceProviderObject getPlaceForPhoto(MessageObject messageObject2, TLRPC.FileLocation fileLocation, int i3, boolean z, boolean z2) {
                            ImageReceiver photoImage;
                            ChatMessageCell chatMessageCell2;
                            MessageObject messageObject3;
                            RecyclerListView recyclerListView = PollAdapter.this.listView;
                            if (recyclerListView == null) {
                                return null;
                            }
                            int childCount = recyclerListView.getChildCount();
                            for (int i4 = 0; i4 < childCount; i4++) {
                                View childAt = PollAdapter.this.listView.getChildAt(i4);
                                if (!(childAt instanceof ChatMessageCell) || messageObject2 == null || (messageObject3 = (chatMessageCell2 = (ChatMessageCell) childAt).getMessageObject()) == null || messageObject3.getId() != messageObject2.getId()) {
                                    photoImage = null;
                                } else {
                                    ArrayList<Integer> arrayList4 = messageObject3.pollMediaMapping;
                                    if (arrayList4 != null && i3 >= 0 && i3 < arrayList4.size()) {
                                        photoImage = chatMessageCell2.getPhotoImage(messageObject3.pollMediaMapping.get(i3).intValue());
                                    } else {
                                        photoImage = chatMessageCell2.getPhotoImage(i3);
                                    }
                                }
                                if (photoImage != null) {
                                    int[] iArr = new int[2];
                                    childAt.getLocationInWindow(iArr);
                                    PhotoViewer.PlaceProviderObject placeProviderObject = new PhotoViewer.PlaceProviderObject();
                                    placeProviderObject.viewX = iArr[0];
                                    placeProviderObject.viewY = iArr[1] + childAt.getPaddingTop();
                                    placeProviderObject.parentView = PollAdapter.this.listView;
                                    placeProviderObject.animatingImageView = null;
                                    placeProviderObject.imageReceiver = photoImage;
                                    if (z) {
                                        placeProviderObject.thumb = photoImage.getBitmapSafe();
                                    }
                                    placeProviderObject.radius = photoImage.getRoundRadius(true);
                                    placeProviderObject.clipTopAddition = 0;
                                    placeProviderObject.clipBottomAddition = 0;
                                    return placeProviderObject;
                                }
                            }
                            return null;
                        }
                    });
                }

                private TLRPC.TL_message copy(TLRPC.Message message) {
                    TLRPC.TL_message tL_message = new TLRPC.TL_message();
                    tL_message.id = message.id;
                    tL_message.from_id = message.from_id;
                    tL_message.from_boosts_applied = message.from_boosts_applied;
                    tL_message.peer_id = message.peer_id;
                    tL_message.saved_peer_id = message.saved_peer_id;
                    tL_message.date = message.date;
                    tL_message.expire_date = message.expire_date;
                    tL_message.action = message.action;
                    tL_message.message = message.message;
                    tL_message.flags = message.flags;
                    tL_message.flags2 = message.flags2;
                    tL_message.mentioned = message.mentioned;
                    tL_message.media_unread = message.media_unread;
                    tL_message.out = message.out;
                    tL_message.unread = message.unread;
                    tL_message.entities = message.entities;
                    tL_message.via_bot_name = message.via_bot_name;
                    tL_message.reply_markup = message.reply_markup;
                    tL_message.views = message.views;
                    tL_message.forwards = message.forwards;
                    tL_message.replies = message.replies;
                    tL_message.edit_date = message.edit_date;
                    tL_message.silent = message.silent;
                    tL_message.post = message.post;
                    tL_message.from_scheduled = message.from_scheduled;
                    tL_message.legacy = message.legacy;
                    tL_message.edit_hide = message.edit_hide;
                    tL_message.pinned = message.pinned;
                    tL_message.fwd_from = message.fwd_from;
                    tL_message.via_bot_id = message.via_bot_id;
                    tL_message.via_business_bot_id = message.via_business_bot_id;
                    tL_message.reply_to = message.reply_to;
                    tL_message.post_author = message.post_author;
                    tL_message.grouped_id = message.grouped_id;
                    tL_message.reactions = message.reactions;
                    tL_message.restriction_reason = message.restriction_reason;
                    tL_message.ttl_period = message.ttl_period;
                    tL_message.quick_reply_shortcut_id = message.quick_reply_shortcut_id;
                    tL_message.effect = message.effect;
                    tL_message.noforwards = message.noforwards;
                    tL_message.invert_media = message.invert_media;
                    tL_message.offline = message.offline;
                    tL_message.factcheck = message.factcheck;
                    tL_message.send_state = message.send_state;
                    tL_message.fwd_msg_id = message.fwd_msg_id;
                    tL_message.params = message.params;
                    tL_message.random_id = message.random_id;
                    tL_message.local_id = message.local_id;
                    tL_message.dialog_id = message.dialog_id;
                    tL_message.ttl = message.ttl;
                    tL_message.destroyTime = message.destroyTime;
                    tL_message.destroyTimeMillis = message.destroyTimeMillis;
                    tL_message.layer = message.layer;
                    tL_message.seq_in = message.seq_in;
                    tL_message.seq_out = message.seq_out;
                    tL_message.with_my_score = message.with_my_score;
                    tL_message.replyMessage = message.replyMessage;
                    tL_message.reqId = message.reqId;
                    tL_message.realId = message.realId;
                    tL_message.stickerVerified = message.stickerVerified;
                    tL_message.isThreadMessage = message.isThreadMessage;
                    tL_message.voiceTranscription = message.voiceTranscription;
                    tL_message.voiceTranscriptionOpen = message.voiceTranscriptionOpen;
                    tL_message.voiceTranscriptionRated = message.voiceTranscriptionRated;
                    tL_message.voiceTranscriptionFinal = message.voiceTranscriptionFinal;
                    tL_message.voiceTranscriptionForce = message.voiceTranscriptionForce;
                    tL_message.voiceTranscriptionId = message.voiceTranscriptionId;
                    tL_message.premiumEffectWasPlayed = message.premiumEffectWasPlayed;
                    tL_message.originalLanguage = message.originalLanguage;
                    tL_message.translatedToLanguage = message.translatedToLanguage;
                    tL_message.translatedText = message.translatedText;
                    tL_message.replyStory = message.replyStory;
                    tL_message.quick_reply_shortcut = message.quick_reply_shortcut;
                    return tL_message;
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public void didPressInstantButton(ChatMessageCell chatMessageCell, int i2) {
                    if (i2 == 80) {
                        PollVotesAlert.showForPoll(SharedMediaLayout.this.profileActivity, chatMessageCell.getMessageObject());
                    }
                }
            };
            regroup();
        }

        private void regroup() {
            this.groupedByDay.clear();
            ArrayList<MessageObject> messages = SharedMediaLayout.this.sharedMediaData[8].getMessages();
            int i = 0;
            for (int i2 = 0; i2 < messages.size(); i2++) {
                MessageObject messageObject = messages.get(i2);
                if (messageObject.dateKeyInt != i) {
                    this.groupedByDay.add(action(messageObject.messageOwner.date));
                    i = messageObject.dateKeyInt;
                }
                this.groupedByDay.add(messageObject);
            }
        }

        public void onScrolled(RecyclerListView recyclerListView) {
            this.pollsToCheck.clear();
            for (int i = 0; i < recyclerListView.getChildCount(); i++) {
                View childAt = recyclerListView.getChildAt(i);
                if (childAt instanceof ChatMessageCell) {
                    this.pollsToCheck.add(((ChatMessageCell) childAt).getMessageObject());
                }
            }
            MessagesController.getInstance(this.currentAccount).addToPollsQueue(SharedMediaLayout.this.dialog_id, this.pollsToCheck);
        }

        public void update(RecyclerListView recyclerListView, long j, TLRPC.TL_poll tL_poll, TLRPC.PollResults pollResults) {
            for (int i = 0; i < this.groupedByDay.size(); i++) {
                MessageObject messageObject = this.groupedByDay.get(i);
                if (messageObject != null && messageObject.getPollId() == j) {
                    TLRPC.MessageMedia messageMedia = messageObject.messageOwner.media;
                    if (messageMedia instanceof TLRPC.TL_messageMediaPoll) {
                        TLRPC.TL_messageMediaPoll tL_messageMediaPoll = (TLRPC.TL_messageMediaPoll) messageMedia;
                        if (tL_poll != null) {
                            tL_messageMediaPoll.poll = tL_poll;
                        }
                        MessageObject.updatePollResults(tL_messageMediaPoll, pollResults);
                        notifyItemChanged(i);
                    }
                }
            }
        }

        private MessageObject action(int i) {
            TLRPC.TL_message tL_message = new TLRPC.TL_message();
            long j = i;
            tL_message.message = LocaleController.formatDateChat(j);
            tL_message.id = 0;
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(j * 1000);
            calendar.set(11, 0);
            calendar.set(12, 0);
            calendar.set(13, 0);
            calendar.set(14, 0);
            tL_message.date = (int) (calendar.getTimeInMillis() / 1000);
            MessageObject messageObject = new MessageObject(this.currentAccount, tL_message, false, false);
            messageObject.type = 10;
            messageObject.contentType = 1;
            messageObject.isDateObject = true;
            return messageObject;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyDataSetChanged() {
            regroup();
            super.notifyDataSetChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            if (i == 0) {
                ChatMessageCell chatMessageCell = new ChatMessageCell(this.mContext, this.currentAccount, false, null, this.resourcesProvider) { // from class: org.telegram.ui.Components.SharedMediaLayout.PollAdapter.2
                    @Override // android.view.View
                    public boolean isPressed() {
                        return false;
                    }
                };
                chatMessageCell.setDelegate(this.messageDelegate);
                return new RecyclerListView.Holder(chatMessageCell);
            }
            return new RecyclerListView.Holder(new ChatActionCell(this.mContext, false, this.resourcesProvider));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            if (i < 0 || i >= this.groupedByDay.size()) {
                return;
            }
            MessageObject messageObject = this.groupedByDay.get(i);
            int itemViewType = viewHolder.getItemViewType();
            View view = viewHolder.itemView;
            if (itemViewType == 0) {
                ((ChatMessageCell) view).setMessageObject(messageObject, null, false, false, false);
            } else {
                ((ChatActionCell) view).setMessageObject(messageObject);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i < 0 || i >= this.groupedByDay.size()) {
                return 0;
            }
            return this.groupedByDay.get(i).contentType;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.groupedByDay.size();
        }
    }

    public class MediaSearchAdapter extends RecyclerListView.SelectionAdapter {
        private int currentType;
        private int lastReqId;
        private Context mContext;
        private Runnable searchRunnable;
        private int searchesInProgress;
        private ArrayList<MessageObject> searchResult = new ArrayList<>();
        protected ArrayList<MessageObject> globalSearch = new ArrayList<>();
        private int reqId = 0;

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return 24;
        }

        public MediaSearchAdapter(Context context, int i) {
            this.mContext = context;
            this.currentType = i;
        }

        public void queryServerSearch(final String str, final int i, long j, long j2) {
            if (DialogObject.isEncryptedDialog(j)) {
                return;
            }
            if (this.reqId != 0) {
                SharedMediaLayout.this.profileActivity.getConnectionsManager().cancelRequest(this.reqId, true);
                this.reqId = 0;
                this.searchesInProgress--;
            }
            if (str == null || str.length() == 0) {
                this.globalSearch.clear();
                this.lastReqId = 0;
                notifyDataSetChanged();
                return;
            }
            TLRPC.TL_messages_search tL_messages_search = new TLRPC.TL_messages_search();
            tL_messages_search.limit = 50;
            tL_messages_search.offset_id = i;
            int i2 = this.currentType;
            if (i2 == 1) {
                tL_messages_search.filter = new TLRPC.TL_inputMessagesFilterDocument();
            } else if (i2 == 3) {
                tL_messages_search.filter = new TLRPC.TL_inputMessagesFilterUrl();
            } else if (i2 == 4) {
                tL_messages_search.filter = new TLRPC.TL_inputMessagesFilterMusic();
            }
            tL_messages_search.f1032q = str;
            tL_messages_search.peer = SharedMediaLayout.this.profileActivity.getMessagesController().getInputPeer(j);
            if (j2 != 0) {
                long clientUserId = SharedMediaLayout.this.profileActivity.getUserConfig().getClientUserId();
                int i3 = tL_messages_search.flags;
                if (j == clientUserId) {
                    tL_messages_search.flags = i3 | 4;
                    tL_messages_search.saved_peer_id = SharedMediaLayout.this.profileActivity.getMessagesController().getInputPeer(j2);
                } else {
                    tL_messages_search.flags = i3 | 2;
                    tL_messages_search.top_msg_id = (int) j2;
                }
            }
            if (tL_messages_search.peer == null) {
                return;
            }
            final int i4 = this.lastReqId + 1;
            this.lastReqId = i4;
            this.searchesInProgress++;
            this.reqId = SharedMediaLayout.this.profileActivity.getConnectionsManager().sendRequest(tL_messages_search, new RequestDelegate() { // from class: org.telegram.ui.Components.SharedMediaLayout$MediaSearchAdapter$$ExternalSyntheticLambda3
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$queryServerSearch$1(i, i4, str, tLObject, tL_error);
                }
            }, 2);
            SharedMediaLayout.this.profileActivity.getConnectionsManager().bindRequestToGuid(this.reqId, SharedMediaLayout.this.profileActivity.getClassGuid());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$queryServerSearch$1(int i, final int i2, final String str, TLObject tLObject, TLRPC.TL_error tL_error) {
            final ArrayList arrayList = new ArrayList();
            if (tL_error == null) {
                TLRPC.messages_Messages messages_messages = (TLRPC.messages_Messages) tLObject;
                for (int i3 = 0; i3 < messages_messages.messages.size(); i3++) {
                    TLRPC.Message message = messages_messages.messages.get(i3);
                    if ((i == 0 || message.id <= i) && !LocaleUtils.isCustomEmojiOnlyLinkMessage(message)) {
                        arrayList.add(new MessageObject(SharedMediaLayout.this.profileActivity.getCurrentAccount(), message, false, true));
                    }
                }
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$MediaSearchAdapter$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$queryServerSearch$0(i2, arrayList, str);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$queryServerSearch$0(int i, ArrayList arrayList, String str) {
            if (this.reqId != 0) {
                if (i == this.lastReqId) {
                    int itemCount = getItemCount();
                    this.globalSearch = arrayList;
                    this.searchesInProgress--;
                    int itemCount2 = getItemCount();
                    if (this.searchesInProgress == 0 || itemCount2 != 0) {
                        SharedMediaLayout.this.switchToCurrentSelectedMode(false);
                    }
                    for (int i2 = 0; i2 < SharedMediaLayout.this.mediaPages.length; i2++) {
                        if (SharedMediaLayout.this.mediaPages[i2].selectedType == this.currentType) {
                            if (this.searchesInProgress == 0 && itemCount2 == 0) {
                                SharedMediaLayout.this.mediaPages[i2].emptyView.title.setText(LocaleController.formatString("NoResultFoundFor", C2807R.string.NoResultFoundFor, str));
                                SharedMediaLayout.this.mediaPages[i2].emptyView.button.setVisibility(8);
                                SharedMediaLayout.this.mediaPages[i2].emptyView.showProgress(false, true);
                            } else if (itemCount == 0) {
                                SharedMediaLayout sharedMediaLayout = SharedMediaLayout.this;
                                sharedMediaLayout.animateItemsEnter(sharedMediaLayout.mediaPages[i2].listView, 0, null);
                            }
                        }
                    }
                    notifyDataSetChanged();
                }
                this.reqId = 0;
            }
        }

        public void search(final String str, boolean z) {
            Runnable runnable = this.searchRunnable;
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
                this.searchRunnable = null;
            }
            if (!this.searchResult.isEmpty() || !this.globalSearch.isEmpty()) {
                this.searchResult.clear();
                this.globalSearch.clear();
                notifyDataSetChanged();
            }
            if (TextUtils.isEmpty(str)) {
                if (this.searchResult.isEmpty() && this.globalSearch.isEmpty() && this.searchesInProgress == 0) {
                    return;
                }
                this.searchResult.clear();
                this.globalSearch.clear();
                if (this.reqId != 0) {
                    SharedMediaLayout.this.profileActivity.getConnectionsManager().cancelRequest(this.reqId, true);
                    this.reqId = 0;
                    this.searchesInProgress--;
                    return;
                }
                return;
            }
            for (int i = 0; i < SharedMediaLayout.this.mediaPages.length; i++) {
                if (SharedMediaLayout.this.mediaPages[i].selectedType == this.currentType) {
                    SharedMediaLayout.this.mediaPages[i].emptyView.showProgress(true, z);
                }
            }
            Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$MediaSearchAdapter$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$search$3(str);
                }
            };
            this.searchRunnable = runnable2;
            AndroidUtilities.runOnUIThread(runnable2, 300L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$search$3(final String str) {
            int i;
            if (!SharedMediaLayout.this.sharedMediaData[this.currentType].messages.isEmpty() && ((i = this.currentType) == 1 || i == 4)) {
                MessageObject messageObject = SharedMediaLayout.this.sharedMediaData[this.currentType].messages.get(SharedMediaLayout.this.sharedMediaData[this.currentType].messages.size() - 1);
                queryServerSearch(str, messageObject.getId(), messageObject.getDialogId(), SharedMediaLayout.this.dialog_id == SharedMediaLayout.this.profileActivity.getUserConfig().getClientUserId() ? messageObject.getSavedDialogId() : 0L);
            } else if (this.currentType == 3) {
                queryServerSearch(str, 0, SharedMediaLayout.this.dialog_id, SharedMediaLayout.this.topicId);
            }
            int i2 = this.currentType;
            if (i2 == 1 || i2 == 4) {
                final ArrayList arrayList = new ArrayList(SharedMediaLayout.this.sharedMediaData[this.currentType].messages);
                this.searchesInProgress++;
                Utilities.searchQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$MediaSearchAdapter$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$search$2(str, arrayList);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$search$2(String str, ArrayList arrayList) {
            TLRPC.Document document;
            boolean zContains;
            String str2;
            String lowerCase = str.trim().toLowerCase();
            if (lowerCase.length() == 0) {
                updateSearchResults(new ArrayList<>());
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
                            if (this.currentType == 4) {
                                int i4 = messageObject.type;
                                TLRPC.Message message = messageObject.messageOwner;
                                if (i4 == 0) {
                                    document = MessageObject.getMedia(message).webpage.document;
                                } else {
                                    document = MessageObject.getMedia(message).document;
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
                            } else {
                                continue;
                            }
                        }
                        i3++;
                    }
                }
            }
            updateSearchResults(arrayList2);
        }

        private void updateSearchResults(final ArrayList<MessageObject> arrayList) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$MediaSearchAdapter$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$updateSearchResults$4(arrayList);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$updateSearchResults$4(ArrayList arrayList) {
            if (SharedMediaLayout.this.searching) {
                this.searchesInProgress--;
                int itemCount = getItemCount();
                this.searchResult = arrayList;
                int itemCount2 = getItemCount();
                if (this.searchesInProgress == 0 || itemCount2 != 0) {
                    SharedMediaLayout.this.switchToCurrentSelectedMode(false);
                }
                for (int i = 0; i < SharedMediaLayout.this.mediaPages.length; i++) {
                    if (SharedMediaLayout.this.mediaPages[i].selectedType == this.currentType) {
                        if (this.searchesInProgress == 0 && itemCount2 == 0) {
                            SharedMediaLayout.this.mediaPages[i].emptyView.title.setText(LocaleController.getString("NoResult", C2807R.string.NoResult));
                            SharedMediaLayout.this.mediaPages[i].emptyView.button.setVisibility(8);
                            SharedMediaLayout.this.mediaPages[i].emptyView.showProgress(false, true);
                        } else if (itemCount == 0) {
                            SharedMediaLayout sharedMediaLayout = SharedMediaLayout.this;
                            sharedMediaLayout.animateItemsEnter(sharedMediaLayout.mediaPages[i].listView, 0, null);
                        }
                    }
                }
                notifyDataSetChanged();
            }
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return this.searchResult.size() + this.globalSearch.size() != 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            int size = this.searchResult.size();
            int size2 = this.globalSearch.size();
            return size2 != 0 ? size + size2 : size;
        }

        public MessageObject getItem(int i) {
            if (i < this.searchResult.size()) {
                return this.searchResult.get(i);
            }
            return this.globalSearch.get(i - this.searchResult.size());
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View sharedDocumentCell;
            int i2 = this.currentType;
            int i3 = 0;
            if (i2 == 1) {
                sharedDocumentCell = new SharedDocumentCell(this.mContext, 0, SharedMediaLayout.this.resourcesProvider);
            } else if (i2 == 4) {
                sharedDocumentCell = new SharedAudioCell(this.mContext, i3, SharedMediaLayout.this.resourcesProvider) { // from class: org.telegram.ui.Components.SharedMediaLayout.MediaSearchAdapter.1
                    @Override // org.telegram.ui.Cells.SharedAudioCell
                    public boolean needPlayMessage(MessageObject messageObject) {
                        if (messageObject.isVoice() || messageObject.isRoundVideo()) {
                            boolean zPlayMessage = MediaController.getInstance().playMessage(messageObject);
                            MediaController.getInstance().setVoiceMessagesPlaylist(zPlayMessage ? MediaSearchAdapter.this.searchResult : null, false);
                            if (messageObject.isRoundVideo()) {
                                MediaController.getInstance().setCurrentVideoVisible(false);
                            }
                            return zPlayMessage;
                        }
                        if (messageObject.isMusic()) {
                            return MediaController.getInstance().setPlaylist(MediaSearchAdapter.this.searchResult, messageObject, SharedMediaLayout.this.mergeDialogId);
                        }
                        return false;
                    }
                };
            } else {
                SharedLinkCell sharedLinkCell = new SharedLinkCell(this.mContext, 0, SharedMediaLayout.this.resourcesProvider);
                sharedLinkCell.setDelegate(SharedMediaLayout.this.sharedLinkCellDelegate);
                sharedDocumentCell = sharedLinkCell;
            }
            sharedDocumentCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            return new RecyclerListView.Holder(sharedDocumentCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            int i2 = this.currentType;
            if (i2 == 1) {
                View view = viewHolder.itemView;
                if (view instanceof SharedDocumentCell) {
                    SharedDocumentCell sharedDocumentCell = (SharedDocumentCell) view;
                    MessageObject item = getItem(i);
                    sharedDocumentCell.setDocument(item, i != getItemCount() - 1);
                    SharedMediaLayout sharedMediaLayout = SharedMediaLayout.this;
                    if (sharedMediaLayout.isActionModeShowed) {
                        sharedDocumentCell.setChecked(sharedMediaLayout.selectedFiles[(item.getDialogId() > SharedMediaLayout.this.dialog_id ? 1 : (item.getDialogId() == SharedMediaLayout.this.dialog_id ? 0 : -1)) == 0 ? (char) 0 : (char) 1].indexOfKey(item.getId()) >= 0, !SharedMediaLayout.this.scrolling);
                        return;
                    } else {
                        sharedDocumentCell.setChecked(false, !sharedMediaLayout.scrolling);
                        return;
                    }
                }
                return;
            }
            if (i2 == 3) {
                View view2 = viewHolder.itemView;
                if (view2 instanceof SharedLinkCell) {
                    SharedLinkCell sharedLinkCell = (SharedLinkCell) view2;
                    MessageObject item2 = getItem(i);
                    sharedLinkCell.setLink(item2, i != getItemCount() - 1);
                    SharedMediaLayout sharedMediaLayout2 = SharedMediaLayout.this;
                    if (sharedMediaLayout2.isActionModeShowed) {
                        sharedLinkCell.setChecked(sharedMediaLayout2.selectedFiles[(item2.getDialogId() > SharedMediaLayout.this.dialog_id ? 1 : (item2.getDialogId() == SharedMediaLayout.this.dialog_id ? 0 : -1)) == 0 ? (char) 0 : (char) 1].indexOfKey(item2.getId()) >= 0, !SharedMediaLayout.this.scrolling);
                        return;
                    } else {
                        sharedLinkCell.setChecked(false, !sharedMediaLayout2.scrolling);
                        return;
                    }
                }
                return;
            }
            if (i2 == 4) {
                View view3 = viewHolder.itemView;
                if (view3 instanceof SharedAudioCell) {
                    SharedAudioCell sharedAudioCell = (SharedAudioCell) view3;
                    MessageObject item3 = getItem(i);
                    sharedAudioCell.setMessageObject(item3, i != getItemCount() - 1);
                    SharedMediaLayout sharedMediaLayout3 = SharedMediaLayout.this;
                    if (sharedMediaLayout3.isActionModeShowed) {
                        sharedAudioCell.setChecked(sharedMediaLayout3.selectedFiles[(item3.getDialogId() > SharedMediaLayout.this.dialog_id ? 1 : (item3.getDialogId() == SharedMediaLayout.this.dialog_id ? 0 : -1)) == 0 ? (char) 0 : (char) 1].indexOfKey(item3.getId()) >= 0, !SharedMediaLayout.this.scrolling);
                    } else {
                        sharedAudioCell.setChecked(false, !sharedMediaLayout3.scrolling);
                    }
                }
            }
        }
    }

    public class GifAdapter extends RecyclerListView.SelectionAdapter {
        private Context mContext;

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public long getItemId(int i) {
            return i;
        }

        public GifAdapter(Context context) {
            this.mContext = context;
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return SharedMediaLayout.this.sharedMediaData[5].messages.size() != 0 || SharedMediaLayout.this.sharedMediaData[5].loading;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            if (SharedMediaLayout.this.sharedMediaData[5].messages.size() != 0 || SharedMediaLayout.this.sharedMediaData[5].loading) {
                return SharedMediaLayout.this.sharedMediaData[5].messages.size();
            }
            return 1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return (SharedMediaLayout.this.sharedMediaData[5].messages.size() != 0 || SharedMediaLayout.this.sharedMediaData[5].loading) ? 12 : 11;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            if (i == 11) {
                View viewCreateEmptyStubView = SharedMediaLayout.createEmptyStubView(this.mContext, 5, SharedMediaLayout.this.dialog_id, SharedMediaLayout.this.resourcesProvider);
                viewCreateEmptyStubView.setLayoutParams(new RecyclerView.LayoutParams(-1, -1));
                return new RecyclerListView.Holder(viewCreateEmptyStubView);
            }
            ContextLinkCell contextLinkCell = new ContextLinkCell(this.mContext, true, SharedMediaLayout.this.resourcesProvider);
            contextLinkCell.setCanPreviewGif(true);
            return new RecyclerListView.Holder(contextLinkCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            MessageObject messageObject;
            TLRPC.Document document;
            if (viewHolder.getItemViewType() != 12 || (document = (messageObject = SharedMediaLayout.this.sharedMediaData[5].messages.get(i)).getDocument()) == null) {
                return;
            }
            View view = viewHolder.itemView;
            if (view instanceof ContextLinkCell) {
                ContextLinkCell contextLinkCell = (ContextLinkCell) view;
                contextLinkCell.setGif(document, messageObject, messageObject.messageOwner.date, false);
                SharedMediaLayout sharedMediaLayout = SharedMediaLayout.this;
                if (sharedMediaLayout.isActionModeShowed) {
                    contextLinkCell.setChecked(sharedMediaLayout.selectedFiles[(messageObject.getDialogId() > SharedMediaLayout.this.dialog_id ? 1 : (messageObject.getDialogId() == SharedMediaLayout.this.dialog_id ? 0 : -1)) == 0 ? (char) 0 : (char) 1].indexOfKey(messageObject.getId()) >= 0, !SharedMediaLayout.this.scrolling);
                } else {
                    contextLinkCell.setChecked(false, !sharedMediaLayout.scrolling);
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
            View view = viewHolder.itemView;
            if (view instanceof ContextLinkCell) {
                ImageReceiver photoImage = ((ContextLinkCell) view).getPhotoImage();
                if (SharedMediaLayout.this.mediaPages[0].selectedType == 5) {
                    photoImage.setAllowStartAnimation(true);
                    photoImage.startAnimation();
                } else {
                    photoImage.setAllowStartAnimation(false);
                    photoImage.stopAnimation();
                }
            }
        }
    }

    public class SavedDialogsAdapter extends RecyclerListView.SelectionAdapter {
        public RecyclerListView attachedToRecyclerView;
        private final SavedMessagesController controller;
        private final Context mContext;
        private boolean orderChanged;
        private final ArrayList<SavedMessagesController.SavedDialog> oldDialogs = new ArrayList<>();
        private final ArrayList<SavedMessagesController.SavedDialog> dialogs = new ArrayList<>();
        private Runnable notifyOrderUpdate = new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$SavedDialogsAdapter$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0();
            }
        };
        public final RecyclerView.RecycledViewPool viewPool = new RecyclerView.RecycledViewPool();
        public final ItemTouchHelper itemTouchHelper = new ItemTouchHelper(new ItemTouchHelper.Callback() { // from class: org.telegram.ui.Components.SharedMediaLayout.SavedDialogsAdapter.1
            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public boolean isLongPressDragEnabled() {
                return true;
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public void onSwiped(RecyclerView.ViewHolder viewHolder, int i) {
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public int getMovementFlags(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
                if (!SharedMediaLayout.this.isActionModeShowed || recyclerView.getAdapter() == SharedMediaLayout.this.savedMessagesSearchAdapter) {
                    return ItemTouchHelper.Callback.makeMovementFlags(0, 0);
                }
                SavedMessagesController.SavedDialog dialog = getDialog(viewHolder);
                if (dialog != null && dialog.pinned) {
                    return ItemTouchHelper.Callback.makeMovementFlags(3, 0);
                }
                return ItemTouchHelper.Callback.makeMovementFlags(0, 0);
            }

            private SavedMessagesController.SavedDialog getDialog(RecyclerView.ViewHolder viewHolder) {
                int adapterPosition;
                if (viewHolder != null && (adapterPosition = viewHolder.getAdapterPosition()) >= 0 && adapterPosition < SavedDialogsAdapter.this.dialogs.size()) {
                    return (SavedMessagesController.SavedDialog) SavedDialogsAdapter.this.dialogs.get(adapterPosition);
                }
                return null;
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public void onSelectedChanged(RecyclerView.ViewHolder viewHolder, int i) {
                RecyclerListView recyclerListView;
                if (viewHolder != null && (recyclerListView = SavedDialogsAdapter.this.attachedToRecyclerView) != null) {
                    recyclerListView.hideSelector(false);
                }
                if (i == 0) {
                    AndroidUtilities.cancelRunOnUIThread(SavedDialogsAdapter.this.notifyOrderUpdate);
                    AndroidUtilities.runOnUIThread(SavedDialogsAdapter.this.notifyOrderUpdate, 300L);
                }
                super.onSelectedChanged(viewHolder, i);
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public boolean onMove(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
                if (SharedMediaLayout.this.isActionModeShowed && recyclerView.getAdapter() != SharedMediaLayout.this.savedMessagesSearchAdapter) {
                    SavedMessagesController.SavedDialog dialog = getDialog(viewHolder);
                    SavedMessagesController.SavedDialog dialog2 = getDialog(viewHolder2);
                    if (dialog != null && dialog2 != null && dialog.pinned && dialog2.pinned) {
                        int adapterPosition = viewHolder.getAdapterPosition();
                        int adapterPosition2 = viewHolder2.getAdapterPosition();
                        SavedDialogsAdapter.this.dialogs.remove(adapterPosition);
                        SavedDialogsAdapter.this.dialogs.add(adapterPosition2, dialog);
                        SavedDialogsAdapter.this.notifyItemMoved(adapterPosition, adapterPosition2);
                        SavedDialogsAdapter.this.orderChanged = true;
                        return true;
                    }
                }
                return false;
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public void clearView(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
                super.clearView(recyclerView, viewHolder);
                viewHolder.itemView.setPressed(false);
            }
        });
        public final HashSet<Long> selectedDialogs = new HashSet<>();

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return 13;
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0() {
            if (this.orderChanged) {
                this.orderChanged = false;
                ArrayList<Long> arrayList = new ArrayList<>();
                for (int i = 0; i < this.dialogs.size(); i++) {
                    if (this.dialogs.get(i).pinned) {
                        arrayList.add(Long.valueOf(this.dialogs.get(i).dialogId));
                    }
                }
                SharedMediaLayout.this.profileActivity.getMessagesController().getSavedMessagesController().updatePinnedOrder(arrayList);
            }
        }

        public SavedDialogsAdapter(Context context) {
            this.mContext = context;
            SavedMessagesController savedMessagesController = SharedMediaLayout.this.profileActivity.getMessagesController().getSavedMessagesController();
            this.controller = savedMessagesController;
            if (SharedMediaLayout.this.includeSavedDialogs()) {
                savedMessagesController.loadDialogs(false);
            }
            setHasStableIds(true);
            update(false);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public long getItemId(int i) {
            return (i < 0 || i >= this.dialogs.size()) ? i : this.dialogs.get(i).dialogId;
        }

        public void update(boolean z) {
            this.oldDialogs.clear();
            this.oldDialogs.addAll(this.dialogs);
            this.dialogs.clear();
            this.dialogs.addAll(this.controller.allDialogs);
            if (z) {
                notifyDataSetChanged();
            }
        }

        public void select(View view) {
            SavedMessagesController.SavedDialog savedDialog;
            if (view instanceof DialogCell) {
                DialogCell dialogCell = (DialogCell) view;
                long dialogId = dialogCell.getDialogId();
                int i = 0;
                while (true) {
                    if (i >= this.dialogs.size()) {
                        savedDialog = null;
                        break;
                    } else {
                        if (this.dialogs.get(i).dialogId == dialogId) {
                            savedDialog = this.dialogs.get(i);
                            break;
                        }
                        i++;
                    }
                }
                if (savedDialog == null) {
                    return;
                }
                boolean zContains = this.selectedDialogs.contains(Long.valueOf(savedDialog.dialogId));
                HashSet<Long> hashSet = this.selectedDialogs;
                if (zContains) {
                    hashSet.remove(Long.valueOf(savedDialog.dialogId));
                    if (this.selectedDialogs.size() <= 0) {
                        SharedMediaLayout sharedMediaLayout = SharedMediaLayout.this;
                        if (sharedMediaLayout.isActionModeShowed) {
                            sharedMediaLayout.showActionMode(false);
                        }
                    }
                } else {
                    hashSet.add(Long.valueOf(savedDialog.dialogId));
                    if (this.selectedDialogs.size() > 0) {
                        SharedMediaLayout sharedMediaLayout2 = SharedMediaLayout.this;
                        if (!sharedMediaLayout2.isActionModeShowed) {
                            sharedMediaLayout2.showActionMode(true);
                            if (SharedMediaLayout.this.gotoItem != null) {
                                SharedMediaLayout.this.gotoItem.setVisibility(8);
                            }
                            if (SharedMediaLayout.this.forwardItem != null) {
                                SharedMediaLayout.this.forwardItem.setVisibility(8);
                            }
                        }
                    }
                }
                SharedMediaLayout.this.selectedMessagesCountTextView.setNumber(this.selectedDialogs.size(), true);
                boolean z = this.selectedDialogs.size() > 0;
                Iterator<Long> it = this.selectedDialogs.iterator();
                while (it.hasNext()) {
                    long jLongValue = it.next().longValue();
                    int i2 = 0;
                    while (true) {
                        if (i2 >= this.dialogs.size()) {
                            break;
                        }
                        SavedMessagesController.SavedDialog savedDialog2 = this.dialogs.get(i2);
                        if (savedDialog2.dialogId != jLongValue) {
                            i2++;
                        } else if (!savedDialog2.pinned) {
                            z = false;
                        }
                    }
                    if (!z) {
                        break;
                    }
                }
                if (SharedMediaLayout.this.pinItem != null) {
                    SharedMediaLayout.this.pinItem.setVisibility(z ? 8 : 0);
                }
                if (SharedMediaLayout.this.unpinItem != null) {
                    SharedMediaLayout.this.unpinItem.setVisibility(z ? 0 : 8);
                }
                dialogCell.setChecked(this.selectedDialogs.contains(Long.valueOf(savedDialog.dialogId)), true);
            }
        }

        public void unselectAll() {
            this.selectedDialogs.clear();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            DialogCell dialogCell = new DialogCell(null, this.mContext, false, true) { // from class: org.telegram.ui.Components.SharedMediaLayout.SavedDialogsAdapter.2
                @Override // org.telegram.ui.Cells.DialogCell
                public boolean isForumCell() {
                    return false;
                }

                @Override // org.telegram.ui.Cells.DialogCell
                public boolean getIsPinned() {
                    int childAdapterPosition;
                    RecyclerListView recyclerListView = SavedDialogsAdapter.this.attachedToRecyclerView;
                    if (recyclerListView == null) {
                        return false;
                    }
                    RecyclerView.Adapter adapter = recyclerListView.getAdapter();
                    SavedDialogsAdapter savedDialogsAdapter = SavedDialogsAdapter.this;
                    if (adapter != savedDialogsAdapter || (childAdapterPosition = savedDialogsAdapter.attachedToRecyclerView.getChildAdapterPosition(this)) < 0 || childAdapterPosition >= SavedDialogsAdapter.this.dialogs.size()) {
                        return false;
                    }
                    return ((SavedMessagesController.SavedDialog) SavedDialogsAdapter.this.dialogs.get(childAdapterPosition)).pinned;
                }
            };
            dialogCell.setDialogCellDelegate(SharedMediaLayout.this);
            dialogCell.isSavedDialog = true;
            dialogCell.setBackgroundColor(SharedMediaLayout.this.getThemedColor(Theme.key_windowBackgroundWhite));
            return new RecyclerListView.Holder(dialogCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            View view = viewHolder.itemView;
            if (view instanceof DialogCell) {
                DialogCell dialogCell = (DialogCell) view;
                SavedMessagesController.SavedDialog savedDialog = this.dialogs.get(i);
                dialogCell.setDialog(savedDialog.dialogId, savedDialog.message, savedDialog.getDate(), false, false);
                dialogCell.isSavedDialogCell = true;
                dialogCell.setChecked(this.selectedDialogs.contains(Long.valueOf(savedDialog.dialogId)), false);
                dialogCell.useSeparator = i + 1 < getItemCount();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.dialogs.size();
        }
    }

    public class SavedMessagesSearchAdapter extends RecyclerListView.SelectionAdapter {
        private final int currentAccount;
        private String lastQuery;
        private ReactionsLayoutInBubble.VisibleReaction lastReaction;
        int lastSearchId;
        private boolean loading;
        private final Context mContext;
        public final ArrayList<SavedMessagesController.SavedDialog> dialogs = new ArrayList<>();
        public final ArrayList<MessageObject> messages = new ArrayList<>();
        public final ArrayList<MessageObject> loadedMessages = new ArrayList<>();
        public final ArrayList<MessageObject> cachedMessages = new ArrayList<>();
        private boolean endReached = false;
        private int oldItemCounts = 0;
        private int count = 0;
        private int reqId = -1;
        private Runnable searchRunnable = new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$SavedMessagesSearchAdapter$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.sendRequest();
            }
        };

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return 23;
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return true;
        }

        public SavedMessagesSearchAdapter(Context context) {
            this.mContext = context;
            this.currentAccount = SharedMediaLayout.this.profileActivity.getCurrentAccount();
            setHasStableIds(true);
        }

        public void search(String str, ReactionsLayoutInBubble.VisibleReaction visibleReaction) {
            if (TextUtils.equals(str, this.lastQuery)) {
                ReactionsLayoutInBubble.VisibleReaction visibleReaction2 = this.lastReaction;
                if (visibleReaction2 == null && visibleReaction == null) {
                    return;
                }
                if (visibleReaction2 != null && visibleReaction2.equals(visibleReaction)) {
                    return;
                }
            }
            this.lastQuery = str;
            this.lastReaction = visibleReaction;
            if (this.reqId >= 0) {
                ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.reqId, true);
                this.reqId = -1;
            }
            this.cachedMessages.clear();
            this.loadedMessages.clear();
            this.messages.clear();
            this.count = 0;
            this.endReached = false;
            this.loading = true;
            this.dialogs.clear();
            if (this.lastReaction == null) {
                this.dialogs.addAll(MessagesController.getInstance(this.currentAccount).getSavedMessagesController().searchDialogs(str));
            }
            for (int i = 0; i < SharedMediaLayout.this.mediaPages.length; i++) {
                if (SharedMediaLayout.this.mediaPages[i].selectedType == 11) {
                    SharedMediaLayout.this.mediaPages[i].emptyView.showProgress(true, true);
                }
            }
            if (this.lastReaction == null) {
                notifyDataSetChanged();
            }
            AndroidUtilities.cancelRunOnUIThread(this.searchRunnable);
            AndroidUtilities.runOnUIThread(this.searchRunnable, this.lastReaction != null ? 60L : 600L);
        }

        public void loadMore() {
            if (this.endReached || this.loading) {
                return;
            }
            this.loading = true;
            sendRequest();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void sendRequest() {
            if (TextUtils.isEmpty(this.lastQuery) && this.lastReaction == null) {
                this.loading = false;
                return;
            }
            final TLRPC.TL_messages_search tL_messages_search = new TLRPC.TL_messages_search();
            tL_messages_search.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(UserConfig.getInstance(this.currentAccount).getClientUserId());
            tL_messages_search.filter = new TLRPC.TL_inputMessagesFilterEmpty();
            tL_messages_search.f1032q = this.lastQuery;
            ReactionsLayoutInBubble.VisibleReaction visibleReaction = this.lastReaction;
            if (visibleReaction != null) {
                tL_messages_search.flags |= 8;
                tL_messages_search.saved_reaction.add(visibleReaction.toTLReaction());
            }
            if (this.loadedMessages.size() > 0) {
                tL_messages_search.offset_id = this.loadedMessages.get(r2.size() - 1).getId();
            }
            tL_messages_search.limit = 10;
            this.endReached = false;
            final int i = this.lastSearchId + 1;
            this.lastSearchId = i;
            final Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$SavedMessagesSearchAdapter$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$sendRequest$2(i, tL_messages_search);
                }
            };
            if (this.lastReaction != null) {
                MessagesStorage.getInstance(this.currentAccount).searchSavedByTag(this.lastReaction.toTLReaction(), 0L, this.lastQuery, 100, this.cachedMessages.size(), new Utilities.Callback4() { // from class: org.telegram.ui.Components.SharedMediaLayout$SavedMessagesSearchAdapter$$ExternalSyntheticLambda2
                    @Override // org.telegram.messenger.Utilities.Callback4
                    public final void run(Object obj, Object obj2, Object obj3, Object obj4) {
                        this.f$0.lambda$sendRequest$3(runnable, (ArrayList) obj, (ArrayList) obj2, (ArrayList) obj3, (ArrayList) obj4);
                    }
                }, false);
            } else {
                runnable.run();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$sendRequest$2(final int i, TLRPC.TL_messages_search tL_messages_search) {
            if (i != this.lastSearchId) {
                return;
            }
            this.reqId = ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_messages_search, new RequestDelegate() { // from class: org.telegram.ui.Components.SharedMediaLayout$SavedMessagesSearchAdapter$$ExternalSyntheticLambda3
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$sendRequest$1(i, tLObject, tL_error);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$sendRequest$1(final int i, final TLObject tLObject, TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$SavedMessagesSearchAdapter$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$sendRequest$0(tLObject, i);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$sendRequest$0(TLObject tLObject, int i) {
            if ((tLObject instanceof TLRPC.messages_Messages) && i == this.lastSearchId) {
                TLRPC.messages_Messages messages_messages = (TLRPC.messages_Messages) tLObject;
                MessagesController.getInstance(this.currentAccount).putUsers(messages_messages.users, false);
                MessagesController.getInstance(this.currentAccount).putChats(messages_messages.chats, false);
                MessagesStorage.getInstance(this.currentAccount).putUsersAndChats(messages_messages.users, messages_messages.chats, true, true);
                for (int i2 = 0; i2 < messages_messages.messages.size(); i2++) {
                    MessageObject messageObject = new MessageObject(this.currentAccount, messages_messages.messages.get(i2), false, true);
                    if (messageObject.hasValidGroupId()) {
                        messageObject.isPrimaryGroupMessage = true;
                    }
                    messageObject.setQuery(this.lastQuery);
                    this.loadedMessages.add(messageObject);
                }
                this.count = messages_messages.count;
                if (messages_messages instanceof TLRPC.TL_messages_messagesSlice) {
                    this.endReached = this.loadedMessages.size() >= messages_messages.count;
                } else if (messages_messages instanceof TLRPC.TL_messages_messages) {
                    this.endReached = true;
                }
                updateMessages(false);
                this.loading = false;
                this.reqId = -1;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$sendRequest$3(Runnable runnable, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4) {
            MessagesController.getInstance(this.currentAccount).putUsers(arrayList2, true);
            MessagesController.getInstance(this.currentAccount).putChats(arrayList3, true);
            AnimatedEmojiDrawable.getDocumentFetcher(this.currentAccount).processDocuments(arrayList4);
            for (int i = 0; i < arrayList.size(); i++) {
                MessageObject messageObject = (MessageObject) arrayList.get(i);
                if (messageObject.hasValidGroupId() && messageObject.messageOwner.reactions != null) {
                    messageObject.isPrimaryGroupMessage = true;
                }
                messageObject.setQuery(this.lastQuery);
                this.cachedMessages.add(messageObject);
            }
            updateMessages(true);
            AndroidUtilities.runOnUIThread(runnable, 540L);
        }

        private void updateMessages(boolean z) {
            this.messages.clear();
            HashSet hashSet = new HashSet();
            for (int i = 0; i < this.loadedMessages.size(); i++) {
                MessageObject messageObject = this.loadedMessages.get(i);
                if (messageObject != null && !hashSet.contains(Integer.valueOf(messageObject.getId()))) {
                    hashSet.add(Integer.valueOf(messageObject.getId()));
                    this.messages.add(messageObject);
                }
            }
            for (int i2 = 0; i2 < this.cachedMessages.size(); i2++) {
                MessageObject messageObject2 = this.cachedMessages.get(i2);
                if (messageObject2 != null && !hashSet.contains(Integer.valueOf(messageObject2.getId()))) {
                    hashSet.add(Integer.valueOf(messageObject2.getId()));
                    this.messages.add(messageObject2);
                }
            }
            if (!z || !this.cachedMessages.isEmpty()) {
                for (int i3 = 0; i3 < SharedMediaLayout.this.mediaPages.length; i3++) {
                    if (SharedMediaLayout.this.mediaPages[i3].selectedType == 11 && this.messages.isEmpty() && this.dialogs.isEmpty()) {
                        SharedMediaLayout.this.mediaPages[i3].emptyView.title.setText((this.lastReaction == null || !TextUtils.isEmpty(this.lastQuery)) ? LocaleController.formatString(C2807R.string.NoResultFoundFor, this.lastQuery) : AndroidUtilities.replaceCharSequence("%s", LocaleController.getString(C2807R.string.NoResultFoundForTag), this.lastReaction.toCharSequence(SharedMediaLayout.this.mediaPages[i3].emptyView.title.getPaint().getFontMetricsInt())));
                        SharedMediaLayout.this.mediaPages[i3].emptyView.button.setVisibility(8);
                        SharedMediaLayout.this.mediaPages[i3].emptyView.showProgress(false, true);
                    }
                }
            }
            this.oldItemCounts = this.count;
            notifyDataSetChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public long getItemId(int i) {
            int iHash;
            if (i < 0) {
                return i;
            }
            int size = this.dialogs.size();
            ArrayList<SavedMessagesController.SavedDialog> arrayList = this.dialogs;
            if (i < size) {
                iHash = Objects.hash(1, Long.valueOf(arrayList.get(i).dialogId));
            } else {
                int size2 = i - arrayList.size();
                if (size2 >= this.messages.size()) {
                    return size2;
                }
                iHash = Objects.hash(2, Long.valueOf(this.messages.get(size2).getSavedDialogId()), Integer.valueOf(this.messages.get(size2).getId()));
            }
            return iHash;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            DialogCell dialogCell = new DialogCell(null, this.mContext, false, true) { // from class: org.telegram.ui.Components.SharedMediaLayout.SavedMessagesSearchAdapter.1
                @Override // org.telegram.ui.Cells.DialogCell
                public boolean isForumCell() {
                    return false;
                }
            };
            dialogCell.setDialogCellDelegate(SharedMediaLayout.this);
            dialogCell.isSavedDialog = true;
            dialogCell.setBackgroundColor(SharedMediaLayout.this.getThemedColor(Theme.key_windowBackgroundWhite));
            return new RecyclerListView.Holder(dialogCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            if (i < 0) {
                return;
            }
            View view = viewHolder.itemView;
            if (view instanceof DialogCell) {
                DialogCell dialogCell = (DialogCell) view;
                dialogCell.useSeparator = i + 1 < getItemCount();
                int size = this.dialogs.size();
                ArrayList<SavedMessagesController.SavedDialog> arrayList = this.dialogs;
                if (i < size) {
                    SavedMessagesController.SavedDialog savedDialog = arrayList.get(i);
                    dialogCell.setDialog(savedDialog.dialogId, savedDialog.message, savedDialog.getDate(), false, false);
                    return;
                }
                int size2 = i - arrayList.size();
                if (size2 < this.messages.size()) {
                    MessageObject messageObject = this.messages.get(size2);
                    dialogCell.setDialog(messageObject.getSavedDialogId(), messageObject, messageObject.messageOwner.date, false, false);
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.dialogs.size() + this.messages.size();
        }
    }

    public class ChannelRecommendationsAdapter extends RecyclerListView.SelectionAdapter {
        private final ArrayList<TLObject> chats = new ArrayList<>();
        private final Context mContext;
        private int more;

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return true;
        }

        public ChannelRecommendationsAdapter(Context context) {
            this.mContext = context;
            update(false);
        }

        public void update(boolean z) {
            if (SharedMediaLayout.this.profileActivity == null) {
                return;
            }
            boolean zIsChatDialog = DialogObject.isChatDialog(SharedMediaLayout.this.dialog_id);
            SharedMediaLayout sharedMediaLayout = SharedMediaLayout.this;
            if (zIsChatDialog) {
                TLRPC.Chat chat = MessagesController.getInstance(sharedMediaLayout.profileActivity.getCurrentAccount()).getChat(Long.valueOf(-SharedMediaLayout.this.dialog_id));
                if (chat == null || !ChatObject.isChannelAndNotMegaGroup(chat)) {
                    return;
                }
            } else if (MessagesController.getInstance(sharedMediaLayout.profileActivity.getCurrentAccount()).getUser(Long.valueOf(SharedMediaLayout.this.dialog_id)) == null) {
                return;
            }
            MessagesController.ChannelRecommendations channelRecommendations = MessagesController.getInstance(SharedMediaLayout.this.profileActivity.getCurrentAccount()).getChannelRecommendations(SharedMediaLayout.this.dialog_id);
            this.chats.clear();
            int i = 0;
            if (channelRecommendations != null) {
                for (int i2 = 0; i2 < channelRecommendations.chats.size(); i2++) {
                    TLObject tLObject = channelRecommendations.chats.get(i2);
                    if ((tLObject instanceof TLRPC.Chat) && ChatObject.isNotInChat((TLRPC.Chat) tLObject)) {
                        this.chats.add(tLObject);
                    } else {
                        this.chats.add(tLObject);
                    }
                }
            }
            if (!this.chats.isEmpty() && !UserConfig.getInstance(SharedMediaLayout.this.profileActivity.getCurrentAccount()).isPremium()) {
                i = channelRecommendations.more;
            }
            this.more = i;
            if (z) {
                notifyDataSetChanged();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.chats.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View profileSearchCell;
            if (i == 18) {
                profileSearchCell = new MoreRecommendationsCell(SharedMediaLayout.this.profileActivity == null ? UserConfig.selectedAccount : SharedMediaLayout.this.profileActivity.getCurrentAccount(), this.mContext, SharedMediaLayout.this.dialog_id > 0, SharedMediaLayout.this.resourcesProvider, new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$ChannelRecommendationsAdapter$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onCreateViewHolder$0();
                    }
                });
            } else {
                profileSearchCell = new ProfileSearchCell(this.mContext, SharedMediaLayout.this.resourcesProvider);
            }
            profileSearchCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            return new RecyclerListView.Holder(profileSearchCell);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateViewHolder$0() {
            if (SharedMediaLayout.this.profileActivity != null) {
                SharedMediaLayout.this.profileActivity.presentFragment(new PremiumPreviewFragment("similar_channels"));
            }
        }

        public void openPreview(final int i) {
            if (i < 0 || i >= this.chats.size()) {
                return;
            }
            TLObject tLObject = this.chats.get(i);
            Bundle bundle = new Bundle();
            boolean z = tLObject instanceof TLRPC.Chat;
            if (z) {
                bundle.putLong("chat_id", ((TLRPC.Chat) tLObject).id);
            } else if (!(tLObject instanceof TLRPC.User)) {
                return;
            } else {
                bundle.putLong("user_id", ((TLRPC.User) tLObject).id);
            }
            ChatActivity chatActivity = new ChatActivity(bundle);
            if (SharedMediaLayout.this.profileActivity instanceof ProfileActivity) {
                ((ProfileActivity) SharedMediaLayout.this.profileActivity).prepareBlurBitmap();
            }
            ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = new ActionBarPopupWindow.ActionBarPopupWindowLayout(SharedMediaLayout.this.getContext(), C2807R.drawable.popup_fixed_alert, SharedMediaLayout.this.resourcesProvider, 2);
            actionBarPopupWindowLayout.setBackgroundColor(SharedMediaLayout.this.getThemedColor(Theme.key_actionBarDefaultSubmenuBackground));
            if (z) {
                final TLRPC.Chat chat = (TLRPC.Chat) tLObject;
                ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem(SharedMediaLayout.this.getContext(), false, false);
                actionBarMenuSubItem.setTextAndIcon(LocaleController.getString(C2807R.string.OpenChannel2), C2807R.drawable.msg_channel);
                actionBarMenuSubItem.setMinimumWidth(160);
                actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.SharedMediaLayout$ChannelRecommendationsAdapter$$ExternalSyntheticLambda1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$openPreview$1(view);
                    }
                });
                actionBarPopupWindowLayout.addView(actionBarMenuSubItem);
                ActionBarMenuSubItem actionBarMenuSubItem2 = new ActionBarMenuSubItem(SharedMediaLayout.this.getContext(), false, false);
                actionBarMenuSubItem2.setTextAndIcon(LocaleController.getString(C2807R.string.ProfileJoinChannel), C2807R.drawable.msg_addbot);
                actionBarMenuSubItem2.setMinimumWidth(160);
                actionBarMenuSubItem2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.SharedMediaLayout$ChannelRecommendationsAdapter$$ExternalSyntheticLambda2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$openPreview$3(chat, i, view);
                    }
                });
                actionBarPopupWindowLayout.addView(actionBarMenuSubItem2);
                SharedMediaLayout.this.profileActivity.presentFragmentAsPreviewWithMenu(chatActivity, actionBarPopupWindowLayout);
                return;
            }
            if (tLObject instanceof TLRPC.User) {
                SharedMediaLayout.this.profileActivity.presentFragmentAsPreview(chatActivity);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$openPreview$1(View view) {
            if (SharedMediaLayout.this.profileActivity == null || SharedMediaLayout.this.profileActivity.getParentLayout() == null) {
                return;
            }
            SharedMediaLayout.this.profileActivity.getParentLayout().expandPreviewFragment();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$openPreview$3(final TLRPC.Chat chat, int i, View view) {
            SharedMediaLayout.this.profileActivity.finishPreviewFragment();
            chat.left = false;
            update(false);
            notifyItemRemoved(i);
            if (this.chats.isEmpty()) {
                SharedMediaLayout.this.updateTabs(true);
                SharedMediaLayout.this.checkCurrentTabValid();
            }
            SharedMediaLayout.this.profileActivity.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.channelRecommendationsLoaded, Long.valueOf(-SharedMediaLayout.this.dialog_id));
            SharedMediaLayout.this.profileActivity.getMessagesController().addUserToChat(chat.id, SharedMediaLayout.this.profileActivity.getUserConfig().getCurrentUser(), 0, null, SharedMediaLayout.this.profileActivity, new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$ChannelRecommendationsAdapter$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$openPreview$2(chat);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$openPreview$2(TLRPC.Chat chat) {
            BulletinFactory.of(SharedMediaLayout.this.profileActivity).createSimpleBulletin(C2807R.raw.contact_check, LocaleController.formatString(C2807R.string.YouJoinedChannel, chat == null ? _UrlKt.FRAGMENT_ENCODE_SET : chat.title)).show(true);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            ProfileSearchCell profileSearchCell;
            if (viewHolder.getItemViewType() == 17) {
                View view = viewHolder.itemView;
                if (!(view instanceof ProfileSearchCell)) {
                    return;
                } else {
                    profileSearchCell = (ProfileSearchCell) view;
                }
            } else if (viewHolder.getItemViewType() == 18) {
                View view2 = viewHolder.itemView;
                if (!(view2 instanceof MoreRecommendationsCell)) {
                    return;
                } else {
                    profileSearchCell = ((MoreRecommendationsCell) view2).channelCell;
                }
            } else {
                profileSearchCell = null;
            }
            ProfileSearchCell profileSearchCell2 = profileSearchCell;
            if (profileSearchCell2 != null) {
                profileSearchCell2.setData(this.chats.get(i), null, null, null, false, false);
                profileSearchCell2.useSeparator = i != this.chats.size() - 1;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return (this.more <= 0 || i != getItemCount() + (-1)) ? 17 : 18;
        }
    }

    public static class MoreRecommendationsCell extends FrameLayout {
        private final ButtonWithCounterView button;
        public final ProfileSearchCell channelCell;
        private final int currentAccount;
        private final View gradientView;
        private final Theme.ResourcesProvider resourcesProvider;
        private final LinkSpanDrawable.LinksTextView textView;

        public MoreRecommendationsCell(int i, Context context, boolean z, Theme.ResourcesProvider resourcesProvider, final Runnable runnable) {
            super(context);
            this.currentAccount = i;
            this.resourcesProvider = resourcesProvider;
            ProfileSearchCell profileSearchCell = new ProfileSearchCell(context, resourcesProvider);
            this.channelCell = profileSearchCell;
            profileSearchCell.setBackground(Theme.createSelectorDrawable(Theme.getColor(Theme.key_listSelector, resourcesProvider), 2));
            addView(profileSearchCell, LayoutHelper.createFrame(-1, -2.0f));
            View view = new View(context);
            this.gradientView = view;
            GradientDrawable.Orientation orientation = GradientDrawable.Orientation.TOP_BOTTOM;
            int i2 = Theme.key_windowBackgroundWhite;
            view.setBackground(new GradientDrawable(orientation, new int[]{Theme.multAlpha(Theme.getColor(i2, resourcesProvider), 0.4f), Theme.getColor(i2, resourcesProvider)}));
            addView(view, LayoutHelper.createFrame(-1, 60.0f));
            ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(context, resourcesProvider);
            this.button = buttonWithCounterView;
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            spannableStringBuilder.append((CharSequence) LocaleController.getString(z ? C2807R.string.MoreSimilarBotsButton : C2807R.string.MoreSimilarButton));
            spannableStringBuilder.append((CharSequence) " ");
            SpannableString spannableString = new SpannableString("l");
            spannableString.setSpan(new ColoredImageSpan(C2807R.drawable.msg_mini_lock2), 0, 1, 33);
            spannableStringBuilder.append((CharSequence) spannableString);
            buttonWithCounterView.setText(spannableStringBuilder, false);
            addView(buttonWithCounterView, LayoutHelper.createFrame(-1, 48.0f, 48, 14.0f, 38.0f, 14.0f, 0.0f));
            buttonWithCounterView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.SharedMediaLayout$MoreRecommendationsCell$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    SharedMediaLayout.MoreRecommendationsCell.$r8$lambda$dLoTI4WFYldylJ4gddpppZ5YISo(runnable, view2);
                }
            });
            LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(context, resourcesProvider);
            this.textView = linksTextView;
            linksTextView.setTextSize(1, 13.0f);
            linksTextView.setTextAlignment(4);
            linksTextView.setGravity(17);
            linksTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, resourcesProvider));
            linksTextView.setLinkTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlueText, resourcesProvider));
            linksTextView.setLineSpacing(AndroidUtilities.dp(3.0f), 1.0f);
            SpannableStringBuilder spannableStringBuilderPremiumText = AndroidUtilities.premiumText(LocaleController.getString(z ? C2807R.string.MoreSimilarBotsText : C2807R.string.MoreSimilarText), new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$MoreRecommendationsCell$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    SharedMediaLayout.MoreRecommendationsCell.$r8$lambda$PF2whsReps3BoQqnyxJALG04ai8(runnable);
                }
            });
            SpannableString spannableString2 = new SpannableString(_UrlKt.FRAGMENT_ENCODE_SET + MessagesController.getInstance(i).recommendedChannelsLimitPremium);
            spannableString2.setSpan(new TypefaceSpan(AndroidUtilities.bold()), 0, spannableString2.length(), 33);
            linksTextView.setText(AndroidUtilities.replaceCharSequence("%s", spannableStringBuilderPremiumText, spannableString2));
            addView(linksTextView, LayoutHelper.createFrame(-1, -2.0f, 49, 24.0f, 96.0f, 24.0f, 12.0f));
        }

        public static /* synthetic */ void $r8$lambda$dLoTI4WFYldylJ4gddpppZ5YISo(Runnable runnable, View view) {
            if (runnable != null) {
                runnable.run();
            }
        }

        public static /* synthetic */ void $r8$lambda$PF2whsReps3BoQqnyxJALG04ai8(Runnable runnable) {
            if (runnable != null) {
                runnable.run();
            }
        }

        @Override // android.widget.FrameLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(145.0f), TLObject.FLAG_30));
        }
    }

    public class CommonGroupsAdapter extends RecyclerListView.SelectionAdapter {
        private ArrayList<TLRPC.Chat> chats = new ArrayList<>();
        private boolean endReached;
        private boolean firstLoaded;
        private boolean loading;
        private Context mContext;

        public CommonGroupsAdapter(Context context) {
            this.mContext = context;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void getChats(long j, final int i) {
            long j2;
            if (this.loading) {
                return;
            }
            TLRPC.TL_messages_getCommonChats tL_messages_getCommonChats = new TLRPC.TL_messages_getCommonChats();
            boolean zIsEncryptedDialog = DialogObject.isEncryptedDialog(SharedMediaLayout.this.dialog_id);
            SharedMediaLayout sharedMediaLayout = SharedMediaLayout.this;
            if (zIsEncryptedDialog) {
                j2 = sharedMediaLayout.profileActivity.getMessagesController().getEncryptedChat(Integer.valueOf(DialogObject.getEncryptedChatId(SharedMediaLayout.this.dialog_id))).user_id;
            } else {
                j2 = sharedMediaLayout.dialog_id;
            }
            TLRPC.InputUser inputUser = SharedMediaLayout.this.profileActivity.getMessagesController().getInputUser(j2);
            tL_messages_getCommonChats.user_id = inputUser;
            if (inputUser instanceof TLRPC.TL_inputUserEmpty) {
                return;
            }
            tL_messages_getCommonChats.limit = i;
            tL_messages_getCommonChats.max_id = j;
            this.loading = true;
            notifyDataSetChanged();
            SharedMediaLayout.this.profileActivity.getConnectionsManager().bindRequestToGuid(SharedMediaLayout.this.profileActivity.getConnectionsManager().sendRequest(tL_messages_getCommonChats, new RequestDelegate() { // from class: org.telegram.ui.Components.SharedMediaLayout$CommonGroupsAdapter$$ExternalSyntheticLambda0
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$getChats$1(i, tLObject, tL_error);
                }
            }), SharedMediaLayout.this.profileActivity.getClassGuid());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$getChats$1(final int i, final TLObject tLObject, final TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$CommonGroupsAdapter$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$getChats$0(tL_error, tLObject, i);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$getChats$0(TLRPC.TL_error tL_error, TLObject tLObject, int i) {
            int itemCount = getItemCount();
            if (tL_error == null) {
                TLRPC.messages_Chats messages_chats = (TLRPC.messages_Chats) tLObject;
                SharedMediaLayout.this.profileActivity.getMessagesController().putChats(messages_chats.chats, false);
                this.endReached = messages_chats.chats.isEmpty() || messages_chats.chats.size() != i;
                this.chats.addAll(messages_chats.chats);
            } else {
                this.endReached = true;
            }
            for (int i2 = 0; i2 < SharedMediaLayout.this.mediaPages.length; i2++) {
                if (SharedMediaLayout.this.mediaPages[i2].selectedType == 6 && SharedMediaLayout.this.mediaPages[i2].listView != null) {
                    InternalListView internalListView = SharedMediaLayout.this.mediaPages[i2].listView;
                    if (this.firstLoaded || itemCount == 0) {
                        SharedMediaLayout.this.animateItemsEnter(internalListView, 0, null);
                    }
                }
            }
            this.loading = false;
            this.firstLoaded = true;
            notifyDataSetChanged();
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return viewHolder.getAdapterPosition() != this.chats.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            if (this.chats.isEmpty() && !this.loading) {
                return 1;
            }
            int size = this.chats.size();
            return (this.chats.isEmpty() || this.endReached) ? size : size + 1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View profileSearchCell;
            if (i == 14) {
                profileSearchCell = new ProfileSearchCell(this.mContext, SharedMediaLayout.this.resourcesProvider);
            } else {
                if (i == 15) {
                    View viewCreateEmptyStubView = SharedMediaLayout.createEmptyStubView(this.mContext, 6, SharedMediaLayout.this.dialog_id, SharedMediaLayout.this.resourcesProvider);
                    viewCreateEmptyStubView.setLayoutParams(new RecyclerView.LayoutParams(-1, -1));
                    return new RecyclerListView.Holder(viewCreateEmptyStubView);
                }
                FlickerLoadingView flickerLoadingView = new FlickerLoadingView(this.mContext, SharedMediaLayout.this.resourcesProvider);
                flickerLoadingView.setIsSingleCell(true);
                flickerLoadingView.showDate(false);
                flickerLoadingView.setViewType(1);
                profileSearchCell = flickerLoadingView;
            }
            profileSearchCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            return new RecyclerListView.Holder(profileSearchCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            if (viewHolder.getItemViewType() == 14) {
                View view = viewHolder.itemView;
                if (view instanceof ProfileSearchCell) {
                    ProfileSearchCell profileSearchCell = (ProfileSearchCell) view;
                    profileSearchCell.setData(this.chats.get(i), null, null, null, false, false);
                    boolean z = true;
                    if (i == this.chats.size() - 1 && this.endReached) {
                        z = false;
                    }
                    profileSearchCell.useSeparator = z;
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (!this.chats.isEmpty() || this.loading) {
                return i < this.chats.size() ? 14 : 16;
            }
            return 15;
        }
    }

    public int getStoriesCount(int i) {
        StoriesAdapter storiesAdapterStoryAlbums_getStoriesAdapterByTabType;
        StoriesController.StoriesList storiesList;
        if (!isAnyStoryPageType(i) || (storiesAdapterStoryAlbums_getStoriesAdapterByTabType = storyAlbums_getStoriesAdapterByTabType(i)) == null || (storiesList = storiesAdapterStoryAlbums_getStoriesAdapterByTabType.storiesList) == null) {
            return 0;
        }
        return storiesList.getCount();
    }

    public String getBotPreviewsSubtitle(boolean z) {
        int i;
        int i2;
        TLRPC.MessageMedia messageMedia;
        BotPreviewsEditContainer botPreviewsEditContainer;
        if (!isBot()) {
            return LocaleController.getString(C2807R.string.BotPreviewEmpty);
        }
        if (z && (botPreviewsEditContainer = this.botPreviewsContainer) != null) {
            return botPreviewsEditContainer.getBotPreviewsSubtitle();
        }
        StoriesAdapter storiesAdapter = this.storiesAdapter;
        if (storiesAdapter == null || storiesAdapter.storiesList == null) {
            i = 0;
            i2 = 0;
        } else {
            i = 0;
            i2 = 0;
            for (int i3 = 0; i3 < this.storiesAdapter.storiesList.messageObjects.size(); i3++) {
                MessageObject messageObject = this.storiesAdapter.storiesList.messageObjects.get(i3);
                TL_stories.StoryItem storyItem = messageObject.storyItem;
                if (storyItem != null && (messageMedia = storyItem.media) != null) {
                    if (MessageObject.isVideoDocument(messageMedia.document)) {
                        i2++;
                    } else if (messageObject.storyItem.media.photo != null) {
                        i++;
                    }
                }
            }
        }
        if (i == 0 && i2 == 0) {
            return LocaleController.getString(C2807R.string.BotPreviewEmpty);
        }
        StringBuilder sb = new StringBuilder();
        if (i > 0) {
            sb.append(LocaleController.formatPluralString("Images", i, new Object[0]));
        }
        if (i2 > 0) {
            if (sb.length() > 0) {
                sb.append(", ");
            }
            sb.append(LocaleController.formatPluralString("Videos", i2, new Object[0]));
        }
        return sb.toString();
    }

    public void updateStoriesList(StoriesController.StoriesList storiesList) {
        this.searchStoriesList = storiesList;
        StoriesAdapter storiesAdapter = this.storiesAdapter;
        storiesAdapter.storiesList = storiesList;
        storiesAdapter.notifyDataSetChanged();
        StoriesAdapter storiesAdapter2 = this.animationSupportingStoriesAdapter;
        storiesAdapter2.storiesList = storiesList;
        storiesAdapter2.notifyDataSetChanged();
    }

    public class StoriesAdapter extends SharedPhotoVideoAdapter {
        private final int albumId;
        public boolean applyingReorder;
        private int id;
        private boolean inAlbumStoriesReorder;
        private final boolean isArchive;
        public ArrayList<Integer> lastPinnedIds;
        private ViewsForPeerStoriesRequester poller;
        public StoriesController.StoriesList storiesList;
        private StoriesAdapter supportingAdapter;
        private final ArrayList<StoriesController.UploadingStory> uploadingStories;

        @Override // org.telegram.ui.Components.SharedMediaLayout.SharedPhotoVideoAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return 19;
        }

        public int getTopOffset() {
            return 0;
        }

        @Override // org.telegram.ui.Components.SharedMediaLayout.SharedPhotoVideoAdapter, org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return false;
        }

        @Override // org.telegram.ui.Components.SharedMediaLayout.SharedPhotoVideoAdapter, org.telegram.ui.Components.RecyclerListView.FastScrollAdapter
        public /* bridge */ /* synthetic */ boolean fastScrollIsVisible(RecyclerListView recyclerListView) {
            return super.fastScrollIsVisible(recyclerListView);
        }

        @Override // org.telegram.ui.Components.SharedMediaLayout.SharedPhotoVideoAdapter, org.telegram.ui.Components.RecyclerListView.FastScrollAdapter
        public /* bridge */ /* synthetic */ void getPositionForScrollProgress(RecyclerListView recyclerListView, float f, int[] iArr) {
            super.getPositionForScrollProgress(recyclerListView, f, iArr);
        }

        @Override // org.telegram.ui.Components.SharedMediaLayout.SharedPhotoVideoAdapter, org.telegram.ui.Components.RecyclerListView.FastScrollAdapter
        public /* bridge */ /* synthetic */ float getScrollProgress(RecyclerListView recyclerListView) {
            return super.getScrollProgress(recyclerListView);
        }

        @Override // org.telegram.ui.Components.SharedMediaLayout.SharedPhotoVideoAdapter, org.telegram.ui.Components.RecyclerListView.FastScrollAdapter
        public /* bridge */ /* synthetic */ void onFinishFastScroll(RecyclerListView recyclerListView) {
            super.onFinishFastScroll(recyclerListView);
        }

        @Override // org.telegram.ui.Components.SharedMediaLayout.SharedPhotoVideoAdapter, org.telegram.ui.Components.RecyclerListView.FastScrollAdapter
        public /* bridge */ /* synthetic */ void onStartFastScroll() {
            super.onStartFastScroll();
        }

        public StoriesAdapter(SharedMediaLayout sharedMediaLayout, Context context, boolean z) {
            this(context, 0, z);
        }

        public StoriesAdapter(Context context, int i, boolean z) {
            TLRPC.User user;
            StoriesAdapter storiesAdapter;
            super(context);
            this.uploadingStories = new ArrayList<>();
            this.lastPinnedIds = new ArrayList<>();
            this.isArchive = z;
            this.albumId = i;
            int currentAccount = SharedMediaLayout.this.profileActivity.getCurrentAccount();
            if (!TextUtils.isEmpty(SharedMediaLayout.this.getStoriesHashtag())) {
                if (SharedMediaLayout.this.searchStoriesList == null) {
                    SharedMediaLayout.this.searchStoriesList = new StoriesController.SearchStoriesList(currentAccount, TextUtils.isEmpty(SharedMediaLayout.this.getStoriesHashtagUsername()) ? null : SharedMediaLayout.this.getStoriesHashtagUsername(), SharedMediaLayout.this.getStoriesHashtag());
                }
                this.storiesList = SharedMediaLayout.this.searchStoriesList;
            } else if (SharedMediaLayout.this.getStoriesArea() != null) {
                if (SharedMediaLayout.this.searchStoriesList == null) {
                    SharedMediaLayout.this.searchStoriesList = new StoriesController.SearchStoriesList(currentAccount, SharedMediaLayout.this.getStoriesArea());
                }
                this.storiesList = SharedMediaLayout.this.searchStoriesList;
            } else if ((z && !SharedMediaLayout.this.isStoriesView()) || (!z && SharedMediaLayout.this.isArchivedOnlyStoriesView())) {
                this.storiesList = null;
            } else {
                int i2 = 1;
                boolean z2 = SharedMediaLayout.this.dialog_id > 0 && (user = MessagesController.getInstance(currentAccount).getUser(Long.valueOf(SharedMediaLayout.this.dialog_id))) != null && user.bot;
                if (i > 0) {
                    this.storiesList = SharedMediaLayout.this.profileActivity.getMessagesController().getStoriesController().getStoriesList(SharedMediaLayout.this.dialog_id, 0, i);
                } else {
                    StoriesController storiesController = SharedMediaLayout.this.profileActivity.getMessagesController().getStoriesController();
                    long j = SharedMediaLayout.this.dialog_id;
                    if (z2) {
                        i2 = 4;
                    } else if (!z) {
                        i2 = 0;
                    }
                    this.storiesList = storiesController.getStoriesList(j, i2);
                }
            }
            StoriesController.StoriesList storiesList = this.storiesList;
            if (storiesList != null) {
                this.id = storiesList.link();
                storiesAdapter = this;
                storiesAdapter.poller = new ViewsForPeerStoriesRequester(SharedMediaLayout.this.profileActivity.getMessagesController().getStoriesController(), SharedMediaLayout.this.dialog_id, this.storiesList.currentAccount) { // from class: org.telegram.ui.Components.SharedMediaLayout.StoriesAdapter.1
                    @Override // org.telegram.ui.Stories.ViewsForPeerStoriesRequester
                    public void getStoryIds(ArrayList<Integer> arrayList) {
                        InternalListView internalListView;
                        MessageObject messageObject;
                        int i3 = 0;
                        while (true) {
                            if (i3 >= SharedMediaLayout.this.mediaPages.length) {
                                internalListView = null;
                                break;
                            }
                            if (SharedMediaLayout.this.mediaPages[i3].listView != null) {
                                RecyclerView.Adapter adapter = SharedMediaLayout.this.mediaPages[i3].listView.getAdapter();
                                StoriesAdapter storiesAdapter2 = StoriesAdapter.this;
                                if (adapter == storiesAdapter2) {
                                    internalListView = SharedMediaLayout.this.mediaPages[i3].listView;
                                    break;
                                }
                            }
                            i3++;
                        }
                        if (internalListView != null) {
                            for (int i4 = 0; i4 < internalListView.getChildCount(); i4++) {
                                View childAt = internalListView.getChildAt(i4);
                                if ((childAt instanceof SharedPhotoVideoCell2) && (messageObject = ((SharedPhotoVideoCell2) childAt).getMessageObject()) != null && messageObject.isStory()) {
                                    arrayList.add(Integer.valueOf(messageObject.storyItem.id));
                                }
                            }
                        }
                    }

                    @Override // org.telegram.ui.Stories.ViewsForPeerStoriesRequester
                    public boolean updateStories(ArrayList<Integer> arrayList, TL_stories.TL_stories_storyViews tL_stories_storyViews) {
                        StoriesAdapter.this.storiesList.updateStoryViews(arrayList, tL_stories_storyViews.views);
                        return true;
                    }
                };
            } else {
                storiesAdapter = this;
            }
            storiesAdapter.checkColumns();
        }

        public void destroy() {
            StoriesController.StoriesList storiesList = this.storiesList;
            if (storiesList != null) {
                storiesList.unlink(this.id);
            }
        }

        private void checkColumns() {
            if (this.storiesList == null || this.isArchive) {
                return;
            }
            if ((!SharedMediaLayout.this.storiesColumnsCountSet || (SharedMediaLayout.this.allowStoriesSingleColumn && this.storiesList.getCount() > 1)) && this.storiesList.getCount() > 0 && !SharedMediaLayout.this.isStoriesView()) {
                int count = this.storiesList.getCount();
                SharedMediaLayout sharedMediaLayout = SharedMediaLayout.this;
                if (count < 5) {
                    sharedMediaLayout.mediaColumnsCount[1] = this.storiesList.getCount();
                    if (SharedMediaLayout.this.mediaPages != null && SharedMediaLayout.this.mediaPages[0] != null && SharedMediaLayout.this.mediaPages[1] != null && SharedMediaLayout.this.mediaPages[0].listView != null && SharedMediaLayout.this.mediaPages[1].listView != null) {
                        SharedMediaLayout.this.switchToCurrentSelectedMode(false);
                    }
                    SharedMediaLayout sharedMediaLayout2 = SharedMediaLayout.this;
                    sharedMediaLayout2.allowStoriesSingleColumn = sharedMediaLayout2.mediaColumnsCount[1] == 1;
                } else if (sharedMediaLayout.allowStoriesSingleColumn) {
                    SharedMediaLayout.this.allowStoriesSingleColumn = false;
                    SharedMediaLayout.this.mediaColumnsCount[1] = Math.max(2, SharedConfig.storiesColumnsCount);
                    if (SharedMediaLayout.this.mediaPages != null && SharedMediaLayout.this.mediaPages[0] != null && SharedMediaLayout.this.mediaPages[1] != null && SharedMediaLayout.this.mediaPages[0].listView != null && SharedMediaLayout.this.mediaPages[1].listView != null) {
                        SharedMediaLayout.this.switchToCurrentSelectedMode(false);
                    }
                }
                SharedMediaLayout.this.storiesColumnsCountSet = true;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyDataSetChanged() {
            if (this.storiesList != null && SharedMediaLayout.this.isBot()) {
                this.uploadingStories.clear();
                ArrayList<StoriesController.UploadingStory> uploadingStories = MessagesController.getInstance(this.storiesList.currentAccount).getStoriesController().getUploadingStories(SharedMediaLayout.this.dialog_id);
                if (uploadingStories != null) {
                    this.uploadingStories.addAll(uploadingStories);
                }
            }
            super.notifyDataSetChanged();
            StoriesAdapter storiesAdapter = this.supportingAdapter;
            if (storiesAdapter != null) {
                storiesAdapter.notifyDataSetChanged();
            }
            checkColumns();
        }

        public int columnsCount() {
            SharedPhotoVideoAdapter sharedPhotoVideoAdapter = SharedMediaLayout.this.photoVideoAdapter;
            SharedMediaLayout sharedMediaLayout = SharedMediaLayout.this;
            if (this == sharedPhotoVideoAdapter) {
                return sharedMediaLayout.mediaColumnsCount[0];
            }
            int iStoryAlbums_getTabTypeByStoriesAdapter = sharedMediaLayout.storyAlbums_getTabTypeByStoriesAdapter(this);
            SharedMediaLayout sharedMediaLayout2 = SharedMediaLayout.this;
            if (iStoryAlbums_getTabTypeByStoriesAdapter != -1) {
                return sharedMediaLayout2.mediaColumnsCount[1];
            }
            return sharedMediaLayout2.animateToColumnsCount;
        }

        @Override // org.telegram.ui.Components.SharedMediaLayout.SharedPhotoVideoAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            if (this.storiesList == null) {
                return 0;
            }
            return this.uploadingStories.size() + ((this.storiesList.isOnlyCache() && SharedMediaLayout.this.hasInternet()) ? 0 : this.storiesList.getCount());
        }

        @Override // org.telegram.ui.Components.SharedMediaLayout.SharedPhotoVideoAdapter, org.telegram.ui.Components.RecyclerListView.FastScrollAdapter
        public int getTotalItemsCount() {
            return getItemCount();
        }

        @Override // org.telegram.ui.Components.SharedMediaLayout.SharedPhotoVideoAdapter
        public int getPositionForIndex(int i) {
            return this.isArchive ? getTopOffset() + i : i;
        }

        @Override // org.telegram.ui.Components.SharedMediaLayout.SharedPhotoVideoAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            RecyclerView.ViewHolder viewHolderOnCreateViewHolder = super.onCreateViewHolder(viewGroup, i);
            View view = viewHolderOnCreateViewHolder.itemView;
            if (view instanceof SharedPhotoVideoCell2) {
                ((SharedPhotoVideoCell2) view).isStory = true;
            }
            return viewHolderOnCreateViewHolder;
        }

        public void setInAlbumStoriesReorder(boolean z) {
            if (this.inAlbumStoriesReorder != z) {
                this.inAlbumStoriesReorder = z;
            }
        }

        @Override // org.telegram.ui.Components.SharedMediaLayout.SharedPhotoVideoAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            if (this.storiesList != null && viewHolder.getItemViewType() == 19) {
                View view = viewHolder.itemView;
                if (view instanceof SharedPhotoVideoCell2) {
                    SharedPhotoVideoCell2 sharedPhotoVideoCell2 = (SharedPhotoVideoCell2) view;
                    sharedPhotoVideoCell2.isStory = true;
                    if (i >= 0 && i < this.uploadingStories.size()) {
                        StoriesController.UploadingStory uploadingStory = this.uploadingStories.get(i);
                        sharedPhotoVideoCell2.isStoryPinned = false;
                        if (uploadingStory.sharedMessageObject == null) {
                            TL_stories.TL_storyItem tL_storyItem = new TL_stories.TL_storyItem();
                            int iHashCode = Long.hashCode(uploadingStory.random_id);
                            tL_storyItem.messageId = iHashCode;
                            tL_storyItem.id = iHashCode;
                            tL_storyItem.attachPath = uploadingStory.firstFramePath;
                            MessageObject messageObject = new MessageObject(this.storiesList.currentAccount, tL_storyItem) { // from class: org.telegram.ui.Components.SharedMediaLayout.StoriesAdapter.2
                                @Override // org.telegram.messenger.MessageObject
                                public float getProgress() {
                                    return this.uploadingStory.progress;
                                }
                            };
                            uploadingStory.sharedMessageObject = messageObject;
                            messageObject.uploadingStory = uploadingStory;
                        }
                        sharedPhotoVideoCell2.setMessageObject(uploadingStory.sharedMessageObject, columnsCount());
                        sharedPhotoVideoCell2.isStory = true;
                        sharedPhotoVideoCell2.setReorder(false);
                        sharedPhotoVideoCell2.setChecked(false, false);
                        return;
                    }
                    int size = i - this.uploadingStories.size();
                    if (size < 0 || size >= this.storiesList.messageObjects.size()) {
                        sharedPhotoVideoCell2.isStoryPinned = false;
                        sharedPhotoVideoCell2.setMessageObject(null, columnsCount());
                        sharedPhotoVideoCell2.isStory = true;
                        return;
                    }
                    MessageObject messageObject2 = this.storiesList.messageObjects.get(size);
                    sharedPhotoVideoCell2.isStoryPinned = messageObject2 != null && this.storiesList.isPinned(messageObject2.getId());
                    sharedPhotoVideoCell2.setReorder(SharedMediaLayout.this.isBot() || sharedPhotoVideoCell2.isStoryPinned);
                    sharedPhotoVideoCell2.isSearchingHashtag = SharedMediaLayout.this.isSearchingStories();
                    sharedPhotoVideoCell2.setMessageObject(messageObject2, columnsCount());
                    SharedMediaLayout sharedMediaLayout = SharedMediaLayout.this;
                    if (!sharedMediaLayout.isActionModeShowed || messageObject2 == null) {
                        sharedPhotoVideoCell2.setChecked(false, false);
                    } else {
                        sharedPhotoVideoCell2.setChecked(sharedMediaLayout.selectedFiles[(messageObject2.getDialogId() > SharedMediaLayout.this.dialog_id ? 1 : (messageObject2.getDialogId() == SharedMediaLayout.this.dialog_id ? 0 : -1)) == 0 ? (char) 0 : (char) 1].indexOfKey(messageObject2.getId()) >= 0, true);
                    }
                    sharedPhotoVideoCell2.setReordering(this.inAlbumStoriesReorder, false);
                }
            }
        }

        public void load(boolean z) {
            if (this.storiesList == null) {
                return;
            }
            int iColumnsCount = columnsCount();
            this.storiesList.load(z, Math.min(100, Math.max(1, iColumnsCount / 2) * iColumnsCount * iColumnsCount));
        }

        @Override // org.telegram.ui.Components.SharedMediaLayout.SharedPhotoVideoAdapter, org.telegram.ui.Components.RecyclerListView.FastScrollAdapter
        public String getLetter(int i) {
            int topOffset;
            MessageObject messageObject;
            TL_stories.StoryItem storyItem;
            if (this.storiesList == null || (topOffset = i - getTopOffset()) < 0 || topOffset >= this.storiesList.messageObjects.size() || (messageObject = this.storiesList.messageObjects.get(topOffset)) == null || (storyItem = messageObject.storyItem) == null) {
                return null;
            }
            return LocaleController.formatYearMont(storyItem.date, true);
        }

        @Override // org.telegram.ui.Components.SharedMediaLayout.SharedPhotoVideoAdapter, org.telegram.ui.Components.RecyclerListView.FastScrollAdapter
        public void onFastScrollSingleTap() {
            SharedMediaLayout.this.showMediaCalendar(this.isArchive ? 9 : 8, true);
        }

        public boolean canReorder(int i) {
            StoriesController.StoriesList storiesList;
            if (this.isArchive || (storiesList = this.storiesList) == null) {
                return false;
            }
            if (storiesList instanceof StoriesController.BotPreviewsList) {
                TLRPC.User user = MessagesController.getInstance(SharedMediaLayout.this.profileActivity.getCurrentAccount()).getUser(Long.valueOf(SharedMediaLayout.this.dialog_id));
                return user != null && user.bot && user.bot_has_main_app && user.bot_can_edit;
            }
            if (i < 0 || i >= storiesList.messageObjects.size()) {
                return false;
            }
            MessageObject messageObject = this.storiesList.messageObjects.get(i);
            StoriesController.StoriesList storiesList2 = this.storiesList;
            if (storiesList2.albumId > 0) {
                return true;
            }
            return storiesList2.isPinned(messageObject.getId());
        }

        public boolean swapElements(int i, int i2) {
            StoriesController.StoriesList storiesList;
            ArrayList<Integer> arrayList;
            if (this.isArchive || (storiesList = this.storiesList) == null || i < 0 || i >= storiesList.messageObjects.size() || i2 < 0 || i2 >= this.storiesList.messageObjects.size()) {
                return false;
            }
            if ((this.storiesList instanceof StoriesController.BotPreviewsList) || this.albumId > 0) {
                arrayList = new ArrayList<>();
                for (int i3 = 0; i3 < this.storiesList.messageObjects.size(); i3++) {
                    arrayList.add(Integer.valueOf(this.storiesList.messageObjects.get(i3).getId()));
                }
            } else {
                arrayList = new ArrayList<>(this.storiesList.pinnedIds);
            }
            if (!this.applyingReorder) {
                this.lastPinnedIds.clear();
                this.lastPinnedIds.addAll(arrayList);
                this.applyingReorder = true;
            }
            MessageObject messageObject = this.storiesList.messageObjects.get(i);
            this.storiesList.messageObjects.get(i2);
            arrayList.remove(Integer.valueOf(messageObject.getId()));
            arrayList.add(Utilities.clamp(i2, arrayList.size(), 0), Integer.valueOf(messageObject.getId()));
            this.storiesList.updatePinnedOrder(arrayList, false);
            notifyItemMoved(i, i2);
            return true;
        }

        public void reorderDone() {
            StoriesController.StoriesList storiesList;
            ArrayList<Integer> arrayList;
            if (this.isArchive || (storiesList = this.storiesList) == null || !this.applyingReorder) {
                return;
            }
            if ((storiesList instanceof StoriesController.BotPreviewsList) || this.albumId > 0) {
                arrayList = new ArrayList<>();
                for (int i = 0; i < this.storiesList.messageObjects.size(); i++) {
                    arrayList.add(Integer.valueOf(this.storiesList.messageObjects.get(i).getId()));
                }
            } else {
                arrayList = storiesList.pinnedIds;
            }
            boolean z = this.lastPinnedIds.size() != arrayList.size();
            if (!z) {
                int i2 = 0;
                while (true) {
                    if (i2 >= this.lastPinnedIds.size()) {
                        break;
                    }
                    if (this.lastPinnedIds.get(i2) != arrayList.get(i2)) {
                        z = true;
                        break;
                    }
                    i2++;
                }
            }
            if (z) {
                this.storiesList.updatePinnedOrder(arrayList, true);
            }
            this.applyingReorder = false;
        }
    }

    public class ChatUsersAdapter extends RecyclerListView.SelectionAdapter {
        private TLRPC.ChatFull chatInfo;
        private Context mContext;
        private ArrayList<Integer> sortedUsers;

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return true;
        }

        public ChatUsersAdapter(Context context) {
            this.mContext = context;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            TLRPC.ChatFull chatFull = this.chatInfo;
            if (chatFull != null && chatFull.participants.participants.isEmpty()) {
                return 1;
            }
            TLRPC.ChatFull chatFull2 = this.chatInfo;
            if (chatFull2 != null) {
                return chatFull2.participants.participants.size();
            }
            return 0;
        }

        public void updateRank(long j, String str) {
            TLRPC.ChatFull chatFull = this.chatInfo;
            if (chatFull == null || chatFull.participants == null) {
                return;
            }
            for (int i = 0; i < this.chatInfo.participants.participants.size(); i++) {
                this.chatInfo.participants.participants.get(i).setRank(j, str);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            if (i == 20) {
                View viewCreateEmptyStubView = SharedMediaLayout.createEmptyStubView(this.mContext, 7, SharedMediaLayout.this.dialog_id, SharedMediaLayout.this.resourcesProvider);
                viewCreateEmptyStubView.setLayoutParams(new RecyclerView.LayoutParams(-1, -1));
                return new RecyclerListView.Holder(viewCreateEmptyStubView);
            }
            UserCell userCell = new UserCell(this.mContext, 9, 0, true, false, SharedMediaLayout.this.resourcesProvider);
            userCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            return new RecyclerListView.Holder(userCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            TLRPC.ChatParticipant chatParticipant;
            final String str;
            final boolean z;
            final boolean z2;
            final boolean z3;
            boolean z4;
            boolean z5;
            boolean z6;
            View view = viewHolder.itemView;
            if (view instanceof UserCell) {
                UserCell userCell = (UserCell) view;
                boolean zIsEmpty = this.sortedUsers.isEmpty();
                TLRPC.ChatFull chatFull = this.chatInfo;
                if (!zIsEmpty) {
                    chatParticipant = chatFull.participants.participants.get(this.sortedUsers.get(i).intValue());
                } else {
                    chatParticipant = chatFull.participants.participants.get(i);
                }
                if (chatParticipant != null) {
                    if (chatParticipant instanceof TLRPC.TL_chatChannelParticipant) {
                        TLRPC.ChannelParticipant channelParticipant = ((TLRPC.TL_chatChannelParticipant) chatParticipant).channelParticipant;
                        String string = channelParticipant.rank;
                        if (channelParticipant instanceof TLRPC.TL_channelParticipantCreator) {
                            if (TextUtils.isEmpty(string)) {
                                string = LocaleController.getString("ChannelCreator", C2807R.string.ChannelCreator);
                            }
                            z5 = true;
                            z6 = true;
                            z4 = false;
                        } else if (channelParticipant instanceof TLRPC.TL_channelParticipantAdmin) {
                            if (TextUtils.isEmpty(string)) {
                                string = LocaleController.getString("ChannelAdmin", C2807R.string.ChannelAdmin);
                            }
                            z4 = channelParticipant.promoted_by == SharedMediaLayout.this.profileActivity.getUserConfig().getClientUserId();
                            z5 = true;
                            z6 = false;
                        } else {
                            z4 = false;
                            z5 = false;
                            z6 = false;
                        }
                        boolean z7 = z6;
                        z = z5;
                        str = string;
                        z2 = z7;
                        z3 = z4;
                    } else {
                        String string2 = chatParticipant.rank;
                        if (chatParticipant instanceof TLRPC.TL_chatParticipantCreator) {
                            if (TextUtils.isEmpty(string2)) {
                                string2 = LocaleController.getString("ChannelCreator", C2807R.string.ChannelCreator);
                            }
                            str = string2;
                            z = true;
                            z2 = true;
                            z3 = false;
                        } else if (chatParticipant instanceof TLRPC.TL_chatParticipantAdmin) {
                            if (TextUtils.isEmpty(string2)) {
                                string2 = LocaleController.getString("ChannelAdmin", C2807R.string.ChannelAdmin);
                            }
                            z3 = chatParticipant.inviter_id == SharedMediaLayout.this.profileActivity.getUserConfig().getClientUserId();
                            str = string2;
                            z = true;
                            z2 = false;
                        } else {
                            str = string2;
                            z = false;
                            z2 = false;
                            z3 = false;
                        }
                    }
                    final TLRPC.User user = SharedMediaLayout.this.profileActivity.getMessagesController().getUser(Long.valueOf(chatParticipant.user_id));
                    userCell.setAdminRole(str, z, z2, UserObject.isUserSelf(user) && ChatObject.canManageMyTag(SharedMediaLayout.this.profileActivity.getMessagesController().getChat(Long.valueOf(-SharedMediaLayout.this.dialog_id))), new View.OnClickListener() { // from class: org.telegram.ui.Components.SharedMediaLayout$ChatUsersAdapter$$ExternalSyntheticLambda0
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            this.f$0.lambda$onBindViewHolder$0(user, str, z, z2, z3, view2);
                        }
                    });
                    userCell.setData(user, null, null, 0, i != this.chatInfo.participants.participants.size() - 1);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onBindViewHolder$0(TLRPC.User user, String str, boolean z, boolean z2, boolean z3, View view) {
            TagEditCell.showInfoSheet(SharedMediaLayout.this.getContext(), SharedMediaLayout.this.profileActivity.getCurrentAccount(), SharedMediaLayout.this.dialog_id, user, str, z, z2, z3, SharedMediaLayout.this.resourcesProvider);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            TLRPC.ChatFull chatFull = this.chatInfo;
            return (chatFull == null || !chatFull.participants.participants.isEmpty()) ? 21 : 20;
        }
    }

    public class GroupUsersSearchAdapter extends RecyclerListView.SelectionAdapter {
        private TLRPC.Chat currentChat;
        private Context mContext;
        private SearchAdapterHelper searchAdapterHelper;
        private Runnable searchRunnable;
        private ArrayList<CharSequence> searchResultNames = new ArrayList<>();
        private int totalCount = 0;
        int searchCount = 0;

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return 22;
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return true;
        }

        public GroupUsersSearchAdapter(Context context) {
            this.mContext = context;
            SearchAdapterHelper searchAdapterHelper = new SearchAdapterHelper(true);
            this.searchAdapterHelper = searchAdapterHelper;
            searchAdapterHelper.setDelegate(new SearchAdapterHelper.SearchAdapterHelperDelegate() { // from class: org.telegram.ui.Components.SharedMediaLayout$GroupUsersSearchAdapter$$ExternalSyntheticLambda0
                @Override // org.telegram.ui.Adapters.SearchAdapterHelper.SearchAdapterHelperDelegate
                public final void onDataSetChanged(int i) {
                    this.f$0.lambda$new$0(i);
                }
            });
            this.currentChat = SharedMediaLayout.this.delegate.getCurrentChat();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(int i) {
            notifyDataSetChanged();
            if (i == 1) {
                int i2 = this.searchCount - 1;
                this.searchCount = i2;
                if (i2 == 0) {
                    for (int i3 = 0; i3 < SharedMediaLayout.this.mediaPages.length; i3++) {
                        if (SharedMediaLayout.this.mediaPages[i3].selectedType == 7) {
                            int itemCount = getItemCount();
                            SharedMediaLayout sharedMediaLayout = SharedMediaLayout.this;
                            if (itemCount == 0) {
                                sharedMediaLayout.mediaPages[i3].emptyView.showProgress(false, true);
                            } else {
                                sharedMediaLayout.animateItemsEnter(sharedMediaLayout.mediaPages[i3].listView, 0, null);
                            }
                        }
                    }
                }
            }
        }

        private boolean createMenuForParticipant(TLObject tLObject, boolean z, View view) {
            if (tLObject instanceof TLRPC.ChannelParticipant) {
                TLRPC.ChannelParticipant channelParticipant = (TLRPC.ChannelParticipant) tLObject;
                TLRPC.TL_chatChannelParticipant tL_chatChannelParticipant = new TLRPC.TL_chatChannelParticipant();
                tL_chatChannelParticipant.channelParticipant = channelParticipant;
                tL_chatChannelParticipant.user_id = MessageObject.getPeerId(channelParticipant.peer);
                tL_chatChannelParticipant.inviter_id = channelParticipant.inviter_id;
                tL_chatChannelParticipant.date = channelParticipant.date;
                tLObject = tL_chatChannelParticipant;
            }
            return SharedMediaLayout.this.delegate.onMemberClick((TLRPC.ChatParticipant) tLObject, true, z, view);
        }

        public void search(final String str, boolean z) {
            if (this.searchRunnable != null) {
                Utilities.searchQueue.cancelRunnable(this.searchRunnable);
                this.searchRunnable = null;
            }
            this.searchResultNames.clear();
            this.searchAdapterHelper.mergeResults(null);
            this.searchAdapterHelper.queryServerSearch(null, true, false, true, false, false, ChatObject.isChannel(this.currentChat) ? this.currentChat.id : 0L, false, 2, 0);
            notifyDataSetChanged();
            for (int i = 0; i < SharedMediaLayout.this.mediaPages.length; i++) {
                if (SharedMediaLayout.this.mediaPages[i].selectedType == 7 && !TextUtils.isEmpty(str)) {
                    SharedMediaLayout.this.mediaPages[i].emptyView.showProgress(true, z);
                }
            }
            if (TextUtils.isEmpty(str)) {
                return;
            }
            DispatchQueue dispatchQueue = Utilities.searchQueue;
            Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$GroupUsersSearchAdapter$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$search$1(str);
                }
            };
            this.searchRunnable = runnable;
            dispatchQueue.postRunnable(runnable, 300L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: processSearch, reason: merged with bridge method [inline-methods] */
        public void lambda$search$1(final String str) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$GroupUsersSearchAdapter$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$processSearch$3(str);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$processSearch$3(final String str) {
            final ArrayList arrayList = null;
            this.searchRunnable = null;
            if (!ChatObject.isChannel(this.currentChat) && SharedMediaLayout.this.info != null) {
                arrayList = new ArrayList(SharedMediaLayout.this.info.participants.participants);
            }
            this.searchCount = 2;
            if (arrayList != null) {
                Utilities.searchQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$GroupUsersSearchAdapter$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$processSearch$2(str, arrayList);
                    }
                });
            } else {
                this.searchCount = 2 - 1;
            }
            this.searchAdapterHelper.queryServerSearch(str, false, false, true, false, false, ChatObject.isChannel(this.currentChat) ? this.currentChat.id : 0L, false, 2, 1);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:50:0x0101  */
        /* JADX WARN: Removed duplicated region for block: B:57:0x0140 A[LOOP:1: B:33:0x00b7->B:57:0x0140, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:65:0x0104 A[SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public /* synthetic */ void lambda$processSearch$2(String str, ArrayList arrayList) {
            long peerId;
            int i;
            Object obj;
            String lowerCase = str.trim().toLowerCase();
            if (lowerCase.length() == 0) {
                updateSearchResults(new ArrayList<>(), new ArrayList<>());
                return;
            }
            String translitString = LocaleController.getInstance().getTranslitString(lowerCase);
            if (lowerCase.equals(translitString) || translitString.length() == 0) {
                translitString = null;
            }
            int i2 = 0;
            int i3 = (translitString != null ? 1 : 0) + 1;
            String[] strArr = new String[i3];
            strArr[0] = lowerCase;
            if (translitString != null) {
                strArr[1] = translitString;
            }
            ArrayList<CharSequence> arrayList2 = new ArrayList<>();
            ArrayList<TLObject> arrayList3 = new ArrayList<>();
            int size = arrayList.size();
            int i4 = 0;
            while (i4 < size) {
                TLObject tLObject = (TLObject) arrayList.get(i4);
                if (tLObject instanceof TLRPC.ChatParticipant) {
                    peerId = ((TLRPC.ChatParticipant) tLObject).user_id;
                } else {
                    if (tLObject instanceof TLRPC.ChannelParticipant) {
                        peerId = MessageObject.getPeerId(((TLRPC.ChannelParticipant) tLObject).peer);
                    }
                    i4++;
                    i2 = 0;
                }
                TLRPC.User user = SharedMediaLayout.this.profileActivity.getMessagesController().getUser(Long.valueOf(peerId));
                if (user.id != SharedMediaLayout.this.profileActivity.getUserConfig().getClientUserId()) {
                    String lowerCase2 = UserObject.getUserName(user).toLowerCase();
                    String translitString2 = LocaleController.getInstance().getTranslitString(lowerCase2);
                    if (lowerCase2.equals(translitString2)) {
                        translitString2 = null;
                    }
                    int i5 = i2;
                    int i6 = i5;
                    while (i5 < i3) {
                        String str2 = strArr[i5];
                        if (!lowerCase2.startsWith(str2)) {
                            if (lowerCase2.contains(" " + str2)) {
                                i = 1;
                                if (i == 0) {
                                    if (i == 1) {
                                        arrayList2.add(AndroidUtilities.generateSearchName(user.first_name, user.last_name, str2));
                                        obj = null;
                                    } else {
                                        obj = null;
                                        arrayList2.add(AndroidUtilities.generateSearchName("@" + UserObject.getPublicUsername(user), null, "@" + str2));
                                    }
                                    arrayList3.add(tLObject);
                                } else {
                                    i5++;
                                    i6 = i;
                                }
                            } else {
                                if (translitString2 != null) {
                                    if (!translitString2.startsWith(str2)) {
                                        if (translitString2.contains(" " + str2)) {
                                        }
                                        if (i == 0) {
                                        }
                                    }
                                    i = 1;
                                    if (i == 0) {
                                    }
                                }
                                String publicUsername = UserObject.getPublicUsername(user);
                                if (publicUsername != null && publicUsername.startsWith(str2)) {
                                    i6 = 2;
                                }
                                i = i6;
                                if (i == 0) {
                                }
                            }
                        }
                    }
                }
                i4++;
                i2 = 0;
            }
            updateSearchResults(arrayList2, arrayList3);
        }

        private void updateSearchResults(final ArrayList<CharSequence> arrayList, final ArrayList<TLObject> arrayList2) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$GroupUsersSearchAdapter$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$updateSearchResults$4(arrayList, arrayList2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$updateSearchResults$4(ArrayList arrayList, ArrayList arrayList2) {
            if (SharedMediaLayout.this.searching) {
                this.searchResultNames = arrayList;
                this.searchCount--;
                if (!ChatObject.isChannel(this.currentChat)) {
                    ArrayList<TLObject> groupSearch = this.searchAdapterHelper.getGroupSearch();
                    groupSearch.clear();
                    groupSearch.addAll(arrayList2);
                }
                if (this.searchCount == 0) {
                    for (int i = 0; i < SharedMediaLayout.this.mediaPages.length; i++) {
                        if (SharedMediaLayout.this.mediaPages[i].selectedType == 7) {
                            int itemCount = getItemCount();
                            SharedMediaLayout sharedMediaLayout = SharedMediaLayout.this;
                            if (itemCount == 0) {
                                sharedMediaLayout.mediaPages[i].emptyView.showProgress(false, true);
                            } else {
                                sharedMediaLayout.animateItemsEnter(sharedMediaLayout.mediaPages[i].listView, 0, null);
                            }
                        }
                    }
                }
                notifyDataSetChanged();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.totalCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyDataSetChanged() {
            int size = this.searchAdapterHelper.getGroupSearch().size();
            this.totalCount = size;
            if (size > 0 && SharedMediaLayout.this.searching && SharedMediaLayout.this.mediaPages[0].selectedType == 7 && SharedMediaLayout.this.mediaPages[0].listView.getAdapter() != this) {
                SharedMediaLayout.this.switchToCurrentSelectedMode(false);
            }
            super.notifyDataSetChanged();
        }

        public TLObject getItem(int i) {
            int size = this.searchAdapterHelper.getGroupSearch().size();
            if (i < 0 || i >= size) {
                return null;
            }
            return this.searchAdapterHelper.getGroupSearch().get(i);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            ManageChatUserCell manageChatUserCell = new ManageChatUserCell(this.mContext, 9, 5, true, SharedMediaLayout.this.resourcesProvider);
            manageChatUserCell.setBackgroundColor(SharedMediaLayout.this.getThemedColor(Theme.key_windowBackgroundWhite));
            manageChatUserCell.setDelegate(new ManageChatUserCell.ManageChatUserCellDelegate() { // from class: org.telegram.ui.Components.SharedMediaLayout$GroupUsersSearchAdapter$$ExternalSyntheticLambda2
                @Override // org.telegram.ui.Cells.ManageChatUserCell.ManageChatUserCellDelegate
                public final boolean onOptionsButtonCheck(ManageChatUserCell manageChatUserCell2, boolean z) {
                    return this.f$0.lambda$onCreateViewHolder$5(manageChatUserCell2, z);
                }
            });
            return new RecyclerListView.Holder(manageChatUserCell);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean lambda$onCreateViewHolder$5(ManageChatUserCell manageChatUserCell, boolean z) {
            TLObject item = getItem(((Integer) manageChatUserCell.getTag()).intValue());
            if (item instanceof TLRPC.ChannelParticipant) {
                return createMenuForParticipant((TLRPC.ChannelParticipant) item, !z, manageChatUserCell);
            }
            return false;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            TLRPC.User user;
            SpannableStringBuilder spannableStringBuilder;
            TLObject item = getItem(i);
            if (item instanceof TLRPC.ChannelParticipant) {
                user = SharedMediaLayout.this.profileActivity.getMessagesController().getUser(Long.valueOf(MessageObject.getPeerId(((TLRPC.ChannelParticipant) item).peer)));
            } else if (!(item instanceof TLRPC.ChatParticipant)) {
                return;
            } else {
                user = SharedMediaLayout.this.profileActivity.getMessagesController().getUser(Long.valueOf(((TLRPC.ChatParticipant) item).user_id));
            }
            UserObject.getPublicUsername(user);
            this.searchAdapterHelper.getGroupSearch().size();
            String lastFoundChannel = this.searchAdapterHelper.getLastFoundChannel();
            if (lastFoundChannel != null) {
                String userName = UserObject.getUserName(user);
                spannableStringBuilder = new SpannableStringBuilder(userName);
                int iIndexOfIgnoreCase = AndroidUtilities.indexOfIgnoreCase(userName, lastFoundChannel);
                if (iIndexOfIgnoreCase != -1) {
                    spannableStringBuilder.setSpan(new ForegroundColorSpan(SharedMediaLayout.this.getThemedColor(Theme.key_windowBackgroundWhiteBlueText4)), iIndexOfIgnoreCase, lastFoundChannel.length() + iIndexOfIgnoreCase, 33);
                }
            } else {
                spannableStringBuilder = null;
            }
            View view = viewHolder.itemView;
            if (view instanceof ManageChatUserCell) {
                ManageChatUserCell manageChatUserCell = (ManageChatUserCell) view;
                manageChatUserCell.setTag(Integer.valueOf(i));
                manageChatUserCell.setData(user, spannableStringBuilder, null, false);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewRecycled(RecyclerView.ViewHolder viewHolder) {
            View view = viewHolder.itemView;
            if (view instanceof ManageChatUserCell) {
                ((ManageChatUserCell) view).recycle();
            }
        }
    }

    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayList = new ArrayList<>();
        arrayList.add(new ThemeDescription(this.selectedMessagesCountTextView, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, Theme.key_windowBackgroundWhiteGrayText2));
        RLottieImageView iconView = this.deleteItem.getIconView();
        int i = ThemeDescription.FLAG_IMAGECOLOR;
        int i2 = Theme.key_actionBarActionModeDefaultIcon;
        arrayList.add(new ThemeDescription(iconView, i, null, null, null, null, i2));
        ActionBarMenuItem actionBarMenuItem = this.deleteItem;
        int i3 = ThemeDescription.FLAG_BACKGROUNDFILTER;
        int i4 = Theme.key_actionBarActionModeDefaultSelector;
        arrayList.add(new ThemeDescription(actionBarMenuItem, i3, null, null, null, null, i4));
        if (this.gotoItem != null) {
            arrayList.add(new ThemeDescription(this.gotoItem.getIconView(), ThemeDescription.FLAG_IMAGECOLOR, null, null, null, null, i2));
            arrayList.add(new ThemeDescription(this.gotoItem, ThemeDescription.FLAG_BACKGROUNDFILTER, null, null, null, null, i4));
        }
        if (this.forwardItem != null) {
            arrayList.add(new ThemeDescription(this.forwardItem.getIconView(), ThemeDescription.FLAG_IMAGECOLOR, null, null, null, null, i2));
            arrayList.add(new ThemeDescription(this.forwardItem, ThemeDescription.FLAG_BACKGROUNDFILTER, null, null, null, null, i4));
        }
        arrayList.add(new ThemeDescription(this.closeButton, ThemeDescription.FLAG_IMAGECOLOR, null, null, new Drawable[]{this.backDrawable}, null, i2));
        arrayList.add(new ThemeDescription(this.closeButton, ThemeDescription.FLAG_BACKGROUNDFILTER, null, null, null, null, i4));
        LinearLayout linearLayout = this.actionModeLayout;
        int i5 = ThemeDescription.FLAG_BACKGROUND;
        int i6 = Theme.key_windowBackgroundWhite;
        arrayList.add(new ThemeDescription(linearLayout, i5, null, null, null, null, i6));
        arrayList.add(new ThemeDescription(this.scrollSlidingTextTabStrip, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, i6));
        arrayList.add(new ThemeDescription(this.floatingDateView, 0, null, null, null, null, Theme.key_chat_mediaTimeBackground));
        arrayList.add(new ThemeDescription(this.floatingDateView, 0, null, null, null, null, Theme.key_chat_mediaTimeText));
        arrayList.add(new ThemeDescription(this.scrollSlidingTextTabStrip, 0, new Class[]{ScrollSlidingTextTabStrip.class}, new String[]{"selectorDrawable"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_profile_tabSelectedLine));
        arrayList.add(new ThemeDescription(this.scrollSlidingTextTabStrip.getTabsContainer(), ThemeDescription.FLAG_TEXTCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{TextView.class}, null, null, null, Theme.key_profile_tabSelectedText));
        arrayList.add(new ThemeDescription(this.scrollSlidingTextTabStrip.getTabsContainer(), ThemeDescription.FLAG_TEXTCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{TextView.class}, null, null, null, Theme.key_profile_tabText));
        arrayList.add(new ThemeDescription(this.scrollSlidingTextTabStrip.getTabsContainer(), ThemeDescription.FLAG_BACKGROUNDFILTER | ThemeDescription.FLAG_DRAWABLESELECTEDSTATE, new Class[]{TextView.class}, null, null, null, Theme.key_profile_tabSelector));
        if (this.fragmentContextView != null) {
            arrayList.add(new ThemeDescription(this.fragmentContextView, ThemeDescription.FLAG_CHECKTAG | ThemeDescription.FLAG_BACKGROUND, new Class[]{FragmentContextView.class}, new String[]{"frameLayout"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_inappPlayerBackground));
            arrayList.add(new ThemeDescription(this.fragmentContextView, ThemeDescription.FLAG_IMAGECOLOR, new Class[]{FragmentContextView.class}, new String[]{"playButton"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_inappPlayerPlayPause));
            arrayList.add(new ThemeDescription(this.fragmentContextView, ThemeDescription.FLAG_TEXTCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{FragmentContextView.class}, new String[]{"titleTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_inappPlayerTitle));
            arrayList.add(new ThemeDescription(this.fragmentContextView, ThemeDescription.FLAG_TEXTCOLOR | ThemeDescription.FLAG_FASTSCROLL, new Class[]{FragmentContextView.class}, new String[]{"titleTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_inappPlayerPerformer));
            arrayList.add(new ThemeDescription(this.fragmentContextView, ThemeDescription.FLAG_IMAGECOLOR, new Class[]{FragmentContextView.class}, new String[]{"closeButton"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_inappPlayerClose));
            arrayList.add(new ThemeDescription(this.fragmentContextView, ThemeDescription.FLAG_BACKGROUND | ThemeDescription.FLAG_CHECKTAG, new Class[]{FragmentContextView.class}, new String[]{"frameLayout"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_returnToCallBackground));
            arrayList.add(new ThemeDescription(this.fragmentContextView, ThemeDescription.FLAG_CHECKTAG | ThemeDescription.FLAG_TEXTCOLOR, new Class[]{FragmentContextView.class}, new String[]{"titleTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_returnToCallText));
        }
        for (final int i7 = 0; i7 < this.mediaPages.length; i7++) {
            ThemeDescription.ThemeDescriptionDelegate themeDescriptionDelegate = new ThemeDescription.ThemeDescriptionDelegate() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda7
                @Override // org.telegram.ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
                public final void didSetColor() {
                    this.f$0.lambda$getThemeDescriptions$73(i7);
                }
            };
            arrayList.add(new ThemeDescription(this.mediaPages[i7].listView, 0, new Class[]{View.class}, Theme.dividerPaint, null, null, Theme.key_divider));
            FlickerLoadingView flickerLoadingView = this.mediaPages[i7].progressView;
            int i8 = Theme.key_windowBackgroundWhite;
            arrayList.add(new ThemeDescription(flickerLoadingView, 0, null, null, null, null, i8));
            arrayList.add(new ThemeDescription(this.mediaPages[i7].listView, ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, Theme.key_actionBarDefault));
            arrayList.add(new ThemeDescription(this.mediaPages[i7].listView, ThemeDescription.FLAG_SELECTOR, null, null, null, null, Theme.key_listSelector));
            arrayList.add(new ThemeDescription(this.mediaPages[i7].emptyView, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, Theme.key_emptyListPlaceholder));
            arrayList.add(new ThemeDescription(this.mediaPages[i7].listView, ThemeDescription.FLAG_SECTIONS, new Class[]{GraySectionCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_graySectionText));
            arrayList.add(new ThemeDescription(this.mediaPages[i7].listView, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR | ThemeDescription.FLAG_SECTIONS, new Class[]{GraySectionCell.class}, null, null, null, Theme.key_graySection));
            int i9 = Theme.key_progressCircle;
            arrayList.add(new ThemeDescription(this.mediaPages[i7].listView, 0, new Class[]{LoadingCell.class}, new String[]{"progressBar"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i9));
            arrayList.add(new ThemeDescription(this.mediaPages[i7].listView, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{UserCell.class}, new String[]{"adminTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_profile_creatorIcon));
            arrayList.add(new ThemeDescription(this.mediaPages[i7].listView, 0, new Class[]{UserCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayIcon));
            int i10 = Theme.key_windowBackgroundWhiteBlackText;
            arrayList.add(new ThemeDescription(this.mediaPages[i7].listView, 0, new Class[]{UserCell.class}, new String[]{"nameTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i10));
            int i11 = Theme.key_windowBackgroundWhiteGrayText;
            arrayList.add(new ThemeDescription(this.mediaPages[i7].listView, 0, new Class[]{UserCell.class}, new String[]{"statusColor"}, (Paint[]) null, (Drawable[]) null, themeDescriptionDelegate, i11));
            arrayList.add(new ThemeDescription(this.mediaPages[i7].listView, 0, new Class[]{UserCell.class}, new String[]{"statusOnlineColor"}, (Paint[]) null, (Drawable[]) null, themeDescriptionDelegate, Theme.key_windowBackgroundWhiteBlueText));
            Drawable[] drawableArr = Theme.avatarDrawables;
            int i12 = Theme.key_avatar_text;
            arrayList.add(new ThemeDescription(this.mediaPages[i7].listView, 0, new Class[]{UserCell.class}, null, drawableArr, null, i12));
            com.exteragram.messenger.utils.ui.TextPaint[] textPaintArr = Theme.dialogs_namePaint;
            arrayList.add(new ThemeDescription(this.mediaPages[i7].listView, 0, new Class[]{ProfileSearchCell.class}, (String[]) null, new Paint[]{textPaintArr[0], textPaintArr[1], Theme.dialogs_searchNamePaint}, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_chats_name));
            com.exteragram.messenger.utils.ui.TextPaint[] textPaintArr2 = Theme.dialogs_nameEncryptedPaint;
            arrayList.add(new ThemeDescription(this.mediaPages[i7].listView, 0, new Class[]{ProfileSearchCell.class}, (String[]) null, new Paint[]{textPaintArr2[0], textPaintArr2[1], Theme.dialogs_searchNameEncryptedPaint}, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_chats_secretName));
            arrayList.add(new ThemeDescription(this.mediaPages[i7].listView, 0, new Class[]{ProfileSearchCell.class}, null, Theme.avatarDrawables, null, i12));
            arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundRed));
            arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundOrange));
            arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundViolet));
            arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundGreen));
            arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundCyan));
            arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundBlue));
            arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundPink));
            int i13 = Theme.key_windowBackgroundWhiteGrayText2;
            arrayList.add(new ThemeDescription(this.mediaPages[i7].listView, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{EmptyStubView.class}, new String[]{"emptyTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i13));
            arrayList.add(new ThemeDescription(this.mediaPages[i7].listView, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{SharedDocumentCell.class}, new String[]{"nameTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i10));
            arrayList.add(new ThemeDescription(this.mediaPages[i7].listView, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{SharedDocumentCell.class}, new String[]{"dateTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText3));
            int i14 = Theme.key_sharedMedia_startStopLoadIcon;
            arrayList.add(new ThemeDescription(this.mediaPages[i7].listView, ThemeDescription.FLAG_PROGRESSBAR, new Class[]{SharedDocumentCell.class}, new String[]{"progressView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i14));
            arrayList.add(new ThemeDescription(this.mediaPages[i7].listView, ThemeDescription.FLAG_IMAGECOLOR, new Class[]{SharedDocumentCell.class}, new String[]{"statusImageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i14));
            int i15 = Theme.key_checkbox;
            arrayList.add(new ThemeDescription(this.mediaPages[i7].listView, ThemeDescription.FLAG_CHECKBOX, new Class[]{SharedDocumentCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i15));
            int i16 = Theme.key_checkboxCheck;
            arrayList.add(new ThemeDescription(this.mediaPages[i7].listView, ThemeDescription.FLAG_CHECKBOXCHECK, new Class[]{SharedDocumentCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i16));
            arrayList.add(new ThemeDescription(this.mediaPages[i7].listView, ThemeDescription.FLAG_IMAGECOLOR, new Class[]{SharedDocumentCell.class}, new String[]{"thumbImageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_files_folderIcon));
            arrayList.add(new ThemeDescription(this.mediaPages[i7].listView, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{SharedDocumentCell.class}, new String[]{"extTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_files_iconText));
            arrayList.add(new ThemeDescription(this.mediaPages[i7].listView, 0, new Class[]{LoadingCell.class}, new String[]{"progressBar"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i9));
            arrayList.add(new ThemeDescription(this.mediaPages[i7].listView, ThemeDescription.FLAG_CHECKBOX, new Class[]{SharedAudioCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i15));
            arrayList.add(new ThemeDescription(this.mediaPages[i7].listView, ThemeDescription.FLAG_CHECKBOXCHECK, new Class[]{SharedAudioCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i16));
            arrayList.add(new ThemeDescription(this.mediaPages[i7].listView, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{SharedAudioCell.class}, Theme.chat_contextResult_titleTextPaint, null, null, i10));
            arrayList.add(new ThemeDescription(this.mediaPages[i7].listView, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{SharedAudioCell.class}, Theme.chat_contextResult_descriptionTextPaint, null, null, i13));
            arrayList.add(new ThemeDescription(this.mediaPages[i7].listView, ThemeDescription.FLAG_CHECKBOX, new Class[]{SharedLinkCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i15));
            arrayList.add(new ThemeDescription(this.mediaPages[i7].listView, ThemeDescription.FLAG_CHECKBOXCHECK, new Class[]{SharedLinkCell.class}, new String[]{"checkBox"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i16));
            arrayList.add(new ThemeDescription(this.mediaPages[i7].listView, 0, new Class[]{SharedLinkCell.class}, new String[]{"titleTextPaint"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i10));
            arrayList.add(new ThemeDescription(this.mediaPages[i7].listView, 0, new Class[]{SharedLinkCell.class}, null, null, null, Theme.key_windowBackgroundWhiteLinkText));
            arrayList.add(new ThemeDescription(this.mediaPages[i7].listView, 0, new Class[]{SharedLinkCell.class}, Theme.linkSelectionPaint, null, null, Theme.key_windowBackgroundWhiteLinkSelection));
            arrayList.add(new ThemeDescription(this.mediaPages[i7].listView, 0, new Class[]{SharedLinkCell.class}, new String[]{"letterDrawable"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_sharedMedia_linkPlaceholderText));
            arrayList.add(new ThemeDescription(this.mediaPages[i7].listView, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{SharedLinkCell.class}, new String[]{"letterDrawable"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_sharedMedia_linkPlaceholder));
            arrayList.add(new ThemeDescription(this.mediaPages[i7].listView, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR | ThemeDescription.FLAG_SECTIONS, new Class[]{SharedMediaSectionCell.class}, null, null, null, i8));
            arrayList.add(new ThemeDescription(this.mediaPages[i7].listView, ThemeDescription.FLAG_SECTIONS, new Class[]{SharedMediaSectionCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i10));
            arrayList.add(new ThemeDescription(this.mediaPages[i7].listView, 0, new Class[]{SharedMediaSectionCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i10));
            int i17 = Theme.key_sharedMedia_photoPlaceholder;
            arrayList.add(new ThemeDescription(this.mediaPages[i7].listView, 0, new Class[]{SharedPhotoVideoCell.class}, new String[]{"backgroundPaint"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i17));
            arrayList.add(new ThemeDescription(this.mediaPages[i7].listView, ThemeDescription.FLAG_CHECKBOX, new Class[]{SharedPhotoVideoCell.class}, null, null, themeDescriptionDelegate, i15));
            arrayList.add(new ThemeDescription(this.mediaPages[i7].listView, ThemeDescription.FLAG_CHECKBOXCHECK, new Class[]{SharedPhotoVideoCell.class}, null, null, themeDescriptionDelegate, i16));
            arrayList.add(new ThemeDescription(this.mediaPages[i7].listView, 0, new Class[]{ContextLinkCell.class}, new String[]{"backgroundPaint"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i17));
            arrayList.add(new ThemeDescription(this.mediaPages[i7].listView, ThemeDescription.FLAG_CHECKBOX, new Class[]{ContextLinkCell.class}, null, null, themeDescriptionDelegate, i15));
            arrayList.add(new ThemeDescription(this.mediaPages[i7].listView, ThemeDescription.FLAG_CHECKBOXCHECK, new Class[]{ContextLinkCell.class}, null, null, themeDescriptionDelegate, i16));
            arrayList.add(new ThemeDescription(this.mediaPages[i7].listView, 0, null, null, new Drawable[]{this.pinnedHeaderShadowDrawable}, null, Theme.key_windowBackgroundGrayShadow));
            arrayList.add(new ThemeDescription(this.mediaPages[i7].emptyView.title, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, i10));
            arrayList.add(new ThemeDescription(this.mediaPages[i7].emptyView.subtitle, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, i11));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getThemeDescriptions$73(int i) {
        if (this.mediaPages[i].listView != null) {
            int childCount = this.mediaPages[i].listView.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = this.mediaPages[i].listView.getChildAt(i2);
                if (childAt instanceof SharedPhotoVideoCell) {
                    ((SharedPhotoVideoCell) childAt).updateCheckboxColor();
                } else if (childAt instanceof ProfileSearchCell) {
                    ((ProfileSearchCell) childAt).update(0);
                } else if (childAt instanceof UserCell) {
                    ((UserCell) childAt).update(0);
                }
            }
        }
    }

    public int getNextMediaColumnsCount(int i, int i2, boolean z) {
        int i3 = i2 + (!z ? 1 : -1);
        if (i3 > 6) {
            i3 = !z ? 9 : 6;
        }
        return Utilities.clamp(i3, 9, (this.allowStoriesSingleColumn && i == 1) ? 1 : 2);
    }

    public Boolean zoomIn() {
        return zoomIn(null, null);
    }

    public Boolean zoomIn(View view, View view2) {
        if (this.photoVideoChangeColumnsAnimation) {
            return null;
        }
        MediaPage mediaPage = this.mediaPages[0];
        if (mediaPage == null) {
            return null;
        }
        int i = mediaPage.selectedType;
        this.changeColumnsTab = i;
        boolean zIsAnyStoryPageType = isAnyStoryPageType(i);
        int nextMediaColumnsCount = getNextMediaColumnsCount(zIsAnyStoryPageType ? 1 : 0, this.mediaColumnsCount[zIsAnyStoryPageType ? 1 : 0], true);
        if (view != null && nextMediaColumnsCount == getNextMediaColumnsCount(zIsAnyStoryPageType ? 1 : 0, nextMediaColumnsCount, true)) {
            view.setEnabled(false);
            view.animate().alpha(0.5f).start();
        }
        if (this.mediaColumnsCount[zIsAnyStoryPageType ? 1 : 0] != nextMediaColumnsCount) {
            if (view2 != null && !view2.isEnabled()) {
                view2.setEnabled(true);
                view2.animate().alpha(1.0f).start();
            }
            if (!zIsAnyStoryPageType) {
                SharedConfig.setMediaColumnsCount(nextMediaColumnsCount);
            } else if (getStoriesCount(this.mediaPages[0].selectedType) >= 5 || isStoryAlbumPageType(this.mediaPages[0].selectedType)) {
                SharedConfig.setStoriesColumnsCount(nextMediaColumnsCount);
            }
            animateToMediaColumnsCount(nextMediaColumnsCount);
        }
        return Boolean.valueOf(nextMediaColumnsCount != getNextMediaColumnsCount(zIsAnyStoryPageType ? 1 : 0, nextMediaColumnsCount, true));
    }

    public Boolean zoomOut() {
        return zoomOut(null, null);
    }

    public Boolean zoomOut(View view, View view2) {
        if (this.photoVideoChangeColumnsAnimation) {
            return null;
        }
        MediaPage mediaPage = this.mediaPages[0];
        if (mediaPage == null) {
            return null;
        }
        if (this.allowStoriesSingleColumn && isAnyStoryPageType(mediaPage.selectedType)) {
            return null;
        }
        int i = this.mediaPages[0].selectedType;
        this.changeColumnsTab = i;
        boolean zIsAnyStoryPageType = isAnyStoryPageType(i);
        int nextMediaColumnsCount = getNextMediaColumnsCount(zIsAnyStoryPageType ? 1 : 0, this.mediaColumnsCount[zIsAnyStoryPageType ? 1 : 0], false);
        if (view2 != null && nextMediaColumnsCount == getNextMediaColumnsCount(zIsAnyStoryPageType ? 1 : 0, nextMediaColumnsCount, false)) {
            view2.setEnabled(false);
            view2.animate().alpha(0.5f).start();
        }
        if (this.mediaColumnsCount[zIsAnyStoryPageType ? 1 : 0] != nextMediaColumnsCount) {
            if (view != null && !view.isEnabled()) {
                view.setEnabled(true);
                view.animate().alpha(1.0f).start();
            }
            if (!zIsAnyStoryPageType) {
                SharedConfig.setMediaColumnsCount(nextMediaColumnsCount);
            } else if (getStoriesCount(this.mediaPages[0].selectedType) >= 5 || isStoryAlbumPageType(this.mediaPages[0].selectedType)) {
                SharedConfig.setStoriesColumnsCount(nextMediaColumnsCount);
            }
            animateToMediaColumnsCount(nextMediaColumnsCount);
        }
        return Boolean.valueOf(nextMediaColumnsCount != getNextMediaColumnsCount(zIsAnyStoryPageType ? 1 : 0, nextMediaColumnsCount, false));
    }

    public boolean canZoomIn() {
        MediaPage mediaPage;
        MediaPage[] mediaPageArr = this.mediaPages;
        if (mediaPageArr != null && (mediaPage = mediaPageArr[0]) != null) {
            boolean zIsAnyStoryPageType = isAnyStoryPageType(mediaPage.selectedType);
            int i = this.mediaColumnsCount[zIsAnyStoryPageType ? 1 : 0];
            if (i != getNextMediaColumnsCount(zIsAnyStoryPageType ? 1 : 0, i, true)) {
                return true;
            }
        }
        return false;
    }

    public boolean canZoomOut() {
        MediaPage mediaPage;
        MediaPage[] mediaPageArr = this.mediaPages;
        if (mediaPageArr != null && (mediaPage = mediaPageArr[0]) != null && (!this.allowStoriesSingleColumn || !isAnyStoryPageType(mediaPage.selectedType))) {
            boolean zIsAnyStoryPageType = isAnyStoryPageType(this.mediaPages[0].selectedType);
            int i = this.mediaColumnsCount[zIsAnyStoryPageType ? 1 : 0];
            if (i != getNextMediaColumnsCount(zIsAnyStoryPageType ? 1 : 0, i, false)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j) {
        int i;
        if (view == this.fragmentContextView && this.topPanelLayout == null) {
            canvas.save();
            float top = this.mediaPages[0].getTop();
            if (this.storiesContainer != null && ((i = this.mediaPages[0].selectedType) == 8 || isStoryAlbumPageType(i))) {
                top -= this.storiesContainer.getVisualHeight();
            }
            canvas.clipRect(0.0f, top, view.getMeasuredWidth(), view.getMeasuredHeight() + top + AndroidUtilities.dp(12.0f));
            boolean zDrawChild = super.drawChild(canvas, view, j);
            canvas.restore();
            return zDrawChild;
        }
        return super.drawChild(canvas, view, j);
    }

    public class ScrollSlidingTextTabStripInner extends ScrollSlidingTextTabStrip {
        public int backgroundColor;
        protected Paint backgroundPaint;
        private Rect blurBounds;

        public void drawBackground(Canvas canvas) {
        }

        @Override // org.telegram.ui.Components.ScrollSlidingTextTabStrip, org.telegram.ui.ActionBar.Theme.Colorable
        public /* bridge */ /* synthetic */ int[] getColorKeys() {
            return super.getColorKeys();
        }

        public ScrollSlidingTextTabStripInner(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context, resourcesProvider);
            this.backgroundColor = 0;
            this.blurBounds = new Rect();
        }

        @Override // org.telegram.ui.Components.ScrollSlidingTextTabStrip, android.view.ViewGroup, android.view.View
        public void dispatchDraw(Canvas canvas) {
            if (this.backgroundColor != 0) {
                if (this.backgroundPaint == null) {
                    this.backgroundPaint = new Paint();
                }
                this.backgroundPaint.setColor(this.backgroundColor);
                this.blurBounds.set(0, 0, getMeasuredWidth(), getMeasuredHeight());
                canvas.save();
                canvas.translate(getScrollX(), 0.0f);
                canvas.clipPath(this.clipPath);
                if (SharedConfig.chatBlurEnabled()) {
                    SharedMediaLayout.this.drawBackgroundWithBlur(canvas, getY(), this.blurBounds, this.backgroundPaint);
                } else {
                    canvas.drawPaint(this.backgroundPaint);
                }
                canvas.translate(-getScrollX(), 0.0f);
                canvas.restore();
            }
            super.dispatchDraw(canvas);
        }

        @Override // android.view.View
        public void setBackgroundColor(int i) {
            this.backgroundColor = i;
            invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getThemedColor(int i) {
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        if (resourcesProvider != null) {
            return resourcesProvider.getColor(i);
        }
        return Theme.getColor(i);
    }

    private boolean isTab(int i, int i2, boolean z) {
        return (z && i2 == 8 && isStoryAlbumPageType(i)) || i == i2;
    }

    public float getBottomButtonStoriesVisibility() {
        MediaPage mediaPage;
        StoriesController.StoriesList storiesList;
        StoriesController.StoriesList storiesList2;
        MediaPage[] mediaPageArr = this.mediaPages;
        float f = 1.0f;
        if (mediaPageArr == null || (mediaPage = mediaPageArr[0]) == null || mediaPageArr[1] == null || mediaPage.emptyView == null || this.mediaPages[1].emptyView == null) {
            return 1.0f;
        }
        MediaPage[] mediaPageArr2 = this.mediaPages;
        int i = mediaPageArr2[0].selectedType;
        int i2 = mediaPageArr2[1].selectedType;
        boolean z = isStoryAlbumPageType(i) || i == 8;
        boolean z2 = isStoryAlbumPageType(i2) || i2 == 8;
        if (!z && !z2) {
            return 1.0f;
        }
        float visibilityFactor = 1.0f - this.mediaPages[0].emptyView.getVisibilityFactor();
        float visibilityFactor2 = 1.0f - this.mediaPages[1].emptyView.getVisibilityFactor();
        StoriesAdapter storiesAdapterStoryAlbums_getStoriesAdapterByTabType = storyAlbums_getStoriesAdapterByTabType(this.mediaPages[0].selectedType);
        if (i == 8 || (storiesAdapterStoryAlbums_getStoriesAdapterByTabType != null && (storiesList2 = storiesAdapterStoryAlbums_getStoriesAdapterByTabType.storiesList) != null && storiesList2.getCount() > 0)) {
            visibilityFactor = 1.0f;
        }
        StoriesAdapter storiesAdapterStoryAlbums_getStoriesAdapterByTabType2 = storyAlbums_getStoriesAdapterByTabType(i2);
        if (i2 != 8 && (storiesAdapterStoryAlbums_getStoriesAdapterByTabType2 == null || (storiesList = storiesAdapterStoryAlbums_getStoriesAdapterByTabType2.storiesList) == null || storiesList.getCount() <= 0)) {
            f = visibilityFactor2;
        }
        if (!z) {
            visibilityFactor = f;
        }
        if (!z2) {
            f = visibilityFactor;
        }
        return AndroidUtilities.lerp(visibilityFactor, f, Math.abs(this.mediaPages[0].getTranslationX() / this.mediaPages[0].getMeasuredWidth()));
    }

    public float getTabTranslationX(int i, boolean z) {
        float width = getWidth();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            MediaPage[] mediaPageArr = this.mediaPages;
            if (i2 >= mediaPageArr.length) {
                break;
            }
            MediaPage mediaPage = mediaPageArr[i2];
            if (mediaPage != null && isTab(mediaPage.selectedType, i, z)) {
                i3++;
                width = this.mediaPages[i2].getTranslationX();
            }
            i2++;
        }
        if (i3 == 2) {
            return 0.0f;
        }
        return width;
    }

    public float getTabVisibility(int i, boolean z) {
        float fAbs = 0.0f;
        int i2 = 0;
        while (true) {
            MediaPage[] mediaPageArr = this.mediaPages;
            if (i2 >= mediaPageArr.length) {
                return fAbs;
            }
            MediaPage mediaPage = mediaPageArr[i2];
            if (mediaPage != null && isTab(mediaPage.selectedType, i, z)) {
                fAbs += 1.0f - Math.abs(this.mediaPages[i2].getTranslationX() / getWidth());
            }
            i2++;
        }
    }

    @Deprecated
    public float getTabProgress() {
        float fAbs = 0.0f;
        int i = 0;
        while (true) {
            MediaPage[] mediaPageArr = this.mediaPages;
            if (i >= mediaPageArr.length) {
                return fAbs;
            }
            MediaPage mediaPage = mediaPageArr[i];
            if (mediaPage != null) {
                fAbs += mediaPage.selectedType * (1.0f - Math.abs(mediaPage.getTranslationX() / getWidth()));
            }
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkStoriesTabsPosition() {
        char c2;
        float fAbs;
        float y;
        MediaPage[] mediaPageArr = this.mediaPages;
        MediaPage mediaPage = mediaPageArr[0];
        if (mediaPage == null || mediaPageArr[1] == null) {
            return;
        }
        float f = 0.0f;
        if (this.storiesContainer != null) {
            char c3 = (!isAnyStoryPageType(mediaPage.selectedType) || this.mediaPages[0].selectedType == 9) ? (char) 0 : (char) 1;
            if (this.mediaPages[1].getVisibility() == 0) {
                c2 = (!isAnyStoryPageType(this.mediaPages[1].selectedType) || this.mediaPages[1].selectedType == 9) ? (char) 0 : (char) 1;
            } else {
                c2 = c3;
            }
            if (c3 == c2) {
                fAbs = c3 != 0 ? 1.0f : 0.0f;
                this.storiesContainer.setTranslationX(c3 != 0 ? 0.0f : this.mediaPages[0].getMeasuredWidth());
            } else {
                this.storiesContainer.setTranslationX(this.mediaPages[c3 ^ 1].getTranslationX());
                fAbs = 1.0f - (Math.abs(this.storiesContainer.getTranslationX()) / this.storiesContainer.getMeasuredWidth());
            }
            int i = 0;
            float fClamp01 = 0.0f;
            while (true) {
                MediaPage[] mediaPageArr2 = this.mediaPages;
                if (i >= mediaPageArr2.length) {
                    break;
                }
                if (mediaPageArr2[i].getVisibility() == 0) {
                    InternalListView internalListView = this.mediaPages[i].listView;
                    View childAt = internalListView.getChildCount() == 0 ? null : internalListView.getChildAt(0);
                    if ((childAt == null ? -1 : internalListView.getChildAdapterPosition(childAt)) == 0) {
                        y = childAt.getY() - internalListView.getPaddingTop();
                    } else {
                        y = internalListView.getChildCount() == 0 ? 0.0f : -AndroidUtilities.dp(48.0f);
                    }
                    fClamp01 += y * Utilities.clamp01(1.0f - (this.mediaPages[i].getTranslationX() / this.mediaPages[i].getMeasuredWidth()));
                }
                i++;
            }
            float fClamp012 = Utilities.clamp01(1.0f - ((-fClamp01) / AndroidUtilities.dpf2(48.0f)));
            float fLerp = AndroidUtilities.lerp(0.9f, 1.0f, fClamp012);
            this.storiesContainer.setAlpha(fClamp012);
            this.storiesContainer.setScaleX(fLerp);
            this.storiesContainer.setScaleY(fLerp);
            this.storiesContainer.setTranslationY(this.topPadding + fClamp01);
            f = fAbs;
        }
        checkUi_topPanelLayoutY();
        if (this.subTabsVisibilityFactor != f) {
            this.subTabsVisibilityFactor = f;
            invalidateBlur();
            invalidate();
        }
    }

    public void onTabProgress(float f) {
        onBottomButtonVisibilityChange();
    }

    public static class InternalListView extends BlurredRecyclerView implements StoriesListPlaceProvider.ClippedView {
        public int hintPaddingBottom;
        public int hintPaddingTop;

        public InternalListView(Context context) {
            super(context);
        }

        @Override // org.telegram.ui.Stories.StoriesListPlaceProvider.ClippedView
        public void updateClip(int[] iArr) {
            iArr[0] = (getPaddingTop() - AndroidUtilities.dp(2.0f)) - this.hintPaddingTop;
            iArr[1] = (getMeasuredHeight() - getPaddingBottom()) - this.hintPaddingBottom;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateOptionsSearch() {
        updateOptionsSearch(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateOptionsSearch(boolean z) {
        ProfileGiftsContainer profileGiftsContainer;
        ProfileStoriesCollectionTabs profileStoriesCollectionTabs;
        RLottieImageView rLottieImageView = this.optionsSearchImageView;
        if (rLottieImageView == null) {
            return;
        }
        float fClamp = 0.0f;
        if (!this.searching && (((profileGiftsContainer = this.giftsContainer) == null || !profileGiftsContainer.isReordering()) && ((profileStoriesCollectionTabs = this.storiesContainer) == null || !profileStoriesCollectionTabs.isReordering()))) {
            fClamp = Utilities.clamp(this.searchAlpha + this.optionsAlpha, 1.0f, 0.0f);
        }
        rLottieImageView.setAlpha(fClamp);
        if (z) {
            animateSearchToOptions(getPhotoVideoOptionsAlpha(1.0f) > 0.5f, true);
        } else if (this.searchItemState == 2) {
            animateSearchToOptions(this.optionsAlpha > 0.1f, true);
        } else {
            animateSearchToOptions(this.searchAlpha < 0.1f, true);
        }
    }

    public void animateSearchToOptions(boolean z, boolean z2) {
        RLottieImageView rLottieImageView = this.optionsSearchImageView;
        if (rLottieImageView == null || this.animatingToOptions == z) {
            return;
        }
        this.animatingToOptions = z;
        if (!z && rLottieImageView.getAnimatedDrawable().getCurrentFrame() < 20) {
            this.optionsSearchImageView.getAnimatedDrawable().setCustomEndFrame(0);
        } else {
            this.optionsSearchImageView.getAnimatedDrawable().setCustomEndFrame(this.animatingToOptions ? 50 : 100);
        }
        RLottieImageView rLottieImageView2 = this.optionsSearchImageView;
        if (z2) {
            rLottieImageView2.getAnimatedDrawable().start();
        } else {
            rLottieImageView2.getAnimatedDrawable().setCurrentFrame(this.optionsSearchImageView.getAnimatedDrawable().getCustomEndFrame());
        }
    }

    private CharSequence addPostText() {
        if (this.addPostButton == null) {
            this.addPostButton = new SpannableStringBuilder();
            boolean zIsBot = isBot();
            SpannableStringBuilder spannableStringBuilder = this.addPostButton;
            if (zIsBot) {
                spannableStringBuilder.append((CharSequence) LocaleController.getString(C2807R.string.ProfileBotPreviewEmptyButton));
            } else {
                spannableStringBuilder.append((CharSequence) "c");
                this.addPostButton.setSpan(new ColoredImageSpan(C2807R.drawable.filled_premium_camera), 0, 1, 33);
                this.addPostButton.append((CharSequence) "  ").append((CharSequence) LocaleController.getString(C2807R.string.StoriesAddPost));
            }
        }
        return this.addPostButton;
    }

    public boolean canEditStories() {
        BaseFragment baseFragment;
        if (!isBot()) {
            return isStoriesView() || ((baseFragment = this.profileActivity) != null && baseFragment.getMessagesController().getStoriesController().canEditStories(this.dialog_id));
        }
        TLRPC.User user = MessagesController.getInstance(this.profileActivity.getCurrentAccount()).getUser(Long.valueOf(this.dialog_id));
        return user != null && user.bot && user.bot_can_edit;
    }

    public boolean isSearchingStories() {
        return (TextUtils.isEmpty(getStoriesHashtag()) && getStoriesArea() == null) ? false : true;
    }

    public void setPagesPaddingBottom(int i) {
        if (this.pagesPaddingBottom != i) {
            this.pagesPaddingBottom = i;
            MediaPage[] mediaPageArr = this.mediaPages;
            if (mediaPageArr != null) {
                for (MediaPage mediaPage : mediaPageArr) {
                    if (mediaPage != null) {
                        InternalListView internalListView = mediaPage.listView;
                        int paddingLeft = mediaPage.listView.getPaddingLeft();
                        int i2 = mediaPage.listView.topPadding;
                        int paddingRight = mediaPage.listView.getPaddingRight();
                        InternalListView internalListView2 = mediaPage.listView;
                        int pagePaddingBottom = getPagePaddingBottom(isStoriesView());
                        internalListView2.hintPaddingBottom = pagePaddingBottom;
                        internalListView.setPadding(paddingLeft, i2, paddingRight, pagePaddingBottom);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getPagePaddingBottom(boolean z) {
        return this.pagesPaddingBottom + (z ? AndroidUtilities.dp(52.0f) : 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateProgressViewLayout(MediaPage mediaPage) {
        int i = mediaPage.selectedType;
        boolean z = i == 0 || isAnyStoryPageType(i);
        FrameLayout.LayoutParams layoutParamsCreateFrame = LayoutHelper.createFrame(-1, -1.0f, 119, z ? 0.0f : 12.0f, (z ? 8 : 12) + 48, z ? 0.0f : 12.0f, z ? 0.0f : 12.0f);
        layoutParamsCreateFrame.topMargin += getStoriesTabsPadding(mediaPage.selectedType);
        ViewGroup.LayoutParams layoutParams = mediaPage.progressView.getLayoutParams();
        if (layoutParams instanceof FrameLayout.LayoutParams) {
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
            if (layoutParams2.leftMargin == layoutParamsCreateFrame.leftMargin && layoutParams2.topMargin == layoutParamsCreateFrame.topMargin && layoutParams2.rightMargin == layoutParamsCreateFrame.rightMargin && layoutParams2.bottomMargin == layoutParamsCreateFrame.bottomMargin && layoutParams2.gravity == layoutParamsCreateFrame.gravity) {
                return;
            }
        }
        mediaPage.progressView.setLayoutParams(layoutParamsCreateFrame);
    }

    private int getStoriesTabsPadding(int i) {
        return (int) ((this.storiesContainer == null || !(isStoryAlbumPageType(i) || i == 8)) ? 0.0f : this.storiesContainer.getVisibilityFactor() * AndroidUtilities.dp(40.0f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getPagePaddingTop(int i) {
        return AndroidUtilities.dp(54.0f) + this.topLayoutPadding + getStoriesTabsPadding(i) + (i == 9 ? AndroidUtilities.dp(64.0f) : 0);
    }

    public static class SharedMediaListView extends InternalListView {
        private final ArrayList<SharedPhotoVideoCell2> animationSupportingSortedCells;
        private int animationSupportingSortedCellsOffset;
        protected StaticLayout archivedHintLayout;
        protected float archivedHintLayoutLeft;
        protected float archivedHintLayoutWidth;
        protected TextPaint archivedHintPaint;
        final ArrayList<SharedPhotoVideoCell2> drawingViews;
        final ArrayList<SharedPhotoVideoCell2> drawingViews2;
        final ArrayList<SharedPhotoVideoCell2> drawingViews3;
        final HashSet<SharedPhotoVideoCell2> excludeDrawViews;
        UserListPoller poller;

        public void checkHighlightCell(SharedPhotoVideoCell2 sharedPhotoVideoCell2) {
        }

        public int getAnimateToColumnsCount() {
            return 3;
        }

        public float getChangeColumnsProgress() {
            return 0.0f;
        }

        public int getColumnsCount() {
            return 3;
        }

        public SparseArray<Float> getMessageAlphaEnter() {
            return null;
        }

        public RecyclerListView.FastScrollAdapter getMovingAdapter() {
            return null;
        }

        public int getPinchCenterPosition() {
            return 0;
        }

        public RecyclerListView.FastScrollAdapter getSupportingAdapter() {
            return null;
        }

        public InternalListView getSupportingListView() {
            return null;
        }

        public abstract boolean isChangeColumnsAnimation();

        public abstract boolean isStories();

        public boolean isThisListView() {
            return true;
        }

        public SharedMediaListView(Context context) {
            super(context);
            this.excludeDrawViews = new HashSet<>();
            this.drawingViews = new ArrayList<>();
            this.drawingViews2 = new ArrayList<>();
            this.drawingViews3 = new ArrayList<>();
            this.animationSupportingSortedCells = new ArrayList<>();
        }

        /* JADX WARN: Removed duplicated region for block: B:120:0x0359  */
        /* JADX WARN: Removed duplicated region for block: B:184:0x06bf  */
        /* JADX WARN: Removed duplicated region for block: B:185:0x06c5  */
        @Override // org.telegram.ui.Components.BlurredRecyclerView, org.telegram.ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void dispatchDraw(Canvas canvas) {
            float f;
            boolean z;
            int i;
            int i2;
            int i3;
            int i4;
            int i5;
            float f2;
            float f3;
            float f4;
            int i6;
            boolean z2;
            int animateToColumnsCount;
            int pinchCenterPosition;
            float f5 = 1.0f;
            Float fValueOf = Float.valueOf(1.0f);
            RecyclerListView.FastScrollAdapter movingAdapter = getMovingAdapter();
            RecyclerListView.FastScrollAdapter supportingAdapter = getSupportingAdapter();
            if (isThisListView() && getAdapter() == movingAdapter) {
                float measuredHeight = getMeasuredHeight();
                if (isChangeColumnsAnimation()) {
                    i3 = -1;
                    int i7 = -1;
                    for (int i8 = 0; i8 < getChildCount(); i8++) {
                        int childAdapterPosition = getChildAdapterPosition(getChildAt(i8));
                        if (childAdapterPosition >= 0 && (childAdapterPosition > i7 || i7 == -1)) {
                            i7 = childAdapterPosition;
                        }
                        if (childAdapterPosition >= 0 && (childAdapterPosition < i3 || i3 == -1)) {
                            i3 = childAdapterPosition;
                        }
                    }
                    int i9 = -1;
                    i4 = -1;
                    int i10 = 0;
                    z = true;
                    while (i10 < getSupportingListView().getChildCount()) {
                        float f6 = f5;
                        int childAdapterPosition2 = getSupportingListView().getChildAdapterPosition(getSupportingListView().getChildAt(i10));
                        if (childAdapterPosition2 >= 0 && (childAdapterPosition2 > i9 || i9 == -1)) {
                            i9 = childAdapterPosition2;
                        }
                        if (childAdapterPosition2 >= 0 && (childAdapterPosition2 < i4 || i4 == -1)) {
                            i4 = childAdapterPosition2;
                        }
                        i10++;
                        f5 = f6;
                    }
                    f = f5;
                    if (i3 < 0 || i4 < 0 || getPinchCenterPosition() < 0) {
                        animateToColumnsCount = 0;
                        pinchCenterPosition = 0;
                    } else {
                        int iCeil = (int) Math.ceil(movingAdapter.getItemCount() / getColumnsCount());
                        int iCeil2 = (int) Math.ceil(movingAdapter.getItemCount() / getAnimateToColumnsCount());
                        pinchCenterPosition = ((getPinchCenterPosition() / getAnimateToColumnsCount()) - (i4 / getAnimateToColumnsCount())) - ((getPinchCenterPosition() / getColumnsCount()) - (i3 / getColumnsCount()));
                        if (((i3 / getColumnsCount()) - pinchCenterPosition < 0 && getAnimateToColumnsCount() < getColumnsCount()) || ((i4 / getAnimateToColumnsCount()) + pinchCenterPosition < 0 && getAnimateToColumnsCount() > getColumnsCount())) {
                            pinchCenterPosition = 0;
                        }
                        if (((i9 / getColumnsCount()) + pinchCenterPosition >= iCeil && getAnimateToColumnsCount() > getColumnsCount()) || ((i7 / getAnimateToColumnsCount()) - pinchCenterPosition >= iCeil2 && getAnimateToColumnsCount() < getColumnsCount())) {
                            pinchCenterPosition = 0;
                        }
                        animateToColumnsCount = (int) ((getAnimateToColumnsCount() - getColumnsCount()) * ((getPinchCenterPosition() % getColumnsCount()) / (getColumnsCount() - 1)));
                    }
                    this.animationSupportingSortedCells.clear();
                    this.excludeDrawViews.clear();
                    this.drawingViews.clear();
                    this.drawingViews2.clear();
                    this.drawingViews3.clear();
                    this.animationSupportingSortedCellsOffset = 0;
                    for (int i11 = 0; i11 < getSupportingListView().getChildCount(); i11++) {
                        View childAt = getSupportingListView().getChildAt(i11);
                        if (childAt.getTop() <= getMeasuredHeight() && childAt.getBottom() >= 0) {
                            if (childAt instanceof SharedPhotoVideoCell2) {
                                this.animationSupportingSortedCells.add((SharedPhotoVideoCell2) childAt);
                            } else if (childAt instanceof TextView) {
                                this.animationSupportingSortedCellsOffset++;
                            }
                        }
                    }
                    this.drawingViews.addAll(this.animationSupportingSortedCells);
                    RecyclerListView.FastScroll fastScroll = getFastScroll();
                    if (fastScroll != null && fastScroll.getTag() != null) {
                        float scrollProgress = movingAdapter.getScrollProgress(this);
                        float scrollProgress2 = supportingAdapter.getScrollProgress(getSupportingListView());
                        float f7 = movingAdapter.fastScrollIsVisible(this) ? f : 0.0f;
                        float f8 = supportingAdapter.fastScrollIsVisible(getSupportingListView()) ? f : 0.0f;
                        fastScroll.setProgress((scrollProgress * (f - getChangeColumnsProgress())) + (scrollProgress2 * getChangeColumnsProgress()));
                        fastScroll.setVisibilityAlpha((f7 * (f - getChangeColumnsProgress())) + (f8 * getChangeColumnsProgress()));
                    }
                    i2 = pinchCenterPosition;
                    i = animateToColumnsCount;
                } else {
                    f = 1.0f;
                    z = true;
                    i = 0;
                    i2 = 0;
                    i3 = 0;
                    i4 = 0;
                }
                float y = measuredHeight;
                int i12 = 0;
                while (i12 < getChildCount()) {
                    View childAt2 = getChildAt(i12);
                    if (childAt2.getTop() > getMeasuredHeight() || childAt2.getBottom() < 0) {
                        if (childAt2 instanceof SharedPhotoVideoCell2) {
                            SharedPhotoVideoCell2 sharedPhotoVideoCell2 = (SharedPhotoVideoCell2) getChildAt(i12);
                            sharedPhotoVideoCell2.setCrossfadeView(null, 0.0f, 0);
                            sharedPhotoVideoCell2.setTranslationX(0.0f);
                            sharedPhotoVideoCell2.setTranslationY(0.0f);
                            sharedPhotoVideoCell2.setImageScale(1.0f, !isChangeColumnsAnimation());
                        }
                    } else if (childAt2 instanceof SharedPhotoVideoCell2) {
                        SharedPhotoVideoCell2 sharedPhotoVideoCell22 = (SharedPhotoVideoCell2) getChildAt(i12);
                        checkHighlightCell(sharedPhotoVideoCell22);
                        MessageObject messageObject = sharedPhotoVideoCell22.getMessageObject();
                        sharedPhotoVideoCell22.setImageAlpha((messageObject == null || getMessageAlphaEnter() == null || getMessageAlphaEnter().get(messageObject.getId(), null) == null) ? f : getMessageAlphaEnter().get(messageObject.getId(), fValueOf).floatValue(), !isChangeColumnsAnimation());
                        if (isChangeColumnsAnimation()) {
                            int viewAdapterPosition = (((GridLayoutManager.LayoutParams) sharedPhotoVideoCell22.getLayoutParams()).getViewAdapterPosition() % getColumnsCount()) + i;
                            int viewAdapterPosition2 = ((((((GridLayoutManager.LayoutParams) sharedPhotoVideoCell22.getLayoutParams()).getViewAdapterPosition() - i3) / getColumnsCount()) + i2) * getAnimateToColumnsCount()) + viewAdapterPosition + this.animationSupportingSortedCellsOffset;
                            if (viewAdapterPosition < 0 || viewAdapterPosition >= getAnimateToColumnsCount() || viewAdapterPosition2 < 0 || viewAdapterPosition2 >= this.animationSupportingSortedCells.size()) {
                                z2 = false;
                            } else {
                                float fLerp = AndroidUtilities.lerp(f, (this.animationSupportingSortedCells.get(viewAdapterPosition2).getMeasuredWidth() - AndroidUtilities.dpf2(2.0f)) / (sharedPhotoVideoCell22.getMeasuredWidth() - AndroidUtilities.dpf2(2.0f)), getChangeColumnsProgress());
                                float left = sharedPhotoVideoCell22.getLeft();
                                float top = sharedPhotoVideoCell22.getTop();
                                float left2 = this.animationSupportingSortedCells.get(viewAdapterPosition2).getLeft();
                                float top2 = this.animationSupportingSortedCells.get(viewAdapterPosition2).getTop();
                                sharedPhotoVideoCell22.setPivotX(0.0f);
                                sharedPhotoVideoCell22.setPivotY(0.0f);
                                sharedPhotoVideoCell22.setImageScale(fLerp, !isChangeColumnsAnimation());
                                sharedPhotoVideoCell22.setTranslationX((left2 - left) * getChangeColumnsProgress());
                                sharedPhotoVideoCell22.setTranslationY((top2 - top) * getChangeColumnsProgress());
                                sharedPhotoVideoCell22.setCrossfadeView(this.animationSupportingSortedCells.get(viewAdapterPosition2), getChangeColumnsProgress(), getAnimateToColumnsCount());
                                this.excludeDrawViews.add(this.animationSupportingSortedCells.get(viewAdapterPosition2));
                                this.drawingViews3.add(sharedPhotoVideoCell22);
                                canvas.save();
                                canvas.translate(sharedPhotoVideoCell22.getX(), sharedPhotoVideoCell22.getY());
                                sharedPhotoVideoCell22.draw(canvas);
                                canvas.restore();
                                if (sharedPhotoVideoCell22.getY() < y) {
                                    y = sharedPhotoVideoCell22.getY();
                                }
                                z2 = z;
                            }
                            if (!z2) {
                                if (isChangeColumnsAnimation()) {
                                    this.drawingViews2.add(sharedPhotoVideoCell22);
                                }
                                sharedPhotoVideoCell22.setCrossfadeView(null, 0.0f, 0);
                                sharedPhotoVideoCell22.setTranslationX(0.0f);
                                sharedPhotoVideoCell22.setTranslationY(0.0f);
                                sharedPhotoVideoCell22.setImageScale(1.0f, !isChangeColumnsAnimation());
                            }
                        }
                    }
                    i12++;
                    f = 1.0f;
                }
                float f9 = 1.25f;
                float f10 = 255.0f;
                if (isChangeColumnsAnimation() && !this.drawingViews.isEmpty()) {
                    float animateToColumnsCount2 = ((getAnimateToColumnsCount() / getColumnsCount()) * (1.0f - getChangeColumnsProgress())) + getChangeColumnsProgress();
                    float measuredWidth = ((((getMeasuredWidth() / getColumnsCount()) - AndroidUtilities.dpf2(2.0f)) / ((getMeasuredWidth() / getAnimateToColumnsCount()) - AndroidUtilities.dpf2(2.0f))) * (1.0f - getChangeColumnsProgress())) + getChangeColumnsProgress();
                    float measuredWidth2 = getMeasuredWidth() / getColumnsCount();
                    float measuredWidth3 = getMeasuredWidth() / getAnimateToColumnsCount();
                    float fCeil = (float) (((Math.ceil(getMeasuredWidth() / getAnimateToColumnsCount()) - ((double) AndroidUtilities.dpf2(2.0f))) * ((double) measuredWidth)) + ((double) AndroidUtilities.dpf2(2.0f)));
                    if (isStories()) {
                        fCeil *= 1.25f;
                    }
                    float f11 = fCeil;
                    int i13 = 0;
                    while (i13 < this.drawingViews.size()) {
                        SharedPhotoVideoCell2 sharedPhotoVideoCell23 = this.drawingViews.get(i13);
                        if (this.excludeDrawViews.contains(sharedPhotoVideoCell23)) {
                            f4 = measuredWidth;
                            i6 = i13;
                            f3 = f9;
                        } else {
                            sharedPhotoVideoCell23.setCrossfadeView(null, 0.0f, 0);
                            int viewAdapterPosition3 = ((GridLayoutManager.LayoutParams) sharedPhotoVideoCell23.getLayoutParams()).getViewAdapterPosition() % getAnimateToColumnsCount();
                            int i14 = viewAdapterPosition3 - i;
                            int viewAdapterPosition4 = ((((GridLayoutManager.LayoutParams) sharedPhotoVideoCell23.getLayoutParams()).getViewAdapterPosition() - i4) / getAnimateToColumnsCount()) - i2;
                            canvas.save();
                            f3 = f9;
                            canvas.translate((i14 * measuredWidth2 * (1.0f - getChangeColumnsProgress())) + (viewAdapterPosition3 * measuredWidth3 * getChangeColumnsProgress()), (viewAdapterPosition4 * f11) + y);
                            sharedPhotoVideoCell23.setImageScale(measuredWidth, !isChangeColumnsAnimation());
                            if (i14 < getColumnsCount()) {
                                f4 = measuredWidth;
                                i6 = i13;
                                canvas.saveLayerAlpha(0.0f, 0.0f, sharedPhotoVideoCell23.getMeasuredWidth() * animateToColumnsCount2, sharedPhotoVideoCell23.getMeasuredHeight() * animateToColumnsCount2, (int) (getChangeColumnsProgress() * 255.0f), 31);
                                sharedPhotoVideoCell23.draw(canvas);
                                canvas.restore();
                            } else {
                                f4 = measuredWidth;
                                i6 = i13;
                                sharedPhotoVideoCell23.draw(canvas);
                            }
                            canvas.restore();
                        }
                        i13 = i6 + 1;
                        f9 = f3;
                        measuredWidth = f4;
                    }
                }
                float f12 = f9;
                super.dispatchDraw(canvas);
                if (isChangeColumnsAnimation()) {
                    float columnsCount = ((getColumnsCount() / getAnimateToColumnsCount()) * getChangeColumnsProgress()) + (1.0f - getChangeColumnsProgress());
                    float measuredWidth4 = ((((getMeasuredWidth() / getAnimateToColumnsCount()) - AndroidUtilities.dpf2(2.0f)) / ((getMeasuredWidth() / getColumnsCount()) - AndroidUtilities.dpf2(2.0f))) * getChangeColumnsProgress()) + (1.0f - getChangeColumnsProgress());
                    float fCeil2 = (float) (((Math.ceil(getMeasuredWidth() / getColumnsCount()) - ((double) AndroidUtilities.dpf2(2.0f))) * ((double) measuredWidth4)) + ((double) AndroidUtilities.dpf2(2.0f)));
                    if (isStories()) {
                        fCeil2 *= f12;
                    }
                    float f13 = fCeil2;
                    float measuredWidth5 = getMeasuredWidth() / getColumnsCount();
                    float measuredWidth6 = getMeasuredWidth() / getAnimateToColumnsCount();
                    int i15 = 0;
                    while (i15 < this.drawingViews2.size()) {
                        SharedPhotoVideoCell2 sharedPhotoVideoCell24 = this.drawingViews2.get(i15);
                        int viewAdapterPosition5 = ((GridLayoutManager.LayoutParams) sharedPhotoVideoCell24.getLayoutParams()).getViewAdapterPosition() % getColumnsCount();
                        int viewAdapterPosition6 = ((((GridLayoutManager.LayoutParams) sharedPhotoVideoCell24.getLayoutParams()).getViewAdapterPosition() - i3) / getColumnsCount()) + i2;
                        int i16 = viewAdapterPosition5 + i;
                        canvas.save();
                        sharedPhotoVideoCell24.setImageScale(measuredWidth4, !isChangeColumnsAnimation());
                        canvas.translate((viewAdapterPosition5 * measuredWidth5 * (1.0f - getChangeColumnsProgress())) + (i16 * measuredWidth6 * getChangeColumnsProgress()), (viewAdapterPosition6 * f13) + y);
                        if (i16 < getAnimateToColumnsCount()) {
                            i5 = i15;
                            f2 = f10;
                            canvas.saveLayerAlpha(0.0f, 0.0f, sharedPhotoVideoCell24.getMeasuredWidth() * columnsCount, sharedPhotoVideoCell24.getMeasuredHeight() * columnsCount, (int) ((1.0f - getChangeColumnsProgress()) * f10), 31);
                            sharedPhotoVideoCell24.draw(canvas);
                            canvas.restore();
                        } else {
                            i5 = i15;
                            f2 = f10;
                            sharedPhotoVideoCell24.draw(canvas);
                        }
                        canvas.restore();
                        i15 = i5 + 1;
                        f10 = f2;
                    }
                    float f14 = f10;
                    if (this.drawingViews3.isEmpty()) {
                        return;
                    }
                    canvas.saveLayerAlpha(0.0f, 0.0f, getMeasuredWidth(), getMeasuredHeight(), (int) (getChangeColumnsProgress() * f14), 31);
                    for (int i17 = 0; i17 < this.drawingViews3.size(); i17++) {
                        this.drawingViews3.get(i17).drawCrossafadeImage(canvas);
                    }
                    canvas.restore();
                    return;
                }
                return;
            }
            for (int i18 = 0; i18 < getChildCount(); i18++) {
                View childAt3 = getChildAt(i18);
                int messageId = SharedMediaLayout.getMessageId(childAt3);
                if (messageId != 0 && getMessageAlphaEnter() != null) {
                    float fFloatValue = getMessageAlphaEnter().get(messageId, null) != null ? getMessageAlphaEnter().get(messageId, fValueOf).floatValue() : 1.0f;
                    if (!(childAt3 instanceof SharedDocumentCell)) {
                        ((SharedDocumentCell) childAt3).setEnterAnimationAlpha(fFloatValue);
                    } else if (childAt3 instanceof SharedAudioCell) {
                        ((SharedAudioCell) childAt3).setEnterAnimationAlpha(fFloatValue);
                    }
                }
                if (!(childAt3 instanceof SharedDocumentCell)) {
                }
            }
            super.dispatchDraw(canvas);
        }

        @Override // org.telegram.ui.Components.BlurredRecyclerView, org.telegram.ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
        public boolean drawChild(Canvas canvas, View view, long j) {
            RecyclerListView.FastScrollAdapter movingAdapter = getMovingAdapter();
            if (isThisListView() && getAdapter() == movingAdapter && isChangeColumnsAnimation() && (view instanceof SharedPhotoVideoCell2)) {
                return true;
            }
            return super.drawChild(canvas, view, j);
        }
    }

    public void openRenameStoriesAlbumAlert(BaseFragment baseFragment, final long j, final int i) {
        AlertsCreator.createStoriesAlbumEnterNameForRename(baseFragment.getContext(), baseFragment, getStoriesController().getAlbumName(j, i), baseFragment.getResourceProvider(), new MessagesStorage.StringCallback() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda82
            @Override // org.telegram.messenger.MessagesStorage.StringCallback
            public final void run(String str) {
                this.f$0.lambda$openRenameStoriesAlbumAlert$75(j, i, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openRenameStoriesAlbumAlert$75(long j, int i, String str) {
        getStoriesController().renameAlbum(j, i, str);
    }

    public void openDeleteStoriesAlbumAlert(BaseFragment baseFragment, final long j, final int i) {
        AlertsCreator.showSimpleConfirmAlert(baseFragment, LocaleController.getString(C2807R.string.Delete), AndroidUtilities.replaceTags(LocaleController.formatString(C2807R.string.StoriesAlbumMenuDeleteAlbumAsk, getStoriesController().getAlbumName(j, i))), LocaleController.getString(C2807R.string.Delete), true, new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda76
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$openDeleteStoriesAlbumAlert$76(j, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openDeleteStoriesAlbumAlert$76(long j, int i) {
        getStoriesController().removeAlbum(j, i);
    }

    public void openAddStoriesToAlbumSheet(BaseFragment baseFragment, final long j, final int i) {
        new SelectStoriesBottomSheet(baseFragment, j, this.mediaColumnsCount[1], new Utilities.Callback() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda22
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$openAddStoriesToAlbumSheet$77(j, i, (ArrayList) obj);
            }
        }).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openAddStoriesToAlbumSheet$77(long j, int i, ArrayList arrayList) {
        getStoriesController().addStoriesToAlbum(j, i, arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ItemOptions buildItemOptionsForStoryAlbumActionBar(final BaseFragment baseFragment, View view, final long j, final int i) {
        final ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions(baseFragment, view);
        itemOptionsMakeOptions.add(C2807R.drawable.menu_add_stories, LocaleController.getString(C2807R.string.StoriesAlbumMenuAddStories), new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda59
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$buildItemOptionsForStoryAlbumActionBar$78(baseFragment, j, i, itemOptionsMakeOptions);
            }
        });
        addStoryAlbumShareItemOptions(itemOptionsMakeOptions, baseFragment, j, i);
        itemOptionsMakeOptions.add(C2807R.drawable.tabs_reorder, LocaleController.getString(C2807R.string.StoriesAlbumMenuReorder), new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda60
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$buildItemOptionsForStoryAlbumActionBar$79(i, itemOptionsMakeOptions);
            }
        });
        itemOptionsMakeOptions.add(C2807R.drawable.msg_delete, (CharSequence) LocaleController.getString(C2807R.string.StoriesAlbumMenuDeleteAlbum), true, new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda61
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$buildItemOptionsForStoryAlbumActionBar$80(baseFragment, j, i, itemOptionsMakeOptions);
            }
        });
        itemOptionsMakeOptions.addGap();
        addZoomInZoomOutItemOptions(itemOptionsMakeOptions);
        itemOptionsMakeOptions.setDismissWithButtons(false);
        return itemOptionsMakeOptions;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildItemOptionsForStoryAlbumActionBar$78(BaseFragment baseFragment, long j, int i, ItemOptions itemOptions) {
        openAddStoriesToAlbumSheet(baseFragment, j, i);
        itemOptions.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildItemOptionsForStoryAlbumActionBar$79(int i, ItemOptions itemOptions) {
        lambda$onItemLongClick$60(i);
        itemOptions.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildItemOptionsForStoryAlbumActionBar$80(BaseFragment baseFragment, long j, int i, ItemOptions itemOptions) {
        openDeleteStoriesAlbumAlert(baseFragment, j, i);
        itemOptions.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addStoryAlbumShareItemOptions(ItemOptions itemOptions, final BaseFragment baseFragment, long j, int i) {
        String publicUsername;
        if (j > 0) {
            publicUsername = UserObject.getPublicUsername(MessagesController.getInstance(baseFragment.getCurrentAccount()).getUser(Long.valueOf(j)));
        } else {
            publicUsername = ChatObject.getPublicUsername(MessagesController.getInstance(baseFragment.getCurrentAccount()).getChat(Long.valueOf(-j)));
        }
        if (publicUsername == null) {
            return;
        }
        final String str = "https://" + MessagesController.getInstance(baseFragment.getCurrentAccount()).linkPrefix + "/" + publicUsername + "/a/" + i;
        itemOptions.add(C2807R.drawable.media_share, LocaleController.getString(C2807R.string.StoriesAlbumMenuShareLink), new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda62
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$addStoryAlbumShareItemOptions$81(str, baseFragment);
            }
        });
    }

    /* JADX INFO: renamed from: org.telegram.ui.Components.SharedMediaLayout$50, reason: invalid class name */
    public class AnonymousClass50 extends ShareAlert {
        final /* synthetic */ BaseFragment val$fragment;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass50(Context context, ArrayList arrayList, String str, boolean z, String str2, boolean z2, Theme.ResourcesProvider resourcesProvider, BaseFragment baseFragment) {
            super(context, arrayList, str, z, str2, z2, resourcesProvider);
            this.val$fragment = baseFragment;
        }

        @Override // org.telegram.ui.Components.ShareAlert
        public void onSend(final LongSparseArray<TLRPC.Dialog> longSparseArray, final int i, TLRPC.TL_forumTopic tL_forumTopic, boolean z) {
            final BaseFragment baseFragment = this.val$fragment;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$50$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    SharedMediaLayout.AnonymousClass50.$r8$lambda$_pN4bikBfutB9mKbWdNEFWB3QIo(baseFragment, longSparseArray, i);
                }
            }, 100L);
        }

        public static /* synthetic */ void $r8$lambda$_pN4bikBfutB9mKbWdNEFWB3QIo(BaseFragment baseFragment, LongSparseArray longSparseArray, int i) {
            UndoView undoView;
            if (baseFragment instanceof ChatActivity) {
                undoView = ((ChatActivity) baseFragment).getUndoView();
            } else {
                undoView = baseFragment instanceof ProfileActivity ? ((ProfileActivity) baseFragment).getUndoView() : null;
            }
            UndoView undoView2 = undoView;
            if (undoView2 != null) {
                if (longSparseArray.size() == 1) {
                    undoView2.showWithAction(((TLRPC.Dialog) longSparseArray.valueAt(0)).id, 53, Integer.valueOf(i));
                } else {
                    undoView2.showWithAction(0L, 53, Integer.valueOf(i), Integer.valueOf(longSparseArray.size()), (Runnable) null, (Runnable) null);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addStoryAlbumShareItemOptions$81(String str, BaseFragment baseFragment) {
        AnonymousClass50 anonymousClass50 = new AnonymousClass50(getContext(), null, str, false, str, false, this.resourcesProvider, baseFragment);
        if (baseFragment != null) {
            baseFragment.showDialog(anonymousClass50);
        } else {
            anonymousClass50.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addZoomInZoomOutItemOptions(ItemOptions itemOptions) {
        int itemsCount = itemOptions.getItemsCount();
        itemOptions.add(C2807R.drawable.msg_zoomin, LocaleController.getString(C2807R.string.MediaZoomIn), new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda53
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$addZoomInZoomOutItemOptions$82(viewArr);
            }
        });
        itemOptions.add(C2807R.drawable.msg_zoomout, LocaleController.getString(C2807R.string.MediaZoomOut), new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda54
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$addZoomInZoomOutItemOptions$83(viewArr);
            }
        });
        final View[] viewArr = {itemOptions.getItemAt(itemsCount), itemOptions.getItemAt(itemsCount + 1)};
        if (!canZoomIn()) {
            viewArr[0].setEnabled(false);
            viewArr[0].setAlpha(0.5f);
        }
        if (canZoomOut()) {
            return;
        }
        viewArr[1].setEnabled(false);
        viewArr[1].setAlpha(0.5f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addZoomInZoomOutItemOptions$82(View[] viewArr) {
        zoomIn(viewArr[0], viewArr[1]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addZoomInZoomOutItemOptions$83(View[] viewArr) {
        zoomOut(viewArr[0], viewArr[1]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onStoryAlbumCreate(final StoriesController.StoryAlbum storyAlbum) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda84
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onStoryAlbumCreate$84(storyAlbum);
            }
        }, 100L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onStoryAlbumCreate$84(StoriesController.StoryAlbum storyAlbum) {
        ProfileStoriesCollectionTabs profileStoriesCollectionTabs = this.storiesContainer;
        if (profileStoriesCollectionTabs != null) {
            profileStoriesCollectionTabs.lambda$setInitialTabId$2(storyAlbum.album_id);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public StoryAlbumData storyAlbums_getByAlbumId(int i) {
        StoryAlbumData storyAlbumData = this.storyAlbumsById.get(Integer.valueOf(i));
        if (storyAlbumData != null) {
            return storyAlbumData;
        }
        StoryAlbumData storyAlbumData2 = new StoryAlbumData(getContext(), i);
        this.storyAlbumsById.put(Integer.valueOf(i), storyAlbumData2);
        this.storyAlbumsByTabType.put(Integer.valueOf(storyAlbumData2.tabType), Integer.valueOf(storyAlbumData2.albumId));
        return storyAlbumData2;
    }

    public int storyAlbums_getAlbumIdByTabType(int i) {
        StoryAlbumData storyAlbumDataStoryAlbums_getByTabType = storyAlbums_getByTabType(i);
        if (storyAlbumDataStoryAlbums_getByTabType == null) {
            return -1;
        }
        return storyAlbumDataStoryAlbums_getByTabType.albumId;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public StoryAlbumData storyAlbums_getByTabType(int i) {
        Integer num = this.storyAlbumsByTabType.get(Integer.valueOf(i));
        if (num == null) {
            return null;
        }
        return this.storyAlbumsById.get(num);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public StoriesAdapter storyAlbums_getStoriesAdapterByTabType(int i) {
        StoryAlbumData storyAlbumDataStoryAlbums_getByTabType;
        if (i == 8) {
            return this.storiesAdapter;
        }
        if (i == 9) {
            return this.archivedStoriesAdapter;
        }
        if (!isStoryAlbumPageType(i) || (storyAlbumDataStoryAlbums_getByTabType = storyAlbums_getByTabType(i)) == null) {
            return null;
        }
        return storyAlbumDataStoryAlbums_getByTabType.adapter;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public StoriesAdapter storyAlbums_getStoriesSupportingAdapterByTabType(int i) {
        StoryAlbumData storyAlbumDataStoryAlbums_getByTabType;
        if (i == 8) {
            return this.animationSupportingStoriesAdapter;
        }
        if (i == 9) {
            return this.animationSupportingArchivedStoriesAdapter;
        }
        if (!isStoryAlbumPageType(i) || (storyAlbumDataStoryAlbums_getByTabType = storyAlbums_getByTabType(i)) == null) {
            return null;
        }
        return storyAlbumDataStoryAlbums_getByTabType.adapterSupport;
    }

    private int storyAlbums_getTabTypeByStoriesList(StoriesController.StoriesList storiesList) {
        StoriesAdapter storiesAdapter = this.storiesAdapter;
        if (storiesAdapter != null && storiesList == storiesAdapter.storiesList) {
            return 8;
        }
        StoriesAdapter storiesAdapter2 = this.archivedStoriesAdapter;
        if (storiesAdapter2 != null && storiesList == storiesAdapter2.storiesList) {
            return 9;
        }
        for (StoryAlbumData storyAlbumData : this.storyAlbumsById.values()) {
            if (storyAlbumData.adapter.storiesList == storiesList) {
                return storyAlbumData.tabType;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int storyAlbums_getTabTypeByStoriesAdapter(RecyclerView.Adapter<?> adapter) {
        if (adapter == this.storiesAdapter) {
            return 8;
        }
        if (adapter == this.archivedStoriesAdapter) {
            return 9;
        }
        for (StoryAlbumData storyAlbumData : this.storyAlbumsById.values()) {
            if (storyAlbumData.adapter == adapter) {
                return storyAlbumData.tabType;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int storyAlbums_getTabTypeByStoriesSupportingAdapter(RecyclerView.Adapter<?> adapter) {
        if (adapter == this.animationSupportingStoriesAdapter) {
            return 8;
        }
        if (adapter == this.animationSupportingArchivedStoriesAdapter) {
            return 9;
        }
        for (StoryAlbumData storyAlbumData : this.storyAlbumsById.values()) {
            if (storyAlbumData.adapterSupport == adapter) {
                return storyAlbumData.tabType;
            }
        }
        return -1;
    }

    public class StoryAlbumData {
        public final StoriesAdapter adapter;
        public final StoriesAdapter adapterSupport;
        public final int albumId;
        public final int tabType;

        private StoryAlbumData(Context context, int i) {
            this.albumId = i;
            int i2 = SharedMediaLayout.this.tabIndexCounter;
            SharedMediaLayout.this.tabIndexCounter = i2 + 1;
            this.tabType = SharedMediaLayout.getStoryAlbumType(i2);
            this.adapter = new StoriesAdapter(context, i, false) { // from class: org.telegram.ui.Components.SharedMediaLayout.StoryAlbumData.1
                {
                    SharedMediaLayout sharedMediaLayout = SharedMediaLayout.this;
                }

                @Override // org.telegram.ui.Components.SharedMediaLayout.StoriesAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
                public void notifyDataSetChanged() {
                    super.notifyDataSetChanged();
                    StoryAlbumData storyAlbumData = StoryAlbumData.this;
                    MediaPage mediaPage = SharedMediaLayout.this.getMediaPage(storyAlbumData.tabType);
                    if (mediaPage != null && mediaPage.animationSupportingListView.getVisibility() == 0) {
                        StoryAlbumData.this.adapterSupport.notifyDataSetChanged();
                    }
                    if (mediaPage != null) {
                        StickerEmptyView stickerEmptyView = mediaPage.emptyView;
                        StoriesController.StoriesList storiesList = this.storiesList;
                        stickerEmptyView.showProgress(storiesList != null && (storiesList.isLoading() || (SharedMediaLayout.this.hasInternet() && this.storiesList.getCount() > 0)));
                    }
                }
            };
            this.adapterSupport = SharedMediaLayout.this.new StoriesAdapter(context, i, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public StoriesController getStoriesController() {
        return MessagesController.getInstance(this.profileActivity.getCurrentAccount()).getStoriesController();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isBroadcastChannelProfile() {
        BaseFragment baseFragment;
        if (this.info == null || (baseFragment = this.profileActivity) == null) {
            return false;
        }
        return ChatObject.isChannelAndNotMegaGroup(baseFragment.getMessagesController().getChat(Long.valueOf(this.info.id)));
    }

    public static TLRPC.ProfileTab getTab(int i, boolean z) {
        if (i != 8 && i != 14 && !z) {
            return null;
        }
        if (i == 0) {
            return new TLRPC.TL_profileTabMedia();
        }
        if (i == 1) {
            return new TLRPC.TL_profileTabFiles();
        }
        if (i == 2) {
            return new TLRPC.TL_profileTabVoice();
        }
        if (i == 3) {
            return new TLRPC.TL_profileTabLinks();
        }
        if (i == 4) {
            return new TLRPC.TL_profileTabMusic();
        }
        if (i == 5) {
            return new TLRPC.TL_profileTabGifs();
        }
        if (i == 8) {
            return new TLRPC.TL_profileTabPosts();
        }
        if (i != 14) {
            return null;
        }
        return new TLRPC.TL_profileTabGifts();
    }

    public static String getTabName(int i) {
        if (i == 0) {
            return LocaleController.getString(C2807R.string.SharedMediaTabFull2);
        }
        if (i == 1) {
            return LocaleController.getString(C2807R.string.SharedFilesTab2);
        }
        if (i == 2) {
            return LocaleController.getString(C2807R.string.SharedVoiceTab2);
        }
        if (i == 3) {
            return LocaleController.getString(C2807R.string.SharedLinksTab2);
        }
        if (i == 4) {
            return LocaleController.getString(C2807R.string.SharedMusicTab2);
        }
        if (i == 5) {
            return LocaleController.getString(C2807R.string.SharedGIFsTab2);
        }
        if (i == 8) {
            return LocaleController.getString(C2807R.string.ProfileStories);
        }
        if (i != 14) {
            return null;
        }
        return LocaleController.getString(C2807R.string.ProfileGifts);
    }

    public static int getTabId(TLRPC.ProfileTab profileTab) {
        if (profileTab instanceof TLRPC.TL_profileTabPosts) {
            return 8;
        }
        if (profileTab instanceof TLRPC.TL_profileTabMedia) {
            return 0;
        }
        if (profileTab instanceof TLRPC.TL_profileTabGifts) {
            return 14;
        }
        if (profileTab instanceof TLRPC.TL_profileTabMusic) {
            return 4;
        }
        if (profileTab instanceof TLRPC.TL_profileTabVoice) {
            return 2;
        }
        if (profileTab instanceof TLRPC.TL_profileTabLinks) {
            return 3;
        }
        if (profileTab instanceof TLRPC.TL_profileTabFiles) {
            return 1;
        }
        return profileTab instanceof TLRPC.TL_profileTabGifs ? 5 : -1;
    }

    public void sendTabsOrder() {
        if (this.profileActivity == null || this.scrollSlidingTextTabStrip == null) {
            return;
        }
        boolean zIsBroadcastChannelProfile = isBroadcastChannelProfile();
        ArrayList arrayList = new ArrayList();
        ArrayList<Integer> tabIds = this.scrollSlidingTextTabStrip.getTabIds();
        int size = tabIds.size();
        int i = 0;
        while (i < size) {
            Integer num = tabIds.get(i);
            i++;
            TLRPC.ProfileTab tab = getTab(num.intValue(), zIsBroadcastChannelProfile);
            if (tab != null) {
                arrayList.add(tab);
            }
        }
    }

    public void initBlurCapture(ViewGroup viewGroup) {
        for (MediaPage mediaPage : this.mediaPages) {
            InternalListView internalListView = mediaPage.listView;
            final InternalListView internalListView2 = mediaPage.listView;
            Objects.requireNonNull(internalListView2);
            mediaPage.iBlur3Capture = new ViewGroupPartRenderer(internalListView, viewGroup, new ViewGroupPartRenderer.DrawChildMethod() { // from class: org.telegram.ui.Components.SharedMediaLayout$$ExternalSyntheticLambda6
                @Override // org.telegram.ui.Components.blur3.ViewGroupPartRenderer.DrawChildMethod
                public final boolean drawChild(Canvas canvas, View view, long j) {
                    return internalListView2.drawChild(canvas, view, j);
                }
            });
        }
        ProfileGiftsContainer profileGiftsContainer = this.giftsContainer;
        if (profileGiftsContainer != null) {
            profileGiftsContainer.initBlurCapture(viewGroup);
        }
    }
}
