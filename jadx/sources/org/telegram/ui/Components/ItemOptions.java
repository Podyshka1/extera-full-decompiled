package org.telegram.ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.Keep;
import androidx.core.graphics.ColorUtils;
import com.exteragram.messenger.utils.system.VibratorUtils;
import java.util.ArrayList;
import java.util.HashSet;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BotWebViewVibrationEffect;
import org.telegram.messenger.C2484R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.DocumentObject;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.ui.ActionBar.ActionBarPopupWindow;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.INavigationLayout;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.SharedPhotoVideoCell2;
import org.telegram.ui.Cells.TextCell;
import org.telegram.ui.Cells.UserCell;
import org.telegram.ui.Components.AnimatedEmojiSpan;
import org.telegram.ui.Components.BlurringShader;
import org.telegram.ui.Components.MessagePreviewView;
import org.telegram.ui.Components.PopupSwipeBackLayout;
import org.telegram.ui.ContactsActivity;
import org.telegram.ui.DialogsActivity;
import org.telegram.ui.Gifts.GiftSheet;
import org.telegram.ui.MainTabsActivity;
import org.telegram.ui.ProfileActivity;
import org.telegram.ui.SettingsActivity;
import org.telegram.ui.Stories.StoriesController;
import org.telegram.ui.Stories.recorder.HintView2;

/* JADX INFO: loaded from: classes3.dex */
public class ItemOptions {
    public ActionBarPopupWindow actionBarPopupWindow;
    private boolean allowCenter;
    private boolean allowMoveScrim;
    private int allowMoveScrimGravity;
    private int animateToHeight;
    private int animateToWidth;
    private boolean blur;
    private ViewGroup container;
    private Context context;
    private int dimAlpha;
    private ValueAnimator dimAnimator;
    private DimView dimView;
    private boolean discardScrolls;
    private Runnable dismissListener;
    private boolean dismissOnMoveOutside;
    public boolean dismissWithButtons;
    private boolean dontDismiss;
    private boolean drawScrim;
    private int fixedWidthDp;
    private boolean forceBelowScrim;
    private boolean forceBottom;
    private boolean forceTop;
    private int foregroundIndex;
    private BaseFragment fragment;
    private Integer gapBackgroundColor;
    private int gravity;
    private boolean hideScrimUnder;
    private Integer iconColor;
    private boolean ignoreX;
    private ActionBarPopupWindow.ActionBarPopupWindowLayout lastLayout;
    private ViewGroup layout;
    private LinearLayout linearLayout;
    private int maxHeight;
    private int minWidthDp;
    public boolean needsFocus;
    private float offsetX;
    private float offsetY;
    public boolean onTopOfScrim;
    private boolean overridenSwipebackGravity;
    private final float[] point;
    private ViewGroup pointContainer;
    private ViewTreeObserver.OnPreDrawListener preDrawListener;
    private Theme.ResourcesProvider resourcesProvider;
    private boolean scaleOut;
    private View scrimView;
    private Drawable scrimViewBackground;
    private int scrimViewBackgroundShadowColor;
    private int scrimViewPadding;
    private int scrimViewRoundRadius;
    private Integer selectorColor;
    private int shiftDp;
    public boolean shownFromBottom;
    public boolean swipeback;
    private Integer textColor;
    private float translateX;
    private float translateY;
    public boolean useScrollView;
    private android.graphics.Rect viewAdditionalOffsets;

    public void updateColors() {
    }

    public static ItemOptions makeOptions(BaseFragment baseFragment, View view) {
        return new ItemOptions(baseFragment, view, false, true, false);
    }

    public static ItemOptions makeOptions(BaseFragment baseFragment, View view, boolean z) {
        return new ItemOptions(baseFragment, view, z, true, false);
    }

    public static ItemOptions makeOptions(BaseFragment baseFragment, View view, boolean z, boolean z2) {
        return new ItemOptions(baseFragment, view, z, !z2, false);
    }

    public static ItemOptions makeOptions(ViewGroup viewGroup, View view) {
        return makeOptions(viewGroup, (Theme.ResourcesProvider) null, view);
    }

    public static ItemOptions makeOptions(ViewGroup viewGroup, Theme.ResourcesProvider resourcesProvider, View view) {
        return new ItemOptions(viewGroup, resourcesProvider, view, false, false);
    }

    public static ItemOptions makeOptions(ViewGroup viewGroup, Theme.ResourcesProvider resourcesProvider, View view, boolean z) {
        return new ItemOptions(viewGroup, resourcesProvider, view, z, false);
    }

    public static ItemOptions makeOptions(ViewGroup viewGroup, Theme.ResourcesProvider resourcesProvider, View view, boolean z, boolean z2) {
        return new ItemOptions(viewGroup, resourcesProvider, view, z, z2);
    }

    public static ItemOptions makeOptions(ViewGroup viewGroup, Theme.ResourcesProvider resourcesProvider, View view, boolean z, boolean z2, boolean z3) {
        return new ItemOptions(viewGroup, resourcesProvider, view, z, z2, z3);
    }

    public ItemOptions setRoundRadius(int i, int i2) {
        this.scrimViewRoundRadius = i;
        this.scrimViewPadding = i2;
        return this;
    }

    public ItemOptions setBlur(boolean z) {
        this.blur = z;
        return this;
    }

    public Context getContext() {
        return this.context;
    }

    private static BaseFragment downFragment(BaseFragment baseFragment) {
        INavigationLayout parentLayout;
        if ((((baseFragment instanceof ProfileActivity) && ((ProfileActivity) baseFragment).hasMainTabs) || (((baseFragment instanceof DialogsActivity) && ((DialogsActivity) baseFragment).hasMainTabs) || (((baseFragment instanceof ContactsActivity) && ((ContactsActivity) baseFragment).hasMainTabs) || ((baseFragment instanceof SettingsActivity) && ((SettingsActivity) baseFragment).hasMainTabs)))) && (parentLayout = baseFragment.getParentLayout()) != null) {
            BaseFragment safeLastFragment = parentLayout.getSafeLastFragment();
            if (safeLastFragment instanceof MainTabsActivity) {
                return safeLastFragment;
            }
        }
        return baseFragment;
    }

    private ItemOptions(BaseFragment baseFragment, View view, boolean z, boolean z2, boolean z3) {
        this.gravity = 5;
        this.point = new float[2];
        this.drawScrim = true;
        this.viewAdditionalOffsets = new android.graphics.Rect();
        this.discardScrolls = true;
        this.dismissOnMoveOutside = false;
        this.dismissWithButtons = true;
        this.shiftDp = -4;
        if (baseFragment.getContext() == null) {
            return;
        }
        BaseFragment baseFragmentDownFragment = downFragment(baseFragment);
        this.fragment = baseFragmentDownFragment;
        this.resourcesProvider = baseFragmentDownFragment.getResourceProvider();
        this.context = baseFragmentDownFragment.getContext();
        this.scrimView = view;
        this.dimAlpha = ((double) AndroidUtilities.computePerceivedBrightness(Theme.getColor(Theme.key_windowBackgroundWhite, this.resourcesProvider))) > 0.705d ? 102 : 51;
        this.swipeback = z;
        this.useScrollView = z2;
        this.shownFromBottom = z3;
        init();
    }

    private ItemOptions(ViewGroup viewGroup, Theme.ResourcesProvider resourcesProvider, View view, boolean z, boolean z2) {
        this(viewGroup, resourcesProvider, view, z, z2, false);
    }

    private ItemOptions(ViewGroup viewGroup, Theme.ResourcesProvider resourcesProvider, View view, boolean z, boolean z2, boolean z3) {
        this.gravity = 5;
        this.point = new float[2];
        this.drawScrim = true;
        this.viewAdditionalOffsets = new android.graphics.Rect();
        this.discardScrolls = true;
        this.dismissOnMoveOutside = false;
        this.dismissWithButtons = true;
        this.shiftDp = -4;
        if (viewGroup == null || viewGroup.getContext() == null) {
            return;
        }
        this.container = viewGroup;
        this.resourcesProvider = resourcesProvider;
        this.context = viewGroup.getContext();
        this.scrimView = view;
        this.dimAlpha = ((double) AndroidUtilities.computePerceivedBrightness(Theme.getColor(Theme.key_windowBackgroundWhite, resourcesProvider))) > 0.705d ? 102 : 51;
        this.swipeback = z;
        this.shownFromBottom = z2;
        this.useScrollView = z3;
        init();
    }

    public ItemOptions setDiscardScrolls(boolean z) {
        this.discardScrolls = z;
        return this;
    }

    @Keep
    public boolean isDiscardScrolls() {
        return this.discardScrolls;
    }

    public ItemOptions setDismissOnMoveOutside(boolean z) {
        this.dismissOnMoveOutside = z;
        return this;
    }

    @Keep
    public boolean isDismissOnMoveOutside() {
        return this.dismissOnMoveOutside;
    }

