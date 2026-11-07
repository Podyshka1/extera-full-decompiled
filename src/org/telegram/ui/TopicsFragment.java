package org.telegram.ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ImageSpan;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.collection.LongSparseArray;
import androidx.core.graphics.ColorUtils;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.config.BottomNavigationBar;
import com.exteragram.messenger.utils.ui.FabUiHelper;
import com.exteragram.messenger.utils.ui.MainTabsUiHelper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.CountDownLatch;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.AnimationNotificationsLocker;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.NotificationsController;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.TopicsController;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_account;
import org.telegram.tgnet.tl.TL_stories;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.ActionBarMenu;
import org.telegram.ui.ActionBar.ActionBarMenuItem;
import org.telegram.ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.ui.ActionBar.ActionBarPopupWindow;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BackDrawable;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.ActionBar.ThemeDescription;
import org.telegram.ui.Adapters.DialogsAdapter;
import org.telegram.ui.Adapters.FiltersView;
import org.telegram.ui.Cells.DialogCell;
import org.telegram.ui.Cells.GraySectionCell;
import org.telegram.ui.Cells.HeaderCell;
import org.telegram.ui.Cells.ProfileSearchCell;
import org.telegram.ui.Cells.TopicSearchCell;
import org.telegram.ui.Cells.UserCell;
import org.telegram.ui.ChatActivity;
import org.telegram.ui.Components.AlertsCreator;
import org.telegram.ui.Components.AnimatedEmojiDrawable;
import org.telegram.ui.Components.BlurredRecyclerView;
import org.telegram.ui.Components.Bulletin;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.ChatActivityInterface;
import org.telegram.ui.Components.ChatAvatarContainer;
import org.telegram.ui.Components.ChatNotificationsPopupWrapper;
import org.telegram.ui.Components.CheckBox2;
import org.telegram.ui.Components.ColoredImageSpan;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.DialogsActivityTopPanelLayout;
import org.telegram.ui.Components.EditTextBoldCursor;
import org.telegram.ui.Components.FlickerLoadingView;
import org.telegram.ui.Components.Forum.ForumBubbleDrawable;
import org.telegram.ui.Components.Forum.ForumUtilities;
import org.telegram.ui.Components.FragmentContextView;
import org.telegram.ui.Components.FragmentFloatingButton;
import org.telegram.ui.Components.InviteMembersBottomSheet;
import org.telegram.ui.Components.JoinGroupAlert;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.ListView.AdapterWithDiffUtils;
import org.telegram.ui.Components.NumberTextView;
import org.telegram.ui.Components.PullForegroundDrawable;
import org.telegram.ui.Components.RadialProgressView;
import org.telegram.ui.Components.RecyclerAnimationScrollHelper;
import org.telegram.ui.Components.RecyclerItemsEnterAnimator;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.SearchDownloadsContainer;
import org.telegram.ui.Components.SearchViewPager;
import org.telegram.ui.Components.SizeNotifierFrameLayout;
import org.telegram.ui.Components.StickerEmptyView;
import org.telegram.ui.Components.UnreadCounterTextView;
import org.telegram.ui.Components.ViewPagerFixed;
import org.telegram.ui.Components.blur3.BlurredBackgroundDrawableViewFactory;
import org.telegram.ui.Components.blur3.DownscaleScrollableNoiseSuppressor;
import org.telegram.ui.Components.blur3.ViewGroupPartRenderer;
import org.telegram.ui.Components.blur3.capture.IBlur3Capture;
import org.telegram.ui.Components.blur3.drawable.BlurredBackgroundDrawable;
import org.telegram.ui.Components.blur3.drawable.color.impl.BlurredBackgroundProviderImpl;
import org.telegram.ui.Components.blur3.source.BlurredBackgroundSourceColor;
import org.telegram.ui.Components.blur3.source.BlurredBackgroundSourceRenderNode;
import org.telegram.ui.Components.chat.ViewPositionWatcher;
import org.telegram.ui.Components.voip.VoIPHelper;
import org.telegram.ui.Delegates.ChatActivityMemberRequestsDelegate;
import org.telegram.ui.FilteredSearchView;
import org.telegram.ui.GroupCreateActivity;
import org.telegram.ui.MainTabsActivity;
import org.telegram.ui.RightSlidingDialogContainer;
import org.telegram.ui.TopicsFragment;
import org.telegram.ui.recyclerview.LinearSmoothScrollerCustom;
import org.webrtc.GlShader$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
public class TopicsFragment extends BaseFragment implements NotificationCenter.NotificationCenterDelegate, ChatActivityInterface, RightSlidingDialogContainer.BaseFragmentWithFullscreen, MainTabsActivity.TabFragmentDelegate {
    private static HashSet<Long> settingsPreloaded = new HashSet<>();
    Adapter adapter;
    private ActionBarMenuSubItem addMemberSubMenu;
    private int additionFloatingButtonOffset;
    private int additionNavigationBarHeight;
    private boolean allowSwipeDuringCurrentTouch;
    boolean animateSearchWithScale;
    boolean animatedUpdateEnabled;
    ChatAvatarContainer avatarContainer;
    private View blurredView;
    private ActionBarMenuSubItem boostGroupSubmenu;
    private TL_stories.TL_premium_boostsStatus boostsStatus;
    private int bottomButtonType;
    private UnreadCounterTextView bottomOverlayChatText;
    private FrameLayout bottomOverlayContainer;
    private RadialProgressView bottomOverlayProgress;
    private boolean bottomPannelVisible;
    boolean canShowCreateTopic;
    private boolean canShowHiddenArchive;
    private boolean canShowProgress;
    TLRPC.ChatFull chatFull;
    final long chatId;
    private ImageView closeReportSpam;
    private ActionBarMenuSubItem closeTopic;
    SizeNotifierFrameLayout contentView;
    private boolean createGroupCall;
    private ActionBarMenuSubItem createTopicSubmenu;
    private ActionBarMenuSubItem deleteChatSubmenu;
    private ActionBarMenuItem deleteItem;
    private int dialogChangeFinished;
    private int dialogInsertFinished;
    private int dialogRemoveFinished;
    DialogsActivity dialogsActivity;
    private boolean disableActionBarScrolling;
    private View emptyView;
    private EmptyViewContainer emptyViewContainer;
    HashSet<Integer> excludeTopics;
    private boolean finishDialogRightSlidingPreviewOnTransitionEnd;
    FragmentFloatingButton floatingButton;
    ArrayList<Item> forumTopics;
    private boolean forumTopicsListFrozen;
    FragmentContextView fragmentContextView;
    private FrameLayout fragmentContextViewWrapper;
    private ArrayList<Item> frozenForumTopicsList;
    FrameLayout fullscreenView;
    private View generalTopicViewMoving;
    private ChatObject.Call groupCall;
    private int hiddenCount;
    private boolean hiddenShown;
    private ActionBarMenuItem hideItem;
    private IBlur3Capture iBlur3Capture;
    private final BlurredBackgroundDrawableViewFactory iBlur3FactoryLiquidGlass;
    private boolean iBlur3Invalidated;
    private final RectF iBlur3PositionActionBar;
    private final RectF iBlur3PositionMainTabs;
    private final ArrayList<RectF> iBlur3Positions;
    private final BlurredBackgroundSourceColor iBlur3SourceColor;
    private final BlurredBackgroundSourceRenderNode iBlur3SourceGlass;
    private final BlurredBackgroundSourceRenderNode iBlur3SourceGlassFrosted;
    private boolean ignoreDiffUtil;
    boolean isSlideBackTransition;
    private DefaultItemAnimator itemAnimator;
    private ItemTouchHelper itemTouchHelper;
    private TouchHelperCallback itemTouchHelperCallback;
    RecyclerItemsEnterAnimator itemsEnterAnimator;
    private boolean joinRequested;
    private boolean lastCallCheckFromServer;
    private int lastItemsCount;
    LinearLayoutManager layoutManager;
    private boolean loadingTopics;
    private boolean mainTabsHiddenByScroll;
    private ArrayList<MessagesController.DialogFilter> movingDialogFilters;
    private boolean mute;
    private ActionBarMenuItem muteItem;
    private int navigationBarHeight;
    private final AnimationNotificationsLocker notificationsLocker;
    OnTopicSelectedListener onTopicSelectedListener;
    private boolean openAnimationEnded;
    private boolean openVideoChat;
    private final boolean openedForBotShare;
    private final boolean openedForForward;
    private final boolean openedForQuote;
    private final boolean openedForReply;
    private final boolean openedForSelect;
    private ActionBarMenuItem other;
    ActionBarMenuItem otherItem;
    public DialogsActivity parentDialogsActivity;
    private ChatActivityMemberRequestsDelegate pendingRequestsDelegate;
    private ActionBarMenuItem pinItem;
    private PullForegroundDrawable pullForegroundDrawable;
    private int pullViewState;
    private ActionBarMenuSubItem readItem;
    private TopicsRecyclerView recyclerListView;
    private boolean removeFragmentOnTransitionEnd;
    private boolean reordering;
    private ActionBarMenuSubItem reportSubmenu;
    private ActionBarMenuSubItem restartTopic;
    private RecyclerAnimationScrollHelper scrollHelper;
    private boolean scrollToTop;
    private final DownscaleScrollableNoiseSuppressor scrollableViewNoiseSuppressor;
    private float searchAnimationProgress;
    ValueAnimator searchAnimator;
    private MessagesSearchContainer searchContainer;
    private ActionBarMenuItem searchItem;
    private ViewPagerFixed.TabsView searchTabsView;
    public boolean searching;
    private NumberTextView selectedDialogsCountTextView;
    private long selectedTopicForTablet;
    HashSet<Integer> selectedTopics;
    private ActionBarMenuItem showItem;
    ValueAnimator slideBackTransitionAnimator;
    float slideFragmentProgress;
    private long startArchivePullingTime;
    ChatActivity.ThemeDelegate themeDelegate;
    private DialogsActivityTopPanelLayout topPanelLayout;
    private final TopicsController topicsController;
    StickerEmptyView topicsEmptyView;
    float transitionPadding;
    private ActionBarMenuItem unpinItem;
    private boolean updateAnimated;
    private String voiceChatHash;
    private boolean waitingForScrollFinished;

    /* JADX INFO: loaded from: classes6.dex */
    public interface OnTopicSelectedListener {
        void onTopicSelected(TLRPC.TL_forumTopic tL_forumTopic);
    }

