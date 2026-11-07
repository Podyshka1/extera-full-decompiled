package org.telegram.ui;

import android.animation.Animator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.os.Build;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.core.graphics.ColorUtils;
import androidx.core.graphics.Insets;
import androidx.core.math.MathUtils;
import androidx.core.view.WindowInsetsCompat;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.MainMenuItem;
import com.exteragram.messenger.config.BottomNavigationBar;
import com.exteragram.messenger.feed.FeedController;
import com.exteragram.messenger.feed.ui.FeedActivity;
import com.exteragram.messenger.feed.ui.FeedChannelsActivity;
import com.exteragram.messenger.utils.chats.ChatUtils;
import com.exteragram.messenger.utils.chats.MainMenuHelper;
import com.exteragram.messenger.utils.ui.AccountsUiHelper;
import com.exteragram.messenger.utils.ui.MainTabsUiHelper;
import java.util.ArrayList;
import java.util.function.Consumer;
import java.util.function.IntPredicate;
import me.vkryl.android.animator.BoolAnimator;
import me.vkryl.android.animator.FactorAnimator;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.EdgeToEdgeSupportMode;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.ActionBar.ThemeDescription;
import org.telegram.ui.Components.Bulletin;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.HintsController;
import org.telegram.ui.Components.ItemOptions;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.ProxyDrawable;
import org.telegram.ui.Components.blur3.BlurredBackgroundDrawableViewFactory;
import org.telegram.ui.Components.blur3.BlurredBackgroundWithFadeDrawable;
import org.telegram.ui.Components.blur3.RenderNodeWithHash;
import org.telegram.ui.Components.blur3.capture.IBlur3Hash;
import org.telegram.ui.Components.blur3.drawable.BlurredBackgroundDrawable;
import org.telegram.ui.Components.blur3.drawable.color.BlurredBackgroundColorProvider;
import org.telegram.ui.Components.blur3.drawable.color.impl.BlurredBackgroundProviderImpl;
import org.telegram.ui.Components.blur3.source.BlurredBackgroundSource;
import org.telegram.ui.Components.blur3.source.BlurredBackgroundSourceColor;
import org.telegram.ui.Components.blur3.source.BlurredBackgroundSourceRenderNode;
import org.telegram.ui.Components.chat.ViewPositionWatcher;
import org.telegram.ui.Components.glass.GlassTabView;
import org.telegram.ui.Stories.recorder.HintView2;
import org.telegram.ui.ViewPagerActivity;

/* JADX INFO: loaded from: classes3.dex */
public class MainTabsActivity extends ViewPagerActivity implements NotificationCenter.NotificationCenterDelegate, FactorAnimator.Target {
    private HintView2 accountSwitchHint;
    private boolean accountSwitchHintShown;
    private final BoolAnimator animatorTabsVisible;
    private int currentConnectionState;
    private DialogsActivity dialogsActivity;
    private boolean dropCallsFragmentAfterPageScroll;
    private View fadeView;
    private final RectF fragmentPosition;
    private BlurredBackgroundSourceColor iBlur3SourceColor;
    private BlurredBackgroundSourceRenderNode iBlur3SourceTabGlass;
    private int insetLeft;
    private int insetRight;
    private int navigationBarHeight;
    private NotificationCenter.ObserversGroup observersGroup;
    private ProxyDrawable proxyDrawable;
    private ActionBarMenuSubItem proxyMenuSubItem;
    private boolean tabletLayout;
    public GlassTabView[] tabs;
    private MainTabsLayout tabsView;
    private BlurredBackgroundDrawable tabsViewBackground;
    private FrameLayout tabsViewWrapper;
    private IUpdateLayout updateLayout;
    private UpdateLayoutWrapper updateLayoutWrapper;
    private ViewPositionWatcher viewPositionWatcher;

    public interface TabFragmentDelegate {
        default boolean canParentTabsSlide(MotionEvent motionEvent, boolean z) {
            return false;
        }

        BlurredBackgroundSourceRenderNode getGlassSource();

        default void onParentBecomeFullyVisible() {
        }

        void onParentScrollToTop();

        default void setParentTabsGlassInvalidationCallback(Runnable runnable) {
        }

        default void updateMainTabsVisibility() {
        }
    }

    public static /* synthetic */ void $r8$lambda$b5ueJ_W3iFQr_Ix_ZKDYeNYgFRU(View view) {
    }

    private int getPositionChats() {
        return 0;
    }

    private int getPositionContacts() {
        return 1;
    }

    public void updateLayout() {
    }

    public int getTabsCount() {
        return hasContactsOrFeedTab() ? 4 : 3;
    }

    private boolean isFeedTabEnabled() {
        return ExteraConfig.getShowFeedTab();
    }

    private boolean hasContactsOrFeedTab() {
        return getUserConfig().showContactsTab || isFeedTabEnabled();
    }

    private int getPositionCallsOrSettings() {
        return hasContactsOrFeedTab() ? 2 : 1;
    }

    private int getPositionProfile() {
        return hasContactsOrFeedTab() ? 3 : 2;
    }

    private int indexToPosition(int i) {
        if (i == 0) {
            return getPositionChats();
        }
        if (i == 1 || i == 5) {
            return getPositionContacts();
        }
        if (i == 2 || i == 3) {
            return getPositionCallsOrSettings();
        }
        if (i == 4) {
            return getPositionProfile();
        }
        return 0;
    }

    public MainTabsActivity() {
        this(null);
    }

    public MainTabsActivity(Bundle bundle) {
        this.animatorTabsVisible = new BoolAnimator(0, this, CubicBezierInterpolator.EASE_OUT_QUINT, 380L, true);
        this.fragmentPosition = new RectF();
        this.arguments = bundle;
        initBlurSources();
    }

    private void initBlurSources() {
        if (Build.VERSION.SDK_INT >= 31) {
            BlurredBackgroundSourceRenderNode blurredBackgroundSourceRenderNode = new BlurredBackgroundSourceRenderNode(null);
            this.iBlur3SourceTabGlass = blurredBackgroundSourceRenderNode;
            blurredBackgroundSourceRenderNode.setupRenderer(new RenderNodeWithHash.Renderer() { // from class: org.telegram.ui.MainTabsActivity.1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // org.telegram.ui.Components.blur3.RenderNodeWithHash.Renderer
                public void renderNodeCalculateHash(IBlur3Hash iBlur3Hash) {
                    iBlur3Hash.add(MainTabsActivity.this.getThemedColor(Theme.key_windowBackgroundWhite));
                    iBlur3Hash.add(SharedConfig.chatBlurEnabled());
                    int size = MainTabsActivity.this.fragmentsArr.size();
                    for (int i = 0; i < size; i++) {
                        BaseFragment baseFragment = MainTabsActivity.this.fragmentsArr.valueAt(i).fragment;
                        View view = baseFragment.fragmentView;
                        if (view != null) {
                            MainTabsActivity mainTabsActivity = MainTabsActivity.this;
                            if (ViewPositionWatcher.computeRectInParent(view, mainTabsActivity.contentView, mainTabsActivity.fragmentPosition) && MainTabsActivity.this.fragmentPosition.right > 0.0f && MainTabsActivity.this.fragmentPosition.left < MainTabsActivity.this.fragmentView.getMeasuredWidth() && (baseFragment instanceof TabFragmentDelegate) && ((TabFragmentDelegate) baseFragment).getGlassSource() != null) {
                                iBlur3Hash.addF(MainTabsActivity.this.fragmentPosition.left);
                                iBlur3Hash.addF(MainTabsActivity.this.fragmentPosition.top);
                                iBlur3Hash.add(baseFragment.getClassGuid());
                            }
                        }
                    }
                }

                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Removed duplicated region for block: B:6:0x0036  */
                @Override // org.telegram.ui.Components.blur3.RenderNodeWithHash.Renderer
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public void renderNodeUpdateDisplayList(Canvas canvas) {
                    BlurredBackgroundSourceRenderNode glassSource;
                    Canvas canvas2;
                    int measuredWidth = MainTabsActivity.this.fragmentView.getMeasuredWidth();
                    int measuredHeight = MainTabsActivity.this.fragmentView.getMeasuredHeight();
                    canvas.drawColor(MainTabsActivity.this.getThemedColor(Theme.key_windowBackgroundWhite));
                    int size = MainTabsActivity.this.fragmentsArr.size();
                    int i = 0;
                    while (i < size) {
                        BaseFragment baseFragment = MainTabsActivity.this.fragmentsArr.valueAt(i).fragment;
                        View view = baseFragment.fragmentView;
                        if (view == null) {
                            canvas2 = canvas;
                        } else {
                            MainTabsActivity mainTabsActivity = MainTabsActivity.this;
                            if (ViewPositionWatcher.computeRectInParent(view, mainTabsActivity.contentView, mainTabsActivity.fragmentPosition) && MainTabsActivity.this.fragmentPosition.right > 0.0f && MainTabsActivity.this.fragmentPosition.left < MainTabsActivity.this.fragmentView.getMeasuredWidth() && (baseFragment instanceof TabFragmentDelegate) && (glassSource = ((TabFragmentDelegate) baseFragment).getGlassSource()) != null) {
                                canvas.save();
                                canvas.translate(MainTabsActivity.this.fragmentPosition.left, MainTabsActivity.this.fragmentPosition.top);
                                canvas2 = canvas;
                                glassSource.draw(canvas2, 0.0f, 0.0f, measuredWidth, measuredHeight);
                                canvas2.restore();
                            }
                        }
                        i++;
                        canvas = canvas2;
                    }
                }
            });
        } else {
            this.iBlur3SourceTabGlass = null;
        }
        this.iBlur3SourceColor = new BlurredBackgroundSourceColor();
        Bulletin.Delegate delegate = new Bulletin.Delegate() { // from class: org.telegram.ui.MainTabsActivity.2
            @Override // org.telegram.ui.Components.Bulletin.Delegate
            public int getBottomOffset(int i) {
                return MainTabsActivity.this.navigationBarHeight + (MainTabsActivity.this.isBottomTabsEnabled() ? Math.round(AndroidUtilities.dp(MainTabsUiHelper.getTabsFabOffsetDp()) * MainTabsActivity.this.animatorTabsVisible.getFloatValue()) : 0);
            }

            @Override // org.telegram.ui.Components.Bulletin.Delegate
            public boolean bottomOffsetAnimated() {
                return !BottomNavigationBar.floating();
            }
        };
        Bulletin.addDelegate(this, delegate);
        Bulletin.addDelegate(this.contentView, delegate);
    }

