package org.telegram.ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Property;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import androidx.core.graphics.ColorUtils;
import com.exteragram.messenger.ExteraConfig;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BotWebViewVibrationEffect;
import org.telegram.messenger.C2484R;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_stories;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.ActionBarMenu;
import org.telegram.ui.ActionBar.ActionBarMenuItem;
import org.telegram.ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BackDrawable;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.SimpleTextView;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.ActionBar.ThemeDescription;
import org.telegram.ui.Components.BottomPagerTabs;
import org.telegram.ui.Components.Bulletin;
import org.telegram.ui.Components.FloatingDebug.FloatingDebugController;
import org.telegram.ui.Components.FloatingDebug.FloatingDebugProvider;
import org.telegram.ui.Components.Paint.ShapeDetector;
import org.telegram.ui.Components.SharedMediaLayout;
import org.telegram.ui.ProfileActivity;
import org.telegram.ui.Stories.recorder.ButtonWithCounterView;

/* JADX INFO: loaded from: classes7.dex */
public class MediaActivity extends BaseFragment implements SharedMediaLayout.SharedMediaPreloaderDelegate, FloatingDebugProvider, NotificationCenter.NotificationCenterDelegate {
    private SparseArray actionModeMessageObjects;
    private Runnable applyBulletin;
    ProfileActivity.AvatarImageView avatarImageView;
    private BackDrawable backDrawable;
    private ButtonWithCounterView button;
    private FrameLayout buttonContainer;
    private ActionBarMenuSubItem calendarItem;
    private TLRPC.ChatFull currentChatInfo;
    private TLRPC.UserFull currentUserInfo;
    private ActionBarMenuItem deleteItem;
    private long dialogId;
    private boolean filterPhotos;
    private boolean filterVideos;
    private final boolean[] firstSubtitleCheck;
    private String hashtag;
    private int initialTab;
    private int lastTab;
    private SimpleTextView[] nameTextView;
    private ActionBarMenuItem optionsItem;
    private AnimatedTextView selectedTextView;
    SharedMediaLayout sharedMediaLayout;
    private SharedMediaLayout.SharedMediaPreloader sharedMediaPreloader;
    private int shiftDp;
    private ActionBarMenuSubItem showPhotosItem;
    private ActionBarMenuSubItem showVideosItem;
    private int storiesCount;
    private final ValueAnimator[] subtitleAnimator;
    private final boolean[] subtitleShown;
    private final float[] subtitleT;
    private AnimatedTextView[] subtitleTextView;
    private StoriesTabsView tabsView;
    private FrameLayout[] titles;
    private FrameLayout titlesContainer;
    private long topicId;
    private int type;
    private String username;
    private ActionBarMenuSubItem zoomInItem;
    private ActionBarMenuSubItem zoomOutItem;

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean isSupportEdgeToEdge() {
        return true;
    }

    public MediaActivity(Bundle bundle, SharedMediaLayout.SharedMediaPreloader sharedMediaPreloader) {
        super(bundle);
        this.titles = new FrameLayout[2];
        this.nameTextView = new SimpleTextView[2];
        this.subtitleTextView = new AnimatedTextView[2];
        this.filterPhotos = true;
        this.filterVideos = true;
        this.shiftDp = -12;
        this.subtitleShown = new boolean[2];
        this.subtitleT = new float[2];
        this.firstSubtitleCheck = new boolean[]{true, true};
        this.subtitleAnimator = new ValueAnimator[2];
        this.sharedMediaPreloader = sharedMediaPreloader;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        this.type = getArguments().getInt("type", 0);
        this.dialogId = getArguments().getLong("dialog_id");
        this.topicId = getArguments().getLong("topic_id", 0L);
        this.hashtag = getArguments().getString("hashtag", _UrlKt.FRAGMENT_ENCODE_SET);
        this.username = getArguments().getString("username", _UrlKt.FRAGMENT_ENCODE_SET);
        this.storiesCount = getArguments().getInt("storiesCount", -1);
        int i = this.type;
        this.initialTab = getArguments().getInt("start_from", i == 2 ? 9 : i == 1 ? 8 : 0);
        getNotificationCenter().addObserver(this, NotificationCenter.userInfoDidLoad);
        getNotificationCenter().addObserver(this, NotificationCenter.currentUserPremiumStatusChanged);
        getNotificationCenter().addObserver(this, NotificationCenter.storiesEnabledUpdate);
        if (DialogObject.isUserDialog(this.dialogId) && this.topicId == 0) {
            TLRPC.User user = getMessagesController().getUser(Long.valueOf(this.dialogId));
            if (UserObject.isUserSelf(user)) {
                getMessagesController().loadUserInfo(user, false, this.classGuid);
                this.currentUserInfo = getMessagesController().getUserFull(this.dialogId);
            }
        }
        if (this.sharedMediaPreloader == null) {
            this.sharedMediaPreloader = new SharedMediaLayout.SharedMediaPreloader(this);
        }
        this.sharedMediaPreloader.addDelegate(this);
        return super.onFragmentCreate();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        getNotificationCenter().removeObserver(this, NotificationCenter.userInfoDidLoad);
        getNotificationCenter().removeObserver(this, NotificationCenter.currentUserPremiumStatusChanged);
        getNotificationCenter().removeObserver(this, NotificationCenter.storiesEnabledUpdate);
        Runnable runnable = this.applyBulletin;
        if (runnable != null) {
            this.applyBulletin = null;
            AndroidUtilities.runOnUIThread(runnable);
        }
        Bulletin.removeDelegate(this);
        SharedMediaLayout sharedMediaLayout = this.sharedMediaLayout;
        if (sharedMediaLayout != null) {
            sharedMediaLayout.onDestroy();
        }
        SharedMediaLayout.SharedMediaPreloader sharedMediaPreloader = this.sharedMediaPreloader;
        if (sharedMediaPreloader != null) {
            sharedMediaPreloader.onDestroy(this);
        }
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i != NotificationCenter.userInfoDidLoad) {
            int i3 = NotificationCenter.didReceiveNewMessages;
            return;
        }
        if (((Long) objArr[0]).longValue() == this.dialogId) {
            TLRPC.UserFull userFull = (TLRPC.UserFull) objArr[1];
            this.currentUserInfo = userFull;
            SharedMediaLayout sharedMediaLayout = this.sharedMediaLayout;
            if (sharedMediaLayout != null) {
                sharedMediaLayout.setUserInfo(userFull);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:148:0x06ca  */
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
    @Override // org.telegram.ui.ActionBar.BaseFragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public View createView(Context context) {
        int i;
        TLRPC.User user;
        AvatarDrawable avatarDrawable;
        SimpleTextView simpleTextView;
        ActionBarMenuItem actionBarMenuItem;
        ActionBar actionBar = this.actionBar;
        BackDrawable backDrawable = new BackDrawable(false);
        this.backDrawable = backDrawable;
        actionBar.setBackButtonDrawable(backDrawable);
        this.backDrawable.setAnimationTime(240.0f);
        this.actionBar.setCastShadows(false);
        this.actionBar.setAddToContainer(false);
        this.actionBar.setActionBarMenuOnItemClick(new C37391());
        final FrameLayout frameLayout = new FrameLayout(context);
        final SizeNotifierFrameLayout sizeNotifierFrameLayout = new SizeNotifierFrameLayout(context) { // from class: org.telegram.ui.Components.MediaActivity.2
            @Override // android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i2, int i3) {
                ((FrameLayout.LayoutParams) MediaActivity.this.sharedMediaLayout.getLayoutParams()).topMargin = ActionBar.getCurrentActionBarHeight() + (((BaseFragment) MediaActivity.this).actionBar.getOccupyStatusBar() ? AndroidUtilities.statusBarHeight : 0);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) frameLayout.getLayoutParams();
                layoutParams.topMargin = ((BaseFragment) MediaActivity.this).actionBar.getOccupyStatusBar() ? AndroidUtilities.statusBarHeight : 0;
                layoutParams.height = ActionBar.getCurrentActionBarHeight();
                for (int i4 = 0; i4 < 2; i4++) {
                    if (MediaActivity.this.nameTextView[i4] != null) {
                        ((FrameLayout.LayoutParams) MediaActivity.this.nameTextView[i4].getLayoutParams()).topMargin = (((ActionBar.getCurrentActionBarHeight() / 2) - AndroidUtilities.dp(22.0f)) / 2) + AndroidUtilities.dp((AndroidUtilities.isTablet() || getResources().getConfiguration().orientation != 2) ? 5.0f : 4.0f);
                    }
                    if (MediaActivity.this.subtitleTextView[i4] != null) {
                        ((FrameLayout.LayoutParams) MediaActivity.this.subtitleTextView[i4].getLayoutParams()).topMargin = ((ActionBar.getCurrentActionBarHeight() / 2) + (((ActionBar.getCurrentActionBarHeight() / 2) - AndroidUtilities.dp(19.0f)) / 2)) - AndroidUtilities.dp(7.0f);
                    }
                }
                ((FrameLayout.LayoutParams) MediaActivity.this.avatarImageView.getLayoutParams()).topMargin = (ActionBar.getCurrentActionBarHeight() - AndroidUtilities.dp(42.0f)) / 2;
                super.onMeasure(i2, i3);
            }

            @Override // android.view.ViewGroup, android.view.View
            public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                SharedMediaLayout sharedMediaLayout = MediaActivity.this.sharedMediaLayout;
                if (sharedMediaLayout != null && sharedMediaLayout.isInFastScroll()) {
                    return MediaActivity.this.sharedMediaLayout.dispatchFastScrollEvent(motionEvent);
                }
                SharedMediaLayout sharedMediaLayout2 = MediaActivity.this.sharedMediaLayout;
                if (sharedMediaLayout2 == null || !sharedMediaLayout2.checkPinchToZoom(motionEvent)) {
                    return super.dispatchTouchEvent(motionEvent);
                }
                return true;
            }