    public static /* synthetic */ void $r8$lambda$FLNt20XBT5wm3vti4JCLvSVO00E() {
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean allowFinishFragmentInsteadOfRemoveFromStack() {
        return false;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean drawEdgeNavigationBar() {
        return false;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean isSupportEdgeToEdge() {
        return true;
    }

    @Override // org.telegram.ui.RightSlidingDialogContainer.BaseFragmentWithFullscreen
    public View getFullscreenView() {
        return this.fullscreenView;
    }

    public TopicsFragment(Bundle bundle) {
        super(bundle);
        this.forumTopics = new ArrayList<>();
        this.frozenForumTopicsList = new ArrayList<>();
        this.adapter = new Adapter();
        this.hiddenCount = 0;
        this.hiddenShown = true;
        this.animatedUpdateEnabled = true;
        this.bottomPannelVisible = true;
        this.searchAnimationProgress = 0.0f;
        this.selectedTopics = new HashSet<>();
        this.mute = false;
        this.notificationsLocker = new AnimationNotificationsLocker(new int[]{NotificationCenter.topicsDidLoaded});
        this.slideFragmentProgress = 1.0f;
        this.movingDialogFilters = new ArrayList<>();
        ArrayList<RectF> arrayList = new ArrayList<>();
        this.iBlur3Positions = arrayList;
        RectF rectF = new RectF();
        this.iBlur3PositionActionBar = rectF;
        RectF rectF2 = new RectF();
        this.iBlur3PositionMainTabs = rectF2;
        arrayList.add(rectF);
        arrayList.add(rectF2);
        this.chatId = this.arguments.getLong("chat_id", 0L);
        this.openedForSelect = this.arguments.getBoolean("for_select", false);
        this.openedForForward = this.arguments.getBoolean("forward_to", false);
        this.openedForBotShare = this.arguments.getBoolean("bot_share_to", false);
        this.openedForQuote = this.arguments.getBoolean("quote", false);
        this.openedForReply = this.arguments.getBoolean("reply_to", false);
        this.voiceChatHash = this.arguments.getString("voicechat", null);
        this.openVideoChat = this.arguments.getBoolean("videochat", false);
        this.topicsController = getMessagesController().getTopicsController();
        SharedPreferences preferences = getUserConfig().getPreferences();
        this.canShowProgress = !preferences.getBoolean("topics_end_reached_" + r2, false);
        BlurredBackgroundSourceColor blurredBackgroundSourceColor = new BlurredBackgroundSourceColor();
        this.iBlur3SourceColor = blurredBackgroundSourceColor;
        blurredBackgroundSourceColor.setColor(getThemedColor(Theme.key_windowBackgroundWhite));
        if (Build.VERSION.SDK_INT >= 31) {
            this.scrollableViewNoiseSuppressor = new DownscaleScrollableNoiseSuppressor();
            this.iBlur3SourceGlassFrosted = new BlurredBackgroundSourceRenderNode(null);
            BlurredBackgroundSourceRenderNode blurredBackgroundSourceRenderNode = new BlurredBackgroundSourceRenderNode(null);
            this.iBlur3SourceGlass = blurredBackgroundSourceRenderNode;
            BlurredBackgroundDrawableViewFactory blurredBackgroundDrawableViewFactory = new BlurredBackgroundDrawableViewFactory(blurredBackgroundSourceRenderNode);
            this.iBlur3FactoryLiquidGlass = blurredBackgroundDrawableViewFactory;
            blurredBackgroundDrawableViewFactory.setLiquidGlassEffectAllowed(LiteMode.isEnabled(262144));
            return;
        }
        this.scrollableViewNoiseSuppressor = null;
        this.iBlur3SourceGlassFrosted = null;
        this.iBlur3SourceGlass = null;
        this.iBlur3FactoryLiquidGlass = new BlurredBackgroundDrawableViewFactory(blurredBackgroundSourceColor);
    }

    private void checkGroupCallJoin(boolean z) {
        String str;
        TLRPC.Chat chat = getMessagesController().getChat(Long.valueOf(this.chatId));
        TLRPC.ChatFull chatFull = getMessagesController().getChatFull(this.chatId);
        if (this.groupCall == null || ((str = this.voiceChatHash) == null && !this.openVideoChat)) {
            if (this.voiceChatHash != null && z && chatFull != null && chatFull.call == null && this.fragmentView != null && getParentActivity() != null) {
                BulletinFactory.of(this).createSimpleBulletin(C2665R.raw.linkbroken, LocaleController.getString(C2665R.string.LinkHashExpired)).show();
                this.voiceChatHash = null;
            }
            this.lastCallCheckFromServer = false;
            return;
        }
        VoIPHelper.startCall(chat, null, str, this.createGroupCall, Boolean.valueOf(!r1.call.rtmp_stream), getParentActivity(), this, getAccountInstance());
        this.voiceChatHash = null;
        this.openVideoChat = false;
    }

    public static BaseFragment getTopicsOrChat(BaseFragment baseFragment, Bundle bundle) {
        return getTopicsOrChat(baseFragment.getMessagesController(), baseFragment.getMessagesStorage(), bundle);
    }

    public static BaseFragment getTopicsOrChat(LaunchActivity launchActivity, Bundle bundle) {
        return getTopicsOrChat(MessagesController.getInstance(launchActivity.currentAccount), MessagesStorage.getInstance(launchActivity.currentAccount), bundle);
    }

    private static BaseFragment getTopicsOrChat(MessagesController messagesController, MessagesStorage messagesStorage, Bundle bundle) {
        long j = bundle.getLong("chat_id");
        if (j != 0) {
            TLRPC.Dialog dialog = messagesController.getDialog(-j);
            if (dialog != null && dialog.view_forum_as_messages) {
                return new ChatActivity(bundle);
            }
            TLRPC.ChatFull chatFull = messagesController.getChatFull(j);
            if (chatFull == null) {
                chatFull = messagesStorage.loadChatInfo(j, true, new CountDownLatch(1), false, false);
            }
            if (chatFull != null && chatFull.view_forum_as_messages) {
                return new ChatActivity(bundle);
            }
        }
        return new TopicsFragment(bundle);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0044  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void prepareToSwitchAnimation(ChatActivity chatActivity) {
        if (chatActivity.getParentLayout() == null) {
            return;
        }
        if (chatActivity.getParentLayout().getFragmentStack().size() > 1) {
            BaseFragment baseFragment = chatActivity.getParentLayout().getFragmentStack().get(chatActivity.getParentLayout().getFragmentStack().size() - 2);
            if (!(baseFragment instanceof TopicsFragment) || ((TopicsFragment) baseFragment).chatId != (-chatActivity.getDialogId())) {
            }
        } else {
            Bundle bundle = new Bundle();
            bundle.putLong("chat_id", -chatActivity.getDialogId());
            chatActivity.getParentLayout().addFragmentToStack(new TopicsFragment(bundle), chatActivity.getParentLayout().getFragmentStack().size() - 1);
        }
        chatActivity.setSwitchFromTopics(true);
        chatActivity.finishFragment();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public int getNavigationBarColor() {
        return getThemedColor(Theme.key_windowBackgroundWhite);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void setNavigationBarColor(int i) {
        super.setNavigationBarColor(i);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public View createView(Context context) {
        DialogsActivity dialogsActivity = this.parentDialogsActivity;
        int i = 0;
        this.additionNavigationBarHeight = MainTabsUiHelper.getAdditionalNavigationBarHeight(dialogsActivity != null && dialogsActivity.hasMainTabs);
        DialogsActivity dialogsActivity2 = this.parentDialogsActivity;
        this.additionFloatingButtonOffset = MainTabsUiHelper.getTabsFabOffset(dialogsActivity2 != null && dialogsActivity2.hasMainTabs);
        SizeNotifierFrameLayout sizeNotifierFrameLayout = new SizeNotifierFrameLayout(context) { // from class: org.telegram.ui.TopicsFragment.1
            private Paint actionBarPaint;
            private boolean ignoreLayout;

            {
                setWillNotDraw(false);
                this.actionBarPaint = new Paint();
            }

            public int getActionBarFullHeight() {
                return (int) (((BaseFragment) TopicsFragment.this).actionBar.getHeight() + (((TopicsFragment.this.searchTabsView == null || TopicsFragment.this.searchTabsView.getVisibility() == 8) ? 0.0f : TopicsFragment.this.searchTabsView.getMeasuredHeight()) * TopicsFragment.this.searchAnimationProgress));
            }

            @Override // android.view.ViewGroup
            public boolean drawChild(Canvas canvas, View view, long j) {
                if (view == ((BaseFragment) TopicsFragment.this).actionBar && !TopicsFragment.this.isInPreviewMode()) {
                    int y = (int) (((BaseFragment) TopicsFragment.this).actionBar.getY() + getActionBarFullHeight());
                    TopicsFragment.this.getParentLayout().drawHeaderShadow(canvas, (int) ((1.0f - TopicsFragment.this.searchAnimationProgress) * 255.0f), y);
                    if (TopicsFragment.this.searchAnimationProgress > 0.0f) {
                        if (TopicsFragment.this.searchAnimationProgress < 1.0f) {
                            int alpha = Theme.forcedDividerPaint.getAlpha();
                            Theme.forcedDividerPaint.setAlpha((int) (alpha * TopicsFragment.this.searchAnimationProgress));
                            float f = y;
                            canvas.drawLine(0.0f, f, getMeasuredWidth(), f, Theme.forcedDividerPaint);
                            Theme.forcedDividerPaint.setAlpha(alpha);
                        } else {
                            float f2 = y;
                            canvas.drawLine(0.0f, f2, getMeasuredWidth(), f2, Theme.forcedDividerPaint);
                        }
                    }
                }
                return super.drawChild(canvas, view, j);
            }

            @Override // android.widget.FrameLayout, android.view.View
            public void onMeasure(int i2, int i3) {
                int i4;
                int size = View.MeasureSpec.getSize(i2);
                int size2 = View.MeasureSpec.getSize(i3);
                if (TopicsFragment.this.bottomOverlayContainer != null) {
                    this.ignoreLayout = true;
                    TopicsFragment.this.bottomOverlayContainer.getLayoutParams().height = AndroidUtilities.dp(51.0f) + TopicsFragment.this.navigationBarHeight;
                    TopicsFragment.this.bottomOverlayContainer.setPadding(0, 0, 0, TopicsFragment.this.navigationBarHeight);
                    this.ignoreLayout = false;
                }
                int measuredHeight = 0;
                for (int i5 = 0; i5 < getChildCount(); i5++) {
                    View childAt = getChildAt(i5);
                    if (childAt instanceof ActionBar) {
                        childAt.measure(i2, View.MeasureSpec.makeMeasureSpec(0, 0));
                        measuredHeight = childAt.getMeasuredHeight();
                    }
                }
                int i6 = 0;
                while (i6 < getChildCount()) {
                    View childAt2 = getChildAt(i6);
                    if (childAt2 instanceof ActionBar) {
                        i4 = measuredHeight;
                    } else if (childAt2.getFitsSystemWindows()) {
                        measureChildWithMargins(childAt2, i2, 0, i3, 0);
                        i4 = measuredHeight;
                    } else {
                        i4 = measuredHeight;
                        measureChildWithMargins(childAt2, i2, 0, i3, i4);
                    }
                    i6++;
                    measuredHeight = i4;
                }
                setMeasuredDimension(size, size2);
            }

            @Override // android.view.View, android.view.ViewParent
            public void requestLayout() {
                if (this.ignoreLayout) {
                    return;
                }
                super.requestLayout();
            }

            /* JADX WARN: Removed duplicated region for block: B:19:0x0068  */
            /* JADX WARN: Removed duplicated region for block: B:28:0x0099  */
            @Override // org.telegram.ui.Components.SizeNotifierFrameLayout, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
                int i6;
                int i7;
                int i8;
                int i9;
                int i10;
                int top;
                int childCount = getChildCount();
                int paddingLeft = getPaddingLeft();
                int paddingRight = (i4 - i2) - getPaddingRight();
                int paddingTop = getPaddingTop();
                int paddingBottom = (i5 - i3) - getPaddingBottom();
                for (int i11 = 0; i11 < childCount; i11++) {
                    View childAt = getChildAt(i11);
                    if (childAt.getVisibility() != 8) {
                        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                        int measuredWidth = childAt.getMeasuredWidth();
                        int measuredHeight = childAt.getMeasuredHeight();
                        int i12 = layoutParams.gravity;
                        if (i12 == -1) {
                            i12 = 0;
                        }
                        int absoluteGravity = Gravity.getAbsoluteGravity(i12, getLayoutDirection());
                        int i13 = i12 & 112;
                        int i14 = absoluteGravity & 7;
                        if (i14 == 1) {
                            i6 = (((paddingRight - paddingLeft) - measuredWidth) / 2) + paddingLeft + layoutParams.leftMargin;
                            i7 = layoutParams.rightMargin;
                        } else if (i14 == 5) {
                            i6 = paddingRight - measuredWidth;
                            i7 = layoutParams.rightMargin;
                        } else {
                            i8 = layoutParams.leftMargin + paddingLeft;
                            if (i13 != 16) {
                                i9 = (((paddingBottom - paddingTop) - measuredHeight) / 2) + paddingTop + layoutParams.topMargin;
                                i10 = layoutParams.bottomMargin;
                            } else if (i13 == 80) {
                                i9 = paddingBottom - measuredHeight;
                                i10 = layoutParams.bottomMargin;
                            } else {
                                top = layoutParams.topMargin + paddingTop;
                                if (!(childAt instanceof ActionBar) && !TopicsFragment.this.isInPreviewMode()) {
                                    top += ((BaseFragment) TopicsFragment.this).actionBar.getTop() + ((BaseFragment) TopicsFragment.this).actionBar.getMeasuredHeight();
                                }
                                childAt.layout(i8, top, measuredWidth + i8, measuredHeight + top);
                            }
                            top = i9 - i10;
                            childAt.layout(i8, top, measuredWidth + i8, measuredHeight + top);
                        }
                        i8 = i6 - i7;
                        if (i13 != 16) {
                        }
                        top = i9 - i10;
                        childAt.layout(i8, top, measuredWidth + i8, measuredHeight + top);
                    }
                }
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // org.telegram.ui.Components.SizeNotifierFrameLayout
            public void drawList(Canvas canvas, boolean z, ArrayList<SizeNotifierFrameLayout.IViewWithInvalidateCallback> arrayList) {
                for (int i2 = 0; i2 < TopicsFragment.this.recyclerListView.getChildCount(); i2++) {
                    View childAt = TopicsFragment.this.recyclerListView.getChildAt(i2);
                    if (childAt.getY() < AndroidUtilities.dp(100.0f) && childAt.getVisibility() == 0) {
                        int iSave = canvas.save();
                        canvas.translate(TopicsFragment.this.recyclerListView.getX() + childAt.getX(), getY() + TopicsFragment.this.recyclerListView.getY() + childAt.getY());
                        if (arrayList != null && (childAt instanceof SizeNotifierFrameLayout.IViewWithInvalidateCallback)) {
                            arrayList.add((SizeNotifierFrameLayout.IViewWithInvalidateCallback) childAt);
                        }
                        childAt.draw(canvas);
                        canvas.restoreToCount(iSave);
                    }
                }
            }

            @Override // org.telegram.ui.Components.SizeNotifierFrameLayout, android.view.ViewGroup, android.view.View
            public void dispatchDraw(Canvas canvas) {
                Canvas canvas2;
                if (Build.VERSION.SDK_INT >= 31 && TopicsFragment.this.scrollableViewNoiseSuppressor != null) {
                    TopicsFragment.this.blur3_InvalidateBlur();
                    DialogsActivity dialogsActivity3 = TopicsFragment.this.parentDialogsActivity;
                    int measuredWidth = dialogsActivity3 != null ? dialogsActivity3.fragmentView.getMeasuredWidth() : getMeasuredWidth();
                    DialogsActivity dialogsActivity4 = TopicsFragment.this.parentDialogsActivity;
                    int measuredHeight = dialogsActivity4 != null ? dialogsActivity4.fragmentView.getMeasuredHeight() : getMeasuredHeight();
                    if (TopicsFragment.this.iBlur3SourceGlassFrosted != null && !TopicsFragment.this.iBlur3SourceGlassFrosted.inRecording() && (TopicsFragment.this.iBlur3SourceGlassFrosted.needUpdateDisplayList(measuredWidth, measuredHeight) || TopicsFragment.this.iBlur3Invalidated)) {
                        TopicsFragment.this.scrollableViewNoiseSuppressor.draw(TopicsFragment.this.iBlur3SourceGlassFrosted.beginRecording(measuredWidth, measuredHeight), -3);
                        TopicsFragment.this.iBlur3SourceGlassFrosted.endRecording();
                    }
                    if (TopicsFragment.this.iBlur3SourceGlass != null && !TopicsFragment.this.iBlur3SourceGlass.inRecording() && (TopicsFragment.this.iBlur3SourceGlass.needUpdateDisplayList(measuredWidth, measuredHeight) || TopicsFragment.this.iBlur3Invalidated)) {
                        TopicsFragment.this.scrollableViewNoiseSuppressor.draw(TopicsFragment.this.iBlur3SourceGlass.beginRecording(measuredWidth, measuredHeight), -2);
                        TopicsFragment.this.iBlur3SourceGlass.endRecording();
                    }
                    TopicsFragment.this.iBlur3Invalidated = false;
                }
                super.dispatchDraw(canvas);
                if (TopicsFragment.this.isInPreviewMode()) {
                    this.actionBarPaint.setColor(TopicsFragment.this.getThemedColor(Theme.key_windowBackgroundWhite));
                    this.actionBarPaint.setAlpha((int) (TopicsFragment.this.searchAnimationProgress * 255.0f));
                    canvas2 = canvas;
                    canvas2.drawRect(0.0f, 0.0f, getWidth(), AndroidUtilities.statusBarHeight, this.actionBarPaint);
                    canvas2.drawLine(0.0f, 0.0f, 0.0f, getHeight(), Theme.forcedDividerPaint);
                } else {
                    canvas2 = canvas;
                }
                TopicsFragment topicsFragment = TopicsFragment.this;
                if (topicsFragment.parentDialogsActivity == null) {
                    AndroidUtilities.drawNavigationBarProtection(canvas2, this, topicsFragment.getThemedColor(Theme.key_windowBackgroundWhite), TopicsFragment.this.navigationBarHeight);
                }
            }

            @Override // org.telegram.ui.Components.SizeNotifierFrameLayout
            public void drawBlurRect(Canvas canvas, float f, Rect rect, Paint paint, boolean z) {
                if (Build.VERSION.SDK_INT < 29 || !SharedConfig.chatBlurEnabled() || TopicsFragment.this.iBlur3SourceGlassFrosted == null) {
                    canvas.drawRect(rect, paint);
                    return;
                }
                canvas.save();
                canvas.translate(0.0f, -f);
                TopicsFragment.this.iBlur3SourceGlassFrosted.draw(canvas, rect.left, rect.top + f, rect.right, rect.bottom + f);
                canvas.restore();
                int alpha = paint.getAlpha();
                paint.setAlpha(178);
                canvas.drawRect(rect, paint);
                paint.setAlpha(alpha);
            }
        };
        this.contentView = sizeNotifierFrameLayout;
        this.fragmentView = sizeNotifierFrameLayout;
        sizeNotifierFrameLayout.setBackgroundColor(getThemedColor(Theme.key_windowBackgroundWhite));
        this.actionBar.setAddToContainer(false);
        this.actionBar.setCastShadows(false);
        this.actionBar.setClipContent(true);
        this.actionBar.setOccupyStatusBar((AndroidUtilities.isTablet() || this.inPreviewMode) ? false : true);
        if (this.inPreviewMode) {
            this.actionBar.setBackgroundColor(0);
            this.actionBar.setInterceptTouches(false);
        }
        this.actionBar.setBackButtonDrawable(new BackDrawable(false));
        this.actionBar.getBackButton().setTranslationX(AndroidUtilities.dp(2.0f));
        this.actionBar.setActionBarMenuOnItemClick(new C62182(context));
        this.actionBar.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.TopicsFragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createView$0(view);
            }
        });
        ActionBarMenu actionBarMenuCreateMenu = this.actionBar.createMenu();
        actionBarMenuCreateMenu.setTranslationX(-AndroidUtilities.dp(5.0f));
        if (this.parentDialogsActivity != null) {
            ActionBarMenuItem actionBarMenuItemAddItem = actionBarMenuCreateMenu.addItem(0, C2665R.drawable.outline_header_search);
            this.searchItem = actionBarMenuItemAddItem;
            actionBarMenuItemAddItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.TopicsFragment$$ExternalSyntheticLambda5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$createView$1(view);
                }
            });
        } else {
            ActionBarMenuItem actionBarMenuItemAddItem2 = actionBarMenuCreateMenu.addItem(0, C2665R.drawable.outline_header_search);
            this.searchItem = actionBarMenuItemAddItem2;
            actionBarMenuItemAddItem2.setIsSearchField(true).setActionBarMenuItemSearchListener(new ActionBarMenuItem.ActionBarMenuItemSearchListener() { // from class: org.telegram.ui.TopicsFragment.3
                @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
                public void onSearchFilterCleared(FiltersView.MediaFilterData mediaFilterData) {
                }

                @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
                public void onSearchExpand() {
                    TopicsFragment.this.animateToSearchView(true);
                    TopicsFragment.this.searchContainer.setSearchString(_UrlKt.FRAGMENT_ENCODE_SET);
                    TopicsFragment.this.searchContainer.setAlpha(0.0f);
                    TopicsFragment.this.searchContainer.emptyView.showProgress(true, false);
                }

                @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
                public void onSearchCollapse() {
                    TopicsFragment.this.animateToSearchView(false);
                }

                @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
                public void onTextChanged(EditText editText) {
                    TopicsFragment.this.searchContainer.setSearchString(editText.getText().toString());
                }
            });
            this.searchItem.setSearchPaddingStart(56);
            this.searchItem.setSearchFieldHint(LocaleController.getString(C2665R.string.Search));
            EditTextBoldCursor searchField = this.searchItem.getSearchField();
            searchField.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteBlackText));
            searchField.setHintTextColor(getThemedColor(Theme.key_player_time));
            searchField.setCursorColor(getThemedColor(Theme.key_chat_messagePanelCursor));
        }
        ActionBarMenuItem actionBarMenuItemAddItem3 = actionBarMenuCreateMenu.addItem(0, C2665R.drawable.ic_ab_other, this.themeDelegate);
        this.other = actionBarMenuItemAddItem3;
        actionBarMenuItemAddItem3.setContentDescription(LocaleController.getString(C2665R.string.AccDescrMoreOptions));
        this.other.addSubItem(1, C2665R.drawable.msg_discussion, LocaleController.getString(C2665R.string.TopicViewAsMessages));
        this.addMemberSubMenu = this.other.addSubItem(2, C2665R.drawable.msg_addcontact, LocaleController.getString(C2665R.string.AddMember));
        this.boostGroupSubmenu = this.other.addSubItem(14, C2665R.drawable.boosts, LocaleController.getString(C2665R.string.BoostingBoostGroupMenu));
        this.createTopicSubmenu = this.other.addSubItem(3, C2665R.drawable.msg_topic_create, LocaleController.getString(C2665R.string.CreateTopic));
        this.reportSubmenu = this.other.addSubItem(15, C2665R.drawable.msg_report, LocaleController.getString(C2665R.string.ReportChat));
        this.deleteChatSubmenu = this.other.addSubItem(11, C2665R.drawable.msg_leave, LocaleController.getString(C2665R.string.LeaveMegaMenu), this.themeDelegate);
        ChatAvatarContainer chatAvatarContainer = new ChatAvatarContainer(context, this, false, this.resourceProvider);
        this.avatarContainer = chatAvatarContainer;
        chatAvatarContainer.getAvatarImageView().setRoundRadius(ExteraConfig.getAvatarCorners(42.0f, false, true));
        this.avatarContainer.setOccupyStatusBar((AndroidUtilities.isTablet() || this.inPreviewMode) ? false : true);
        this.avatarContainer.allowDrawStories = getDialogId() < 0;
        this.avatarContainer.setClipChildren(false);
        this.actionBar.addView(this.avatarContainer, 0, LayoutHelper.createFrame(-2, -1.0f, 51, 56.0f, 0.0f, 86.0f, 0.0f));
        if (!this.openedForSelect) {
            this.avatarContainer.getAvatarImageView().setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.TopicsFragment.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TopicsFragment.this.openProfile(true);
                }
            });
        }
        this.recyclerListView = new TopicsRecyclerView(context) { // from class: org.telegram.ui.TopicsFragment.5
            @Override // org.telegram.ui.TopicsFragment.TopicsRecyclerView, org.telegram.ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
            public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
                super.onLayout(z, i2, i3, i4, i5);
                TopicsFragment.this.checkForLoadMore();
            }

            @Override // org.telegram.ui.Components.RecyclerListView
            public boolean emptyViewIsVisible() {
                if (getAdapter() != null && !isFastScrollAnimationRunning()) {
                    ArrayList<Item> arrayList = TopicsFragment.this.forumTopics;
                    if (arrayList != null && arrayList.size() == 1 && TopicsFragment.this.forumTopics.get(0) != null && TopicsFragment.this.forumTopics.get(0).topic != null && TopicsFragment.this.forumTopics.get(0).topic.id == 1) {
                        return getAdapter().getItemCount() <= 2;
                    }
                    if (getAdapter().getItemCount() <= 1) {
                        return true;
                    }
                }
                return false;
            }
        };
        this.iBlur3FactoryLiquidGlass.setSourceRootView(new ViewPositionWatcher(this.contentView), this.contentView);
        TopicsRecyclerView topicsRecyclerView = this.recyclerListView;
        DialogsActivity dialogsActivity3 = this.parentDialogsActivity;
        ViewGroup viewGroup = dialogsActivity3 != null ? (ViewGroup) dialogsActivity3.getFragmentView() : this.contentView;
        final TopicsRecyclerView topicsRecyclerView2 = this.recyclerListView;
        Objects.requireNonNull(topicsRecyclerView2);
        this.iBlur3Capture = new ViewGroupPartRenderer(topicsRecyclerView, viewGroup, new ViewGroupPartRenderer.DrawChildMethod() { // from class: org.telegram.ui.TopicsFragment$$ExternalSyntheticLambda6
            @Override // org.telegram.ui.Components.blur3.ViewGroupPartRenderer.DrawChildMethod
            public final boolean drawChild(Canvas canvas, View view, long j) {
                return topicsRecyclerView2.drawChild(canvas, view, j);
            }
        });
        this.recyclerListView.addEdgeEffectListener(new Runnable() { // from class: org.telegram.ui.TopicsFragment$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createView$2();
            }
        });
        SpannableString spannableString = new SpannableString("#");
        ForumUtilities.GeneralTopicDrawable generalTopicDrawableCreateGeneralTopicDrawable = ForumUtilities.createGeneralTopicDrawable(getContext(), 0.85f, -1, false);
        generalTopicDrawableCreateGeneralTopicDrawable.setBounds(0, AndroidUtilities.dp(2.0f), AndroidUtilities.dp(16.0f), AndroidUtilities.dp(18.0f));
        spannableString.setSpan(new ImageSpan(generalTopicDrawableCreateGeneralTopicDrawable, 2), 0, 1, 33);
        PullForegroundDrawable pullForegroundDrawable = new PullForegroundDrawable(AndroidUtilities.replaceCharSequence("#", LocaleController.getString(C2665R.string.AccSwipeForGeneral), spannableString), AndroidUtilities.replaceCharSequence("#", LocaleController.getString(C2665R.string.AccReleaseForGeneral), spannableString)) { // from class: org.telegram.ui.TopicsFragment.6
            @Override // org.telegram.ui.Components.PullForegroundDrawable
            public float getViewOffset() {
                return TopicsFragment.this.recyclerListView.getViewOffset();
            }
        };
        this.pullForegroundDrawable = pullForegroundDrawable;
        pullForegroundDrawable.doNotShow();
        int i2 = this.hiddenShown ? 2 : 0;
        this.pullViewState = i2;
        this.pullForegroundDrawable.setWillDraw(i2 != 0);
        C62237 c62237 = new C62237();
        this.recyclerListView.setHideIfEmpty(false);
        c62237.setSupportsChangeAnimations(false);
        c62237.setDelayAnimations(false);
        TopicsRecyclerView topicsRecyclerView3 = this.recyclerListView;
        this.itemAnimator = c62237;
        topicsRecyclerView3.setItemAnimator(c62237);
        this.recyclerListView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.TopicsFragment.8
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i3, int i4) {
                super.onScrolled(recyclerView, i3, i4);
                TopicsFragment.this.checkForLoadMore();
            }
        });
        this.recyclerListView.setAnimateEmptyView(true, 0);
        RecyclerItemsEnterAnimator recyclerItemsEnterAnimator = new RecyclerItemsEnterAnimator(this.recyclerListView, true);
        this.itemsEnterAnimator = recyclerItemsEnterAnimator;
        this.recyclerListView.setItemsEnterAnimator(recyclerItemsEnterAnimator);
        this.recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.TopicsFragment$$ExternalSyntheticLambda8
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i3) {
                this.f$0.lambda$createView$3(view, i3);
            }
        });
        this.recyclerListView.setOnItemLongClickListener(new RecyclerListView.OnItemLongClickListenerExtended() { // from class: org.telegram.ui.TopicsFragment$$ExternalSyntheticLambda9
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemLongClickListenerExtended
            public final boolean onItemClick(View view, int i3, float f, float f2) {
                return this.f$0.lambda$createView$4(view, i3, f, f2);
            }
        });
        this.recyclerListView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.TopicsFragment.9
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i3, int i4) {
                super.onScrolled(recyclerView, i3, i4);
                if (Build.VERSION.SDK_INT < 31 || TopicsFragment.this.scrollableViewNoiseSuppressor == null) {
                    return;
                }
                TopicsFragment.this.scrollableViewNoiseSuppressor.onScrolled(i3, i4);
                TopicsFragment.this.blur3_InvalidateBlur();
            }
        });
        TopicsRecyclerView topicsRecyclerView4 = this.recyclerListView;
        AnonymousClass10 anonymousClass10 = new AnonymousClass10(context);
        this.layoutManager = anonymousClass10;
        topicsRecyclerView4.setLayoutManager(anonymousClass10);
        this.scrollHelper = new RecyclerAnimationScrollHelper(this.recyclerListView, this.layoutManager);
        this.recyclerListView.setAdapter(this.adapter);
        this.recyclerListView.setClipToPadding(false);
        this.recyclerListView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.TopicsFragment.11
            int prevPosition;
            int prevTop;

            /* JADX WARN: Removed duplicated region for block: B:23:0x0039  */
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void onScrolled(RecyclerView recyclerView, int i3, int i4) {
                boolean z;
                boolean z2;
                int iFindFirstVisibleItemPosition = TopicsFragment.this.layoutManager.findFirstVisibleItemPosition();
                if (iFindFirstVisibleItemPosition != -1) {
                    RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition = recyclerView.findViewHolderForAdapterPosition(iFindFirstVisibleItemPosition);
                    int top = viewHolderFindViewHolderForAdapterPosition != null ? viewHolderFindViewHolderForAdapterPosition.itemView.getTop() : 0;
                    int i5 = this.prevPosition;
                    if (i5 == iFindFirstVisibleItemPosition) {
                        int i6 = this.prevTop;
                        int i7 = i6 - top;
                        z = top < i6;
                        if (Math.abs(i7) <= 1) {
                            z2 = false;
                        }
                        if (z2) {
                            TopicsFragment.this.mainTabsHiddenByScroll = BottomNavigationBar.floating() && z && recyclerView.canScrollVertically(1);
                            TopicsFragment.this.checkUi_mainTabsVisible();
                        }
                        TopicsFragment.this.hideFloatingButton((!z && recyclerView.canScrollVertically(1)) || !TopicsFragment.this.canShowCreateTopic, true);
                        this.prevPosition = iFindFirstVisibleItemPosition;
                        this.prevTop = top;
                    }
                    z = iFindFirstVisibleItemPosition > i5;
                    z2 = true;
                    if (z2) {
                    }
                    TopicsFragment.this.hideFloatingButton((!z && recyclerView.canScrollVertically(1)) || !TopicsFragment.this.canShowCreateTopic, true);
                    this.prevPosition = iFindFirstVisibleItemPosition;
                    this.prevTop = top;
                }
            }
        });
        TouchHelperCallback touchHelperCallback = new TouchHelperCallback();
        this.itemTouchHelperCallback = touchHelperCallback;
        ItemTouchHelper itemTouchHelper = new ItemTouchHelper(touchHelperCallback) { // from class: org.telegram.ui.TopicsFragment.12
            @Override // androidx.recyclerview.widget.ItemTouchHelper
            public boolean shouldSwipeBack() {
                return TopicsFragment.this.hiddenCount > 0;
            }
        };
        this.itemTouchHelper = itemTouchHelper;
        itemTouchHelper.attachToRecyclerView(this.recyclerListView);
        this.contentView.addView(this.recyclerListView, LayoutHelper.createFrame(-1, -1.0f));
        ((ViewGroup.MarginLayoutParams) this.recyclerListView.getLayoutParams()).topMargin = -AndroidUtilities.dp(100.0f);
        FragmentFloatingButton fragmentFloatingButton = new FragmentFloatingButton(getContext(), this.resourceProvider);
        this.floatingButton = fragmentFloatingButton;
        this.contentView.addView(fragmentFloatingButton, FragmentFloatingButton.createDefaultLayoutParams());
        this.floatingButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.TopicsFragment$$ExternalSyntheticLambda10
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createView$5(view);
            }
        });
        this.floatingButton.imageView.setImageResource(C2665R.drawable.ic_chatlist_add_2);
        this.floatingButton.imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        int iDp = AndroidUtilities.dp((FabUiHelper.getFabSizeDp() - 24) / 2.0f);
        this.floatingButton.imageView.setPadding(iDp, iDp, iDp, iDp);
        this.floatingButton.setContentDescription(LocaleController.getString(C2665R.string.CreateTopic));
        FlickerLoadingView flickerLoadingView = new FlickerLoadingView(context);
        flickerLoadingView.setViewType(24);
        flickerLoadingView.setVisibility(8);
        flickerLoadingView.showDate(true);
        EmptyViewContainer emptyViewContainer = new EmptyViewContainer(context);
        this.emptyViewContainer = emptyViewContainer;
        emptyViewContainer.textView.setAlpha(0.0f);
        StickerEmptyView stickerEmptyView = new StickerEmptyView(context, flickerLoadingView, i) { // from class: org.telegram.ui.TopicsFragment.13
            boolean showProgressInternal;

            @Override // org.telegram.ui.Components.StickerEmptyView
            public void showProgress(boolean z, boolean z2) {
                super.showProgress(z, z2);
                this.showProgressInternal = z;
                TopicsFragment topicsFragment = TopicsFragment.this;
                if (z2) {
                    topicsFragment.emptyViewContainer.textView.animate().alpha(z ? 0.0f : 1.0f).start();
                } else {
                    topicsFragment.emptyViewContainer.textView.animate().cancel();
                    TopicsFragment.this.emptyViewContainer.textView.setAlpha(z ? 0.0f : 1.0f);
                }
            }
        };
        this.topicsEmptyView = stickerEmptyView;
        try {
            stickerEmptyView.stickerView.getImageReceiver().setAutoRepeat(2);
        } catch (Exception unused) {
        }
        this.topicsEmptyView.showProgress(this.loadingTopics, this.fragmentBeginToShow);
        this.topicsEmptyView.title.setText(LocaleController.getString(C2665R.string.NoTopics));
        updateTopicsEmptyViewText();
        this.emptyViewContainer.addView(flickerLoadingView);
        this.emptyViewContainer.addView(this.topicsEmptyView);
        this.contentView.addView(this.emptyViewContainer);
        this.recyclerListView.setEmptyView(this.emptyViewContainer);
        this.bottomOverlayContainer = new FrameLayout(context) { // from class: org.telegram.ui.TopicsFragment.14
            @Override // android.view.ViewGroup, android.view.View
            public void dispatchDraw(Canvas canvas) {
                super.dispatchDraw(canvas);
                float intrinsicHeight = Theme.chat_composeShadowDrawable.getIntrinsicHeight();
                canvas.drawLine(0.0f, intrinsicHeight, getWidth(), intrinsicHeight, Theme.forcedDividerPaint);
            }
        };
        UnreadCounterTextView unreadCounterTextView = new UnreadCounterTextView(context);
        this.bottomOverlayChatText = unreadCounterTextView;
        this.bottomOverlayContainer.addView(unreadCounterTextView);
        this.contentView.addView(this.bottomOverlayContainer, LayoutHelper.createFrame(-1, 51, 80));
        this.bottomOverlayChatText.setOnClickListener(new AnonymousClass15());
        RadialProgressView radialProgressView = new RadialProgressView(context, this.themeDelegate);
        this.bottomOverlayProgress = radialProgressView;
        radialProgressView.setSize(AndroidUtilities.dp(22.0f));
        this.bottomOverlayProgress.setVisibility(4);
        this.bottomOverlayContainer.addView(this.bottomOverlayProgress, LayoutHelper.createFrame(30, 30, 17));
        ImageView imageView = new ImageView(context);
        this.closeReportSpam = imageView;
        imageView.setImageResource(C2665R.drawable.miniplayer_close);
        this.closeReportSpam.setContentDescription(LocaleController.getString(C2665R.string.Close));
        ImageView imageView2 = this.closeReportSpam;
        int i3 = Theme.key_chat_topPanelClose;
        imageView2.setBackground(Theme.AdaptiveRipple.circle(getThemedColor(i3)));
        this.closeReportSpam.setColorFilter(new PorterDuffColorFilter(getThemedColor(i3), PorterDuff.Mode.MULTIPLY));
        this.closeReportSpam.setScaleType(ImageView.ScaleType.CENTER);
        this.bottomOverlayContainer.addView(this.closeReportSpam, LayoutHelper.createFrame(36, 36.0f, 53, 0.0f, 6.0f, 2.0f, 0.0f));
        this.closeReportSpam.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.TopicsFragment$$ExternalSyntheticLambda11
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createView$6(view);
            }
        });
        this.closeReportSpam.setVisibility(8);
        updateChatInfo();
        FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.TopicsFragment.16
            @Override // android.view.ViewGroup
            public boolean drawChild(Canvas canvas, View view, long j) {
                if (view == TopicsFragment.this.searchTabsView && TopicsFragment.this.isInPreviewMode()) {
                    TopicsFragment.this.getParentLayout().drawHeaderShadow(canvas, (int) (TopicsFragment.this.searchAnimationProgress * 255.0f), (int) (TopicsFragment.this.searchTabsView.getY() + TopicsFragment.this.searchTabsView.getMeasuredHeight()));
                }
                return super.drawChild(canvas, view, j);
            }
        };
        this.fullscreenView = frameLayout;
        if (this.parentDialogsActivity == null) {
            this.contentView.addView(frameLayout, LayoutHelper.createFrame(-1, -1, 119));
        }
        MessagesSearchContainer messagesSearchContainer = new MessagesSearchContainer(context);
        this.searchContainer = messagesSearchContainer;
        messagesSearchContainer.setVisibility(8);
        this.fullscreenView.addView(this.searchContainer, LayoutHelper.createFrame(-1, -1.0f, 119, 0.0f, 44.0f, 0.0f, 0.0f));
        MessagesSearchContainer messagesSearchContainer2 = this.searchContainer;
        int i4 = Theme.key_windowBackgroundWhite;
        messagesSearchContainer2.setBackgroundColor(getThemedColor(i4));
        this.actionBar.setDrawBlurBackground(this.contentView);
        getMessagesStorage().loadChatInfo(this.chatId, true, null, true, false, 0);
        DialogsActivityTopPanelLayout dialogsActivityTopPanelLayout = new DialogsActivityTopPanelLayout(context);
        this.topPanelLayout = dialogsActivityTopPanelLayout;
        dialogsActivityTopPanelLayout.setPadding(AndroidUtilities.dp(11.0f), AndroidUtilities.dp(21.0f), AndroidUtilities.dp(11.0f), AndroidUtilities.dp(21.0f));
        BlurredBackgroundDrawable blurredBackgroundDrawableCreate = this.iBlur3FactoryLiquidGlass.create(this.topPanelLayout, BlurredBackgroundProviderImpl.topPanel(this.resourceProvider));
        blurredBackgroundDrawableCreate.setRadius(AndroidUtilities.dp(24.0f));
        blurredBackgroundDrawableCreate.setPadding(AndroidUtilities.dp(7.0f));
        this.topPanelLayout.setBlurredBackground(blurredBackgroundDrawableCreate);
        this.topPanelLayout.setOnAnimatedHeightChangedListener(new Runnable() { // from class: org.telegram.ui.TopicsFragment$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createView$7();
            }
        });
        this.contentView.addView(this.topPanelLayout, LayoutHelper.createFrame(-1, -2.0f, 48, 0.0f, -14.0f, 0.0f, 0.0f));
        TLRPC.Chat currentChat = getCurrentChat();
        if (currentChat != null) {
            ChatActivityMemberRequestsDelegate chatActivityMemberRequestsDelegate = new ChatActivityMemberRequestsDelegate(this, currentChat);
            this.pendingRequestsDelegate = chatActivityMemberRequestsDelegate;
            this.topPanelLayout.addView(chatActivityMemberRequestsDelegate.getView(), LayoutHelper.createLinear(-1, 40));
            this.topPanelLayout.setPriority(this.pendingRequestsDelegate.getView(), 3);
            this.topPanelLayout.setDebugName(this.pendingRequestsDelegate.getView(), "pendingRequestsDelegate");
            this.pendingRequestsDelegate.setDelegate(new ChatActivityMemberRequestsDelegate.ChangeVisibilityDelegate() { // from class: org.telegram.ui.TopicsFragment$$ExternalSyntheticLambda13
                @Override // org.telegram.ui.Delegates.ChatActivityMemberRequestsDelegate.ChangeVisibilityDelegate
                public final void setVisible(boolean z, boolean z2) {
                    this.f$0.lambda$createView$8(z, z2);
                }
            });
            this.pendingRequestsDelegate.setChatInfo(this.chatFull, false);
        }
        if (!this.inPreviewMode) {
            FrameLayout frameLayout2 = new FrameLayout(context);
            this.fragmentContextViewWrapper = frameLayout2;
            this.topPanelLayout.addView(frameLayout2);
            this.topPanelLayout.setPriority(this.fragmentContextViewWrapper, 4);
            this.topPanelLayout.setDebugName(this.fragmentContextViewWrapper, "fragment context");
            this.topPanelLayout.setViewVisible(this.fragmentContextViewWrapper, true, false);
            FragmentContextView fragmentContextView = new FragmentContextView(context, this, false, this.themeDelegate) { // from class: org.telegram.ui.TopicsFragment.17
                @Override // org.telegram.ui.Components.FragmentContextView, android.view.View
                public void setVisibility(int i5) {
                    TopicsFragment.this.topPanelLayout.setViewVisible(TopicsFragment.this.fragmentContextViewWrapper, i5 == 0, true);
                }
            };
            this.fragmentContextView = fragmentContextView;
            this.fragmentContextViewWrapper.addView(fragmentContextView);
            this.topPanelLayout.setCallFragmentContextView(this.fragmentContextView);
        }
        FrameLayout.LayoutParams layoutParamsCreateFrame = LayoutHelper.createFrame(-1, -2.0f);
        if (this.inPreviewMode) {
            layoutParamsCreateFrame.topMargin = AndroidUtilities.statusBarHeight;
        }
        if (!isInPreviewMode()) {
            this.contentView.addView(this.actionBar, layoutParamsCreateFrame);
        }
        checkForLoadMore();
        View view = new View(context) { // from class: org.telegram.ui.TopicsFragment.18
            @Override // android.view.View
            public void setAlpha(float f) {
                super.setAlpha(f);
                View view2 = TopicsFragment.this.fragmentView;
                if (view2 != null) {
                    view2.invalidate();
                }
            }
        };
        this.blurredView = view;
        view.setForeground(new ColorDrawable(ColorUtils.setAlphaComponent(getThemedColor(i4), 100)));
        this.blurredView.setFocusable(false);
        this.blurredView.setImportantForAccessibility(2);
        this.blurredView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.TopicsFragment$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$createView$9(view2);
            }
        });
        this.blurredView.setFitsSystemWindows(true);
        this.bottomPannelVisible = true;
        if (this.inPreviewMode && AndroidUtilities.isTablet()) {
            Iterator<BaseFragment> it = getParentLayout().getFragmentStack().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                BaseFragment next = it.next();
                if (next instanceof DialogsActivity) {
                    DialogsActivity dialogsActivity4 = (DialogsActivity) next;
                    if (dialogsActivity4.isMainDialogList()) {
                        MessagesStorage.TopicKey openedDialogId = dialogsActivity4.getOpenedDialogId();
                        if (openedDialogId.dialogId == (-this.chatId)) {
                            this.selectedTopicForTablet = openedDialogId.topicId;
                            break;
                        }
                    } else {
                        continue;
                    }
                }
            }
            updateTopicsList(false, false);
        }
        updateChatInfo();
        updateColors();
        if (ChatObject.isBoostSupported(getCurrentChat())) {
            getMessagesController().getBoostsController().getBoostsStats(-this.chatId, new Utilities.Callback() { // from class: org.telegram.ui.TopicsFragment$$ExternalSyntheticLambda3
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$createView$10((TL_stories.TL_premium_boostsStatus) obj);
                }
            });
        }
        ViewCompat.setOnApplyWindowInsetsListener(this.fragmentView, new OnApplyWindowInsetsListener() { // from class: org.telegram.ui.TopicsFragment$$ExternalSyntheticLambda4
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view2, WindowInsetsCompat windowInsetsCompat) {
                return this.f$0.onApplyWindowInsets(view2, windowInsetsCompat);
            }
        });
        return this.fragmentView;
    }

    /* JADX INFO: renamed from: org.telegram.ui.TopicsFragment$2 */
    /* JADX INFO: loaded from: classes6.dex */
    public class C62182 extends ActionBar.ActionBarMenuOnItemClick {
        final /* synthetic */ Context val$context;

        public static /* synthetic */ void $r8$lambda$1OkCq9MtFhXJWecrxhBTGxZpKV8() {
        }

        public C62182(Context context) {
            this.val$context = context;
        }

        @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
        public void onItemClick(int i) {
            TLRPC.ChatParticipants chatParticipants;
            TopicDialogCell topicDialogCell;
            TLRPC.TL_forumTopic tL_forumTopic;
            if (i == -1) {
                int size = TopicsFragment.this.selectedTopics.size();
                TopicsFragment topicsFragment = TopicsFragment.this;
                if (size > 0) {
                    topicsFragment.clearSelectedTopics();
                    return;
                } else {
                    topicsFragment.finishFragment();
                    return;
                }
            }
            TLRPC.TL_forumTopic tL_forumTopic2 = null;
            int i2 = 0;
            switch (i) {
                case 1:
                    TopicsFragment.this.getMessagesController().getTopicsController().toggleViewForumAsMessages(TopicsFragment.this.chatId, true);
                    TopicsFragment.this.finishDialogRightSlidingPreviewOnTransitionEnd = true;
                    Bundle bundle = new Bundle();
                    bundle.putLong("chat_id", TopicsFragment.this.chatId);
                    ChatActivity chatActivity = new ChatActivity(bundle);
                    chatActivity.setSwitchFromTopics(true);
                    TopicsFragment.this.presentFragment(chatActivity);
                    break;
                case 2:
                    TLRPC.ChatFull chatFull = TopicsFragment.this.getMessagesController().getChatFull(TopicsFragment.this.chatId);
                    TLRPC.ChatFull chatFull2 = TopicsFragment.this.chatFull;
                    if (chatFull2 != null && (chatParticipants = chatFull2.participants) != null) {
                        chatFull.participants = chatParticipants;
                    }
                    if (chatFull != null) {
                        LongSparseArray longSparseArray = new LongSparseArray();
                        if (chatFull.participants != null) {
                            while (i2 < chatFull.participants.participants.size()) {
                                longSparseArray.put(chatFull.participants.participants.get(i2).user_id, null);
                                i2++;
                            }
                        }
                        final long j = chatFull.id;
                        Context context = this.val$context;
                        int i3 = ((BaseFragment) TopicsFragment.this).currentAccount;
                        long j2 = chatFull.id;
                        TopicsFragment topicsFragment2 = TopicsFragment.this;
                        InviteMembersBottomSheet inviteMembersBottomSheet = new InviteMembersBottomSheet(context, i3, longSparseArray, j2, topicsFragment2, topicsFragment2.themeDelegate) { // from class: org.telegram.ui.TopicsFragment.2.1
                            @Override // org.telegram.ui.Components.InviteMembersBottomSheet
                            public boolean canGenerateLink() {
                                TLRPC.Chat chat = TopicsFragment.this.getMessagesController().getChat(Long.valueOf(j));
                                return chat != null && ChatObject.canUserDoAdminAction(chat, 3);
                            }
                        };
                        inviteMembersBottomSheet.setDelegate(new GroupCreateActivity.ContactsAddActivityDelegate() { // from class: org.telegram.ui.TopicsFragment$2$$ExternalSyntheticLambda0
                            @Override // org.telegram.ui.GroupCreateActivity.ContactsAddActivityDelegate
                            public final void didSelectUsers(ArrayList arrayList, int i4) {
                                this.f$0.lambda$onItemClick$2(j, arrayList, i4);
                            }
                        });
                        inviteMembersBottomSheet.show();
                    }
                    break;
                case 3:
                    final TopicCreateFragment topicCreateFragmentCreate = TopicCreateFragment.create(TopicsFragment.this.chatId, 0L);
                    TopicsFragment.this.presentFragment(topicCreateFragmentCreate);
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.TopicsFragment$2$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            topicCreateFragmentCreate.showKeyboard();
                        }
                    }, 200L);
                    break;
                case 4:
                case 5:
                    if (TopicsFragment.this.selectedTopics.size() > 0) {
                        TopicsFragment.this.scrollToTop = true;
                        TopicsFragment.this.updateAnimated = true;
                        TopicsController topicsController = TopicsFragment.this.topicsController;
                        TopicsFragment topicsFragment3 = TopicsFragment.this;
                        topicsController.pinTopic(topicsFragment3.chatId, topicsFragment3.selectedTopics.iterator().next().intValue(), i == 4, TopicsFragment.this);
                    }
                    TopicsFragment.this.clearSelectedTopics();
                    break;
                case 6:
                    Iterator<Integer> it = TopicsFragment.this.selectedTopics.iterator();
                    while (it.hasNext()) {
                        int iIntValue = it.next().intValue();
                        NotificationsController notificationsController = TopicsFragment.this.getNotificationsController();
                        TopicsFragment topicsFragment4 = TopicsFragment.this;
                        notificationsController.muteDialog(-topicsFragment4.chatId, iIntValue, topicsFragment4.mute);
                    }
                    TopicsFragment.this.clearSelectedTopics();
                    break;
                case 7:
                    TopicsFragment topicsFragment5 = TopicsFragment.this;
                    topicsFragment5.deleteTopics(topicsFragment5.selectedTopics, new Runnable() { // from class: org.telegram.ui.TopicsFragment$2$$ExternalSyntheticLambda3
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$onItemClick$5();
                        }
                    });
                    break;
                case 8:
                    ArrayList arrayList = new ArrayList(TopicsFragment.this.selectedTopics);
                    int i4 = 0;
                    while (true) {
                        int size2 = arrayList.size();
                        TopicsFragment topicsFragment6 = TopicsFragment.this;
                        if (i4 < size2) {
                            TLRPC.TL_forumTopic tL_forumTopicFindTopic = topicsFragment6.topicsController.findTopic(TopicsFragment.this.chatId, ((Integer) arrayList.get(i4)).intValue());
                            if (tL_forumTopicFindTopic != null) {
                                TopicsFragment.this.getMessagesController().markMentionsAsRead(-TopicsFragment.this.chatId, tL_forumTopicFindTopic.id);
                                MessagesController messagesController = TopicsFragment.this.getMessagesController();
                                long j3 = -TopicsFragment.this.chatId;
                                int i5 = tL_forumTopicFindTopic.top_message;
                                TLRPC.Message message = tL_forumTopicFindTopic.topMessage;
                                messagesController.markDialogAsRead(j3, i5, 0, message != null ? message.date : 0, false, tL_forumTopicFindTopic.id, 0, true, 0);
                                TopicsFragment.this.getMessagesStorage().updateRepliesMaxReadId(TopicsFragment.this.chatId, tL_forumTopicFindTopic.id, tL_forumTopicFindTopic.top_message, 0, true);
                            }
                            i4++;
                        } else {
                            topicsFragment6.clearSelectedTopics();
                        }
                        break;
                    }
                    break;
                case 9:
                case 10:
                    TopicsFragment.this.updateAnimated = true;
                    ArrayList arrayList2 = new ArrayList(TopicsFragment.this.selectedTopics);
                    int i6 = 0;
                    while (true) {
                        int size3 = arrayList2.size();
                        TopicsFragment topicsFragment7 = TopicsFragment.this;
                        if (i6 < size3) {
                            topicsFragment7.topicsController.toggleCloseTopic(TopicsFragment.this.chatId, ((Integer) arrayList2.get(i6)).intValue(), i == 9);
                            i6++;
                        } else {
                            topicsFragment7.clearSelectedTopics();
                        }
                        break;
                    }
                    break;
                case 11:
                    final TLRPC.Chat chat = TopicsFragment.this.getMessagesController().getChat(Long.valueOf(TopicsFragment.this.chatId));
                    AlertsCreator.createClearOrDeleteDialogAlert(TopicsFragment.this, false, chat, null, false, true, false, false, new MessagesStorage.BooleanCallback() { // from class: org.telegram.ui.TopicsFragment$2$$ExternalSyntheticLambda2
                        @Override // org.telegram.messenger.MessagesStorage.BooleanCallback
                        public final void run(boolean z) {
                            this.f$0.lambda$onItemClick$4(chat, z);
                        }
                    });
                    break;
                case 12:
                case 13:
                    int i7 = 0;
                    while (true) {
                        if (i7 < TopicsFragment.this.recyclerListView.getChildCount()) {
                            View childAt = TopicsFragment.this.recyclerListView.getChildAt(i7);
                            if ((childAt instanceof TopicDialogCell) && (tL_forumTopic = (topicDialogCell = (TopicDialogCell) childAt).forumTopic) != null && tL_forumTopic.id == 1) {
                                tL_forumTopic2 = tL_forumTopic;
                            } else {
                                i7++;
                            }
                        } else {
                            topicDialogCell = null;
                        }
                    }
                    if (tL_forumTopic2 == null) {
                        while (true) {
                            if (i2 < TopicsFragment.this.forumTopics.size()) {
                                if (TopicsFragment.this.forumTopics.get(i2) == null || TopicsFragment.this.forumTopics.get(i2).topic == null || TopicsFragment.this.forumTopics.get(i2).topic.id != 1) {
                                    i2++;
                                } else {
                                    tL_forumTopic2 = TopicsFragment.this.forumTopics.get(i2).topic;
                                }
                            }
                        }
                    }
                    if (tL_forumTopic2 != null) {
                        if (TopicsFragment.this.hiddenCount <= 0) {
                            TopicsFragment.this.hiddenShown = true;
                            TopicsFragment.this.pullViewState = 2;
                        }
                        TopicsFragment.this.getMessagesController().getTopicsController().toggleShowTopic(TopicsFragment.this.chatId, 1, tL_forumTopic2.hidden);
                        if (topicDialogCell != null) {
                            TopicsFragment.this.generalTopicViewMoving = topicDialogCell;
                        }
                        TopicsFragment.this.recyclerListView.setArchiveHidden(!tL_forumTopic2.hidden, topicDialogCell);
                        TopicsFragment.this.updateTopicsList(true, true);
                        if (topicDialogCell != null) {
                            topicDialogCell.setTopicIcon(topicDialogCell.currentTopic);
                        }
                    }
                    TopicsFragment.this.clearSelectedTopics();
                    break;
                case 14:
                    boolean zHasAdminRights = ChatObject.hasAdminRights(TopicsFragment.this.getMessagesController().getChat(Long.valueOf(TopicsFragment.this.chatId)));
                    TopicsFragment topicsFragment8 = TopicsFragment.this;
                    if (zHasAdminRights) {
                        BoostsActivity boostsActivity = new BoostsActivity(-topicsFragment8.chatId);
                        boostsActivity.setBoostsStatus(TopicsFragment.this.boostsStatus);
                        TopicsFragment.this.presentFragment(boostsActivity);
                    } else {
                        topicsFragment8.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.openBoostForUsersDialog, Long.valueOf(-TopicsFragment.this.chatId));
                    }
                    break;
                case 15:
                    TopicsFragment topicsFragment9 = TopicsFragment.this;
                    ReportBottomSheet.openChat(topicsFragment9, -topicsFragment9.chatId);
                    break;
            }
            super.onItemClick(i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$2(final long j, final ArrayList arrayList, int i) {
            final C62182 c62182 = this;
            final int size = arrayList.size();
            final int[] iArr = new int[1];
            final TLRPC.TL_messages_invitedUsers tL_messages_invitedUsers = new TLRPC.TL_messages_invitedUsers();
            tL_messages_invitedUsers.updates = new TLRPC.TL_updates();
            int i2 = 0;
            while (i2 < size) {
                TopicsFragment.this.getMessagesController().addUserToChat(j, (TLRPC.User) arrayList.get(i2), i, null, TopicsFragment.this, false, new Runnable() { // from class: org.telegram.ui.TopicsFragment$2$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        TopicsFragment.C62182.$r8$lambda$1OkCq9MtFhXJWecrxhBTGxZpKV8();
                    }
                }, null, new Utilities.Callback() { // from class: org.telegram.ui.TopicsFragment$2$$ExternalSyntheticLambda5
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        this.f$0.lambda$onItemClick$1(tL_messages_invitedUsers, iArr, size, arrayList, j, (TLRPC.TL_messages_invitedUsers) obj);
                    }
                });
                i2++;
                c62182 = this;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$1(TLRPC.TL_messages_invitedUsers tL_messages_invitedUsers, int[] iArr, int i, ArrayList arrayList, long j, TLRPC.TL_messages_invitedUsers tL_messages_invitedUsers2) {
            if (tL_messages_invitedUsers2 != null) {
                tL_messages_invitedUsers.missing_invitees.addAll(tL_messages_invitedUsers2.missing_invitees);
            }
            int i2 = iArr[0] + 1;
            iArr[0] = i2;
            if (i2 == i) {
                boolean zIsEmpty = tL_messages_invitedUsers.missing_invitees.isEmpty();
                TopicsFragment topicsFragment = TopicsFragment.this;
                if (zIsEmpty) {
                    BulletinFactory.of(topicsFragment).createUsersAddedBulletin(arrayList, TopicsFragment.this.getMessagesController().getChat(Long.valueOf(j))).show();
                } else {
                    AlertsCreator.checkRestrictedInviteUsers(((BaseFragment) TopicsFragment.this).currentAccount, topicsFragment.getMessagesController().getChat(Long.valueOf(j)), tL_messages_invitedUsers);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$4(TLRPC.Chat chat, boolean z) {
            NotificationCenter notificationCenter = TopicsFragment.this.getNotificationCenter();
            TopicsFragment topicsFragment = TopicsFragment.this;
            int i = NotificationCenter.closeChats;
            notificationCenter.removeObserver(topicsFragment, i);
            TopicsFragment.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(i, new Object[0]);
            TopicsFragment.this.finishFragment();
            TopicsFragment.this.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.needDeleteDialog, Long.valueOf(-chat.id), null, chat, Boolean.valueOf(z));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$5() {
            TopicsFragment.this.clearSelectedTopics();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$0(View view) {
        if (this.searching) {
            return;
        }
        openProfile(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$1(View view) {
        openParentSearch();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$2() {
        this.recyclerListView.postOnAnimation(new Runnable() { // from class: org.telegram.ui.TopicsFragment$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.blur3_InvalidateBlur();
            }
        });
    }

    /* JADX INFO: renamed from: org.telegram.ui.TopicsFragment$7 */
    /* JADX INFO: loaded from: classes6.dex */
    public class C62237 extends DefaultItemAnimator {
        Runnable finishRunnable;
        int scrollAnimationIndex;

        public C62237() {
        }

        @Override // androidx.recyclerview.widget.DefaultItemAnimator
        public void checkIsRunning() {
            if (this.scrollAnimationIndex == -1) {
                this.scrollAnimationIndex = TopicsFragment.this.getNotificationCenter().setAnimationInProgress(this.scrollAnimationIndex, null, false);
                Runnable runnable = this.finishRunnable;
                if (runnable != null) {
                    AndroidUtilities.cancelRunOnUIThread(runnable);
                    this.finishRunnable = null;
                }
            }
        }

        @Override // androidx.recyclerview.widget.DefaultItemAnimator
        public void onAllAnimationsDone() {
            super.onAllAnimationsDone();
            Runnable runnable = this.finishRunnable;
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
                this.finishRunnable = null;
            }
            Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.TopicsFragment$7$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onAllAnimationsDone$0();
                }
            };
            this.finishRunnable = runnable2;
            AndroidUtilities.runOnUIThread(runnable2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onAllAnimationsDone$0() {
            this.finishRunnable = null;
            if (this.scrollAnimationIndex != -1) {
                TopicsFragment.this.getNotificationCenter().onAnimationFinish(this.scrollAnimationIndex);
                this.scrollAnimationIndex = -1;
            }
        }

        @Override // androidx.recyclerview.widget.DefaultItemAnimator, androidx.recyclerview.widget.RecyclerView.ItemAnimator
        public void endAnimations() {
            super.endAnimations();
            Runnable runnable = this.finishRunnable;
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
            }
            Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.TopicsFragment$7$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$endAnimations$1();
                }
            };
            this.finishRunnable = runnable2;
            AndroidUtilities.runOnUIThread(runnable2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$endAnimations$1() {
            this.finishRunnable = null;
            if (this.scrollAnimationIndex != -1) {
                TopicsFragment.this.getNotificationCenter().onAnimationFinish(this.scrollAnimationIndex);
                this.scrollAnimationIndex = -1;
            }
        }

        @Override // androidx.recyclerview.widget.DefaultItemAnimator
        public void afterAnimateMoveImpl(RecyclerView.ViewHolder viewHolder) {
            if (TopicsFragment.this.generalTopicViewMoving == viewHolder.itemView) {
                TopicsFragment.this.generalTopicViewMoving.setTranslationX(0.0f);
                if (TopicsFragment.this.itemTouchHelper != null) {
                    TopicsFragment.this.itemTouchHelper.clearRecoverAnimations();
                }
                if (TopicsFragment.this.generalTopicViewMoving instanceof TopicDialogCell) {
                    ((TopicDialogCell) TopicsFragment.this.generalTopicViewMoving).setTopicIcon(((TopicDialogCell) TopicsFragment.this.generalTopicViewMoving).currentTopic);
                }
                TopicsFragment.this.generalTopicViewMoving = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$3(View view, int i) {
        TLRPC.TL_forumTopic tL_forumTopic;
        if (getParentLayout() == null || getParentLayout().isInPreviewMode() || !(view instanceof TopicDialogCell) || (tL_forumTopic = ((TopicDialogCell) view).forumTopic) == null) {
            return;
        }
        long peerDialogId = getMessagesController().isMonoForum(-this.chatId) ? DialogObject.getPeerDialogId(tL_forumTopic.from_id) : tL_forumTopic.id;
        if (this.openedForSelect) {
            OnTopicSelectedListener onTopicSelectedListener = this.onTopicSelectedListener;
            if (onTopicSelectedListener != null) {
                onTopicSelectedListener.onTopicSelected(tL_forumTopic);
            }
            DialogsActivity dialogsActivity = this.dialogsActivity;
            if (dialogsActivity != null) {
                dialogsActivity.didSelectResult(-this.chatId, peerDialogId, true, false, this);
                return;
            }
            return;
        }
        if (this.selectedTopics.size() > 0) {
            toggleSelection(view);
            return;
        }
        if (this.inPreviewMode && AndroidUtilities.isTablet()) {
            for (BaseFragment baseFragment : getParentLayout().getFragmentStack()) {
                if (baseFragment instanceof DialogsActivity) {
                    DialogsActivity dialogsActivity2 = (DialogsActivity) baseFragment;
                    if (dialogsActivity2.isMainDialogList()) {
                        MessagesStorage.TopicKey openedDialogId = dialogsActivity2.getOpenedDialogId();
                        if (openedDialogId.dialogId == (-this.chatId) && openedDialogId.topicId == peerDialogId) {
                            return;
                        }
                    } else {
                        continue;
                    }
                }
            }
            this.selectedTopicForTablet = peerDialogId;
            updateTopicsList(false, false);
        }
        ForumUtilities.openTopic(this, this.chatId, tL_forumTopic, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$4(View view, int i, float f, float f2) {
        if (this.openedForSelect || getParentLayout() == null || getParentLayout().isInPreviewMode()) {
            return false;
        }
        if (!this.actionBar.isActionModeShowed() && !AndroidUtilities.isTablet() && (view instanceof TopicDialogCell)) {
            TopicDialogCell topicDialogCell = (TopicDialogCell) view;
            if (topicDialogCell.isPointInsideAvatar(f, f2)) {
                showChatPreview(topicDialogCell);
                this.recyclerListView.cancelClickRunnables(true);
                this.recyclerListView.dispatchTouchEvent(MotionEvent.obtain(0L, 0L, 3, 0.0f, 0.0f, 0));
                return false;
            }
        }
        toggleSelection(view);
        try {
            view.performHapticFeedback(0);
        } catch (Exception unused) {
        }
        if (this.actionBar.isActionModeShowed() && (view instanceof TopicDialogCell)) {
            startMultiselect(i);
        }
        return true;
    }

    /* JADX INFO: renamed from: org.telegram.ui.TopicsFragment$10, reason: invalid class name */
    /* JADX INFO: loaded from: classes6.dex */
    public class AnonymousClass10 extends LinearLayoutManager {
        private boolean fixOffset;

        public AnonymousClass10(Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager
        public void scrollToPositionWithOffset(int i, int i2) {
            if (this.fixOffset) {
                i2 -= TopicsFragment.this.recyclerListView.getPaddingTop();
            }
            super.scrollToPositionWithOffset(i, i2);
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.ItemTouchHelper.ViewDropHandler
        public void prepareForDrop(View view, View view2, int i, int i2) {
            this.fixOffset = true;
            super.prepareForDrop(view, view2, i, i2);
            this.fixOffset = false;
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
        public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i) {
            if (TopicsFragment.this.hiddenCount > 0 && i == 1) {
                super.smoothScrollToPosition(recyclerView, state, i);
                return;
            }
            LinearSmoothScrollerCustom linearSmoothScrollerCustom = new LinearSmoothScrollerCustom(recyclerView.getContext(), 0);
            linearSmoothScrollerCustom.setTargetPosition(i);
            startSmoothScroll(linearSmoothScrollerCustom);
        }

        /* JADX WARN: Removed duplicated region for block: B:41:0x00d1  */
        @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public int scrollVerticallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
            int i2;
            int i3;
            boolean z = false;
            if (TopicsFragment.this.recyclerListView.fastScrollAnimationRunning) {
                return 0;
            }
            boolean z2 = TopicsFragment.this.recyclerListView.getScrollState() == 1;
            int paddingTop = TopicsFragment.this.recyclerListView.getPaddingTop();
            if (i >= 0 || TopicsFragment.this.hiddenCount <= 0 || TopicsFragment.this.pullViewState != 2) {
                i2 = i;
            } else {
                TopicsFragment.this.recyclerListView.setOverScrollMode(0);
                int iFindFirstVisibleItemPosition = TopicsFragment.this.layoutManager.findFirstVisibleItemPosition();
                if (iFindFirstVisibleItemPosition == 0) {
                    View viewFindViewByPosition = TopicsFragment.this.layoutManager.findViewByPosition(iFindFirstVisibleItemPosition);
                    if (viewFindViewByPosition != null) {
                        viewFindViewByPosition.setTranslationX(0.0f);
                    }
                    if (viewFindViewByPosition != null && viewFindViewByPosition.getBottom() - paddingTop <= AndroidUtilities.dp(1.0f)) {
                        iFindFirstVisibleItemPosition = 1;
                    }
                }
                if (!z2) {
                    View viewFindViewByPosition2 = TopicsFragment.this.layoutManager.findViewByPosition(iFindFirstVisibleItemPosition);
                    if (viewFindViewByPosition2 != null) {
                        int iDp = (-(viewFindViewByPosition2.getTop() - paddingTop)) + ((iFindFirstVisibleItemPosition - 1) * (AndroidUtilities.dp(SharedConfig.useThreeLinesLayout ? 78.0f : 72.0f) + 1));
                        if (iDp < Math.abs(i)) {
                            i2 = -iDp;
                        }
                    }
                } else if (iFindFirstVisibleItemPosition == 0) {
                    View viewFindViewByPosition3 = TopicsFragment.this.layoutManager.findViewByPosition(iFindFirstVisibleItemPosition);
                    float top = ((viewFindViewByPosition3.getTop() - paddingTop) / viewFindViewByPosition3.getMeasuredHeight()) + 1.0f;
                    if (top > 1.0f) {
                        top = 1.0f;
                    }
                    TopicsFragment.this.recyclerListView.setOverScrollMode(2);
                    i2 = (int) (i * (0.45f - (top * 0.25f)));
                    if (i2 > -1) {
                        i2 = -1;
                    }
                }
            }
            if (TopicsFragment.this.recyclerListView.getViewOffset() != 0.0f && i > 0 && z2) {
                float viewOffset = ((int) TopicsFragment.this.recyclerListView.getViewOffset()) - i;
                if (viewOffset < 0.0f) {
                    i3 = (int) viewOffset;
                    viewOffset = 0.0f;
                } else {
                    i3 = 0;
                }
                TopicsFragment.this.recyclerListView.setViewsOffset(viewOffset);
                i2 = i3;
            }
            if (TopicsFragment.this.pullViewState != 0 && TopicsFragment.this.hiddenCount > 0) {
                int iScrollVerticallyBy = super.scrollVerticallyBy(i2, recycler, state);
                if (TopicsFragment.this.pullForegroundDrawable != null) {
                    TopicsFragment.this.pullForegroundDrawable.scrollDy = iScrollVerticallyBy;
                }
                int iFindFirstVisibleItemPosition2 = TopicsFragment.this.layoutManager.findFirstVisibleItemPosition();
                View viewFindViewByPosition4 = iFindFirstVisibleItemPosition2 == 0 ? TopicsFragment.this.layoutManager.findViewByPosition(iFindFirstVisibleItemPosition2) : null;
                if (viewFindViewByPosition4 != null) {
                    viewFindViewByPosition4.setTranslationX(0.0f);
                }
                if (iFindFirstVisibleItemPosition2 == 0 && viewFindViewByPosition4 != null && viewFindViewByPosition4.getBottom() - paddingTop >= AndroidUtilities.dp(4.0f)) {
                    if (TopicsFragment.this.startArchivePullingTime == 0) {
                        TopicsFragment.this.startArchivePullingTime = System.currentTimeMillis();
                    }
                    if (TopicsFragment.this.pullViewState == 2 && TopicsFragment.this.pullForegroundDrawable != null) {
                        TopicsFragment.this.pullForegroundDrawable.showHidden();
                    }
                    float top2 = ((viewFindViewByPosition4.getTop() - paddingTop) / viewFindViewByPosition4.getMeasuredHeight()) + 1.0f;
                    if (top2 > 1.0f) {
                        top2 = 1.0f;
                    }
                    long jCurrentTimeMillis = System.currentTimeMillis() - TopicsFragment.this.startArchivePullingTime;
                    if (top2 > 0.85f && jCurrentTimeMillis > 220) {
                        z = true;
                    }
                    if (TopicsFragment.this.canShowHiddenArchive != z) {
                        TopicsFragment.this.canShowHiddenArchive = z;
                        if (TopicsFragment.this.pullViewState == 2) {
                            try {
                                TopicsFragment.this.recyclerListView.performHapticFeedback(3, 2);
                            } catch (Exception unused) {
                            }
                            if (TopicsFragment.this.pullForegroundDrawable != null) {
                                TopicsFragment.this.pullForegroundDrawable.colorize(z);
                            }
                        }
                    }
                    if (TopicsFragment.this.pullViewState == 2 && i2 - iScrollVerticallyBy != 0 && i < 0 && z2) {
                        TopicsFragment.this.recyclerListView.setViewsOffset(TopicsFragment.this.recyclerListView.getViewOffset() - ((i * 0.2f) * (1.0f - (TopicsFragment.this.recyclerListView.getViewOffset() / PullForegroundDrawable.getMaxOverscroll()))));
                    }
                    if (TopicsFragment.this.pullForegroundDrawable != null) {
                        TopicsFragment.this.pullForegroundDrawable.setPullProgress(top2);
                        TopicsFragment.this.pullForegroundDrawable.setListView(TopicsFragment.this.recyclerListView);
                    }
                } else {
                    TopicsFragment.this.startArchivePullingTime = 0L;
                    TopicsFragment.this.canShowHiddenArchive = false;
                    TopicsFragment.this.pullViewState = 2;
                    if (TopicsFragment.this.pullForegroundDrawable != null) {
                        TopicsFragment.this.pullForegroundDrawable.resetText();
                        TopicsFragment.this.pullForegroundDrawable.setPullProgress(0.0f);
                        TopicsFragment.this.pullForegroundDrawable.setListView(TopicsFragment.this.recyclerListView);
                    }
                }
                if (viewFindViewByPosition4 != null) {
                    viewFindViewByPosition4.invalidate();
                }
                return iScrollVerticallyBy;
            }
            return super.scrollVerticallyBy(i2, recycler, state);
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
        public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
            boolean z = BuildVars.DEBUG_VERSION;
            try {
                super.onLayoutChildren(recycler, state);
            } catch (IndexOutOfBoundsException e) {
                FileLog.m992e(e);
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.TopicsFragment$10$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onLayoutChildren$0();
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onLayoutChildren$0() {
            TopicsFragment.this.adapter.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$5(View view) {
        presentFragment(TopicCreateFragment.create(this.chatId, 0L));
    }

    /* JADX INFO: renamed from: org.telegram.ui.TopicsFragment$15, reason: invalid class name */
    /* JADX INFO: loaded from: classes6.dex */
    public class AnonymousClass15 implements View.OnClickListener {
        public AnonymousClass15() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int i = TopicsFragment.this.bottomButtonType;
            TopicsFragment topicsFragment = TopicsFragment.this;
            if (i == 1) {
                AlertsCreator.showBlockReportSpamAlert(topicsFragment, -topicsFragment.chatId, null, topicsFragment.getCurrentChat(), null, false, TopicsFragment.this.chatFull, new MessagesStorage.IntCallback() { // from class: org.telegram.ui.TopicsFragment$15$$ExternalSyntheticLambda0
                    @Override // org.telegram.messenger.MessagesStorage.IntCallback
                    public final void run(int i2) {
                        this.f$0.lambda$onClick$0(i2);
                    }
                }, TopicsFragment.this.getResourceProvider());
            } else {
                topicsFragment.joinToGroup();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onClick$0(int i) {
            TopicsFragment topicsFragment = TopicsFragment.this;
            if (i == 0) {
                topicsFragment.updateChatInfo();
            } else {
                topicsFragment.finishFragment();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$6(View view) {
        getMessagesController().hidePeerSettingsBar(-this.chatId, null, getCurrentChat());
        updateChatInfo();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$7() {
        blur3_InvalidateBlur();
        checkUi_listViewPadding();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$8(boolean z, boolean z2) {
        this.topPanelLayout.setViewVisible(this.pendingRequestsDelegate.getView(), z, z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$9(View view) {
        finishPreviewFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$10(TL_stories.TL_premium_boostsStatus tL_premium_boostsStatus) {
        this.boostsStatus = tL_premium_boostsStatus;
    }

    private void updateTopicsEmptyViewText() {
        StickerEmptyView stickerEmptyView = this.topicsEmptyView;
        if (stickerEmptyView == null || stickerEmptyView.subtitle == null) {
            return;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("d");
        ColoredImageSpan coloredImageSpan = new ColoredImageSpan(C2665R.drawable.ic_ab_other);
        coloredImageSpan.setSize(AndroidUtilities.dp(16.0f));
        spannableStringBuilder.setSpan(coloredImageSpan, 0, 1, 0);
        if (ChatObject.canUserDoAdminAction(getCurrentChat(), 15)) {
            this.topicsEmptyView.subtitle.setText(AndroidUtilities.replaceCharSequence("%s", AndroidUtilities.replaceTags(LocaleController.getString(C2665R.string.NoTopicsDescription)), spannableStringBuilder));
            return;
        }
        String string = LocaleController.getString(C2665R.string.General);
        TLRPC.TL_forumTopic tL_forumTopicFindTopic = getMessagesController().getTopicsController().findTopic(this.chatId, 1L);
        if (tL_forumTopicFindTopic != null) {
            string = tL_forumTopicFindTopic.title;
        }
        this.topicsEmptyView.subtitle.setText(AndroidUtilities.replaceTags(LocaleController.formatString("NoTopicsDescriptionUser", C2665R.string.NoTopicsDescriptionUser, string)));
    }

    private void updateColors() {
        RadialProgressView radialProgressView = this.bottomOverlayProgress;
        if (radialProgressView == null) {
            return;
        }
        radialProgressView.setProgressColor(getThemedColor(Theme.key_chat_fieldOverlayText));
        this.floatingButton.updateColors();
        FrameLayout frameLayout = this.bottomOverlayContainer;
        int i = Theme.key_windowBackgroundWhite;
        frameLayout.setBackgroundColor(getThemedColor(i));
        this.actionBar.setActionModeColor(getThemedColor(i));
        if (!this.inPreviewMode) {
            this.actionBar.setBackgroundColor(getThemedColor(Theme.key_actionBarDefault));
        }
        this.searchContainer.setBackgroundColor(getThemedColor(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openProfile(boolean z) {
        TLRPC.Chat currentChat;
        TLRPC.ChatPhoto chatPhoto;
        if (z && (currentChat = getCurrentChat()) != null && ((chatPhoto = currentChat.photo) == null || (chatPhoto instanceof TLRPC.TL_chatPhotoEmpty))) {
            z = false;
        }
        Bundle bundle = new Bundle();
        bundle.putLong("chat_id", this.chatId);
        ProfileActivity profileActivity = new ProfileActivity(bundle, this.avatarContainer.getSharedMediaPreloader());
        profileActivity.setChatInfo(this.chatFull);
        profileActivity.setPlayProfileAnimation((this.fragmentView.getMeasuredHeight() > this.fragmentView.getMeasuredWidth() && this.avatarContainer.getAvatarImageView().getImageReceiver().hasImageLoaded() && z) ? 2 : 1);
        presentFragment(profileActivity);
    }

    public void switchToChat(boolean z) {
        this.removeFragmentOnTransitionEnd = z;
        Bundle bundle = new Bundle();
        bundle.putLong("chat_id", this.chatId);
        ChatActivity chatActivity = new ChatActivity(bundle);
        chatActivity.setSwitchFromTopics(true);
        presentFragment(chatActivity);
    }

    private void openParentSearch() {
        ActionBarMenuItem actionBarMenuItem;
        DialogsActivity dialogsActivity = this.parentDialogsActivity;
        if (dialogsActivity == null || (actionBarMenuItem = dialogsActivity.searchItem) == null) {
            return;
        }
        actionBarMenuItem.performClick();
    }

    public void checkUi_listViewPadding() {
        DialogsActivity dialogsActivity = this.parentDialogsActivity;
        float animatedHeightWithPadding = 0.0f;
        if (dialogsActivity != null) {
            animatedHeightWithPadding = 0.0f + dialogsActivity.getTopPanelAnimatedHeight();
            DialogsActivityTopPanelLayout dialogsActivityTopPanelLayout = this.topPanelLayout;
            if (dialogsActivityTopPanelLayout != null) {
                dialogsActivityTopPanelLayout.setTranslationY(animatedHeightWithPadding - (AndroidUtilities.dp(7.0f) * this.parentDialogsActivity.getTopPanelVisibility()));
                animatedHeightWithPadding += this.topPanelLayout.getAnimatedHeightWithPadding(AndroidUtilities.lerp(AndroidUtilities.dp(14.0f), AndroidUtilities.dp(7.0f), this.parentDialogsActivity.getTopPanelVisibility()));
            }
        } else {
            DialogsActivityTopPanelLayout dialogsActivityTopPanelLayout2 = this.topPanelLayout;
            if (dialogsActivityTopPanelLayout2 != null) {
                animatedHeightWithPadding = 0.0f + dialogsActivityTopPanelLayout2.getAnimatedHeightWithPadding(AndroidUtilities.dp(14.0f));
            }
        }
        DialogsActivity dialogsActivity2 = this.parentDialogsActivity;
        this.recyclerListView.setPadding(0, (int) animatedHeightWithPadding, 0, this.navigationBarHeight + this.additionNavigationBarHeight + MainTabsUiHelper.getFloatingTabsPadding(dialogsActivity2 != null && dialogsActivity2.hasMainTabs) + (this.bottomPannelVisible ? AndroidUtilities.dp(51.0f) : 0));
    }

    public void setTransitionPadding(int i) {
        this.transitionPadding = i;
        updateFloatingButtonOffset();
    }

    public void setParentDialogsActivity(DialogsActivity dialogsActivity) {
        this.parentDialogsActivity = dialogsActivity;
        checkUi_mainTabsVisible();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkUi_mainTabsVisible() {
        DialogsActivity dialogsActivity = this.parentDialogsActivity;
        if (dialogsActivity != null) {
            dialogsActivity.setChildMainTabsVisible(BottomNavigationBar.visible() && !this.mainTabsHiddenByScroll);
        }
    }

    /* JADX INFO: loaded from: classes6.dex */
    public class TopicsRecyclerView extends BlurredRecyclerView {
        private boolean firstLayout;
        private boolean ignoreLayout;
        Paint paint;
        RectF rectF;
        private float viewOffset;

        public TopicsRecyclerView(Context context) {
            super(context);
            this.firstLayout = true;
            this.paint = new Paint();
            this.rectF = new RectF();
            this.useLayoutPositionOnClick = true;
            this.additionalClipBottom = AndroidUtilities.dp(200.0f);
        }

        public void setViewsOffset(float f) {
            View viewFindViewByPosition;
            this.viewOffset = f;
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                getChildAt(i).setTranslationY(f);
            }
            if (this.selectorPosition != -1 && (viewFindViewByPosition = getLayoutManager().findViewByPosition(this.selectorPosition)) != null) {
                this.selectorRect.set(viewFindViewByPosition.getLeft(), (int) (viewFindViewByPosition.getTop() + f), viewFindViewByPosition.getRight(), (int) (viewFindViewByPosition.getBottom() + f));
                this.selectorDrawable.setBounds(this.selectorRect);
            }
            invalidate();
        }

        public float getViewOffset() {
            return this.viewOffset;
        }

        @Override // android.view.ViewGroup
        public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
            super.addView(view, i, layoutParams);
            view.setTranslationY(this.viewOffset);
            view.setTranslationX(0.0f);
            view.setAlpha(1.0f);
        }

        @Override // android.view.ViewGroup, android.view.ViewManager
        public void removeView(View view) {
            super.removeView(view);
            view.setTranslationY(0.0f);
            view.setTranslationX(0.0f);
            view.setAlpha(1.0f);
        }

        @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
        public void onDraw(Canvas canvas) {
            if (TopicsFragment.this.pullForegroundDrawable != null && this.viewOffset != 0.0f) {
                int paddingTop = getPaddingTop();
                if (paddingTop != 0) {
                    canvas.save();
                    canvas.translate(0.0f, paddingTop);
                }
                TopicsFragment.this.pullForegroundDrawable.drawOverScroll(canvas);
                if (paddingTop != 0) {
                    canvas.restore();
                }
            }
            super.onDraw(canvas);
        }

        @Override // org.telegram.ui.Components.BlurredRecyclerView, org.telegram.ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
        public void dispatchDraw(Canvas canvas) {
            Canvas canvas2;
            if (TopicsFragment.this.generalTopicViewMoving != null) {
                canvas.save();
                canvas.translate(TopicsFragment.this.generalTopicViewMoving.getLeft(), TopicsFragment.this.generalTopicViewMoving.getY());
                TopicsFragment.this.generalTopicViewMoving.draw(canvas);
                canvas.restore();
            }
            super.dispatchDraw(canvas);
            if (drawMovingViewsOverlayed()) {
                this.paint.setColor(getThemedColor(Theme.key_windowBackgroundWhite));
                int i = 0;
                while (i < getChildCount()) {
                    View childAt = getChildAt(i);
                    if (((childAt instanceof DialogCell) && ((DialogCell) childAt).isMoving()) || ((childAt instanceof DialogsAdapter.LastEmptyView) && ((DialogsAdapter.LastEmptyView) childAt).moving)) {
                        if (childAt.getAlpha() != 1.0f) {
                            this.rectF.set(childAt.getX(), childAt.getY(), childAt.getX() + childAt.getMeasuredWidth(), childAt.getY() + childAt.getMeasuredHeight());
                            canvas.saveLayerAlpha(this.rectF, (int) (childAt.getAlpha() * 255.0f), 31);
                        } else {
                            canvas.save();
                        }
                        canvas.translate(childAt.getX(), childAt.getY());
                        canvas2 = canvas;
                        canvas2.drawRect(0.0f, 0.0f, childAt.getMeasuredWidth(), childAt.getMeasuredHeight(), this.paint);
                        childAt.draw(canvas2);
                        canvas2.restore();
                    } else {
                        canvas2 = canvas;
                    }
                    i++;
                    canvas = canvas2;
                }
                invalidate();
            }
        }

        private boolean drawMovingViewsOverlayed() {
            if (getItemAnimator() == null || !getItemAnimator().isRunning()) {
                return false;
            }
            return (TopicsFragment.this.dialogRemoveFinished == 0 && TopicsFragment.this.dialogInsertFinished == 0 && TopicsFragment.this.dialogChangeFinished == 0) ? false : true;
        }

        @Override // org.telegram.ui.Components.BlurredRecyclerView, org.telegram.ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
        public boolean drawChild(Canvas canvas, View view, long j) {
            if ((drawMovingViewsOverlayed() && (view instanceof DialogCell) && ((DialogCell) view).isMoving()) || TopicsFragment.this.generalTopicViewMoving == view) {
                return true;
            }
            return super.drawChild(canvas, view, j);
        }

        @Override // org.telegram.ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
        public void onDetachedFromWindow() {
            super.onDetachedFromWindow();
        }

        @Override // org.telegram.ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView
        public void setAdapter(RecyclerView.Adapter adapter) {
            super.setAdapter(adapter);
            this.firstLayout = true;
        }

        private void checkIfAdapterValid() {
            RecyclerView.Adapter adapter = getAdapter();
            if (TopicsFragment.this.lastItemsCount == adapter.getItemCount() || TopicsFragment.this.forumTopicsListFrozen) {
                return;
            }
            this.ignoreLayout = true;
            adapter.notifyDataSetChanged();
            this.ignoreLayout = false;
        }

        @Override // org.telegram.ui.Components.BlurredRecyclerView, org.telegram.ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View
        public void onMeasure(int i, int i2) {
            if (this.firstLayout && TopicsFragment.this.getMessagesController().dialogsLoaded) {
                if (TopicsFragment.this.hiddenCount > 0) {
                    this.ignoreLayout = true;
                    ((LinearLayoutManager) getLayoutManager()).scrollToPositionWithOffset(1, (int) ((BaseFragment) TopicsFragment.this).actionBar.getTranslationY());
                    this.ignoreLayout = false;
                }
                this.firstLayout = false;
            }
            super.onMeasure(i, i2);
        }

        @Override // org.telegram.ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            if ((TopicsFragment.this.dialogRemoveFinished == 0 && TopicsFragment.this.dialogInsertFinished == 0 && TopicsFragment.this.dialogChangeFinished == 0) || TopicsFragment.this.itemAnimator.isRunning()) {
                return;
            }
            TopicsFragment.this.onDialogAnimationFinished();
        }

        @Override // org.telegram.ui.Components.BlurredRecyclerView, org.telegram.ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View, android.view.ViewParent
        public void requestLayout() {
            if (this.ignoreLayout) {
                return;
            }
            super.requestLayout();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setArchiveHidden(boolean z, DialogCell dialogCell) {
            TopicsFragment.this.hiddenShown = z;
            if (TopicsFragment.this.hiddenShown) {
                TopicsFragment.this.layoutManager.scrollToPositionWithOffset(0, 0);
                updatePullState();
                if (dialogCell != null) {
                    dialogCell.resetPinnedArchiveState();
                    dialogCell.invalidate();
                }
            } else if (dialogCell != null) {
                TopicsFragment.this.disableActionBarScrolling = true;
                TopicsFragment.this.layoutManager.scrollToPositionWithOffset(1, 0);
                updatePullState();
            }
            if (TopicsFragment.this.emptyView != null) {
                TopicsFragment.this.emptyView.forceLayout();
            }
        }

        private void updatePullState() {
            TopicsFragment topicsFragment = TopicsFragment.this;
            topicsFragment.pullViewState = !topicsFragment.hiddenShown ? 2 : 0;
            if (TopicsFragment.this.pullForegroundDrawable != null) {
                TopicsFragment.this.pullForegroundDrawable.setWillDraw(TopicsFragment.this.pullViewState != 0);
            }
        }

        @Override // org.telegram.ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            LinearLayoutManager linearLayoutManager;
            int iFindFirstVisibleItemPosition;
            if (this.fastScrollAnimationRunning || TopicsFragment.this.waitingForScrollFinished || TopicsFragment.this.dialogRemoveFinished != 0 || TopicsFragment.this.dialogInsertFinished != 0 || TopicsFragment.this.dialogChangeFinished != 0 || (TopicsFragment.this.getParentLayout() != null && TopicsFragment.this.getParentLayout().isInPreviewMode())) {
                return false;
            }
            int action = motionEvent.getAction();
            if (action == 0) {
                setOverScrollMode(0);
            }
            if ((action == 1 || action == 3) && !TopicsFragment.this.itemTouchHelper.isIdle() && TopicsFragment.this.itemTouchHelperCallback.swipingFolder) {
                TopicsFragment.this.itemTouchHelperCallback.swipeFolderBack = true;
                if (TopicsFragment.this.itemTouchHelper.checkHorizontalSwipe(null, 4) != 0 && TopicsFragment.this.itemTouchHelperCallback.currentItemViewHolder != null) {
                    RecyclerView.ViewHolder viewHolder = TopicsFragment.this.itemTouchHelperCallback.currentItemViewHolder;
                    if (viewHolder.itemView instanceof DialogCell) {
                        setArchiveHidden(!TopicsFragment.this.hiddenShown, (DialogCell) viewHolder.itemView);
                    }
                }
            }
            boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
            if ((action == 1 || action == 3) && TopicsFragment.this.pullViewState == 2 && TopicsFragment.this.hiddenCount > 0 && (iFindFirstVisibleItemPosition = (linearLayoutManager = (LinearLayoutManager) getLayoutManager()).findFirstVisibleItemPosition()) == 0) {
                int paddingTop = getPaddingTop();
                View viewFindViewByPosition = linearLayoutManager.findViewByPosition(iFindFirstVisibleItemPosition);
                int iDp = (int) (AndroidUtilities.dp(SharedConfig.useThreeLinesLayout ? 78.0f : 72.0f) * 0.85f);
                int top = (viewFindViewByPosition.getTop() - paddingTop) + viewFindViewByPosition.getMeasuredHeight();
                long jCurrentTimeMillis = System.currentTimeMillis() - TopicsFragment.this.startArchivePullingTime;
                if (top < iDp || jCurrentTimeMillis < 200) {
                    TopicsFragment.this.disableActionBarScrolling = true;
                    smoothScrollBy(0, top, CubicBezierInterpolator.EASE_OUT_QUINT);
                    TopicsFragment.this.pullViewState = 2;
                } else if (TopicsFragment.this.pullViewState != 1) {
                    if (getViewOffset() == 0.0f) {
                        TopicsFragment.this.disableActionBarScrolling = true;
                        smoothScrollBy(0, viewFindViewByPosition.getTop() - paddingTop, CubicBezierInterpolator.EASE_OUT_QUINT);
                    }
                    if (!TopicsFragment.this.canShowHiddenArchive) {
                        TopicsFragment.this.canShowHiddenArchive = true;
                        try {
                            performHapticFeedback(3, 2);
                        } catch (Exception unused) {
                        }
                        if (TopicsFragment.this.pullForegroundDrawable != null) {
                            TopicsFragment.this.pullForegroundDrawable.colorize(true);
                        }
                    }
                    ((DialogCell) viewFindViewByPosition).startOutAnimation();
                    TopicsFragment.this.pullViewState = 1;
                }
                if (getViewOffset() != 0.0f) {
                    ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(getViewOffset(), 0.0f);
                    valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.TopicsFragment$TopicsRecyclerView$$ExternalSyntheticLambda0
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                            this.f$0.lambda$onTouchEvent$0(valueAnimator);
                        }
                    });
                    valueAnimatorOfFloat.setDuration(Math.max(100L, (long) (350.0f - ((getViewOffset() / PullForegroundDrawable.getMaxOverscroll()) * 120.0f))));
                    valueAnimatorOfFloat.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
                    setScrollEnabled(false);
                    valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.TopicsFragment.TopicsRecyclerView.1
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            super.onAnimationEnd(animator);
                            TopicsRecyclerView.this.setScrollEnabled(true);
                        }
                    });
                    valueAnimatorOfFloat.start();
                }
            }
            return zOnTouchEvent;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onTouchEvent$0(ValueAnimator valueAnimator) {
            setViewsOffset(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }

        @Override // org.telegram.ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (this.fastScrollAnimationRunning || TopicsFragment.this.waitingForScrollFinished || TopicsFragment.this.dialogRemoveFinished != 0 || TopicsFragment.this.dialogInsertFinished != 0 || TopicsFragment.this.dialogChangeFinished != 0) {
                return false;
            }
            if (TopicsFragment.this.getParentLayout() != null && TopicsFragment.this.getParentLayout().isInPreviewMode()) {
                return false;
            }
            if (motionEvent.getAction() == 0) {
                TopicsFragment.this.allowSwipeDuringCurrentTouch = !((BaseFragment) r0).actionBar.isActionModeShowed();
                checkIfAdapterValid();
            }
            return super.onInterceptTouchEvent(motionEvent);
        }

        @Override // org.telegram.ui.Components.RecyclerListView
        public boolean allowSelectChildAtPosition(View view) {
            return !(view instanceof HeaderCell) || view.isClickable();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onDialogAnimationFinished() {
        this.dialogRemoveFinished = 0;
        this.dialogInsertFinished = 0;
        this.dialogChangeFinished = 0;
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.TopicsFragment$$ExternalSyntheticLambda27
            @Override // java.lang.Runnable
            public final void run() {
                TopicsFragment.$r8$lambda$FLNt20XBT5wm3vti4JCLvSVO00E();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void deleteTopics(final HashSet<Integer> hashSet, final Runnable runnable) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
        builder.setTitle(LocaleController.getPluralString("DeleteTopics", hashSet.size()));
        final ArrayList arrayList = new ArrayList(hashSet);
        if (hashSet.size() == 1) {
            builder.setMessage(LocaleController.formatString(C2665R.string.DeleteSelectedTopic, this.topicsController.findTopic(this.chatId, ((Integer) arrayList.get(0)).intValue()).title));
        } else {
            builder.setMessage(LocaleController.getString(C2665R.string.DeleteSelectedTopics));
        }
        builder.setPositiveButton(LocaleController.getString(C2665R.string.Delete), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.TopicsFragment$$ExternalSyntheticLambda18
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                this.f$0.lambda$deleteTopics$14(hashSet, arrayList, runnable, alertDialog, i);
            }
        });
        builder.setNegativeButton(LocaleController.getString(C2665R.string.Cancel), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.TopicsFragment$$ExternalSyntheticLambda19
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                alertDialog.dismiss();
            }
        });
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.show();
        TextView textView = (TextView) alertDialogCreate.getButton(-1);
        if (textView != null) {
            textView.setTextColor(getThemedColor(Theme.key_text_RedBold));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deleteTopics$14(HashSet hashSet, final ArrayList arrayList, final Runnable runnable, AlertDialog alertDialog, int i) {
        HashSet<Integer> hashSet2 = new HashSet<>();
        this.excludeTopics = hashSet2;
        hashSet2.addAll(hashSet);
        updateTopicsList(true, false);
        BulletinFactory.of(this).createUndoBulletin(LocaleController.getPluralString("TopicsDeleted", hashSet.size()), new Runnable() { // from class: org.telegram.ui.TopicsFragment$$ExternalSyntheticLambda25
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$deleteTopics$12();
            }
        }, new Runnable() { // from class: org.telegram.ui.TopicsFragment$$ExternalSyntheticLambda26
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$deleteTopics$13(arrayList, runnable);
            }
        }).show();
        clearSelectedTopics();
        alertDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deleteTopics$12() {
        this.excludeTopics = null;
        updateTopicsList(true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deleteTopics$13(ArrayList arrayList, Runnable runnable) {
        this.topicsController.deleteTopics(this.chatId, arrayList);
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean showChatPreview(DialogCell dialogCell) {
        try {
            dialogCell.performHapticFeedback(0);
        } catch (Exception unused) {
        }
        final ActionBarPopupWindow.ActionBarPopupWindowLayout[] actionBarPopupWindowLayoutArr = {new ActionBarPopupWindow.ActionBarPopupWindowLayout(getParentActivity(), C2665R.drawable.popup_fixed_alert, getResourceProvider(), 1)};
        final TLRPC.TL_forumTopic tL_forumTopic = dialogCell.forumTopic;
        ChatNotificationsPopupWrapper chatNotificationsPopupWrapper = new ChatNotificationsPopupWrapper(getContext(), this.currentAccount, actionBarPopupWindowLayoutArr[0].getSwipeBack(), false, false, new AnonymousClass19(tL_forumTopic), getResourceProvider());
        final int iAddViewToSwipeBack = actionBarPopupWindowLayoutArr[0].addViewToSwipeBack(chatNotificationsPopupWrapper.windowLayout);
        chatNotificationsPopupWrapper.type = 1;
        chatNotificationsPopupWrapper.lambda$update$11(-this.chatId, tL_forumTopic.id, null);
        if (ChatObject.canManageTopics(getCurrentChat())) {
            ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem(getParentActivity(), true, false);
            if (tL_forumTopic.pinned) {
                actionBarMenuSubItem.setTextAndIcon(LocaleController.getString(C2665R.string.DialogUnpin), C2665R.drawable.msg_unpin);
            } else {
                actionBarMenuSubItem.setTextAndIcon(LocaleController.getString(C2665R.string.DialogPin), C2665R.drawable.msg_pin);
            }
            actionBarMenuSubItem.setMinimumWidth(160);
            actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.TopicsFragment$$ExternalSyntheticLambda20
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$showChatPreview$16(tL_forumTopic, view);
                }
            });
            actionBarPopupWindowLayoutArr[0].addView(actionBarMenuSubItem);
        }
        ActionBarMenuSubItem actionBarMenuSubItem2 = new ActionBarMenuSubItem(getParentActivity(), false, false);
        if (getMessagesController().isDialogMuted(-this.chatId, tL_forumTopic.id)) {
            actionBarMenuSubItem2.setTextAndIcon(LocaleController.getString(C2665R.string.Unmute), C2665R.drawable.msg_mute);
        } else {
            actionBarMenuSubItem2.setTextAndIcon(LocaleController.getString(C2665R.string.Mute), C2665R.drawable.msg_unmute);
        }
        actionBarMenuSubItem2.setMinimumWidth(160);
        actionBarMenuSubItem2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.TopicsFragment$$ExternalSyntheticLambda21
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$showChatPreview$17(tL_forumTopic, actionBarPopupWindowLayoutArr, iAddViewToSwipeBack, view);
            }
        });
        actionBarPopupWindowLayoutArr[0].addView(actionBarMenuSubItem2);
        if (ChatObject.canManageTopic(this.currentAccount, getCurrentChat(), tL_forumTopic)) {
            ActionBarMenuSubItem actionBarMenuSubItem3 = new ActionBarMenuSubItem(getParentActivity(), false, false);
            if (tL_forumTopic.closed) {
                actionBarMenuSubItem3.setTextAndIcon(LocaleController.getString(C2665R.string.RestartTopic), C2665R.drawable.msg_topic_restart);
            } else {
                actionBarMenuSubItem3.setTextAndIcon(LocaleController.getString(C2665R.string.CloseTopic), C2665R.drawable.msg_topic_close);
            }
            actionBarMenuSubItem3.setMinimumWidth(160);
            actionBarMenuSubItem3.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.TopicsFragment$$ExternalSyntheticLambda22
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$showChatPreview$18(tL_forumTopic, view);
                }
            });
            actionBarPopupWindowLayoutArr[0].addView(actionBarMenuSubItem3);
        }
        if (ChatObject.canDeleteTopic(this.currentAccount, getCurrentChat(), tL_forumTopic)) {
            ActionBarMenuSubItem actionBarMenuSubItem4 = new ActionBarMenuSubItem(getParentActivity(), false, true);
            actionBarMenuSubItem4.setTextAndIcon(LocaleController.getPluralString("DeleteTopics", 1), C2665R.drawable.msg_delete);
            actionBarMenuSubItem4.setIconColor(getThemedColor(Theme.key_text_RedRegular));
            actionBarMenuSubItem4.setTextColor(getThemedColor(Theme.key_text_RedBold));
            actionBarMenuSubItem4.setMinimumWidth(160);
            actionBarMenuSubItem4.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.TopicsFragment$$ExternalSyntheticLambda23
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$showChatPreview$19(tL_forumTopic, view);
                }
            });
            actionBarPopupWindowLayoutArr[0].addView(actionBarMenuSubItem4);
        }
        boolean zIsMonoForum = getMessagesController().isMonoForum(-this.chatId);
        prepareBlurBitmap();
        Bundle bundle = new Bundle();
        bundle.putLong("chat_id", this.chatId);
        ChatActivity chatActivity = new ChatActivity(bundle);
        ForumUtilities.applyTopic(chatActivity, MessagesStorage.TopicKey.of(-this.chatId, zIsMonoForum ? DialogObject.getPeerDialogId(dialogCell.forumTopic.from_id) : r15.id));
        presentFragmentAsPreviewWithMenu(chatActivity, actionBarPopupWindowLayoutArr[0]);
        return false;
    }

    /* JADX INFO: renamed from: org.telegram.ui.TopicsFragment$19, reason: invalid class name */
    /* JADX INFO: loaded from: classes6.dex */
    public class AnonymousClass19 implements ChatNotificationsPopupWrapper.Callback {
        final /* synthetic */ TLRPC.TL_forumTopic val$topic;

        public AnonymousClass19(TLRPC.TL_forumTopic tL_forumTopic) {
            this.val$topic = tL_forumTopic;
        }

        @Override // org.telegram.ui.Components.ChatNotificationsPopupWrapper.Callback
        public void dismiss() {
            TopicsFragment.this.finishPreviewFragment();
        }

        @Override // org.telegram.ui.Components.ChatNotificationsPopupWrapper.Callback
        public void toggleSound() {
            SharedPreferences notificationsSettings = MessagesController.getNotificationsSettings(((BaseFragment) TopicsFragment.this).currentAccount);
            boolean z = notificationsSettings.getBoolean("sound_enabled_" + NotificationsController.getSharedPrefKey(-TopicsFragment.this.chatId, this.val$topic.id), true);
            boolean z2 = !z;
            notificationsSettings.edit().putBoolean("sound_enabled_" + NotificationsController.getSharedPrefKey(-TopicsFragment.this.chatId, this.val$topic.id), z2).apply();
            TopicsFragment.this.finishPreviewFragment();
            if (BulletinFactory.canShowBulletin(TopicsFragment.this)) {
                TopicsFragment topicsFragment = TopicsFragment.this;
                BulletinFactory.createSoundEnabledBulletin(topicsFragment, z ? 1 : 0, topicsFragment.getResourceProvider()).show();
            }
        }

        @Override // org.telegram.ui.Components.ChatNotificationsPopupWrapper.Callback
        public void muteFor(int i) {
            TopicsFragment.this.finishPreviewFragment();
            TopicsFragment topicsFragment = TopicsFragment.this;
            if (i != 0) {
                topicsFragment.getNotificationsController().muteUntil(-TopicsFragment.this.chatId, this.val$topic.id, i);
                if (BulletinFactory.canShowBulletin(TopicsFragment.this)) {
                    TopicsFragment topicsFragment2 = TopicsFragment.this;
                    BulletinFactory.createMuteBulletin(topicsFragment2, 5, i, topicsFragment2.getResourceProvider()).show();
                    return;
                }
                return;
            }
            if (topicsFragment.getMessagesController().isDialogMuted(-TopicsFragment.this.chatId, this.val$topic.id)) {
                TopicsFragment.this.getNotificationsController().muteDialog(-TopicsFragment.this.chatId, this.val$topic.id, false);
            }
            if (BulletinFactory.canShowBulletin(TopicsFragment.this)) {
                TopicsFragment topicsFragment3 = TopicsFragment.this;
                BulletinFactory.createMuteBulletin(topicsFragment3, 4, i, topicsFragment3.getResourceProvider()).show();
            }
        }

        @Override // org.telegram.ui.Components.ChatNotificationsPopupWrapper.Callback
        public void showCustomize() {
            TopicsFragment.this.finishPreviewFragment();
            final TLRPC.TL_forumTopic tL_forumTopic = this.val$topic;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.TopicsFragment$19$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$showCustomize$0(tL_forumTopic);
                }
            }, 500L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$showCustomize$0(TLRPC.TL_forumTopic tL_forumTopic) {
            Bundle bundle = new Bundle();
            bundle.putLong("dialog_id", -TopicsFragment.this.chatId);
            bundle.putLong("topic_id", tL_forumTopic.id);
            TopicsFragment topicsFragment = TopicsFragment.this;
            topicsFragment.presentFragment(new ProfileNotificationsActivity(bundle, topicsFragment.themeDelegate));
        }

        @Override // org.telegram.ui.Components.ChatNotificationsPopupWrapper.Callback
        public void toggleMute() {
            TopicsFragment.this.finishPreviewFragment();
            boolean zIsDialogMuted = TopicsFragment.this.getMessagesController().isDialogMuted(-TopicsFragment.this.chatId, this.val$topic.id);
            TopicsFragment.this.getNotificationsController().muteDialog(-TopicsFragment.this.chatId, this.val$topic.id, !zIsDialogMuted);
            if (BulletinFactory.canShowBulletin(TopicsFragment.this)) {
                TopicsFragment topicsFragment = TopicsFragment.this;
                BulletinFactory.createMuteBulletin(topicsFragment, !zIsDialogMuted ? 3 : 4, !zIsDialogMuted ? Integer.MAX_VALUE : 0, topicsFragment.getResourceProvider()).show();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showChatPreview$16(TLRPC.TL_forumTopic tL_forumTopic, View view) {
        this.scrollToTop = true;
        this.updateAnimated = true;
        this.topicsController.pinTopic(this.chatId, tL_forumTopic.id, !tL_forumTopic.pinned, this);
        finishPreviewFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showChatPreview$17(TLRPC.TL_forumTopic tL_forumTopic, ActionBarPopupWindow.ActionBarPopupWindowLayout[] actionBarPopupWindowLayoutArr, int i, View view) {
        if (getMessagesController().isDialogMuted(-this.chatId, tL_forumTopic.id)) {
            getNotificationsController().muteDialog(-this.chatId, tL_forumTopic.id, false);
            finishPreviewFragment();
            if (BulletinFactory.canShowBulletin(this)) {
                BulletinFactory.createMuteBulletin(this, 4, 0, getResourceProvider()).show();
                return;
            }
            return;
        }
        actionBarPopupWindowLayoutArr[0].getSwipeBack().openForeground(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showChatPreview$18(TLRPC.TL_forumTopic tL_forumTopic, View view) {
        this.updateAnimated = true;
        this.topicsController.toggleCloseTopic(this.chatId, tL_forumTopic.id, !tL_forumTopic.closed);
        finishPreviewFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showChatPreview$19(TLRPC.TL_forumTopic tL_forumTopic, View view) {
        HashSet<Integer> hashSet = new HashSet<>();
        hashSet.add(Integer.valueOf(tL_forumTopic.id));
        deleteTopics(hashSet, new Runnable() { // from class: org.telegram.ui.TopicsFragment$$ExternalSyntheticLambda28
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.finishPreviewFragment();
            }
        });
    }

    private void checkLoading() {
        this.loadingTopics = this.topicsController.isLoading(this.chatId);
        if (this.topicsEmptyView != null && (this.forumTopics.size() == 0 || (this.forumTopics.size() == 1 && this.forumTopics.get(0).topic != null && this.forumTopics.get(0).topic.id == 1))) {
            this.topicsEmptyView.showProgress(this.loadingTopics, this.fragmentBeginToShow);
        }
        TopicsRecyclerView topicsRecyclerView = this.recyclerListView;
        if (topicsRecyclerView != null) {
            topicsRecyclerView.checkIfEmpty();
        }
        updateCreateTopicButton(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void animateToSearchView(final boolean z) {
        RightSlidingDialogContainer rightSlidingDialogContainer;
        this.searching = z;
        ValueAnimator valueAnimator = this.searchAnimator;
        if (valueAnimator != null) {
            valueAnimator.removeAllListeners();
            this.searchAnimator.cancel();
        }
        if (this.searchTabsView == null) {
            ViewPagerFixed.TabsView tabsViewCreateTabsView = this.searchContainer.createTabsView(false, 8);
            this.searchTabsView = tabsViewCreateTabsView;
            if (this.parentDialogsActivity != null) {
                tabsViewCreateTabsView.setBackgroundColor(getThemedColor(Theme.key_windowBackgroundWhite));
            }
            this.fullscreenView.addView(this.searchTabsView, LayoutHelper.createFrame(-1, 44.0f));
        }
        this.searchAnimator = ValueAnimator.ofFloat(this.searchAnimationProgress, z ? 1.0f : 0.0f);
        AndroidUtilities.updateViewVisibilityAnimated(this.searchContainer, false, 1.0f, true);
        DialogsActivity dialogsActivity = this.parentDialogsActivity;
        if (dialogsActivity != null && (rightSlidingDialogContainer = dialogsActivity.rightSlidingDialogContainer) != null) {
            rightSlidingDialogContainer.enabled = !z;
        }
        this.animateSearchWithScale = !z && this.searchContainer.getVisibility() == 0 && this.searchContainer.getAlpha() == 1.0f;
        this.searchAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.TopicsFragment$$ExternalSyntheticLambda24
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f$0.lambda$animateToSearchView$20(valueAnimator2);
            }
        });
        this.searchContainer.setVisibility(0);
        if (!z) {
            this.other.setVisibility(0);
        } else {
            AndroidUtilities.requestAdjustResize(getParentActivity(), this.classGuid);
            updateCreateTopicButton(false);
        }
        this.searchAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.TopicsFragment.20
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                TopicsFragment.this.updateSearchProgress(z ? 1.0f : 0.0f);
                boolean z2 = z;
                TopicsFragment topicsFragment = TopicsFragment.this;
                if (!z2) {
                    AndroidUtilities.setAdjustResizeToNothing(topicsFragment.getParentActivity(), ((BaseFragment) TopicsFragment.this).classGuid);
                    TopicsFragment.this.searchContainer.setVisibility(8);
                    TopicsFragment.this.updateCreateTopicButton(true);
                    return;
                }
                topicsFragment.other.setVisibility(8);
            }
        });
        this.searchAnimator.setDuration(200L);
        this.searchAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
        this.searchAnimator.start();
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.needCheckSystemBarColors, Boolean.TRUE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateToSearchView$20(ValueAnimator valueAnimator) {
        updateSearchProgress(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCreateTopicButton(boolean z) {
        if (this.createTopicSubmenu == null) {
            return;
        }
        boolean z2 = (ChatObject.isNotInChat(getMessagesController().getChat(Long.valueOf(this.chatId))) || !ChatObject.canCreateTopic(getMessagesController().getChat(Long.valueOf(this.chatId))) || this.searching || this.openedForSelect || this.loadingTopics) ? false : true;
        this.canShowCreateTopic = z2;
        this.createTopicSubmenu.setVisibility(z2 ? 0 : 8);
        hideFloatingButton(!this.canShowCreateTopic, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSearchProgress(float f) {
        this.searchAnimationProgress = f;
        int themedColor = getThemedColor(Theme.key_actionBarDefaultIcon);
        ActionBar actionBar = this.actionBar;
        int i = Theme.key_actionBarActionModeDefaultIcon;
        actionBar.setItemsColor(ColorUtils.blendARGB(themedColor, getThemedColor(i), this.searchAnimationProgress), false);
        this.actionBar.setItemsColor(ColorUtils.blendARGB(getThemedColor(i), getThemedColor(i), this.searchAnimationProgress), true);
        this.actionBar.setItemsBackgroundColor(ColorUtils.blendARGB(getThemedColor(Theme.key_actionBarDefaultSelector), getThemedColor(Theme.key_actionBarActionModeDefaultSelector), this.searchAnimationProgress), false);
        if (!this.inPreviewMode) {
            this.actionBar.setBackgroundColor(ColorUtils.blendARGB(getThemedColor(Theme.key_actionBarDefault), getThemedColor(Theme.key_windowBackgroundWhite), this.searchAnimationProgress));
        }
        float f2 = 1.0f - f;
        this.avatarContainer.getTitleTextView().setAlpha(f2);
        this.avatarContainer.getSubtitleTextView().setAlpha(f2);
        ViewPagerFixed.TabsView tabsView = this.searchTabsView;
        if (tabsView != null) {
            tabsView.setTranslationY((-AndroidUtilities.dp(16.0f)) * f2);
            this.searchTabsView.setAlpha(f);
        }
        this.searchContainer.setTranslationY((-AndroidUtilities.dp(16.0f)) * f2);
        this.searchContainer.setAlpha(f);
        if (isInPreviewMode()) {
            this.fullscreenView.invalidate();
        }
        this.contentView.invalidate();
        this.recyclerListView.setAlpha(f2);
        if (this.animateSearchWithScale) {
            float f3 = ((1.0f - this.searchAnimationProgress) * 0.02f) + 0.98f;
            this.recyclerListView.setScaleX(f3);
            this.recyclerListView.setScaleY(f3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void joinToGroup() {
        getMessagesController().addUserToChat(this.chatId, getUserConfig().getCurrentUser(), 0, null, this, false, new Runnable() { // from class: org.telegram.ui.TopicsFragment$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$joinToGroup$21();
            }
        }, new MessagesController.ErrorDelegate() { // from class: org.telegram.ui.TopicsFragment$$ExternalSyntheticLambda17
            @Override // org.telegram.messenger.MessagesController.ErrorDelegate
            public final boolean run(TLRPC.TL_error tL_error) {
                return this.f$0.lambda$joinToGroup$22(tL_error);
            }
        });
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.closeSearchByActiveAction, new Object[0]);
        updateChatInfo();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$joinToGroup$21() {
        this.joinRequested = false;
        updateChatInfo(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$joinToGroup$22(TLRPC.TL_error tL_error) {
        if (tL_error == null || !"INVITE_REQUEST_SENT".equals(tL_error.text)) {
            return true;
        }
        MessagesController.getNotificationsSettings(this.currentAccount).edit().putLong("dialog_join_requested_time_" + (-this.chatId), System.currentTimeMillis()).apply();
        JoinGroupAlert.showBulletin(getContext(), this, ChatObject.isChannelAndNotMegaGroup(getCurrentChat()));
        updateChatInfo(true);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearSelectedTopics() {
        this.selectedTopics.clear();
        this.actionBar.hideActionMode();
        AndroidUtilities.updateVisibleRows(this.recyclerListView);
        updateReordering();
    }

    private void toggleSelection(View view) {
        toggleSelection(view instanceof TopicDialogCell ? ((TopicDialogCell) view).forumTopic : null, view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:124:0x016f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x016d A[PHI: r7
  0x016d: PHI (r7v4 int) = (r7v3 int), (r7v6 int) binds: [B:56:0x013c, B:61:0x014e] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void toggleSelection(TLRPC.TL_forumTopic tL_forumTopic, View view) {
        if (tL_forumTopic == null) {
            return;
        }
        int i = tL_forumTopic.id;
        if (!this.selectedTopics.remove(Integer.valueOf(i))) {
            this.selectedTopics.add(Integer.valueOf(i));
        }
        if (view instanceof TopicDialogCell) {
            ((TopicDialogCell) view).setChecked(this.selectedTopics.contains(Integer.valueOf(i)), true);
        }
        TLRPC.Chat chat = getMessagesController().getChat(Long.valueOf(this.chatId));
        if (!this.selectedTopics.isEmpty()) {
            chekActionMode();
            if (this.inPreviewMode) {
                ((View) this.fragmentView.getParent()).invalidate();
            }
            this.actionBar.showActionMode(true);
            Iterator<Integer> it = this.selectedTopics.iterator();
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            int i5 = 0;
            while (it.hasNext()) {
                long jIntValue = it.next().intValue();
                TLRPC.TL_forumTopic tL_forumTopicFindTopic = this.topicsController.findTopic(this.chatId, jIntValue);
                if (tL_forumTopicFindTopic != null) {
                    if (tL_forumTopicFindTopic.unread_count != 0) {
                        i2++;
                    }
                    if (ChatObject.canManageTopics(chat) && !tL_forumTopicFindTopic.hidden) {
                        if (tL_forumTopicFindTopic.pinned) {
                            i5++;
                        } else {
                            i4++;
                        }
                    }
                }
                if (getMessagesController().isDialogMuted(-this.chatId, jIntValue)) {
                    i3++;
                }
            }
            ActionBarMenuSubItem actionBarMenuSubItem = this.readItem;
            if (i2 > 0) {
                actionBarMenuSubItem.setVisibility(0);
                this.readItem.setTextAndIcon(LocaleController.getString(C2665R.string.MarkAsRead), C2665R.drawable.msg_markread);
            } else {
                actionBarMenuSubItem.setVisibility(8);
            }
            if (i3 != 0) {
                this.mute = false;
                this.muteItem.setIcon(C2665R.drawable.msg_unmute);
                this.muteItem.setContentDescription(LocaleController.getString(C2665R.string.ChatsUnmute));
            } else {
                this.mute = true;
                this.muteItem.setIcon(C2665R.drawable.msg_mute);
                this.muteItem.setContentDescription(LocaleController.getString(C2665R.string.ChatsMute));
            }
            this.pinItem.setVisibility((i4 == 1 && i5 == 0) ? 0 : 8);
            this.unpinItem.setVisibility((i5 == 1 && i4 == 0) ? 0 : 8);
            this.selectedDialogsCountTextView.setNumber(this.selectedTopics.size(), true);
            Iterator<Integer> it2 = this.selectedTopics.iterator();
            int i6 = 0;
            int i7 = 0;
            int i8 = 0;
            int i9 = 0;
            int i10 = 0;
            while (it2.hasNext()) {
                int i11 = i10;
                TLRPC.TL_forumTopic tL_forumTopicFindTopic2 = this.topicsController.findTopic(this.chatId, it2.next().intValue());
                if (tL_forumTopicFindTopic2 == null) {
                    i10 = i11;
                } else {
                    if (ChatObject.canDeleteTopic(this.currentAccount, chat, tL_forumTopicFindTopic2)) {
                        i8++;
                    }
                    if (ChatObject.canManageTopic(this.currentAccount, chat, tL_forumTopicFindTopic2)) {
                        if (tL_forumTopicFindTopic2.id == 1) {
                            if (tL_forumTopicFindTopic2.hidden) {
                                i10 = i11 + 1;
                                if (!tL_forumTopicFindTopic2.hidden) {
                                }
                            } else {
                                i9++;
                                i10 = i11;
                                if (!tL_forumTopicFindTopic2.hidden) {
                                }
                            }
                        } else {
                            i10 = i11;
                            if (!tL_forumTopicFindTopic2.hidden) {
                                if (tL_forumTopicFindTopic2.closed) {
                                    i6++;
                                } else {
                                    i7++;
                                }
                            }
                        }
                    }
                }
            }
            int i12 = i10;
            this.closeTopic.setVisibility((i6 != 0 || i7 <= 0) ? 8 : 0);
            this.closeTopic.setText(LocaleController.getString(i7 > 1 ? C2665R.string.CloseTopics : C2665R.string.CloseTopic));
            this.restartTopic.setVisibility((i7 != 0 || i6 <= 0) ? 8 : 0);
            this.restartTopic.setText(LocaleController.getString(i6 > 1 ? C2665R.string.RestartTopics : C2665R.string.RestartTopic));
            this.deleteItem.setVisibility(i8 == this.selectedTopics.size() ? 0 : 8);
            this.hideItem.setVisibility((i9 == 1 && this.selectedTopics.size() == 1) ? 0 : 8);
            this.showItem.setVisibility((i12 == 1 && this.selectedTopics.size() == 1) ? 0 : 8);
            this.otherItem.checkHideMenuItem();
            updateReordering();
            return;
        }
        this.actionBar.hideActionMode();
    }

    private void startMultiselect(int i) {
        TLRPC.TL_forumTopic topicForMultiselect = getTopicForMultiselect(i);
        if (topicForMultiselect == null) {
            return;
        }
        final boolean z = !this.selectedTopics.contains(Integer.valueOf(topicForMultiselect.id));
        final HashSet hashSet = new HashSet(this.selectedTopics);
        this.recyclerListView.startMultiselect(i, false, new RecyclerListView.onMultiSelectionChanged() { // from class: org.telegram.ui.TopicsFragment.21
            @Override // org.telegram.ui.Components.RecyclerListView.onMultiSelectionChanged
            public int checkPosition(int i2, boolean z2) {
                return i2;
            }

            @Override // org.telegram.ui.Components.RecyclerListView.onMultiSelectionChanged
            public boolean limitReached() {
                return false;
            }

            @Override // org.telegram.ui.Components.RecyclerListView.onMultiSelectionChanged
            public void onSelectionChanged(int i2, boolean z2, float f, float f2) {
                TLRPC.TL_forumTopic topicForMultiselect2 = TopicsFragment.this.getTopicForMultiselect(i2);
                if (topicForMultiselect2 == null) {
                    return;
                }
                if (z) {
                    z2 = !z2;
                }
                if (z2 == TopicsFragment.this.selectedTopics.contains(Integer.valueOf(topicForMultiselect2.id))) {
                    return;
                }
                RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition = TopicsFragment.this.recyclerListView.findViewHolderForAdapterPosition(i2);
                TopicsFragment.this.toggleSelection(topicForMultiselect2, viewHolderFindViewHolderForAdapterPosition != null ? viewHolderFindViewHolderForAdapterPosition.itemView : null);
            }

            @Override // org.telegram.ui.Components.RecyclerListView.onMultiSelectionChanged
            public boolean canSelect(int i2) {
                TLRPC.TL_forumTopic topicForMultiselect2 = TopicsFragment.this.getTopicForMultiselect(i2);
                if (topicForMultiselect2 == null) {
                    return false;
                }
                boolean z2 = z;
                HashSet hashSet2 = hashSet;
                if (z2) {
                    return hashSet2.contains(Integer.valueOf(topicForMultiselect2.id));
                }
                return !hashSet2.contains(Integer.valueOf(topicForMultiselect2.id));
            }

            @Override // org.telegram.ui.Components.RecyclerListView.onMultiSelectionChanged
            public void getPaddings(int[] iArr) {
                iArr[0] = TopicsFragment.this.recyclerListView.getPaddingTop();
                iArr[1] = TopicsFragment.this.recyclerListView.getPaddingBottom();
            }

            @Override // org.telegram.ui.Components.RecyclerListView.onMultiSelectionChanged
            public void scrollBy(int i2) {
                TopicsFragment.this.recyclerListView.scrollBy(0, i2);
            }

            @Override // org.telegram.ui.Components.RecyclerListView.onMultiSelectionChanged
            public int getStartDragDistance() {
                return AndroidUtilities.dp(24.0f);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public TLRPC.TL_forumTopic getTopicForMultiselect(int i) {
        Item item;
        ArrayList<Item> array = this.adapter.getArray();
        if (i < 0 || i >= array.size() || (item = array.get(i)) == null || item.viewType != 0) {
            return null;
        }
        return item.topic;
    }

    public void updateReordering() {
        boolean z = ChatObject.canManageTopics(getCurrentChat()) && !this.selectedTopics.isEmpty();
        if (this.reordering != z) {
            this.reordering = z;
            Adapter adapter = this.adapter;
            adapter.notifyItemRangeChanged(0, adapter.getItemCount());
        }
    }

    public void sendReorder() {
        ArrayList<Integer> arrayList = new ArrayList<>();
        for (int i = 0; i < this.forumTopics.size(); i++) {
            TLRPC.TL_forumTopic tL_forumTopic = this.forumTopics.get(i).topic;
            if (tL_forumTopic != null && tL_forumTopic.pinned) {
                arrayList.add(Integer.valueOf(tL_forumTopic.id));
            }
        }
        getMessagesController().getTopicsController().reorderPinnedTopics(this.chatId, arrayList);
        this.ignoreDiffUtil = true;
    }

    private void chekActionMode() {
        if (this.actionBar.actionModeIsExist(null)) {
            return;
        }
        ActionBarMenu actionBarMenuCreateActionMode = this.actionBar.createActionMode(false, null);
        if (this.inPreviewMode) {
            actionBarMenuCreateActionMode.setBackgroundColor(0);
            actionBarMenuCreateActionMode.drawBlur = false;
        }
        NumberTextView numberTextView = new NumberTextView(actionBarMenuCreateActionMode.getContext());
        this.selectedDialogsCountTextView = numberTextView;
        numberTextView.setTextSize(18);
        this.selectedDialogsCountTextView.setTypeface(AndroidUtilities.bold());
        this.selectedDialogsCountTextView.setTextColor(getThemedColor(Theme.key_actionBarActionModeDefaultIcon));
        actionBarMenuCreateActionMode.addView(this.selectedDialogsCountTextView, LayoutHelper.createLinear(0, -1, 1.0f, 72, 0, 0, 0));
        this.selectedDialogsCountTextView.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.TopicsFragment$$ExternalSyntheticLambda15
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return TopicsFragment.m21983$r8$lambda$B9FQdM7bbI9iAujIrU2_EznkL8(view, motionEvent);
            }
        });
        this.pinItem = actionBarMenuCreateActionMode.addItemWithWidth(4, C2665R.drawable.msg_pin, AndroidUtilities.dp(54.0f));
        this.unpinItem = actionBarMenuCreateActionMode.addItemWithWidth(5, C2665R.drawable.msg_unpin, AndroidUtilities.dp(54.0f));
        this.muteItem = actionBarMenuCreateActionMode.addItemWithWidth(6, C2665R.drawable.msg_mute, AndroidUtilities.dp(54.0f));
        this.deleteItem = actionBarMenuCreateActionMode.addItemWithWidth(7, C2665R.drawable.msg_delete, AndroidUtilities.dp(54.0f), LocaleController.getString(C2665R.string.Delete));
        ActionBarMenuItem actionBarMenuItemAddItemWithWidth = actionBarMenuCreateActionMode.addItemWithWidth(12, C2665R.drawable.msg_archive_hide, AndroidUtilities.dp(54.0f), LocaleController.getString(C2665R.string.Hide));
        this.hideItem = actionBarMenuItemAddItemWithWidth;
        actionBarMenuItemAddItemWithWidth.setVisibility(8);
        ActionBarMenuItem actionBarMenuItemAddItemWithWidth2 = actionBarMenuCreateActionMode.addItemWithWidth(13, C2665R.drawable.msg_archive_show, AndroidUtilities.dp(54.0f), LocaleController.getString(C2665R.string.Show));
        this.showItem = actionBarMenuItemAddItemWithWidth2;
        actionBarMenuItemAddItemWithWidth2.setVisibility(8);
        ActionBarMenuItem actionBarMenuItemAddItemWithWidth3 = actionBarMenuCreateActionMode.addItemWithWidth(0, C2665R.drawable.ic_ab_other, AndroidUtilities.dp(54.0f), LocaleController.getString(C2665R.string.AccDescrMoreOptions));
        this.otherItem = actionBarMenuItemAddItemWithWidth3;
        this.readItem = actionBarMenuItemAddItemWithWidth3.addSubItem(8, C2665R.drawable.msg_markread, LocaleController.getString(C2665R.string.MarkAsRead));
        this.closeTopic = this.otherItem.addSubItem(9, C2665R.drawable.msg_topic_close, LocaleController.getString(C2665R.string.CloseTopic));
        this.restartTopic = this.otherItem.addSubItem(10, C2665R.drawable.msg_topic_restart, LocaleController.getString(C2665R.string.RestartTopic));
    }

    /* JADX INFO: renamed from: $r8$lambda$B9FQdM7bbI9iAujI-rU2_EznkL8, reason: not valid java name */
    public static /* synthetic */ boolean m21983$r8$lambda$B9FQdM7bbI9iAujIrU2_EznkL8(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: loaded from: classes6.dex */
    public class TouchHelperCallback extends ItemTouchHelper.Callback {
        private RecyclerView.ViewHolder currentItemViewHolder;
        private boolean swipeFolderBack;
        private boolean swipingFolder;

        public TouchHelperCallback() {
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public boolean isLongPressDragEnabled() {
            return !TopicsFragment.this.selectedTopics.isEmpty();
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public int getMovementFlags(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
            int adapterPosition = viewHolder.getAdapterPosition();
            if (adapterPosition < 0 || adapterPosition >= TopicsFragment.this.forumTopics.size() || TopicsFragment.this.forumTopics.get(adapterPosition).topic == null || !ChatObject.canManageTopics(TopicsFragment.this.getCurrentChat())) {
                return ItemTouchHelper.Callback.makeMovementFlags(0, 0);
            }
            TLRPC.TL_forumTopic tL_forumTopic = TopicsFragment.this.forumTopics.get(adapterPosition).topic;
            if (TopicsFragment.this.selectedTopics.isEmpty()) {
                View view = viewHolder.itemView;
                if ((view instanceof TopicDialogCell) && tL_forumTopic.id == 1) {
                    this.swipeFolderBack = false;
                    this.swipingFolder = true;
                    ((TopicDialogCell) view).setSliding(true);
                    return ItemTouchHelper.Callback.makeMovementFlags(0, 4);
                }
            }
            if (!tL_forumTopic.pinned) {
                return ItemTouchHelper.Callback.makeMovementFlags(0, 0);
            }
            return ItemTouchHelper.Callback.makeMovementFlags(3, 0);
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public boolean onMove(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
            int adapterPosition;
            if (viewHolder.getItemViewType() != viewHolder2.getItemViewType() || (adapterPosition = viewHolder2.getAdapterPosition()) < 0 || adapterPosition >= TopicsFragment.this.forumTopics.size() || TopicsFragment.this.forumTopics.get(adapterPosition).topic == null || !TopicsFragment.this.forumTopics.get(adapterPosition).topic.pinned) {
                return false;
            }
            TopicsFragment.this.adapter.swapElements(viewHolder.getAdapterPosition(), viewHolder2.getAdapterPosition());
            return true;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void onChildDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, float f, float f2, int i, boolean z) {
            super.onChildDraw(canvas, recyclerView, viewHolder, f, f2, i, z);
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void onSelectedChanged(RecyclerView.ViewHolder viewHolder, int i) {
            TopicsFragment topicsFragment = TopicsFragment.this;
            if (i == 0) {
                topicsFragment.sendReorder();
            } else {
                topicsFragment.recyclerListView.cancelClickRunnables(false);
                viewHolder.itemView.setPressed(true);
            }
            super.onSelectedChanged(viewHolder, i);
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void onSwiped(RecyclerView.ViewHolder viewHolder, int i) {
            if (viewHolder != null) {
                TopicDialogCell topicDialogCell = (TopicDialogCell) viewHolder.itemView;
                if (topicDialogCell.forumTopic != null) {
                    TopicsController topicsController = TopicsFragment.this.getMessagesController().getTopicsController();
                    long j = TopicsFragment.this.chatId;
                    TLRPC.TL_forumTopic tL_forumTopic = topicDialogCell.forumTopic;
                    topicsController.toggleShowTopic(j, tL_forumTopic.id, tL_forumTopic.hidden);
                }
                TopicsFragment.this.generalTopicViewMoving = topicDialogCell;
                TopicsFragment.this.recyclerListView.setArchiveHidden(!topicDialogCell.forumTopic.hidden, topicDialogCell);
                TopicsFragment.this.updateTopicsList(true, true);
                if (topicDialogCell.currentTopic != null) {
                    topicDialogCell.setTopicIcon(topicDialogCell.currentTopic);
                }
            }
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public void clearView(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
            super.clearView(recyclerView, viewHolder);
            viewHolder.itemView.setPressed(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateChatInfo() {
        updateChatInfo(false);
    }

    /* JADX WARN: Removed duplicated region for block: B:111:0x028b  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x028d  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0299  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x029b  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x02c1  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x02d5  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x023e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void updateChatInfo(boolean z) {
        final boolean z2;
        boolean z3;
        if (this.fragmentView == null || this.avatarContainer == null) {
            return;
        }
        TLRPC.Chat chat = getMessagesController().getChat(Long.valueOf(this.chatId));
        TLRPC.User user = getMessagesController().getUser(Long.valueOf(-this.chatId));
        if (UserObject.isBotForum(user)) {
            this.avatarContainer.setUserAvatar(user);
        } else if (ChatObject.isMonoForum(chat)) {
            TLRPC.Chat chat2 = getMessagesController().getChat(Long.valueOf(chat.linked_monoforum_id));
            if (chat2 != null) {
                this.avatarContainer.setChatAvatar(chat2);
            }
        } else {
            this.avatarContainer.setChatAvatar(chat);
        }
        long j = -this.chatId;
        SharedPreferences notificationsSettings = MessagesController.getNotificationsSettings(this.currentAccount);
        StringBuilder sb = new StringBuilder("dialog_bar_vis3");
        sb.append(j);
        boolean z4 = notificationsSettings.getInt(sb.toString(), 0) == 2;
        boolean z5 = notificationsSettings.getBoolean("dialog_bar_report" + (-this.chatId), false);
        boolean z6 = notificationsSettings.getBoolean("dialog_bar_block" + (-this.chatId), false);
        int i = 8;
        if (!this.openedForSelect) {
            if (chat != null) {
                this.avatarContainer.setTitle(chat.title);
                this.avatarContainer.setTitleIcons(null, getMessagesController().isDialogMuted(-this.chatId, 0L) ? getThemedDrawable("drawableMuteIcon") : null);
            }
            updateSubtitle();
        } else {
            if (this.openedForReply) {
                this.avatarContainer.setTitle(LocaleController.getString(C2665R.string.ReplyToDialog));
            } else if (this.openedForQuote) {
                this.avatarContainer.setTitle(LocaleController.getString(C2665R.string.QuoteTo));
            } else if (this.openedForBotShare) {
                this.avatarContainer.setTitle(LocaleController.getString(C2665R.string.BotShareToTopic));
            } else {
                boolean z7 = this.openedForForward;
                ChatAvatarContainer chatAvatarContainer = this.avatarContainer;
                if (z7) {
                    chatAvatarContainer.setTitle(LocaleController.getString(C2665R.string.ForwardTo));
                } else {
                    chatAvatarContainer.setTitle(LocaleController.getString(C2665R.string.SelectTopic));
                }
            }
            this.searchItem.setVisibility(8);
            ChatAvatarContainer chatAvatarContainer2 = this.avatarContainer;
            if (chatAvatarContainer2 != null && chatAvatarContainer2.getLayoutParams() != null) {
                ((ViewGroup.MarginLayoutParams) this.avatarContainer.getLayoutParams()).rightMargin = AndroidUtilities.dp(this.searchItem.getVisibility() == 0 ? 86.0f : 40.0f);
            }
            ChatAvatarContainer chatAvatarContainer3 = this.avatarContainer;
            if (chatAvatarContainer3 != null) {
                chatAvatarContainer3.updateSubtitle();
            }
            this.avatarContainer.getSubtitleTextView().setVisibility(8);
        }
        boolean z8 = this.fragmentBeginToShow || z;
        long j2 = MessagesController.getNotificationsSettings(this.currentAccount).getLong("dialog_join_requested_time_" + (-this.chatId), -1L);
        if (chat != null && ChatObject.isNotInChat(chat) && j2 > 0 && System.currentTimeMillis() - j2 < 120000) {
            this.bottomOverlayChatText.setText(LocaleController.getString(C2665R.string.ChannelJoinRequestSent), z8);
            this.bottomOverlayChatText.setEnabled(false);
            AndroidUtilities.updateViewVisibilityAnimated(this.bottomOverlayProgress, false, 0.5f, z8);
            AndroidUtilities.updateViewVisibilityAnimated(this.bottomOverlayChatText, true, 0.5f, z8);
            setButtonType(0);
        } else if (chat != null && !this.openedForSelect && (ChatObject.isNotInChat(chat) || getMessagesController().isJoiningChannel(chat.id))) {
            if (getMessagesController().isJoiningChannel(chat.id)) {
                z3 = true;
            } else {
                boolean z9 = chat.join_request;
                UnreadCounterTextView unreadCounterTextView = this.bottomOverlayChatText;
                if (z9) {
                    unreadCounterTextView.setText(LocaleController.getString(C2665R.string.ChannelJoinRequest));
                } else {
                    unreadCounterTextView.setText(LocaleController.getString(C2665R.string.ChannelJoin));
                }
                this.bottomOverlayChatText.setClickable(true);
                this.bottomOverlayChatText.setEnabled(true);
                z3 = false;
            }
            AndroidUtilities.updateViewVisibilityAnimated(this.bottomOverlayProgress, z3, 0.5f, z8);
            AndroidUtilities.updateViewVisibilityAnimated(this.bottomOverlayChatText, !z3, 0.5f, z8);
            setButtonType(0);
        } else if (z4 && (z6 || z5)) {
            this.bottomOverlayChatText.setText(LocaleController.getString(C2665R.string.ReportSpamAndLeaveNoCaps));
            this.bottomOverlayChatText.setClickable(true);
            this.bottomOverlayChatText.setEnabled(true);
            AndroidUtilities.updateViewVisibilityAnimated(this.bottomOverlayProgress, false, 0.5f, false);
            AndroidUtilities.updateViewVisibilityAnimated(this.bottomOverlayChatText, true, 0.5f, false);
            setButtonType(1);
        } else {
            z2 = false;
            if (this.bottomPannelVisible != z2) {
                this.bottomPannelVisible = z2;
                this.bottomOverlayContainer.animate().setListener(null).cancel();
                FrameLayout frameLayout = this.bottomOverlayContainer;
                if (z8) {
                    frameLayout.animate().translationY(z2 ? 0.0f : AndroidUtilities.dp(53.0f)).setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.TopicsFragment.22
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            if (z2) {
                                return;
                            }
                            TopicsFragment.this.bottomOverlayContainer.setVisibility(8);
                        }
                    });
                } else {
                    frameLayout.setVisibility(z2 ? 0 : 8);
                    this.bottomOverlayContainer.setTranslationY(z2 ? 0.0f : AndroidUtilities.dp(53.0f));
                }
            }
            checkUi_listViewPadding();
            this.other.setVisibility(!this.openedForSelect ? 8 : 0);
            this.addMemberSubMenu.setVisibility(!ChatObject.canAddUsers(chat) ? 0 : 8);
            this.boostGroupSubmenu.setVisibility((ChatObject.isBoostSupported(chat) || !(getUserConfig().isPremium() || ChatObject.isBoosted(this.chatFull) || ChatObject.hasAdminRights(chat))) ? 8 : 0);
            this.deleteChatSubmenu.setVisibility((chat != null || chat.creator || ChatObject.isNotInChat(chat)) ? 8 : 0);
            ActionBarMenuSubItem actionBarMenuSubItem = this.reportSubmenu;
            if (chat != null && !chat.creator && !ChatObject.hasAdminRights(chat)) {
                i = 0;
            }
            actionBarMenuSubItem.setVisibility(i);
            updateCreateTopicButton(true);
            this.groupCall = getMessagesController().getGroupCall(this.chatId, true);
            checkGroupCallJoin(false);
        }
        z2 = true;
        if (this.bottomPannelVisible != z2) {
        }
        checkUi_listViewPadding();
        this.other.setVisibility(!this.openedForSelect ? 8 : 0);
        this.addMemberSubMenu.setVisibility(!ChatObject.canAddUsers(chat) ? 0 : 8);
        this.boostGroupSubmenu.setVisibility((ChatObject.isBoostSupported(chat) || !(getUserConfig().isPremium() || ChatObject.isBoosted(this.chatFull) || ChatObject.hasAdminRights(chat))) ? 8 : 0);
        this.deleteChatSubmenu.setVisibility((chat != null || chat.creator || ChatObject.isNotInChat(chat)) ? 8 : 0);
        ActionBarMenuSubItem actionBarMenuSubItem2 = this.reportSubmenu;
        if (chat != null) {
            i = 0;
        }
        actionBarMenuSubItem2.setVisibility(i);
        updateCreateTopicButton(true);
        this.groupCall = getMessagesController().getGroupCall(this.chatId, true);
        checkGroupCallJoin(false);
    }

    private void setButtonType(int i) {
        if (this.bottomButtonType != i) {
            this.bottomButtonType = i;
            this.bottomOverlayChatText.setTextColorKey(i == 0 ? Theme.key_chat_fieldOverlayText : Theme.key_text_RedBold);
            this.closeReportSpam.setVisibility(i == 1 ? 0 : 8);
            updateChatInfo();
        }
    }

    private void updateSubtitle() {
        String string;
        TLRPC.ChatFull chatFull;
        TLRPC.ChatParticipants chatParticipants;
        TLRPC.ChatFull chatFull2 = getMessagesController().getChatFull(this.chatId);
        if (chatFull2 != null && (chatFull = this.chatFull) != null && (chatParticipants = chatFull.participants) != null) {
            chatFull2.participants = chatParticipants;
        }
        this.chatFull = chatFull2;
        if (chatFull2 != null) {
            int i = chatFull2.participants_count;
            if (i <= 0) {
                TLRPC.Chat chat = getMessagesController().getChat(Long.valueOf(this.chatId));
                if (chat == null) {
                    string = LocaleController.getString(C2665R.string.Loading);
                } else if (ChatObject.isPublic(chat)) {
                    string = LocaleController.getString(C2665R.string.MegaPublic).toLowerCase();
                } else {
                    string = LocaleController.getString(C2665R.string.MegaPrivate).toLowerCase();
                }
            } else {
                string = LocaleController.formatPluralString("Members", i, new Object[0]);
            }
        } else {
            string = LocaleController.getString(C2665R.string.Loading);
        }
        this.avatarContainer.setSubtitle(string);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        getMessagesController().loadFullChat(this.chatId, 0, true);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.storiesUpdated);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.chatWasBoostedByUser);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.chatInfoDidLoad);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.topicsDidLoaded);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.updateInterfaces);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.dialogsNeedReload);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.groupCallUpdated);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.notificationsSettingsUpdated);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.chatSwitchedForum);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.closeChats);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.openedChatChanged);
        updateTopicsList(false, false);
        SelectAnimatedEmojiDialog.preload(this.currentAccount);
        TLRPC.Chat chat = getMessagesController().getChat(Long.valueOf(this.chatId));
        if (ChatObject.isChannel(chat)) {
            getMessagesController().startShortPoll(chat, this.classGuid, false);
        }
        if (!settingsPreloaded.contains(Long.valueOf(this.chatId))) {
            settingsPreloaded.add(Long.valueOf(this.chatId));
            TL_account.getNotifyExceptions getnotifyexceptions = new TL_account.getNotifyExceptions();
            TLRPC.TL_inputNotifyPeer tL_inputNotifyPeer = new TLRPC.TL_inputNotifyPeer();
            getnotifyexceptions.peer = tL_inputNotifyPeer;
            getnotifyexceptions.flags |= 1;
            tL_inputNotifyPeer.peer = getMessagesController().getInputPeer(-this.chatId);
            getConnectionsManager().sendRequest(getnotifyexceptions, null);
        }
        return true;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        this.notificationsLocker.unlock();
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.storiesUpdated);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.chatWasBoostedByUser);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.chatInfoDidLoad);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.topicsDidLoaded);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.updateInterfaces);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.dialogsNeedReload);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.groupCallUpdated);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.notificationsSettingsUpdated);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.chatSwitchedForum);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.closeChats);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.openedChatChanged);
        TLRPC.Chat chat = getMessagesController().getChat(Long.valueOf(this.chatId));
        if (ChatObject.isChannel(chat)) {
            getMessagesController().startShortPoll(chat, this.classGuid, true);
        }
        super.onFragmentDestroy();
        DialogsActivity dialogsActivity = this.parentDialogsActivity;
        if (dialogsActivity != null && dialogsActivity.rightSlidingDialogContainer != null) {
            dialogsActivity.getActionBar().setSearchAvatarImageView(null);
            this.parentDialogsActivity.rightSlidingDialogContainer.enabled = true;
        }
        ChatAvatarContainer chatAvatarContainer = this.avatarContainer;
        if (chatAvatarContainer != null) {
            chatAvatarContainer.onDestroy(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTopicsList(boolean z, boolean z2) {
        LinearLayoutManager linearLayoutManager;
        TLRPC.TL_forumTopic tL_forumTopic;
        if (!z && this.updateAnimated) {
            z = true;
        }
        this.updateAnimated = false;
        ArrayList<TLRPC.TL_forumTopic> topics = this.topicsController.getTopics(this.chatId);
        if (topics != null) {
            int size = this.forumTopics.size();
            ArrayList<? extends AdapterWithDiffUtils.Item> arrayList = new ArrayList<>(this.forumTopics);
            this.forumTopics.clear();
            if (UserObject.isBotForum(this.currentAccount, -this.chatId) && this.openedForForward) {
                this.forumTopics.add(new Item(3, null));
            }
            for (int i = 0; i < topics.size(); i++) {
                HashSet<Integer> hashSet = this.excludeTopics;
                if (hashSet == null || !hashSet.contains(Integer.valueOf(topics.get(i).id))) {
                    this.forumTopics.add(new Item(0, topics.get(i)));
                }
            }
            if (!this.forumTopics.isEmpty() && !this.topicsController.endIsReached(this.chatId) && this.canShowProgress) {
                this.forumTopics.add(new Item(1, null));
            }
            int size2 = this.forumTopics.size();
            if (this.fragmentBeginToShow && z2 && size2 > size) {
                this.itemsEnterAnimator.showItemsAnimated(size + 4);
                z = false;
            }
            this.hiddenCount = 0;
            for (int i2 = 0; i2 < this.forumTopics.size(); i2++) {
                Item item = this.forumTopics.get(i2);
                if (item != null && (tL_forumTopic = item.topic) != null && tL_forumTopic.hidden) {
                    this.hiddenCount++;
                }
            }
            TopicsRecyclerView topicsRecyclerView = this.recyclerListView;
            if (topicsRecyclerView != null) {
                if (topicsRecyclerView.getItemAnimator() != (z ? this.itemAnimator : null)) {
                    this.recyclerListView.setItemAnimator(z ? this.itemAnimator : null);
                }
            }
            Adapter adapter = this.adapter;
            if (adapter != null) {
                adapter.setItems(arrayList, this.forumTopics);
            }
            if ((this.scrollToTop || size == 0) && (linearLayoutManager = this.layoutManager) != null) {
                linearLayoutManager.scrollToPositionWithOffset(0, 0);
                this.scrollToTop = false;
            }
        }
        checkLoading();
        updateTopicsEmptyViewText();
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        TLRPC.ChatFull chatFull;
        if (i == NotificationCenter.chatInfoDidLoad) {
            TLRPC.ChatFull chatFull2 = (TLRPC.ChatFull) objArr[0];
            TLRPC.ChatParticipants chatParticipants = chatFull2.participants;
            if (chatParticipants != null && (chatFull = this.chatFull) != null) {
                chatFull.participants = chatParticipants;
            }
            if (chatFull2.id == this.chatId) {
                updateChatInfo();
                ChatActivityMemberRequestsDelegate chatActivityMemberRequestsDelegate = this.pendingRequestsDelegate;
                if (chatActivityMemberRequestsDelegate != null) {
                    chatActivityMemberRequestsDelegate.setChatInfo(chatFull2, true);
                }
                checkGroupCallJoin(((Boolean) objArr[3]).booleanValue());
            }
        } else if (i == NotificationCenter.storiesUpdated) {
            updateChatInfo();
        } else if (i == NotificationCenter.chatWasBoostedByUser) {
            if (this.chatId == (-((Long) objArr[2]).longValue())) {
                this.boostsStatus = (TL_stories.TL_premium_boostsStatus) objArr[0];
            }
        } else if (i == NotificationCenter.topicsDidLoaded) {
            if (this.chatId == ((Long) objArr[0]).longValue()) {
                updateTopicsList(false, true);
                if (objArr.length > 1 && ((Boolean) objArr[1]).booleanValue()) {
                    checkForLoadMore();
                }
                checkLoading();
            }
        } else if (i == NotificationCenter.updateInterfaces) {
            int iIntValue = ((Integer) objArr[0]).intValue();
            if (iIntValue == MessagesController.UPDATE_MASK_CHAT) {
                updateChatInfo();
            }
            if ((iIntValue & MessagesController.UPDATE_MASK_SELECT_DIALOG) > 0) {
                getMessagesController().getTopicsController().sortTopics(this.chatId, false);
                boolean zCanScrollVertically = this.recyclerListView.canScrollVertically(-1);
                updateTopicsList(true, false);
                if (!zCanScrollVertically) {
                    this.layoutManager.scrollToPosition(0);
                }
            }
        } else if (i == NotificationCenter.dialogsNeedReload) {
            updateTopicsList(false, false);
        } else if (i == NotificationCenter.groupCallUpdated) {
            Long l = (Long) objArr[0];
            if (this.chatId == l.longValue()) {
                this.groupCall = getMessagesController().getGroupCall(l.longValue(), false);
                FragmentContextView fragmentContextView = this.fragmentContextView;
                if (fragmentContextView != null) {
                    fragmentContextView.checkCall(!this.fragmentBeginToShow);
                }
                checkGroupCallJoin(false);
            }
        } else if (i == NotificationCenter.notificationsSettingsUpdated) {
            updateTopicsList(false, false);
            updateChatInfo(true);
        } else if (i != NotificationCenter.chatSwitchedForum && i == NotificationCenter.closeChats) {
            removeSelfFromStack(true);
        }
        if (i == NotificationCenter.openedChatChanged && getParentActivity() != null && this.inPreviewMode && AndroidUtilities.isTablet()) {
            boolean zBooleanValue = ((Boolean) objArr[2]).booleanValue();
            long jLongValue = ((Long) objArr[0]).longValue();
            long jLongValue2 = ((Long) objArr[1]).longValue();
            if (jLongValue != (-this.chatId) || zBooleanValue) {
                if (this.selectedTopicForTablet != 0) {
                    this.selectedTopicForTablet = 0L;
                    updateTopicsList(false, false);
                    return;
                }
                return;
            }
            if (this.selectedTopicForTablet != jLongValue2) {
                this.selectedTopicForTablet = jLongValue2;
                updateTopicsList(false, false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkForLoadMore() {
        LinearLayoutManager linearLayoutManager;
        if (this.topicsController.endIsReached(this.chatId) || (linearLayoutManager = this.layoutManager) == null) {
            return;
        }
        int iFindLastVisibleItemPosition = linearLayoutManager.findLastVisibleItemPosition();
        if (this.forumTopics.isEmpty() || iFindLastVisibleItemPosition >= this.adapter.getItemCount() - 5) {
            this.topicsController.loadTopics(this.chatId);
        }
        checkLoading();
    }

    public void setExcludeTopics(HashSet<Integer> hashSet) {
        this.excludeTopics = hashSet;
    }

    @Override // org.telegram.ui.Components.ChatActivityInterface
    public ChatObject.Call getGroupCall() {
        ChatObject.Call call = this.groupCall;
        if (call == null || !(call.call instanceof TLRPC.TL_groupCall)) {
            return null;
        }
        return call;
    }

    @Override // org.telegram.ui.Components.ChatActivityInterface
    public TLRPC.Chat getCurrentChat() {
        return getMessagesController().getChat(Long.valueOf(this.chatId));
    }

    @Override // org.telegram.ui.Components.ChatActivityInterface, org.telegram.ui.Components.InstantCameraView.Delegate
    public long getDialogId() {
        return -this.chatId;
    }

    public void setForwardFromDialogFragment(DialogsActivity dialogsActivity) {
        this.dialogsActivity = dialogsActivity;
    }

    /* JADX INFO: loaded from: classes6.dex */
    public class Adapter extends AdapterWithDiffUtils {
        private Adapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i == getItemCount() - 1) {
                return 2;
            }
            return TopicsFragment.this.forumTopics.get(i).viewType;
        }

        public ArrayList<Item> getArray() {
            boolean z = TopicsFragment.this.forumTopicsListFrozen;
            TopicsFragment topicsFragment = TopicsFragment.this;
            return z ? topicsFragment.frozenForumTopicsList : topicsFragment.forumTopics;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            if (i == 0 || i == 3) {
                TopicDialogCell topicDialogCell = TopicsFragment.this.new TopicDialogCell(null, viewGroup.getContext(), true, false);
                if (i == 3) {
                    boolean zIsBotForumWithEditableTopics = UserObject.isBotForumWithEditableTopics(((BaseFragment) TopicsFragment.this).currentAccount, -TopicsFragment.this.chatId);
                    topicDialogCell.setForumIcon(ForumUtilities.createTopicDrawable(_UrlKt.FRAGMENT_ENCODE_SET, ForumBubbleDrawable.serverSupportedColor[0], false));
                    topicDialogCell.setTitleOverride(LocaleController.getString(!zIsBotForumWithEditableTopics ? C2665R.string.BotForumAskForStartOffNewChatTitle : C2665R.string.BotForumAskForStartNewChatTitle));
                    topicDialogCell.setCustomMessage(LocaleController.getString(!zIsBotForumWithEditableTopics ? C2665R.string.BotForumAskForStartOffNewChatForward : C2665R.string.BotForumAskForStartNewChatForward));
                }
                topicDialogCell.inPreviewMode = ((BaseFragment) TopicsFragment.this).inPreviewMode;
                topicDialogCell.setArchivedPullAnimation(TopicsFragment.this.pullForegroundDrawable);
                return new RecyclerListView.Holder(topicDialogCell);
            }
            if (i == 2) {
                TopicsFragment topicsFragment = TopicsFragment.this;
                View view = new View(TopicsFragment.this.getContext()) { // from class: org.telegram.ui.TopicsFragment.Adapter.1
                    HashMap<String, Boolean> precalcEllipsized = new HashMap<>();

                    @Override // android.view.View
                    public void onMeasure(int i2, int i3) {
                        int i4;
                        int iDp;
                        int size = View.MeasureSpec.getSize(i2);
                        int iDp2 = AndroidUtilities.dp(64.0f);
                        int i5 = 0;
                        int i6 = 0;
                        for (int i7 = 0; i7 < Adapter.this.getArray().size(); i7++) {
                            if (Adapter.this.getArray().get(i7) != null && Adapter.this.getArray().get(i7).topic != null) {
                                String str = Adapter.this.getArray().get(i7).topic.title;
                                Boolean boolValueOf = this.precalcEllipsized.get(str);
                                if (boolValueOf == null) {
                                    int iDp3 = AndroidUtilities.dp(LocaleController.isRTL ? 18.0f : (TopicsFragment.this.isInPreviewMode() ? 11 : 50) + 4);
                                    if (LocaleController.isRTL) {
                                        i4 = size - iDp3;
                                        iDp = AndroidUtilities.dp((TopicsFragment.this.isInPreviewMode() ? 11 : 50) + 13);
                                    } else {
                                        i4 = size - iDp3;
                                        iDp = AndroidUtilities.dp(22.0f);
                                    }
                                    boolValueOf = Boolean.valueOf(Theme.dialogs_namePaint[0].measureText(str) <= ((float) ((i4 - iDp) - ((int) Math.ceil((double) Theme.dialogs_timePaint.measureText("00:00"))))));
                                    this.precalcEllipsized.put(str, boolValueOf);
                                }
                                int iDp4 = AndroidUtilities.dp((!boolValueOf.booleanValue() ? 20 : 0) + 64);
                                if (Adapter.this.getArray().get(i7).topic.id == 1) {
                                    iDp2 = iDp4;
                                }
                                if (Adapter.this.getArray().get(i7).topic.hidden) {
                                    i5++;
                                }
                                i6 += iDp4;
                            }
                        }
                        super.onMeasure(i2, View.MeasureSpec.makeMeasureSpec(Math.max(0, i5 > 0 ? (((TopicsFragment.this.recyclerListView.getMeasuredHeight() - TopicsFragment.this.recyclerListView.getPaddingTop()) - TopicsFragment.this.recyclerListView.getPaddingBottom()) - i6) + iDp2 : 0), TLObject.FLAG_30));
                    }
                };
                topicsFragment.emptyView = view;
                return new RecyclerListView.Holder(view);
            }
            FlickerLoadingView flickerLoadingView = new FlickerLoadingView(viewGroup.getContext());
            flickerLoadingView.setViewType(24);
            flickerLoadingView.setIsSingleCell(true);
            flickerLoadingView.showDate(true);
            return new RecyclerListView.Holder(flickerLoadingView);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            int i2;
            if (viewHolder.getItemViewType() == 0) {
                TLRPC.TL_forumTopic tL_forumTopic = getArray().get(i).topic;
                int i3 = i + 1;
                TLRPC.TL_forumTopic tL_forumTopic2 = i3 < getArray().size() ? getArray().get(i3).topic : null;
                TopicDialogCell topicDialogCell = (TopicDialogCell) viewHolder.itemView;
                TLRPC.Message message = tL_forumTopic.topMessage;
                TLRPC.TL_forumTopic tL_forumTopic3 = topicDialogCell.forumTopic;
                int i4 = tL_forumTopic3 == null ? 0 : tL_forumTopic3.id;
                int i5 = tL_forumTopic.id;
                boolean z = i4 == i5 && topicDialogCell.position == i && TopicsFragment.this.animatedUpdateEnabled;
                if (message != null) {
                    MessageObject messageObject = new MessageObject(((BaseFragment) TopicsFragment.this).currentAccount, message, false, false);
                    if (TopicsFragment.this.getMessagesController().isMonoForum(-TopicsFragment.this.chatId)) {
                        topicDialogCell.isMonoForumTopicDialog = true;
                        topicDialogCell.drawAvatar = true;
                        topicDialogCell.forumTopic = tL_forumTopic;
                        topicDialogCell.messagePaddingStart = 72;
                        topicDialogCell.chekBoxPaddingTop = 42.0f;
                        topicDialogCell.heightDefault = 72;
                        topicDialogCell.heightThreeLines = 78;
                        topicDialogCell.setDialog(DialogObject.getPeerDialogId(tL_forumTopic.from_id), messageObject, message.date, false, false);
                        topicDialogCell.isSavedDialogCell = true;
                        topicDialogCell.useSeparator = i3 < getItemCount();
                        i2 = i5;
                    } else {
                        TopicsFragment topicsFragment = TopicsFragment.this;
                        long j = -topicsFragment.chatId;
                        boolean zIsInPreviewMode = topicsFragment.isInPreviewMode();
                        i2 = i5;
                        topicDialogCell.setForumTopic(tL_forumTopic, j, messageObject, zIsInPreviewMode, z);
                        topicDialogCell.drawDivider = i != TopicsFragment.this.forumTopics.size() + (-1) || TopicsFragment.this.recyclerListView.emptyViewIsVisible();
                        boolean z2 = tL_forumTopic.pinned;
                        topicDialogCell.fullSeparator = z2 && (tL_forumTopic2 == null || !tL_forumTopic2.pinned);
                        topicDialogCell.setPinForced(z2 && !tL_forumTopic.hidden);
                        topicDialogCell.position = i;
                    }
                } else {
                    i2 = i5;
                }
                if (!TopicsFragment.this.getMessagesController().isMonoForum(-TopicsFragment.this.chatId)) {
                    topicDialogCell.setTopicIcon(tL_forumTopic);
                }
                topicDialogCell.setChecked(TopicsFragment.this.selectedTopics.contains(Integer.valueOf(i2)), z);
                topicDialogCell.setDialogSelected(TopicsFragment.this.selectedTopicForTablet == ((long) i2));
                topicDialogCell.onReorderStateChanged(TopicsFragment.this.reordering, true);
                return;
            }
            if (viewHolder.getItemViewType() == 3) {
                TopicDialogCell topicDialogCell2 = (TopicDialogCell) viewHolder.itemView;
                topicDialogCell2.setCurrentDialogId(-TopicsFragment.this.chatId);
                topicDialogCell2.drawDivider = i != TopicsFragment.this.forumTopics.size() + (-1) || TopicsFragment.this.recyclerListView.emptyViewIsVisible();
                topicDialogCell2.position = i;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return getArray().size() + 1;
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return viewHolder.getItemViewType() == 0 || viewHolder.getItemViewType() == 3;
        }

        public void swapElements(int i, int i2) {
            if (TopicsFragment.this.forumTopicsListFrozen) {
                return;
            }
            ArrayList<Item> arrayList = TopicsFragment.this.forumTopics;
            arrayList.add(i2, arrayList.remove(i));
            if (TopicsFragment.this.recyclerListView.getItemAnimator() != TopicsFragment.this.itemAnimator) {
                TopicsFragment.this.recyclerListView.setItemAnimator(TopicsFragment.this.itemAnimator);
            }
            notifyItemMoved(i, i2);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyDataSetChanged() {
            TopicsFragment.this.lastItemsCount = getItemCount();
            super.notifyDataSetChanged();
        }
    }

    /* JADX INFO: loaded from: classes6.dex */
    public class TopicDialogCell extends DialogCell {
        private AnimatedEmojiDrawable animatedEmojiDrawable;
        boolean attached;
        private boolean closed;
        private TLRPC.TL_forumTopic currentTopic;
        public boolean drawDivider;
        private Drawable forumIcon;
        private Boolean hidden;
        private ValueAnimator hiddenAnimator;
        private float hiddenT;
        private boolean isGeneral;
        public int position;

        @Override // org.telegram.ui.Cells.DialogCell, org.telegram.ui.ActionBar.Theme.Colorable
        public /* bridge */ /* synthetic */ int[] getColorKeys() {
            return super.getColorKeys();
        }

        public TopicDialogCell(DialogsActivity dialogsActivity, Context context, boolean z, boolean z2) {
            super(dialogsActivity, context, z, z2);
            this.position = -1;
            this.drawAvatar = false;
            this.messagePaddingStart = TopicsFragment.this.isInPreviewMode() ? 11 : 50;
            this.chekBoxPaddingTop = 24.0f;
            this.heightDefault = 64;
            this.heightThreeLines = 76;
            this.forbidVerified = true;
        }

        @Override // org.telegram.ui.Cells.DialogCell, android.view.View
        public void onDraw(Canvas canvas) {
            PullForegroundDrawable pullForegroundDrawable;
            CheckBox2 checkBox2;
            if (TopicsFragment.this.getMessagesController().isMonoForum(-TopicsFragment.this.chatId)) {
                super.onDraw(canvas);
                return;
            }
            this.xOffset = (!this.inPreviewMode || (checkBox2 = this.checkBox) == null) ? 0.0f : checkBox2.getProgress() * AndroidUtilities.dp(30.0f);
            canvas.save();
            float f = this.xOffset;
            int i = -AndroidUtilities.dp(4.0f);
            this.translateY = i;
            canvas.translate(f, i);
            canvas.drawColor(TopicsFragment.this.getThemedColor(Theme.key_windowBackgroundWhite));
            super.onDraw(canvas);
            canvas.restore();
            canvas.save();
            canvas.translate(this.translationX, 0.0f);
            if (this.drawDivider) {
                int iDp = this.fullSeparator ? 0 : AndroidUtilities.dp(this.messagePaddingStart);
                boolean z = LocaleController.isRTL;
                float f2 = this.translationX;
                if (z) {
                    canvas.drawLine(0.0f - f2, getMeasuredHeight() - 1, getMeasuredWidth() - iDp, getMeasuredHeight() - 1, Theme.dividerPaint);
                } else {
                    canvas.drawLine(iDp - f2, getMeasuredHeight() - 1, getMeasuredWidth(), getMeasuredHeight() - 1, Theme.dividerPaint);
                }
            }
            if ((!this.isGeneral || (pullForegroundDrawable = this.archivedChatsDrawable) == null || pullForegroundDrawable.outProgress != 0.0f) && (this.animatedEmojiDrawable != null || this.forumIcon != null)) {
                int iDp2 = AndroidUtilities.dp(10.0f);
                int iDp3 = AndroidUtilities.dp(10.0f);
                int iDp4 = AndroidUtilities.dp(28.0f);
                AnimatedEmojiDrawable animatedEmojiDrawable = this.animatedEmojiDrawable;
                if (animatedEmojiDrawable != null) {
                    if (LocaleController.isRTL) {
                        animatedEmojiDrawable.setBounds((getWidth() - iDp2) - iDp4, iDp3, getWidth() - iDp2, iDp4 + iDp3);
                    } else {
                        animatedEmojiDrawable.setBounds(iDp2, iDp3, iDp2 + iDp4, iDp4 + iDp3);
                    }
                    this.animatedEmojiDrawable.draw(canvas);
                } else {
                    boolean z2 = LocaleController.isRTL;
                    Drawable drawable = this.forumIcon;
                    if (z2) {
                        drawable.setBounds((getWidth() - iDp2) - iDp4, iDp3, getWidth() - iDp2, iDp4 + iDp3);
                    } else {
                        drawable.setBounds(iDp2, iDp3, iDp2 + iDp4, iDp4 + iDp3);
                    }
                    this.forumIcon.draw(canvas);
                }
            }
            canvas.restore();
        }

        @Override // org.telegram.ui.Cells.DialogCell
        public void buildLayout() {
            super.buildLayout();
            setHiddenT();
        }

        @Override // org.telegram.ui.Cells.DialogCell, android.view.ViewGroup, android.view.View
        public void onAttachedToWindow() {
            super.onAttachedToWindow();
            this.attached = true;
            AnimatedEmojiDrawable animatedEmojiDrawable = this.animatedEmojiDrawable;
            if (animatedEmojiDrawable != null) {
                animatedEmojiDrawable.addView(this);
            }
        }

        @Override // org.telegram.ui.Cells.DialogCell, android.view.ViewGroup, android.view.View
        public void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            this.attached = false;
            AnimatedEmojiDrawable animatedEmojiDrawable = this.animatedEmojiDrawable;
            if (animatedEmojiDrawable != null) {
                animatedEmojiDrawable.removeView(this);
            }
        }

        public void setAnimatedEmojiDrawable(AnimatedEmojiDrawable animatedEmojiDrawable) {
            AnimatedEmojiDrawable animatedEmojiDrawable2 = this.animatedEmojiDrawable;
            if (animatedEmojiDrawable2 == animatedEmojiDrawable) {
                return;
            }
            if (animatedEmojiDrawable2 != null && this.attached) {
                animatedEmojiDrawable2.removeView(this);
            }
            if (animatedEmojiDrawable != null) {
                animatedEmojiDrawable.setColorFilter(Theme.chat_animatedEmojiTextColorFilter);
            }
            this.animatedEmojiDrawable = animatedEmojiDrawable;
            if (animatedEmojiDrawable == null || !this.attached) {
                return;
            }
            animatedEmojiDrawable.addView(this);
        }

        public void setForumIcon(Drawable drawable) {
            this.forumIcon = drawable;
        }

        public void setTopicIcon(TLRPC.TL_forumTopic tL_forumTopic) {
            this.currentTopic = tL_forumTopic;
            boolean z = false;
            this.closed = tL_forumTopic != null && tL_forumTopic.closed;
            if (this.inPreviewMode) {
                updateHidden(tL_forumTopic != null && tL_forumTopic.hidden, true);
            }
            this.isGeneral = tL_forumTopic != null && tL_forumTopic.id == 1;
            if (tL_forumTopic != null && this != TopicsFragment.this.generalTopicViewMoving) {
                if (tL_forumTopic.hidden) {
                    this.overrideSwipeAction = true;
                    this.overrideSwipeActionBackgroundColorKey = Theme.key_chats_archivePinBackground;
                    this.overrideSwipeActionRevealBackgroundColorKey = Theme.key_chats_archiveBackground;
                    this.overrideSwipeActionStringKey = "Unhide";
                    this.overrideSwipeActionStringId = C2665R.string.Unhide;
                    this.overrideSwipeActionDrawable = Theme.dialogs_unpinArchiveDrawable;
                } else {
                    this.overrideSwipeAction = true;
                    this.overrideSwipeActionBackgroundColorKey = Theme.key_chats_archiveBackground;
                    this.overrideSwipeActionRevealBackgroundColorKey = Theme.key_chats_archivePinBackground;
                    this.overrideSwipeActionStringKey = "Hide";
                    this.overrideSwipeActionStringId = C2665R.string.Hide;
                    this.overrideSwipeActionDrawable = Theme.dialogs_pinArchiveDrawable;
                }
                invalidate();
            }
            if (this.inPreviewMode) {
                return;
            }
            if (tL_forumTopic != null && tL_forumTopic.id == 1) {
                setAnimatedEmojiDrawable(null);
                setForumIcon(ForumUtilities.createGeneralTopicDrawable(getContext(), 1.0f, TopicsFragment.this.getThemedColor(Theme.key_chat_inMenu), false));
            } else if (tL_forumTopic != null && tL_forumTopic.icon_emoji_id != 0) {
                setForumIcon(null);
                AnimatedEmojiDrawable animatedEmojiDrawable = this.animatedEmojiDrawable;
                if (animatedEmojiDrawable == null || animatedEmojiDrawable.getDocumentId() != tL_forumTopic.icon_emoji_id) {
                    setAnimatedEmojiDrawable(new AnimatedEmojiDrawable(TopicsFragment.this.openedForForward ? 13 : 10, ((BaseFragment) TopicsFragment.this).currentAccount, tL_forumTopic.icon_emoji_id));
                }
            } else {
                setAnimatedEmojiDrawable(null);
                setForumIcon(ForumUtilities.createTopicDrawable(tL_forumTopic, false));
            }
            if (tL_forumTopic != null && tL_forumTopic.hidden) {
                z = true;
            }
            updateHidden(z, true);
            buildLayout();
        }

        private void updateHidden(boolean z, boolean z2) {
            if (this.hidden == null) {
                z2 = false;
            }
            ValueAnimator valueAnimator = this.hiddenAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.hiddenAnimator = null;
            }
            this.hidden = Boolean.valueOf(z);
            if (z2) {
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.hiddenT, z ? 1.0f : 0.0f);
                this.hiddenAnimator = valueAnimatorOfFloat;
                valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.TopicsFragment$TopicDialogCell$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        this.f$0.lambda$updateHidden$0(valueAnimator2);
                    }
                });
                this.hiddenAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT);
                this.hiddenAnimator.start();
                return;
            }
            this.hiddenT = z ? 1.0f : 0.0f;
            setHiddenT();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$updateHidden$0(ValueAnimator valueAnimator) {
            this.hiddenT = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            setHiddenT();
        }

        private void setHiddenT() {
            Drawable drawable = this.forumIcon;
            if (drawable instanceof ForumUtilities.GeneralTopicDrawable) {
                ((ForumUtilities.GeneralTopicDrawable) drawable).setColor(ColorUtils.blendARGB(TopicsFragment.this.getThemedColor(Theme.key_chats_archivePullDownBackground), TopicsFragment.this.getThemedColor(Theme.key_avatar_background2Saved), this.hiddenT));
            }
            Drawable[] drawableArr = this.topicIconInName;
            if (drawableArr != null) {
                Drawable drawable2 = drawableArr[0];
                if (drawable2 instanceof ForumUtilities.GeneralTopicDrawable) {
                    ((ForumUtilities.GeneralTopicDrawable) drawable2).setColor(ColorUtils.blendARGB(TopicsFragment.this.getThemedColor(Theme.key_chats_archivePullDownBackground), TopicsFragment.this.getThemedColor(Theme.key_avatar_background2Saved), this.hiddenT));
                }
            }
            invalidate();
        }

        @Override // org.telegram.ui.Cells.DialogCell
        public boolean drawLock2() {
            return this.closed;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideFloatingButton(boolean z, boolean z2) {
        this.floatingButton.setButtonVisible(!z, this.fragmentBeginToShow && z2);
        if (BottomNavigationBar.floating()) {
            return;
        }
        checkUi_mainTabsVisible();
    }

    private void updateFloatingButtonOffset() {
        this.floatingButton.setTranslationY(((-this.transitionPadding) - this.navigationBarHeight) - this.additionFloatingButtonOffset);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onBecomeFullyHidden() {
        ActionBar actionBar = this.actionBar;
        if (actionBar != null) {
            actionBar.closeSearchField();
        }
    }

    /* JADX INFO: loaded from: classes6.dex */
    public class EmptyViewContainer extends FrameLayout {
        boolean increment;
        float progress;
        TextView textView;

        public EmptyViewContainer(Context context) {
            SpannableStringBuilder spannableStringBuilder;
            super(context);
            this.textView = new TextView(context);
            if (LocaleController.isRTL) {
                spannableStringBuilder = new SpannableStringBuilder("  ");
                spannableStringBuilder.setSpan(new ColoredImageSpan(C2665R.drawable.attach_arrow_left), 0, 1, 0);
                spannableStringBuilder.append((CharSequence) LocaleController.getString(C2665R.string.TapToCreateTopicHint));
            } else {
                spannableStringBuilder = new SpannableStringBuilder(LocaleController.getString(C2665R.string.TapToCreateTopicHint));
                spannableStringBuilder.append((CharSequence) "  ");
                spannableStringBuilder.setSpan(new ColoredImageSpan(C2665R.drawable.arrow_newchat), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 0);
            }
            this.textView.setText(spannableStringBuilder);
            this.textView.setTextSize(1, 14.0f);
            this.textView.setLayerType(2, null);
            this.textView.setTextColor(TopicsFragment.this.getThemedColor(Theme.key_windowBackgroundWhiteGrayText));
            TextView textView = this.textView;
            boolean z = LocaleController.isRTL;
            addView(textView, LayoutHelper.createFrame(-2, -2.0f, 81, z ? 72.0f : 32.0f, 0.0f, z ? 32.0f : 72.0f, 32.0f));
        }

        @Override // android.view.ViewGroup, android.view.View
        public void dispatchDraw(Canvas canvas) {
            super.dispatchDraw(canvas);
            boolean z = this.increment;
            float f = this.progress;
            if (z) {
                float f2 = f + 0.013333334f;
                this.progress = f2;
                if (f2 > 1.0f) {
                    this.increment = false;
                    this.progress = 1.0f;
                }
            } else {
                float f3 = f - 0.013333334f;
                this.progress = f3;
                if (f3 < 0.0f) {
                    this.increment = true;
                    this.progress = 0.0f;
                }
            }
            this.textView.setTranslationX(CubicBezierInterpolator.DEFAULT.getInterpolation(this.progress) * AndroidUtilities.dp(8.0f) * (LocaleController.isRTL ? -1 : 1));
            invalidate();
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean isLightStatusBar() {
        int themedColor = getThemedColor(this.searching ? Theme.key_windowBackgroundWhite : Theme.key_actionBarDefault);
        if (this.actionBar.isActionModeShowed()) {
            themedColor = getThemedColor(Theme.key_actionBarActionModeDefault);
        }
        return ColorUtils.calculateLuminance(themedColor) > 0.699999988079071d;
    }

    /* JADX INFO: loaded from: classes6.dex */
    public class MessagesSearchContainer extends ViewPagerFixed implements FilteredSearchView.UiCallback {
        boolean canLoadMore;
        SearchViewPager.ChatPreviewDelegate chatPreviewDelegate;
        StickerEmptyView emptyView;
        FlickerLoadingView flickerLoadingView;
        boolean isLoading;
        RecyclerItemsEnterAnimator itemsEnterAnimator;
        private int keyboardSize;
        LinearLayoutManager layoutManager;
        int messagesEndRow;
        int messagesHeaderRow;
        boolean messagesIsLoading;
        int messagesStartRow;
        RecyclerListView recyclerView;
        int rowCount;
        SearchAdapter searchAdapter;
        FrameLayout searchContainer;
        ArrayList<MessageObject> searchResultMessages;
        ArrayList<TLRPC.TL_forumTopic> searchResultTopics;
        Runnable searchRunnable;
        String searchString;
        private ArrayList<MessageObject> selectedItems;
        int topicsEndRow;
        int topicsHeaderRow;
        int topicsStartRow;
        private ViewPagerAdapter viewPagerAdapter;

        public MessagesSearchContainer(Context context) {
            super(context);
            this.searchString = "empty";
            this.searchResultTopics = new ArrayList<>();
            this.searchResultMessages = new ArrayList<>();
            this.selectedItems = new ArrayList<>();
            this.searchContainer = new FrameLayout(context);
            this.chatPreviewDelegate = new SearchViewPager.ChatPreviewDelegate() { // from class: org.telegram.ui.TopicsFragment.MessagesSearchContainer.1
                @Override // org.telegram.ui.Components.SearchViewPager.ChatPreviewDelegate
                public void startChatPreview(RecyclerListView recyclerListView, DialogCell dialogCell) {
                    TopicsFragment.this.showChatPreview(dialogCell);
                }

                @Override // org.telegram.ui.Components.SearchViewPager.ChatPreviewDelegate
                public void move(float f) {
                    Point point = AndroidUtilities.displaySize;
                    if (point.x > point.y) {
                        TopicsFragment.this.movePreviewFragment(f);
                    }
                }

                @Override // org.telegram.ui.Components.SearchViewPager.ChatPreviewDelegate
                public void finish() {
                    Point point = AndroidUtilities.displaySize;
                    if (point.x > point.y) {
                        TopicsFragment.this.finishPreviewFragment();
                    }
                }
            };
            RecyclerListView recyclerListView = new RecyclerListView(context);
            this.recyclerView = recyclerListView;
            SearchAdapter searchAdapter = new SearchAdapter();
            this.searchAdapter = searchAdapter;
            recyclerListView.setAdapter(searchAdapter);
            RecyclerListView recyclerListView2 = this.recyclerView;
            LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context);
            this.layoutManager = linearLayoutManager;
            recyclerListView2.setLayoutManager(linearLayoutManager);
            this.recyclerView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.TopicsFragment$MessagesSearchContainer$$ExternalSyntheticLambda0
                @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
                public final void onItemClick(View view, int i) {
                    this.f$0.lambda$new$0(view, i);
                }
            });
            this.recyclerView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.TopicsFragment.MessagesSearchContainer.2
                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                    super.onScrolled(recyclerView, i, i2);
                    MessagesSearchContainer messagesSearchContainer = MessagesSearchContainer.this;
                    if (messagesSearchContainer.canLoadMore) {
                        int iFindLastVisibleItemPosition = messagesSearchContainer.layoutManager.findLastVisibleItemPosition() + 5;
                        MessagesSearchContainer messagesSearchContainer2 = MessagesSearchContainer.this;
                        if (iFindLastVisibleItemPosition >= messagesSearchContainer2.rowCount) {
                            messagesSearchContainer2.loadMessages(messagesSearchContainer2.searchString);
                        }
                    }
                    TopicsFragment topicsFragment = TopicsFragment.this;
                    if (topicsFragment.searching) {
                        if (i == 0 && i2 == 0) {
                            return;
                        }
                        AndroidUtilities.hideKeyboard(topicsFragment.searchItem.getSearchField());
                    }
                }
            });
            FlickerLoadingView flickerLoadingView = new FlickerLoadingView(context);
            this.flickerLoadingView = flickerLoadingView;
            flickerLoadingView.setViewType(7);
            this.flickerLoadingView.showDate(false);
            this.flickerLoadingView.setUseHeaderOffset(true);
            StickerEmptyView stickerEmptyView = new StickerEmptyView(context, this.flickerLoadingView, 1);
            this.emptyView = stickerEmptyView;
            stickerEmptyView.title.setText(LocaleController.getString(C2665R.string.NoResult));
            this.emptyView.subtitle.setVisibility(8);
            this.emptyView.setVisibility(8);
            this.emptyView.addView(this.flickerLoadingView, 0);
            this.emptyView.setAnimateLayoutChange(true);
            this.recyclerView.setEmptyView(this.emptyView);
            this.recyclerView.setAnimateEmptyView(true, 0);
            this.searchContainer.addView(this.emptyView);
            this.searchContainer.addView(this.recyclerView);
            updateRows();
            RecyclerItemsEnterAnimator recyclerItemsEnterAnimator = new RecyclerItemsEnterAnimator(this.recyclerView, true);
            this.itemsEnterAnimator = recyclerItemsEnterAnimator;
            this.recyclerView.setItemsEnterAnimator(recyclerItemsEnterAnimator);
            ViewPagerAdapter viewPagerAdapter = new ViewPagerAdapter();
            this.viewPagerAdapter = viewPagerAdapter;
            setAdapter(viewPagerAdapter);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(View view, int i) {
            if (view instanceof TopicSearchCell) {
                TopicsFragment topicsFragment = TopicsFragment.this;
                ForumUtilities.openTopic(topicsFragment, topicsFragment.chatId, ((TopicSearchCell) view).getTopic(), 0);
            } else if (view instanceof TopicDialogCell) {
                TopicDialogCell topicDialogCell = (TopicDialogCell) view;
                TopicsFragment topicsFragment2 = TopicsFragment.this;
                ForumUtilities.openTopic(topicsFragment2, topicsFragment2.chatId, topicDialogCell.forumTopic, topicDialogCell.getMessageId());
            }
        }

        public class Item {
            int filterIndex;
            private final int type;

            private Item(int i) {
                this.type = i;
            }
        }

        public class ViewPagerAdapter extends ViewPagerFixed.Adapter {
            ArrayList<Item> items;

            public ViewPagerAdapter() {
                ArrayList<Item> arrayList = new ArrayList<>();
                this.items = arrayList;
                arrayList.add(new Item(0));
                int i = 2;
                Item item = new Item(i);
                item.filterIndex = 0;
                this.items.add(item);
                Item item2 = new Item(i);
                item2.filterIndex = 1;
                this.items.add(item2);
                Item item3 = new Item(i);
                item3.filterIndex = 2;
                this.items.add(item3);
                Item item4 = new Item(i);
                item4.filterIndex = 3;
                this.items.add(item4);
                Item item5 = new Item(i);
                item5.filterIndex = 4;
                this.items.add(item5);
            }

            @Override // org.telegram.ui.Components.ViewPagerFixed.Adapter
            public int getItemCount() {
                return this.items.size();
            }

            @Override // org.telegram.ui.Components.ViewPagerFixed.Adapter
            public View createView(int i) {
                if (i == 1) {
                    return MessagesSearchContainer.this.searchContainer;
                }
                if (i == 2) {
                    TopicsFragment topicsFragment = TopicsFragment.this;
                    SearchDownloadsContainer searchDownloadsContainer = new SearchDownloadsContainer(topicsFragment, ((BaseFragment) topicsFragment).currentAccount);
                    searchDownloadsContainer.recyclerListView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.TopicsFragment.MessagesSearchContainer.ViewPagerAdapter.1
                        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                        public void onScrolled(RecyclerView recyclerView, int i2, int i3) {
                            super.onScrolled(recyclerView, i2, i3);
                        }
                    });
                    searchDownloadsContainer.setUiCallback(MessagesSearchContainer.this);
                    return searchDownloadsContainer;
                }
                FilteredSearchView filteredSearchView = new FilteredSearchView(TopicsFragment.this);
                filteredSearchView.setChatPreviewDelegate(MessagesSearchContainer.this.chatPreviewDelegate);
                filteredSearchView.setUiCallback(MessagesSearchContainer.this);
                filteredSearchView.recyclerListView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.TopicsFragment.MessagesSearchContainer.ViewPagerAdapter.2
                    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                    public void onScrolled(RecyclerView recyclerView, int i2, int i3) {
                        super.onScrolled(recyclerView, i2, i3);
                    }
                });
                return filteredSearchView;
            }

            @Override // org.telegram.ui.Components.ViewPagerFixed.Adapter
            public String getItemTitle(int i) {
                if (this.items.get(i).type == 0) {
                    return LocaleController.getString(C2665R.string.SearchMessages);
                }
                if (this.items.get(i).type == 1) {
                    return LocaleController.getString(C2665R.string.DownloadsTabs);
                }
                return FiltersView.filters[this.items.get(i).filterIndex].getTitle();
            }

            @Override // org.telegram.ui.Components.ViewPagerFixed.Adapter
            public int getItemViewType(int i) {
                if (this.items.get(i).type == 0) {
                    return 1;
                }
                if (this.items.get(i).type == 1) {
                    return 2;
                }
                return this.items.get(i).type + i;
            }

            @Override // org.telegram.ui.Components.ViewPagerFixed.Adapter
            public void bindView(View view, int i, int i2) {
                MessagesSearchContainer messagesSearchContainer = MessagesSearchContainer.this;
                messagesSearchContainer.search(view, i, messagesSearchContainer.searchString, true);
            }
        }

        @Override // org.telegram.ui.FilteredSearchView.UiCallback
        public void goToMessage(MessageObject messageObject) {
            Bundle bundle = new Bundle();
            long dialogId = messageObject.getDialogId();
            if (DialogObject.isEncryptedDialog(dialogId)) {
                bundle.putInt("enc_id", DialogObject.getEncryptedChatId(dialogId));
            } else if (!DialogObject.isUserDialog(dialogId)) {
                TLRPC.Chat chat = AccountInstance.getInstance(((BaseFragment) TopicsFragment.this).currentAccount).getMessagesController().getChat(Long.valueOf(-dialogId));
                if (chat != null && chat.migrated_to != null) {
                    bundle.putLong("migrated_to", dialogId);
                    dialogId = -chat.migrated_to.channel_id;
                }
                bundle.putLong("chat_id", -dialogId);
            } else {
                bundle.putLong("user_id", dialogId);
            }
            bundle.putInt("message_id", messageObject.getId());
            TopicsFragment.this.presentFragment(new ChatActivity(bundle));
        }

        @Override // org.telegram.ui.FilteredSearchView.UiCallback
        public boolean actionModeShowing() {
            return ((BaseFragment) TopicsFragment.this).actionBar.isActionModeShowed();
        }

        @Override // org.telegram.ui.FilteredSearchView.UiCallback
        public void toggleItemSelection(MessageObject messageObject, View view, int i) {
            if (!this.selectedItems.remove(messageObject)) {
                this.selectedItems.add(messageObject);
            }
            if (this.selectedItems.isEmpty()) {
                ((BaseFragment) TopicsFragment.this).actionBar.hideActionMode();
            }
        }

        @Override // org.telegram.ui.FilteredSearchView.UiCallback
        public boolean isSelected(FilteredSearchView.MessageHashId messageHashId) {
            if (messageHashId == null) {
                return false;
            }
            for (int i = 0; i < this.selectedItems.size(); i++) {
                MessageObject messageObject = this.selectedItems.get(i);
                if (messageObject != null && messageObject.getId() == messageHashId.messageId && messageObject.getDialogId() == messageHashId.dialogId) {
                    return true;
                }
            }
            return false;
        }

        @Override // org.telegram.ui.FilteredSearchView.UiCallback
        public void showActionMode() {
            ((BaseFragment) TopicsFragment.this).actionBar.showActionMode();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void search(View view, int i, String str, boolean z) {
            this.searchString = str;
            if (view == this.searchContainer) {
                searchMessages(str);
                return;
            }
            if (view instanceof FilteredSearchView) {
                FilteredSearchView filteredSearchView = (FilteredSearchView) view;
                filteredSearchView.setKeyboardHeight(this.keyboardSize, false);
                filteredSearchView.search(-TopicsFragment.this.chatId, 0L, 0L, 0L, FiltersView.filters[this.viewPagerAdapter.items.get(i).filterIndex], false, str, z);
                return;
            }
            if (view instanceof SearchDownloadsContainer) {
                SearchDownloadsContainer searchDownloadsContainer = (SearchDownloadsContainer) view;
                searchDownloadsContainer.setKeyboardHeight(this.keyboardSize, false);
                searchDownloadsContainer.search(str);
            }
        }

        private void searchMessages(final String str) {
            Runnable runnable = this.searchRunnable;
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
                this.searchRunnable = null;
            }
            this.messagesIsLoading = false;
            this.canLoadMore = false;
            this.searchResultTopics.clear();
            this.searchResultMessages.clear();
            updateRows();
            if (TextUtils.isEmpty(str)) {
                this.isLoading = false;
                this.searchResultTopics.clear();
                for (int i = 0; i < TopicsFragment.this.forumTopics.size(); i++) {
                    if (TopicsFragment.this.forumTopics.get(i).topic != null) {
                        this.searchResultTopics.add(TopicsFragment.this.forumTopics.get(i).topic);
                        TopicsFragment.this.forumTopics.get(i).topic.searchQuery = null;
                    }
                }
                updateRows();
                return;
            }
            updateRows();
            this.isLoading = true;
            this.emptyView.showProgress(true, true);
            Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.TopicsFragment$MessagesSearchContainer$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$searchMessages$1(str);
                }
            };
            this.searchRunnable = runnable2;
            AndroidUtilities.runOnUIThread(runnable2, 200L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$searchMessages$1(String str) {
            String lowerCase = str.trim().toLowerCase();
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < TopicsFragment.this.forumTopics.size(); i++) {
                if (TopicsFragment.this.forumTopics.get(i).topic != null && TopicsFragment.this.forumTopics.get(i).topic.title.toLowerCase().contains(lowerCase)) {
                    arrayList.add(TopicsFragment.this.forumTopics.get(i).topic);
                    TopicsFragment.this.forumTopics.get(i).topic.searchQuery = lowerCase;
                }
            }
            this.searchResultTopics.clear();
            this.searchResultTopics.addAll(arrayList);
            updateRows();
            if (!this.searchResultTopics.isEmpty()) {
                this.isLoading = false;
                this.itemsEnterAnimator.showItemsAnimated(0);
            }
            loadMessages(str);
        }

        public void setSearchString(String str) {
            if (this.searchString.equals(str)) {
                return;
            }
            search(this.viewPages[0], getCurrentPosition(), str, false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void loadMessages(final String str) {
            if (this.messagesIsLoading) {
                return;
            }
            TLRPC.TL_messages_search tL_messages_search = new TLRPC.TL_messages_search();
            tL_messages_search.peer = TopicsFragment.this.getMessagesController().getInputPeer(-TopicsFragment.this.chatId);
            tL_messages_search.filter = new TLRPC.TL_inputMessagesFilterEmpty();
            tL_messages_search.limit = 20;
            tL_messages_search.f1030q = str;
            if (!this.searchResultMessages.isEmpty()) {
                ArrayList<MessageObject> arrayList = this.searchResultMessages;
                tL_messages_search.offset_id = arrayList.get(arrayList.size() - 1).getId();
            }
            this.messagesIsLoading = true;
            ConnectionsManager.getInstance(((BaseFragment) TopicsFragment.this).currentAccount).sendRequest(tL_messages_search, new RequestDelegate() { // from class: org.telegram.ui.TopicsFragment$MessagesSearchContainer$$ExternalSyntheticLambda2
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$loadMessages$3(str, tLObject, tL_error);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$loadMessages$3(final String str, final TLObject tLObject, TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.TopicsFragment$MessagesSearchContainer$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$loadMessages$2(str, tLObject);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$loadMessages$2(String str, TLObject tLObject) {
            if (str.equals(this.searchString)) {
                int i = this.rowCount;
                boolean z = false;
                this.messagesIsLoading = false;
                this.isLoading = false;
                if (tLObject instanceof TLRPC.messages_Messages) {
                    TLRPC.messages_Messages messages_messages = (TLRPC.messages_Messages) tLObject;
                    for (int i2 = 0; i2 < messages_messages.messages.size(); i2++) {
                        MessageObject messageObject = new MessageObject(((BaseFragment) TopicsFragment.this).currentAccount, messages_messages.messages.get(i2), false, false);
                        messageObject.setQuery(str);
                        this.searchResultMessages.add(messageObject);
                    }
                    updateRows();
                    if (this.searchResultMessages.size() < messages_messages.count && !messages_messages.messages.isEmpty()) {
                        z = true;
                    }
                    this.canLoadMore = z;
                } else {
                    this.canLoadMore = false;
                }
                if (this.rowCount == 0) {
                    this.emptyView.showProgress(this.isLoading, true);
                }
                this.itemsEnterAnimator.showItemsAnimated(i);
            }
        }

        private void updateRows() {
            this.topicsHeaderRow = -1;
            this.topicsStartRow = -1;
            this.topicsEndRow = -1;
            this.messagesHeaderRow = -1;
            this.messagesStartRow = -1;
            this.messagesEndRow = -1;
            this.rowCount = 0;
            if (!this.searchResultTopics.isEmpty()) {
                int i = this.rowCount;
                int i2 = i + 1;
                this.rowCount = i2;
                this.topicsHeaderRow = i;
                this.topicsStartRow = i2;
                int size = i2 + this.searchResultTopics.size();
                this.rowCount = size;
                this.topicsEndRow = size;
            }
            if (!this.searchResultMessages.isEmpty()) {
                int i3 = this.rowCount;
                int i4 = i3 + 1;
                this.rowCount = i4;
                this.messagesHeaderRow = i3;
                this.messagesStartRow = i4;
                int size2 = i4 + this.searchResultMessages.size();
                this.rowCount = size2;
                this.messagesEndRow = size2;
            }
            this.searchAdapter.notifyDataSetChanged();
        }

        public class SearchAdapter extends RecyclerListView.SelectionAdapter {
            private SearchAdapter() {
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
                View graySectionCell;
                if (i == 1) {
                    graySectionCell = new GraySectionCell(viewGroup.getContext());
                } else if (i == 2) {
                    graySectionCell = new TopicSearchCell(viewGroup.getContext());
                } else if (i == 3) {
                    TopicDialogCell topicDialogCell = TopicsFragment.this.new TopicDialogCell(null, viewGroup.getContext(), false, true);
                    topicDialogCell.inPreviewMode = ((BaseFragment) TopicsFragment.this).inPreviewMode;
                    graySectionCell = topicDialogCell;
                } else {
                    GlShader$$ExternalSyntheticBUOutline1.m1056m("unsupported view type");
                    return null;
                }
                graySectionCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
                return new RecyclerListView.Holder(graySectionCell);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
                if (getItemViewType(i) == 1) {
                    GraySectionCell graySectionCell = (GraySectionCell) viewHolder.itemView;
                    if (i == MessagesSearchContainer.this.topicsHeaderRow) {
                        graySectionCell.setText(LocaleController.getString(C2665R.string.Topics));
                    }
                    if (i == MessagesSearchContainer.this.messagesHeaderRow) {
                        graySectionCell.setText(LocaleController.getString(C2665R.string.SearchMessages));
                    }
                }
                if (getItemViewType(i) == 2) {
                    MessagesSearchContainer messagesSearchContainer = MessagesSearchContainer.this;
                    TLRPC.TL_forumTopic tL_forumTopic = messagesSearchContainer.searchResultTopics.get(i - messagesSearchContainer.topicsStartRow);
                    TopicSearchCell topicSearchCell = (TopicSearchCell) viewHolder.itemView;
                    topicSearchCell.setTopic(tL_forumTopic);
                    topicSearchCell.drawDivider = i != MessagesSearchContainer.this.topicsEndRow - 1;
                }
                if (getItemViewType(i) == 3) {
                    MessagesSearchContainer messagesSearchContainer2 = MessagesSearchContainer.this;
                    MessageObject messageObject = messagesSearchContainer2.searchResultMessages.get(i - messagesSearchContainer2.messagesStartRow);
                    TopicDialogCell topicDialogCell = (TopicDialogCell) viewHolder.itemView;
                    MessagesSearchContainer messagesSearchContainer3 = MessagesSearchContainer.this;
                    topicDialogCell.drawDivider = i != messagesSearchContainer3.messagesEndRow - 1;
                    long topicId = MessageObject.getTopicId(((BaseFragment) TopicsFragment.this).currentAccount, messageObject.messageOwner, true);
                    if (topicId == 0) {
                        topicId = 1;
                    }
                    TLRPC.TL_forumTopic tL_forumTopicFindTopic = TopicsFragment.this.topicsController.findTopic(TopicsFragment.this.chatId, topicId);
                    if (tL_forumTopicFindTopic == null) {
                        FileLog.m989d("cant find topic " + topicId);
                    } else {
                        topicDialogCell.setForumTopic(tL_forumTopicFindTopic, messageObject.getDialogId(), messageObject, false, false);
                        topicDialogCell.setTopicIcon(tL_forumTopicFindTopic);
                    }
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemViewType(int i) {
                MessagesSearchContainer messagesSearchContainer = MessagesSearchContainer.this;
                if (i == messagesSearchContainer.messagesHeaderRow || i == messagesSearchContainer.topicsHeaderRow) {
                    return 1;
                }
                if (i < messagesSearchContainer.topicsStartRow || i >= messagesSearchContainer.topicsEndRow) {
                    return (i < messagesSearchContainer.messagesStartRow || i >= messagesSearchContainer.messagesEndRow) ? 0 : 3;
                }
                return 2;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemCount() {
                MessagesSearchContainer messagesSearchContainer = MessagesSearchContainer.this;
                if (messagesSearchContainer.isLoading) {
                    return 0;
                }
                return messagesSearchContainer.rowCount;
            }

            @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
            public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
                return viewHolder.getItemViewType() == 3 || viewHolder.getItemViewType() == 2;
            }
        }
    }

    public void setOnTopicSelectedListener(OnTopicSelectedListener onTopicSelectedListener) {
        this.onTopicSelectedListener = onTopicSelectedListener;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        this.mainTabsHiddenByScroll = false;
        checkUi_mainTabsVisible();
        getMessagesController().getTopicsController().onTopicFragmentResume(this.chatId);
        this.animatedUpdateEnabled = false;
        AndroidUtilities.updateVisibleRows(this.recyclerListView);
        this.animatedUpdateEnabled = true;
        Bulletin.addDelegate(this, new Bulletin.Delegate() { // from class: org.telegram.ui.TopicsFragment.23
            @Override // org.telegram.ui.Components.Bulletin.Delegate
            public int getBottomOffset(int i) {
                if (TopicsFragment.this.bottomOverlayContainer == null || TopicsFragment.this.bottomOverlayContainer.getVisibility() != 0) {
                    return 0;
                }
                return TopicsFragment.this.bottomOverlayContainer.getMeasuredHeight();
            }
        });
        if (!this.inPreviewMode || getMessagesController().isForum(-this.chatId)) {
            return;
        }
        finishFragment();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onPause() {
        super.onPause();
        getMessagesController().getTopicsController().onTopicFragmentPause(this.chatId);
        Bulletin.removeDelegate(this);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void prepareFragmentToSlide(boolean z, boolean z2) {
        if (!z && z2) {
            this.isSlideBackTransition = true;
            setFragmentIsSliding(true);
        } else {
            this.slideBackTransitionAnimator = null;
            this.isSlideBackTransition = false;
            setFragmentIsSliding(false);
            setSlideTransitionProgress(1.0f);
        }
    }

    private void setFragmentIsSliding(boolean z) {
        if (SharedConfig.getDevicePerformanceClass() == 0) {
            return;
        }
        SizeNotifierFrameLayout sizeNotifierFrameLayout = this.contentView;
        if (sizeNotifierFrameLayout != null) {
            if (z) {
                sizeNotifierFrameLayout.setLayerType(2, null);
                sizeNotifierFrameLayout.setClipChildren(false);
                sizeNotifierFrameLayout.setClipToPadding(false);
            } else {
                sizeNotifierFrameLayout.setLayerType(0, null);
                sizeNotifierFrameLayout.setClipChildren(true);
                sizeNotifierFrameLayout.setClipToPadding(true);
            }
        }
        SizeNotifierFrameLayout sizeNotifierFrameLayout2 = this.contentView;
        if (sizeNotifierFrameLayout2 != null) {
            sizeNotifierFrameLayout2.requestLayout();
        }
        this.actionBar.requestLayout();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onSlideProgress(boolean z, float f) {
        if (SharedConfig.getDevicePerformanceClass() != 0 && this.isSlideBackTransition && this.slideBackTransitionAnimator == null) {
            setSlideTransitionProgress(f);
        }
    }

    private void setSlideTransitionProgress(float f) {
        if (SharedConfig.getDevicePerformanceClass() == 0) {
            return;
        }
        this.slideFragmentProgress = f;
        View view = this.fragmentView;
        if (view != null) {
            view.invalidate();
        }
        TopicsRecyclerView topicsRecyclerView = this.recyclerListView;
        if (topicsRecyclerView != null) {
            float f2 = 1.0f - ((1.0f - this.slideFragmentProgress) * 0.05f);
            topicsRecyclerView.setPivotX(0.0f);
            topicsRecyclerView.setPivotY(0.0f);
            topicsRecyclerView.setScaleX(f2);
            topicsRecyclerView.setScaleY(f2);
            this.actionBar.setPivotX(0.0f);
            this.actionBar.setPivotY(0.0f);
            this.actionBar.setScaleX(f2);
            this.actionBar.setScaleY(f2);
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onTransitionAnimationStart(boolean z, boolean z2) {
        super.onTransitionAnimationStart(z, z2);
        if (z) {
            this.openAnimationEnded = false;
        }
        this.notificationsLocker.lock();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onTransitionAnimationEnd(boolean z, boolean z2) {
        RightSlidingDialogContainer rightSlidingDialogContainer;
        View view;
        super.onTransitionAnimationEnd(z, z2);
        if (z && (view = this.blurredView) != null) {
            if (view.getParent() != null) {
                ((ViewGroup) this.blurredView.getParent()).removeView(this.blurredView);
            }
            this.blurredView.setBackground(null);
        }
        if (z) {
            this.openAnimationEnded = true;
            checkGroupCallJoin(this.lastCallCheckFromServer);
        }
        this.notificationsLocker.unlock();
        if (!z) {
            if (this.openedForSelect && this.removeFragmentOnTransitionEnd) {
                removeSelfFromStack();
                DialogsActivity dialogsActivity = this.dialogsActivity;
                if (dialogsActivity != null) {
                    dialogsActivity.removeSelfFromStack();
                }
            } else if (this.finishDialogRightSlidingPreviewOnTransitionEnd) {
                removeSelfFromStack();
                DialogsActivity dialogsActivity2 = this.parentDialogsActivity;
                if (dialogsActivity2 != null && (rightSlidingDialogContainer = dialogsActivity2.rightSlidingDialogContainer) != null && rightSlidingDialogContainer.hasFragment()) {
                    this.parentDialogsActivity.rightSlidingDialogContainer.lambda$presentFragment$1();
                }
            }
        }
        if (z && this.bottomPannelVisible) {
            setNavigationBarColor(getNavigationBarColor());
        }
    }

    private void prepareBlurBitmap() {
        if (this.blurredView == null || this.parentLayout == null) {
            return;
        }
        int measuredWidth = (int) (this.fragmentView.getMeasuredWidth() / 6.0f);
        int measuredHeight = (int) (this.fragmentView.getMeasuredHeight() / 6.0f);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(measuredWidth, measuredHeight, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        canvas.scale(0.16666667f, 0.16666667f);
        this.parentLayout.getView().draw(canvas);
        Utilities.stackBlurBitmap(bitmapCreateBitmap, Math.max(7, Math.max(measuredWidth, measuredHeight) / 180));
        this.blurredView.setBackground(new BitmapDrawable(bitmapCreateBitmap));
        this.blurredView.setAlpha(0.0f);
        if (this.blurredView.getParent() != null) {
            ((ViewGroup) this.blurredView.getParent()).removeView(this.blurredView);
        }
        this.parentLayout.getOverlayContainerView().addView(this.blurredView, LayoutHelper.createFrame(-1, -1.0f));
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onBackPressed(boolean z) {
        if (!this.selectedTopics.isEmpty()) {
            if (z) {
                clearSelectedTopics();
            }
            return false;
        }
        if (!this.searching) {
            return super.onBackPressed(z);
        }
        if (z) {
            this.actionBar.onSearchFieldVisibilityChanged(this.searchItem.toggleSearch(false));
        }
        return false;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onTransitionAnimationProgress(boolean z, float f) {
        View view = this.blurredView;
        if (view == null || view.getVisibility() != 0) {
            return;
        }
        View view2 = this.blurredView;
        if (z) {
            view2.setAlpha(1.0f - f);
        } else {
            view2.setAlpha(f);
        }
    }

    /* JADX INFO: loaded from: classes6.dex */
    public class Item extends AdapterWithDiffUtils.Item {
        TLRPC.TL_forumTopic topic;

        public Item(int i, TLRPC.TL_forumTopic tL_forumTopic) {
            super(i, true);
            this.topic = tL_forumTopic;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                Item item = (Item) obj;
                int i = this.viewType;
                if (i == item.viewType && i == 0 && this.topic.id == item.topic.id) {
                    return true;
                }
            }
            return false;
        }
    }

    @Override // org.telegram.ui.Components.ChatActivityInterface
    public ChatAvatarContainer getAvatarContainer() {
        return this.avatarContainer;
    }

    @Override // org.telegram.ui.Components.ChatActivityInterface
    public SizeNotifierFrameLayout getContentView() {
        return this.contentView;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void setPreviewOpenedProgress(float f) {
        ChatAvatarContainer chatAvatarContainer = this.avatarContainer;
        if (chatAvatarContainer != null) {
            chatAvatarContainer.setAlpha(f);
            this.other.setAlpha(f);
            ActionBarMenuItem actionBarMenuItem = this.searchItem;
            if (actionBarMenuItem != null) {
                actionBarMenuItem.setAlpha(f);
            }
            this.actionBar.getBackButton().setAlpha(f);
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void setPreviewReplaceProgress(float f) {
        ChatAvatarContainer chatAvatarContainer = this.avatarContainer;
        if (chatAvatarContainer != null) {
            chatAvatarContainer.setAlpha(f);
            this.avatarContainer.setTranslationX((1.0f - f) * AndroidUtilities.dp(40.0f));
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        RecyclerListView recyclerListView;
        ThemeDescription.ThemeDescriptionDelegate themeDescriptionDelegate = new ThemeDescription.ThemeDescriptionDelegate() { // from class: org.telegram.ui.TopicsFragment$$ExternalSyntheticLambda0
            @Override // org.telegram.ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                this.f$0.lambda$getThemeDescriptions$24();
            }
        };
        ArrayList<ThemeDescription> arrayList = new ArrayList<>();
        View view = this.fragmentView;
        int i = ThemeDescription.FLAG_BACKGROUND;
        int i2 = Theme.key_windowBackgroundWhite;
        arrayList.add(new ThemeDescription(view, i, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, i2));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_actionBarDefault));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector));
        MessagesSearchContainer messagesSearchContainer = this.searchContainer;
        if (messagesSearchContainer != null && (recyclerListView = messagesSearchContainer.recyclerView) != null) {
            GraySectionCell.createThemeDescriptions(arrayList, recyclerListView);
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getThemeDescriptions$24() {
        ViewGroup viewGroup;
        for (int i = 0; i < 2; i++) {
            if (i == 0) {
                viewGroup = this.recyclerListView;
            } else {
                MessagesSearchContainer messagesSearchContainer = this.searchContainer;
                viewGroup = messagesSearchContainer != null ? messagesSearchContainer.recyclerView : null;
            }
            if (viewGroup != null) {
                int childCount = viewGroup.getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    View childAt = viewGroup.getChildAt(i2);
                    if (childAt instanceof ProfileSearchCell) {
                        ((ProfileSearchCell) childAt).update(0);
                    } else if (childAt instanceof DialogCell) {
                        ((DialogCell) childAt).update(0);
                    } else if (childAt instanceof UserCell) {
                        ((UserCell) childAt).update(0);
                    }
                }
            }
        }
        ActionBar actionBar = this.actionBar;
        if (actionBar != null) {
            actionBar.setPopupBackgroundColor(getThemedColor(Theme.key_actionBarDefaultSubmenuBackground), true);
            this.actionBar.setPopupItemsColor(getThemedColor(Theme.key_actionBarDefaultSubmenuItem), false, true);
            this.actionBar.setPopupItemsColor(getThemedColor(Theme.key_actionBarDefaultSubmenuItemIcon), true, true);
            this.actionBar.setPopupItemsSelectorColor(getThemedColor(Theme.key_dialogButtonSelector), true);
        }
        View view = this.blurredView;
        if (view != null) {
            view.setForeground(new ColorDrawable(ColorUtils.setAlphaComponent(getThemedColor(Theme.key_windowBackgroundWhite), 100)));
        }
        updateColors();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        int i = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.systemBars()).bottom;
        this.navigationBarHeight = i;
        MessagesSearchContainer messagesSearchContainer = this.searchContainer;
        if (messagesSearchContainer != null) {
            messagesSearchContainer.setPadding(0, 0, 0, i);
        }
        EmptyViewContainer emptyViewContainer = this.emptyViewContainer;
        if (emptyViewContainer != null) {
            emptyViewContainer.textView.setTranslationY((-this.navigationBarHeight) - this.additionFloatingButtonOffset);
        }
        updateFloatingButtonOffset();
        checkUi_listViewPadding();
        return WindowInsetsCompat.CONSUMED;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void blur3_InvalidateBlur() {
        if (Build.VERSION.SDK_INT < 31 || this.scrollableViewNoiseSuppressor == null) {
            return;
        }
        int iDp = AndroidUtilities.dp(48.0f);
        int iDp2 = AndroidUtilities.dp(48.0f) + ((int) this.topPanelLayout.getAnimatedHeightWithPadding(AndroidUtilities.dp(14.0f)));
        DialogsActivity dialogsActivity = this.parentDialogsActivity;
        View view = dialogsActivity != null ? dialogsActivity.fragmentView : this.fragmentView;
        this.iBlur3PositionActionBar.set(0.0f, -iDp, view.getMeasuredWidth(), (dialogsActivity != null ? dialogsActivity.getActionBar() : this.actionBar).getMeasuredHeight() + iDp + iDp2);
        MainTabsUiHelper.setBlurBounds(this.iBlur3PositionMainTabs, view, this.navigationBarHeight);
        this.iBlur3PositionMainTabs.inset(0.0f, LiteMode.isEnabled(262144) ? 0.0f : -AndroidUtilities.dp(48.0f));
        this.scrollableViewNoiseSuppressor.setupRenderNodes(this.iBlur3Positions, this.parentDialogsActivity != null ? 2 : 1);
        this.scrollableViewNoiseSuppressor.invalidateResultRenderNodes(this.iBlur3Capture, view.getMeasuredWidth(), view.getMeasuredHeight());
    }

    @Override // org.telegram.ui.MainTabsActivity.TabFragmentDelegate
    public BlurredBackgroundSourceRenderNode getGlassSource() {
        return this.iBlur3SourceGlass;
    }

    public BlurredBackgroundSourceRenderNode getFrostedGlassSource() {
        return this.iBlur3SourceGlassFrosted;
    }

    @Override // org.telegram.ui.MainTabsActivity.TabFragmentDelegate
    public void onParentScrollToTop() {
        this.recyclerListView.smoothScrollToPosition(0);
    }
}
