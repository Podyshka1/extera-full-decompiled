package org.telegram.ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.BottomSheet;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.CheckBoxCell;
import org.telegram.ui.Cells.HeaderCell;
import org.telegram.ui.Cells.ShadowSectionCell;
import org.telegram.ui.Cells.TextInfoPrivacyCell;
import org.telegram.ui.Components.SlideChooseView;

/* JADX INFO: loaded from: classes7.dex */
public class ClearHistoryAlert extends BottomSheet {
    private boolean autoDeleteOnly;
    private CheckBoxCell cell;
    private int currentTimer;
    private ClearHistoryAlertDelegate delegate;
    private boolean dismissedDelayed;
    private LinearLayout linearLayout;
    private int[] location;
    private int newTimer;
    private int scrollOffsetY;
    private BottomSheetCell setTimerButton;
    private Drawable shadowDrawable;

    public interface ClearHistoryAlertDelegate {
        void onAutoDeleteHistory(int i, int i2);

        default void onClearHistory(boolean z) {
        }
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet
    public boolean canDismissWithSwipe() {
        return false;
    }

    public static class BottomSheetCell extends FrameLayout {
        private View background;
        private final Theme.ResourcesProvider resourcesProvider;
        private TextView textView;

        public BottomSheetCell(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.resourcesProvider = resourcesProvider;
            View view = new View(context);
            this.background = view;
            view.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.dp(4.0f), getThemedColor(Theme.key_featuredStickers_addButton), getThemedColor(Theme.key_featuredStickers_addButtonPressed)));
            addView(this.background, LayoutHelper.createFrame(-1, -1.0f, 0, 16.0f, 16.0f, 16.0f, 16.0f));
            TextView textView = new TextView(context);
            this.textView = textView;
            textView.setLines(1);
            this.textView.setSingleLine(true);
            this.textView.setGravity(1);
            this.textView.setEllipsize(TextUtils.TruncateAt.END);
            this.textView.setGravity(17);
            this.textView.setTextColor(getThemedColor(Theme.key_featuredStickers_buttonText));
            this.textView.setTextSize(1, 14.0f);
            this.textView.setTypeface(AndroidUtilities.bold());
            addView(this.textView, LayoutHelper.createFrame(-2, -2, 17));
        }

