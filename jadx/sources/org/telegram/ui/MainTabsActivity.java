package org.telegram.ui;

import android.animation.Animator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.ShapeDrawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.math.MathUtils;
import androidx.core.view.WindowInsetsCompat;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.utils.chats.ChatUtils;
import com.exteragram.messenger.utils.ui.UIUtil;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import me.vkryl.android.animator.BoolAnimator;
import me.vkryl.android.animator.FactorAnimator;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2484R;
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
import org.telegram.messenger.UserObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.ActionBar.ThemeDescription;
import org.telegram.ui.Components.AvatarDrawable;
import org.telegram.ui.Components.BackupImageView;
import org.telegram.ui.Components.Bulletin;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.ItemOptions;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.Premium.LimitReachedBottomSheet;
import org.telegram.ui.Components.ViewPagerFixed;
import org.telegram.ui.Components.blur3.BlurredBackgroundDrawableViewFactory;
import org.telegram.ui.Components.blur3.BlurredBackgroundWithFadeDrawable;
import org.telegram.ui.Components.blur3.RenderNodeWithHash;
import org.telegram.ui.Components.blur3.capture.IBlur3Hash;
import org.telegram.ui.Components.blur3.drawable.BlurredBackgroundDrawable;
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
    private DialogsActivity dialogsActivity;
    private boolean dropCallsFragmentAfterPageScroll;
    private View fadeView;
    private final RectF fragmentPosition;
    private BlurredBackgroundSourceColor iBlur3SourceColor;
    private BlurredBackgroundSourceRenderNode iBlur3SourceTabGlass;
    private int navigationBarHeight;
    public GlassTabView[] tabs;
    private MainTabsLayout tabsView;
    private BlurredBackgroundDrawable tabsViewBackground;
    private IUpdateLayout updateLayout;
    private UpdateLayoutWrapper updateLayoutWrapper;

    private int getPositionChats() {
        return 0;
    }

    private int getPositionContacts() {
        return 1;
    }

    @Override // me.vkryl.android.animator.FactorAnimator.Target
    public /* synthetic */ void onFactorChangeFinished(int i, float f, FactorAnimator factorAnimator) {
        FactorAnimator.Target.CC.$default$onFactorChangeFinished(this, i, f, factorAnimator);
    }

    public int getTabsCount() {
        return getUserConfig().showContactsTab ? 4 : 3;
    }

    private int getPositionCallsOrSettings() {
        return getUserConfig().showContactsTab ? 2 : 1;
    }

    private int getPositionProfile() {
        return getUserConfig().showContactsTab ? 3 : 2;
    }

    private int indexToPosition(int i) {
        if (i == 0) {
            return getPositionChats();
        }
        if (i == 1) {
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
                        BaseFragment baseFragment = ((ViewPagerActivity.FragmentState) MainTabsActivity.this.fragmentsArr.valueAt(i)).fragment;
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
                        BaseFragment baseFragment = ((ViewPagerActivity.FragmentState) MainTabsActivity.this.fragmentsArr.valueAt(i)).fragment;
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
    }

    @Override // org.telegram.ui.ViewPagerActivity
    protected FrameLayout createContentView(Context context) {
        return new FrameLayout(context) { // from class: org.telegram.ui.MainTabsActivity.2
            @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
                super.onLayout(z, i, i2, i3, i4);
                MainTabsActivity.this.checkUi_tabsPosition();
                MainTabsActivity.this.checkUi_fadeView();
            }

            @Override // android.view.ViewGroup, android.view.View
            protected void dispatchDraw(Canvas canvas) {
                super.dispatchDraw(canvas);
                MainTabsActivity.this.blur3_invalidateBlur();
            }
        };
    }

    @Override // org.telegram.ui.ViewPagerActivity, org.telegram.ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        blur3_updateColors();
        checkUi_tabsPosition();
        checkUi_fadeView();
        checkContactsTabBadge();
        checkUnreadCount(true);
        Bulletin.Delegate delegate = new Bulletin.Delegate() { // from class: org.telegram.ui.MainTabsActivity.3
            @Override // org.telegram.ui.Components.Bulletin.Delegate
            public /* synthetic */ boolean allowLayoutChanges() {
                return Bulletin.Delegate.CC.$default$allowLayoutChanges(this);
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
                return MainTabsActivity.this.navigationBarHeight + (MainTabsActivity.this.isBottomTabsEnabled() ? Math.round(AndroidUtilities.dp(64.0f) * MainTabsActivity.this.animatorTabsVisible.getFloatValue()) : 0);
            }

            @Override // org.telegram.ui.Components.Bulletin.Delegate
            public boolean bottomOffsetAnimated() {
                return !ExteraConfig.BottomNavigationBar.floating();
            }
        };
        Bulletin.addDelegate(this, delegate);
        Bulletin.addDelegate(this.contentView, delegate);
        showAccountChangeHint();
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
        Bulletin.removeDelegate(this);
        Bulletin.removeDelegate(this.contentView);
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
        MainTabsLayout mainTabsLayout = new MainTabsLayout(context);
        this.tabsView = mainTabsLayout;
        mainTabsLayout.setClipChildren(false);
        this.tabsView.setPadding(AndroidUtilities.dp(12.0f), AndroidUtilities.dp(12.0f), AndroidUtilities.dp(12.0f), AndroidUtilities.dp(12.0f));
        GlassTabView[] glassTabViewArr = new GlassTabView[5];
        this.tabs = glassTabViewArr;
        glassTabViewArr[0] = GlassTabView.createMainTab(context, this.resourceProvider, GlassTabView.TabAnimation.CHATS, C2484R.string.MainTabsChats);
        this.tabs[0].setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.MainTabsActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return this.f$0.lambda$createView$0(view);
            }
        });
        this.tabs[1] = GlassTabView.createMainTab(context, this.resourceProvider, GlassTabView.TabAnimation.CONTACTS, C2484R.string.MainTabsContacts);
        this.tabs[1].setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.MainTabsActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return this.f$0.lambda$createView$3(view);
            }
        });
        this.tabs[2] = GlassTabView.createMainTab(context, this.resourceProvider, GlassTabView.TabAnimation.SETTINGS, C2484R.string.Settings);
        this.tabs[3] = GlassTabView.createMainTab(context, this.resourceProvider, GlassTabView.TabAnimation.CALLS, C2484R.string.MainTabsCalls);
        this.tabs[4] = GlassTabView.createAvatar(context, this.resourceProvider, this.currentAccount, C2484R.string.MainTabsProfile);
        this.tabs[4].setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.MainTabsActivity$$ExternalSyntheticLambda2
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return this.f$0.lambda$createView$4(view);
            }
        });
        final int i = 0;
        while (true) {
            GlassTabView[] glassTabViewArr2 = this.tabs;
            if (i >= glassTabViewArr2.length) {
                break;
            }
            glassTabViewArr2[i].setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.MainTabsActivity$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$createView$5(i, view);
                }
            });
            this.tabsView.addView(this.tabs[i]);
            this.tabsView.setViewVisible(this.tabs[i], true, false);
            i++;
        }
        checkUi_contactsTabVisible(getUserConfig().showContactsTab, false);
        checkUi_callTabVisible(getUserConfig().showCallsTab, false);
        selectTab(this.viewPager.getCurrentPosition(), false);
        this.iBlur3SourceColor.setColor(getThemedColor(Theme.key_windowBackgroundWhite));
        ViewPositionWatcher viewPositionWatcher = new ViewPositionWatcher(this.contentView);
        BlurredBackgroundSource blurredBackgroundSource = this.iBlur3SourceTabGlass;
        if (blurredBackgroundSource == null) {
            blurredBackgroundSource = this.iBlur3SourceColor;
        }
        BlurredBackgroundDrawableViewFactory blurredBackgroundDrawableViewFactory = new BlurredBackgroundDrawableViewFactory(blurredBackgroundSource);
        blurredBackgroundDrawableViewFactory.setSourceRootView(viewPositionWatcher, this.contentView);
        blurredBackgroundDrawableViewFactory.setLiquidGlassEffectAllowed(LiteMode.isEnabled(262144));
        BlurredBackgroundDrawable blurredBackgroundDrawableCreate = blurredBackgroundDrawableViewFactory.create(this.tabsView, BlurredBackgroundProviderImpl.mainTabs(this.resourceProvider));
        this.tabsViewBackground = blurredBackgroundDrawableCreate;
        blurredBackgroundDrawableCreate.setRadius(AndroidUtilities.dp(28.0f));
        this.tabsViewBackground.setPadding(AndroidUtilities.dp(7.666f));
        this.tabsView.setBackground(this.tabsViewBackground);
        BlurredBackgroundDrawableViewFactory blurredBackgroundDrawableViewFactory2 = new BlurredBackgroundDrawableViewFactory(this.iBlur3SourceColor);
        blurredBackgroundDrawableViewFactory2.setSourceRootView(viewPositionWatcher, this.contentView);
        this.fadeView = new View(context);
        BlurredBackgroundWithFadeDrawable blurredBackgroundWithFadeDrawable = new BlurredBackgroundWithFadeDrawable(blurredBackgroundDrawableViewFactory2.create(this.fadeView, null));
        blurredBackgroundWithFadeDrawable.setFadeHeight(AndroidUtilities.dp(60.0f), true);
        this.fadeView.setBackground(blurredBackgroundWithFadeDrawable);
        this.contentView.addView(this.fadeView, LayoutHelper.createFrame(-1, 0, 80));
        this.contentView.addView(this.tabsView, LayoutHelper.createFrame(344, 72, 81));
        UpdateLayoutWrapper updateLayoutWrapper = new UpdateLayoutWrapper(context);
        this.updateLayoutWrapper = updateLayoutWrapper;
        this.contentView.addView(updateLayoutWrapper, LayoutHelper.createFrame(-1, -2, 80));
        IUpdateLayout iUpdateLayoutTakeUpdateLayout = ApplicationLoader.applicationLoaderInstance.takeUpdateLayout(getParentActivity(), this.updateLayoutWrapper);
        this.updateLayout = iUpdateLayoutTakeUpdateLayout;
        if (iUpdateLayoutTakeUpdateLayout != null) {
            iUpdateLayoutTakeUpdateLayout.updateAppUpdateViews(this.currentAccount, false);
        }
        checkUnreadCount(false);
        return this.contentView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$0(View view) {
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
    public /* synthetic */ boolean lambda$createView$3(final View view) {
        ShapeDrawable shapeDrawableCreateRoundRectDrawable = Theme.createRoundRectDrawable(AndroidUtilities.dp(28.0f), getThemedColor(Theme.key_windowBackgroundWhite));
        shapeDrawableCreateRoundRectDrawable.getPaint().setShadowLayer(AndroidUtilities.dp(6.0f), 0.0f, AndroidUtilities.dp(1.0f), Theme.multAlpha(-16777216, 0.15f));
        final ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions(this, view);
        view.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.MainTabsActivity$$ExternalSyntheticLambda10
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                return MainTabsActivity.m15160$r8$lambda$PvBB_i0SQTxZSocEYXf2GD7haI(itemOptionsMakeOptions, view, view2, motionEvent);
            }
        });
        itemOptionsMakeOptions.add(C2484R.drawable.msg_archive_hide, LocaleController.getString(C2484R.string.HideContactsTab), new Runnable() { // from class: org.telegram.ui.MainTabsActivity$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createView$2();
            }
        }).setGravity(1).translate(0.0f, -AndroidUtilities.dp(4.0f)).setScrimViewBackground(shapeDrawableCreateRoundRectDrawable).setDiscardScrolls(false).setDismissOnMoveOutside(true).show();
        return true;
    }

    /* JADX INFO: renamed from: $r8$lambda$PvBB-_i0SQTxZSocEYXf2GD7haI, reason: not valid java name */
    public static /* synthetic */ boolean m15160$r8$lambda$PvBB_i0SQTxZSocEYXf2GD7haI(ItemOptions itemOptions, View view, View view2, MotionEvent motionEvent) {
        if (!itemOptions.isShown()) {
            return false;
        }
        view.getParent().requestDisallowInterceptTouchEvent(true);
        itemOptions.dispatchCapturedTouchEvent(motionEvent);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$2() {
        getUserConfig().setShowContactsTab(null, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$4(View view) {
        openAccountSelector(view);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$5(int i, View view) {
        if (this.viewPager.isManualScrolling() || this.viewPager.isTouch()) {
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
    }

    public void openAccountSelector(View view) {
        openAccountSelectorInternal(view, null, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openAccountSelector(View view, View view2) {
        openAccountSelectorInternal(view, view2, true);
    }

    private boolean canAddAccount() {
        return UserConfig.getActivatedAccountsCount() < 16;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openAddAccountFlow() {
        int i = 0;
        Integer numValueOf = null;
        for (int i2 = 15; i2 >= 0; i2--) {
            if (!UserConfig.getInstance(i2).isClientActivated()) {
                i++;
                if (numValueOf == null) {
                    numValueOf = Integer.valueOf(i2);
                }
            }
        }
        if (!UserConfig.hasPremiumOnAccounts()) {
            i -= 8;
        }
        if (i > 0 && numValueOf != null) {
            presentFragment(new LoginActivity(numValueOf.intValue()));
        } else {
            if (UserConfig.hasPremiumOnAccounts()) {
                return;
            }
            showDialog(new LimitReachedBottomSheet(this, getContext(), 7, this.currentAccount, null));
        }
    }

    private void addAddAccountItem(ItemOptions itemOptions) {
        itemOptions.add(C2484R.drawable.msg_addbot, LocaleController.getString(C2484R.string.AddAccount), new Runnable() { // from class: org.telegram.ui.MainTabsActivity$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.openAddAccountFlow();
            }
        });
    }

    private void openAccountSelectorInternal(View view, View view2, boolean z) {
        ShapeDrawable shapeDrawableCreateRoundRectDrawable;
        ArrayList arrayList = new ArrayList();
        arrayList.clear();
        for (int i = 0; i < 16; i++) {
            if (UserConfig.getInstance(i).isClientActivated()) {
                arrayList.add(Integer.valueOf(i));
            }
        }
        Collections.sort(arrayList, new Comparator() { // from class: org.telegram.ui.MainTabsActivity$$ExternalSyntheticLambda7
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return MainTabsActivity.$r8$lambda$RJsv77aj9ZKvX2xhWe9xn9JGl2w((Integer) obj, (Integer) obj2);
            }
        });
        if (z) {
            Collections.reverse(arrayList);
        }
        final ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions(this, view);
        if (!z && canAddAccount()) {
            addAddAccountItem(itemOptionsMakeOptions);
        }
        if (arrayList.size() > 0) {
            if (view2 != null) {
                view = view2;
            }
            view.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.MainTabsActivity$$ExternalSyntheticLambda8
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view3, MotionEvent motionEvent) {
                    return MainTabsActivity.m15164$r8$lambda$zqcDYBv05qt4XzODvfzemh_25A(itemOptionsMakeOptions, view3, motionEvent);
                }
            });
            if (itemOptionsMakeOptions.getItemsCount() > 0) {
                itemOptionsMakeOptions.addGap();
            }
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                final int iIntValue = ((Integer) arrayList.get(i2)).intValue();
                View viewAccountView = accountView(iIntValue, this.currentAccount == iIntValue, z && i2 == 0, !z && i2 == size + (-1));
                viewAccountView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.MainTabsActivity$$ExternalSyntheticLambda9
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view3) {
                        this.f$0.lambda$openAccountSelectorInternal$8(iIntValue, itemOptionsMakeOptions, view3);
                    }
                });
                itemOptionsMakeOptions.addView(viewAccountView, LayoutHelper.createLinear(230, 48));
                i2++;
            }
        }
        if (z && canAddAccount()) {
            if (itemOptionsMakeOptions.getItemsCount() > 0) {
                itemOptionsMakeOptions.addGap();
            }
            addAddAccountItem(itemOptionsMakeOptions);
        }
        itemOptionsMakeOptions.setBlur(true);
        itemOptionsMakeOptions.translate(0.0f, -AndroidUtilities.dp(4.0f));
        if (z) {
            shapeDrawableCreateRoundRectDrawable = Theme.createCircleDrawable(AndroidUtilities.dp(40.0f), getThemedColor(Theme.key_windowBackgroundWhite));
        } else {
            shapeDrawableCreateRoundRectDrawable = Theme.createRoundRectDrawable(AndroidUtilities.dp(28.0f), getThemedColor(Theme.key_windowBackgroundWhite));
        }
        shapeDrawableCreateRoundRectDrawable.getPaint().setShadowLayer(AndroidUtilities.dp(6.0f), 0.0f, AndroidUtilities.dp(1.0f), Theme.multAlpha(-16777216, 0.15f));
        itemOptionsMakeOptions.setScrimViewBackground(shapeDrawableCreateRoundRectDrawable);
        itemOptionsMakeOptions.setDiscardScrolls(false);
        itemOptionsMakeOptions.setDismissOnMoveOutside(true);
        itemOptionsMakeOptions.show();
        MessagesController.getGlobalMainSettings().edit().putInt("accountswitchhint", 3).apply();
    }

    public static /* synthetic */ int $r8$lambda$RJsv77aj9ZKvX2xhWe9xn9JGl2w(Integer num, Integer num2) {
        long j = UserConfig.getInstance(num.intValue()).loginTime;
        long j2 = UserConfig.getInstance(num2.intValue()).loginTime;
        if (j > j2) {
            return 1;
        }
        return j < j2 ? -1 : 0;
    }

    /* JADX INFO: renamed from: $r8$lambda$zqcDYBv05qt4XzODvfzemh-_25A, reason: not valid java name */
    public static /* synthetic */ boolean m15164$r8$lambda$zqcDYBv05qt4XzODvfzemh_25A(ItemOptions itemOptions, View view, MotionEvent motionEvent) {
        if (!itemOptions.isShown()) {
            return false;
        }
        view.getParent().requestDisallowInterceptTouchEvent(true);
        itemOptions.dispatchCapturedTouchEvent(motionEvent);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openAccountSelectorInternal$8(int i, ItemOptions itemOptions, View view) {
        if (this.currentAccount == i) {
            return;
        }
        itemOptions.dismiss();
        LaunchActivity launchActivity = LaunchActivity.instance;
        if (launchActivity != null) {
            launchActivity.switchToAccount(i, true);
        }
    }

    private boolean showFiltersMenu(final View view, ArrayList arrayList, boolean z) {
        final ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions(this, view);
        view.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.MainTabsActivity$$ExternalSyntheticLambda12
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                return MainTabsActivity.m15159$r8$lambda$Ed6YdXWynN9CBuScrBb8wTiR_o(itemOptionsMakeOptions, view, view2, motionEvent);
            }
        });
        if (arrayList != null && !arrayList.isEmpty()) {
            for (final int i = 0; i < arrayList.size(); i++) {
                MessagesController.DialogFilter dialogFilter = (MessagesController.DialogFilter) arrayList.get(i);
                if (!dialogFilter.isDefault() || !ExteraConfig.hideAllChats) {
                    CharSequence charSequenceReplaceEmoji = Emoji.replaceEmoji(dialogFilter.isDefault() ? LocaleController.getString(C2484R.string.FilterAllChats) : dialogFilter.name, Theme.chat_msgTextPaint.getFontMetricsInt(), false);
                    ArrayList<TLRPC.MessageEntity> arrayList2 = dialogFilter.entities;
                    if (arrayList2 != null && !arrayList2.isEmpty()) {
                        charSequenceReplaceEmoji = MessageObject.replaceAnimatedEmoji(charSequenceReplaceEmoji, dialogFilter.entities, Theme.chat_msgTextPaint.getFontMetricsInt());
                    }
                    ActionBarMenuSubItem actionBarMenuSubItemAdd = itemOptionsMakeOptions.add();
                    actionBarMenuSubItemAdd.setTextAndIcon(charSequenceReplaceEmoji, getIcon(dialogFilter));
                    NotificationCenter.listenEmojiLoading(actionBarMenuSubItemAdd.textView);
                    actionBarMenuSubItemAdd.imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
                    actionBarMenuSubItemAdd.imageView.setLayoutParams(LayoutHelper.createFrame(24, 24.0f, (LocaleController.isRTL ? 5 : 3) | 16, 0.0f, 0.0f, 0.0f, 0.0f));
                    actionBarMenuSubItemAdd.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.MainTabsActivity$$ExternalSyntheticLambda13
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            this.f$0.lambda$showFiltersMenu$10(itemOptionsMakeOptions, i, view2);
                        }
                    });
                }
            }
            itemOptionsMakeOptions.addGapIf(z);
        }
        itemOptionsMakeOptions.addIf(z, C2484R.drawable.msg_archive, LocaleController.getString(C2484R.string.ArchivedChats), new Runnable() { // from class: org.telegram.ui.MainTabsActivity$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$showFiltersMenu$11(itemOptionsMakeOptions);
            }
        });
        ShapeDrawable shapeDrawableCreateRoundRectDrawable = Theme.createRoundRectDrawable(AndroidUtilities.dp(28.0f), getThemedColor(Theme.key_windowBackgroundWhite));
        shapeDrawableCreateRoundRectDrawable.getPaint().setShadowLayer(AndroidUtilities.dp(6.0f), 0.0f, AndroidUtilities.dp(1.0f), Theme.multAlpha(-16777216, 0.15f));
        itemOptionsMakeOptions.setGravity(3).translate(0.0f, -AndroidUtilities.dp(4.0f)).setScrimViewBackground(shapeDrawableCreateRoundRectDrawable).setDiscardScrolls(false).setDismissOnMoveOutside(true).show();
        return true;
    }

    /* JADX INFO: renamed from: $r8$lambda$Ed6YdXW-ynN9CBuScrBb8wTiR_o, reason: not valid java name */
    public static /* synthetic */ boolean m15159$r8$lambda$Ed6YdXWynN9CBuScrBb8wTiR_o(ItemOptions itemOptions, View view, View view2, MotionEvent motionEvent) {
        if (!itemOptions.isShown()) {
            return false;
        }
        view.getParent().requestDisallowInterceptTouchEvent(true);
        itemOptions.dispatchCapturedTouchEvent(motionEvent);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showFiltersMenu$10(ItemOptions itemOptions, int i, View view) {
        itemOptions.dismiss();
        this.dialogsActivity.switchToFilter(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showFiltersMenu$11(ItemOptions itemOptions) {
        itemOptions.dismiss();
        Bundle bundle = new Bundle();
        bundle.putInt("folderId", 1);
        presentFragment(new DialogsActivity(bundle));
    }

    private static int getIcon(MessagesController.DialogFilter dialogFilter) {
        int i = dialogFilter.flags;
        if ((MessagesController.DIALOG_FILTER_FLAG_ALL_CHATS & i) == (MessagesController.DIALOG_FILTER_FLAG_CONTACTS | MessagesController.DIALOG_FILTER_FLAG_NON_CONTACTS)) {
            return C2484R.drawable.msg_openprofile;
        }
        if ((MessagesController.DIALOG_FILTER_FLAG_EXCLUDE_READ & i) != 0) {
            int i2 = MessagesController.DIALOG_FILTER_FLAG_ALL_CHATS;
            if ((i & i2) == i2) {
                return C2484R.drawable.msg_markunread;
            }
        }
        if ((MessagesController.DIALOG_FILTER_FLAG_ALL_CHATS & i) == MessagesController.DIALOG_FILTER_FLAG_CHANNELS) {
            return C2484R.drawable.msg_channel;
        }
        if ((MessagesController.DIALOG_FILTER_FLAG_ALL_CHATS & i) == MessagesController.DIALOG_FILTER_FLAG_GROUPS) {
            return C2484R.drawable.msg_groups;
        }
        if ((MessagesController.DIALOG_FILTER_FLAG_ALL_CHATS & i) == MessagesController.DIALOG_FILTER_FLAG_CONTACTS) {
            return C2484R.drawable.msg_contacts;
        }
        if ((i & MessagesController.DIALOG_FILTER_FLAG_ALL_CHATS) == MessagesController.DIALOG_FILTER_FLAG_BOTS) {
            return C2484R.drawable.msg_bots;
        }
        return C2484R.drawable.msg_folders;
    }

    public LinearLayout accountView(int i, final boolean z, boolean z2, boolean z3) {
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(0);
        linearLayout.setBackground(Theme.createRadSelectorDrawable(getThemedColor(Theme.key_listSelector), 0, 0));
        UIUtil.applyScaleStateListAnimator(linearLayout, 12.0f, z2, z3, 3, 0.04f, 1.5f);
        TLRPC.User currentUser = UserConfig.getInstance(i).getCurrentUser();
        AvatarDrawable avatarDrawable = new AvatarDrawable();
        avatarDrawable.setInfo(currentUser);
        FrameLayout frameLayout = new FrameLayout(getContext()) { // from class: org.telegram.ui.MainTabsActivity.4
            private final Paint selectedPaint = new Paint(1);

            @Override // android.view.ViewGroup, android.view.View
            protected void dispatchDraw(Canvas canvas) {
                Canvas canvas2;
                if (z) {
                    this.selectedPaint.setStyle(Paint.Style.STROKE);
                    this.selectedPaint.setStrokeWidth(AndroidUtilities.dp(1.33f));
                    this.selectedPaint.setColor(MainTabsActivity.this.getThemedColor(Theme.key_featuredStickers_addButton));
                    float avatarCorners = ExteraConfig.getAvatarCorners(34.0f);
                    canvas2 = canvas;
                    canvas2.drawRoundRect(AndroidUtilities.dp(1.0f), AndroidUtilities.dp(1.0f), getWidth() - AndroidUtilities.dp(1.0f), getHeight() - AndroidUtilities.dp(1.0f), avatarCorners, avatarCorners, this.selectedPaint);
                } else {
                    canvas2 = canvas;
                }
                super.dispatchDraw(canvas2);
            }
        };
        linearLayout.addView(frameLayout, LayoutHelper.createLinear(34, 34, 16, 12, 0, 0, 0));
        BackupImageView backupImageView = new BackupImageView(getContext());
        if (z) {
            backupImageView.setScaleX(0.833f);
            backupImageView.setScaleY(0.833f);
        }
        backupImageView.setRoundRadius(ExteraConfig.getAvatarCorners(32.0f));
        backupImageView.getImageReceiver().setCurrentAccount(i);
        backupImageView.setForUserOrChat(currentUser, avatarDrawable);
        frameLayout.addView(backupImageView, LayoutHelper.createLinear(32, 32, 17, 1, 1, 1, 1));
        TextView textView = new TextView(getContext());
        NotificationCenter.listenEmojiLoading(textView);
        textView.setTextSize(1, 16.0f);
        textView.setTextColor(getThemedColor(Theme.key_dialogTextBlack));
        textView.setText(Emoji.replaceEmoji(UserObject.getUserName(currentUser), textView.getPaint().getFontMetricsInt(), false));
        textView.setMaxLines(2);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        linearLayout.addView(textView, LayoutHelper.createLinear(0, -2, 1.0f, 16, 13, 0, 14, 0));
        return linearLayout;
    }

    @Override // org.telegram.ui.ViewPagerActivity
    protected void onViewPagerScrollEnd() {
        if (this.tabsView != null) {
            selectTab(this.viewPager.getCurrentPosition(), true);
            setGestureSelectedOverride(0.0f, false);
        }
        blur3_invalidateBlur();
        ViewPagerFixed viewPagerFixed = this.viewPager;
        if (viewPagerFixed != null) {
            int currentPosition = viewPagerFixed.getCurrentPosition();
            if (currentPosition != getPositionCallsOrSettings() && this.dropCallsFragmentAfterPageScroll) {
                dropFragmentAtPosition(getPositionCallsOrSettings());
                this.dropCallsFragmentAfterPageScroll = false;
            }
            if (currentPosition != getPositionProfile()) {
                dropFragmentAtPosition(getPositionProfile());
            }
        }
    }

    @Override // org.telegram.ui.ViewPagerActivity
    protected void onViewPagerTabAnimationUpdate(boolean z) {
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
    }

    @Override // org.telegram.ui.ViewPagerActivity
    protected int getFragmentsCount() {
        return getTabsCount();
    }

    @Override // org.telegram.ui.ViewPagerActivity
    protected int getStartPosition() {
        return getPositionChats();
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

    private BaseFragment prepareTabFragment(BaseFragment baseFragment) {
        baseFragment.setCurrentAccount(this.currentAccount);
        baseFragment.setInPreviewMode(isInPreviewMode());
        return baseFragment;
    }

    private DialogsActivity createDialogsActivity(Bundle bundle) {
        DialogsActivity dialogsActivity = (DialogsActivity) prepareTabFragment(new DialogsActivity(createDialogsArguments(bundle)));
        dialogsActivity.setMainTabsActivityController(new MainTabsActivityControllerImpl());
        return dialogsActivity;
    }

    public DialogsActivity prepareDialogsActivity(Bundle bundle) {
        this.dialogsActivity = createDialogsActivity(bundle);
        putFragmentAtPosition(getPositionChats(), this.dialogsActivity);
        return this.dialogsActivity;
    }

    @Override // org.telegram.ui.ViewPagerActivity
    protected BaseFragment createBaseFragmentAt(int i) {
        if (i == getPositionContacts() && getUserConfig().showContactsTab) {
            Bundle bundle = new Bundle();
            bundle.putBoolean("needPhonebook", true);
            bundle.putBoolean("needFinishFragment", false);
            bundle.putBoolean("hasMainTabs", isBottomTabsEnabled());
            ContactsActivity contactsActivity = (ContactsActivity) prepareTabFragment(new ContactsActivity(bundle));
            contactsActivity.setMainTabsActivityController(new MainTabsActivityControllerImpl());
            return contactsActivity;
        }
        if (i == getPositionCallsOrSettings()) {
            if (getUserConfig().showCallsTab) {
                Bundle bundle2 = new Bundle();
                bundle2.putBoolean("needFinishFragment", false);
                bundle2.putBoolean("hasMainTabs", isBottomTabsEnabled());
                CallLogActivity callLogActivity = (CallLogActivity) prepareTabFragment(new CallLogActivity(bundle2));
                callLogActivity.setMainTabsActivityController(new MainTabsActivityControllerImpl());
                return callLogActivity;
            }
            Bundle bundle3 = new Bundle();
            bundle3.putBoolean("hasMainTabs", isBottomTabsEnabled());
            SettingsActivity settingsActivity = (SettingsActivity) prepareTabFragment(new SettingsActivity(bundle3));
            settingsActivity.setMainTabsActivityController(new MainTabsActivityControllerImpl());
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
        Bundle bundle4 = new Bundle();
        bundle4.putLong("user_id", UserConfig.getInstance(this.currentAccount).getClientUserId());
        bundle4.putBoolean("my_profile", true);
        bundle4.putBoolean("hasMainTabs", isBottomTabsEnabled());
        ProfileActivity profileActivity = (ProfileActivity) prepareTabFragment(new ProfileActivity(bundle4));
        profileActivity.setMainTabsActivityController(new MainTabsActivityControllerImpl());
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
            ViewPagerActivity.FragmentState fragmentState = (ViewPagerActivity.FragmentState) this.fragmentsArr.valueAt(i);
            if (fragmentState != null) {
                fragmentState.fragment.setInPreviewMode(z);
            }
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onPreviewOpenAnimationEnd() {
        BaseFragment currentVisibleFragment = getCurrentVisibleFragment();
        if (currentVisibleFragment != null) {
            currentVisibleFragment.onPreviewOpenAnimationEnd();
        }
    }

    public interface TabFragmentDelegate {
        boolean canParentTabsSlide(MotionEvent motionEvent, boolean z);

        BlurredBackgroundSourceRenderNode getGlassSource();

        void onParentScrollToTop();

        /* JADX INFO: renamed from: org.telegram.ui.MainTabsActivity$TabFragmentDelegate$-CC, reason: invalid class name */
        /* JADX INFO: loaded from: classes6.dex */
        public abstract /* synthetic */ class CC {
            public static boolean $default$canParentTabsSlide(TabFragmentDelegate tabFragmentDelegate, MotionEvent motionEvent, boolean z) {
                return false;
            }
        }
    }

    @Override // org.telegram.ui.ViewPagerActivity
    protected boolean canScrollForward(MotionEvent motionEvent) {
        return canScrollInternal(motionEvent, true);
    }

    @Override // org.telegram.ui.ViewPagerActivity
    protected boolean canScrollBackward(MotionEvent motionEvent) {
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
        return ExteraConfig.BottomNavigationBar.visible();
    }

    @Override // org.telegram.ui.ViewPagerActivity
    protected WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        this.navigationBarHeight = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.systemBars()).bottom;
        boolean zIsUpdateLayoutVisible = this.updateLayoutWrapper.isUpdateLayoutVisible();
        int iDp = zIsUpdateLayoutVisible ? AndroidUtilities.dp(44.0f) : 0;
        this.updateLayoutWrapper.setPadding(0, 0, 0, this.navigationBarHeight);
        int iDp2 = this.navigationBarHeight + iDp + (isBottomTabsEnabled() ? AndroidUtilities.dp(72.0f) : 0);
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.fadeView.getLayoutParams();
        if (marginLayoutParams.height != iDp2) {
            marginLayoutParams.height = iDp2;
            this.fadeView.setLayoutParams(marginLayoutParams);
        }
        int i = zIsUpdateLayoutVisible ? this.navigationBarHeight + iDp : 0;
        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) this.viewPager.getLayoutParams();
        if (marginLayoutParams2.bottomMargin != i) {
            marginLayoutParams2.bottomMargin = i;
            this.viewPager.setLayoutParams(marginLayoutParams2);
        }
        if (zIsUpdateLayoutVisible) {
            windowInsetsCompat = windowInsetsCompat.inset(0, 0, 0, this.navigationBarHeight);
        }
        checkUi_tabsPosition();
        checkUi_fadeView();
        return super.onApplyWindowInsets(view, windowInsetsCompat);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        GlassTabView glassTabView;
        IUpdateLayout iUpdateLayout;
        IUpdateLayout iUpdateLayout2;
        if (i == NotificationCenter.notificationsCountUpdated || i == NotificationCenter.updateInterfaces) {
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
            if (iUpdateLayout5 != null) {
                iUpdateLayout5.updateAppUpdateViews(this.currentAccount, LaunchActivity.getMainFragmentsStackSize() == 1);
                return;
            }
            return;
        }
        if (i == NotificationCenter.needSetDayNightTheme) {
            clearAllHiddenFragments();
            return;
        }
        if (i == NotificationCenter.callTabsVisibleToggled) {
            checkUi_callTabVisible(getUserConfig().showCallsTab, true);
            ViewPagerFixed viewPagerFixed = this.viewPager;
            if (viewPagerFixed != null && viewPagerFixed.getCurrentPosition() == getPositionCallsOrSettings()) {
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
            checkUi_contactsTabVisible(z, true);
            ViewPagerFixed viewPagerFixed2 = this.viewPager;
            if (viewPagerFixed2 != null) {
                int currentPosition = viewPagerFixed2.getCurrentPosition();
                if (z) {
                    if (currentPosition >= 1) {
                        currentPosition++;
                    }
                } else if (currentPosition == 1) {
                    currentPosition = 0;
                } else if (currentPosition > 1) {
                    currentPosition--;
                }
                clearAllHiddenFragments();
                for (int i3 = 0; i3 < getTabsCount() + 1; i3++) {
                    dropFragmentAtPosition(i3);
                }
                ViewPagerFixed viewPagerFixed3 = this.viewPager;
                viewPagerFixed3.currentPosition = currentPosition;
                viewPagerFixed3.rebuild(false);
                selectTab(currentPosition, false);
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
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.fileLoaded);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.fileLoadProgressChanged);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.fileLoadFailed);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.notificationsCountUpdated);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.updateInterfaces);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.callTabsVisibleToggled);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.contactsTabVisibleToggled);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.mainUserInfoChanged);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.contactsPermissionBadgeCheck);
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.appUpdateAvailable);
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.appUpdateLoading);
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.needSetDayNightTheme);
        return super.onFragmentCreate();
    }

    @Override // org.telegram.ui.ViewPagerActivity, org.telegram.ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.fileLoaded);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.fileLoadProgressChanged);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.fileLoadFailed);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.notificationsCountUpdated);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.updateInterfaces);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.callTabsVisibleToggled);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.contactsTabVisibleToggled);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.mainUserInfoChanged);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.contactsPermissionBadgeCheck);
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.appUpdateAvailable);
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.appUpdateLoading);
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.needSetDayNightTheme);
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
        this.fadeView.setAlpha(navigationBarThirdButtonsFactor);
        this.fadeView.setTranslationY(fClamp * AndroidUtilities.dp(48.0f));
        this.fadeView.setVisibility(navigationBarThirdButtonsFactor > 0.0f ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkUi_tabsPosition() {
        if (!isBottomTabsEnabled()) {
            this.tabsView.setClickable(false);
            this.tabsView.setEnabled(false);
            this.tabsView.setAlpha(0.0f);
            this.tabsView.setVisibility(8);
            return;
        }
        int iDp = AndroidUtilities.dp(40.0f) + (-(this.navigationBarHeight + (this.updateLayoutWrapper.isUpdateLayoutVisible() ? AndroidUtilities.dp(44.0f) : 0)));
        float floatValue = this.animatorTabsVisible.getFloatValue();
        float fLerp = AndroidUtilities.lerp(0.85f, 1.0f, floatValue);
        this.tabsView.setTranslationY(AndroidUtilities.lerp(iDp, r0, floatValue));
        this.tabsView.setScaleX(fLerp);
        this.tabsView.setScaleY(fLerp);
        this.tabsView.setClickable(floatValue > 1.0f);
        this.tabsView.setEnabled(floatValue > 1.0f);
        this.tabsView.setAlpha(floatValue);
        this.tabsView.setVisibility(floatValue > 0.0f ? 0 : 8);
    }

    private void checkUi_contactsTabVisible(boolean z, boolean z2) {
        MainTabsLayout mainTabsLayout = this.tabsView;
        if (mainTabsLayout != null) {
            mainTabsLayout.setViewVisible(this.tabs[1], z, z2);
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
    public ArrayList getThemeDescriptions() {
        ArrayList themeDescriptions = super.getThemeDescriptions();
        ThemeDescription.ThemeDescriptionDelegate themeDescriptionDelegate = new ThemeDescription.ThemeDescriptionDelegate() { // from class: org.telegram.ui.MainTabsActivity$$ExternalSyntheticLambda5
            @Override // org.telegram.ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                this.f$0.blur3_updateColors();
            }

            @Override // org.telegram.ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        };
        View view = this.fragmentView;
        int i = ThemeDescription.FLAG_BACKGROUND;
        int i2 = Theme.key_windowBackgroundWhite;
        themeDescriptions.add(new ThemeDescription(view, i, null, null, null, null, i2));
        themeDescriptions.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, i2));
        themeDescriptions.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_dialogBackground));
        return themeDescriptions;
    }

    private class MainTabsActivityControllerImpl implements MainTabsActivityController {
        private MainTabsActivityControllerImpl() {
        }

        @Override // org.telegram.ui.MainTabsActivityController
        public void setTabsVisible(boolean z) {
            if (MainTabsActivity.this.tabsView == null) {
                MainTabsActivity.this.animatorTabsVisible.changeValueSilently(z);
                MainTabsActivity.this.animatorTabsVisible.changeValueSilently(z ? 1.0f : 0.0f);
            } else {
                MainTabsActivity.this.animatorTabsVisible.setValue(z, true);
            }
        }

        @Override // org.telegram.ui.MainTabsActivityController
        public boolean openAccountSelector(View view, View view2) {
            if (view == null) {
                return false;
            }
            MainTabsActivity.this.openAccountSelector(view, view2);
            return true;
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
        if (this.accountSwitchHint == null && MessagesController.getGlobalMainSettings().getInt("accountswitchhint", 0) < 2) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.MainTabsActivity$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$showAccountChangeHint$13();
                }
            }, 1500L);
            MessagesController.getGlobalMainSettings().edit().putInt("accountswitchhint", MessagesController.getGlobalMainSettings().getInt("channelgifthint", 0) + 1).apply();
        }
        this.accountSwitchHintShown = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showAccountChangeHint$13() {
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
        this.accountSwitchHint.setText(LocaleController.getString(C2484R.string.SwitchAccountHint));
        this.accountSwitchHint.setJoint(1.0f, (-width) + 7.33f);
        this.contentView.addView(this.accountSwitchHint, LayoutHelper.createFrame(-1, 100.0f, 87, 0.0f, 0.0f, 0.0f, 72.0f));
        this.accountSwitchHint.setOnHiddenListener(new Runnable() { // from class: org.telegram.ui.MainTabsActivity$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$showAccountChangeHint$12();
            }
        });
        this.accountSwitchHint.setDuration(8000L);
        this.accountSwitchHint.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showAccountChangeHint$12() {
        AndroidUtilities.removeFromParent(this.accountSwitchHint);
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
    public void blur3_updateColors() {
        this.iBlur3SourceColor.setColor(getThemedColor(Theme.key_windowBackgroundWhite));
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
}