    @Override // org.telegram.ui.ViewPagerActivity
    public FrameLayout createContentView(Context context) {
        return new FrameLayout(context) { // from class: org.telegram.ui.MainTabsActivity.3
            @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            public void onLayout(boolean z, int i, int i2, int i3, int i4) {
                super.onLayout(z, i, i2, i3, i4);
                MainTabsActivity.this.checkUi_tabsPosition();
                MainTabsActivity.this.checkUi_fadeView();
            }

            @Override // android.view.ViewGroup, android.view.View
            public void dispatchDraw(Canvas canvas) {
                Canvas canvas2;
                int estBackgroundColor = MainTabsActivity.this.getEstBackgroundColor();
                if (MainTabsActivity.this.insetLeft != 0) {
                    canvas2 = canvas;
                    canvas2.drawRect(0.0f, 0.0f, MainTabsActivity.this.insetLeft, getHeight(), Theme.fillingPaint(estBackgroundColor));
                } else {
                    canvas2 = canvas;
                }
                if (MainTabsActivity.this.insetRight != 0) {
                    canvas2.drawRect(getWidth() - MainTabsActivity.this.insetRight, 0.0f, getWidth(), getHeight(), Theme.fillingPaint(estBackgroundColor));
                }
                super.dispatchDraw(canvas2);
                MainTabsActivity.this.blur3_invalidateBlur();
                MainTabsActivity.this.blur3_updateFadeColors();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getEstBackgroundColor() {
        int themedColor = getThemedColor(Theme.key_windowBackgroundGray);
        int themedColor2 = getThemedColor(Theme.key_windowBackgroundWhite);
        ViewPagerActivity.ViewPagerActivityPagerLayout viewPagerActivityPagerLayout = this.viewPager;
        return ColorUtils.blendARGB(themedColor, themedColor2, viewPagerActivityPagerLayout != null ? viewPagerActivityPagerLayout.getPositionVisibility(0) : 1.0f);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        updateLayout();
    }

    @Override // org.telegram.ui.ViewPagerActivity, org.telegram.ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        blur3_updateColors();
        checkUi_tabsPosition();
        checkUi_fadeView();
        checkContactsTabBadge();
        checkUnreadCount(true);
        showAccountChangeHint();
        updateProxyButton(false, false);
    }

    @Override // org.telegram.ui.ViewPagerActivity, org.telegram.ui.ActionBar.BaseFragment
    public void onBecomeFullyVisible() {
        super.onBecomeFullyVisible();
        Object currentVisibleFragment = getCurrentVisibleFragment();
        if (currentVisibleFragment instanceof TabFragmentDelegate) {
            ((TabFragmentDelegate) currentVisibleFragment).onParentBecomeFullyVisible();
        }
    }

    private void checkContactsTabBadge() {
        if (this.tabsView == null || this.tabs[1] == null) {
            return;
        }
        boolean zHasContactsPermission = ContactsController.hasContactsPermission();
        if (zHasContactsPermission) {
            MessagesController.getGlobalNotificationsSettings().edit().putBoolean("askAboutContacts2", true).apply();
        }
        if (UserConfig.getInstance(this.currentAccount).syncContacts && !zHasContactsPermission && MessagesController.getGlobalNotificationsSettings().getBoolean("askAboutContacts2", true)) {
            this.tabs[1].setCounter("!", true, true);
        } else {
            this.tabs[1].setCounter(null, true, true);
        }
    }

    @Override // org.telegram.ui.ViewPagerActivity, org.telegram.ui.ActionBar.BaseFragment
    public void onPause() {
        super.onPause();
        HintView2 hintView2 = this.accountSwitchHint;
        if (hintView2 != null) {
            hintView2.hide();
        }
    }

    @Override // org.telegram.ui.ViewPagerActivity, org.telegram.ui.ActionBar.BaseFragment
    public View createView(Context context) {
        FrameLayout frameLayout = this.contentView;
        if (frameLayout != null) {
            Bulletin.removeDelegate(frameLayout);
        }
        super.createView(context);
        this.tabletLayout = false;
        MainTabsLayout mainTabsLayout = new MainTabsLayout(context, this.resourceProvider);
        this.tabsView = mainTabsLayout;
        mainTabsLayout.setClipChildren(false);
        MainTabsUiHelper.applyTabsLayoutStyle(this.tabsView);
        GlassTabView[] glassTabViewArr = new GlassTabView[6];
        this.tabs = glassTabViewArr;
        glassTabViewArr[0] = GlassTabView.createMainNavigationTab(context, this.resourceProvider, GlassTabView.TabAnimation.CHATS, C2665R.string.MainTabsChats);
        this.tabs[0].setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.MainTabsActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return this.f$0.lambda$createView$0(view);
            }
        });
        this.tabs[1] = GlassTabView.createMainNavigationTab(context, this.resourceProvider, GlassTabView.TabAnimation.CONTACTS, C2665R.string.MainTabsContacts);
        this.tabs[1].setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.MainTabsActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return this.f$0.lambda$createView$4(view);
            }
        });
        this.tabs[2] = GlassTabView.createMainNavigationTab(context, this.resourceProvider, GlassTabView.TabAnimation.SETTINGS, C2665R.string.Settings);
        this.tabs[2].setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.MainTabsActivity$$ExternalSyntheticLambda2
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return this.f$0.lambda$createView$5(view);
            }
        });
        this.tabs[3] = GlassTabView.createMainNavigationTab(context, this.resourceProvider, GlassTabView.TabAnimation.CALLS, C2665R.string.MainTabsCalls);
        this.tabs[4] = GlassTabView.createMainNavigationAvatar(context, this.resourceProvider, this.currentAccount, C2665R.string.MainTabsProfile);
        this.tabs[3].setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.MainTabsActivity$$ExternalSyntheticLambda3
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return this.f$0.openCallsSelector(view);
            }
        });
        this.tabs[4].setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.MainTabsActivity$$ExternalSyntheticLambda4
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return this.f$0.openAccountSelector(view);
            }
        });
        this.tabs[5] = GlassTabView.createMainNavigationTab(context, this.resourceProvider, GlassTabView.TabAnimation.FEED, C2665R.string.Feed);
        this.tabs[5].setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.MainTabsActivity$$ExternalSyntheticLambda5
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return this.f$0.lambda$createView$9(view);
            }
        });
        this.tabsView.addTabToIgnoreClick(this.tabs[0]);
        this.tabsView.addTabToIgnoreClick(this.tabs[1]);
        this.tabsView.addTabToIgnoreClick(this.tabs[4]);
        this.tabsView.addTabToIgnoreClick(this.tabs[3]);
        this.tabsView.addTabToIgnoreClick(this.tabs[5]);
        final int i = 0;
        while (true) {
            GlassTabView[] glassTabViewArr2 = this.tabs;
            if (i >= glassTabViewArr2.length) {
                break;
            }
            glassTabViewArr2[i].setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.MainTabsActivity$$ExternalSyntheticLambda6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$createView$10(i, view);
                }
            });
            i++;
        }
        int[] iArr = {0, 5, 1, 2, 3, 4};
        for (int i2 = 0; i2 < 6; i2++) {
            int i3 = iArr[i2];
            this.tabsView.addView(this.tabs[i3]);
            this.tabsView.setViewVisible(this.tabs[i3], true, false);
        }
        checkUi_contactsOrFeedTabVisible(false);
        checkUi_callTabVisible(getUserConfig().showCallsTab, false);
        selectTab(this.viewPager.getCurrentPosition(), false);
        this.iBlur3SourceColor.setColor(getThemedColor(Theme.key_windowBackgroundWhite));
        ViewPositionWatcher viewPositionWatcher = this.viewPositionWatcher;
        if (viewPositionWatcher != null) {
            viewPositionWatcher.shutdown();
        }
        this.viewPositionWatcher = new ViewPositionWatcher(this.contentView);
        BlurredBackgroundSource blurredBackgroundSource = this.iBlur3SourceTabGlass;
        if (blurredBackgroundSource == null) {
            blurredBackgroundSource = this.iBlur3SourceColor;
        }
        BlurredBackgroundDrawableViewFactory blurredBackgroundDrawableViewFactory = new BlurredBackgroundDrawableViewFactory(blurredBackgroundSource);
        blurredBackgroundDrawableViewFactory.setSourceRootView(this.viewPositionWatcher, this.contentView);
        blurredBackgroundDrawableViewFactory.setLiquidGlassEffectAllowed(LiteMode.isEnabled(262144));
        BlurredBackgroundDrawable blurredBackgroundDrawableCreate = blurredBackgroundDrawableViewFactory.create(this.tabsView, BlurredBackgroundProviderImpl.mainTabs(this.resourceProvider));
        this.tabsViewBackground = blurredBackgroundDrawableCreate;
        blurredBackgroundDrawableCreate.setRadius(MainTabsUiHelper.getBackgroundRadius());
        this.tabsViewBackground.setPadding(MainTabsUiHelper.getBackgroundInset());
        this.tabsView.setBackground(this.tabsViewBackground);
        BlurredBackgroundDrawableViewFactory blurredBackgroundDrawableViewFactory2 = new BlurredBackgroundDrawableViewFactory(this.iBlur3SourceColor);
        blurredBackgroundDrawableViewFactory2.setSourceRootView(this.viewPositionWatcher, this.contentView);
        this.fadeView = new View(context);
        BlurredBackgroundWithFadeDrawable blurredBackgroundWithFadeDrawable = new BlurredBackgroundWithFadeDrawable(blurredBackgroundDrawableViewFactory2.create(this.fadeView, (BlurredBackgroundColorProvider) null));
        blurredBackgroundWithFadeDrawable.setFadeHeight(AndroidUtilities.dp(60.0f), true);
        this.fadeView.setBackground(blurredBackgroundWithFadeDrawable);
        this.contentView.addView(this.fadeView, LayoutHelper.createFrame(-1, 0, 80));
        FrameLayout frameLayout2 = new FrameLayout(context);
        this.tabsViewWrapper = frameLayout2;
        frameLayout2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.MainTabsActivity$$ExternalSyntheticLambda7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainTabsActivity.$r8$lambda$b5ueJ_W3iFQr_Ix_ZKDYeNYgFRU(view);
            }
        });
        this.tabsViewWrapper.addView(this.tabsView, LayoutHelper.createFrame(-1, MainTabsUiHelper.getTabsViewHeightDp(), 81));
        this.tabsViewWrapper.setClipToPadding(false);
        this.contentView.addView(this.tabsViewWrapper, LayoutHelper.createFrame(-1, -2, 80));
        UpdateLayoutWrapper updateLayoutWrapper = new UpdateLayoutWrapper(context);
        this.updateLayoutWrapper = updateLayoutWrapper;
        this.contentView.addView(updateLayoutWrapper, LayoutHelper.createFrame(-1, -2, 80));
        IUpdateLayout iUpdateLayoutTakeUpdateLayout = ApplicationLoader.applicationLoaderInstance.takeUpdateLayout(getParentActivity(), this.updateLayoutWrapper);
        this.updateLayout = iUpdateLayoutTakeUpdateLayout;
        if (iUpdateLayoutTakeUpdateLayout != null) {
            iUpdateLayoutTakeUpdateLayout.updateAppUpdateViews(this.currentAccount, false);
        }
        updateLayout();
        checkUnreadCount(false);
        return this.contentView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$0(View view) {
        int iIndexToPosition = indexToPosition(0);
        if (this.viewPager.getCurrentPosition() != iIndexToPosition) {
            selectTab(iIndexToPosition, true);
            this.viewPager.scrollToPosition(iIndexToPosition);
        }
        DialogsActivity dialogsActivity = this.dialogsActivity;
        if (dialogsActivity != null && !dialogsActivity.hasRightFragment()) {
            ArrayList<MessagesController.DialogFilter> dialogFilters = getMessagesController().getDialogFilters();
            boolean zHasArchivedChats = ChatUtils.getInstance(this.currentAccount).hasArchivedChats();
            if ((dialogFilters != null && dialogFilters.size() > 1) || zHasArchivedChats) {
                return showFiltersMenu(view, dialogFilters, zHasArchivedChats);
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$4(View view) {
        ItemOptions.makeOptions(this, view).add(C2665R.drawable.msg_contact_add, LocaleController.getString(C2665R.string.NewContact), new Runnable() { // from class: org.telegram.ui.MainTabsActivity$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createView$1();
            }
        }).add(C2665R.drawable.msg_calls, LocaleController.getString(C2665R.string.VoipChatRecentCalls), new Runnable() { // from class: org.telegram.ui.MainTabsActivity$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createView$2();
            }
        }).add(C2665R.drawable.msg_archive_hide, LocaleController.getString(C2665R.string.HideContactsTab), new Runnable() { // from class: org.telegram.ui.MainTabsActivity$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createView$3();
            }
        }).setGravity(1).translate(0.0f, -AndroidUtilities.dp(4.0f)).setScrimViewBackground(MainTabsUiHelper.createMainTabsScrimBackground(this.resourceProvider, false)).setDismissOnMoveOutside(true).show();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$1() {
        new NewContactBottomSheet(this, getContext()).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$2() {
        Bundle bundle = new Bundle();
        bundle.putBoolean("needFinishFragment", false);
        presentFragment(new CallLogActivity(bundle));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$3() {
        getUserConfig().setShowContactsTab(null, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$5(View view) {
        openSettingsTabOptions(view);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$9(View view) {
        ItemOptions.makeOptions(this, view).add(C2665R.drawable.msg_archive_hide, LocaleController.getString(C2665R.string.HideFeedTab), new Runnable() { // from class: org.telegram.ui.MainTabsActivity$$ExternalSyntheticLambda26
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createView$6();
            }
        }).add(C2665R.drawable.msg_markread, LocaleController.getString(C2665R.string.FeedMarkAllRead), new Runnable() { // from class: org.telegram.ui.MainTabsActivity$$ExternalSyntheticLambda27
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createView$7();
            }
        }).add(C2665R.drawable.msg_settings, LocaleController.getString(C2665R.string.FeedSettings), new Runnable() { // from class: org.telegram.ui.MainTabsActivity$$ExternalSyntheticLambda28
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createView$8();
            }
        }).setGravity(1).translate(0.0f, -AndroidUtilities.dp(4.0f)).setScrimViewBackground(MainTabsUiHelper.createMainTabsScrimBackground(this.resourceProvider, false)).setDismissOnMoveOutside(true).show();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$6() {
        ExteraConfig.setShowFeedTab(false);
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.feedTabVisibleToggled, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$createView$7() {
        ViewPagerActivity.FragmentState fragmentState = this.fragmentsArr.get(getPositionContacts());
        if (fragmentState != null) {
            BaseFragment baseFragment = fragmentState.fragment;
            if (baseFragment instanceof FeedActivity) {
                ((FeedActivity) baseFragment).markAllRead();
            } else {
                FeedController.getInstance(this.currentAccount).markAllRead();
            }
        }
        checkUnreadCount(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$8() {
        presentFragment(new FeedChannelsActivity());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$10(int i, View view) {
        if (this.viewPager.isManualScrolling() || this.viewPager.isTouch()) {
            return;
        }
        if (i == 5 && isFeedTabEnabled() && AndroidUtilities.isTablet()) {
            FeedActivity.presentFeed(this);
            return;
        }
        int iIndexToPosition = indexToPosition(i);
        if (this.viewPager.getCurrentPosition() == iIndexToPosition) {
            Object currentVisibleFragment = getCurrentVisibleFragment();
            if (currentVisibleFragment instanceof TabFragmentDelegate) {
                ((TabFragmentDelegate) currentVisibleFragment).onParentScrollToTop();
                return;
            }
            return;
        }
        selectTab(iIndexToPosition, true);
        this.viewPager.scrollToPosition(iIndexToPosition);
    }

    private void checkUnreadCount(boolean z) {
        if (this.tabsView == null) {
            return;
        }
        int mainUnreadCount = MessagesStorage.getInstance(this.currentAccount).getMainUnreadCount();
        if (mainUnreadCount > 0) {
            this.tabs[0].setCounter(LocaleController.formatNumber(mainUnreadCount, ','), false, z);
        } else {
            this.tabs[0].setCounter(null, false, z);
        }
        if (this.tabs[5] == null || !isFeedTabEnabled()) {
            return;
        }
        int unreadCount = FeedController.getInstance(this.currentAccount).getUnreadCount();
        this.tabs[5].setCounter(unreadCount > 0 ? LocaleController.formatNumber(unreadCount, ',') : null, false, z);
    }

    public boolean openCallsSelector(View view) {
        if (getContext() == null || getParentActivity() == null) {
            return false;
        }
        ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions(this, view);
        itemOptionsMakeOptions.add(C2665R.drawable.menu_call_create, LocaleController.getString(C2665R.string.GroupCallCreate2), new Runnable() { // from class: org.telegram.ui.MainTabsActivity$$ExternalSyntheticLambda18
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$openCallsSelector$12();
            }
        });
        if (getUserConfig().showCallsTab) {
            itemOptionsMakeOptions.add(C2665R.drawable.msg_archive_hide, LocaleController.getString(C2665R.string.HideCallTab), new Runnable() { // from class: org.telegram.ui.MainTabsActivity$$ExternalSyntheticLambda19
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$openCallsSelector$13();
                }
            });
        } else {
            itemOptionsMakeOptions.add(C2665R.drawable.menu_add_tab_24, LocaleController.getString(C2665R.string.GroupCallShowInMainTabs), new Runnable() { // from class: org.telegram.ui.MainTabsActivity$$ExternalSyntheticLambda20
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$openCallsSelector$14();
                }
            });
        }
        itemOptionsMakeOptions.translate(0.0f, -AndroidUtilities.dp(4.0f));
        itemOptionsMakeOptions.setScrimViewBackground(MainTabsUiHelper.createMainTabsScrimBackground(this.resourceProvider, false));
        itemOptionsMakeOptions.setDismissOnMoveOutside(true);
        itemOptionsMakeOptions.show();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openCallsSelector$12() {
        CallLogActivity.openCreateCall(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openCallsSelector$13() {
        getUserConfig().setShowCallsTab(false);
        checkUi_callTabVisible(false, true);
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.callTabsVisibleToggled, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openCallsSelector$14() {
        getUserConfig().setShowCallsTab(true);
        checkUi_callTabVisible(true, true);
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.callTabsVisibleToggled, new Object[0]);
    }

    public boolean openAccountSelector(View view) {
        return openAccountSelectorInternal(view, null, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean openAccountSelector(View view, View view2) {
        return openAccountSelectorInternal(view, view2, true);
    }

    private boolean openAccountSelectorInternal(View view, View view2, boolean z) {
        boolean zShow = AccountsUiHelper.menu(this, view).fromBottom(z).touchRelay(view2).extraItems(!BuildVars.DEBUG_PRIVATE_VERSION ? null : new Consumer() { // from class: org.telegram.ui.MainTabsActivity$$ExternalSyntheticLambda25
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                this.f$0.lambda$openAccountSelectorInternal$17((ItemOptions) obj);
            }
        }).show();
        if (zShow) {
            HintsController.Hint.AccountSwitchHint.doNotShowAgain();
        }
        return zShow;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openAccountSelectorInternal$16() {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.MainTabsActivity$$ExternalSyntheticLambda31
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.dumpCanvas();
            }
        }, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openAccountSelectorInternal$17(ItemOptions itemOptions) {
        itemOptions.add(C2665R.drawable.menu_download_round, "Dump Canvas", new Runnable() { // from class: org.telegram.ui.MainTabsActivity$$ExternalSyntheticLambda30
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$openAccountSelectorInternal$16();
            }
        });
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private boolean showFiltersMenu(View view, ArrayList<MessagesController.DialogFilter> arrayList, boolean z) {
        final ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions(this, view);
        if (arrayList != null && !arrayList.isEmpty()) {
            for (final int i = 0; i < arrayList.size(); i++) {
                MessagesController.DialogFilter dialogFilter = arrayList.get(i);
                if (!dialogFilter.isDefault() || !ExteraConfig.getHideAllChats()) {
                    CharSequence charSequenceReplaceEmoji = Emoji.replaceEmoji(dialogFilter.isDefault() ? LocaleController.getString(C2665R.string.FilterAllChats) : dialogFilter.name, Theme.chat_msgTextPaint.getFontMetricsInt(), false);
                    ArrayList<TLRPC.MessageEntity> arrayList2 = dialogFilter.entities;
                    if (arrayList2 != null && !arrayList2.isEmpty()) {
                        charSequenceReplaceEmoji = MessageObject.replaceAnimatedEmoji(charSequenceReplaceEmoji, dialogFilter.entities, Theme.chat_msgTextPaint.getFontMetricsInt());
                    }
                    ActionBarMenuSubItem actionBarMenuSubItemAdd = itemOptionsMakeOptions.add();
                    actionBarMenuSubItemAdd.setTextAndIcon(charSequenceReplaceEmoji, getIcon(dialogFilter));
                    NotificationCenter.listenEmojiLoading(actionBarMenuSubItemAdd.textView);
                    actionBarMenuSubItemAdd.imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
                    actionBarMenuSubItemAdd.imageView.setLayoutParams(LayoutHelper.createFrame(24, 24.0f, (LocaleController.isRTL ? 5 : 3) | 16, 0.0f, 0.0f, 0.0f, 0.0f));
                    actionBarMenuSubItemAdd.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.MainTabsActivity$$ExternalSyntheticLambda21
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            this.f$0.lambda$showFiltersMenu$18(itemOptionsMakeOptions, i, view2);
                        }
                    });
                }
            }
            itemOptionsMakeOptions.addGap();
        }
        itemOptionsMakeOptions.add(C2665R.drawable.msg_saved, LocaleController.getString(C2665R.string.SavedMessages), new Runnable() { // from class: org.telegram.ui.MainTabsActivity$$ExternalSyntheticLambda22
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$showFiltersMenu$19(itemOptionsMakeOptions);
            }
        });
        itemOptionsMakeOptions.addIf(z, C2665R.drawable.msg_archive, LocaleController.getString(C2665R.string.ArchivedChats), new Runnable() { // from class: org.telegram.ui.MainTabsActivity$$ExternalSyntheticLambda23
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$showFiltersMenu$20(itemOptionsMakeOptions);
            }
        });
        itemOptionsMakeOptions.setGravity(3).translate(0.0f, -AndroidUtilities.dp(4.0f)).setScrimViewBackground(MainTabsUiHelper.createMainTabsScrimBackground(this.resourceProvider, false)).setDismissOnMoveOutside(true).show();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showFiltersMenu$18(ItemOptions itemOptions, int i, View view) {
        itemOptions.dismiss();
        this.dialogsActivity.switchToFilter(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showFiltersMenu$19(ItemOptions itemOptions) {
        itemOptions.dismiss();
        Bundle bundle = new Bundle();
        bundle.putLong("user_id", getUserConfig().getClientUserId());
        if (getMessagesController().checkCanOpenChat(bundle, this)) {
            presentFragment(new ChatActivity(bundle));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showFiltersMenu$20(ItemOptions itemOptions) {
        itemOptions.dismiss();
        Bundle bundle = new Bundle();
        bundle.putInt("folderId", 1);
        presentFragment(new DialogsActivity(bundle));
    }

    private static int getIcon(MessagesController.DialogFilter dialogFilter) {
        int i = dialogFilter.flags;
        if ((MessagesController.DIALOG_FILTER_FLAG_ALL_CHATS & i) == (MessagesController.DIALOG_FILTER_FLAG_CONTACTS | MessagesController.DIALOG_FILTER_FLAG_NON_CONTACTS)) {
            return C2665R.drawable.msg_openprofile;
        }
        if ((MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_READ & i) != 0) {
            int i2 = MessagesController.DIALOG_FILTER_FLAG_ALL_CHATS;
            if ((i & i2) == i2) {
                return C2665R.drawable.msg_markunread;
            }
        }
        if ((MessagesController.DIALOG_FILTER_FLAG_ALL_CHATS & i) == MessagesController.DIALOG_FILTER_FLAG_CHANNELS) {
            return C2665R.drawable.msg_channel;
        }
        if ((MessagesController.DIALOG_FILTER_FLAG_ALL_CHATS & i) == MessagesController.DIALOG_FILTER_FLAG_GROUPS) {
            return C2665R.drawable.msg_groups;
        }
        if ((MessagesController.DIALOG_FILTER_FLAG_ALL_CHATS & i) == MessagesController.DIALOG_FILTER_FLAG_CONTACTS) {
            return C2665R.drawable.msg_contacts;
        }
        if ((i & MessagesController.DIALOG_FILTER_FLAG_ALL_CHATS) == MessagesController.DIALOG_FILTER_FLAG_BOTS) {
            return C2665R.drawable.msg_bots;
        }
        return C2665R.drawable.msg_folders;
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void openSettingsTabOptions(final View view) {
        final ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions((BaseFragment) this, view, true);
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment == null) {
            safeLastFragment = this;
        }
        MainMenuHelper.MenuContext menuContextCreateMenuContext = MainMenuHelper.createMenuContext(this.currentAccount, this, new Runnable() { // from class: org.telegram.ui.MainTabsActivity$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$openSettingsTabOptions$21();
            }
        }, MainMenuHelper.createPluginContextData(this.currentAccount, safeLastFragment));
        Theme.ResourcesProvider resourcesProvider = this.resourceProvider;
        boolean zIsDark = resourcesProvider != null ? resourcesProvider.isDark() : Theme.isCurrentThemeDark();
        itemOptionsMakeOptions.add(zIsDark ? C2665R.drawable.menu_day_mode_24 : C2665R.drawable.menu_night_mode_24, LocaleController.getString(zIsDark ? C2665R.string.SwitchThemeToDay : C2665R.string.SwitchThemeToNight), new Runnable() { // from class: org.telegram.ui.MainTabsActivity$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$openSettingsTabOptions$23(view);
            }
        });
        itemOptionsMakeOptions.addGap();
        MainMenuHelper.addConfiguredItemOptions(itemOptionsMakeOptions, menuContextCreateMenuContext, new IntPredicate() { // from class: org.telegram.ui.MainTabsActivity$$ExternalSyntheticLambda12
            @Override // java.util.function.IntPredicate
            public final boolean test(int i) {
                return MainTabsActivity.$r8$lambda$QOV7jKE6_HebEDLsntk6kShGZBk(i);
            }
        });
        ApplicationLoader applicationLoader = ApplicationLoader.applicationLoaderInstance;
        if (applicationLoader != null) {
            applicationLoader.addItemOptions(itemOptionsMakeOptions);
        }
        if (!SharedConfig.proxyList.isEmpty()) {
            itemOptionsMakeOptions.addGap();
            if (this.proxyDrawable == null) {
                this.proxyDrawable = new ProxyDrawable(getContext());
            }
            ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem(getContext(), false, false, this.resourceProvider);
            this.proxyMenuSubItem = actionBarMenuSubItem;
            actionBarMenuSubItem.setTextAndIcon(LocaleController.getString(C2665R.string.MenuProxyTitle), 0, this.proxyDrawable);
            this.proxyMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.MainTabsActivity$$ExternalSyntheticLambda13
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f$0.lambda$openSettingsTabOptions$25(itemOptionsMakeOptions, view2);
                }
            });
            updateProxyButton(false, false);
            itemOptionsMakeOptions.addView(this.proxyMenuSubItem);
        }
        itemOptionsMakeOptions.setGravity(1).translate(0.0f, -AndroidUtilities.dp(4.0f)).setScrimViewBackground(MainTabsUiHelper.createMainTabsScrimBackground(this.resourceProvider, false)).setDismissOnMoveOutside(true).setSwipebackGravity(false, true).setSwipebackCenterHorizontal(true).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openSettingsTabOptions$21() {
        Bundle bundle = new Bundle();
        bundle.putInt("folderId", 1);
        presentFragment(new DialogsActivity(bundle));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0078  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$openSettingsTabOptions$23(View view) {
        boolean zEquals;
        Theme.ThemeInfo theme;
        if (DialogsActivity.switchingTheme) {
            return;
        }
        DialogsActivity.switchingTheme = true;
        SharedPreferences sharedPreferences = ApplicationLoader.applicationContext.getSharedPreferences("themeconfig", 0);
        String str = "Blue";
        String string = sharedPreferences.getString("lastDayTheme", "Blue");
        if (Theme.getTheme(string) == null || Theme.getTheme(string).isDark()) {
            string = "Blue";
        }
        String str2 = "Dark Blue";
        String string2 = sharedPreferences.getString("lastDarkTheme", "Dark Blue");
        if (Theme.getTheme(string2) == null || !Theme.getTheme(string2).isDark()) {
            string2 = "Dark Blue";
        }
        Theme.ThemeInfo activeTheme = Theme.getActiveTheme();
        if (string.equals(string2)) {
            if (activeTheme.isDark() || string.equals("Dark Blue") || string.equals("Night")) {
                str2 = string2;
            }
            zEquals = str.equals(activeTheme.getKey());
            if (!zEquals) {
                theme = Theme.getTheme(str2);
            } else {
                theme = Theme.getTheme(str);
            }
            switchTheme(view, theme, zEquals);
            Theme.turnOffAutoNight(BulletinFactory.of(this), new Runnable() { // from class: org.telegram.ui.MainTabsActivity$$ExternalSyntheticLambda29
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$openSettingsTabOptions$22();
                }
            });
        }
        str2 = string2;
        str = string;
        zEquals = str.equals(activeTheme.getKey());
        if (!zEquals) {
        }
        switchTheme(view, theme, zEquals);
        Theme.turnOffAutoNight(BulletinFactory.of(this), new Runnable() { // from class: org.telegram.ui.MainTabsActivity$$ExternalSyntheticLambda29
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$openSettingsTabOptions$22();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openSettingsTabOptions$22() {
        presentFragment(new ThemeActivity(1));
    }

    public static /* synthetic */ boolean $r8$lambda$QOV7jKE6_HebEDLsntk6kShGZBk(int i) {
        if (i == MainMenuItem.SETTINGS.getId() || i == MainMenuItem.PROFILE.getId() || i == MainMenuItem.ARCHIVE.getId() || i == MainMenuItem.SAVED.getId()) {
            return true;
        }
        return ExteraConfig.getShowFeedTab() && i == MainMenuItem.FEED.getId();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openSettingsTabOptions$25(ItemOptions itemOptions, View view) {
        itemOptions.dismiss();
        presentFragment(new ProxyListActivity());
    }

    private void switchTheme(View view, Theme.ThemeInfo themeInfo, boolean z) {
        if (view == null) {
            return;
        }
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        iArr[0] = iArr[0] + (view.getMeasuredWidth() / 2);
        iArr[1] = iArr[1] + (view.getMeasuredHeight() / 2);
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.needSetDayNightTheme, themeInfo, Boolean.FALSE, iArr, -1, Boolean.valueOf(z), null, null, null, Boolean.TRUE);
    }

    private void updateProxyButton(boolean z, boolean z2) {
        if (this.proxyDrawable == null || this.proxyMenuSubItem == null) {
            return;
        }
        boolean z3 = ApplicationLoader.applicationContext.getSharedPreferences("mainconfig", 0).getBoolean("proxy_enabled", false);
        int i = this.currentConnectionState;
        boolean z4 = i == 3 || i == 5;
        this.proxyDrawable.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_actionBarDefaultSubmenuItemIcon), PorterDuff.Mode.SRC_IN));
        this.proxyMenuSubItem.setTextColor(getThemedColor(Theme.key_actionBarDefaultSubmenuItem));
        ActionBarMenuSubItem actionBarMenuSubItem = this.proxyMenuSubItem;
        if (z3) {
            actionBarMenuSubItem.setItemHeight(56);
            this.proxyMenuSubItem.setSubtext(LocaleController.getString(z4 ? C2665R.string.MenuProxyConnected : C2665R.string.MenuProxyConnecting));
        } else {
            actionBarMenuSubItem.setItemHeight(48);
            this.proxyMenuSubItem.setSubtext(null);
        }
        this.proxyDrawable.setConnected(z3, z4, z);
    }

    @Override // org.telegram.ui.ViewPagerActivity
    public void onViewPagerScrollEnd() {
        if (this.tabsView != null) {
            selectTab(this.viewPager.getCurrentPosition(), true);
            setGestureSelectedOverride(0.0f, false);
        }
        blur3_invalidateBlur();
        ViewPagerActivity.ViewPagerActivityPagerLayout viewPagerActivityPagerLayout = this.viewPager;
        if (viewPagerActivityPagerLayout != null) {
            int currentPosition = viewPagerActivityPagerLayout.getCurrentPosition();
            if (currentPosition != getPositionCallsOrSettings() && this.dropCallsFragmentAfterPageScroll) {
                dropFragmentAtPosition(getPositionCallsOrSettings());
                this.dropCallsFragmentAfterPageScroll = false;
            }
            if (currentPosition != getPositionProfile()) {
                dropFragmentAtPosition(getPositionProfile());
            }
        }
        Object currentVisibleFragment = getCurrentVisibleFragment();
        if (currentVisibleFragment instanceof TabFragmentDelegate) {
            ((TabFragmentDelegate) currentVisibleFragment).updateMainTabsVisibility();
        }
    }

    @Override // org.telegram.ui.ViewPagerActivity
    public void onViewPagerTabAnimationUpdate(boolean z) {
        boolean z2 = !z;
        if (this.tabsView != null) {
            float positionAnimated = this.viewPager.getPositionAnimated();
            setGestureSelectedOverride(positionAnimated, z2);
            if (!z) {
                selectTab(Math.round(positionAnimated), true);
            }
        }
        checkUi_fadeView();
        blur3_invalidateBlur();
        this.contentView.invalidate();
    }

    @Override // org.telegram.ui.ViewPagerActivity
    public int getFragmentsCount() {
        return getTabsCount();
    }

    @Override // org.telegram.ui.ViewPagerActivity
    public int getStartPosition() {
        return getPositionChats();
    }

    @Override // org.telegram.ui.ViewPagerActivity
    public boolean canScrollToPage(int i) {
        return (AndroidUtilities.isTablet() && isFeedTabEnabled() && i == getPositionContacts()) ? false : true;
    }

    @Override // org.telegram.ui.ViewPagerActivity, org.telegram.ui.ActionBar.BaseFragment
    public boolean onBackPressed(boolean z) {
        int startPosition;
        boolean zOnBackPressed = super.onBackPressed(z);
        if (!zOnBackPressed || this.viewPager.getCurrentPosition() == (startPosition = getStartPosition())) {
            return zOnBackPressed;
        }
        if (!z) {
            return false;
        }
        this.viewPager.scrollToPosition(startPosition);
        return false;
    }

    private boolean isDrawerAccountPreview() {
        Bundle bundle = this.arguments;
        return bundle != null && bundle.getBoolean("drawer_account_preview", false);
    }

    private Bundle createDialogsArguments(Bundle bundle) {
        Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
        bundle2.putBoolean("hasMainTabs", true);
        return bundle2;
    }

    private <T extends BaseFragment> T prepareTabFragment(T t) {
        t.setCurrentAccount(this.currentAccount);
        t.setInPreviewMode(isInPreviewMode());
        if (t instanceof TabFragmentDelegate) {
            ((TabFragmentDelegate) t).setParentTabsGlassInvalidationCallback(new Runnable() { // from class: org.telegram.ui.MainTabsActivity$$ExternalSyntheticLambda14
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.invalidateTabsGlass();
                }
            });
        }
        return t;
    }

    private DialogsActivity createDialogsActivity(Bundle bundle) {
        DialogsActivity dialogsActivity = (DialogsActivity) prepareTabFragment(new DialogsActivity(createDialogsArguments(bundle)));
        dialogsActivity.setMainTabsActivityController(new MainTabsActivityControllerImpl(getPositionChats()));
        return dialogsActivity;
    }

    public DialogsActivity prepareDialogsActivity(Bundle bundle) {
        this.dialogsActivity = createDialogsActivity(bundle);
        putFragmentAtPosition(getPositionChats(), this.dialogsActivity);
        return this.dialogsActivity;
    }

    @Override // org.telegram.ui.ViewPagerActivity
    public BaseFragment createBaseFragmentAt(int i) {
        if (i == getPositionContacts() && isFeedTabEnabled()) {
            Bundle bundle = new Bundle();
            bundle.putBoolean("hasMainTabs", isBottomTabsEnabled());
            FeedActivity feedActivity = (FeedActivity) prepareTabFragment(new FeedActivity(bundle));
            feedActivity.setMainTabsActivityController(new MainTabsActivityControllerImpl(i));
            return feedActivity;
        }
        if (i == getPositionContacts() && getUserConfig().showContactsTab) {
            Bundle bundle2 = new Bundle();
            bundle2.putBoolean("needPhonebook", true);
            bundle2.putBoolean("needFinishFragment", false);
            bundle2.putBoolean("hasMainTabs", isBottomTabsEnabled());
            ContactsActivity contactsActivity = (ContactsActivity) prepareTabFragment(new ContactsActivity(bundle2));
            contactsActivity.setMainTabsActivityController(new MainTabsActivityControllerImpl(i));
            return contactsActivity;
        }
        if (i == getPositionCallsOrSettings()) {
            if (getUserConfig().showCallsTab) {
                Bundle bundle3 = new Bundle();
                bundle3.putBoolean("needFinishFragment", false);
                bundle3.putBoolean("hasMainTabs", isBottomTabsEnabled());
                CallLogActivity callLogActivity = (CallLogActivity) prepareTabFragment(new CallLogActivity(bundle3));
                callLogActivity.setMainTabsActivityController(new MainTabsActivityControllerImpl(i));
                return callLogActivity;
            }
            Bundle bundle4 = new Bundle();
            bundle4.putBoolean("hasMainTabs", isBottomTabsEnabled());
            SettingsActivity settingsActivity = (SettingsActivity) prepareTabFragment(new SettingsActivity(bundle4));
            settingsActivity.setMainTabsActivityController(new MainTabsActivityControllerImpl(i));
            return settingsActivity;
        }
        if (i == getPositionChats()) {
            DialogsActivity dialogsActivityCreateDialogsActivity = createDialogsActivity(this.arguments);
            this.dialogsActivity = dialogsActivityCreateDialogsActivity;
            return dialogsActivityCreateDialogsActivity;
        }
        if (i != getPositionProfile()) {
            return null;
        }
        Bundle bundle5 = new Bundle();
        bundle5.putLong("user_id", UserConfig.getInstance(this.currentAccount).getClientUserId());
        bundle5.putBoolean("my_profile", true);
        bundle5.putBoolean("hasMainTabs", isBottomTabsEnabled());
        ProfileActivity profileActivity = (ProfileActivity) prepareTabFragment(new ProfileActivity(bundle5));
        profileActivity.setMainTabsActivityController(new MainTabsActivityControllerImpl(i));
        return profileActivity;
    }

    public DialogsActivity getDialogsActivity() {
        return this.dialogsActivity;
    }

    public void selectTab(int i, boolean z) {
        int i2 = 0;
        while (true) {
            GlassTabView[] glassTabViewArr = this.tabs;
            if (i2 >= glassTabViewArr.length) {
                return;
            }
            glassTabViewArr[i2].setSelected(indexToPosition(i2) == i, z);
            i2++;
        }
    }

    public void setGestureSelectedOverride(float f, boolean z) {
        for (int i = 0; i < this.tabs.length; i++) {
            this.tabs[i].setGestureSelectedOverride(Math.max(0.0f, 1.0f - Math.abs(indexToPosition(i) - f)), z);
        }
        this.tabsView.invalidate();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void setInPreviewMode(boolean z) {
        super.setInPreviewMode(z);
        int size = this.fragmentsArr.size();
        for (int i = 0; i < size; i++) {
            ViewPagerActivity.FragmentState fragmentStateValueAt = this.fragmentsArr.valueAt(i);
            if (fragmentStateValueAt != null) {
                fragmentStateValueAt.fragment.setInPreviewMode(z);
            }
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onTransitionAnimationStart(boolean z, boolean z2) {
        BaseFragment currentVisibleFragment = getCurrentVisibleFragment();
        if (currentVisibleFragment != null) {
            currentVisibleFragment.onTransitionAnimationStart(z, z2);
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onTransitionAnimationProgress(boolean z, float f) {
        BaseFragment currentVisibleFragment = getCurrentVisibleFragment();
        if (currentVisibleFragment != null) {
            currentVisibleFragment.onTransitionAnimationProgress(z, f);
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onTransitionAnimationEnd(boolean z, boolean z2) {
        BaseFragment currentVisibleFragment = getCurrentVisibleFragment();
        if (currentVisibleFragment != null) {
            currentVisibleFragment.onTransitionAnimationEnd(z, z2);
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onPreviewOpenAnimationEnd() {
        BaseFragment currentVisibleFragment = getCurrentVisibleFragment();
        if (currentVisibleFragment != null) {
            currentVisibleFragment.onPreviewOpenAnimationEnd();
        }
    }

    @Override // org.telegram.ui.ViewPagerActivity
    public boolean canScrollForward(MotionEvent motionEvent) {
        return canScrollInternal(motionEvent, true);
    }

    @Override // org.telegram.ui.ViewPagerActivity
    public boolean canScrollBackward(MotionEvent motionEvent) {
        return canScrollInternal(motionEvent, false);
    }

    private boolean canScrollInternal(MotionEvent motionEvent, boolean z) {
        if (!isBottomTabsEnabled()) {
            return false;
        }
        Object currentVisibleFragment = getCurrentVisibleFragment();
        if (currentVisibleFragment instanceof TabFragmentDelegate) {
            return ((TabFragmentDelegate) currentVisibleFragment).canParentTabsSlide(motionEvent, z);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isBottomTabsEnabled() {
        return BottomNavigationBar.visible();
    }

    @Override // org.telegram.ui.ViewPagerActivity
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        if (this.updateLayoutWrapper == null || this.fadeView == null || this.viewPager == null || this.tabsViewWrapper == null) {
            return super.onApplyWindowInsets(view, windowInsetsCompat);
        }
        Insets defaultWindowInsets = AndroidUtilities.getDefaultWindowInsets(windowInsetsCompat, false);
        this.insetLeft = defaultWindowInsets.left;
        this.insetRight = defaultWindowInsets.right;
        this.navigationBarHeight = defaultWindowInsets.bottom;
        boolean zIsUpdateLayoutVisible = this.updateLayoutWrapper.isUpdateLayoutVisible();
        int iDp = zIsUpdateLayoutVisible ? AndroidUtilities.dp(44.0f) : 0;
        this.updateLayoutWrapper.setPadding(0, 0, 0, this.navigationBarHeight);
        int iDp2 = this.navigationBarHeight + iDp + (isBottomTabsEnabled() ? AndroidUtilities.dp(MainTabsUiHelper.getTabsViewHeightDp()) : 0);
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.fadeView.getLayoutParams();
        if (marginLayoutParams.height != iDp2) {
            marginLayoutParams.height = iDp2;
            this.fadeView.setLayoutParams(marginLayoutParams);
        }
        int iMax = zIsUpdateLayoutVisible ? this.navigationBarHeight + iDp : 0;
        if (this.tabletLayout) {
            iMax = Math.max(iMax, this.navigationBarHeight + AndroidUtilities.dp(MainTabsUiHelper.getTabsViewHeightDp()));
        }
        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) this.viewPager.getLayoutParams();
        if (marginLayoutParams2.bottomMargin != iMax || marginLayoutParams2.leftMargin != defaultWindowInsets.left || marginLayoutParams2.rightMargin != defaultWindowInsets.right) {
            marginLayoutParams2.leftMargin = defaultWindowInsets.left;
            marginLayoutParams2.rightMargin = defaultWindowInsets.right;
            marginLayoutParams2.bottomMargin = iMax;
            this.viewPager.setLayoutParams(marginLayoutParams2);
        }
        MainTabsUiHelper.applyTabsBottomInset(this.tabsView, this.tabsViewWrapper, defaultWindowInsets.left, defaultWindowInsets.right, this.navigationBarHeight);
        if (zIsUpdateLayoutVisible) {
            windowInsetsCompat = windowInsetsCompat.inset(0, 0, 0, this.navigationBarHeight);
        }
        checkUi_tabsPosition();
        checkUi_fadeView();
        return super.onApplyWindowInsets(view, windowInsetsCompat);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        int connectionState;
        GlassTabView glassTabView;
        LaunchActivity launchActivity;
        IUpdateLayout iUpdateLayout;
        IUpdateLayout iUpdateLayout2;
        if (i == NotificationCenter.notificationsCountUpdated || i == NotificationCenter.updateInterfaces || i == NotificationCenter.dialogsNeedReload) {
            View view = this.fragmentView;
            if (view != null && view.isAttachedToWindow()) {
                z = true;
            }
            checkUnreadCount(z);
            return;
        }
        if (i == NotificationCenter.appUpdateLoading) {
            IUpdateLayout iUpdateLayout3 = this.updateLayout;
            if (iUpdateLayout3 != null) {
                iUpdateLayout3.updateFileProgress(null);
                this.updateLayout.updateAppUpdateViews(this.currentAccount, true);
                return;
            }
            return;
        }
        if (i == NotificationCenter.fileLoaded) {
            String str = (String) objArr[0];
            if (SharedConfig.isAppUpdateAvailable() && FileLoader.getAttachFileName(SharedConfig.pendingAppUpdate.document).equals(str) && (iUpdateLayout2 = this.updateLayout) != null) {
                iUpdateLayout2.updateAppUpdateViews(this.currentAccount, true);
                return;
            }
            return;
        }
        if (i == NotificationCenter.fileLoadFailed) {
            String str2 = (String) objArr[0];
            if (SharedConfig.isAppUpdateAvailable() && FileLoader.getAttachFileName(SharedConfig.pendingAppUpdate.document).equals(str2) && (iUpdateLayout = this.updateLayout) != null) {
                iUpdateLayout.updateAppUpdateViews(this.currentAccount, true);
                return;
            }
            return;
        }
        if (i == NotificationCenter.fileLoadProgressChanged) {
            IUpdateLayout iUpdateLayout4 = this.updateLayout;
            if (iUpdateLayout4 != null) {
                iUpdateLayout4.updateFileProgress(objArr);
                return;
            }
            return;
        }
        if (i == NotificationCenter.appUpdateAvailable) {
            IUpdateLayout iUpdateLayout5 = this.updateLayout;
            if (iUpdateLayout5 == null || (launchActivity = LaunchActivity.instance) == null) {
                return;
            }
            iUpdateLayout5.updateAppUpdateViews(this.currentAccount, launchActivity.getMainFragmentsStackSize() == 1);
            return;
        }
        if (i == NotificationCenter.needSetDayNightTheme) {
            clearAllHiddenFragments();
            return;
        }
        if (i == NotificationCenter.callTabsVisibleToggled) {
            checkUi_callTabVisible(getUserConfig().showCallsTab, true);
            ViewPagerActivity.ViewPagerActivityPagerLayout viewPagerActivityPagerLayout = this.viewPager;
            if (viewPagerActivityPagerLayout != null && viewPagerActivityPagerLayout.getCurrentPosition() == getPositionCallsOrSettings()) {
                this.viewPager.scrollToPosition(getPositionChats());
                selectTab(getPositionChats(), true);
                this.dropCallsFragmentAfterPageScroll = true;
                return;
            }
            dropFragmentAtPosition(getPositionCallsOrSettings());
            return;
        }
        if (i == NotificationCenter.contactsTabVisibleToggled) {
            boolean z = getUserConfig().showContactsTab;
            checkUi_contactsOrFeedTabVisible(true);
            ViewPagerActivity.ViewPagerActivityPagerLayout viewPagerActivityPagerLayout2 = this.viewPager;
            if (viewPagerActivityPagerLayout2 != null) {
                int currentPosition = viewPagerActivityPagerLayout2.getCurrentPosition();
                if (!isFeedTabEnabled()) {
                    if (z) {
                        if (currentPosition >= 1) {
                            currentPosition++;
                        }
                    } else if (currentPosition == 1) {
                        currentPosition = 0;
                    } else if (currentPosition > 1) {
                        currentPosition--;
                    }
                }
                clearAllHiddenFragments();
                for (int i3 = 0; i3 < getTabsCount() + 1; i3++) {
                    dropFragmentAtPosition(i3);
                }
                ViewPagerActivity.ViewPagerActivityPagerLayout viewPagerActivityPagerLayout3 = this.viewPager;
                viewPagerActivityPagerLayout3.currentPosition = currentPosition;
                viewPagerActivityPagerLayout3.rebuild(false);
                selectTab(currentPosition, false);
                return;
            }
            return;
        }
        if (i == NotificationCenter.feedTabVisibleToggled) {
            checkUi_contactsOrFeedTabVisible(true);
            checkUnreadCount(false);
            ViewPagerActivity.ViewPagerActivityPagerLayout viewPagerActivityPagerLayout4 = this.viewPager;
            if (viewPagerActivityPagerLayout4 != null) {
                int currentPosition2 = viewPagerActivityPagerLayout4.getCurrentPosition();
                if (!getUserConfig().showContactsTab) {
                    if (isFeedTabEnabled()) {
                        if (currentPosition2 >= 1) {
                            currentPosition2++;
                        }
                    } else if (currentPosition2 == 1) {
                        currentPosition2 = 0;
                    } else if (currentPosition2 > 1) {
                        currentPosition2--;
                    }
                }
                clearAllHiddenFragments();
                for (int i4 = 0; i4 < getTabsCount() + 1; i4++) {
                    dropFragmentAtPosition(i4);
                }
                ViewPagerActivity.ViewPagerActivityPagerLayout viewPagerActivityPagerLayout5 = this.viewPager;
                viewPagerActivityPagerLayout5.currentPosition = currentPosition2;
                viewPagerActivityPagerLayout5.rebuild(false);
                selectTab(currentPosition2, false);
                return;
            }
            return;
        }
        if (i == NotificationCenter.mainUserInfoChanged) {
            GlassTabView[] glassTabViewArr = this.tabs;
            if (glassTabViewArr == null || (glassTabView = glassTabViewArr[4]) == null) {
                return;
            }
            glassTabView.updateUserAvatar(this.currentAccount);
            return;
        }
        if (i == NotificationCenter.contactsPermissionBadgeCheck) {
            checkContactsTabBadge();
            return;
        }
        if (i == NotificationCenter.proxySettingsChanged) {
            updateProxyButton(false, false);
        } else {
            if (i != NotificationCenter.didUpdateConnectionState || this.currentConnectionState == (connectionState = AccountInstance.getInstance(i2).getConnectionsManager().getConnectionState())) {
                return;
            }
            this.currentConnectionState = connectionState;
            updateProxyButton(true, false);
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        this.observersGroup = NotificationCenter.getInstance(this.currentAccount).createObserversGroup(this).add(NotificationCenter.fileLoaded).add(NotificationCenter.fileLoadProgressChanged).add(NotificationCenter.fileLoadFailed).add(NotificationCenter.notificationsCountUpdated).add(NotificationCenter.updateInterfaces).add(NotificationCenter.dialogsNeedReload).add(NotificationCenter.callTabsVisibleToggled).add(NotificationCenter.contactsTabVisibleToggled).add(NotificationCenter.feedTabVisibleToggled).add(NotificationCenter.mainUserInfoChanged).add(NotificationCenter.didUpdateConnectionState).add(NotificationCenter.contactsPermissionBadgeCheck).addGlobal(NotificationCenter.appUpdateAvailable).addGlobal(NotificationCenter.appUpdateLoading).addGlobal(NotificationCenter.proxySettingsChanged).addGlobal(NotificationCenter.needSetDayNightTheme);
        return super.onFragmentCreate();
    }

    @Override // org.telegram.ui.ViewPagerActivity, org.telegram.ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        Bulletin.removeDelegate(this);
        Bulletin.removeDelegate(this.contentView);
        ViewPositionWatcher viewPositionWatcher = this.viewPositionWatcher;
        if (viewPositionWatcher != null) {
            viewPositionWatcher.shutdown();
            this.viewPositionWatcher = null;
        }
        NotificationCenter.ObserversGroup observersGroup = this.observersGroup;
        if (observersGroup != null) {
            observersGroup.removeAllObservers();
            this.observersGroup = null;
        }
        super.onFragmentDestroy();
    }

    @Override // me.vkryl.android.animator.FactorAnimator.Target
    public void onFactorChanged(int i, float f, float f2, FactorAnimator factorAnimator) {
        if (i == 0) {
            checkUi_tabsPosition();
            checkUi_fadeView();
            Bulletin visibleBulletin = Bulletin.getVisibleBulletin();
            if (visibleBulletin != null) {
                visibleBulletin.updatePosition();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkUi_fadeView() {
        if (this.viewPager == null || this.fadeView == null) {
            return;
        }
        if (!isBottomTabsEnabled()) {
            this.fadeView.setAlpha(0.0f);
            this.fadeView.setVisibility(8);
            return;
        }
        float fClamp = 1.0f - MathUtils.clamp(Math.abs(getPositionProfile() - this.viewPager.getPositionAnimated()), 0.0f, 1.0f);
        float navigationBarThirdButtonsFactor = (1.0f - ((1.0f - AndroidUtilities.getNavigationBarThirdButtonsFactor(0.0f, 1.0f, this.navigationBarHeight)) * fClamp)) * this.animatorTabsVisible.getFloatValue();
        if (this.tabletLayout) {
            navigationBarThirdButtonsFactor = 0.0f;
        }
        this.fadeView.setAlpha(navigationBarThirdButtonsFactor);
        this.fadeView.setTranslationY(fClamp * AndroidUtilities.dp(48.0f));
        this.fadeView.setVisibility(navigationBarThirdButtonsFactor > 0.0f ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkUi_tabsPosition() {
        if (this.tabsView == null || this.tabsViewWrapper == null || this.updateLayoutWrapper == null) {
            return;
        }
        if (!isBottomTabsEnabled()) {
            this.tabsView.setClickable(false);
            this.tabsView.setEnabled(false);
            this.tabsView.setAlpha(0.0f);
            this.tabsView.setVisibility(8);
            return;
        }
        int iDp = AndroidUtilities.dp(40.0f) + (-(this.updateLayoutWrapper.isUpdateLayoutVisible() ? AndroidUtilities.dp(44.0f) : 0));
        float floatValue = this.animatorTabsVisible.getFloatValue();
        AndroidUtilities.lerp(0.85f, 1.0f, floatValue);
        this.tabsViewWrapper.setTranslationY(AndroidUtilities.lerp(iDp, r0, floatValue));
        this.tabsView.setClickable(floatValue > 0.5f);
        this.tabsView.setEnabled(floatValue > 0.5f);
        this.tabsView.setAlpha(floatValue);
        this.tabsView.setVisibility(floatValue > 0.0f ? 0 : 8);
    }

    private void checkUi_contactsOrFeedTabVisible(boolean z) {
        if (this.tabsView != null) {
            boolean zIsFeedTabEnabled = isFeedTabEnabled();
            this.tabsView.setViewVisible(this.tabs[5], zIsFeedTabEnabled, z);
            this.tabsView.setViewVisible(this.tabs[1], !zIsFeedTabEnabled && getUserConfig().showContactsTab, z);
        }
    }

    private void checkUi_callTabVisible(boolean z, boolean z2) {
        MainTabsLayout mainTabsLayout = this.tabsView;
        if (mainTabsLayout != null) {
            mainTabsLayout.setViewVisible(this.tabs[2], !z, z2);
            this.tabsView.setViewVisible(this.tabs[3], z, z2);
        }
    }

    @Override // org.telegram.ui.ViewPagerActivity, org.telegram.ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> themeDescriptions = super.getThemeDescriptions();
        ThemeDescription.ThemeDescriptionDelegate themeDescriptionDelegate = new ThemeDescription.ThemeDescriptionDelegate() { // from class: org.telegram.ui.MainTabsActivity$$ExternalSyntheticLambda9
            @Override // org.telegram.ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                this.f$0.blur3_updateColors();
            }
        };
        themeDescriptions.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_windowBackgroundWhite));
        themeDescriptions.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_dialogBackground));
        return themeDescriptions;
    }

    public class MainTabsActivityControllerImpl implements MainTabsActivityController {
        private final int ownerPosition;

        private MainTabsActivityControllerImpl(int i) {
            this.ownerPosition = i;
        }

        @Override // org.telegram.ui.MainTabsActivityController
        public void setTabsVisible(boolean z) {
            ViewPagerActivity.ViewPagerActivityPagerLayout viewPagerActivityPagerLayout = MainTabsActivity.this.viewPager;
            if (viewPagerActivityPagerLayout == null || viewPagerActivityPagerLayout.getTargetPosition() == this.ownerPosition) {
                MainTabsLayout mainTabsLayout = MainTabsActivity.this.tabsView;
                MainTabsActivity mainTabsActivity = MainTabsActivity.this;
                if (mainTabsLayout == null) {
                    mainTabsActivity.animatorTabsVisible.changeValueSilently(z);
                    MainTabsActivity.this.animatorTabsVisible.changeValueSilently(z ? 1.0f : 0.0f);
                } else {
                    mainTabsActivity.animatorTabsVisible.setValue(z, true);
                }
            }
        }

        @Override // org.telegram.ui.MainTabsActivityController
        public boolean openAccountSelector(View view, View view2) {
            if (view == null) {
                return false;
            }
            return MainTabsActivity.this.openAccountSelector(view, view2);
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean canBeginSlide() {
        BaseFragment currentVisibleFragment = getCurrentVisibleFragment();
        return currentVisibleFragment != null && currentVisibleFragment.canBeginSlide();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onBeginSlide() {
        super.onBeginSlide();
        BaseFragment currentVisibleFragment = getCurrentVisibleFragment();
        if (currentVisibleFragment != null) {
            currentVisibleFragment.onBeginSlide();
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onSlideProgress(boolean z, float f) {
        BaseFragment currentVisibleFragment = getCurrentVisibleFragment();
        if (currentVisibleFragment != null) {
            currentVisibleFragment.onSlideProgress(z, f);
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public Animator getCustomSlideTransition(boolean z, boolean z2, float f) {
        BaseFragment currentVisibleFragment = getCurrentVisibleFragment();
        if (currentVisibleFragment != null) {
            return currentVisibleFragment.getCustomSlideTransition(z, z2, f);
        }
        return null;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void prepareFragmentToSlide(boolean z, boolean z2) {
        BaseFragment currentVisibleFragment = getCurrentVisibleFragment();
        if (currentVisibleFragment != null) {
            currentVisibleFragment.prepareFragmentToSlide(z, z2);
        }
    }

    private void showAccountChangeHint() {
        if (this.accountSwitchHintShown || isDrawerAccountPreview() || !isBottomTabsEnabled()) {
            return;
        }
        if (this.accountSwitchHint == null && HintsController.Hint.AccountSwitchHint.show()) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.MainTabsActivity$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$showAccountChangeHint$27();
                }
            }, 1500L);
        }
        this.accountSwitchHintShown = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showAccountChangeHint$27() {
        GlassTabView[] glassTabViewArr;
        if (getContext() == null || (glassTabViewArr = this.tabs) == null) {
            return;
        }
        float width = ((this.contentView.getWidth() - ((this.tabsView.getX() + glassTabViewArr[4].getX()) + r0.getWidth())) + (r0.getWidth() / 2.0f)) / AndroidUtilities.density;
        HintView2 hintView2 = new HintView2(getContext(), 3);
        this.accountSwitchHint = hintView2;
        hintView2.setTranslationY((-this.navigationBarHeight) + AndroidUtilities.dp(4.0f));
        this.accountSwitchHint.setPadding(AndroidUtilities.dp(7.33f), 0, AndroidUtilities.dp(7.33f), 0);
        this.accountSwitchHint.setMultilineText(false);
        this.accountSwitchHint.setCloseButton(true);
        this.accountSwitchHint.setText(LocaleController.getString(C2665R.string.SwitchAccountHint));
        this.accountSwitchHint.setJoint(1.0f, (-width) + 7.33f);
        this.contentView.addView(this.accountSwitchHint, LayoutHelper.createFrame(-1, 100.0f, 87, 0.0f, 0.0f, 0.0f, MainTabsUiHelper.getTabsViewHeightDp()));
        this.accountSwitchHint.setOnHiddenListener(new Runnable() { // from class: org.telegram.ui.MainTabsActivity$$ExternalSyntheticLambda24
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$showAccountChangeHint$26();
            }
        });
        this.accountSwitchHint.setDuration(8000L);
        this.accountSwitchHint.show();
        HintsController.Hint.AccountSwitchHint.increment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showAccountChangeHint$26() {
        AndroidUtilities.removeFromParent(this.accountSwitchHint);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void invalidateTabsGlass() {
        BlurredBackgroundSourceRenderNode blurredBackgroundSourceRenderNode;
        if (Build.VERSION.SDK_INT < 31 || (blurredBackgroundSourceRenderNode = this.iBlur3SourceTabGlass) == null) {
            return;
        }
        blurredBackgroundSourceRenderNode.invalidateDisplayList();
        blur3_invalidateBlur();
        MainTabsLayout mainTabsLayout = this.tabsView;
        if (mainTabsLayout != null) {
            mainTabsLayout.invalidate();
        }
        FrameLayout frameLayout = this.tabsViewWrapper;
        if (frameLayout != null) {
            frameLayout.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void blur3_invalidateBlur() {
        View view;
        if (Build.VERSION.SDK_INT < 31 || this.iBlur3SourceTabGlass == null || (view = this.fragmentView) == null) {
            return;
        }
        this.iBlur3SourceTabGlass.setSize(view.getMeasuredWidth(), this.fragmentView.getMeasuredHeight());
        this.iBlur3SourceTabGlass.updateDisplayListIfNeeded();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void blur3_updateFadeColors() {
        this.iBlur3SourceColor.setColor(getEstBackgroundColor());
        View view = this.fadeView;
        if (view != null) {
            view.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void blur3_updateColors() {
        blur3_updateFadeColors();
        BlurredBackgroundDrawable blurredBackgroundDrawable = this.tabsViewBackground;
        if (blurredBackgroundDrawable != null) {
            blurredBackgroundDrawable.updateColors();
        }
        blur3_invalidateBlur();
        View view = this.fadeView;
        if (view != null) {
            view.invalidate();
        }
        MainTabsLayout mainTabsLayout = this.tabsView;
        if (mainTabsLayout != null) {
            mainTabsLayout.invalidate();
        }
        GlassTabView[] glassTabViewArr = this.tabs;
        if (glassTabViewArr != null) {
            for (GlassTabView glassTabView : glassTabViewArr) {
                glassTabView.updateColorsLottie();
            }
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public EdgeToEdgeSupportMode getEdgeToEdgeSupportMode() {
        return EdgeToEdgeSupportMode.FULL;
    }
}