        @Override // android.widget.FrameLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(80.0f), TLObject.FLAG_30));
        }

        public void setText(CharSequence charSequence) {
            this.textView.setText(charSequence);
        }

        public int getThemedColor(int i) {
            return Theme.getColor(i, this.resourcesProvider);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x002d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ClearHistoryAlert(Context context, TLRPC.User user, TLRPC.Chat chat, boolean z, Theme.ResourcesProvider resourcesProvider) {
        int i;
        int i2;
        super(context, false, resourcesProvider);
        this.location = new int[2];
        this.autoDeleteOnly = !z;
        setApplyBottomPadding(false);
        int i3 = this.currentAccount;
        if (user != null) {
            TLRPC.UserFull userFull = MessagesController.getInstance(i3).getUserFull(user.id);
            i = userFull != null ? userFull.ttl_period : 0;
        } else {
            TLRPC.ChatFull chatFull = MessagesController.getInstance(i3).getChatFull(chat.id);
            if (chatFull != null) {
                i = chatFull.ttl_period;
            }
        }
        if (i == 0) {
            this.currentTimer = 0;
            this.newTimer = 0;
        } else if (i == 86400) {
            this.currentTimer = 1;
            this.newTimer = 1;
        } else if (i == 604800) {
            this.currentTimer = 2;
            this.newTimer = 2;
        } else {
            this.currentTimer = 3;
            this.newTimer = 3;
        }
        Drawable drawableMutate = context.getResources().getDrawable(C2807R.drawable.sheet_shadow_round).mutate();
        this.shadowDrawable = drawableMutate;
        int i4 = Theme.key_dialogBackground;
        drawableMutate.setColorFilter(new PorterDuffColorFilter(getThemedColor(i4), PorterDuff.Mode.MULTIPLY));
        final NestedScrollView nestedScrollView = new NestedScrollView(context) { // from class: org.telegram.ui.Components.ClearHistoryAlert.1
            private boolean ignoreLayout;

            @Override // androidx.core.widget.NestedScrollView, android.view.ViewGroup
            public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
                if (motionEvent.getAction() == 0 && ClearHistoryAlert.this.scrollOffsetY != 0 && motionEvent.getY() < ClearHistoryAlert.this.scrollOffsetY) {
                    ClearHistoryAlert.this.lambda$new$0();
                    return true;
                }
                return super.onInterceptTouchEvent(motionEvent);
            }

            @Override // androidx.core.widget.NestedScrollView, android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                return !ClearHistoryAlert.this.isDismissed() && super.onTouchEvent(motionEvent);
            }

            @Override // android.view.View
            public void setTranslationY(float f) {
                super.setTranslationY(f);
                ClearHistoryAlert.this.updateLayout();
            }

            @Override // androidx.core.widget.NestedScrollView, android.widget.FrameLayout, android.view.View
            public void onMeasure(int i5, int i6) {
                int size = View.MeasureSpec.getSize(i6);
                measureChildWithMargins(ClearHistoryAlert.this.linearLayout, i5, 0, i6, 0);
                int measuredHeight = ClearHistoryAlert.this.linearLayout.getMeasuredHeight();
                int i7 = (size / 5) * 3;
                int i8 = size - i7;
                if (ClearHistoryAlert.this.autoDeleteOnly || measuredHeight - i8 < AndroidUtilities.dp(90.0f) || measuredHeight < (size / 2) + AndroidUtilities.dp(90.0f) || i8 < (measuredHeight = (measuredHeight / 2) + AndroidUtilities.dp(108.0f))) {
                    i7 = size - measuredHeight;
                }
                if (getPaddingTop() != i7) {
                    this.ignoreLayout = true;
                    setPadding(0, i7, 0, 0);
                    this.ignoreLayout = false;
                }
                super.onMeasure(i5, View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30));
            }

            @Override // androidx.core.widget.NestedScrollView, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            public void onLayout(boolean z2, int i5, int i6, int i7, int i8) {
                super.onLayout(z2, i5, i6, i7, i8);
                ClearHistoryAlert.this.updateLayout();
            }

            @Override // androidx.core.widget.NestedScrollView, android.view.View, android.view.ViewParent
            public void requestLayout() {
                if (this.ignoreLayout) {
                    return;
                }
                super.requestLayout();
            }

            @Override // android.view.View
            public void onDraw(Canvas canvas) {
                int scrollY = (int) (((ClearHistoryAlert.this.scrollOffsetY - ((BottomSheet) ClearHistoryAlert.this).backgroundPaddingTop) + getScrollY()) - getTranslationY());
                ClearHistoryAlert.this.shadowDrawable.setBounds(0, scrollY, getMeasuredWidth(), ClearHistoryAlert.this.linearLayout.getMeasuredHeight() + scrollY + ((BottomSheet) ClearHistoryAlert.this).backgroundPaddingTop + AndroidUtilities.dp(19.0f));
                ClearHistoryAlert.this.shadowDrawable.draw(canvas);
            }

            @Override // androidx.core.widget.NestedScrollView, android.view.View
            public void onScrollChanged(int i5, int i6, int i7, int i8) {
                super.onScrollChanged(i5, i6, i7, i8);
                ClearHistoryAlert.this.updateLayout();
            }
        };
        nestedScrollView.setFillViewport(true);
        nestedScrollView.setWillNotDraw(false);
        nestedScrollView.setClipToPadding(false);
        int i5 = this.backgroundPaddingLeft;
        nestedScrollView.setPadding(i5, 0, i5, 0);
        this.containerView = nestedScrollView;
        LinearLayout linearLayout = new LinearLayout(context) { // from class: org.telegram.ui.Components.ClearHistoryAlert.2
            @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
            public void onLayout(boolean z2, int i6, int i7, int i8, int i9) {
                super.onLayout(z2, i6, i7, i8, i9);
                ClearHistoryAlert.this.updateLayout();
            }
        };
        this.linearLayout = linearLayout;
        linearLayout.setOrientation(1);
        nestedScrollView.addView(this.linearLayout, LayoutHelper.createScroll(-1, -2, 80));
        setCustomView(this.linearLayout);
        boolean z2 = (user == null || user.bot || user.id == UserConfig.getInstance(this.currentAccount).getClientUserId() || !MessagesController.getInstance(this.currentAccount).canRevokePmInbox) ? false : true;
        int i6 = this.currentAccount;
        if (user != null) {
            i2 = MessagesController.getInstance(i6).revokeTimePmLimit;
        } else {
            i2 = MessagesController.getInstance(i6).revokeTimeLimit;
        }
        boolean z3 = user != null && z2 && i2 == Integer.MAX_VALUE;
        final boolean[] zArr = {false};
        if (!this.autoDeleteOnly) {
            TextView textView = new TextView(context);
            textView.setTypeface(AndroidUtilities.bold());
            textView.setTextSize(1, 20.0f);
            int i7 = Theme.key_dialogTextBlack;
            textView.setTextColor(getThemedColor(i7));
            textView.setText(LocaleController.getString(C2807R.string.ClearHistory));
            textView.setSingleLine(true);
            textView.setEllipsize(TextUtils.TruncateAt.END);
            this.linearLayout.addView(textView, LayoutHelper.createLinear(-2, -2, 51, 23, 20, 23, 0));
            TextView textView2 = new TextView(getContext());
            textView2.setTextColor(getThemedColor(i7));
            textView2.setTextSize(1, 16.0f);
            textView2.setMovementMethod(new AndroidUtilities.LinkMovementMethodMy());
            textView2.setLinkTextColor(getThemedColor(Theme.key_dialogTextLink));
            textView2.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
            this.linearLayout.addView(textView2, LayoutHelper.createLinear(-2, -2, 51, 23, 16, 23, 5));
            if (user != null) {
                textView2.setText(AndroidUtilities.replaceTags(LocaleController.formatString("AreYouSureClearHistoryWithUser", C2807R.string.AreYouSureClearHistoryWithUser, UserObject.getUserName(user))));
            } else if (!ChatObject.isChannel(chat) || (chat.megagroup && !ChatObject.isPublic(chat))) {
                textView2.setText(AndroidUtilities.replaceTags(LocaleController.formatString("AreYouSureClearHistoryWithChat", C2807R.string.AreYouSureClearHistoryWithChat, chat.title)));
            } else if (chat.megagroup) {
                textView2.setText(LocaleController.getString(C2807R.string.AreYouSureClearHistoryGroup));
            } else {
                textView2.setText(LocaleController.getString(C2807R.string.AreYouSureClearHistoryChannel));
            }
            if (z3 && !UserObject.isDeleted(user)) {
                CheckBoxCell checkBoxCell = new CheckBoxCell(context, 1, resourcesProvider);
                this.cell = checkBoxCell;
                checkBoxCell.setBackgroundDrawable(Theme.getSelectorDrawable(false));
                this.cell.setText(LocaleController.formatString("ClearHistoryOptionAlso", C2807R.string.ClearHistoryOptionAlso, UserObject.getFirstName(user)), _UrlKt.FRAGMENT_ENCODE_SET, false, false);
                this.cell.setPadding(LocaleController.isRTL ? AndroidUtilities.dp(16.0f) : AndroidUtilities.dp(5.0f), 0, LocaleController.isRTL ? AndroidUtilities.dp(5.0f) : AndroidUtilities.dp(16.0f), 0);
                this.linearLayout.addView(this.cell, LayoutHelper.createLinear(-1, 48, 51, 0, 0, 0, 0));
                this.cell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ClearHistoryAlert$$ExternalSyntheticLambda0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        ClearHistoryAlert.$r8$lambda$EZ1C5bzlmLE_6knIy35pvM4pXbU(zArr, view);
                    }
                });
            }
            BottomSheetCell bottomSheetCell = new BottomSheetCell(context, resourcesProvider);
            bottomSheetCell.setBackground(null);
            bottomSheetCell.setText(LocaleController.getString(C2807R.string.AlertClearHistory));
            bottomSheetCell.background.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ClearHistoryAlert$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$1(view);
                }
            });
            this.linearLayout.addView(bottomSheetCell, LayoutHelper.createLinear(-1, 50, 51, 0, 0, 0, 0));
            View shadowSectionCell = new ShadowSectionCell(context);
            CombinedDrawable combinedDrawable = new CombinedDrawable(new ColorDrawable(getThemedColor(Theme.key_windowBackgroundGray)), Theme.getThemedDrawableByKey(context, C2807R.drawable.greydivider, Theme.key_windowBackgroundGrayShadow));
            combinedDrawable.setFullsize(true);
            shadowSectionCell.setBackgroundDrawable(combinedDrawable);
            this.linearLayout.addView(shadowSectionCell, LayoutHelper.createLinear(-1, -2));
            HeaderCell headerCell = new HeaderCell(context, resourcesProvider);
            headerCell.setText(LocaleController.getString(C2807R.string.AutoDeleteHeader));
            this.linearLayout.addView(headerCell, LayoutHelper.createLinear(-1, -2, 1.0f, this.autoDeleteOnly ? 20.0f : 0.0f, 1.0f, 0.0f));
        } else {
            RLottieImageView rLottieImageView = new RLottieImageView(context);
            rLottieImageView.setAutoRepeat(false);
            rLottieImageView.setAnimation(C2807R.raw.utyan_private, 120, 120);
            rLottieImageView.setPadding(0, AndroidUtilities.dp(20.0f), 0, 0);
            rLottieImageView.playAnimation();
            this.linearLayout.addView(rLottieImageView, LayoutHelper.createLinear(160, 160, 49, 17, 0, 17, 0));
            TextView textView3 = new TextView(context);
            textView3.setTypeface(AndroidUtilities.bold());
            textView3.setTextSize(1, 24.0f);
            textView3.setTextColor(getThemedColor(Theme.key_dialogTextBlack));
            textView3.setText(LocaleController.getString(C2807R.string.AutoDeleteAlertTitle));
            this.linearLayout.addView(textView3, LayoutHelper.createLinear(-2, -2, 49, 17, 18, 17, 0));
            TextView textView4 = new TextView(context);
            textView4.setTextSize(1, 14.0f);
            textView4.setTextColor(getThemedColor(Theme.key_dialogTextGray3));
            textView4.setGravity(1);
            if (user != null) {
                textView4.setText(LocaleController.formatString("AutoDeleteAlertUserInfo", C2807R.string.AutoDeleteAlertUserInfo, UserObject.getFirstName(user)));
            } else if (ChatObject.isChannel(chat) && !chat.megagroup) {
                textView4.setText(LocaleController.getString(C2807R.string.AutoDeleteAlertChannelInfo));
            } else {
                textView4.setText(LocaleController.getString(C2807R.string.AutoDeleteAlertGroupInfo));
            }
            this.linearLayout.addView(textView4, LayoutHelper.createLinear(-2, -2, 49, 30, 22, 30, 20));
        }
        SlideChooseView slideChooseView = new SlideChooseView(context, resourcesProvider);
        slideChooseView.setCallback(new SlideChooseView.Callback() { // from class: org.telegram.ui.Components.ClearHistoryAlert.3
            @Override // org.telegram.ui.Components.SlideChooseView.Callback
            public void onOptionSelected(int i8) {
                ClearHistoryAlert.this.newTimer = i8;
                ClearHistoryAlert.this.updateTimerButton(true);
            }

            @Override // org.telegram.ui.Components.SlideChooseView.Callback
            public void onTouchEnd() {
                nestedScrollView.smoothScrollTo(0, ClearHistoryAlert.this.linearLayout.getMeasuredHeight());
            }
        });
        slideChooseView.setOptions(this.currentTimer, LocaleController.getString(C2807R.string.AutoDeleteNever), LocaleController.getString(C2807R.string.AutoDelete24Hours), LocaleController.getString(C2807R.string.AutoDelete7Days), LocaleController.getString(C2807R.string.AutoDelete1Month));
        this.linearLayout.addView(slideChooseView, LayoutHelper.createLinear(-1, -2, 0.0f, 8.0f, 0.0f, 0.0f));
        FrameLayout frameLayout = new FrameLayout(context);
        CombinedDrawable combinedDrawable2 = new CombinedDrawable(new ColorDrawable(getThemedColor(Theme.key_windowBackgroundGray)), Theme.getThemedDrawableByKey(context, C2807R.drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow));
        combinedDrawable2.setFullsize(true);
        frameLayout.setBackgroundDrawable(combinedDrawable2);
        this.linearLayout.addView(frameLayout, LayoutHelper.createLinear(-1, -2));
        TextInfoPrivacyCell textInfoPrivacyCell = new TextInfoPrivacyCell(context, resourcesProvider);
        textInfoPrivacyCell.setText(LocaleController.getString(C2807R.string.AutoDeleteInfo));
        frameLayout.addView(textInfoPrivacyCell);
        BottomSheetCell bottomSheetCell2 = new BottomSheetCell(context, resourcesProvider);
        this.setTimerButton = bottomSheetCell2;
        bottomSheetCell2.setBackgroundColor(getThemedColor(i4));
        if (this.autoDeleteOnly) {
            this.setTimerButton.setText(LocaleController.getString(C2807R.string.AutoDeleteSet));
        } else if (z && this.currentTimer == 0) {
            this.setTimerButton.setText(LocaleController.getString(C2807R.string.EnableAutoDelete));
        } else {
            this.setTimerButton.setText(LocaleController.getString(C2807R.string.AutoDeleteConfirm));
        }
        this.setTimerButton.background.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ClearHistoryAlert$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$2(view);
            }
        });
        frameLayout.addView(this.setTimerButton);
        updateTimerButton(false);
    }

    public static /* synthetic */ void $r8$lambda$EZ1C5bzlmLE_6knIy35pvM4pXbU(boolean[] zArr, View view) {
        boolean z = !zArr[0];
        zArr[0] = z;
        ((CheckBoxCell) view).setChecked(z, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(View view) {
        if (this.dismissedDelayed) {
            return;
        }
        ClearHistoryAlertDelegate clearHistoryAlertDelegate = this.delegate;
        CheckBoxCell checkBoxCell = this.cell;
        clearHistoryAlertDelegate.onClearHistory(checkBoxCell != null && checkBoxCell.isChecked());
        lambda$new$0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(View view) {
        int i;
        if (this.dismissedDelayed) {
            return;
        }
        int i2 = this.newTimer;
        if (i2 != this.currentTimer) {
            this.dismissedDelayed = true;
            int i3 = 70;
            if (i2 == 3) {
                i = 2678400;
            } else if (i2 == 2) {
                i = 604800;
            } else if (i2 == 1) {
                i = 86400;
            } else {
                i = 0;
                i3 = 71;
            }
            this.delegate.onAutoDeleteHistory(i, i3);
        }
        if (this.dismissedDelayed) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ClearHistoryAlert$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$0();
                }
            }, 200L);
        } else {
            lambda$new$0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTimerButton(boolean z) {
        if (this.currentTimer == this.newTimer && !this.autoDeleteOnly) {
            BottomSheetCell bottomSheetCell = this.setTimerButton;
            if (z) {
                bottomSheetCell.animate().alpha(0.0f).setDuration(180L).start();
                return;
            } else {
                bottomSheetCell.setVisibility(4);
                this.setTimerButton.setAlpha(0.0f);
                return;
            }
        }
        this.setTimerButton.setVisibility(0);
        BottomSheetCell bottomSheetCell2 = this.setTimerButton;
        if (z) {
            bottomSheetCell2.animate().alpha(1.0f).setDuration(180L).start();
        } else {
            bottomSheetCell2.setAlpha(1.0f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateLayout() {
        this.linearLayout.getChildAt(0).getLocationInWindow(this.location);
        int iMax = Math.max(this.location[1] - AndroidUtilities.dp(this.autoDeleteOnly ? 6.0f : 19.0f), 0);
        if (this.scrollOffsetY != iMax) {
            this.scrollOffsetY = iMax;
            this.containerView.invalidate();
        }
    }

    public void setDelegate(ClearHistoryAlertDelegate clearHistoryAlertDelegate) {
        this.delegate = clearHistoryAlertDelegate;
    }
}
