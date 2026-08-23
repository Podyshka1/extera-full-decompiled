package com.exteragram.messenger.drawer;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.RoundedCorner;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.core.math.MathUtils;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.FloatPropertyCompat;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.api.dto.BadgeDTO;
import com.exteragram.messenger.badges.BadgesController;
import com.exteragram.messenger.components.SupporterBottomSheet;
import com.exteragram.messenger.drawer.DrawerAccountPickerView;
import com.exteragram.messenger.utils.AppUtils;
import com.exteragram.messenger.utils.text.LocaleUtils;
import java.util.function.Consumer;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.DrawerLayoutContainer;
import org.telegram.p029ui.ActionBar.INavigationLayout;
import org.telegram.p029ui.ActionBar.SimpleTextView;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.AnimatedEmojiDrawable;
import org.telegram.p029ui.Components.BulletinFactory;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.RLottieImageView;
import org.telegram.p029ui.DialogsActivity;
import org.telegram.p029ui.LaunchActivity;
import org.telegram.p029ui.MainTabsActivity;
import org.telegram.p029ui.ProxyListActivity;
import org.telegram.p029ui.SelectAnimatedEmojiDialog;
import org.telegram.p029ui.SettingsActivity;
import org.telegram.p029ui.ThemeActivity;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.p028tl.TL_stars;
import p022j$.util.function.Consumer$CC;