    public void dispatchCapturedTouchEvent(MotionEvent motionEvent) {
        if (this.actionBarPopupWindow == null || this.layout == null) {
            return;
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        this.layout.getLocationOnScreen(new int[2]);
        motionEventObtain.offsetLocation(-r2[0], -r2[1]);
        this.layout.dispatchTouchEvent(motionEventObtain);
        if (motionEvent.getAction() == 2) {
            handleTouchMove(motionEvent);
        } else if (motionEvent.getAction() == 1) {
            handleTouchUp(motionEvent);
        }
        motionEventObtain.recycle();
    }

    public void handleTouchMove(MotionEvent motionEvent) {
        ActionBarPopupWindow actionBarPopupWindow = this.actionBarPopupWindow;
        if (actionBarPopupWindow == null || !actionBarPopupWindow.isShowing()) {
            return;
        }
        findAndHighlightView(motionEvent.getRawX(), motionEvent.getRawY());
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void findAndHighlightView(float f, float f2) {
        boolean z;
        for (int i = 0; i < getItemsCount(); i++) {
            View itemAt = getItemAt(i);
            int[] iArr = new int[2];
            itemAt.getLocationOnScreen(iArr);
            if (f < iArr[0] || f > r4 + itemAt.getWidth()) {
                z = false;
            } else {
                if (f2 >= iArr[1] && f2 <= r4 + itemAt.getHeight()) {
                    z = true;
                }
            }
            if (itemAt.isClickable()) {
                if (z && !itemAt.isPressed()) {
                    itemAt.performHapticFeedback(VibratorUtils.getType(4), 1);
                }
                if (itemAt.isPressed() != z) {
                    itemAt.setPressed(z);
                }
                if (z) {
                    itemAt.drawableHotspotChanged(f - iArr[0], f2 - iArr[1]);
                }
            }
        }
    }

    public void handleTouchUp(MotionEvent motionEvent) {
        ActionBarPopupWindow actionBarPopupWindow = this.actionBarPopupWindow;
        if (actionBarPopupWindow == null || !actionBarPopupWindow.isShowing()) {
            return;
        }
        float rawX = motionEvent.getRawX();
        float rawY = motionEvent.getRawY();
        if (performClickAt(this.layout, rawX, rawY) || !this.dismissOnMoveOutside) {
            return;
        }
        int[] iArr = new int[2];
        this.scrimView.getLocationOnScreen(iArr);
        if (rawX >= iArr[0] && rawX <= r2 + this.scrimView.getWidth()) {
            if (rawY >= iArr[1] && rawY <= r0 + this.scrimView.getHeight()) {
                return;
            }
        }
        dismiss();
    }

    private boolean performClickAt(ViewGroup viewGroup, float f, float f2) {
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            int[] iArr = new int[2];
            childAt.getLocationOnScreen(iArr);
            if (f >= iArr[0] && f <= r4 + childAt.getWidth()) {
                if (f2 >= iArr[1] && f2 <= r3 + childAt.getHeight()) {
                    if (childAt.isClickable()) {
                        childAt.performClick();
                        return true;
                    }
                    if (childAt instanceof ViewGroup) {
                        performClickAt((ViewGroup) childAt, f, f2);
                    }
                }
            }
        }
        return false;
    }

    public static ItemOptions swipeback(ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout, Theme.ResourcesProvider resourcesProvider) {
        return new ItemOptions(actionBarPopupWindowLayout, resourcesProvider);
    }

    private ItemOptions(ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout, Theme.ResourcesProvider resourcesProvider) {
        this.gravity = 5;
        this.point = new float[2];
        this.drawScrim = true;
        this.viewAdditionalOffsets = new android.graphics.Rect();
        this.discardScrolls = true;
        this.dismissOnMoveOutside = false;
        this.dismissWithButtons = true;
        this.shiftDp = -4;
        this.context = actionBarPopupWindowLayout.getContext();
        LinearLayout linearLayout = new LinearLayout(this.context);
        this.linearLayout = linearLayout;
        linearLayout.setOrientation(1);
        this.resourcesProvider = resourcesProvider;
    }

    private void init() {
        ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = new ActionBarPopupWindow.ActionBarPopupWindowLayout(this.context, C2484R.drawable.popup_fixed_alert4, this.resourcesProvider, (this.swipeback ? 1 : 0) | (this.shownFromBottom ? 2 : 0) | (this.useScrollView ? 0 : 4)) { // from class: org.telegram.ui.Components.ItemOptions.1
            @Override // org.telegram.ui.ActionBar.ActionBarPopupWindow.ActionBarPopupWindowLayout, android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i, int i2) {
                if (this == ItemOptions.this.layout && ItemOptions.this.maxHeight > 0) {
                    i2 = View.MeasureSpec.makeMeasureSpec(Math.min(ItemOptions.this.maxHeight, View.MeasureSpec.getSize(i2)), View.MeasureSpec.getMode(i2));
                }
                super.onMeasure(i, i2);
            }
        };
        this.lastLayout = actionBarPopupWindowLayout;
        actionBarPopupWindowLayout.setDispatchKeyEventListener(new ActionBarPopupWindow.OnDispatchKeyEventListener() { // from class: org.telegram.ui.Components.ItemOptions$$ExternalSyntheticLambda0
            @Override // org.telegram.ui.ActionBar.ActionBarPopupWindow.OnDispatchKeyEventListener
            public final void onDispatchKeyEvent(KeyEvent keyEvent) {
                this.f$0.lambda$init$0(keyEvent);
            }
        });
        this.layout = this.lastLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$init$0(KeyEvent keyEvent) {
        ActionBarPopupWindow actionBarPopupWindow;
        if (keyEvent.getKeyCode() == 4 && keyEvent.getRepeatCount() == 0 && (actionBarPopupWindow = this.actionBarPopupWindow) != null && actionBarPopupWindow.isShowing()) {
            dismiss();
        }
    }

    public ItemOptions makeSwipeback() {
        return makeSwipeback(false);
    }

    public ItemOptions makeSwipeback(boolean z) {
        ItemOptions itemOptions = new ItemOptions(this.lastLayout, this.resourcesProvider);
        if (z) {
            ScrollView scrollView = new ScrollView(this.context) { // from class: org.telegram.ui.Components.ItemOptions.2
                @Override // android.widget.ScrollView, android.widget.FrameLayout, android.view.View
                protected void onMeasure(int i, int i2) {
                    super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(Math.min(AndroidUtilities.dp(380.0f), View.MeasureSpec.getSize(i2)), View.MeasureSpec.getMode(i2)));
                }
            };
            scrollView.setVerticalScrollBarEnabled(false);
            scrollView.addView(itemOptions.linearLayout, LayoutHelper.createScroll(-1, -2, 48));
            itemOptions.foregroundIndex = this.lastLayout.addViewToSwipeBack(scrollView);
        } else {
            itemOptions.foregroundIndex = this.lastLayout.addViewToSwipeBack(itemOptions.linearLayout);
        }
        if (this.lastLayout.getSwipeBack() != null) {
            this.lastLayout.getSwipeBack().addOnSwipeBackProgressListener(new PopupSwipeBackLayout.OnSwipeBackProgressListener() { // from class: org.telegram.ui.Components.ItemOptions$$ExternalSyntheticLambda1
                @Override // org.telegram.ui.Components.PopupSwipeBackLayout.OnSwipeBackProgressListener
                public final void onSwipeBackProgress(PopupSwipeBackLayout popupSwipeBackLayout, float f, float f2) {
                    this.f$0.lambda$makeSwipeback$1(popupSwipeBackLayout, f, f2);
                }
            });
        }
        return itemOptions;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$makeSwipeback$1(PopupSwipeBackLayout popupSwipeBackLayout, float f, float f2) {
        if ((f == 0.0f && f2 == 0.0f) || (f == 1.0f && f2 == 1.0f)) {
            this.dontDismiss = false;
        }
    }

    public LinearLayout getLinearLayout() {
        return this.linearLayout;
    }

    public void openSwipeback(ItemOptions itemOptions) {
        dontDismiss();
        this.lastLayout.getSwipeBack().openForeground(itemOptions.foregroundIndex);
    }

    public void closeSwipeback() {
        dontDismiss();
        this.lastLayout.getSwipeBack().closeForeground();
    }

    public ItemOptions setSwipebackGravity(boolean z, boolean z2) {
        this.overridenSwipebackGravity = true;
        ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = this.lastLayout;
        actionBarPopupWindowLayout.swipeBackGravityRight = z;
        actionBarPopupWindowLayout.swipeBackGravityBottom = z2;
        return this;
    }

    public ItemOptions setScaleOut(boolean z) {
        this.scaleOut = z;
        return this;
    }

    public ItemOptions ignoreX() {
        this.ignoreX = true;
        return this;
    }

    public ItemOptions addIf(boolean z, int i, CharSequence charSequence, boolean z2, Runnable runnable) {
        return !z ? this : add(i, charSequence, z2, runnable);
    }

    public ItemOptions addIf(boolean z, int i, CharSequence charSequence, Runnable runnable) {
        return !z ? this : add(i, charSequence, Theme.key_actionBarDefaultSubmenuItemIcon, Theme.key_actionBarDefaultSubmenuItem, runnable);
    }

    public ItemOptions addIf(boolean z, int i, Drawable drawable, CharSequence charSequence, Runnable runnable) {
        return !z ? this : add(i, drawable, charSequence, Theme.key_actionBarDefaultSubmenuItemIcon, Theme.key_actionBarDefaultSubmenuItem, runnable);
    }

    public ItemOptions add(CharSequence charSequence, Runnable runnable) {
        return add(0, charSequence, false, runnable);
    }

    public ItemOptions add(int i, CharSequence charSequence, Runnable runnable) {
        return add(i, charSequence, false, runnable);
    }

    public ItemOptions add(Drawable drawable, CharSequence charSequence, Runnable runnable) {
        return add(0, drawable, charSequence, Theme.key_actionBarDefaultSubmenuItemIcon, Theme.key_actionBarDefaultSubmenuItem, runnable);
    }

    public ItemOptions add(int i, CharSequence charSequence, boolean z, Runnable runnable) {
        return add(i, charSequence, z ? Theme.key_text_RedRegular : Theme.key_actionBarDefaultSubmenuItemIcon, z ? Theme.key_text_RedRegular : Theme.key_actionBarDefaultSubmenuItem, runnable);
    }

    public ItemOptions add(int i, CharSequence charSequence, int i2, Runnable runnable) {
        return add(i, charSequence, i2, i2, runnable);
    }

    public ItemOptions add(int i, CharSequence charSequence, int i2, int i3, Runnable runnable) {
        return add(i, null, charSequence, i2, i3, runnable);
    }

    public ItemOptions add(int i, Drawable drawable, CharSequence charSequence, int i2, int i3, final Runnable runnable) {
        if (this.context == null) {
            return this;
        }
        ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem(this.context, false, false, this.resourcesProvider);
        actionBarMenuSubItem.setPadding(AndroidUtilities.dp(18.0f), 0, AndroidUtilities.dp(18.0f), 0);
        if (i != 0 || drawable != null) {
            actionBarMenuSubItem.setTextAndIcon(charSequence, i, drawable);
        } else {
            actionBarMenuSubItem.setText(charSequence);
        }
        Integer num = this.textColor;
        int iIntValue = num != null ? num.intValue() : Theme.getColor(i3, this.resourcesProvider);
        Integer num2 = this.iconColor;
        actionBarMenuSubItem.setColors(iIntValue, num2 != null ? num2.intValue() : Theme.getColor(i2, this.resourcesProvider));
        Integer num3 = this.selectorColor;
        actionBarMenuSubItem.setSelectorColor(num3 != null ? num3.intValue() : Theme.multAlpha(Theme.getColor(i3, this.resourcesProvider), 0.12f));
        actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ItemOptions$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$add$2(runnable, view);
            }
        });
        int i4 = this.minWidthDp;
        if (i4 > 0) {
            actionBarMenuSubItem.setMinimumWidth(AndroidUtilities.dp(i4));
            addView(actionBarMenuSubItem, LayoutHelper.createLinear(this.minWidthDp, -2));
            return this;
        }
        addView(actionBarMenuSubItem, LayoutHelper.createLinear(-1, -2));
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$add$2(Runnable runnable, View view) {
        if (runnable != null) {
            runnable.run();
        }
        if (this.dismissWithButtons) {
            dismiss();
        }
    }

    public ActionBarMenuSubItem add() {
        ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem(this.context, false, false, this.resourcesProvider);
        add(actionBarMenuSubItem);
        return actionBarMenuSubItem;
    }

    public ItemOptions add(ActionBarMenuSubItem actionBarMenuSubItem) {
        AndroidUtilities.removeFromParent(actionBarMenuSubItem);
        actionBarMenuSubItem.setPadding(AndroidUtilities.dp(18.0f), 0, AndroidUtilities.dp(18.0f), 0);
        Integer num = this.textColor;
        int iIntValue = num != null ? num.intValue() : Theme.getColor(Theme.key_actionBarDefaultSubmenuItem, this.resourcesProvider);
        Integer num2 = this.iconColor;
        actionBarMenuSubItem.setColors(iIntValue, num2 != null ? num2.intValue() : Theme.getColor(Theme.key_actionBarDefaultSubmenuItemIcon, this.resourcesProvider));
        actionBarMenuSubItem.setSelectorColor(Theme.getColor(Theme.key_groupcreate_sectionText, this.resourcesProvider));
        Integer num3 = this.selectorColor;
        actionBarMenuSubItem.setSelectorColor(num3 != null ? num3.intValue() : Theme.multAlpha(Theme.getColor(Theme.key_actionBarDefaultSubmenuItem, this.resourcesProvider), 0.12f));
        int i = this.minWidthDp;
        if (i > 0) {
            actionBarMenuSubItem.setMinimumWidth(AndroidUtilities.dp(i));
            addView(actionBarMenuSubItem, LayoutHelper.createLinear(this.minWidthDp, -2));
            return this;
        }
        addView(actionBarMenuSubItem, LayoutHelper.createLinear(-1, -2));
        return this;
    }

    public ItemOptions addChecked(boolean z, CharSequence charSequence, Runnable runnable) {
        return addChecked(z, charSequence, runnable, null);
    }

    public ItemOptions addChecked(boolean z, CharSequence charSequence, final Runnable runnable, final Runnable runnable2) {
        if (this.context == null) {
            return this;
        }
        int i = Theme.key_actionBarDefaultSubmenuItem;
        int i2 = Theme.key_actionBarDefaultSubmenuItemIcon;
        ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem(this.context, true, false, false, this.resourcesProvider);
        actionBarMenuSubItem.setPadding(AndroidUtilities.dp(18.0f), 0, AndroidUtilities.dp(18.0f), 0);
        actionBarMenuSubItem.setText(charSequence);
        actionBarMenuSubItem.setChecked(z);
        Integer num = this.textColor;
        int iIntValue = num != null ? num.intValue() : Theme.getColor(i, this.resourcesProvider);
        Integer num2 = this.iconColor;
        actionBarMenuSubItem.setColors(iIntValue, num2 != null ? num2.intValue() : Theme.getColor(i2, this.resourcesProvider));
        Integer num3 = this.selectorColor;
        actionBarMenuSubItem.setSelectorColor(num3 != null ? num3.intValue() : Theme.multAlpha(Theme.getColor(i, this.resourcesProvider), 0.12f));
        actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ItemOptions$$ExternalSyntheticLambda7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$addChecked$3(runnable, view);
            }
        });
        if (runnable2 != null) {
            actionBarMenuSubItem.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.Components.ItemOptions$$ExternalSyntheticLambda8
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    return this.f$0.lambda$addChecked$4(runnable2, view);
                }
            });
        }
        int i3 = this.minWidthDp;
        if (i3 > 0) {
            actionBarMenuSubItem.setMinimumWidth(AndroidUtilities.dp(i3));
            addView(actionBarMenuSubItem, LayoutHelper.createLinear(this.minWidthDp, -2));
            return this;
        }
        addView(actionBarMenuSubItem, LayoutHelper.createLinear(-1, -2));
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addChecked$3(Runnable runnable, View view) {
        if (runnable != null) {
            runnable.run();
        }
        if (this.dismissWithButtons) {
            dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$addChecked$4(Runnable runnable, View view) {
        if (runnable != null) {
            runnable.run();
        }
        if (!this.dismissWithButtons) {
            return true;
        }
        dismiss();
        return true;
    }

    public ActionBarMenuSubItem addChecked() {
        int i = Theme.key_actionBarDefaultSubmenuItem;
        int i2 = Theme.key_actionBarDefaultSubmenuItemIcon;
        ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem(this.context, true, false, false, this.resourcesProvider);
        actionBarMenuSubItem.setPadding(AndroidUtilities.dp(18.0f), 0, AndroidUtilities.dp(18.0f), 0);
        Integer num = this.textColor;
        int iIntValue = num != null ? num.intValue() : Theme.getColor(i, this.resourcesProvider);
        Integer num2 = this.iconColor;
        actionBarMenuSubItem.setColors(iIntValue, num2 != null ? num2.intValue() : Theme.getColor(i2, this.resourcesProvider));
        Integer num3 = this.selectorColor;
        actionBarMenuSubItem.setSelectorColor(num3 != null ? num3.intValue() : Theme.multAlpha(Theme.getColor(i, this.resourcesProvider), 0.12f));
        int i3 = this.minWidthDp;
        if (i3 > 0) {
            actionBarMenuSubItem.setMinimumWidth(AndroidUtilities.dp(i3));
            addView(actionBarMenuSubItem, LayoutHelper.createLinear(this.minWidthDp, -2));
            return actionBarMenuSubItem;
        }
        addView(actionBarMenuSubItem, LayoutHelper.createLinear(-1, -2));
        return actionBarMenuSubItem;
    }

    public ItemOptions setDismissWithButtons(boolean z) {
        this.dismissWithButtons = z;
        return this;
    }

    public ItemOptions addBot(TLRPC.TL_attachMenuBot tL_attachMenuBot, final Runnable runnable, final Runnable runnable2) {
        CharSequence charSequenceApplyNewSpan;
        if (this.context == null) {
            return this;
        }
        int i = Theme.key_actionBarDefaultSubmenuItemIcon;
        int i2 = Theme.key_actionBarDefaultSubmenuItem;
        ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem(this.context, false, false, this.resourcesProvider);
        actionBarMenuSubItem.setPadding(AndroidUtilities.dp(18.0f), 0, AndroidUtilities.dp(18.0f), 0);
        if (tL_attachMenuBot.side_menu_disclaimer_needed) {
            charSequenceApplyNewSpan = TextCell.applyNewSpan(tL_attachMenuBot.short_name);
        } else {
            charSequenceApplyNewSpan = tL_attachMenuBot.short_name;
        }
        TLRPC.TL_attachMenuBotIcon sideAttachMenuBotIcon = MediaDataController.getSideAttachMenuBotIcon(tL_attachMenuBot);
        if (tL_attachMenuBot.bot_id == 1985737506) {
            actionBarMenuSubItem.setTextAndIcon(charSequenceApplyNewSpan, C2484R.drawable.menu_wallet);
        } else if (sideAttachMenuBotIcon != null) {
            Drawable svgThumb = DocumentObject.getSvgThumb(sideAttachMenuBotIcon.icon.thumbs, Theme.key_emptyListPlaceholder, 0.2f);
            if (svgThumb == null) {
                svgThumb = getContext().getResources().getDrawable(C2484R.drawable.msg_bot).mutate();
            }
            Drawable drawable = svgThumb;
            Integer num = this.iconColor;
            drawable.setColorFilter(new PorterDuffColorFilter(num != null ? num.intValue() : Theme.getColor(i, this.resourcesProvider), PorterDuff.Mode.SRC_IN));
            actionBarMenuSubItem.setTextAndIcon(charSequenceApplyNewSpan, ImageLocation.getForDocument(sideAttachMenuBotIcon.icon), "24_24", drawable, tL_attachMenuBot);
            actionBarMenuSubItem.setImageSize(24, 24);
        } else {
            actionBarMenuSubItem.setTextAndIcon(charSequenceApplyNewSpan, C2484R.drawable.msg_bot);
        }
        Integer num2 = this.textColor;
        int iIntValue = num2 != null ? num2.intValue() : Theme.getColor(i2, this.resourcesProvider);
        Integer num3 = this.iconColor;
        actionBarMenuSubItem.setColors(iIntValue, num3 != null ? num3.intValue() : Theme.getColor(i, this.resourcesProvider));
        Integer num4 = this.iconColor;
        actionBarMenuSubItem.setIconColorImage(num4 != null ? num4.intValue() : Theme.getColor(i, this.resourcesProvider));
        Integer num5 = this.selectorColor;
        actionBarMenuSubItem.setSelectorColor(num5 != null ? num5.intValue() : Theme.multAlpha(Theme.getColor(i2, this.resourcesProvider), 0.12f));
        actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ItemOptions$$ExternalSyntheticLambda13
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$addBot$5(runnable, view);
            }
        });
        actionBarMenuSubItem.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.Components.ItemOptions$$ExternalSyntheticLambda14
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return this.f$0.lambda$addBot$6(runnable2, view);
            }
        });
        int i3 = this.minWidthDp;
        if (i3 > 0) {
            actionBarMenuSubItem.setMinimumWidth(AndroidUtilities.dp(i3));
            addView(actionBarMenuSubItem, LayoutHelper.createLinear(this.minWidthDp, -2));
            return this;
        }
        addView(actionBarMenuSubItem, LayoutHelper.createLinear(-1, -2));
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addBot$5(Runnable runnable, View view) {
        if (runnable != null) {
            runnable.run();
        }
        if (this.dismissWithButtons) {
            dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$addBot$6(Runnable runnable, View view) {
        if (runnable != null) {
            runnable.run();
        }
        if (!this.dismissWithButtons) {
            return true;
        }
        dismiss();
        return true;
    }

    public ItemOptions addChat(TLObject tLObject, boolean z, final Runnable runnable) {
        if (this.context == null) {
            return this;
        }
        int i = Theme.key_actionBarDefaultSubmenuItem;
        int i2 = Theme.key_actionBarDefaultSubmenuItemIcon;
        ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem(this.context, false, false, this.resourcesProvider);
        actionBarMenuSubItem.setPadding(AndroidUtilities.dp(18.0f), 0, AndroidUtilities.dp(18.0f), 0);
        if (tLObject instanceof TLRPC.Chat) {
            TLRPC.Chat chat = (TLRPC.Chat) tLObject;
            actionBarMenuSubItem.setText(chat.title);
            actionBarMenuSubItem.setSubtext(ChatObject.isChannelAndNotMegaGroup(chat) ? LocaleController.getString(C2484R.string.DiscussChannel) : LocaleController.getString(C2484R.string.AccDescrGroup).toLowerCase());
        } else if (tLObject instanceof TLRPC.User) {
            TLRPC.User user = (TLRPC.User) tLObject;
            actionBarMenuSubItem.setText(UserObject.getUserName(user));
            if (user.id == UserConfig.getInstance(UserConfig.selectedAccount).getClientUserId()) {
                actionBarMenuSubItem.setSubtext(LocaleController.getString(C2484R.string.VoipGroupPersonalAccount));
            } else if (UserObject.isBot(user)) {
                actionBarMenuSubItem.setSubtext(LocaleController.getString(C2484R.string.Bot));
            }
        }
        actionBarMenuSubItem.setClipToPadding(false);
        actionBarMenuSubItem.textView.setPadding((actionBarMenuSubItem.checkViewLeft && actionBarMenuSubItem.checkView == null) ? 0 : AndroidUtilities.dp(43.0f), 0, (!actionBarMenuSubItem.checkViewLeft && actionBarMenuSubItem.checkView == null) ? 0 : AndroidUtilities.dp(43.0f), 0);
        actionBarMenuSubItem.subtextView.setPadding(actionBarMenuSubItem.textView.getPaddingLeft(), 0, actionBarMenuSubItem.textView.getPaddingRight(), 0);
        BackupImageView backupImageView = new BackupImageView(this.context);
        AvatarDrawable avatarDrawable = new AvatarDrawable();
        avatarDrawable.setInfo(tLObject);
        backupImageView.setRoundRadius(AndroidUtilities.dp(34.0f));
        backupImageView.setForUserOrChat(tLObject, avatarDrawable);
        backupImageView.setScaleX(z ? 0.84f : 1.0f);
        backupImageView.setScaleY(z ? 0.84f : 1.0f);
        actionBarMenuSubItem.addView(backupImageView, LayoutHelper.createFrame(34, 34.0f, (LocaleController.isRTL ? 5 : 3) | 16, -5.0f, 0.0f, -5.0f, 0.0f));
        if (z) {
            View view = new View(this.context);
            view.setBackground(Theme.createOutlineCircleDrawable(AndroidUtilities.dp(34.0f), Theme.getColor(Theme.key_featuredStickers_addButton, this.resourcesProvider), AndroidUtilities.dp(2.0f)));
            actionBarMenuSubItem.addView(view, LayoutHelper.createFrame(36.0f, 36.0f, (LocaleController.isRTL ? 5 : 3) | 16, -6.0f, 0.0f, -5.0f, 0.0f));
        }
        Integer num = this.textColor;
        int iIntValue = num != null ? num.intValue() : Theme.getColor(i, this.resourcesProvider);
        Integer num2 = this.iconColor;
        actionBarMenuSubItem.setColors(iIntValue, num2 != null ? num2.intValue() : Theme.getColor(i2, this.resourcesProvider));
        Integer num3 = this.selectorColor;
        actionBarMenuSubItem.setSelectorColor(num3 != null ? num3.intValue() : Theme.multAlpha(Theme.getColor(i, this.resourcesProvider), 0.12f));
        actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ItemOptions$$ExternalSyntheticLambda15
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$addChat$7(runnable, view2);
            }
        });
        int i3 = this.minWidthDp;
        if (i3 > 0) {
            actionBarMenuSubItem.setMinimumWidth(AndroidUtilities.dp(i3));
            addView(actionBarMenuSubItem, LayoutHelper.createLinear(this.minWidthDp, -2));
            return this;
        }
        addView(actionBarMenuSubItem, LayoutHelper.createLinear(-1, -2));
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addChat$7(Runnable runnable, View view) {
        if (runnable != null) {
            runnable.run();
        }
        if (this.dismissWithButtons) {
            dismiss();
        }
    }

    public ItemOptions addAccount(int i, boolean z, final Runnable runnable) {
        if (this.context == null) {
            return this;
        }
        int i2 = Theme.key_actionBarDefaultSubmenuItem;
        int i3 = Theme.key_actionBarDefaultSubmenuItemIcon;
        TLRPC.User currentUser = UserConfig.getInstance(i).getCurrentUser();
        ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem(this.context, false, false, this.resourcesProvider);
        actionBarMenuSubItem.setPadding(AndroidUtilities.dp(18.0f), 0, AndroidUtilities.dp(18.0f), 0);
        actionBarMenuSubItem.setText(UserObject.getUserName(currentUser));
        actionBarMenuSubItem.setClipToPadding(false);
        actionBarMenuSubItem.textView.setPadding((actionBarMenuSubItem.checkViewLeft && actionBarMenuSubItem.checkView == null) ? 0 : AndroidUtilities.dp(43.0f), 0, (!actionBarMenuSubItem.checkViewLeft && actionBarMenuSubItem.checkView == null) ? 0 : AndroidUtilities.dp(43.0f), 0);
        BackupImageView backupImageView = new BackupImageView(this.context);
        backupImageView.getImageReceiver().setCurrentAccount(i);
        AvatarDrawable avatarDrawable = new AvatarDrawable();
        avatarDrawable.setInfo(currentUser);
        backupImageView.setRoundRadius(AndroidUtilities.dp(34.0f));
        backupImageView.setForUserOrChat(currentUser, avatarDrawable);
        backupImageView.setScaleX(z ? 0.84f : 1.0f);
        backupImageView.setScaleY(z ? 0.84f : 1.0f);
        actionBarMenuSubItem.addView(backupImageView, LayoutHelper.createFrame(34, 34.0f, (LocaleController.isRTL ? 5 : 3) | 16, -5.0f, 0.0f, -5.0f, 0.0f));
        if (z) {
            View view = new View(this.context);
            view.setBackground(Theme.createOutlineCircleDrawable(AndroidUtilities.dp(34.0f), Theme.getColor(Theme.key_featuredStickers_addButton, this.resourcesProvider), AndroidUtilities.dp(2.0f)));
            actionBarMenuSubItem.addView(view, LayoutHelper.createFrame(36.0f, 36.0f, (LocaleController.isRTL ? 5 : 3) | 16, -6.0f, 0.0f, -5.0f, 0.0f));
        }
        Integer num = this.textColor;
        int iIntValue = num != null ? num.intValue() : Theme.getColor(i2, this.resourcesProvider);
        Integer num2 = this.iconColor;
        actionBarMenuSubItem.setColors(iIntValue, num2 != null ? num2.intValue() : Theme.getColor(i3, this.resourcesProvider));
        Integer num3 = this.selectorColor;
        actionBarMenuSubItem.setSelectorColor(num3 != null ? num3.intValue() : Theme.multAlpha(Theme.getColor(i2, this.resourcesProvider), 0.12f));
        actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ItemOptions$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$addAccount$8(runnable, view2);
            }
        });
        int i4 = this.minWidthDp;
        if (i4 > 0) {
            actionBarMenuSubItem.setMinimumWidth(AndroidUtilities.dp(i4));
            addView(actionBarMenuSubItem, LayoutHelper.createLinear(this.minWidthDp, -2));
            return this;
        }
        addView(actionBarMenuSubItem, LayoutHelper.createLinear(-1, -2));
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addAccount$8(Runnable runnable, View view) {
        if (runnable != null) {
            runnable.run();
        }
        if (this.dismissWithButtons) {
            dismiss();
        }
    }

    public ItemOptions add(CharSequence charSequence, CharSequence charSequence2, final Runnable runnable) {
        if (this.context == null) {
            return this;
        }
        ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem(this.context, false, false, this.resourcesProvider);
        actionBarMenuSubItem.setPadding(AndroidUtilities.dp(18.0f), 0, AndroidUtilities.dp(18.0f), 0);
        actionBarMenuSubItem.setText(charSequence);
        actionBarMenuSubItem.setSubtext(charSequence2);
        Integer num = this.textColor;
        int iIntValue = num != null ? num.intValue() : Theme.getColor(Theme.key_actionBarDefaultSubmenuItem, this.resourcesProvider);
        Integer num2 = this.iconColor;
        actionBarMenuSubItem.setColors(iIntValue, num2 != null ? num2.intValue() : Theme.getColor(Theme.key_actionBarDefaultSubmenuItemIcon, this.resourcesProvider));
        Integer num3 = this.selectorColor;
        actionBarMenuSubItem.setSelectorColor(num3 != null ? num3.intValue() : Theme.multAlpha(Theme.getColor(Theme.key_actionBarDefaultSubmenuItem, this.resourcesProvider), 0.12f));
        actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ItemOptions$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$add$9(runnable, view);
            }
        });
        int i = this.minWidthDp;
        if (i > 0) {
            actionBarMenuSubItem.setMinimumWidth(AndroidUtilities.dp(i));
            addView(actionBarMenuSubItem, LayoutHelper.createLinear(this.minWidthDp, -2));
            return this;
        }
        addView(actionBarMenuSubItem, LayoutHelper.createLinear(-1, -2));
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$add$9(Runnable runnable, View view) {
        if (runnable != null) {
            runnable.run();
        }
        if (this.dismissWithButtons) {
            dismiss();
        }
    }

    public ItemOptions makeMultiline(boolean z) {
        if (this.context != null && this.lastLayout.getItemsCount() > 0) {
            View itemAt = this.lastLayout.getItemAt(r0.getItemsCount() - 1);
            if (itemAt instanceof ActionBarMenuSubItem) {
                ((ActionBarMenuSubItem) itemAt).setMultiline(z);
            }
        }
        return this;
    }

    public ItemOptions cutTextInFancyHalf() {
        if (this.context != null && this.lastLayout.getItemsCount() > 0) {
            View itemAt = this.lastLayout.getItemAt(r0.getItemsCount() - 1);
            if (itemAt instanceof ActionBarMenuSubItem) {
                AnimatedEmojiSpan.TextViewEmojis textView = ((ActionBarMenuSubItem) itemAt).getTextView();
                textView.setMaxWidth(HintView2.cutInFancyHalf(textView.getText(), textView.getPaint()) + textView.getPaddingLeft() + textView.getPaddingRight());
            }
        }
        return this;
    }

    public ItemOptions putPremiumLock(final Runnable runnable) {
        if (runnable != null && this.context != null && this.lastLayout.getItemsCount() > 0) {
            View itemAt = this.lastLayout.getItemAt(r0.getItemsCount() - 1);
            if (itemAt instanceof ActionBarMenuSubItem) {
                ActionBarMenuSubItem actionBarMenuSubItem = (ActionBarMenuSubItem) itemAt;
                actionBarMenuSubItem.setRightIcon(C2484R.drawable.msg_mini_lock3);
                actionBarMenuSubItem.getRightIcon().setAlpha(0.4f);
                actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ItemOptions$$ExternalSyntheticLambda12
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$putPremiumLock$10(runnable, view);
                    }
                });
            }
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$putPremiumLock$10(Runnable runnable, View view) {
        if (runnable != null) {
            int i = -this.shiftDp;
            this.shiftDp = i;
            AndroidUtilities.shakeViewSpring(view, i);
            BotWebViewVibrationEffect.APP_ERROR.vibrate();
            runnable.run();
        }
    }

    public ItemOptions putCheck() {
        if (this.context != null && this.lastLayout.getItemsCount() > 0) {
            View itemAt = this.lastLayout.getItemAt(r0.getItemsCount() - 1);
            if (itemAt instanceof ActionBarMenuSubItem) {
                ActionBarMenuSubItem actionBarMenuSubItem = (ActionBarMenuSubItem) itemAt;
                actionBarMenuSubItem.setRightIcon(C2484R.drawable.msg_text_check);
                actionBarMenuSubItem.getRightIcon().setColorFilter(-1, PorterDuff.Mode.MULTIPLY);
                actionBarMenuSubItem.getRightIcon().setScaleX(0.85f);
                actionBarMenuSubItem.getRightIcon().setScaleY(0.85f);
            }
        }
        return this;
    }

    public ItemOptions addGapIf(boolean z) {
        return !z ? this : addGap();
    }

    public ItemOptions addGap() {
        if (getLastView() instanceof ActionBarPopupWindow.GapView) {
            return this;
        }
        ActionBarPopupWindow.GapView gapView = new ActionBarPopupWindow.GapView(this.context, this.resourcesProvider);
        gapView.setTag(C2484R.id.fit_width_tag, 1);
        Integer num = this.gapBackgroundColor;
        if (num != null) {
            gapView.setColor(num.intValue());
        }
        addView(gapView, LayoutHelper.createLinear(-1, 8));
        return this;
    }

    public ItemOptions addSpaceGap() {
        if (!(this.layout instanceof LinearLayout)) {
            LinearLayout linearLayout = new LinearLayout(this.context);
            this.layout = linearLayout;
            linearLayout.setOrientation(1);
            this.layout.addView(this.lastLayout, LayoutHelper.createLinear(-1, -2));
        }
        ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = new ActionBarPopupWindow.ActionBarPopupWindowLayout(this.context, this.resourcesProvider);
        this.lastLayout = actionBarPopupWindowLayout;
        actionBarPopupWindowLayout.setDispatchKeyEventListener(new ActionBarPopupWindow.OnDispatchKeyEventListener() { // from class: org.telegram.ui.Components.ItemOptions$$ExternalSyntheticLambda9
            @Override // org.telegram.ui.ActionBar.ActionBarPopupWindow.OnDispatchKeyEventListener
            public final void onDispatchKeyEvent(KeyEvent keyEvent) {
                this.f$0.lambda$addSpaceGap$11(keyEvent);
            }
        });
        this.layout.addView(this.lastLayout, LayoutHelper.createLinear(-1, -2, 0.0f, -8.0f, 0.0f, 0.0f));
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addSpaceGap$11(KeyEvent keyEvent) {
        ActionBarPopupWindow actionBarPopupWindow;
        if (keyEvent.getKeyCode() == 4 && keyEvent.getRepeatCount() == 0 && (actionBarPopupWindow = this.actionBarPopupWindow) != null && actionBarPopupWindow.isShowing()) {
            dismiss();
        }
    }

    public ItemOptions addView(View view) {
        if (view == null) {
            return this;
        }
        view.setTag(C2484R.id.fit_width_tag, 1);
        addView(view, LayoutHelper.createLinear(-1, -2));
        return this;
    }

    public ItemOptions addView(View view, LinearLayout.LayoutParams layoutParams) {
        if (view == null) {
            return this;
        }
        LinearLayout linearLayout = this.linearLayout;
        if (linearLayout != null) {
            linearLayout.addView(view, layoutParams);
            return this;
        }
        this.lastLayout.addView(view, layoutParams);
        return this;
    }

    public ItemOptions addProfile(TLObject tLObject, CharSequence charSequence, final Runnable runnable) {
        FrameLayout frameLayout = new FrameLayout(this.context);
        frameLayout.setBackground(Theme.createRadSelectorDrawable(Theme.getColor(Theme.key_listSelector, this.resourcesProvider), 0, 12));
        BackupImageView backupImageView = new BackupImageView(this.context);
        backupImageView.setRoundRadius(AndroidUtilities.dp(17.0f));
        AvatarDrawable avatarDrawable = new AvatarDrawable();
        avatarDrawable.setInfo(tLObject);
        backupImageView.setForUserOrChat(tLObject, avatarDrawable);
        frameLayout.addView(backupImageView, LayoutHelper.createFrame(34, 34.0f, 19, 13.0f, 0.0f, 0.0f, 0.0f));
        TextView textView = new TextView(this.context);
        textView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack, this.resourcesProvider));
        textView.setTextSize(1, 16.0f);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setSingleLine(true);
        if (tLObject instanceof TLRPC.User) {
            textView.setText(UserObject.getUserName((TLRPC.User) tLObject));
        } else if (tLObject instanceof TLRPC.Chat) {
            textView.setText(((TLRPC.Chat) tLObject).title);
        }
        frameLayout.addView(textView, LayoutHelper.createFrame(-2, -2.0f, 55, 59.0f, 6.0f, 16.0f, 0.0f));
        TextView textView2 = new TextView(this.context);
        textView2.setTextColor(Theme.getColor(Theme.key_dialogTextGray2, this.resourcesProvider));
        textView2.setTextSize(1, 13.0f);
        textView2.setText(AndroidUtilities.replaceArrows(charSequence, false, AndroidUtilities.dp(1.0f), AndroidUtilities.dp(0.66f)));
        frameLayout.addView(textView2, LayoutHelper.createFrame(-2, -2.0f, 55, 59.0f, 27.0f, 16.0f, 0.0f));
        frameLayout.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ItemOptions$$ExternalSyntheticLambda10
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$addProfile$13(runnable, view);
            }
        });
        addView(frameLayout, LayoutHelper.createLinear(-1, 52));
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addProfile$13(Runnable runnable, View view) {
        dismiss();
        if (runnable != null) {
            runnable.run();
        }
    }

    public ItemOptions addText(CharSequence charSequence, int i) {
        return addText(charSequence, i, -1);
    }

    public ItemOptions addText(CharSequence charSequence, int i, int i2) {
        return addText(charSequence, i, null, i2);
    }

    public ItemOptions addText(CharSequence charSequence, int i, Typeface typeface, int i2) {
        TextView textView = new TextView(this.context) { // from class: org.telegram.ui.Components.ItemOptions.3
            @Override // android.widget.TextView, android.view.View
            protected void onMeasure(int i3, int i4) {
                super.onMeasure(i3, i4);
            }
        };
        textView.setTextSize(1, i);
        textView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack, this.resourcesProvider));
        textView.setPadding(AndroidUtilities.dp(13.0f), AndroidUtilities.dp(8.0f), AndroidUtilities.dp(13.0f), AndroidUtilities.dp(8.0f));
        textView.setText(Emoji.replaceEmoji(charSequence, textView.getPaint().getFontMetricsInt(), false));
        textView.setTag(C2484R.id.fit_width_tag, 1);
        textView.setTypeface(typeface);
        NotificationCenter.listenEmojiLoading(textView);
        if (i2 > 0) {
            textView.setMaxWidth(i2);
        }
        addView(textView, LayoutHelper.createLinear(-1, -2));
        return this;
    }

    public ItemOptions setScrimViewBackground(Drawable drawable) {
        this.scrimViewBackground = drawable;
        this.scrimViewBackgroundShadowColor = 0;
        if ((drawable instanceof ShapeDrawable) && Build.VERSION.SDK_INT >= 29) {
            this.scrimViewBackgroundShadowColor = ((ShapeDrawable) drawable).getPaint().getShadowLayerColor();
        }
        return this;
    }

    public ItemOptions allowMoveScrim() {
        this.allowMoveScrim = true;
        return this;
    }

    public ItemOptions allowMoveScrimGravity(int i) {
        this.allowMoveScrimGravity = i;
        return this;
    }

    public ItemOptions animateToSize(int i, int i2) {
        this.animateToWidth = i;
        this.animateToHeight = i2;
        return this;
    }

    public ItemOptions hideScrimUnder() {
        this.hideScrimUnder = true;
        return this;
    }

    public ItemOptions setGravity(int i) {
        this.gravity = i;
        if (i == 5 && this.swipeback) {
            ViewGroup viewGroup = this.layout;
            if (viewGroup instanceof ActionBarPopupWindow.ActionBarPopupWindowLayout) {
                ((ActionBarPopupWindow.ActionBarPopupWindowLayout) viewGroup).swipeBackGravityRight = true;
            }
        }
        return this;
    }

    public ItemOptions translate(float f, float f2) {
        this.translateX += f;
        this.translateY += f2;
        return this;
    }

    public ItemOptions needsFocus() {
        this.needsFocus = true;
        return this;
    }

    public ItemOptions setMinWidth(int i) {
        this.minWidthDp = i;
        return this;
    }

    public ItemOptions setFixedWidth(int i) {
        this.fixedWidthDp = i;
        return this;
    }

    public ItemOptions setDimAlpha(int i) {
        this.dimAlpha = i;
        return this;
    }

    public ItemOptions setDrawScrim(boolean z) {
        this.drawScrim = z;
        return this;
    }

    public ItemOptions forceTop(boolean z) {
        this.forceTop = z;
        return this;
    }

    public ItemOptions allowCenter(boolean z) {
        this.allowCenter = z;
        return this;
    }

    public ItemOptions forceBottom(boolean z) {
        this.forceBottom = z;
        return this;
    }

    public ItemOptions forceBelowScrim(boolean z) {
        this.forceBelowScrim = z;
        return this;
    }

    public ItemOptions setMaxHeight(int i) {
        this.maxHeight = i;
        return this;
    }

    public ItemOptions setOnTopOfScrim() {
        this.onTopOfScrim = true;
        return this;
    }

    public ActionBarMenuSubItem getLast() {
        LinearLayout linearLayout = this.linearLayout;
        if (linearLayout != null) {
            if (linearLayout.getChildCount() <= 0) {
                return null;
            }
            View childAt = this.linearLayout.getChildAt(r0.getChildCount() - 1);
            if (childAt instanceof ActionBarMenuSubItem) {
                return (ActionBarMenuSubItem) childAt;
            }
            return null;
        }
        ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = this.lastLayout;
        if (actionBarPopupWindowLayout == null || actionBarPopupWindowLayout.getItemsCount() <= 0) {
            return null;
        }
        View itemAt = this.lastLayout.getItemAt(r0.getItemsCount() - 1);
        if (itemAt instanceof ActionBarMenuSubItem) {
            return (ActionBarMenuSubItem) itemAt;
        }
        return null;
    }

    public View getLastView() {
        LinearLayout linearLayout = this.linearLayout;
        if (linearLayout != null) {
            if (linearLayout.getChildCount() <= 0) {
                return null;
            }
            return this.linearLayout.getChildAt(r0.getChildCount() - 1);
        }
        ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = this.lastLayout;
        if (actionBarPopupWindowLayout == null || actionBarPopupWindowLayout.getItemsCount() <= 0) {
            return null;
        }
        return this.lastLayout.getItemAt(r0.getItemsCount() - 1);
    }

    public ViewGroup getLayout() {
        return this.layout;
    }

    public ItemOptions setBlurBackground(BlurringShader.BlurManager blurManager, float f, float f2) {
        Drawable drawableMutate = this.context.getResources().getDrawable(C2484R.drawable.popup_fixed_alert2).mutate();
        ViewGroup viewGroup = this.layout;
        if (viewGroup instanceof ActionBarPopupWindow.ActionBarPopupWindowLayout) {
            viewGroup.setBackground(new BlurringShader.StoryBlurDrawer(blurManager, viewGroup, 5).makeDrawable(this.offsetX + f + this.layout.getX(), this.offsetY + f2 + this.layout.getY(), drawableMutate, AndroidUtilities.dp(12.0f)));
            return this;
        }
        for (int i = 0; i < this.layout.getChildCount(); i++) {
            View childAt = this.layout.getChildAt(i);
            if (childAt instanceof ActionBarPopupWindow.ActionBarPopupWindowLayout) {
                childAt.setBackground(new BlurringShader.StoryBlurDrawer(blurManager, childAt, 5).makeDrawable(this.offsetX + f + this.layout.getX() + childAt.getX(), this.offsetY + f2 + this.layout.getY() + childAt.getY(), drawableMutate, AndroidUtilities.dp(12.0f)));
            }
        }
        return this;
    }

    public int getItemsCount() {
        ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = this.lastLayout;
        int i = 0;
        if (actionBarPopupWindowLayout == null && this.layout == null) {
            return 0;
        }
        if (actionBarPopupWindowLayout == this.layout) {
            return actionBarPopupWindowLayout.getItemsCount();
        }
        int itemsCount = 0;
        while (i < this.layout.getChildCount() - 1) {
            View childAt = i == this.layout.getChildCount() + (-1) ? this.lastLayout : this.layout.getChildAt(i);
            if (childAt instanceof ActionBarPopupWindow.ActionBarPopupWindowLayout) {
                itemsCount += ((ActionBarPopupWindow.ActionBarPopupWindowLayout) childAt).getItemsCount();
            }
            i++;
        }
        return itemsCount;
    }

    public View getItemAt(int i) {
        ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = this.lastLayout;
        if (actionBarPopupWindowLayout == null && this.layout == null) {
            return null;
        }
        if (actionBarPopupWindowLayout == this.layout) {
            return actionBarPopupWindowLayout.getItemAt(i);
        }
        int i2 = 0;
        while (i2 < this.layout.getChildCount() - 1) {
            View childAt = i2 == this.layout.getChildCount() + (-1) ? this.lastLayout : this.layout.getChildAt(i2);
            if (childAt instanceof ActionBarPopupWindow.ActionBarPopupWindowLayout) {
                ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout2 = (ActionBarPopupWindow.ActionBarPopupWindowLayout) childAt;
                View itemAt = actionBarPopupWindowLayout2.getItemAt(i);
                if (itemAt != null) {
                    return itemAt;
                }
                i -= actionBarPopupWindowLayout2.getItemsCount();
            }
            i2++;
        }
        return null;
    }

    public void setupSelectors() {
        if (this.layout == null) {
            return;
        }
        int i = 0;
        while (i < this.layout.getChildCount()) {
            View childAt = i == this.layout.getChildCount() - 1 ? this.lastLayout : this.layout.getChildAt(i);
            if (childAt instanceof ActionBarPopupWindow.ActionBarPopupWindowLayout) {
                ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = (ActionBarPopupWindow.ActionBarPopupWindowLayout) childAt;
                if (actionBarPopupWindowLayout.getItemsCount() > 0) {
                    View itemAt = actionBarPopupWindowLayout.getItemAt(0);
                    View itemAt2 = actionBarPopupWindowLayout.getItemAt(actionBarPopupWindowLayout.getItemsCount() - 1);
                    if (itemAt instanceof ActionBarMenuSubItem) {
                        ((ActionBarMenuSubItem) itemAt).updateSelectorBackground(true, itemAt == itemAt2, 12);
                    } else if ((itemAt instanceof MessagePreviewView.ToggleButton) || (itemAt instanceof FrameLayout)) {
                        itemAt.setBackground(Theme.createRadSelectorDrawable(Theme.getColor(Theme.key_dialogButtonSelector, this.resourcesProvider), 12, itemAt == itemAt2 ? 12 : 0));
                    } else if (itemAt != null && (itemAt.getBackground() instanceof RippleDrawable)) {
                        itemAt.setBackground(Theme.createRadSelectorDrawable(Theme.getColor(Theme.key_dialogButtonSelector, this.resourcesProvider), 12, itemAt == itemAt2 ? 12 : 0));
                    }
                    if (itemAt2 instanceof ActionBarMenuSubItem) {
                        ((ActionBarMenuSubItem) itemAt2).updateSelectorBackground(itemAt2 == itemAt, true, 12);
                    } else if ((itemAt2 instanceof MessagePreviewView.ToggleButton) || (itemAt2 instanceof FrameLayout)) {
                        itemAt2.setBackground(Theme.createRadSelectorDrawable(Theme.getColor(Theme.key_dialogButtonSelector, this.resourcesProvider), itemAt == itemAt2 ? 12 : 0, 12));
                    } else if (itemAt2 != null && (itemAt2.getBackground() instanceof RippleDrawable)) {
                        itemAt2.setBackground(Theme.createRadSelectorDrawable(Theme.getColor(Theme.key_dialogButtonSelector, this.resourcesProvider), itemAt == itemAt2 ? 12 : 0, 12));
                    }
                }
            }
            i++;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:152:0x03b3 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:160:0x03c3  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0404  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0417  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ItemOptions show() {
        float f;
        float f2;
        int i;
        int width;
        int height;
        boolean z;
        DimView dimView;
        ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout;
        float x;
        float measuredWidth;
        float x2;
        DimView dimView2;
        if (this.actionBarPopupWindow == null && this.linearLayout == null) {
            if (getLastView() instanceof ActionBarPopupWindow.GapView) {
                AndroidUtilities.removeFromParent(getLastView());
            }
            if (getItemsCount() > 0) {
                setupSelectors();
                if (this.fixedWidthDp > 0) {
                    int i2 = 0;
                    while (i2 < this.layout.getChildCount() - 1) {
                        View childAt = i2 == this.layout.getChildCount() - 1 ? this.lastLayout : this.layout.getChildAt(i2);
                        if (childAt instanceof ActionBarPopupWindow.ActionBarPopupWindowLayout) {
                            ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout2 = (ActionBarPopupWindow.ActionBarPopupWindowLayout) childAt;
                            for (int i3 = 0; i3 < actionBarPopupWindowLayout2.getItemsCount(); i3++) {
                                actionBarPopupWindowLayout2.getItemAt(i3).getLayoutParams().width = AndroidUtilities.dp(this.fixedWidthDp);
                            }
                        }
                        i2++;
                    }
                } else if (this.minWidthDp > 0) {
                    int i4 = 0;
                    while (i4 < this.layout.getChildCount() - 1) {
                        View childAt2 = i4 == this.layout.getChildCount() - 1 ? this.lastLayout : this.layout.getChildAt(i4);
                        if (childAt2 instanceof ActionBarPopupWindow.ActionBarPopupWindowLayout) {
                            ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout3 = (ActionBarPopupWindow.ActionBarPopupWindowLayout) childAt2;
                            for (int i5 = 0; i5 < actionBarPopupWindowLayout3.getItemsCount(); i5++) {
                                actionBarPopupWindowLayout3.getItemAt(i5).setMinimumWidth(AndroidUtilities.dp(this.minWidthDp));
                            }
                        }
                        i4++;
                    }
                }
                ViewGroup overlayContainerView = this.container;
                if (overlayContainerView == null) {
                    overlayContainerView = this.fragment.getParentLayout().getOverlayContainerView();
                }
                final ViewGroup viewGroup = overlayContainerView;
                this.pointContainer = viewGroup;
                if (this.context != null && viewGroup != null) {
                    float f3 = AndroidUtilities.displaySize.y / 2.0f;
                    View view = this.scrimView;
                    if (view != null) {
                        getPointOnScreen(view, viewGroup, this.point);
                        float[] fArr = this.point;
                        f = fArr[1];
                        f2 = fArr[0];
                    } else {
                        f = f3;
                        f2 = 0.0f;
                    }
                    RectF rectF = new RectF();
                    View view2 = this.scrimView;
                    if (view2 instanceof ScrimView) {
                        ((ScrimView) view2).getBounds(rectF);
                    } else {
                        int i6 = this.animateToWidth;
                        if (i6 != 0 && (i = this.animateToHeight) != 0) {
                            rectF.set(0.0f, 0.0f, i6, i);
                        } else {
                            rectF.set(0.0f, 0.0f, view2.getMeasuredWidth(), this.scrimView.getMeasuredHeight());
                        }
                    }
                    float f4 = f2 + rectF.left;
                    float measuredHeight = f + rectF.top;
                    if (this.ignoreX) {
                        this.point[0] = 0.0f;
                        f4 = 0.0f;
                    }
                    if (this.dimAlpha > 0) {
                        final DimView dimView3 = new DimView(this.context);
                        this.dimView = dimView3;
                        this.preDrawListener = new ViewTreeObserver.OnPreDrawListener() { // from class: org.telegram.ui.Components.ItemOptions$$ExternalSyntheticLambda3
                            @Override // android.view.ViewTreeObserver.OnPreDrawListener
                            public final boolean onPreDraw() {
                                return ItemOptions.$r8$lambda$xIGcLVjU76ra19DeNG0gRCW353Y(dimView3);
                            }
                        };
                        viewGroup.getViewTreeObserver().addOnPreDrawListener(this.preDrawListener);
                        viewGroup.addView(this.dimView, LayoutHelper.createFrame(-1, -1.0f));
                        this.dimView.setProgress(0.0f);
                        if (this.hideScrimUnder) {
                            this.scrimView.setVisibility(4);
                        }
                        ValueAnimator valueAnimator = this.dimAnimator;
                        if (valueAnimator != null) {
                            valueAnimator.cancel();
                            this.dimAnimator = null;
                        }
                        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                        this.dimAnimator = valueAnimatorOfFloat;
                        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ItemOptions$$ExternalSyntheticLambda4
                            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                                this.f$0.lambda$show$15(valueAnimator2);
                            }
                        });
                        this.dimAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ItemOptions.4
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                if (ItemOptions.this.dimView != null) {
                                    ItemOptions.this.dimView.setProgress(1.0f);
                                    ItemOptions.this.dimView.invalidate();
                                }
                                ItemOptions.this.dimAnimator = null;
                            }
                        });
                        if (this.allowMoveScrim) {
                            this.dimAnimator.setDuration(380L);
                            this.dimAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
                        } else {
                            this.dimAnimator.setDuration(150L);
                        }
                        this.dimAnimator.start();
                    }
                    if (this.allowMoveScrim && (dimView2 = this.dimView) != null && this.animateToWidth != 0) {
                        dimView2.moveToX = (viewGroup.getWidth() - this.animateToWidth) / 2.0f;
                        if (this.allowMoveScrimGravity == 3) {
                            this.dimView.moveToX = AndroidUtilities.dp(36.0f);
                        }
                        f4 += (-this.point[0]) + this.dimView.moveToX;
                    }
                    float paddingLeft = f4;
                    this.layout.measure(View.MeasureSpec.makeMeasureSpec(viewGroup.getMeasuredWidth(), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(viewGroup.getMeasuredHeight(), Integer.MIN_VALUE));
                    RectF rectF2 = new RectF();
                    android.graphics.Rect padding = this.lastLayout.getPadding();
                    rectF2.set(padding.left, padding.top, this.layout.getMeasuredWidth() - padding.right, this.layout.getMeasuredHeight() - padding.bottom);
                    ActionBarPopupWindow actionBarPopupWindow = new ActionBarPopupWindow(this.layout, -2, -2) { // from class: org.telegram.ui.Components.ItemOptions.5
                        @Override // org.telegram.ui.ActionBar.ActionBarPopupWindow, android.widget.PopupWindow
                        public void dismiss() {
                            super.dismiss();
                            ItemOptions.this.dismissDim(viewGroup);
                            if (ItemOptions.this.dismissListener != null) {
                                ItemOptions.this.dismissListener.run();
                                ItemOptions.this.dismissListener = null;
                            }
                        }
                    };
                    this.actionBarPopupWindow = actionBarPopupWindow;
                    actionBarPopupWindow.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: org.telegram.ui.Components.ItemOptions.6
                        @Override // android.widget.PopupWindow.OnDismissListener
                        public void onDismiss() {
                            ItemOptions itemOptions = ItemOptions.this;
                            itemOptions.actionBarPopupWindow = null;
                            itemOptions.dismissDim(viewGroup);
                            if (ItemOptions.this.dismissListener != null) {
                                ItemOptions.this.dismissListener.run();
                                ItemOptions.this.dismissListener = null;
                            }
                        }
                    });
                    this.actionBarPopupWindow.setClippingEnabled(true);
                    this.actionBarPopupWindow.getContentView().setFocusableInTouchMode(true);
                    this.actionBarPopupWindow.setOutsideTouchable(true);
                    this.actionBarPopupWindow.setFocusable(true);
                    this.actionBarPopupWindow.setBackgroundDrawable(new ColorDrawable(0));
                    this.actionBarPopupWindow.setAnimationStyle(C2484R.style.PopupContextAnimation);
                    if (this.needsFocus) {
                        this.actionBarPopupWindow.setInputMethodMode(1);
                        this.actionBarPopupWindow.setSoftInputMode(32);
                    } else {
                        this.actionBarPopupWindow.setInputMethodMode(2);
                        this.actionBarPopupWindow.setSoftInputMode(0);
                    }
                    if (AndroidUtilities.isTablet()) {
                        measuredHeight += viewGroup.getPaddingTop();
                        paddingLeft -= viewGroup.getPaddingLeft();
                    }
                    if (this.scrimView != null) {
                        int i7 = this.gravity;
                        if (i7 == 3) {
                            x2 = viewGroup.getX() + paddingLeft;
                        } else {
                            if (i7 == 5) {
                                x = viewGroup.getX() + paddingLeft + rectF.width();
                                measuredWidth = rectF2.right;
                            } else if (i7 == 1) {
                                x = viewGroup.getX() + paddingLeft + (rectF.width() / 2.0f);
                                measuredWidth = this.layout.getMeasuredWidth() / 2.0f;
                            } else if (rectF2.width() + paddingLeft > viewGroup.getWidth()) {
                                x = viewGroup.getX() + paddingLeft + rectF.width();
                                measuredWidth = rectF2.right;
                            } else {
                                x = viewGroup.getX() + paddingLeft;
                                measuredWidth = rectF2.left;
                            }
                            x2 = x - measuredWidth;
                        }
                        width = (int) x2;
                    } else {
                        width = (viewGroup.getWidth() - this.layout.getMeasuredWidth()) / 2;
                    }
                    float fHeight = this.onTopOfScrim ? 0.0f : rectF.height();
                    if (this.forceBelowScrim && this.scrimView != null) {
                        measuredHeight += fHeight;
                        fHeight = viewGroup.getY();
                    } else {
                        if (this.forceBottom) {
                            if (!this.allowMoveScrim) {
                                height = (int) ((Math.min(measuredHeight + fHeight, AndroidUtilities.displaySize.y) - this.layout.getMeasuredHeight()) + viewGroup.getY());
                            }
                        } else if (this.scrimView != null) {
                            if (this.forceTop || measuredHeight + fHeight + this.layout.getMeasuredHeight() + AndroidUtilities.dp(16.0f) > AndroidUtilities.displaySize.y - AndroidUtilities.navigationBarHeight) {
                                measuredHeight = (measuredHeight - fHeight) - this.layout.getMeasuredHeight();
                                if (this.allowCenter && Math.max(0.0f, measuredHeight + fHeight) + this.layout.getMeasuredHeight() > this.point[1] + rectF.top && rectF.height() == this.scrimView.getHeight()) {
                                    measuredHeight = (((viewGroup.getHeight() - this.layout.getMeasuredHeight()) / 2.0f) - fHeight) - viewGroup.getY();
                                    z = false;
                                    height = (int) (measuredHeight + fHeight + viewGroup.getY());
                                    if (this.swipeback) {
                                        actionBarPopupWindowLayout.swipeBackGravityBottom = true;
                                    }
                                    if (this.allowMoveScrim) {
                                        dimView.moveToY = (viewGroup.getHeight() - (this.layout.getMeasuredHeight() + rectF.bottom)) / 2.0f;
                                        height = (int) (this.dimView.moveToY + rectF.bottom);
                                        width = (int) (((this.dimView.moveToX + rectF.right) - this.layout.getMeasuredWidth()) + AndroidUtilities.dp(4.0f));
                                        if (this.allowMoveScrimGravity == 3) {
                                        }
                                    }
                                    if (this.discardScrolls) {
                                    }
                                    this.actionBarPopupWindow.setScaleOut(this.scaleOut);
                                    ActionBarPopupWindow actionBarPopupWindow2 = this.actionBarPopupWindow;
                                    float f5 = width + this.translateX;
                                    this.offsetX = f5;
                                    float f6 = height + this.translateY;
                                    this.offsetY = f6;
                                    actionBarPopupWindow2.showAtLocation(viewGroup, 0, (int) f5, (int) f6);
                                } else {
                                    z = true;
                                    height = (int) (measuredHeight + fHeight + viewGroup.getY());
                                    if (this.swipeback && z && !this.overridenSwipebackGravity && (actionBarPopupWindowLayout = this.lastLayout) != null) {
                                        actionBarPopupWindowLayout.swipeBackGravityBottom = true;
                                    }
                                    if (this.allowMoveScrim && (dimView = this.dimView) != null) {
                                        dimView.moveToY = (viewGroup.getHeight() - (this.layout.getMeasuredHeight() + rectF.bottom)) / 2.0f;
                                        height = (int) (this.dimView.moveToY + rectF.bottom);
                                        width = (int) (((this.dimView.moveToX + rectF.right) - this.layout.getMeasuredWidth()) + AndroidUtilities.dp(4.0f));
                                        if (this.allowMoveScrimGravity == 3) {
                                            width = (int) (this.dimView.moveToX - AndroidUtilities.dp(8.0f));
                                        }
                                    }
                                    if (this.discardScrolls) {
                                        BaseFragment baseFragment = this.fragment;
                                        if (baseFragment != null && baseFragment.getFragmentView() != null) {
                                            this.fragment.getFragmentView().getRootView().dispatchTouchEvent(AndroidUtilities.emptyMotionEvent());
                                        } else if (this.container != null) {
                                            viewGroup.dispatchTouchEvent(AndroidUtilities.emptyMotionEvent());
                                        }
                                    }
                                    this.actionBarPopupWindow.setScaleOut(this.scaleOut);
                                    ActionBarPopupWindow actionBarPopupWindow22 = this.actionBarPopupWindow;
                                    float f52 = width + this.translateX;
                                    this.offsetX = f52;
                                    float f62 = height + this.translateY;
                                    this.offsetY = f62;
                                    actionBarPopupWindow22.showAtLocation(viewGroup, 0, (int) f52, (int) f62);
                                }
                            } else {
                                z = false;
                                height = (int) (measuredHeight + fHeight + viewGroup.getY());
                                if (this.swipeback) {
                                }
                                if (this.allowMoveScrim) {
                                }
                                if (this.discardScrolls) {
                                }
                                this.actionBarPopupWindow.setScaleOut(this.scaleOut);
                                ActionBarPopupWindow actionBarPopupWindow222 = this.actionBarPopupWindow;
                                float f522 = width + this.translateX;
                                this.offsetX = f522;
                                float f622 = height + this.translateY;
                                this.offsetY = f622;
                                actionBarPopupWindow222.showAtLocation(viewGroup, 0, (int) f522, (int) f622);
                            }
                        } else {
                            height = (viewGroup.getHeight() - this.layout.getMeasuredHeight()) / 2;
                        }
                        z = false;
                        if (this.swipeback) {
                        }
                        if (this.allowMoveScrim) {
                        }
                        if (this.discardScrolls) {
                        }
                        this.actionBarPopupWindow.setScaleOut(this.scaleOut);
                        ActionBarPopupWindow actionBarPopupWindow2222 = this.actionBarPopupWindow;
                        float f5222 = width + this.translateX;
                        this.offsetX = f5222;
                        float f6222 = height + this.translateY;
                        this.offsetY = f6222;
                        actionBarPopupWindow2222.showAtLocation(viewGroup, 0, (int) f5222, (int) f6222);
                    }
                    height = (int) (measuredHeight + fHeight);
                    z = false;
                    if (this.swipeback) {
                    }
                    if (this.allowMoveScrim) {
                    }
                    if (this.discardScrolls) {
                    }
                    this.actionBarPopupWindow.setScaleOut(this.scaleOut);
                    ActionBarPopupWindow actionBarPopupWindow22222 = this.actionBarPopupWindow;
                    float f52222 = width + this.translateX;
                    this.offsetX = f52222;
                    float f62222 = height + this.translateY;
                    this.offsetY = f62222;
                    actionBarPopupWindow22222.showAtLocation(viewGroup, 0, (int) f52222, (int) f62222);
                }
            }
        }
        return this;
    }

    public static /* synthetic */ boolean $r8$lambda$xIGcLVjU76ra19DeNG0gRCW353Y(DimView dimView) {
        dimView.invalidate();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$show$15(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        DimView dimView = this.dimView;
        if (dimView != null) {
            dimView.setProgress(fFloatValue);
        }
    }

    public void setTranslationY(float f) {
        ActionBarPopupWindow actionBarPopupWindow = this.actionBarPopupWindow;
        if (actionBarPopupWindow != null) {
            actionBarPopupWindow.update((int) this.offsetX, (int) (this.offsetY + f), -1, -1);
        }
    }

    public ItemOptions setBackgroundColor(int i) {
        int i2 = 0;
        while (i2 < this.layout.getChildCount()) {
            View childAt = i2 == this.layout.getChildCount() + (-1) ? this.lastLayout : this.layout.getChildAt(i2);
            if (childAt instanceof ActionBarPopupWindow.ActionBarPopupWindowLayout) {
                childAt.setBackgroundColor(i);
            }
            i2++;
        }
        return this;
    }

    public ItemOptions setGapBackgroundColor(int i) {
        this.gapBackgroundColor = Integer.valueOf(i);
        int i2 = 0;
        while (i2 < this.layout.getChildCount()) {
            View childAt = i2 == this.layout.getChildCount() + (-1) ? this.lastLayout : this.layout.getChildAt(i2);
            if (childAt instanceof ActionBarPopupWindow.ActionBarPopupWindowLayout) {
                ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = (ActionBarPopupWindow.ActionBarPopupWindowLayout) childAt;
                for (int i3 = 0; i3 < actionBarPopupWindowLayout.getItemsCount(); i3++) {
                    View itemAt = actionBarPopupWindowLayout.getItemAt(i3);
                    if (itemAt instanceof ActionBarPopupWindow.GapView) {
                        ((ActionBarPopupWindow.GapView) itemAt).setColor(i);
                    }
                }
            } else if (childAt instanceof ActionBarPopupWindow.GapView) {
                ((ActionBarPopupWindow.GapView) childAt).setColor(i);
            }
            i2++;
        }
        return this;
    }

    public ItemOptions setColors(int i, int i2) {
        this.textColor = Integer.valueOf(i);
        this.iconColor = Integer.valueOf(i2);
        int i3 = 0;
        while (i3 < this.layout.getChildCount()) {
            View childAt = i3 == this.layout.getChildCount() + (-1) ? this.lastLayout : this.layout.getChildAt(i3);
            if (childAt instanceof ActionBarPopupWindow.ActionBarPopupWindowLayout) {
                ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = (ActionBarPopupWindow.ActionBarPopupWindowLayout) childAt;
                for (int i4 = 0; i4 < actionBarPopupWindowLayout.getItemsCount(); i4++) {
                    View itemAt = actionBarPopupWindowLayout.getItemAt(i4);
                    if (itemAt instanceof ActionBarMenuSubItem) {
                        ((ActionBarMenuSubItem) itemAt).setColors(i, i2);
                    }
                }
            } else if (childAt instanceof ActionBarMenuSubItem) {
                ((ActionBarMenuSubItem) childAt).setColors(i, i2);
            }
            i3++;
        }
        return this;
    }

    public ItemOptions setSelectorColor(int i) {
        this.selectorColor = Integer.valueOf(i);
        int i2 = 0;
        while (i2 < this.layout.getChildCount()) {
            View childAt = i2 == this.layout.getChildCount() + (-1) ? this.lastLayout : this.layout.getChildAt(i2);
            if (childAt instanceof ActionBarPopupWindow.ActionBarPopupWindowLayout) {
                ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = (ActionBarPopupWindow.ActionBarPopupWindowLayout) childAt;
                for (int i3 = 0; i3 < actionBarPopupWindowLayout.getItemsCount(); i3++) {
                    View itemAt = actionBarPopupWindowLayout.getItemAt(i3);
                    if (itemAt instanceof ActionBarMenuSubItem) {
                        ((ActionBarMenuSubItem) itemAt).setSelectorColor(i);
                    }
                }
            } else if (childAt instanceof ActionBarMenuSubItem) {
                ((ActionBarMenuSubItem) childAt).setSelectorColor(i);
            }
            i2++;
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dismissDim(final ViewGroup viewGroup) {
        final DimView dimView = this.dimView;
        if (dimView == null) {
            return;
        }
        this.dimView = null;
        ValueAnimator valueAnimator = this.dimAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(dimView.dimProgress, 0.0f);
        this.dimAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ItemOptions$$ExternalSyntheticLambda11
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                dimView.setProgress(((Float) valueAnimator2.getAnimatedValue()).floatValue());
            }
        });
        this.dimAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ItemOptions.7
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                dimView.setProgress(0.0f);
                dimView.invalidate();
                AndroidUtilities.removeFromParent(dimView);
                viewGroup.getViewTreeObserver().removeOnPreDrawListener(ItemOptions.this.preDrawListener);
                if (ItemOptions.this.hideScrimUnder) {
                    ItemOptions.this.scrimView.setVisibility(0);
                    if (ItemOptions.this.scrimView instanceof GiftSheet.GiftCell) {
                        ((GiftSheet.GiftCell) ItemOptions.this.scrimView).invalidateCustom();
                    }
                }
            }
        });
        if (this.allowMoveScrim) {
            this.dimAnimator.setDuration(380L);
            this.dimAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        } else {
            this.dimAnimator.setDuration(150L);
        }
        this.dimAnimator.start();
    }

    public boolean isShown() {
        ActionBarPopupWindow actionBarPopupWindow = this.actionBarPopupWindow;
        return actionBarPopupWindow != null && actionBarPopupWindow.isShowing();
    }

    public ItemOptions setOnDismiss(Runnable runnable) {
        this.dismissListener = runnable;
        return this;
    }

    public void dismiss() {
        if (this.dontDismiss) {
            this.dontDismiss = false;
            return;
        }
        ActionBarPopupWindow actionBarPopupWindow = this.actionBarPopupWindow;
        if (actionBarPopupWindow != null) {
            actionBarPopupWindow.dismiss();
            return;
        }
        Runnable runnable = this.dismissListener;
        if (runnable != null) {
            runnable.run();
        }
    }

    public void dontDismiss() {
        this.dontDismiss = true;
    }

    public static void getPointOnScreen(View view, ViewGroup viewGroup, float[] fArr) {
        if (view == null || viewGroup == null) {
            return;
        }
        float y = 0.0f;
        float x = 0.0f;
        while (view != viewGroup) {
            y += view.getY();
            x += view.getX();
            if (view instanceof ScrollView) {
                x -= view.getScrollX();
                y -= view.getScrollY();
            }
            if (!(view.getParent() instanceof View)) {
                break;
            }
            view = (View) view.getParent();
            if (!(view instanceof ViewGroup)) {
                return;
            }
        }
        fArr[0] = x - viewGroup.getPaddingLeft();
        fArr[1] = y - viewGroup.getPaddingTop();
    }

    public ItemOptions setViewAdditionalOffsets(int i, int i2, int i3, int i4) {
        this.viewAdditionalOffsets.set(i, i2, i3, i4);
        return this;
    }

    /* JADX INFO: loaded from: classes7.dex */
    public class DimView extends View {
        private Bitmap blurBitmap;
        private Paint blurPaint;
        private final RectF bounds;
        private final Bitmap cachedBitmap;
        private final Paint cachedBitmapPaint;
        public final float clipBottom;
        private final Path clipPath;
        public final float clipTop;
        private final int dim;
        public float dimProgress;
        private float moveToX;
        private float moveToY;

        public void setProgress(float f) {
            if (this.dimProgress == f) {
                return;
            }
            this.dimProgress = f;
            invalidate();
        }

        public DimView(Context context) {
            super(context);
            this.clipPath = new Path();
            this.bounds = new RectF();
            if (ItemOptions.this.scrimView != null && (ItemOptions.this.scrimView.getParent() instanceof View)) {
                this.clipTop = ((View) ItemOptions.this.scrimView.getParent()).getY() + ItemOptions.this.scrimView.getY();
                this.clipBottom = ItemOptions.this.allowMoveScrim ? Math.min(AndroidUtilities.dp(68.0f), Math.max(0.0f, ((View) ItemOptions.this.scrimView.getParent()).getY() + ItemOptions.this.scrimView.getY() + ItemOptions.this.scrimView.getHeight())) : 0.0f;
            } else {
                this.clipTop = 0.0f;
                this.clipBottom = 0.0f;
            }
            this.dim = ColorUtils.setAlphaComponent(0, ItemOptions.this.dimAlpha);
            if (ItemOptions.this.drawScrim && (ItemOptions.this.scrimView instanceof UserCell) && (ItemOptions.this.fragment instanceof ProfileActivity)) {
                this.cachedBitmapPaint = new Paint(3);
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(ItemOptions.this.scrimView.getWidth() + ItemOptions.this.viewAdditionalOffsets.width(), ItemOptions.this.scrimView.getHeight() + ItemOptions.this.viewAdditionalOffsets.height(), Bitmap.Config.ARGB_8888);
                this.cachedBitmap = bitmapCreateBitmap;
                Canvas canvas = new Canvas(bitmapCreateBitmap);
                canvas.translate(ItemOptions.this.viewAdditionalOffsets.left, ItemOptions.this.viewAdditionalOffsets.top);
                ItemOptions.this.scrimView.draw(canvas);
            } else {
                this.cachedBitmapPaint = null;
                this.cachedBitmap = null;
            }
            if (ItemOptions.this.blur) {
                this.blurPaint = new Paint(3);
                ItemOptions.this.scrimView.setAlpha(0.0f);
                AndroidUtilities.makeGlobalBlurBitmap(new Utilities.Callback() { // from class: org.telegram.ui.Components.ItemOptions$DimView$$ExternalSyntheticLambda0
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        this.f$0.lambda$new$0((Bitmap) obj);
                    }
                }, 12.0f);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(Bitmap bitmap) {
            ItemOptions.this.scrimView.setAlpha(1.0f);
            this.blurBitmap = bitmap;
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            float width;
            int height;
            Canvas canvas2;
            super.onDraw(canvas);
            if (this.blurBitmap != null) {
                canvas.save();
                float fMax = Math.max(getWidth() / this.blurBitmap.getWidth(), getHeight() / this.blurBitmap.getHeight());
                canvas.scale(fMax, fMax);
                this.blurPaint.setAlpha((int) (this.dimProgress * 255.0f));
                canvas.drawBitmap(this.blurBitmap, 0.0f, 0.0f, this.blurPaint);
                canvas.restore();
            } else {
                canvas.drawColor(Theme.multAlpha(this.dim, this.dimProgress));
            }
            if (ItemOptions.this.drawScrim) {
                if (this.cachedBitmap != null && (ItemOptions.this.scrimView.getParent() instanceof View)) {
                    canvas.save();
                    if (this.clipTop < 1.0f) {
                        canvas.clipRect(-ItemOptions.this.viewAdditionalOffsets.left, (((-ItemOptions.this.viewAdditionalOffsets.top) + ItemOptions.this.point[1]) - (this.clipTop * (ItemOptions.this.blur ? 1.0f - this.dimProgress : 1.0f))) + 1.0f, getMeasuredWidth() + ItemOptions.this.viewAdditionalOffsets.right, getMeasuredHeight() + ItemOptions.this.viewAdditionalOffsets.bottom);
                    }
                    if (ItemOptions.this.allowMoveScrim) {
                        ItemOptions.getPointOnScreen(ItemOptions.this.scrimView, ItemOptions.this.pointContainer, ItemOptions.this.point);
                        canvas.translate(AndroidUtilities.lerp(ItemOptions.this.point[0], this.moveToX, this.dimProgress), AndroidUtilities.lerp(ItemOptions.this.point[1], this.moveToY, this.dimProgress));
                    } else {
                        canvas.translate(ItemOptions.this.point[0], ItemOptions.this.point[1]);
                    }
                    if (ItemOptions.this.scrimViewBackground != null) {
                        if (ItemOptions.this.scrimViewBackground.getIntrinsicWidth() > 0 && ItemOptions.this.scrimViewBackground.getIntrinsicHeight() > 0) {
                            ItemOptions.this.scrimViewBackground.setBounds((-ItemOptions.this.viewAdditionalOffsets.left) + (((ItemOptions.this.scrimView.getWidth() + ItemOptions.this.viewAdditionalOffsets.right) - ItemOptions.this.scrimViewBackground.getIntrinsicWidth()) / 2), (-ItemOptions.this.viewAdditionalOffsets.top) + (((ItemOptions.this.scrimView.getHeight() + ItemOptions.this.viewAdditionalOffsets.bottom) - ItemOptions.this.scrimViewBackground.getIntrinsicHeight()) / 2), (-ItemOptions.this.viewAdditionalOffsets.left) + (((ItemOptions.this.scrimView.getWidth() + ItemOptions.this.viewAdditionalOffsets.right) + ItemOptions.this.scrimViewBackground.getIntrinsicWidth()) / 2), (-ItemOptions.this.viewAdditionalOffsets.top) + (((ItemOptions.this.scrimView.getHeight() + ItemOptions.this.viewAdditionalOffsets.bottom) + ItemOptions.this.scrimViewBackground.getIntrinsicHeight()) / 2));
                        } else {
                            ItemOptions.this.scrimViewBackground.setBounds(-ItemOptions.this.viewAdditionalOffsets.left, -ItemOptions.this.viewAdditionalOffsets.top, ItemOptions.this.scrimView.getWidth() + ItemOptions.this.viewAdditionalOffsets.right, ItemOptions.this.scrimView.getHeight() + ItemOptions.this.viewAdditionalOffsets.bottom);
                        }
                        ItemOptions.this.scrimViewBackground.draw(canvas);
                    }
                    if (ItemOptions.this.scrimViewPadding > 0 || ItemOptions.this.scrimViewRoundRadius > 0) {
                        this.clipPath.rewind();
                        RectF rectF = AndroidUtilities.rectTmp;
                        rectF.set((-ItemOptions.this.viewAdditionalOffsets.left) + (ItemOptions.this.scrimViewPadding * this.dimProgress), (-ItemOptions.this.viewAdditionalOffsets.top) + (ItemOptions.this.scrimViewPadding * getAlpha()), ((-ItemOptions.this.viewAdditionalOffsets.left) + this.cachedBitmap.getWidth()) - (ItemOptions.this.scrimViewPadding * getAlpha()), ((-ItemOptions.this.viewAdditionalOffsets.top) + this.cachedBitmap.getHeight()) - (ItemOptions.this.scrimViewPadding * getAlpha()));
                        this.clipPath.addRoundRect(rectF, ItemOptions.this.scrimViewRoundRadius * this.dimProgress, ItemOptions.this.scrimViewRoundRadius * this.dimProgress, Path.Direction.CW);
                        canvas.clipPath(this.clipPath);
                    }
                    this.cachedBitmapPaint.setAlpha(255);
                    canvas.drawBitmap(this.cachedBitmap, -ItemOptions.this.viewAdditionalOffsets.left, -ItemOptions.this.viewAdditionalOffsets.top, this.cachedBitmapPaint);
                    canvas.restore();
                    return;
                }
                if (ItemOptions.this.scrimView != null && (ItemOptions.this.scrimView.getParent() instanceof View)) {
                    canvas.save();
                    if (this.clipTop < 1.0f || this.clipBottom != 0.0f) {
                        if (ItemOptions.this.allowMoveScrim) {
                            canvas.clipRect(-ItemOptions.this.viewAdditionalOffsets.left, AndroidUtilities.lerp((((-ItemOptions.this.viewAdditionalOffsets.top) + ItemOptions.this.point[1]) - (this.clipTop * (ItemOptions.this.blur ? 1.0f - this.dimProgress : 1.0f))) + 1.0f, 0.0f, this.dimProgress), getMeasuredWidth() + ItemOptions.this.viewAdditionalOffsets.right, (getMeasuredHeight() + ItemOptions.this.viewAdditionalOffsets.bottom) - (this.clipBottom * (1.0f - this.dimProgress)));
                        } else {
                            canvas.clipRect(-ItemOptions.this.viewAdditionalOffsets.left, (((-ItemOptions.this.viewAdditionalOffsets.top) + ItemOptions.this.point[1]) - (this.clipTop * (ItemOptions.this.blur ? 1.0f - this.dimProgress : 1.0f))) + 1.0f, getMeasuredWidth() + ItemOptions.this.viewAdditionalOffsets.right, getMeasuredHeight() + ItemOptions.this.viewAdditionalOffsets.bottom);
                        }
                    }
                    float f = this.dimProgress;
                    if (ItemOptions.this.allowMoveScrim) {
                        ItemOptions.getPointOnScreen(ItemOptions.this.scrimView, ItemOptions.this.pointContainer, ItemOptions.this.point);
                        canvas.translate(AndroidUtilities.lerp(ItemOptions.this.point[0], this.moveToX, f), AndroidUtilities.lerp(ItemOptions.this.point[1], this.moveToY, f));
                    } else {
                        canvas.translate(ItemOptions.this.point[0], ItemOptions.this.point[1]);
                    }
                    if (ItemOptions.this.animateToWidth != 0 && ItemOptions.this.animateToHeight != 0) {
                        width = AndroidUtilities.lerp(ItemOptions.this.scrimView.getWidth(), ItemOptions.this.animateToWidth, f);
                        height = AndroidUtilities.lerp(ItemOptions.this.scrimView.getHeight(), ItemOptions.this.animateToHeight, f);
                    } else {
                        width = ItemOptions.this.scrimView.getWidth();
                        height = ItemOptions.this.scrimView.getHeight();
                    }
                    float f2 = height;
                    float f3 = width;
                    if (ItemOptions.this.scrimViewBackground != null) {
                        if (ItemOptions.this.scrimViewBackground.getIntrinsicWidth() > 0 && ItemOptions.this.scrimViewBackground.getIntrinsicHeight() > 0) {
                            ItemOptions.this.scrimViewBackground.setBounds((-ItemOptions.this.viewAdditionalOffsets.left) + (((ItemOptions.this.scrimView.getWidth() + ItemOptions.this.viewAdditionalOffsets.right) - ItemOptions.this.scrimViewBackground.getIntrinsicWidth()) / 2), (-ItemOptions.this.viewAdditionalOffsets.top) + (((ItemOptions.this.scrimView.getHeight() + ItemOptions.this.viewAdditionalOffsets.bottom) - ItemOptions.this.scrimViewBackground.getIntrinsicHeight()) / 2), (-ItemOptions.this.viewAdditionalOffsets.left) + (((ItemOptions.this.scrimView.getWidth() + ItemOptions.this.viewAdditionalOffsets.right) + ItemOptions.this.scrimViewBackground.getIntrinsicWidth()) / 2), (-ItemOptions.this.viewAdditionalOffsets.top) + (((ItemOptions.this.scrimView.getHeight() + ItemOptions.this.viewAdditionalOffsets.bottom) + ItemOptions.this.scrimViewBackground.getIntrinsicHeight()) / 2));
                        } else {
                            ItemOptions.this.scrimViewBackground.setBounds(-ItemOptions.this.viewAdditionalOffsets.left, -ItemOptions.this.viewAdditionalOffsets.top, ItemOptions.this.scrimView.getWidth() + ItemOptions.this.viewAdditionalOffsets.right, ItemOptions.this.scrimView.getHeight() + ItemOptions.this.viewAdditionalOffsets.bottom);
                        }
                        ItemOptions.this.scrimViewBackground.setAlpha((int) (this.dimProgress * 255.0f));
                        if (Build.VERSION.SDK_INT >= 29 && (ItemOptions.this.scrimViewBackground instanceof ShapeDrawable)) {
                            Paint paint = ((ShapeDrawable) ItemOptions.this.scrimViewBackground).getPaint();
                            paint.setShadowLayer(paint.getShadowLayerRadius(), paint.getShadowLayerDx(), paint.getShadowLayerDy(), Theme.multAlpha(ItemOptions.this.scrimViewBackgroundShadowColor, this.dimProgress));
                        }
                        ItemOptions.this.scrimViewBackground.draw(canvas);
                    }
                    if (ItemOptions.this.scrimViewPadding > 0 || ItemOptions.this.scrimViewRoundRadius > 0) {
                        this.clipPath.rewind();
                        if (ItemOptions.this.scrimView instanceof ScrimView) {
                            ((ScrimView) ItemOptions.this.scrimView).getBounds(this.bounds);
                        } else {
                            this.bounds.set(0.0f, 0.0f, getWidth(), getHeight());
                        }
                        RectF rectF2 = AndroidUtilities.rectTmp;
                        rectF2.set((-ItemOptions.this.viewAdditionalOffsets.left) + this.bounds.left + (ItemOptions.this.scrimViewPadding * this.dimProgress), (-ItemOptions.this.viewAdditionalOffsets.top) + this.bounds.top + (ItemOptions.this.scrimViewPadding * this.dimProgress), ((-ItemOptions.this.viewAdditionalOffsets.left) + this.bounds.right) - (ItemOptions.this.scrimViewPadding * this.dimProgress), ((-ItemOptions.this.viewAdditionalOffsets.top) + this.bounds.bottom) - (ItemOptions.this.scrimViewPadding * this.dimProgress));
                        this.clipPath.addRoundRect(rectF2, ItemOptions.this.scrimViewRoundRadius * this.dimProgress, ItemOptions.this.scrimViewRoundRadius * this.dimProgress, Path.Direction.CW);
                        canvas.clipPath(this.clipPath);
                    }
                    if (!(ItemOptions.this.scrimView instanceof SharedPhotoVideoCell2)) {
                        canvas2 = canvas;
                        if (!(ItemOptions.this.scrimView instanceof GiftSheet.GiftCell) || ItemOptions.this.animateToWidth == 0 || ItemOptions.this.animateToHeight == 0) {
                            if (ItemOptions.this.allowMoveScrim) {
                                canvas2.saveLayerAlpha(0.0f, 0.0f, ItemOptions.this.scrimView.getWidth(), ItemOptions.this.scrimView.getHeight(), (int) (this.dimProgress * 255.0f), 31);
                            } else {
                                canvas2.save();
                            }
                            if (ItemOptions.this.scrimView instanceof ScrimView) {
                                ((ScrimView) ItemOptions.this.scrimView).drawScrim(canvas2, this.dimProgress);
                            } else {
                                canvas2.translate(-ItemOptions.this.scrimView.getScrollX(), -ItemOptions.this.scrimView.getScrollY());
                                ItemOptions.this.scrimView.draw(canvas2);
                            }
                            canvas2.restore();
                        } else if (ItemOptions.this.scrimView.getAlpha() >= 1.0f) {
                            ((GiftSheet.GiftCell) ItemOptions.this.scrimView).customDraw(this, canvas2, f3, f2, this.dimProgress);
                        } else {
                            canvas2.saveLayerAlpha(0.0f, 0.0f, f3, f2, (int) (this.dimProgress * 255.0f), 31);
                            canvas2 = canvas2;
                            float fLerp = AndroidUtilities.lerp(1.0f, 0.9f, this.dimProgress);
                            canvas2.scale(fLerp, fLerp, f3 / 2.0f, f2 / 2.0f);
                            ((GiftSheet.GiftCell) ItemOptions.this.scrimView).customDraw(this, canvas2, f3, f2, this.dimProgress);
                            canvas2.restore();
                        }
                    } else if (ItemOptions.this.scrimView.getAlpha() >= 1.0f) {
                        canvas2 = canvas;
                        ((SharedPhotoVideoCell2) ItemOptions.this.scrimView).customDraw(this, canvas2, f3, f2, this.dimProgress);
                    } else {
                        canvas.saveLayerAlpha(0.0f, 0.0f, f3, f2, (int) (this.dimProgress * 255.0f), 31);
                        canvas2 = canvas;
                        float fLerp2 = AndroidUtilities.lerp(1.0f, 0.9f, this.dimProgress);
                        canvas2.scale(fLerp2, fLerp2, f3 / 2.0f, f2 / 2.0f);
                        ((SharedPhotoVideoCell2) ItemOptions.this.scrimView).customDraw(this, canvas2, f3, f2, this.dimProgress);
                        canvas2.restore();
                    }
                    canvas2.restore();
                }
            }
        }
    }

    /* JADX INFO: loaded from: classes7.dex */
    public interface ScrimView {
        void drawScrim(Canvas canvas, float f);

        void getBounds(RectF rectF);

        /* JADX INFO: renamed from: org.telegram.ui.Components.ItemOptions$ScrimView$-CC, reason: invalid class name */
        public abstract /* synthetic */ class CC {
            /* JADX WARN: Multi-variable type inference failed */
            public static void $default$getBounds(ScrimView scrimView, RectF rectF) {
                if (scrimView instanceof View) {
                    View view = (View) scrimView;
                    rectF.set(0.0f, 0.0f, view.getWidth(), view.getHeight());
                }
            }
        }
    }

    public static void addAlbumsItemOptions(ItemOptions itemOptions, StoriesController.StoriesCollections storiesCollections, final HashSet hashSet, boolean z, final Runnable runnable, final Utilities.Callback callback) {
        ActionBarMenuSubItem actionBarMenuSubItem;
        boolean z2;
        ArrayList arrayList;
        ScrollView scrollView = new ScrollView(itemOptions.getContext()) { // from class: org.telegram.ui.Components.ItemOptions.8
            @Override // android.widget.ScrollView, android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i, int i2) {
                super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(Math.min(AndroidUtilities.dp(260.0f), View.MeasureSpec.getSize(i2)), View.MeasureSpec.getMode(i2)));
            }
        };
        LinearLayout linearLayout = new LinearLayout(itemOptions.getContext());
        scrollView.addView(linearLayout);
        linearLayout.setOrientation(1);
        itemOptions.addView(scrollView, LayoutHelper.createLinear(-1, -2));
        float f = 18.0f;
        if (z && runnable != null) {
            ActionBarMenuSubItem actionBarMenuSubItem2 = new ActionBarMenuSubItem(itemOptions.getContext(), 2, false, false, itemOptions.resourcesProvider);
            actionBarMenuSubItem2.setPadding(AndroidUtilities.dp(18.0f), 0, AndroidUtilities.dp(18.0f), 0);
            int i = Theme.key_actionBarDefaultSubmenuItem;
            actionBarMenuSubItem2.setColors(Theme.getColor(i, itemOptions.resourcesProvider), Theme.getColor(Theme.key_actionBarDefaultSubmenuItemIcon, itemOptions.resourcesProvider));
            actionBarMenuSubItem2.setSelectorColor(Theme.multAlpha(Theme.getColor(i, itemOptions.resourcesProvider), 0.12f));
            actionBarMenuSubItem2.setTextAndIcon(LocaleController.getString(C2484R.string.StoriesAlbumNewAlbum), C2484R.drawable.menu_album_add);
            actionBarMenuSubItem2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ItemOptions$$ExternalSyntheticLambda16
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    runnable.run();
                }
            });
            linearLayout.addView(actionBarMenuSubItem2, LayoutHelper.createLinear(-1, -2));
        }
        ArrayList arrayList2 = storiesCollections.collections;
        int size = arrayList2.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList2.get(i2);
            i2++;
            final StoriesController.StoryAlbum storyAlbum = (StoriesController.StoryAlbum) obj;
            final int i3 = storyAlbum.album_id;
            final boolean zContains = hashSet.contains(Integer.valueOf(i3));
            ActionBarMenuSubItem actionBarMenuSubItem3 = new ActionBarMenuSubItem(itemOptions.getContext(), 2, false, false, itemOptions.resourcesProvider);
            actionBarMenuSubItem3.setChecked(zContains);
            float f2 = f;
            actionBarMenuSubItem3.setPadding(AndroidUtilities.dp(f2), 0, AndroidUtilities.dp(f2), 0);
            int i4 = Theme.key_actionBarDefaultSubmenuItem;
            actionBarMenuSubItem3.setColors(Theme.getColor(i4, itemOptions.resourcesProvider), Theme.getColor(Theme.key_actionBarDefaultSubmenuItemIcon, itemOptions.resourcesProvider));
            actionBarMenuSubItem3.setSelectorColor(Theme.multAlpha(Theme.getColor(i4, itemOptions.resourcesProvider), 0.12f));
            TLRPC.Photo photo = storyAlbum.icon_photo;
            if (photo != null && (arrayList = photo.sizes) != null) {
                z2 = true;
                actionBarMenuSubItem3.setTextAndIcon(storyAlbum.title, ImageLocation.getForObject(FileLoader.getClosestPhotoSizeWithSize(storyAlbum.icon_photo.sizes, AndroidUtilities.dp(24.0f), false, FileLoader.getClosestPhotoSizeWithSize(arrayList, 50), true), storyAlbum.icon_photo), "50_50", null, null);
                actionBarMenuSubItem = actionBarMenuSubItem3;
            } else {
                actionBarMenuSubItem = actionBarMenuSubItem3;
                z2 = true;
                actionBarMenuSubItem.setTextAndIcon(storyAlbum.title, C2484R.drawable.msg_folders);
            }
            actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ItemOptions$$ExternalSyntheticLambda17
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ItemOptions.$r8$lambda$tZI4zt9U4B0QyKZbUK0L_GkPRoo(zContains, hashSet, i3, callback, storyAlbum, view);
                }
            });
            linearLayout.addView(actionBarMenuSubItem, LayoutHelper.createLinear(-1, -2));
            f = f2;
        }
    }

    public static /* synthetic */ void $r8$lambda$tZI4zt9U4B0QyKZbUK0L_GkPRoo(boolean z, HashSet hashSet, int i, Utilities.Callback callback, StoriesController.StoryAlbum storyAlbum, View view) {
        if (z) {
            hashSet.remove(Integer.valueOf(i));
        } else {
            hashSet.add(Integer.valueOf(i));
        }
        callback.run(storyAlbum);
    }
}
