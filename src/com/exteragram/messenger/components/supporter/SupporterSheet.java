package com.exteragram.messenger.components.supporter;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import androidx.recyclerview.widget.RecyclerView;
import com.exteragram.messenger.badges.BadgesController;
import com.exteragram.messenger.components.supporter.SupporterSheet;
import com.exteragram.messenger.utils.ui.UIUtil;
import java.util.ArrayList;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.Utilities;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.MessageDrawable;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AnimatedEmojiDrawable;
import org.telegram.ui.Components.BottomSheetWithRecyclerListView;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.LinkSpanDrawable;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;
import org.telegram.ui.Stories.recorder.ButtonWithCounterView;

/* JADX INFO: loaded from: classes4.dex */
public abstract class SupporterSheet extends BottomSheetWithRecyclerListView {
    private UniversalAdapter adapter;
    protected final LinearLayout bottomContainer;
    protected final ButtonWithCounterView button;
    private ValueAnimator enterAnimator;
    private SupporterEnterFrom enterFrom;
    private float enterProgress;
    protected final BaseFragment fragment;
    private final SupporterArrowHeader header;
    private final int[] location;
    private LinearLayout secondaryRow;
    private TextView subtitleView;
    private CharSequence title;
    private TextView titleView;
    private boolean touched;
    private ArrayList<View> views;

    public SupporterSheet(BaseFragment baseFragment, Theme.ResourcesProvider resourcesProvider) {
        this(baseFragment, false, resourcesProvider);
    }