            @Override // org.telegram.ui.Components.SizeNotifierFrameLayout
            protected void drawList(Canvas canvas, boolean z, ArrayList arrayList) {
                MediaActivity.this.sharedMediaLayout.drawListForBlur(canvas, arrayList);
            }
        };
        sizeNotifierFrameLayout.needBlur = true;
        this.fragmentView = sizeNotifierFrameLayout;
        sizeNotifierFrameLayout.setBackgroundColor(getThemedColor(Theme.key_windowBackgroundGray));
        final ActionBarMenu actionBarMenuCreateMenu = this.actionBar.createMenu();
        int i2 = this.type;
        if (i2 == 1 || i2 == 2) {
            FrameLayout frameLayout2 = new FrameLayout(context);
            this.actionBar.addView(frameLayout2, LayoutHelper.createFrame(56, 56, 85));
            int i3 = Theme.key_actionBarActionModeDefaultSelector;
            int themedColor = getThemedColor(i3);
            int i4 = Theme.key_windowBackgroundWhiteBlackText;
            ActionBarMenuItem actionBarMenuItem2 = new ActionBarMenuItem(context, actionBarMenuCreateMenu, themedColor, getThemedColor(i4));
            this.deleteItem = actionBarMenuItem2;
            actionBarMenuItem2.setIcon(C2484R.drawable.msg_delete);
            this.deleteItem.setVisibility(8);
            this.deleteItem.setAlpha(0.0f);
            this.deleteItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.MediaActivity$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    actionBarMenuCreateMenu.onItemClick(2);
                }
            });
            frameLayout2.addView(this.deleteItem);
            ActionBarMenuItem actionBarMenuItem3 = new ActionBarMenuItem(context, actionBarMenuCreateMenu, getThemedColor(i3), getThemedColor(i4));
            this.optionsItem = actionBarMenuItem3;
            actionBarMenuItem3.setIcon(C2484R.drawable.ic_ab_other);
            this.optionsItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.MediaActivity$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$createView$1(view);
                }
            });
            this.optionsItem.setVisibility(8);
            this.optionsItem.setAlpha(0.0f);
            frameLayout2.addView(this.optionsItem);
            ActionBarMenuSubItem actionBarMenuSubItemAddSubItem = this.optionsItem.addSubItem(8, C2484R.drawable.msg_zoomin, LocaleController.getString(C2484R.string.MediaZoomIn));
            this.zoomInItem = actionBarMenuSubItemAddSubItem;
            actionBarMenuSubItemAddSubItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.MediaActivity$$ExternalSyntheticLambda4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$createView$2(view);
                }
            });
            ActionBarMenuSubItem actionBarMenuSubItemAddSubItem2 = this.optionsItem.addSubItem(9, C2484R.drawable.msg_zoomout, LocaleController.getString(C2484R.string.MediaZoomOut));
            this.zoomOutItem = actionBarMenuSubItemAddSubItem2;
            actionBarMenuSubItemAddSubItem2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.MediaActivity$$ExternalSyntheticLambda5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$createView$3(view);
                }
            });
            ActionBarMenuSubItem actionBarMenuSubItemAddSubItem3 = this.optionsItem.addSubItem(10, C2484R.drawable.msg_calendar2, LocaleController.getString(C2484R.string.Calendar));
            this.calendarItem = actionBarMenuSubItemAddSubItem3;
            actionBarMenuSubItemAddSubItem3.setEnabled(false);
            this.calendarItem.setAlpha(0.5f);
            this.optionsItem.addColoredGap();
            ActionBarMenuSubItem actionBarMenuSubItemAddSubItem4 = this.optionsItem.addSubItem(6, 0, (CharSequence) LocaleController.getString(C2484R.string.MediaShowPhotos), true);
            this.showPhotosItem = actionBarMenuSubItemAddSubItem4;
            actionBarMenuSubItemAddSubItem4.setChecked(this.filterPhotos);
            this.showPhotosItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.MediaActivity$$ExternalSyntheticLambda6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$createView$4(view);
                }
            });
            ActionBarMenuSubItem actionBarMenuSubItemAddSubItem5 = this.optionsItem.addSubItem(7, 0, (CharSequence) LocaleController.getString(C2484R.string.MediaShowVideos), true);
            this.showVideosItem = actionBarMenuSubItemAddSubItem5;
            actionBarMenuSubItemAddSubItem5.setChecked(this.filterVideos);
            this.showVideosItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.MediaActivity$$ExternalSyntheticLambda7
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$createView$5(view);
                }
            });
        }
        boolean z = this.type == 0;
        FrameLayout frameLayout3 = new FrameLayout(context);
        this.titlesContainer = frameLayout3;
        frameLayout.addView(frameLayout3, LayoutHelper.createFrame(-1, -1, 119));
        int i5 = 0;
        while (true) {
            if (i5 >= (this.type == 1 ? 2 : 1)) {
                break;
            }
            this.titles[i5] = new FrameLayout(context);
            this.titlesContainer.addView(this.titles[i5], LayoutHelper.createFrame(-1, -1, 119));
            this.nameTextView[i5] = new SimpleTextView(context);
            this.nameTextView[i5].setPivotX(0.0f);
            this.nameTextView[i5].setPivotY(AndroidUtilities.dp(9.0f));
            this.nameTextView[i5].setTextSize(18);
            this.nameTextView[i5].setGravity(3);
            this.nameTextView[i5].setTypeface(AndroidUtilities.bold());
            this.nameTextView[i5].setLeftDrawableTopPadding(-AndroidUtilities.dp(1.3f));
            this.nameTextView[i5].setScrollNonFitText(true);
            this.nameTextView[i5].setImportantForAccessibility(2);
            this.titles[i5].addView(this.nameTextView[i5], LayoutHelper.createFrame(-2, -2.0f, 51, z ? 118.0f : 72.0f, 0.0f, 56.0f, 0.0f));
            this.subtitleTextView[i5] = new AnimatedTextView(context, true, true, true);
            this.subtitleTextView[i5].setAnimationProperties(0.4f, 0L, 320L, CubicBezierInterpolator.EASE_OUT_QUINT);
            this.subtitleTextView[i5].setTextSize(AndroidUtilities.dp(14.0f));
            this.subtitleTextView[i5].setTextColor(Theme.getColor(Theme.key_player_actionBarSubtitle));
            this.titles[i5].addView(this.subtitleTextView[i5], LayoutHelper.createFrame(-2, -2.0f, 51, z ? 118.0f : 72.0f, 0.0f, 56.0f, 0.0f));
            if (i5 != 0) {
                this.titles[i5].setAlpha(0.0f);
            }
            i5++;
        }
        ProfileActivity.AvatarImageView avatarImageView = new ProfileActivity.AvatarImageView(context) { // from class: org.telegram.ui.Components.MediaActivity.3
            @Override // android.view.View
            public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
                super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
                if (getImageReceiver().hasNotThumb()) {
                    accessibilityNodeInfo.setText(LocaleController.getString(C2484R.string.AccDescrProfilePicture));
                    accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(16, LocaleController.getString(C2484R.string.Open)));
                    accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(32, LocaleController.getString(C2484R.string.AccDescrOpenInPhotoViewer)));
                    return;
                }
                accessibilityNodeInfo.setVisibleToUser(false);
            }
        };
        this.avatarImageView = avatarImageView;
        avatarImageView.getImageReceiver().setAllowDecodeSingleFrame(true);
        this.avatarImageView.setRoundRadius(ExteraConfig.getAvatarCorners(42.0f, false, getDialogId() == getUserConfig().getClientUserId() && this.topicId == 0 && getMessagesController().savedViewAsChats));
        this.avatarImageView.setPivotX(0.0f);
        this.avatarImageView.setPivotY(0.0f);
        AvatarDrawable avatarDrawable2 = new AvatarDrawable();
        avatarDrawable2.setProfile(true);
        this.avatarImageView.setVisibility(z ? 0 : 8);
        this.avatarImageView.setImageDrawable(avatarDrawable2);
        frameLayout.addView(this.avatarImageView, LayoutHelper.createFrame(42, 42.0f, 51, 64.0f, 0.0f, 0.0f, 0.0f));
        AnimatedTextView animatedTextView = new AnimatedTextView(context, true, true, true);
        this.selectedTextView = animatedTextView;
        animatedTextView.setAnimationProperties(0.4f, 0L, 320L, CubicBezierInterpolator.EASE_OUT_QUINT);
        this.selectedTextView.setTextSize(AndroidUtilities.dp(20.0f));
        this.selectedTextView.setGravity(3);
        AnimatedTextView animatedTextView2 = this.selectedTextView;
        int i6 = Theme.key_windowBackgroundWhiteBlackText;
        animatedTextView2.setTextColor(getThemedColor(i6));
        this.selectedTextView.setTypeface(AndroidUtilities.bold());
        frameLayout.addView(this.selectedTextView, LayoutHelper.createFrame(-2, -1.0f, 23, (z ? 48 : 0) + 72, -2.0f, 72.0f, 0.0f));
        if (this.type == 1) {
            StoriesTabsView storiesTabsView = new StoriesTabsView(context, getResourceProvider());
            this.tabsView = storiesTabsView;
            storiesTabsView.setOnTabClick(new Utilities.Callback() { // from class: org.telegram.ui.Components.MediaActivity$$ExternalSyntheticLambda8
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$createView$6((Integer) obj);
                }
            });
            FrameLayout frameLayout4 = new FrameLayout(context);
            this.buttonContainer = frameLayout4;
            frameLayout4.setPadding(AndroidUtilities.dp(10.0f), AndroidUtilities.dp(8.0f), AndroidUtilities.dp(10.0f), AndroidUtilities.dp(8.0f));
            this.buttonContainer.setBackgroundColor(getThemedColor(Theme.key_windowBackgroundWhite));
            ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(context, getResourceProvider());
            this.button = buttonWithCounterView;
            buttonWithCounterView.setText(LocaleController.getString(C2484R.string.SaveToProfile), false);
            this.button.setShowZero(true);
            this.button.setCount(0, false);
            this.button.setEnabled(false);
            this.button.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.MediaActivity$$ExternalSyntheticLambda9
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$createView$10(view);
                }
            });
            this.buttonContainer.addView(this.button);
            this.buttonContainer.setAlpha(0.0f);
            this.buttonContainer.setTranslationY(AndroidUtilities.dp(100.0f));
            Bulletin.addDelegate(this, new Bulletin.Delegate() { // from class: org.telegram.ui.Components.MediaActivity.4
                @Override // org.telegram.ui.Components.Bulletin.Delegate
                public /* synthetic */ boolean allowLayoutChanges() {
                    return Bulletin.Delegate.CC.$default$allowLayoutChanges(this);
                }

                @Override // org.telegram.ui.Components.Bulletin.Delegate
                public /* synthetic */ boolean bottomOffsetAnimated() {
                    return Bulletin.Delegate.CC.$default$bottomOffsetAnimated(this);
                }

                @Override // org.telegram.ui.Components.Bulletin.Delegate
                public /* synthetic */ boolean clipWithGradient(int i7) {
                    return Bulletin.Delegate.CC.$default$clipWithGradient(this, i7);
                }

                @Override // org.telegram.ui.Components.Bulletin.Delegate
                public /* synthetic */ int getTopOffset(int i7) {
                    return Bulletin.Delegate.CC.$default$getTopOffset(this, i7);
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
                public int getBottomOffset(int i7) {
                    return AndroidUtilities.dp(64.0f);
                }
            });
        }
        if (this.type == 0 && this.dialogId == getUserConfig().getClientUserId() && this.topicId == 0 && !getMessagesController().getSavedMessagesController().unsupported && getMessagesController().getSavedMessagesController().hasDialogs()) {
            this.initialTab = 11;
        }
        SharedMediaLayout sharedMediaLayout = new SharedMediaLayout(context, this.dialogId, this.sharedMediaPreloader, 0, null, this.currentChatInfo, this.currentUserInfo, this.initialTab, 0, this, new SharedMediaLayout.Delegate() { // from class: org.telegram.ui.Components.MediaActivity.5
            @Override // org.telegram.ui.Components.SharedMediaLayout.Delegate
            public boolean canSearchMembers() {
                return false;
            }

            @Override // org.telegram.ui.Components.SharedMediaLayout.Delegate
            public TLRPC.Chat getCurrentChat() {
                return null;
            }

            @Override // org.telegram.ui.Components.SharedMediaLayout.Delegate
            public RecyclerListView getListView() {
                return null;
            }

            @Override // org.telegram.ui.Components.SharedMediaLayout.Delegate
            public boolean isFragmentOpened() {
                return true;
            }

            @Override // org.telegram.ui.Components.SharedMediaLayout.Delegate
            public boolean onMemberClick(TLRPC.ChatParticipant chatParticipant, boolean z2, boolean z3, View view) {
                return false;
            }

            @Override // org.telegram.ui.Components.SharedMediaLayout.Delegate
            public void scrollToSharedMedia() {
            }

            @Override // org.telegram.ui.Components.SharedMediaLayout.Delegate
            public void updateSelectedMediaTabText() {
                MediaActivity.this.updateMediaCount();
            }
        }, 0, getResourceProvider()) { // from class: org.telegram.ui.Components.MediaActivity.6
            private AnimatorSet actionModeAnimation;

            @Override // org.telegram.ui.Components.SharedMediaLayout
            protected void onSelectedTabChanged() {
                super.onSelectedTabChanged();
                MediaActivity.this.updateMediaCount();
            }

            @Override // org.telegram.ui.Components.SharedMediaLayout
            public String getStoriesHashtag() {
                return MediaActivity.this.hashtag;
            }

            @Override // org.telegram.ui.Components.SharedMediaLayout
            public String getStoriesHashtagUsername() {
                return MediaActivity.this.username;
            }

            @Override // org.telegram.ui.Components.SharedMediaLayout
            protected boolean canShowSearchItem() {
                return (MediaActivity.this.type == 1 || MediaActivity.this.type == 2) ? false : true;
            }

            @Override // org.telegram.ui.Components.SharedMediaLayout
            protected void onSearchStateChanged(boolean z2) {
                AndroidUtilities.removeAdjustResize(MediaActivity.this.getParentActivity(), ((BaseFragment) MediaActivity.this).classGuid);
                AndroidUtilities.updateViewVisibilityAnimated(frameLayout, !z2, 0.95f, true);
            }

            @Override // org.telegram.ui.Components.SharedMediaLayout
            protected void drawBackgroundWithBlur(Canvas canvas, float f, android.graphics.Rect rect, Paint paint) {
                sizeNotifierFrameLayout.drawBlurRect(canvas, getY() + f, rect, paint, true);
            }

            @Override // org.telegram.ui.Components.SharedMediaLayout
            protected void invalidateBlur() {
                sizeNotifierFrameLayout.invalidateBlur();
            }

            @Override // org.telegram.ui.Components.SharedMediaLayout
            protected boolean isStoriesView() {
                return MediaActivity.this.type == 1 || MediaActivity.this.type == 2;
            }

            @Override // org.telegram.ui.Components.SharedMediaLayout
            protected boolean customTabs() {
                return MediaActivity.this.type == 1 || MediaActivity.this.type == 2 || MediaActivity.this.type == 3;
            }

            @Override // org.telegram.ui.Components.SharedMediaLayout
            protected boolean includeStories() {
                return MediaActivity.this.type == 1 || MediaActivity.this.type == 2;
            }

            @Override // org.telegram.ui.Components.SharedMediaLayout
            protected boolean includeSavedDialogs() {
                return MediaActivity.this.type == 0 && MediaActivity.this.dialogId == MediaActivity.this.getUserConfig().getClientUserId() && MediaActivity.this.topicId == 0;
            }

            @Override // org.telegram.ui.Components.SharedMediaLayout
            protected boolean isArchivedOnlyStoriesView() {
                return MediaActivity.this.type == 2;
            }

            @Override // org.telegram.ui.Components.SharedMediaLayout
            protected int getInitialTab() {
                return MediaActivity.this.initialTab;
            }

            @Override // org.telegram.ui.Components.SharedMediaLayout
            protected void showActionMode(final boolean z2) {
                if (MediaActivity.this.type == 0) {
                    super.showActionMode(z2);
                    return;
                }
                if (this.isActionModeShowed == z2) {
                    return;
                }
                this.isActionModeShowed = z2;
                AnimatorSet animatorSet = this.actionModeAnimation;
                if (animatorSet != null) {
                    animatorSet.cancel();
                }
                if (MediaActivity.this.type == 1 || MediaActivity.this.type == 2) {
                    disableScroll(z2);
                }
                if (z2) {
                    MediaActivity.this.selectedTextView.setVisibility(0);
                    if (MediaActivity.this.buttonContainer != null) {
                        MediaActivity.this.buttonContainer.setVisibility(0);
                    }
                } else {
                    MediaActivity.this.titlesContainer.setVisibility(0);
                }
                float f = 0.0f;
                MediaActivity.this.backDrawable.setRotation(z2 ? 1.0f : 0.0f, true);
                this.actionModeAnimation = new AnimatorSet();
                ArrayList arrayList = new ArrayList();
                AnimatedTextView animatedTextView3 = MediaActivity.this.selectedTextView;
                float[] fArr = {z2 ? 1.0f : 0.0f};
                Property property = View.ALPHA;
                arrayList.add(ObjectAnimator.ofFloat(animatedTextView3, (Property<AnimatedTextView, Float>) property, fArr));
                arrayList.add(ObjectAnimator.ofFloat(MediaActivity.this.titlesContainer, (Property<FrameLayout, Float>) property, z2 ? 0.0f : 1.0f));
                if (MediaActivity.this.buttonContainer != null) {
                    arrayList.add(ObjectAnimator.ofFloat(MediaActivity.this.buttonContainer, (Property<FrameLayout, Float>) property, z2 ? 1.0f : 0.0f));
                    arrayList.add(ObjectAnimator.ofFloat(MediaActivity.this.buttonContainer, (Property<FrameLayout, Float>) View.TRANSLATION_Y, z2 ? 0.0f : MediaActivity.this.buttonContainer.getMeasuredHeight()));
                }
                if (MediaActivity.this.deleteItem != null) {
                    MediaActivity.this.deleteItem.setVisibility(0);
                    arrayList.add(ObjectAnimator.ofFloat(MediaActivity.this.deleteItem, (Property<ActionBarMenuItem, Float>) property, z2 ? 1.0f : 0.0f));
                }
                final boolean z3 = getStoriesCount(getClosestTab()) == 0;
                if (MediaActivity.this.optionsItem != null) {
                    MediaActivity.this.optionsItem.setVisibility(0);
                    ActionBarMenuItem actionBarMenuItem4 = MediaActivity.this.optionsItem;
                    if (!z2 && !z3) {
                        f = 1.0f;
                    }
                    arrayList.add(ObjectAnimator.ofFloat(actionBarMenuItem4, (Property<ActionBarMenuItem, Float>) property, f));
                }
                if (MediaActivity.this.tabsView != null) {
                    arrayList.add(ObjectAnimator.ofFloat(MediaActivity.this.tabsView, (Property<StoriesTabsView, Float>) property, z2 ? 0.4f : 1.0f));
                }
                this.actionModeAnimation.playTogether(arrayList);
                this.actionModeAnimation.setDuration(300L);
                this.actionModeAnimation.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
                this.actionModeAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.MediaActivity.6.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                        C37446.this.actionModeAnimation = null;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        if (C37446.this.actionModeAnimation == null) {
                            return;
                        }
                        C37446.this.actionModeAnimation = null;
                        if (!z2) {
                            MediaActivity.this.selectedTextView.setVisibility(4);
                            if (MediaActivity.this.buttonContainer != null) {
                                MediaActivity.this.buttonContainer.setVisibility(4);
                            }
                            if (MediaActivity.this.deleteItem != null) {
                                MediaActivity.this.deleteItem.setVisibility(8);
                            }
                            if (!z3 || MediaActivity.this.optionsItem == null) {
                                return;
                            }
                            MediaActivity.this.optionsItem.setVisibility(8);
                            return;
                        }
                        MediaActivity.this.titlesContainer.setVisibility(4);
                        if (MediaActivity.this.optionsItem != null) {
                            MediaActivity.this.optionsItem.setVisibility(8);
                        }
                    }
                });
                this.actionModeAnimation.start();
            }

            @Override // org.telegram.ui.Components.SharedMediaLayout
            protected void onActionModeSelectedUpdate(SparseArray sparseArray) {
                int size = sparseArray.size();
                MediaActivity.this.actionModeMessageObjects = sparseArray;
                if (MediaActivity.this.type == 1 || MediaActivity.this.type == 2) {
                    MediaActivity.this.selectedTextView.cancelAnimation();
                    MediaActivity.this.selectedTextView.setText(LocaleController.formatPluralString("StoriesSelected", size, new Object[0]), !LocaleController.isRTL);
                    if (MediaActivity.this.button != null) {
                        MediaActivity.this.button.setEnabled(size > 0);
                        MediaActivity.this.button.setCount(size, true);
                        if (MediaActivity.this.sharedMediaLayout.getClosestTab() == 8) {
                            MediaActivity.this.button.setText(LocaleController.formatPluralString("ArchiveStories", size, new Object[0]), true);
                        }
                    }
                }
            }

            @Override // org.telegram.ui.Components.SharedMediaLayout
            protected void onTabProgress(float f) {
                if (MediaActivity.this.type != 1) {
                    return;
                }
                float f2 = f - 8.0f;
                if (MediaActivity.this.tabsView != null) {
                    MediaActivity.this.tabsView.setProgress(f2);
                }
                float f3 = 1.0f - f2;
                MediaActivity.this.titles[0].setAlpha(f3);
                MediaActivity.this.titles[0].setTranslationX(AndroidUtilities.dp(-12.0f) * f2);
                MediaActivity.this.titles[1].setAlpha(f2);
                MediaActivity.this.titles[1].setTranslationX(AndroidUtilities.dp(12.0f) * f3);
            }

            @Override // org.telegram.ui.Components.SharedMediaLayout
            protected void onTabScroll(boolean z2) {
                if (MediaActivity.this.tabsView != null) {
                    MediaActivity.this.tabsView.setScrolling(z2);
                }
            }
        };
        this.sharedMediaLayout = sharedMediaLayout;
        sharedMediaLayout.scrollSlidingTextTabStrip.setOpen(true);
        if (this.sharedMediaLayout.getSearchOptionsItem() != null) {
            this.sharedMediaLayout.getSearchOptionsItem().setColorFilter(new PorterDuffColorFilter(getThemedColor(i6), PorterDuff.Mode.MULTIPLY));
        }
        this.sharedMediaLayout.setPinnedToTop(true);
        this.sharedMediaLayout.getSearchItem().setTranslationY(0.0f);
        this.sharedMediaLayout.photoVideoOptionsItem.setTranslationY(0.0f);
        if (this.sharedMediaLayout.getSearchOptionsItem() != null) {
            this.sharedMediaLayout.getSearchOptionsItem().setTranslationY(0.0f);
        }
        int i7 = this.type;
        if (i7 == 1 || i7 == 2) {
            sizeNotifierFrameLayout.addView(this.sharedMediaLayout, LayoutHelper.createFrame(-1, -1.0f, 119, 0.0f, 0.0f, 0.0f, 64.0f));
        } else {
            sizeNotifierFrameLayout.addView(this.sharedMediaLayout);
        }
        sizeNotifierFrameLayout.addView(this.actionBar);
        sizeNotifierFrameLayout.addView(frameLayout);
        sizeNotifierFrameLayout.blurBehindViews.add(this.sharedMediaLayout);
        if (this.type == 1) {
            showSubtitle(0, false, false);
            showSubtitle(1, false, false);
        }
        StoriesTabsView storiesTabsView2 = this.tabsView;
        if (storiesTabsView2 != null) {
            i = -1;
            sizeNotifierFrameLayout.addView(storiesTabsView2, LayoutHelper.createFrame(-1, -2, 87));
        } else {
            i = -1;
        }
        FrameLayout frameLayout5 = this.buttonContainer;
        if (frameLayout5 != null) {
            sizeNotifierFrameLayout.addView(frameLayout5, LayoutHelper.createFrame(i, 64, 87));
        }
        long j = this.dialogId;
        if (this.topicId != 0 && j == getUserConfig().getClientUserId()) {
            j = this.topicId;
        }
        int i8 = this.type;
        TLRPC.User user2 = null;
        user2 = null;
        user2 = null;
        user2 = null;
        user2 = null;
        user2 = null;
        user2 = null;
        user2 = null;
        if (i8 == 3) {
            this.nameTextView[0].setText(this.hashtag);
            int i9 = this.storiesCount;
            if (i9 != i) {
                this.subtitleTextView[0].setText(LocaleController.formatPluralStringSpaced("FoundStories", i9));
            }
        } else if (i8 == 2) {
            this.nameTextView[0].setText(LocaleController.getString(C2484R.string.ProfileStoriesArchive));
        } else if (i8 == 1) {
            this.nameTextView[0].setText(LocaleController.getString(C2484R.string.ProfileMyStories));
            this.nameTextView[1].setText(LocaleController.getString(C2484R.string.ProfileStoriesArchive));
        } else {
            if (j == UserObject.ANONYMOUS) {
                this.nameTextView[0].setText(LocaleController.getString(C2484R.string.AnonymousForward));
                AvatarDrawable avatarDrawable3 = avatarDrawable2;
                avatarDrawable3.setAvatarType(21);
                avatarDrawable3.setScaleSize(0.75f);
                avatarDrawable = avatarDrawable3;
            } else {
                AvatarDrawable avatarDrawable4 = avatarDrawable2;
                if (this.topicId != 0 && j == getUserConfig().getClientUserId()) {
                    this.nameTextView[0].setText(LocaleController.getString(C2484R.string.MyNotes));
                    avatarDrawable4.setAvatarType(22);
                    avatarDrawable4.setScaleSize(0.75f);
                    avatarDrawable = avatarDrawable4;
                } else if (DialogObject.isEncryptedDialog(j)) {
                    TLRPC.EncryptedChat encryptedChat = getMessagesController().getEncryptedChat(Integer.valueOf(DialogObject.getEncryptedChatId(j)));
                    avatarDrawable = avatarDrawable4;
                    if (encryptedChat != null) {
                        TLRPC.User user3 = getMessagesController().getUser(Long.valueOf(encryptedChat.user_id));
                        avatarDrawable = avatarDrawable4;
                        if (user3 != null) {
                            this.nameTextView[0].setText(ContactsController.formatName(user3.first_name, user3.last_name));
                            avatarDrawable4.setInfo(this.currentAccount, user3);
                            user = user3;
                            user2 = user;
                            avatarDrawable = avatarDrawable4;
                        }
                    }
                } else if (DialogObject.isUserDialog(j)) {
                    TLRPC.User user4 = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(j));
                    avatarDrawable = avatarDrawable4;
                    if (user4 != null) {
                        if (user4.self) {
                            this.nameTextView[0].setText(LocaleController.getString(C2484R.string.SavedMessages));
                            avatarDrawable4.setAvatarType(1);
                            avatarDrawable4.setScaleSize(0.8f);
                            avatarDrawable = avatarDrawable4;
                        } else {
                            this.nameTextView[0].setText(ContactsController.formatName(user4.first_name, user4.last_name));
                            avatarDrawable4.setInfo(this.currentAccount, user4);
                            user = user4;
                            user2 = user;
                            avatarDrawable = avatarDrawable4;
                        }
                    }
                } else {
                    TLRPC.Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-j));
                    avatarDrawable = avatarDrawable4;
                    if (chat != null) {
                        this.nameTextView[0].setText(chat.title);
                        avatarDrawable4.setInfo(this.currentAccount, chat);
                        user = chat;
                        user2 = user;
                        avatarDrawable = avatarDrawable4;
                    }
                }
            }
            this.avatarImageView.setImage(ImageLocation.getForUserOrChat(user2, 1), "50_50", avatarDrawable, user2);
            simpleTextView = this.nameTextView[0];
            if (simpleTextView != null && TextUtils.isEmpty(simpleTextView.getText())) {
                this.nameTextView[0].setText(LocaleController.getString(C2484R.string.SharedContentTitle));
            }
            if (this.sharedMediaLayout.isSearchItemVisible() && this.type != 1) {
                this.sharedMediaLayout.getSearchItem().setVisibility(0);
            }
            actionBarMenuItem = this.sharedMediaLayout.searchItemIcon;
            if (actionBarMenuItem != null && this.initialTab != 11) {
                actionBarMenuItem.setVisibility(8);
            }
            if (this.sharedMediaLayout.getSearchOptionsItem() != null && this.type != 1) {
                this.sharedMediaLayout.animateSearchToOptions(!r3.isSearchItemVisible(), false);
                this.sharedMediaLayout.getSearchOptionsItem().setVisibility(0);
            }
            if (!this.sharedMediaLayout.isCalendarItemVisible() && this.type != 1) {
                this.sharedMediaLayout.photoVideoOptionsItem.setVisibility(0);
            } else {
                this.sharedMediaLayout.photoVideoOptionsItem.setVisibility(4);
            }
            this.actionBar.setDrawBlurBackground(sizeNotifierFrameLayout);
            AndroidUtilities.updateViewVisibilityAnimated(frameLayout, true, 1.0f, false);
            updateMediaCount();
            updateColors();
            if (this.type == 1 && this.initialTab == 9) {
                this.sharedMediaLayout.onTabProgress(9.0f);
            }
            return sizeNotifierFrameLayout;
        }
        avatarDrawable = avatarDrawable2;
        this.avatarImageView.setImage(ImageLocation.getForUserOrChat(user2, 1), "50_50", avatarDrawable, user2);
        simpleTextView = this.nameTextView[0];
        if (simpleTextView != null) {
            this.nameTextView[0].setText(LocaleController.getString(C2484R.string.SharedContentTitle));
        }
        if (this.sharedMediaLayout.isSearchItemVisible()) {
            this.sharedMediaLayout.getSearchItem().setVisibility(0);
        }
        actionBarMenuItem = this.sharedMediaLayout.searchItemIcon;
        if (actionBarMenuItem != null) {
            actionBarMenuItem.setVisibility(8);
        }
        if (this.sharedMediaLayout.getSearchOptionsItem() != null) {
            this.sharedMediaLayout.animateSearchToOptions(!r3.isSearchItemVisible(), false);
            this.sharedMediaLayout.getSearchOptionsItem().setVisibility(0);
        }
        if (!this.sharedMediaLayout.isCalendarItemVisible()) {
            this.sharedMediaLayout.photoVideoOptionsItem.setVisibility(4);
        }
        this.actionBar.setDrawBlurBackground(sizeNotifierFrameLayout);
        AndroidUtilities.updateViewVisibilityAnimated(frameLayout, true, 1.0f, false);
        updateMediaCount();
        updateColors();
        if (this.type == 1) {
            this.sharedMediaLayout.onTabProgress(9.0f);
        }
        return sizeNotifierFrameLayout;
    }

    /* JADX INFO: renamed from: org.telegram.ui.Components.MediaActivity$1 */
    class C37391 extends ActionBar.ActionBarMenuOnItemClick {
        C37391() {
        }

        @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
        public void onItemClick(int i) {
            if (i == -1) {
                if (MediaActivity.this.sharedMediaLayout.closeActionMode(true)) {
                    return;
                }
                MediaActivity.this.finishFragment();
                return;
            }
            if (i != 2) {
                if (i == 10) {
                    SharedMediaLayout sharedMediaLayout = MediaActivity.this.sharedMediaLayout;
                    sharedMediaLayout.showMediaCalendar(sharedMediaLayout.getClosestTab(), false);
                    return;
                } else {
                    if (i == 11) {
                        MediaActivity.this.sharedMediaLayout.closeActionMode(true);
                        MediaActivity.this.sharedMediaLayout.getSearchItem().openSearch(false);
                        return;
                    }
                    return;
                }
            }
            if (MediaActivity.this.actionModeMessageObjects != null) {
                final ArrayList arrayList = new ArrayList();
                for (int i2 = 0; i2 < MediaActivity.this.actionModeMessageObjects.size(); i2++) {
                    TL_stories.StoryItem storyItem = ((MessageObject) MediaActivity.this.actionModeMessageObjects.valueAt(i2)).storyItem;
                    if (storyItem != null) {
                        arrayList.add(storyItem);
                    }
                }
                if (arrayList.isEmpty()) {
                    return;
                }
                AlertDialog.Builder builder = new AlertDialog.Builder(MediaActivity.this.getContext(), MediaActivity.this.getResourceProvider());
                builder.setTitle(LocaleController.getString(arrayList.size() > 1 ? C2484R.string.DeleteStoriesTitle : C2484R.string.DeleteStoryTitle));
                builder.setMessage(LocaleController.formatPluralString("DeleteStoriesSubtitle", arrayList.size(), new Object[0]));
                builder.setPositiveButton(LocaleController.getString(C2484R.string.Delete), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.MediaActivity$1$$ExternalSyntheticLambda0
                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                    public final void onClick(AlertDialog alertDialog, int i3) {
                        this.f$0.lambda$onItemClick$0(arrayList, alertDialog, i3);
                    }
                });
                builder.setNegativeButton(LocaleController.getString(C2484R.string.Cancel), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.MediaActivity$1$$ExternalSyntheticLambda1
                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                    public final void onClick(AlertDialog alertDialog, int i3) {
                        alertDialog.dismiss();
                    }
                });
                AlertDialog alertDialogCreate = builder.create();
                alertDialogCreate.show();
                alertDialogCreate.redPositive();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$0(ArrayList arrayList, AlertDialog alertDialog, int i) {
            MediaActivity.this.getMessagesController().getStoriesController().deleteStories(MediaActivity.this.dialogId, arrayList);
            MediaActivity.this.sharedMediaLayout.closeActionMode(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$1(View view) {
        this.optionsItem.toggleSubMenu();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$2(View view) {
        Boolean boolZoomIn = this.sharedMediaLayout.zoomIn();
        if (boolZoomIn == null) {
            return;
        }
        boolean zBooleanValue = boolZoomIn.booleanValue();
        this.zoomOutItem.setEnabled(true);
        this.zoomOutItem.animate().alpha(this.zoomOutItem.isEnabled() ? 1.0f : 0.5f).start();
        this.zoomInItem.setEnabled(zBooleanValue);
        this.zoomInItem.animate().alpha(this.zoomInItem.isEnabled() ? 1.0f : 0.5f).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$3(View view) {
        Boolean boolZoomOut = this.sharedMediaLayout.zoomOut();
        if (boolZoomOut == null) {
            return;
        }
        this.zoomOutItem.setEnabled(boolZoomOut.booleanValue());
        this.zoomOutItem.animate().alpha(this.zoomOutItem.isEnabled() ? 1.0f : 0.5f).start();
        this.zoomInItem.setEnabled(true);
        this.zoomInItem.animate().alpha(this.zoomInItem.isEnabled() ? 1.0f : 0.5f).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$4(View view) {
        boolean z = this.filterPhotos;
        if (z && !this.filterVideos) {
            BotWebViewVibrationEffect.APP_ERROR.vibrate();
            ActionBarMenuSubItem actionBarMenuSubItem = this.showPhotosItem;
            int i = -this.shiftDp;
            this.shiftDp = i;
            AndroidUtilities.shakeViewSpring(actionBarMenuSubItem, i);
            return;
        }
        ActionBarMenuSubItem actionBarMenuSubItem2 = this.showPhotosItem;
        boolean z2 = !z;
        this.filterPhotos = z2;
        actionBarMenuSubItem2.setChecked(z2);
        this.sharedMediaLayout.setStoriesFilter(this.filterPhotos, this.filterVideos);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$5(View view) {
        boolean z = this.filterVideos;
        if (z && !this.filterPhotos) {
            BotWebViewVibrationEffect.APP_ERROR.vibrate();
            ActionBarMenuSubItem actionBarMenuSubItem = this.showVideosItem;
            int i = -this.shiftDp;
            this.shiftDp = i;
            AndroidUtilities.shakeViewSpring(actionBarMenuSubItem, i);
            return;
        }
        ActionBarMenuSubItem actionBarMenuSubItem2 = this.showVideosItem;
        boolean z2 = !z;
        this.filterVideos = z2;
        actionBarMenuSubItem2.setChecked(z2);
        this.sharedMediaLayout.setStoriesFilter(this.filterPhotos, this.filterVideos);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$6(Integer num) {
        this.sharedMediaLayout.scrollToPage(num.intValue() + 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$10(View view) {
        int i;
        Runnable runnable = this.applyBulletin;
        if (runnable != null) {
            runnable.run();
            this.applyBulletin = null;
        }
        Bulletin.hideVisible();
        final boolean z = this.sharedMediaLayout.getClosestTab() == 9;
        final ArrayList arrayList = new ArrayList();
        if (this.actionModeMessageObjects != null) {
            i = 0;
            for (int i2 = 0; i2 < this.actionModeMessageObjects.size(); i2++) {
                TL_stories.StoryItem storyItem = ((MessageObject) this.actionModeMessageObjects.valueAt(i2)).storyItem;
                if (storyItem != null) {
                    arrayList.add(storyItem);
                    i++;
                }
            }
        } else {
            i = 0;
        }
        this.sharedMediaLayout.closeActionMode(false);
        if (z) {
            this.sharedMediaLayout.scrollToPage(8);
        }
        if (arrayList.isEmpty()) {
            return;
        }
        final boolean[] zArr = new boolean[arrayList.size()];
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            TL_stories.StoryItem storyItem2 = (TL_stories.StoryItem) arrayList.get(i3);
            zArr[i3] = storyItem2.pinned;
            storyItem2.pinned = z;
        }
        getMessagesController().getStoriesController().updateStoriesInLists(this.dialogId, arrayList);
        final boolean[] zArr2 = {false};
        this.applyBulletin = new Runnable() { // from class: org.telegram.ui.Components.MediaActivity$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createView$7(arrayList, z);
            }
        };
        Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Components.MediaActivity$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createView$8(zArr2, arrayList, zArr);
            }
        };
        (z ? BulletinFactory.of(this).createSimpleBulletin(C2484R.raw.contact_check, LocaleController.formatPluralString("StorySavedTitle", i, new Object[0]), LocaleController.getString("StorySavedSubtitle"), LocaleController.getString("Undo"), runnable2).show() : BulletinFactory.of(this).createSimpleBulletin(C2484R.raw.chats_archived, LocaleController.formatPluralString("StoryArchived", i, new Object[0]), LocaleController.getString("Undo"), 5000, runnable2).show()).setOnHideListener(new Runnable() { // from class: org.telegram.ui.Components.MediaActivity$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createView$9(zArr2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$7(ArrayList arrayList, boolean z) {
        getMessagesController().getStoriesController().updateStoriesPinned(this.dialogId, arrayList, z, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$8(boolean[] zArr, ArrayList arrayList, boolean[] zArr2) {
        zArr[0] = true;
        AndroidUtilities.cancelRunOnUIThread(this.applyBulletin);
        for (int i = 0; i < arrayList.size(); i++) {
            ((TL_stories.StoryItem) arrayList.get(i)).pinned = zArr2[i];
        }
        getMessagesController().getStoriesController().updateStoriesInLists(this.dialogId, arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$9(boolean[] zArr) {
        Runnable runnable;
        if (!zArr[0] && (runnable = this.applyBulletin) != null) {
            runnable.run();
        }
        this.applyBulletin = null;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onBackPressed(boolean z) {
        if (hasShownSheet()) {
            if (z) {
                closeSheet();
            }
            return false;
        }
        if (!this.sharedMediaLayout.isActionModeShown()) {
            return super.onBackPressed(z);
        }
        if (z) {
            this.sharedMediaLayout.closeActionMode(false);
        }
        return false;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean isSwipeBackEnabled(MotionEvent motionEvent) {
        if (this.sharedMediaLayout.isSwipeBackEnabled()) {
            return this.sharedMediaLayout.isCurrentTabFirst();
        }
        return false;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean canBeginSlide() {
        if (this.sharedMediaLayout.isSwipeBackEnabled()) {
            return super.canBeginSlide();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateMediaCount() {
        SharedMediaLayout sharedMediaLayout = this.sharedMediaLayout;
        if (sharedMediaLayout != null) {
            if (this.subtitleTextView[0] == null) {
                return;
            }
            int closestTab = sharedMediaLayout.getClosestTab();
            if (this.type != 3 || closestTab == 8) {
                int[] lastMediaCount = this.sharedMediaPreloader.getLastMediaCount();
                boolean z = LocaleController.isRTL;
                boolean z2 = !z;
                int i = (this.type == 1 && closestTab != 8) ? 1 : 0;
                if (closestTab == 8 || closestTab == 9) {
                    ActionBarMenuSubItem actionBarMenuSubItem = this.zoomOutItem;
                    if (actionBarMenuSubItem != null) {
                        actionBarMenuSubItem.setEnabled(this.sharedMediaLayout.canZoomOut());
                        ActionBarMenuSubItem actionBarMenuSubItem2 = this.zoomOutItem;
                        actionBarMenuSubItem2.setAlpha(actionBarMenuSubItem2.isEnabled() ? 1.0f : 0.5f);
                    }
                    ActionBarMenuSubItem actionBarMenuSubItem3 = this.zoomInItem;
                    if (actionBarMenuSubItem3 != null) {
                        actionBarMenuSubItem3.setEnabled(this.sharedMediaLayout.canZoomIn());
                        ActionBarMenuSubItem actionBarMenuSubItem4 = this.zoomInItem;
                        actionBarMenuSubItem4.setAlpha(actionBarMenuSubItem4.isEnabled() ? 1.0f : 0.5f);
                    }
                    int storiesCount = this.sharedMediaLayout.getStoriesCount(8);
                    if (storiesCount > 0) {
                        if (this.type == 3) {
                            if (TextUtils.isEmpty(this.subtitleTextView[0].getText())) {
                                showSubtitle(0, true, true);
                                this.subtitleTextView[0].setText(LocaleController.formatPluralStringSpaced("FoundStories", storiesCount), z2);
                            }
                        } else {
                            showSubtitle(0, true, true);
                            this.subtitleTextView[0].setText(LocaleController.formatPluralString("ProfileMyStoriesCount", storiesCount, new Object[0]), z2);
                        }
                    } else {
                        showSubtitle(0, false, true);
                    }
                    if (this.type == 1) {
                        int storiesCount2 = this.sharedMediaLayout.getStoriesCount(9);
                        if (storiesCount2 > 0) {
                            showSubtitle(1, true, true);
                            this.subtitleTextView[1].setText(LocaleController.formatPluralString("ProfileStoriesArchiveCount", storiesCount2, new Object[0]), z2);
                        } else {
                            showSubtitle(1, false, true);
                        }
                    }
                    if (this.optionsItem != null) {
                        SharedMediaLayout sharedMediaLayout2 = this.sharedMediaLayout;
                        final boolean z3 = sharedMediaLayout2.getStoriesCount(sharedMediaLayout2.getClosestTab()) <= 0;
                        if (!z3) {
                            this.optionsItem.setVisibility(0);
                        }
                        this.optionsItem.animate().alpha(z3 ? 0.0f : 1.0f).withEndAction(new Runnable() { // from class: org.telegram.ui.Components.MediaActivity$$ExternalSyntheticLambda1
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$updateMediaCount$11(z3);
                            }
                        }).setDuration(220L).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).start();
                    }
                    ButtonWithCounterView buttonWithCounterView = this.button;
                    if (buttonWithCounterView != null) {
                        boolean z4 = !z && this.lastTab == closestTab;
                        if (closestTab == 8) {
                            SparseArray sparseArray = this.actionModeMessageObjects;
                            buttonWithCounterView.setText(LocaleController.formatPluralString("ArchiveStories", sparseArray == null ? 0 : sparseArray.size(), new Object[0]), z4);
                        } else {
                            buttonWithCounterView.setText(LocaleController.getString(C2484R.string.SaveToProfile), z4);
                        }
                        this.lastTab = closestTab;
                    }
                    if (this.calendarItem != null) {
                        boolean z5 = this.sharedMediaLayout.getStoriesCount(closestTab) > 0;
                        this.calendarItem.setEnabled(z5);
                        this.calendarItem.setAlpha(z5 ? 1.0f : 0.5f);
                        return;
                    }
                    return;
                }
                if (closestTab == 11) {
                    showSubtitle(i, true, true);
                    this.subtitleTextView[i].setText(LocaleController.formatPluralString("SavedDialogsTabCount", getMessagesController().getSavedMessagesController().getAllCount(), new Object[0]), z2);
                    return;
                }
                if (closestTab >= 0) {
                    if (closestTab >= lastMediaCount.length || lastMediaCount[closestTab] >= 0) {
                        if (closestTab == 0) {
                            showSubtitle(i, true, true);
                            if (this.sharedMediaLayout.getPhotosVideosTypeFilter() == 1) {
                                this.subtitleTextView[i].setText(LocaleController.formatPluralString("Photos", lastMediaCount[6], new Object[0]), z2);
                                return;
                            } else if (this.sharedMediaLayout.getPhotosVideosTypeFilter() == 2) {
                                this.subtitleTextView[i].setText(LocaleController.formatPluralString("Videos", lastMediaCount[7], new Object[0]), z2);
                                return;
                            } else {
                                this.subtitleTextView[i].setText(LocaleController.formatPluralString("Media", lastMediaCount[0], new Object[0]), z2);
                                return;
                            }
                        }
                        if (closestTab == 1) {
                            showSubtitle(i, true, true);
                            this.subtitleTextView[i].setText(LocaleController.formatPluralString("Files", lastMediaCount[1], new Object[0]), z2);
                            return;
                        }
                        if (closestTab == 2) {
                            showSubtitle(i, true, true);
                            this.subtitleTextView[i].setText(LocaleController.formatPluralString("Voice", lastMediaCount[2], new Object[0]), z2);
                            return;
                        }
                        if (closestTab == 3) {
                            showSubtitle(i, true, true);
                            this.subtitleTextView[i].setText(LocaleController.formatPluralString("Links", lastMediaCount[3], new Object[0]), z2);
                            return;
                        }
                        if (closestTab == 4) {
                            showSubtitle(i, true, true);
                            this.subtitleTextView[i].setText(LocaleController.formatPluralString("MusicFiles", lastMediaCount[4], new Object[0]), z2);
                        } else if (closestTab == 5) {
                            showSubtitle(i, true, true);
                            this.subtitleTextView[i].setText(LocaleController.formatPluralString("GIFs", lastMediaCount[5], new Object[0]), z2);
                        } else if (closestTab == 10) {
                            showSubtitle(i, true, true);
                            MessagesController.ChannelRecommendations channelRecommendations = MessagesController.getInstance(this.currentAccount).getChannelRecommendations(-this.dialogId);
                            this.subtitleTextView[i].setText(LocaleController.formatPluralString("Channels", channelRecommendations == null ? 0 : channelRecommendations.more + channelRecommendations.chats.size(), new Object[0]), z2);
                        }
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateMediaCount$11(boolean z) {
        if (z) {
            this.optionsItem.setVisibility(8);
        }
    }

    public void setChatInfo(TLRPC.ChatFull chatFull) {
        this.currentChatInfo = chatFull;
    }

    public long getDialogId() {
        return this.dialogId;
    }

    private void showSubtitle(final int i, final boolean z, boolean z2) {
        int i2 = this.type;
        if (i2 == 3) {
            return;
        }
        if (i == 1 && i2 == 2) {
            return;
        }
        boolean[] zArr = this.subtitleShown;
        if (zArr[i] != z || this.firstSubtitleCheck[i]) {
            boolean[] zArr2 = this.firstSubtitleCheck;
            boolean z3 = !zArr2[i] && z2;
            zArr2[i] = false;
            zArr[i] = z;
            ValueAnimator valueAnimator = this.subtitleAnimator[i];
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.subtitleAnimator[i] = null;
            }
            if (z3) {
                this.subtitleTextView[i].setVisibility(0);
                this.subtitleAnimator[i] = ValueAnimator.ofFloat(this.subtitleT[i], z ? 1.0f : 0.0f);
                this.subtitleAnimator[i].addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.MediaActivity$$ExternalSyntheticLambda13
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        this.f$0.lambda$showSubtitle$12(i, valueAnimator2);
                    }
                });
                this.subtitleAnimator[i].addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.MediaActivity.7
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        MediaActivity.this.subtitleT[i] = z ? 1.0f : 0.0f;
                        MediaActivity.this.nameTextView[i].setScaleX(z ? 1.0f : 1.111f);
                        MediaActivity.this.nameTextView[i].setScaleY(z ? 1.0f : 1.111f);
                        MediaActivity.this.nameTextView[i].setTranslationY(z ? 0.0f : AndroidUtilities.dp(8.0f));
                        MediaActivity.this.subtitleTextView[i].setAlpha(z ? 1.0f : 0.0f);
                        if (z) {
                            return;
                        }
                        MediaActivity.this.subtitleTextView[i].setVisibility(8);
                    }
                });
                this.subtitleAnimator[i].setDuration(320L);
                this.subtitleAnimator[i].setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
                this.subtitleAnimator[i].start();
                return;
            }
            this.subtitleT[i] = z ? 1.0f : 0.0f;
            this.nameTextView[i].setScaleX(z ? 1.0f : 1.111f);
            this.nameTextView[i].setScaleY(z ? 1.0f : 1.111f);
            this.nameTextView[i].setTranslationY(z ? 0.0f : AndroidUtilities.dp(8.0f));
            this.subtitleTextView[i].setAlpha(z ? 1.0f : 0.0f);
            this.subtitleTextView[i].setVisibility(z ? 0 : 8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showSubtitle$12(int i, ValueAnimator valueAnimator) {
        this.subtitleT[i] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.nameTextView[i].setScaleX(AndroidUtilities.lerp(1.111f, 1.0f, this.subtitleT[i]));
        this.nameTextView[i].setScaleY(AndroidUtilities.lerp(1.111f, 1.0f, this.subtitleT[i]));
        this.nameTextView[i].setTranslationY(AndroidUtilities.lerp(AndroidUtilities.dp(8.0f), 0, this.subtitleT[i]));
        this.subtitleTextView[i].setAlpha(this.subtitleT[i]);
    }

    @Override // org.telegram.ui.Components.SharedMediaLayout.SharedMediaPreloaderDelegate
    public void mediaCountUpdated() {
        SharedMediaLayout.SharedMediaPreloader sharedMediaPreloader;
        SharedMediaLayout sharedMediaLayout = this.sharedMediaLayout;
        if (sharedMediaLayout != null && (sharedMediaPreloader = this.sharedMediaPreloader) != null) {
            sharedMediaLayout.setNewMediaCounts(sharedMediaPreloader.getLastMediaCount());
        }
        updateMediaCount();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateColors() {
        if (this.sharedMediaLayout.getSearchOptionsItem() != null) {
            this.sharedMediaLayout.getSearchOptionsItem().setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_windowBackgroundWhiteBlackText), PorterDuff.Mode.MULTIPLY));
        }
        this.actionBar.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
        ActionBar actionBar = this.actionBar;
        int i = Theme.key_windowBackgroundWhiteBlackText;
        actionBar.setItemsColor(Theme.getColor(i), false);
        this.actionBar.setItemsColor(Theme.getColor(i), true);
        this.actionBar.setItemsBackgroundColor(Theme.getColor(Theme.key_actionBarActionModeDefaultSelector), false);
        this.actionBar.setTitleColor(Theme.getColor(i));
        SimpleTextView simpleTextView = this.nameTextView[0];
        if (simpleTextView != null) {
            simpleTextView.setTextColor(Theme.getColor(i));
        }
        SimpleTextView simpleTextView2 = this.nameTextView[1];
        if (simpleTextView2 != null) {
            simpleTextView2.setTextColor(Theme.getColor(i));
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public ArrayList getThemeDescriptions() {
        ThemeDescription.ThemeDescriptionDelegate themeDescriptionDelegate = new ThemeDescription.ThemeDescriptionDelegate() { // from class: org.telegram.ui.Components.MediaActivity$$ExternalSyntheticLambda0
            @Override // org.telegram.ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                this.f$0.updateColors();
            }

            @Override // org.telegram.ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        };
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_windowBackgroundWhite));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_actionBarActionModeDefaultSelector));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_windowBackgroundWhiteBlackText));
        arrayList.addAll(this.sharedMediaLayout.getThemeDescriptions());
        return arrayList;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean isLightStatusBar() {
        if (getLastStoryViewer() != null && getLastStoryViewer().isShown()) {
            return false;
        }
        int color = Theme.getColor(Theme.key_windowBackgroundWhite);
        if (this.actionBar.isActionModeShowed()) {
            color = Theme.getColor(Theme.key_actionBarActionModeDefault);
        }
        return ColorUtils.calculateLuminance(color) > 0.699999988079071d;
    }

    @Override // org.telegram.ui.Components.FloatingDebug.FloatingDebugProvider
    public List onGetDebugItems() {
        StringBuilder sb = new StringBuilder();
        sb.append(ShapeDetector.isLearning(getContext()) ? "Disable" : "Enable");
        sb.append(" shape detector learning debug");
        return Arrays.asList(new FloatingDebugController.DebugItem(sb.toString(), new Runnable() { // from class: org.telegram.ui.Components.MediaActivity$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onGetDebugItems$13();
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onGetDebugItems$13() {
        ShapeDetector.setLearning(getContext(), !ShapeDetector.isLearning(getContext()));
    }

    private class StoriesTabsView extends BottomPagerTabs {
        public StoriesTabsView(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context, resourcesProvider);
        }

        @Override // org.telegram.ui.Components.BottomPagerTabs
        public BottomPagerTabs.Tab[] createTabs() {
            return new BottomPagerTabs.Tab[]{new BottomPagerTabs.Tab(0, C2484R.raw.msg_stories_saved, 20, 40, LocaleController.getString(C2484R.string.ProfileMyStoriesTab)), new BottomPagerTabs.Tab(1, C2484R.raw.msg_stories_archive, 0, 0, LocaleController.getString(C2484R.string.ProfileStoriesArchiveTab))};
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public int getNavigationBarColor() {
        int themedColor = getThemedColor(Theme.key_windowBackgroundWhite);
        return (getLastStoryViewer() == null || !getLastStoryViewer().attachedToParent()) ? themedColor : getLastStoryViewer().getNavigationBarColor(themedColor);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onInsets(int i, int i2, int i3, int i4) {
        SharedMediaLayout sharedMediaLayout = this.sharedMediaLayout;
        if (sharedMediaLayout != null) {
            sharedMediaLayout.setPagesPaddingBottom(i4);
        }
    }
}