/* JADX INFO: loaded from: classes.dex */
public class DrawerContainer extends FrameLayout implements NotificationCenter.NotificationCenterDelegate {
    private static final int COLOR_KEY_DRAWER_BACKGROUND = Theme.key_windowBackgroundWhite;
    private static final int COLOR_KEY_POPUP_ACCENT = Theme.key_windowBackgroundWhiteBlueIcon;
    private static final FloatPropertyCompat DRAWER_OFFSET = new FloatPropertyCompat("drawerOffset") { // from class: com.exteragram.messenger.drawer.DrawerContainer.1
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public float getValue(DrawerContainer drawerContainer) {
            return drawerContainer.getDrawerOffset();
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public void setValue(DrawerContainer drawerContainer, float f) {
            drawerContainer.setDrawerOffset(f);
        }
    };
    private final DrawerAccountPickerView accountPickerView;
    private float cachedBottomRightRadius;
    private float cachedTopRightRadius;
    private final Path clipPath;
    private final FrameLayout drawerPanel;
    private int drawerWidth;
    private final DrawerHeaderView headerView;
    private boolean isAnimating;
    private boolean isOpen;
    private final DrawerMenuView menuView;
    private View navigationTranslationTarget;
    private boolean notificationsRegistered;
    private boolean predictiveBackInProgress;
    private float predictiveBackStartProgress;
    private float progress;
    private final float[] radii;
    private final Rect rect;
    private final Paint scrimPaint;
    private SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow selectAnimatedEmojiDialog;
    private SpringAnimation springAnimation;
    private ValueAnimator standardAnimator;
    private float startProgress;
    private float startX;
    private float startY;
    private boolean startedEdgeSwipe;
    private boolean tapClosePending;
    private boolean tracking;
    private VelocityTracker velocityTracker;

    public DrawerContainer(Context context) {
        super(context);
        this.scrimPaint = new Paint();
        this.rect = new Rect();
        this.clipPath = new Path();
        this.radii = new float[8];
        this.cachedTopRightRadius = -1.0f;
        this.cachedBottomRightRadius = -1.0f;
        setVisibility(8);
        setTag("drawer_container");
        this.drawerWidth = calculateDrawerWidth();
        FrameLayout frameLayout = new FrameLayout(context);
        this.drawerPanel = frameLayout;
        frameLayout.setBackgroundColor(Theme.getColor(COLOR_KEY_DRAWER_BACKGROUND));
        frameLayout.setTranslationX(-this.drawerWidth);
        addView(frameLayout, LayoutHelper.createFrame(-1, -1, 3));
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) frameLayout.getLayoutParams();
        layoutParams.width = this.drawerWidth;
        frameLayout.setLayoutParams(layoutParams);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        frameLayout.addView(linearLayout, LayoutHelper.createFrame(-1, -1.0f));
        DrawerHeaderView drawerHeaderView = new DrawerHeaderView(context);
        this.headerView = drawerHeaderView;
        linearLayout.addView(drawerHeaderView, new LinearLayout.LayoutParams(-1, AndroidUtilities.m1124dp(160.0f)));
        DrawerAccountPickerView drawerAccountPickerView = new DrawerAccountPickerView(context);
        this.accountPickerView = drawerAccountPickerView;
        linearLayout.addView(drawerAccountPickerView, new LinearLayout.LayoutParams(-1, -2));
        DrawerMenuView drawerMenuView = new DrawerMenuView(context);
        this.menuView = drawerMenuView;
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, 0);
        layoutParams2.weight = 1.0f;
        linearLayout.addView(drawerMenuView, layoutParams2);
        setupCallbacks();
        drawerHeaderView.setChevronExpanded(drawerAccountPickerView.isExpanded());
    }

    private void setupCallbacks() {
        this.headerView.setOnChevronClick(new Runnable() { // from class: com.exteragram.messenger.drawer.DrawerContainer$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setupCallbacks$0();
            }
        });
        this.headerView.setOnThemeToggle(new Runnable() { // from class: com.exteragram.messenger.drawer.DrawerContainer$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setupCallbacks$2();
            }
        });
        this.headerView.setOnThemeToggleLongClick(new Runnable() { // from class: com.exteragram.messenger.drawer.DrawerContainer$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setupCallbacks$4();
            }
        });
        this.headerView.setOnNavigateToProfile(new Runnable() { // from class: com.exteragram.messenger.drawer.DrawerContainer$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setupCallbacks$6();
            }
        });
        this.headerView.setOnStatusClick(new Runnable() { // from class: com.exteragram.messenger.drawer.DrawerContainer$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.showStatusSelect();
            }
        });
        this.headerView.setOnBadgeClick(new Runnable() { // from class: com.exteragram.messenger.drawer.DrawerContainer$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.showBadgeSelect();
            }
        });
        this.headerView.setOnProxyClick(new Runnable() { // from class: com.exteragram.messenger.drawer.DrawerContainer$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setupCallbacks$8();
            }
        });
        this.accountPickerView.setOnAccountSelected(new Runnable() { // from class: com.exteragram.messenger.drawer.DrawerContainer$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setupCallbacks$9();
            }
        });
        this.accountPickerView.setOnAccountLongClick(new DrawerAccountPickerView.OnAccountLongClick() { // from class: com.exteragram.messenger.drawer.DrawerContainer$$ExternalSyntheticLambda8
            @Override // com.exteragram.messenger.drawer.DrawerAccountPickerView.OnAccountLongClick
            public final void onLongClick(int i, View view) {
                this.f$0.lambda$setupCallbacks$10(i, view);
            }
        });
        this.menuView.setOnItemClick(new Runnable() { // from class: com.exteragram.messenger.drawer.DrawerContainer$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setupCallbacks$11();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setupCallbacks$0() {
        this.accountPickerView.toggleExpand();
        this.headerView.setChevronExpanded(this.accountPickerView.isExpanded());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:36:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$setupCallbacks$2() {
        boolean zEquals;
        Theme.ThemeInfo theme;
        if (DialogsActivity.switchingTheme) {
            return;
        }
        int[] themeTogglePosition = this.headerView.getThemeTogglePosition();
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
            if (theme == null) {
                DialogsActivity.switchingTheme = true;
                this.headerView.animateThemeToggle(zEquals);
                NotificationCenter globalInstance = NotificationCenter.getGlobalInstance();
                int i = NotificationCenter.needSetDayNightTheme;
                Boolean boolValueOf = Boolean.valueOf(zEquals);
                RLottieImageView themeToggleView = this.headerView.getThemeToggleView();
                Boolean bool = Boolean.FALSE;
                globalInstance.lambda$postNotificationNameOnUIThread$1(i, theme, bool, themeTogglePosition, -1, boolValueOf, themeToggleView, null, null, bool, null);
                final BaseFragment lastFragment = getLastFragment();
                if (lastFragment != null) {
                    Theme.turnOffAutoNight(BulletinFactory.m1246of(lastFragment), new Runnable() { // from class: com.exteragram.messenger.drawer.DrawerContainer$$ExternalSyntheticLambda14
                        @Override // java.lang.Runnable
                        public final void run() {
                            lastFragment.presentFragment(new ThemeActivity(1));
                        }
                    });
                    return;
                }
                return;
            }
            return;
        }
        str2 = string2;
        str = string;
        zEquals = str.equals(activeTheme.getKey());
        if (!zEquals) {
        }
        if (theme == null) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setupCallbacks$4() {
        closeDrawer(true);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.drawer.DrawerContainer$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setupCallbacks$3();
            }
        }, 200L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setupCallbacks$3() {
        BaseFragment lastFragment = getLastFragment();
        if (lastFragment != null) {
            lastFragment.presentFragment(new ThemeActivity(0));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setupCallbacks$6() {
        closeDrawer(true);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.drawer.DrawerContainer$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setupCallbacks$5();
            }
        }, 200L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setupCallbacks$5() {
        BaseFragment lastFragment = getLastFragment();
        if (lastFragment != null) {
            lastFragment.presentFragment(new SettingsActivity());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setupCallbacks$8() {
        closeDrawer(true);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.drawer.DrawerContainer$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setupCallbacks$7();
            }
        }, 200L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setupCallbacks$7() {
        BaseFragment lastFragment = getLastFragment();
        if (lastFragment != null) {
            lastFragment.presentFragment(new ProxyListActivity());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setupCallbacks$9() {
        closeDrawer(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setupCallbacks$10(int i, View view) {
        showAccountPreview(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setupCallbacks$11() {
        closeDrawer(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showStatusSelect() {
        BaseFragment lastFragment;
        if (this.selectAnimatedEmojiDialog == null && (lastFragment = getLastFragment()) != null) {
            final int i = UserConfig.selectedAccount;
            TLRPC.User currentUser = UserConfig.getInstance(i).getCurrentUser();
            if (currentUser == null || !MessagesController.getInstance(i).isPremiumUser(currentUser)) {
                return;
            }
            SimpleTextView nameView = this.headerView.getNameView();
            int[] iArr = new int[2];
            nameView.getLocationOnScreen(iArr);
            int rightDrawableX = iArr[0] + nameView.getRightDrawableX();
            int popupWidth = getPopupWidth();
            int iClamp = MathUtils.clamp(rightDrawableX - (popupWidth / 2), 0, AndroidUtilities.displaySize.x - popupWidth);
            int height = iArr[1] + nameView.getHeight();
            final SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow[] selectAnimatedEmojiDialogWindowArr = new SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow[1];
            SelectAnimatedEmojiDialog selectAnimatedEmojiDialog = new SelectAnimatedEmojiDialog(lastFragment, getContext(), true, Integer.valueOf(Math.max(0, rightDrawableX - iClamp)), 0, true, null, 16) { // from class: com.exteragram.messenger.drawer.DrawerContainer.2
                @Override // org.telegram.p029ui.SelectAnimatedEmojiDialog
                protected void onEmojiSelected(View view, Long l, TLRPC.Document document, TL_stars.TL_starGiftUnique tL_starGiftUnique, Integer num) {
                    TLRPC.EmojiStatus tL_emojiStatusEmpty;
                    if (tL_starGiftUnique != null) {
                        TLRPC.TL_inputEmojiStatusCollectible tL_inputEmojiStatusCollectible = new TLRPC.TL_inputEmojiStatusCollectible();
                        tL_inputEmojiStatusCollectible.collectible_id = tL_starGiftUnique.f1846id;
                        tL_emojiStatusEmpty = tL_inputEmojiStatusCollectible;
                        if (num != null) {
                            tL_inputEmojiStatusCollectible.flags |= 1;
                            tL_inputEmojiStatusCollectible.until = num.intValue();
                            tL_emojiStatusEmpty = tL_inputEmojiStatusCollectible;
                        }
                    } else if (l == null) {
                        tL_emojiStatusEmpty = new TLRPC.TL_emojiStatusEmpty();
                    } else {
                        TLRPC.TL_emojiStatus tL_emojiStatus = new TLRPC.TL_emojiStatus();
                        tL_emojiStatus.document_id = l.longValue();
                        tL_emojiStatusEmpty = tL_emojiStatus;
                        if (num != null) {
                            tL_emojiStatus.flags |= 1;
                            tL_emojiStatus.until = num.intValue();
                            tL_emojiStatusEmpty = tL_emojiStatus;
                        }
                    }
                    MessagesController.getInstance(i).updateEmojiStatus(0L, tL_emojiStatusEmpty, tL_starGiftUnique);
                    DrawerContainer.this.headerView.updateUserInfo();
                    if (selectAnimatedEmojiDialogWindowArr[0] != null) {
                        DrawerContainer.this.selectAnimatedEmojiDialog = null;
                        selectAnimatedEmojiDialogWindowArr[0].dismiss();
                    }
                }
            };
            selectAnimatedEmojiDialog.setExpireDateHint(DialogObject.getEmojiStatusUntil(currentUser.emoji_status));
            long emojiStatusDocumentId = DialogObject.getEmojiStatusDocumentId(currentUser.emoji_status);
            selectAnimatedEmojiDialog.setSelected(emojiStatusDocumentId != 0 ? Long.valueOf(emojiStatusDocumentId) : null);
            selectAnimatedEmojiDialog.setSaveState(3);
            int i2 = -2;
            SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow selectAnimatedEmojiDialogWindow = new SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow(selectAnimatedEmojiDialog, i2, i2) { // from class: com.exteragram.messenger.drawer.DrawerContainer.3
                @Override // org.telegram.ui.SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow, android.widget.PopupWindow
                public void dismiss() {
                    super.dismiss();
                    DrawerContainer.this.selectAnimatedEmojiDialog = null;
                }
            };
            this.selectAnimatedEmojiDialog = selectAnimatedEmojiDialogWindow;
            selectAnimatedEmojiDialogWindowArr[0] = selectAnimatedEmojiDialogWindow;
            int[] iArr2 = new int[2];
            getLocationOnScreen(iArr2);
            selectAnimatedEmojiDialogWindowArr[0].showAsDropDown(this, iClamp, (height - iArr2[1]) - AndroidUtilities.m1124dp(16.0f), 51);
            selectAnimatedEmojiDialogWindowArr[0].dimBehind();
        }
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.drawer.DrawerContainer$4 */
    /* JADX INFO: loaded from: classes4.dex */
    class C10834 extends SelectAnimatedEmojiDialog {
        final /* synthetic */ BadgeDTO val$defaultBadge;
        final /* synthetic */ BaseFragment val$fragment;
        final /* synthetic */ SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow[] val$popup;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C10834(BaseFragment baseFragment, Context context, boolean z, Integer num, int i, boolean z2, Theme.ResourcesProvider resourcesProvider, int i2, int i3, boolean z3, BadgeDTO badgeDTO, BaseFragment baseFragment2, SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow[] selectAnimatedEmojiDialogWindowArr) {
            super(baseFragment, context, z, num, i, z2, resourcesProvider, i2, i3, z3);
            this.val$defaultBadge = badgeDTO;
            this.val$fragment = baseFragment2;
            this.val$popup = selectAnimatedEmojiDialogWindowArr;
        }

        @Override // org.telegram.p029ui.SelectAnimatedEmojiDialog
        protected void onEmojiSelected(View view, Long l, TLRPC.Document document, TL_stars.TL_starGiftUnique tL_starGiftUnique, Integer num, String str) {
            long jLongValue;
            if (l == null) {
                BadgeDTO badgeDTO = this.val$defaultBadge;
                jLongValue = badgeDTO != null ? badgeDTO.getDocumentId() : 0L;
            } else {
                jLongValue = l.longValue();
            }
            if (TextUtils.isEmpty(str)) {
                str = null;
            }
            BadgeDTO badgeDTO2 = new BadgeDTO(jLongValue, str);
            DrawerContainer.this.headerView.updateUserInfo(badgeDTO2);
            DrawerContainer.this.accountPickerView.loadAccounts(badgeDTO2);
            BadgesController badgesController = BadgesController.INSTANCE;
            final BaseFragment baseFragment = this.val$fragment;
            badgesController.updateBadge(badgeDTO2, new Consumer() { // from class: com.exteragram.messenger.drawer.DrawerContainer$4$$ExternalSyntheticLambda0
                @Override // java.util.function.Consumer
                /* JADX INFO: renamed from: accept */
                public final void m940v(Object obj) {
                    this.f$0.lambda$onEmojiSelected$1(baseFragment, (String) obj);
                }

                public /* synthetic */ Consumer andThen(Consumer consumer) {
                    return Consumer$CC.$default$andThen(this, consumer);
                }
            });
            if (this.val$popup[0] != null) {
                DrawerContainer.this.selectAnimatedEmojiDialog = null;
                this.val$popup[0].dismiss();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onEmojiSelected$1(final BaseFragment baseFragment, final String str) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.drawer.DrawerContainer$4$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onEmojiSelected$0(str, baseFragment);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onEmojiSelected$0(String str, BaseFragment baseFragment) {
            if (str == null || !str.equals("ok")) {
                BulletinFactory.m1246of(baseFragment).createErrorBulletin(LocaleController.getString(C2888R.string.UnknownError)).show();
            }
            DrawerContainer.this.headerView.updateUserInfo();
            DrawerContainer.this.accountPickerView.loadAccounts();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showBadgeSelect() {
        BaseFragment lastFragment = getLastFragment();
        if (lastFragment == null) {
            return;
        }
        BadgesController badgesController = BadgesController.INSTANCE;
        if (!badgesController.canChangeBadge()) {
            showCurrentBadgeBulletin(lastFragment);
            return;
        }
        if (this.selectAnimatedEmojiDialog != null) {
            return;
        }
        SimpleTextView nameView = this.headerView.getNameView();
        if (nameView.getRightDrawable2() == null) {
            return;
        }
        int[] iArr = new int[2];
        nameView.getLocationOnScreen(iArr);
        int i = iArr[0] + nameView.rightDrawable2X;
        int popupWidth = getPopupWidth();
        int iClamp = MathUtils.clamp(i - (popupWidth / 2), 0, AndroidUtilities.displaySize.x - popupWidth);
        int height = iArr[1] + nameView.getHeight();
        BadgeDTO defaultBadge = badgesController.getDefaultBadge();
        int i2 = UserConfig.selectedAccount;
        SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow[] selectAnimatedEmojiDialogWindowArr = new SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow[1];
        C10834 c10834 = new C10834(lastFragment, getContext(), true, Integer.valueOf(Math.max(0, i - iClamp)), 0, true, null, 16, Theme.getColor(COLOR_KEY_POPUP_ACCENT), true, defaultBadge, lastFragment, selectAnimatedEmojiDialogWindowArr);
        if (defaultBadge != null) {
            c10834.setDefaultBadge(Long.valueOf(defaultBadge.getDocumentId()));
        }
        c10834.useAccentForPlus = true;
        BadgeDTO badge = badgesController.getBadge(UserConfig.getInstance(i2).getCurrentUser());
        if (badge == null) {
            c10834.setSelected((Long) 0L);
        } else if (defaultBadge != null && badge.getDocumentId() == defaultBadge.getDocumentId()) {
            c10834.setSelected((Long) 0L);
        } else {
            c10834.setSelected(Long.valueOf(badge.getDocumentId()));
        }
        int i3 = -2;
        SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow selectAnimatedEmojiDialogWindow = new SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow(c10834, i3, i3) { // from class: com.exteragram.messenger.drawer.DrawerContainer.5
            @Override // org.telegram.ui.SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow, android.widget.PopupWindow
            public void dismiss() {
                super.dismiss();
                DrawerContainer.this.selectAnimatedEmojiDialog = null;
            }
        };
        this.selectAnimatedEmojiDialog = selectAnimatedEmojiDialogWindow;
        selectAnimatedEmojiDialogWindowArr[0] = selectAnimatedEmojiDialogWindow;
        int[] iArr2 = new int[2];
        getLocationOnScreen(iArr2);
        selectAnimatedEmojiDialogWindowArr[0].showAsDropDown(this, iClamp, (height - iArr2[1]) - AndroidUtilities.m1124dp(16.0f), 51);
        selectAnimatedEmojiDialogWindowArr[0].dimBehind();
    }

    private void showCurrentBadgeBulletin(final BaseFragment baseFragment) {
        BadgesController badgesController;
        BadgeDTO badge;
        CharSequence string;
        int i = UserConfig.selectedAccount;
        TLRPC.User currentUser = UserConfig.getInstance(i).getCurrentUser();
        if (currentUser == null || (badge = (badgesController = BadgesController.INSTANCE).getBadge(currentUser)) == null) {
            return;
        }
        boolean zIsDeveloper = badgesController.isDeveloper(currentUser);
        BulletinFactory bulletinFactoryM1246of = BulletinFactory.m1246of(baseFragment);
        TLRPC.Document documentFindDocument = AnimatedEmojiDrawable.findDocument(i, badge.getDocumentId());
        if (badge.getText() != null) {
            string = LocaleUtils.formatWithUsernames(badge.getText());
        } else {
            string = LocaleController.formatString(zIsDeveloper ? C2888R.string.Developer : C2888R.string.Supporter, currentUser.first_name);
        }
        bulletinFactoryM1246of.createEmojiBulletin(documentFindDocument, string, zIsDeveloper ? null : getContext().getString(C2888R.string.FragmentUsernameOpen), zIsDeveloper ? null : new Runnable() { // from class: com.exteragram.messenger.drawer.DrawerContainer$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                SupporterBottomSheet.showAlert(baseFragment, null);
            }
        }).show();
    }

    private void showAccountPreview(final int i) {
        DrawerLayoutContainer drawerLayoutContainer;
        INavigationLayout parentActionBarLayout;
        ViewParent parent = getParent();
        if (!(parent instanceof DrawerLayoutContainer) || (parentActionBarLayout = (drawerLayoutContainer = (DrawerLayoutContainer) parent).getParentActionBarLayout()) == null) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putBoolean("drawer_account_preview", true);
        MainTabsActivity mainTabsActivity = new MainTabsActivity(bundle) { // from class: com.exteragram.messenger.drawer.DrawerContainer.6
            @Override // org.telegram.p029ui.ActionBar.BaseFragment
            public void onTransitionAnimationEnd(boolean z, boolean z2) {
                super.onTransitionAnimationEnd(z, z2);
                if (z || !z2) {
                    return;
                }
                DrawerContainer.this.restoreDrawerAbovePreview();
            }

            @Override // org.telegram.p029ui.MainTabsActivity, org.telegram.p029ui.ActionBar.BaseFragment
            public void onPreviewOpenAnimationEnd() {
                super.onPreviewOpenAnimationEnd();
                DrawerContainer.this.restoreDrawerAbovePreview();
                DrawerContainer.this.closeDrawer(false);
                if (i == UserConfig.selectedAccount || !(getContext() instanceof LaunchActivity)) {
                    return;
                }
                ((LaunchActivity) getContext()).switchToAccount(i, true);
            }
        };
        mainTabsActivity.setCurrentAccount(i);
        mainTabsActivity.prepareDialogsActivity(bundle);
        if (parentActionBarLayout.presentFragment(new INavigationLayout.NavigationParams(mainTabsActivity).setPreview(true).setCheckPresentFromDelegate(false))) {
            drawerLayoutContainer.setDrawCurrentPreviewFragmentAbove(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void restoreDrawerAbovePreview() {
        ViewParent parent = getParent();
        if (parent instanceof DrawerLayoutContainer) {
            ((DrawerLayoutContainer) parent).setDrawCurrentPreviewFragmentAbove(false);
        }
    }

    private void updateDrawerWidth() {
        this.drawerWidth = calculateDrawerWidth();
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.drawerPanel.getLayoutParams();
        layoutParams.width = this.drawerWidth;
        this.drawerPanel.setLayoutParams(layoutParams);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        updateDrawerWidth();
        setProgress(this.progress);
    }

    public boolean isDrawerOpen() {
        return this.progress > 0.001f || this.isAnimating || this.predictiveBackInProgress;
    }

    public boolean startPredictiveBack() {
        if (this.predictiveBackInProgress || this.tracking || this.startedEdgeSwipe || getVisibility() != 0) {
            return false;
        }
        if (this.isAnimating) {
            cancelAnimations();
        }
        float f = this.progress;
        if (f <= 0.001f) {
            return false;
        }
        this.predictiveBackInProgress = true;
        this.predictiveBackStartProgress = f;
        this.tapClosePending = false;
        super.setVisibility(0);
        return true;
    }

    public void updatePredictiveBackProgress(float f) {
        if (this.predictiveBackInProgress) {
            setProgress(this.predictiveBackStartProgress * (1.0f - (Math.max(0.0f, Math.min(1.0f, f)) * 0.5f)));
        }
    }

    public void cancelPredictiveBack() {
        if (this.predictiveBackInProgress) {
            this.predictiveBackInProgress = false;
            float f = this.predictiveBackStartProgress;
            this.isOpen = f > 0.001f;
            animateProgress(f, true, 0.0f);
        }
    }

    public void commitPredictiveBack() {
        if (!this.predictiveBackInProgress) {
            closeDrawer(true);
            return;
        }
        this.predictiveBackInProgress = false;
        this.isOpen = false;
        if (this.progress <= 0.001f) {
            onCloseComplete();
        } else {
            animateProgress(0.0f, true, 0.0f);
        }
    }

    public void toggleDrawer() {
        if (isDrawerOpen()) {
            closeDrawer(true);
        } else {
            openDrawer(true);
        }
    }

    public void openDrawer(boolean z) {
        if (!ExteraConfig.navigationDrawer) {
            onCloseComplete();
            return;
        }
        if (this.progress >= 0.999f && !this.isAnimating) {
            this.isOpen = true;
            setProgress(1.0f);
            return;
        }
        this.isOpen = true;
        updateDrawerWidth();
        super.setVisibility(0);
        applyDrawerPanelPadding();
        refreshContents();
        if (z) {
            animateProgress(1.0f);
        } else {
            setProgress(1.0f);
        }
    }

    public void closeDrawer(boolean z) {
        if (this.progress <= 0.001f && !this.isAnimating) {
            this.isOpen = false;
            onCloseComplete();
            return;
        }
        this.isOpen = false;
        if (z) {
            animateProgress(0.0f);
        } else {
            setProgress(0.0f);
            onCloseComplete();
        }
    }

    private void refreshContents() {
        this.headerView.updateUserInfo();
        this.accountPickerView.loadAccounts();
        BaseFragment lastFragment = getLastFragment();
        if (lastFragment != null) {
            this.menuView.rebuildMenu(UserConfig.selectedAccount, lastFragment);
        } else {
            this.menuView.clearMenu();
        }
    }

    private void refreshAccountViews(int i, boolean z) {
        if (i == UserConfig.selectedAccount) {
            this.headerView.updateUserInfo();
        }
        if (z) {
            this.accountPickerView.loadAccounts();
        }
    }

    private void refreshAccountViews(int i, int i2) {
        boolean z = true;
        boolean z2 = ((MessagesController.UPDATE_MASK_AVATAR & i2) == 0 && (MessagesController.UPDATE_MASK_NAME & i2) == 0 && (MessagesController.UPDATE_MASK_PHONE & i2) == 0 && (MessagesController.UPDATE_MASK_EMOJI_STATUS & i2) == 0) ? false : true;
        if ((MessagesController.UPDATE_MASK_AVATAR & i2) == 0 && (MessagesController.UPDATE_MASK_NAME & i2) == 0 && (i2 & MessagesController.UPDATE_MASK_EMOJI_STATUS) == 0) {
            z = false;
        }
        if (z2 && i == UserConfig.selectedAccount) {
            this.headerView.updateUserInfo();
        }
        if (z) {
            this.accountPickerView.loadAccounts();
        }
    }

    private void setProgress(float f) {
        this.progress = Math.max(0.0f, Math.min(1.0f, f));
        syncDrawerState();
        invalidate();
    }

    private void syncDrawerState() {
        float f = this.progress;
        if (f <= 0.001f && !this.isAnimating && !this.tracking && !this.startedEdgeSwipe && !this.predictiveBackInProgress) {
            applyClosedState();
            return;
        }
        this.drawerPanel.setTranslationX((-this.drawerWidth) * (1.0f - f));
        float f2 = this.progress;
        translateNavigationLayout(f2 <= 0.001f ? 0.0f : getNavigationLayoutTranslation(f2));
        if (getVisibility() != 0) {
            super.setVisibility(0);
        }
    }

    private void applyClosedState() {
        this.progress = 0.0f;
        this.drawerPanel.setTranslationX(-this.drawerWidth);
        translateNavigationLayout(0.0f);
        if (getVisibility() != 8) {
            super.setVisibility(8);
        }
        this.tapClosePending = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getDrawerOffset() {
        return this.drawerWidth * this.progress;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDrawerOffset(float f) {
        float fMax = Math.max(0.0f, Math.min(this.drawerWidth, f));
        int i = this.drawerWidth;
        setProgress(i != 0 ? fMax / i : 0.0f);
    }

    private float getNavigationLayoutTranslation(float f) {
        float f2;
        if (ExteraConfig.immersiveDrawerAnimation) {
            f2 = this.drawerWidth;
        } else {
            f2 = this.drawerWidth * f;
            f = 0.3f;
        }
        return f2 * f;
    }

    private void translateNavigationLayout(float f) {
        ViewParent parent = getParent();
        if (!(parent instanceof DrawerLayoutContainer)) {
            resetNavigationTranslationTarget();
            return;
        }
        DrawerLayoutContainer drawerLayoutContainer = (DrawerLayoutContainer) parent;
        INavigationLayout parentActionBarLayout = drawerLayoutContainer.getParentActionBarLayout();
        if (parentActionBarLayout == null) {
            resetNavigationTranslationTarget();
            return;
        }
        View viewResolveNavigationTranslationTarget = resolveNavigationTranslationTarget(drawerLayoutContainer, parentActionBarLayout);
        View view = this.navigationTranslationTarget;
        if (view != null && view != viewResolveNavigationTranslationTarget) {
            view.setTranslationX(0.0f);
        }
        this.navigationTranslationTarget = viewResolveNavigationTranslationTarget;
        if (viewResolveNavigationTranslationTarget != null) {
            viewResolveNavigationTranslationTarget.setTranslationX(f);
        }
    }

    private View resolveNavigationTranslationTarget(DrawerLayoutContainer drawerLayoutContainer, INavigationLayout iNavigationLayout) {
        ViewGroup view = iNavigationLayout.getView();
        Object parent = view.getParent();
        if (parent instanceof View) {
            View view2 = (View) parent;
            if (view2.getParent() == drawerLayoutContainer) {
                return view2;
            }
        }
        return view;
    }

    private void resetNavigationTranslationTarget() {
        View view = this.navigationTranslationTarget;
        if (view != null) {
            view.setTranslationX(0.0f);
            this.navigationTranslationTarget = null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        int i;
        int iRed;
        int iBlue;
        int iGreen;
        float f = this.progress;
        if (f <= 0.0f) {
            super.dispatchDraw(canvas);
            return;
        }
        float fMax = Math.max(0.0f, Math.min(1.0f, f));
        if (!ExteraConfig.immersiveDrawerAnimation || AndroidUtilities.isTablet()) {
            i = (int) (fMax * 102.0f);
            iRed = 0;
            iBlue = 0;
            iGreen = 0;
        } else {
            i = (int) (fMax * 160.0f);
            int color = Theme.getColor(COLOR_KEY_DRAWER_BACKGROUND);
            iRed = Color.red(color);
            iGreen = Color.green(color);
            iBlue = Color.blue(color);
        }
        this.scrimPaint.setColor(Color.argb(i, iRed, iGreen, iBlue));
        canvas.drawRect(0.0f, 0.0f, getWidth(), getHeight(), this.scrimPaint);
        super.dispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        if (view == this.drawerPanel && !ExteraConfig.immersiveDrawerAnimation) {
            float fM1124dp = this.cachedTopRightRadius;
            if (fM1124dp < 0.0f) {
                fM1124dp = AndroidUtilities.m1124dp(24.0f);
            }
            float fM1124dp2 = this.cachedBottomRightRadius;
            if (fM1124dp2 < 0.0f) {
                fM1124dp2 = AndroidUtilities.m1124dp(24.0f);
            }
            float[] fArr = this.radii;
            fArr[1] = 0.0f;
            fArr[0] = 0.0f;
            fArr[3] = fM1124dp;
            fArr[2] = fM1124dp;
            fArr[5] = fM1124dp2;
            fArr[4] = fM1124dp2;
            fArr[7] = 0.0f;
            fArr[6] = 0.0f;
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(view.getX(), view.getY(), view.getX() + view.getWidth(), view.getY() + view.getHeight());
            this.clipPath.rewind();
            this.clipPath.addRoundRect(rectF, this.radii, Path.Direction.CW);
            int iSave = canvas.save();
            canvas.clipPath(this.clipPath);
            boolean zDrawChild = super.drawChild(canvas, view, j);
            canvas.restoreToCount(iSave);
            return zDrawChild;
        }
        return super.drawChild(canvas, view, j);
    }

    private void animateProgress(float f) {
        animateProgress(f, false, 0.0f);
    }

    private void animateProgress(final float f, boolean z, float f2) {
        cancelAnimations();
        this.isAnimating = true;
        final float f3 = this.drawerWidth * f;
        if (ExteraConfig.springAnimations) {
            SpringAnimation springAnimation = new SpringAnimation(this, DRAWER_OFFSET);
            this.springAnimation = springAnimation;
            springAnimation.setSpring(new SpringForce(f3).setStiffness(z ? 1500.0f : 950.0f).setDampingRatio(1.0f));
            if (f2 != 0.0f) {
                this.springAnimation.setStartVelocity(f2);
            }
            this.springAnimation.addEndListener(new DynamicAnimation.OnAnimationEndListener() { // from class: com.exteragram.messenger.drawer.DrawerContainer$$ExternalSyntheticLambda10
                @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
                public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z2, float f4, float f5) {
                    this.f$0.lambda$animateProgress$13(f3, f, dynamicAnimation, z2, f4, f5);
                }
            });
            this.springAnimation.animateToFinalPosition(f3);
            return;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(getDrawerOffset(), f3);
        this.standardAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(getAnimationDuration(f3, z));
        this.standardAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        this.standardAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.exteragram.messenger.drawer.DrawerContainer$$ExternalSyntheticLambda11
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$animateProgress$14(valueAnimator);
            }
        });
        this.standardAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.exteragram.messenger.drawer.DrawerContainer.7
            private boolean canceled;

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                this.canceled = true;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (DrawerContainer.this.standardAnimator == animator) {
                    DrawerContainer.this.standardAnimator = null;
                }
                if (this.canceled) {
                    return;
                }
                DrawerContainer.this.isAnimating = false;
                DrawerContainer.this.setDrawerOffset(f3);
                if (f == 0.0f) {
                    DrawerContainer.this.onCloseComplete();
                }
            }
        });
        this.standardAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateProgress$13(float f, float f2, DynamicAnimation dynamicAnimation, boolean z, float f3, float f4) {
        if (this.springAnimation == dynamicAnimation) {
            this.springAnimation = null;
        }
        if (z) {
            return;
        }
        this.isAnimating = false;
        setDrawerOffset(f);
        if (f2 == 0.0f) {
            onCloseComplete();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateProgress$14(ValueAnimator valueAnimator) {
        setDrawerOffset(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    private long getAnimationDuration(float f, boolean z) {
        if (!z) {
            return 300L;
        }
        float drawerOffset = getDrawerOffset();
        if (f > drawerOffset) {
            drawerOffset = this.drawerWidth - drawerOffset;
        }
        return Math.max((long) ((250.0f / Math.max(this.drawerWidth, 1)) * drawerOffset), 100L);
    }

    private void cancelAnimations() {
        SpringAnimation springAnimation = this.springAnimation;
        if (springAnimation != null) {
            this.springAnimation = null;
            springAnimation.cancel();
        }
        ValueAnimator valueAnimator = this.standardAnimator;
        if (valueAnimator != null) {
            this.standardAnimator = null;
            valueAnimator.cancel();
        }
        this.isAnimating = false;
        setProgress(this.progress);
        if (this.isOpen || this.progress > 0.001f || this.tracking || this.startedEdgeSwipe) {
            return;
        }
        onCloseComplete();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onCloseComplete() {
        this.isOpen = false;
        this.tracking = false;
        this.startedEdgeSwipe = false;
        this.predictiveBackInProgress = false;
        this.predictiveBackStartProgress = 0.0f;
        setProgress(0.0f);
        this.tapClosePending = false;
        dismissSelectionPopup();
        this.menuView.clearMenu();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (isClosingAnimationInProgress()) {
            return !shouldPassClosingTouchThrough(motionEvent);
        }
        if (motionEvent.getAction() == 0) {
            if (this.isAnimating) {
                cancelAnimations();
            }
            this.startX = motionEvent.getX();
            this.startY = motionEvent.getY();
            this.startProgress = this.progress;
            this.tracking = false;
            float translationX = this.drawerPanel.getTranslationX() + this.drawerWidth;
            this.tapClosePending = motionEvent.getX() > translationX;
            return motionEvent.getX() > translationX;
        }
        if (motionEvent.getAction() == 2) {
            float x = motionEvent.getX() - this.startX;
            if (shouldStartVisibleDrawerTracking(x, Math.abs(motionEvent.getY() - this.startY))) {
                beginVisibleDrawerTracking(motionEvent, x);
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x006c  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (isClosingAnimationInProgress()) {
            return !shouldPassClosingTouchThrough(motionEvent);
        }
        if (this.velocityTracker == null) {
            this.velocityTracker = VelocityTracker.obtain();
        }
        this.velocityTracker.addMovement(motionEvent);
        int action = motionEvent.getAction();
        if (action == 0) {
            if (this.isAnimating) {
                cancelAnimations();
            }
            this.startX = motionEvent.getX();
            this.startY = motionEvent.getY();
            this.startProgress = this.progress;
            this.tracking = false;
            this.tapClosePending = motionEvent.getX() > this.drawerPanel.getTranslationX() + ((float) this.drawerWidth);
            return true;
        }
        if (action == 1) {
            if (this.tracking) {
                finishTracking();
                return true;
            }
            if (motionEvent.getAction() == 1 && this.tapClosePending) {
                this.tapClosePending = false;
                closeDrawer(true);
                return true;
            }
            this.tapClosePending = false;
        } else if (action == 2) {
            if (!this.tracking) {
                float x = motionEvent.getX() - this.startX;
                if (shouldStartVisibleDrawerTracking(x, Math.abs(motionEvent.getY() - this.startY))) {
                    beginVisibleDrawerTracking(motionEvent, x);
                }
            }
            if (this.tracking) {
                setProgress(Math.max(0.0f, Math.min(1.0f, this.startProgress + ((motionEvent.getX() - this.startX) / this.drawerWidth))));
                return true;
            }
        } else if (action == 3) {
        }
        return true;
    }

    private boolean isClosingAnimationInProgress() {
        return this.isAnimating && !this.isOpen;
    }

    private boolean shouldPassClosingTouchThrough(MotionEvent motionEvent) {
        return motionEvent != null && motionEvent.getAction() == 0 && motionEvent.getX() > this.drawerPanel.getTranslationX() + ((float) this.drawerWidth);
    }

    private boolean shouldStartVisibleDrawerTracking(float f, float f2) {
        return f < 0.0f ? Math.abs(f) >= f2 && Math.abs(f) >= getDrawerCloseTouchSlop() : this.startProgress < 0.999f && f > 0.0f && f / 3.0f > f2 && f >= getDrawerOpenTouchSlop();
    }

    public boolean handleEdgeSwipeIntercept(MotionEvent motionEvent) {
        if (!ExteraConfig.navigationDrawer) {
            return false;
        }
        if (motionEvent.getAction() == 0) {
            this.startX = motionEvent.getX();
            this.startY = motionEvent.getY();
            this.startProgress = this.progress;
            this.startedEdgeSwipe = false;
            this.tracking = false;
            if (canStartClosedDrawerSwipe(motionEvent)) {
                this.startedEdgeSwipe = true;
                if (this.velocityTracker == null) {
                    this.velocityTracker = VelocityTracker.obtain();
                }
                this.velocityTracker.clear();
                this.velocityTracker.addMovement(motionEvent);
            }
            return false;
        }
        if (this.startedEdgeSwipe) {
            VelocityTracker velocityTracker = this.velocityTracker;
            if (velocityTracker != null) {
                velocityTracker.addMovement(motionEvent);
            }
            if (motionEvent.getAction() == 2) {
                float x = motionEvent.getX() - this.startX;
                float y = motionEvent.getY() - this.startY;
                if (shouldBlockClosedDrawerSwipe(x, y)) {
                    this.startedEdgeSwipe = false;
                    return false;
                }
                if (shouldStartClosedDrawerTracking(x, Math.abs(y))) {
                    beginClosedDrawerTracking(motionEvent, x);
                    return true;
                }
            }
            if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
                this.startedEdgeSwipe = false;
            }
        }
        return false;
    }

    public boolean handleEdgeSwipeTouch(MotionEvent motionEvent) {
        if (!ExteraConfig.navigationDrawer) {
            return false;
        }
        if (!this.startedEdgeSwipe && !this.tracking) {
            return false;
        }
        if (this.velocityTracker == null) {
            this.velocityTracker = VelocityTracker.obtain();
        }
        this.velocityTracker.addMovement(motionEvent);
        int action = motionEvent.getAction();
        if (action != 1) {
            if (action == 2) {
                if (this.tracking) {
                    setProgress(Math.max(0.0f, Math.min(1.0f, this.startProgress + ((motionEvent.getX() - this.startX) / this.drawerWidth))));
                }
                return true;
            }
            if (action != 3) {
                return true;
            }
        }
        if (this.tracking) {
            finishTracking();
        }
        this.startedEdgeSwipe = false;
        return true;
    }

    private boolean shouldBlockClosedDrawerSwipe(float f, float f2) {
        float fAbs = Math.abs(f2);
        float drawerOpenTouchSlop = AndroidUtilities.touchSlop;
        if (drawerOpenTouchSlop <= 0.0f) {
            drawerOpenTouchSlop = getDrawerOpenTouchSlop();
        }
        return fAbs >= drawerOpenTouchSlop && fAbs > Math.abs(f);
    }

    private boolean shouldStartClosedDrawerTracking(float f, float f2) {
        return f > 0.0f && f / 3.0f > f2 && Math.abs(f) >= getDrawerOpenTouchSlop();
    }

    private void beginVisibleDrawerTracking(MotionEvent motionEvent, float f) {
        this.tracking = true;
        this.tapClosePending = false;
        if (this.isAnimating) {
            cancelAnimations();
        }
        offsetTrackingStart(motionEvent, f);
        resetTrackingVelocity(motionEvent);
        if (getParent() != null) {
            getParent().requestDisallowInterceptTouchEvent(true);
        }
    }

    private void beginClosedDrawerTracking(MotionEvent motionEvent, float f) {
        this.tracking = true;
        this.tapClosePending = false;
        if (this.isAnimating) {
            cancelAnimations();
        }
        super.setVisibility(0);
        applyDrawerPanelPadding();
        refreshContents();
        offsetTrackingStart(motionEvent, f);
        resetTrackingVelocity(motionEvent);
        if (getParent() != null) {
            getParent().requestDisallowInterceptTouchEvent(true);
        }
    }

    private void offsetTrackingStart(MotionEvent motionEvent, float f) {
        this.startX += Math.signum(f) * getTrackingTouchSlop(f);
        this.startY = motionEvent.getY();
        this.startProgress = this.progress;
    }

    private void resetTrackingVelocity(MotionEvent motionEvent) {
        VelocityTracker velocityTracker = this.velocityTracker;
        if (velocityTracker == null) {
            this.velocityTracker = VelocityTracker.obtain();
        } else {
            velocityTracker.clear();
        }
        this.velocityTracker.addMovement(motionEvent);
    }

    private float getTrackingTouchSlop(float f) {
        return f < 0.0f ? getDrawerCloseTouchSlop() : getDrawerOpenTouchSlop();
    }

    private float getDrawerOpenTouchSlop() {
        return AndroidUtilities.getPixelsInCM(0.2f, true);
    }

    private float getDrawerCloseTouchSlop() {
        return AndroidUtilities.getPixelsInCM(0.4f, true);
    }

    private void finishTracking() {
        float xVelocity;
        float yVelocity;
        VelocityTracker velocityTracker = this.velocityTracker;
        if (velocityTracker != null) {
            velocityTracker.computeCurrentVelocity(MediaDataController.MAX_STYLE_RUNS_COUNT);
            xVelocity = this.velocityTracker.getXVelocity();
            yVelocity = this.velocityTracker.getYVelocity();
        } else {
            xVelocity = 0.0f;
            yVelocity = 0.0f;
        }
        int swipeVelocity = AppUtils.getSwipeVelocity();
        if ((this.progress >= 1.0f / (this.isOpen ? 1.25f : 5.0f) || (xVelocity >= swipeVelocity && Math.abs(xVelocity) >= Math.abs(yVelocity))) && (xVelocity >= 0.0f || Math.abs(xVelocity) < swipeVelocity)) {
            boolean z = !this.isOpen && Math.abs(xVelocity) >= ((float) swipeVelocity);
            this.isOpen = true;
            animateProgress(1.0f, z, xVelocity);
        } else {
            boolean z2 = this.isOpen && Math.abs(xVelocity) >= ((float) swipeVelocity);
            this.isOpen = false;
            animateProgress(0.0f, z2, xVelocity);
        }
        VelocityTracker velocityTracker2 = this.velocityTracker;
        if (velocityTracker2 != null) {
            velocityTracker2.recycle();
            this.velocityTracker = null;
        }
        this.tracking = false;
        this.startedEdgeSwipe = false;
        this.tapClosePending = false;
    }

    private boolean canOpen() {
        BaseFragment lastFragment = getLastFragment();
        if (lastFragment instanceof DialogsActivity) {
            return ((DialogsActivity) lastFragment).canOpenDrawerBySwipe();
        }
        return false;
    }

    private boolean canStartClosedDrawerSwipe(MotionEvent motionEvent) {
        INavigationLayout parentActionBarLayout;
        BaseFragment lastFragment;
        ViewGroup view;
        if (canOpen()) {
            ViewParent parent = getParent();
            if (!(parent instanceof DrawerLayoutContainer) || (parentActionBarLayout = ((DrawerLayoutContainer) parent).getParentActionBarLayout()) == null || parentActionBarLayout.getFragmentStack().size() != 1 || !parentActionBarLayout.allowSwipe() || (((lastFragment = parentActionBarLayout.getLastFragment()) != null && lastFragment.getLastSheet() != null && lastFragment.getLastSheet().attachedToParent()) || (view = parentActionBarLayout.getView()) == null)) {
                return false;
            }
            view.getHitRect(this.rect);
            if (this.rect.contains((int) motionEvent.getX(), (int) motionEvent.getY()) && findScrollingChild(view, motionEvent.getX() - this.rect.left, motionEvent.getY() - this.rect.top) == null) {
                return true;
            }
        }
        return false;
    }

    private View findScrollingChild(ViewGroup viewGroup, float f, float f2) {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt.getVisibility() == 0) {
                childAt.getHitRect(this.rect);
                if (!this.rect.contains((int) f, (int) f2)) {
                    continue;
                } else {
                    if (childAt.canScrollHorizontally(-1)) {
                        return childAt;
                    }
                    if (childAt instanceof ViewGroup) {
                        Rect rect = this.rect;
                        View viewFindScrollingChild = findScrollingChild((ViewGroup) childAt, f - rect.left, f2 - rect.top);
                        if (viewFindScrollingChild != null) {
                            return viewFindScrollingChild;
                        }
                    } else {
                        continue;
                    }
                }
            }
        }
        return null;
    }

    private BaseFragment getLastFragment() {
        INavigationLayout parentActionBarLayout;
        ViewGroup viewGroup = (ViewGroup) getParent();
        if (!(viewGroup instanceof DrawerLayoutContainer) || (parentActionBarLayout = ((DrawerLayoutContainer) viewGroup).getParentActionBarLayout()) == null) {
            return null;
        }
        BaseFragment lastFragment = parentActionBarLayout.getLastFragment();
        return lastFragment instanceof MainTabsActivity ? ((MainTabsActivity) lastFragment).getCurrentVisibleFragment() : lastFragment;
    }

    private void dismissSelectionPopup() {
        SelectAnimatedEmojiDialog.SelectAnimatedEmojiDialogWindow selectAnimatedEmojiDialogWindow = this.selectAnimatedEmojiDialog;
        if (selectAnimatedEmojiDialogWindow != null) {
            selectAnimatedEmojiDialogWindow.dismiss();
            this.selectAnimatedEmojiDialog = null;
        }
    }

    private void recycleVelocityTracker() {
        VelocityTracker velocityTracker = this.velocityTracker;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.velocityTracker = null;
        }
    }

    public void dispose() {
        cancelAnimations();
        onCloseComplete();
        recycleVelocityTracker();
        this.accountPickerView.dispose();
        unregisterNotifications();
        resetNavigationTranslationTarget();
    }

    @Override // android.view.View
    public WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        if (!ExteraConfig.immersiveDrawerAnimation) {
            float fM1124dp = AndroidUtilities.m1124dp(24.0f);
            if (Build.VERSION.SDK_INT >= 31) {
                RoundedCorner roundedCorner = windowInsets.getRoundedCorner(1);
                RoundedCorner roundedCorner2 = windowInsets.getRoundedCorner(2);
                this.cachedTopRightRadius = roundedCorner != null ? Math.max(fM1124dp, roundedCorner.getRadius() / 2.0f) : fM1124dp;
                if (roundedCorner2 != null) {
                    fM1124dp = Math.max(fM1124dp, roundedCorner2.getRadius() / 2.0f);
                }
                this.cachedBottomRightRadius = fM1124dp;
            } else {
                this.cachedTopRightRadius = fM1124dp;
                this.cachedBottomRightRadius = fM1124dp;
            }
        }
        return super.onApplyWindowInsets(windowInsets);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        registerNotifications();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        cancelAnimations();
        onCloseComplete();
        dismissSelectionPopup();
        recycleVelocityTracker();
        this.accountPickerView.dispose();
        resetNavigationTranslationTarget();
        unregisterNotifications();
    }

    private void registerNotifications() {
        if (this.notificationsRegistered) {
            return;
        }
        for (int i = 0; i < 16; i++) {
            NotificationCenter notificationCenter = NotificationCenter.getInstance(i);
            notificationCenter.addObserver(this, NotificationCenter.mainUserInfoChanged);
            notificationCenter.addObserver(this, NotificationCenter.userEmojiStatusUpdated);
            notificationCenter.addObserver(this, NotificationCenter.currentUserPremiumStatusChanged);
            notificationCenter.addObserver(this, NotificationCenter.updateInterfaces);
            notificationCenter.addObserver(this, NotificationCenter.appDidLogout);
            notificationCenter.addObserver(this, NotificationCenter.attachMenuBotsDidLoad);
            notificationCenter.addObserver(this, NotificationCenter.didUpdateConnectionState);
        }
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.didSetNewTheme);
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.themeAccentListUpdated);
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.notificationsCountUpdated);
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.reloadInterface);
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.pluginMenuItemsUpdated);
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.proxySettingsChanged);
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.proxyPingUpdated);
        this.notificationsRegistered = true;
    }

    private void unregisterNotifications() {
        if (this.notificationsRegistered) {
            for (int i = 0; i < 16; i++) {
                NotificationCenter notificationCenter = NotificationCenter.getInstance(i);
                notificationCenter.removeObserver(this, NotificationCenter.mainUserInfoChanged);
                notificationCenter.removeObserver(this, NotificationCenter.userEmojiStatusUpdated);
                notificationCenter.removeObserver(this, NotificationCenter.currentUserPremiumStatusChanged);
                notificationCenter.removeObserver(this, NotificationCenter.updateInterfaces);
                notificationCenter.removeObserver(this, NotificationCenter.appDidLogout);
                notificationCenter.removeObserver(this, NotificationCenter.attachMenuBotsDidLoad);
                notificationCenter.removeObserver(this, NotificationCenter.didUpdateConnectionState);
            }
            NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.didSetNewTheme);
            NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.themeAccentListUpdated);
            NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.notificationsCountUpdated);
            NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.reloadInterface);
            NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.pluginMenuItemsUpdated);
            NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.proxySettingsChanged);
            NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.proxyPingUpdated);
            this.notificationsRegistered = false;
        }
    }

    public void onAccountChanged() {
        refreshContents();
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.mainUserInfoChanged || i == NotificationCenter.userEmojiStatusUpdated || i == NotificationCenter.currentUserPremiumStatusChanged) {
            refreshAccountViews(i2, true);
            return;
        }
        if (i == NotificationCenter.updateInterfaces) {
            if (objArr.length > 0) {
                Object obj = objArr[0];
                if (obj instanceof Integer) {
                    refreshAccountViews(i2, ((Integer) obj).intValue());
                }
            }
            this.menuView.updateUnreadCounters(UserConfig.selectedAccount);
            return;
        }
        if (i == NotificationCenter.didSetNewTheme) {
            updateColors();
            return;
        }
        if (i == NotificationCenter.themeAccentListUpdated) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.drawer.DrawerContainer$$ExternalSyntheticLambda12
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.updateColors();
                }
            });
            return;
        }
        if (i == NotificationCenter.notificationsCountUpdated) {
            this.accountPickerView.updateUnreadCounters();
            this.menuView.updateUnreadCounters(UserConfig.selectedAccount);
            return;
        }
        if (i == NotificationCenter.reloadInterface) {
            this.headerView.updateUserInfo();
            this.accountPickerView.updateUnreadCounters();
            this.menuView.updateUnreadCounters(UserConfig.selectedAccount);
            updateColors();
            return;
        }
        if (i == NotificationCenter.attachMenuBotsDidLoad) {
            if (i2 == UserConfig.selectedAccount && this.isOpen) {
                refreshContents();
                return;
            }
            return;
        }
        if (i == NotificationCenter.pluginMenuItemsUpdated) {
            if (this.isOpen) {
                refreshContents();
            }
        } else if (i == NotificationCenter.proxySettingsChanged || i == NotificationCenter.proxyPingUpdated || i == NotificationCenter.didUpdateConnectionState) {
            this.headerView.updateProxyStatus();
        } else if (i == NotificationCenter.appDidLogout) {
            refreshAccountViews(i2, true);
            if (this.isOpen) {
                closeDrawer(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateColors() {
        this.drawerPanel.setBackgroundColor(Theme.getColor(COLOR_KEY_DRAWER_BACKGROUND));
        this.headerView.updateColors();
        this.accountPickerView.updateColors();
        this.menuView.updateColors();
    }

    private int calculateDrawerWidth() {
        return Math.min(AndroidUtilities.m1124dp(300.0f), AndroidUtilities.displaySize.x - AndroidUtilities.m1124dp(56.0f));
    }

    private void applyDrawerPanelPadding() {
        this.drawerPanel.setPadding(0, AndroidUtilities.statusBarHeight, 0, 0);
    }

    private int getPopupWidth() {
        return (int) Math.min(AndroidUtilities.m1124dp(324.0f), AndroidUtilities.displaySize.x * 0.95f);
    }
}