    public SupporterSheet(BaseFragment baseFragment, boolean z, Theme.ResourcesProvider resourcesProvider) {
        super(baseFragment.getParentActivity(), baseFragment, z, false, false, true, BottomSheetWithRecyclerListView.ActionBarType.FADING, resourcesProvider);
        this.enterProgress = 1.0f;
        this.location = new int[2];
        this.fragment = baseFragment;
        this.currentAccount = baseFragment.getCurrentAccount();
        Activity parentActivity = baseFragment.getParentActivity();
        this.occupyNavigationBar = !z;
        this.smoothKeyboardAnimationEnabled = z;
        this.smoothKeyboardByBottom = z;
        setApplyBottomPadding(false);
        this.topPadding = 0.2f;
        int i = Theme.key_dialogBackground;
        fixNavigationBar(getThemedColor(i));
        this.recyclerListView.setClipToPadding(false);
        this.recyclerListView.setOverScrollMode(2);
        RecyclerListView recyclerListView = this.recyclerListView;
        int i2 = this.backgroundPaddingLeft;
        recyclerListView.setPadding(i2, 0, i2, 0);
        this.recyclerListView.addOnItemTouchListener(new RecyclerView.SimpleOnItemTouchListener() { // from class: com.exteragram.messenger.components.supporter.SupporterSheet.1
            @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
            public boolean onInterceptTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
                if (motionEvent.getActionMasked() != 0) {
                    return false;
                }
                SupporterSheet.this.touched = true;
                return false;
            }
        });
        this.recyclerListView.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.exteragram.messenger.components.supporter.SupporterSheet$$ExternalSyntheticLambda2
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
                this.f$0.lambda$new$0(view, i3, i4, i5, i6, i7, i8, i9, i10);
            }
        });
        this.views = new ArrayList<>();
        this.header = new SupporterArrowHeader(parentActivity, resourcesProvider);
        ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(parentActivity, true, resourcesProvider);
        this.button = buttonWithCounterView;
        buttonWithCounterView.setRound();
        LinearLayout linearLayout = new LinearLayout(parentActivity);
        this.bottomContainer = linearLayout;
        linearLayout.setOrientation(1);
        linearLayout.setBackground(createBottomBackdrop(getThemedColor(i)));
        int i3 = this.backgroundPaddingLeft;
        linearLayout.setPadding(i3, 0, i3, z ? 0 : AndroidUtilities.navigationBarHeight);
        linearLayout.addView(buttonWithCounterView, LayoutHelper.createLinear(-1, 48, 0, 12, 16, 12, 12));
        linearLayout.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.exteragram.messenger.components.supporter.SupporterSheet$$ExternalSyntheticLambda3
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11) {
                this.f$0.lambda$new$1(view, i4, i5, i6, i7, i8, i9, i10, i11);
            }
        });
        this.containerView.addView(linearLayout, LayoutHelper.createFrame(-1, -2, 80));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        if (this.touched || !this.recyclerListView.canScrollVertically(-1)) {
            return;
        }
        this.layoutManager.scrollToPositionWithOffset(0, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        int i9 = i4 - i2;
        if (this.recyclerListView.getPaddingBottom() != i9) {
            RecyclerListView recyclerListView = this.recyclerListView;
            int i10 = this.backgroundPaddingLeft;
            recyclerListView.setPadding(i10, 0, i10, i9);
        }
    }

    private static Drawable createBottomBackdrop(int i) {
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{UIUtil.createBottomFade(i), new ColorDrawable(i)});
        layerDrawable.setLayerGravity(0, 55);
        layerDrawable.setLayerHeight(0, AndroidUtilities.dp(16.0f));
        layerDrawable.setLayerInsetTop(1, AndroidUtilities.dp(16.0f));
        return layerDrawable;
    }

    public void setContent(CharSequence charSequence, CharSequence charSequence2) {
        this.title = charSequence;
        updateTitle();
        this.views.clear();
        this.views.add(this.header);
        Context context = getContext();
        TextView textView = new TextView(context);
        this.titleView = textView;
        textView.setTypeface(AndroidUtilities.bold());
        TextView textView2 = this.titleView;
        int i = Theme.key_windowBackgroundWhiteBlackText;
        textView2.setTextColor(getThemedColor(i));
        this.titleView.setTextSize(1, 20.0f);
        TextView textView3 = this.titleView;
        textView3.setText(Emoji.replaceEmoji(charSequence, textView3.getPaint().getFontMetricsInt(), false));
        this.titleView.setGravity(1);
        this.titleView.setPadding(AndroidUtilities.dp(22.0f), 0, AndroidUtilities.dp(22.0f), 0);
        this.views.add(this.titleView);
        if (charSequence2 == null) {
            this.subtitleView = null;
            return;
        }
        LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(context, this.resourcesProvider);
        this.subtitleView = linksTextView;
        linksTextView.setLinkTextColor(getThemedColor(Theme.key_chat_messageLinkIn));
        this.subtitleView.setText(charSequence2);
        this.subtitleView.setTypeface(AndroidUtilities.regular());
        this.subtitleView.setTextColor(getThemedColor(i));
        this.subtitleView.setTextSize(1, 14.0f);
        this.subtitleView.setGravity(1);
        this.subtitleView.setPadding(AndroidUtilities.dp(22.0f), AndroidUtilities.dp(6.0f), AndroidUtilities.dp(22.0f), AndroidUtilities.dp(14.0f));
        this.views.add(this.subtitleView);
    }

    public void addView(View view) {
        this.views.add(view);
    }

    public void addHeaderAccessory(View view) {
        ArrayList<View> arrayList = this.views;
        arrayList.add(arrayList.indexOf(this.header) + 1, view);
    }

    public void addNumberPill(Integer num) {
        if (num == null) {
            return;
        }
        SupporterArrowView supporterArrowView = this.header.arrowView;
        GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.LEFT_RIGHT, new int[]{supporterArrowView.color1, supporterArrowView.color2});
        gradientDrawable.setCornerRadius(AndroidUtilities.dp(12.0f));
        TextView textView = new TextView(getContext());
        textView.setBackground(gradientDrawable);
        textView.setTypeface(AndroidUtilities.bold());
        textView.setTextSize(1, 13.0f);
        textView.setTextColor(SupporterBadgeHint.resolveTextColor(ColorUtils.blendARGB(supporterArrowView.color1, supporterArrowView.color2, 0.5f)));
        textView.setText(LocaleController.formatString(C2807R.string.SupporterBadgeNameCustom, BadgesController.formatNumber(num.intValue())));
        textView.setGravity(17);
        textView.setPadding(AndroidUtilities.dp(10.0f), 0, AndroidUtilities.dp(10.0f), 0);
        FrameLayout frameLayout = new FrameLayout(getContext());
        frameLayout.addView(textView, LayoutHelper.createFrame(-2, 24.0f, 1, 0.0f, 0.0f, 0.0f, 12.0f));
        addHeaderAccessory(frameLayout);
    }

    public TextView addCaptionBubble(CharSequence charSequence) {
        LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(getContext(), this.resourcesProvider);
        linksTextView.setLinkTextColor(getThemedColor(Theme.key_chat_messageLinkIn));
        linksTextView.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteBlackText));
        linksTextView.setTextSize(1, 15.0f);
        linksTextView.setTypeface(AndroidUtilities.regular());
        linksTextView.setText(charSequence);
        MessageDrawable messageDrawable = new MessageDrawable(0, false, false, this.resourcesProvider);
        messageDrawable.shadow = false;
        messageDrawable.overrideColor = Integer.valueOf(getThemedColor(Theme.key_windowBackgroundGray));
        linksTextView.setBackground(messageDrawable);
        linksTextView.setPadding(AndroidUtilities.dp(19.0f), AndroidUtilities.dp(9.0f), AndroidUtilities.dp(15.0f), AndroidUtilities.dp(8.0f));
        FrameLayout frameLayout = new FrameLayout(getContext());
        frameLayout.addView(linksTextView, LayoutHelper.createFrame(-2, -2.0f, 1, 32.0f, 10.0f, 32.0f, 4.0f));
        ArrayList<View> arrayList = this.views;
        arrayList.add(arrayList.indexOf(this.titleView) + 1, frameLayout);
        return linksTextView;
    }

    public SupporterArrowView getArrowView() {
        return this.header.arrowView;
    }

    public void addHeader(CharSequence charSequence) {
        TextView textView = new TextView(getContext());
        textView.setText(charSequence);
        textView.setTypeface(AndroidUtilities.bold());
        textView.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteBlackText));
        textView.setTextSize(1, 17.0f);
        textView.setGravity(1);
        int iDp = AndroidUtilities.dp(22.0f);
        ArrayList<View> arrayList = this.views;
        textView.setPadding(iDp, AndroidUtilities.dp(arrayList.get(arrayList.size() - 1) == this.subtitleView ? 4.0f : 20.0f), AndroidUtilities.dp(22.0f), AndroidUtilities.dp(6.0f));
        this.views.add(textView);
    }

    public ButtonWithCounterView addSecondaryButton(CharSequence charSequence, View.OnClickListener onClickListener) {
        ButtonWithCounterView neutral = new ButtonWithCounterView(getContext(), true, this.resourcesProvider).setNeutral();
        neutral.setRound();
        neutral.setText(charSequence, false);
        neutral.setOnClickListener(onClickListener);
        if (this.secondaryRow == null) {
            ((LinearLayout.LayoutParams) this.button.getLayoutParams()).bottomMargin = AndroidUtilities.dp(8.0f);
            LinearLayout linearLayout = new LinearLayout(getContext());
            this.secondaryRow = linearLayout;
            linearLayout.setOrientation(0);
            this.bottomContainer.addView(this.secondaryRow, LayoutHelper.createLinear(-1, 48, 0, 12, 0, 12, 12));
        }
        LinearLayout linearLayout2 = this.secondaryRow;
        linearLayout2.addView(neutral, LayoutHelper.createLinear(0, -1, 1.0f, linearLayout2.getChildCount() > 0 ? 8 : 0, 0, 0, 0));
        return neutral;
    }

    public void setBadge(long j) {
        this.header.arrowView.setBadge(this.currentAccount, j);
    }

    public void commit() {
        UniversalAdapter universalAdapter = this.adapter;
        if (universalAdapter != null) {
            universalAdapter.update(false);
        }
        this.layoutManager.scrollToPositionWithOffset(0, 0);
    }

    @Override // org.telegram.ui.Components.BottomSheetWithRecyclerListView
    public CharSequence getTitle() {
        CharSequence charSequence = this.title;
        return charSequence != null ? charSequence : _UrlKt.FRAGMENT_ENCODE_SET;
    }

    @Override // org.telegram.ui.Components.BottomSheetWithRecyclerListView
    public RecyclerListView.SelectionAdapter createAdapter(RecyclerListView recyclerListView) {
        UniversalAdapter universalAdapter = new UniversalAdapter(recyclerListView, getContext(), this.currentAccount, 0, true, new Utilities.Callback2() { // from class: com.exteragram.messenger.components.supporter.SupporterSheet$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$createAdapter$2((ArrayList) obj, (UniversalAdapter) obj2);
            }
        }, this.resourcesProvider);
        this.adapter = universalAdapter;
        return universalAdapter;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createAdapter$2(ArrayList arrayList, UniversalAdapter universalAdapter) {
        ArrayList<View> arrayList2 = this.views;
        if (arrayList2 == null) {
            return;
        }
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            View view = arrayList2.get(i);
            i++;
            UItem uItemAsCustom = UItem.asCustom(view);
            uItemAsCustom.transparent = true;
            arrayList.add(uItemAsCustom);
        }
        arrayList.add(UItem.asSpace(AndroidUtilities.dp(8.0f)));
    }

    public void setEnterFrom(SupporterEnterFrom supporterEnterFrom) {
        this.enterFrom = supporterEnterFrom;
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet
    public boolean onCustomOpenAnimation() {
        SupporterEnterFrom supporterEnterFrom = this.enterFrom;
        if (supporterEnterFrom == null) {
            return false;
        }
        this.enterProgress = 0.0f;
        this.header.arrowView.setIconHidden(true);
        supporterEnterFrom.drawable.setAlpha(0);
        supporterEnterFrom.invalidate();
        if (!this.header.arrowView.hasBadge()) {
            this.header.arrowView.iconView.startEnterAnimation(-360, 100L);
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.enterAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.exteragram.messenger.components.supporter.SupporterSheet$$ExternalSyntheticLambda1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$onCustomOpenAnimation$3(valueAnimator);
            }
        });
        this.enterAnimator.addListener(new C13042(supporterEnterFrom));
        this.enterAnimator.setDuration(600L);
        this.enterAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        this.enterAnimator.start();
        return super.onCustomOpenAnimation();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCustomOpenAnimation$3(ValueAnimator valueAnimator) {
        this.enterProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.container.invalidate();
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.components.supporter.SupporterSheet$2 */
    public class C13042 extends AnimatorListenerAdapter {
        final /* synthetic */ SupporterEnterFrom val$from;

        public C13042(SupporterEnterFrom supporterEnterFrom) {
            this.val$from = supporterEnterFrom;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            SupporterSheet.this.enterProgress = 1.0f;
            SupporterSheet.this.header.arrowView.setIconHidden(false);
            SupporterSheet.this.container.postOnAnimation(new Runnable() { // from class: com.exteragram.messenger.components.supporter.SupporterSheet$2$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onAnimationEnd$0();
                }
            });
            ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, 255);
            final SupporterEnterFrom supporterEnterFrom = this.val$from;
            valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.exteragram.messenger.components.supporter.SupporterSheet$2$$ExternalSyntheticLambda1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    SupporterSheet.C13042.$r8$lambda$63DrHdUK3wO7tx01b_3XZmGUbrs(supporterEnterFrom, valueAnimator);
                }
            });
            valueAnimatorOfInt.start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onAnimationEnd$0() {
            SupporterSheet.this.enterFrom = null;
            SupporterSheet.this.container.invalidate();
        }

        public static /* synthetic */ void $r8$lambda$63DrHdUK3wO7tx01b_3XZmGUbrs(SupporterEnterFrom supporterEnterFrom, ValueAnimator valueAnimator) {
            supporterEnterFrom.drawable.setAlpha(((Integer) valueAnimator.getAnimatedValue()).intValue());
            supporterEnterFrom.invalidate();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0065  */
    @Override // org.telegram.ui.ActionBar.BottomSheet
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void mainContainerDispatchDraw(Canvas canvas) {
        Drawable drawable;
        super.mainContainerDispatchDraw(canvas);
        SupporterEnterFrom supporterEnterFrom = this.enterFrom;
        if (supporterEnterFrom == null) {
            return;
        }
        View iconView = this.header.arrowView.getIconView();
        this.container.getLocationOnScreen(this.location);
        float f = supporterEnterFrom.screenX;
        int[] iArr = this.location;
        float f2 = f - iArr[0];
        float f3 = supporterEnterFrom.screenY - iArr[1];
        iconView.getLocationOnScreen(iArr);
        float width = (this.location[0] - r7) + (iconView.getWidth() / 2.0f);
        float height = ((this.location[1] - r10) + (iconView.getHeight() / 2.0f)) - this.containerView.getTranslationY();
        Drawable drawable2 = supporterEnterFrom.drawable;
        if (drawable2 instanceof AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable) {
            AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable swapAnimatedEmojiDrawable = (AnimatedEmojiDrawable.SwapAnimatedEmojiDrawable) drawable2;
            drawable = swapAnimatedEmojiDrawable.getDrawable() != null ? swapAnimatedEmojiDrawable.getDrawable() : supporterEnterFrom.drawable;
        }
        Drawable drawable3 = supporterEnterFrom.drawable;
        ColorFilter colorFilter = drawable != drawable3 ? drawable3.getColorFilter() : null;
        float intrinsicWidth = supporterEnterFrom.scale * drawable.getIntrinsicWidth();
        float height2 = iconView.getHeight() * (this.header.arrowView.hasBadge() ? 1.0f : 0.8f);
        if (intrinsicWidth <= 0.0f || height2 <= 0.0f) {
            return;
        }
        float fLerp = AndroidUtilities.lerp(f2, width, CubicBezierInterpolator.EASE_OUT_QUINT.getInterpolation(this.enterProgress));
        float fLerp2 = AndroidUtilities.lerp(f3, height, this.enterProgress);
        canvas.save();
        float f4 = supporterEnterFrom.scale;
        float fLerp3 = AndroidUtilities.lerp(f4, (height2 / intrinsicWidth) * f4, this.enterProgress);
        canvas.scale(fLerp3, fLerp3, fLerp, fLerp2);
        int i = (int) fLerp;
        int i2 = (int) fLerp2;
        drawable.setBounds(i - (drawable.getIntrinsicWidth() / 2), i2 - (drawable.getIntrinsicHeight() / 2), i + (drawable.getIntrinsicWidth() / 2), i2 + (drawable.getIntrinsicHeight() / 2));
        drawable.setAlpha((int) ((1.0f - Utilities.clamp(this.enterProgress, 1.0f, 0.0f)) * 255.0f));
        if (colorFilter != null) {
            drawable.setColorFilter(colorFilter);
        }
        drawable.draw(canvas);
        if (colorFilter != null) {
            drawable.setColorFilter(null);
        }
        drawable.setAlpha(drawable == supporterEnterFrom.drawable ? 0 : 255);
        canvas.restore();
        canvas.save();
        float fLerp4 = AndroidUtilities.lerp(intrinsicWidth / height2, 1.0f, this.enterProgress);
        canvas.scale(fLerp4, fLerp4, fLerp, fLerp2);
        canvas.translate(fLerp - (iconView.getWidth() / 2.0f), fLerp2 - (iconView.getHeight() / 2.0f));
        iconView.draw(canvas);
        canvas.restore();
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface, org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    /* JADX INFO: renamed from: dismiss */
    public void lambda$new$0() {
        ValueAnimator valueAnimator = this.enterAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        super.lambda$new$0();
    }

    public static class SupporterArrowHeader extends FrameLayout {
        final SupporterArrowView arrowView;

        public SupporterArrowHeader(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            setClipChildren(false);
            SupporterArrowView supporterArrowView = new SupporterArrowView(context, resourcesProvider);
            this.arrowView = supporterArrowView;
            addView(supporterArrowView, LayoutHelper.createFrame(-1, 190.0f, 48, 0.0f, 10.0f, 0.0f, 0.0f));
        }
    }
}
