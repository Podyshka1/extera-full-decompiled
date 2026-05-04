package org.telegram.p029ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.AnimatedTextView;
import org.telegram.p029ui.Components.BlurringShader;
import org.telegram.p029ui.Components.blur3.BlurredBackgroundDrawableViewFactory;
import org.telegram.p029ui.Components.blur3.drawable.BlurredBackgroundDrawable;
import org.telegram.p029ui.Components.blur3.drawable.color.impl.BlurredBackgroundProviderImpl;
import org.telegram.p029ui.Stories.DarkThemeResourceProvider;
import org.telegram.p029ui.Stories.recorder.CaptionContainerView;
import org.telegram.p029ui.Stories.recorder.HintView2;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CaptionPhotoViewer extends CaptionContainerView {
    private final int SHOW_ONCE;
    private final ImageView addPhotoButton;
    private boolean addPhotoVisible;
    private final Runnable applyCaption;
    private BlurredBackgroundDrawable backgroundForCaptionButton;
    private final Runnable collapseMoveButton;
    private final HintView2 hint;
    private boolean isVideo;
    private final AnimatedFloat moveButtonAnimated;
    private final ButtonBounce moveButtonBounce;
    private final RectF moveButtonBounds;
    private boolean moveButtonExpanded;
    private final AnimatedFloat moveButtonExpandedAnimated;
    private Drawable moveButtonIcon;
    private final AnimatedTextView.AnimatedTextDrawable moveButtonText;
    private boolean moveButtonVisible;
    private Utilities.Callback onTTLChange;
    private int timer;
    private final ImageView timerButton;
    private final CaptionContainerView.PeriodDrawable timerDrawable;
    private ItemOptions timerPopup;
    private boolean timerVisible;
    private final int[] values;

    @Override // org.telegram.p029ui.Stories.recorder.CaptionContainerView
    protected int additionalKeyboardHeight() {
        return 0;
    }

    @Override // org.telegram.p029ui.Stories.recorder.CaptionContainerView
    protected int getEditTextStyle() {
        return 3;
    }

    protected abstract void onMoveButtonClick();

    protected abstract void openedKeyboard();

    protected abstract boolean showMoveButton();

    public CaptionPhotoViewer(Context context, final FrameLayout frameLayout, SizeNotifierFrameLayout sizeNotifierFrameLayout, FrameLayout frameLayout2, Theme.ResourcesProvider resourcesProvider, BlurringShader.BlurManager blurManager, Runnable runnable) {
        super(context, frameLayout, sizeNotifierFrameLayout, frameLayout2, resourcesProvider, blurManager);
        this.timer = 0;
        this.SHOW_ONCE = Integer.MAX_VALUE;
        this.values = new int[]{Integer.MAX_VALUE, 3, 10, 30, 0};
        this.moveButtonBounds = new RectF();
        AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = new AnimatedTextView.AnimatedTextDrawable();
        this.moveButtonText = animatedTextDrawable;
        this.moveButtonBounce = new ButtonBounce(this);
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        this.moveButtonAnimated = new AnimatedFloat(this, 0L, 350L, cubicBezierInterpolator);
        this.moveButtonExpandedAnimated = new AnimatedFloat(this, 0L, 350L, cubicBezierInterpolator);
        this.collapseMoveButton = new Runnable() { // from class: org.telegram.ui.Components.CaptionPhotoViewer$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$2();
            }
        };
        this.applyCaption = runnable;
        animatedTextDrawable.setTextSize(AndroidUtilities.m1124dp(14.0f));
        animatedTextDrawable.setOverrideFullWidth(AndroidUtilities.displaySize.x);
        animatedTextDrawable.setTextColor(-1);
        if (isAtTop()) {
            animatedTextDrawable.setText(LocaleController.getString(C2888R.string.MoveCaptionDown));
            this.moveButtonIcon = context.getResources().getDrawable(C2888R.drawable.menu_link_below);
        } else {
            animatedTextDrawable.setText(LocaleController.getString(C2888R.string.MoveCaptionUp));
            this.moveButtonIcon = context.getResources().getDrawable(C2888R.drawable.menu_link_above);
        }
        ImageView imageView = new ImageView(context);
        this.addPhotoButton = imageView;
        imageView.setImageResource(C2888R.drawable.filled_add_photo);
        ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER;
        imageView.setScaleType(scaleType);
        imageView.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN));
        imageView.setBackground(Theme.createSelectorDrawable(1090519039, 1, AndroidUtilities.m1124dp(18.0f)));
        setAddPhotoVisible(false, false);
        addView(imageView, LayoutHelper.createFrame(44, 44.0f, (isAtTop() ? 48 : 80) | 3, 14.0f, isAtTop() ? 6.0f : 0.0f, 0.0f, isAtTop() ? 0.0f : 6.0f));
        ImageView imageView2 = new ImageView(context);
        this.timerButton = imageView2;
        CaptionContainerView.PeriodDrawable periodDrawable = new CaptionContainerView.PeriodDrawable();
        this.timerDrawable = periodDrawable;
        imageView2.setImageDrawable(periodDrawable);
        imageView2.setBackground(Theme.createSelectorDrawable(1090519039, 1, AndroidUtilities.m1124dp(18.0f)));
        imageView2.setScaleType(scaleType);
        setTimerVisible(false, false);
        addView(imageView2, LayoutHelper.createFrame(44, 44.0f, (isAtTop() ? 48 : 80) | 5, 0.0f, isAtTop() ? 6.0f : 0.0f, 10.0f, isAtTop() ? 0.0f : 6.0f));
        HintView2 hintView2 = new HintView2(context, isAtTop() ? 1 : 3);
        this.hint = hintView2;
        hintView2.setRounding(12.0f);
        hintView2.setPadding(AndroidUtilities.m1124dp(12.0f), AndroidUtilities.m1124dp(isAtTop() ? 8.0f : 0.0f), AndroidUtilities.m1124dp(12.0f), AndroidUtilities.m1124dp(isAtTop() ? 0.0f : 8.0f));
        hintView2.setJoint(1.0f, -21.0f);
        hintView2.setMultilineText(true);
        addView(hintView2, LayoutHelper.createFrame(-1, 80, (isAtTop() ? 48 : 80) | 5));
        imageView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.CaptionPhotoViewer$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$1(frameLayout, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(FrameLayout frameLayout, View view) {
        String pluralString;
        ItemOptions itemOptions = this.timerPopup;
        if (itemOptions != null && itemOptions.isShown()) {
            this.timerPopup.dismiss();
            this.timerPopup = null;
            return;
        }
        this.hint.hide();
        ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions(frameLayout, new DarkThemeResourceProvider(), this.timerButton);
        this.timerPopup = itemOptionsMakeOptions;
        itemOptionsMakeOptions.setDimAlpha(0);
        this.timerPopup.addText(LocaleController.getString(C2888R.string.TimerPeriodHint), 13, AndroidUtilities.m1124dp(200.0f));
        this.timerPopup.addGap();
        for (final int i : this.values) {
            if (i == 0) {
                pluralString = LocaleController.getString(C2888R.string.TimerPeriodDoNotDelete);
            } else if (i == Integer.MAX_VALUE) {
                pluralString = LocaleController.getString(C2888R.string.TimerPeriodOnce);
            } else {
                pluralString = LocaleController.formatPluralString("Seconds", i, new Object[0]);
            }
            this.timerPopup.add(0, pluralString, new Runnable() { // from class: org.telegram.ui.Components.CaptionPhotoViewer$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$0(i);
                }
            });
            if (this.timer == i) {
                this.timerPopup.putCheck();
            }
        }
        this.timerPopup.show();
    }

    public void expandMoveButton() {
        AndroidUtilities.cancelRunOnUIThread(this.collapseMoveButton);
        boolean zShouldShowMoveCaptionHint = MessagesController.getInstance(this.currentAccount).shouldShowMoveCaptionHint();
        this.moveButtonExpanded = zShouldShowMoveCaptionHint;
        if (zShouldShowMoveCaptionHint) {
            MessagesController.getInstance(this.currentAccount).incrementMoveCaptionHint();
            invalidate();
            AndroidUtilities.runOnUIThread(this.collapseMoveButton, 5000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2() {
        if (this.moveButtonExpanded) {
            this.moveButtonExpanded = false;
            invalidate();
        }
    }

    @Override // org.telegram.p029ui.Stories.recorder.CaptionContainerView
    public void updateKeyboard(int i) {
        boolean z = this.toKeyboardShow;
        super.updateKeyboard(i);
        if (z || !this.keyboardNotifier.keyboardVisible()) {
            return;
        }
        openedKeyboard();
    }

    @Override // org.telegram.p029ui.Stories.recorder.CaptionContainerView, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        float f = this.moveButtonAnimated.set(this.moveButtonVisible, !showMoveButton());
        float f2 = this.moveButtonExpandedAnimated.set(this.moveButtonExpanded);
        if (f > 0.0f) {
            float scale = this.moveButtonBounce.getScale(0.03f);
            int iM1124dp = AndroidUtilities.m1124dp((1.0f - this.keyboardT) * 4.0f);
            if (isAtTop()) {
                this.moveButtonBounds.set(AndroidUtilities.m1124dp(7.0f) + iM1124dp, this.bounds.bottom + AndroidUtilities.m1124dp(10.0f), iM1124dp + AndroidUtilities.m1124dp(44.0f) + ((this.moveButtonText.getCurrentWidth() + AndroidUtilities.m1124dp(11.0f)) * f2), this.bounds.bottom + AndroidUtilities.m1124dp(42.0f));
            } else {
                this.moveButtonBounds.set(AndroidUtilities.m1124dp(7.0f) + iM1124dp, this.bounds.top - AndroidUtilities.m1124dp(42.0f), iM1124dp + AndroidUtilities.m1124dp(44.0f) + ((this.moveButtonText.getCurrentWidth() + AndroidUtilities.m1124dp(11.0f)) * f2), this.bounds.top - AndroidUtilities.m1124dp(10.0f));
            }
            if (f < 1.0f) {
                canvas.saveLayerAlpha(this.moveButtonBounds, (int) (f * 255.0f), 31);
            } else {
                canvas.save();
            }
            canvas.scale(scale, scale, this.moveButtonBounds.centerX(), this.moveButtonBounds.centerY());
            canvas.clipRect(this.moveButtonBounds);
            AndroidUtilities.dpf2(16.0f);
            BlurredBackgroundDrawableViewFactory blurredBackgroundDrawableViewFactory = this.factoryForMentions;
            if (blurredBackgroundDrawableViewFactory != null) {
                if (this.backgroundForCaptionButton == null) {
                    this.backgroundForCaptionButton = blurredBackgroundDrawableViewFactory.create(this).setColorProvider(BlurredBackgroundProviderImpl.photoViewer(this.resourcesProvider)).setPadding(AndroidUtilities.m1124dp(5.0f)).setRadius(AndroidUtilities.m1124dp(16.0f));
                }
                RectF rectF = this.moveButtonBounds;
                Rect rect = AndroidUtilities.rectTmp2;
                rectF.round(rect);
                rect.inset(-AndroidUtilities.m1124dp(5.0f), -AndroidUtilities.m1124dp(5.0f));
                this.backgroundForCaptionButton.setBounds(rect);
                this.backgroundForCaptionButton.draw(canvas);
            }
            this.moveButtonIcon.setBounds((int) (this.moveButtonBounds.left + AndroidUtilities.m1124dp(9.0f)), (int) (this.moveButtonBounds.centerY() - AndroidUtilities.m1124dp(10.0f)), (int) (this.moveButtonBounds.left + AndroidUtilities.m1124dp(29.0f)), (int) (this.moveButtonBounds.centerY() + AndroidUtilities.m1124dp(10.0f)));
            this.moveButtonIcon.draw(canvas);
            AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = this.moveButtonText;
            float fM1124dp = this.moveButtonBounds.left + AndroidUtilities.m1124dp(37.0f);
            RectF rectF2 = this.moveButtonBounds;
            animatedTextDrawable.setBounds(fM1124dp, rectF2.top, rectF2.right, rectF2.bottom);
            this.moveButtonText.setAlpha((int) (f2 * 255.0f));
            this.moveButtonText.draw(canvas);
            canvas.restore();
        }
    }

    public void setOnAddPhotoClick(View.OnClickListener onClickListener) {
        this.addPhotoButton.setOnClickListener(onClickListener);
    }

    public void setAddPhotoVisible(final boolean z, boolean z2) {
        this.addPhotoVisible = z;
        this.addPhotoButton.animate().cancel();
        int i = 0;
        if (z2) {
            this.addPhotoButton.setVisibility(0);
            this.addPhotoButton.animate().alpha(z ? 1.0f : 0.0f).translationX(z ? 0.0f : AndroidUtilities.m1124dp(-8.0f)).withEndAction(new Runnable() { // from class: org.telegram.ui.Components.CaptionPhotoViewer$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$setAddPhotoVisible$3(z);
                }
            }).start();
        } else {
            this.addPhotoButton.setVisibility(z ? 0 : 8);
            this.addPhotoButton.setAlpha(z ? 1.0f : 0.0f);
            this.addPhotoButton.setTranslationX(z ? 0.0f : AndroidUtilities.m1124dp(-8.0f));
        }
        updateEditTextLeft();
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.editText.getLayoutParams();
        if (this.addPhotoVisible && this.timerVisible) {
            i = 33;
        }
        marginLayoutParams.rightMargin = AndroidUtilities.m1124dp(32 + i);
        this.editText.setLayoutParams(marginLayoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setAddPhotoVisible$3(boolean z) {
        if (z) {
            return;
        }
        this.timerButton.setVisibility(8);
    }

    @Override // org.telegram.p029ui.Stories.recorder.CaptionContainerView
    protected int getEditTextLeft() {
        if (this.addPhotoVisible) {
            return AndroidUtilities.m1124dp(31.0f);
        }
        return 0;
    }

    public void setIsVideo(boolean z) {
        this.isVideo = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p029ui.Stories.recorder.CaptionContainerView
    /* JADX INFO: renamed from: onTextChange */
    public void lambda$new$1() {
        Runnable runnable = this.applyCaption;
        if (runnable != null) {
            runnable.run();
        }
    }

    public void setTimerVisible(final boolean z, boolean z2) {
        this.timerVisible = z;
        this.timerButton.animate().cancel();
        int i = 0;
        if (z2) {
            this.timerButton.setVisibility(0);
            this.timerButton.animate().alpha(z ? 1.0f : 0.0f).translationX(z ? 0.0f : AndroidUtilities.m1124dp(8.0f)).withEndAction(new Runnable() { // from class: org.telegram.ui.Components.CaptionPhotoViewer$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$setTimerVisible$4(z);
                }
            }).start();
        } else {
            this.timerButton.setVisibility(z ? 0 : 8);
            this.timerButton.setAlpha(z ? 1.0f : 0.0f);
            this.timerButton.setTranslationX(z ? 0.0f : AndroidUtilities.m1124dp(8.0f));
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.editText.getLayoutParams();
        if (this.addPhotoVisible && this.timerVisible) {
            i = 33;
        }
        marginLayoutParams.rightMargin = AndroidUtilities.m1124dp(32 + i);
        this.editText.setLayoutParams(marginLayoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setTimerVisible$4(boolean z) {
        if (z) {
            return;
        }
        this.timerButton.setVisibility(8);
    }

    public boolean hasTimer() {
        return this.timerVisible && this.timer > 0;
    }

    public void setTimer(int i) {
        this.timer = i;
        this.timerDrawable.setValue(i == Integer.MAX_VALUE ? 1 : Math.max(1, i), this.timer > 0, true);
        HintView2 hintView2 = this.hint;
        if (hintView2 != null) {
            hintView2.hide();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: changeTimer, reason: merged with bridge method [inline-methods] */
    public void lambda$new$0(int i) {
        CharSequence charSequenceReplaceTags;
        if (this.timer == i) {
            return;
        }
        setTimer(i);
        Utilities.Callback callback = this.onTTLChange;
        if (callback != null) {
            callback.run(Integer.valueOf(i));
        }
        if (i == 0) {
            charSequenceReplaceTags = LocaleController.getString(this.isVideo ? C2888R.string.TimerPeriodVideoKeep : C2888R.string.TimerPeriodPhotoKeep);
            this.hint.setMaxWidthPx(getMeasuredWidth());
            this.hint.setMultilineText(false);
            this.hint.setInnerPadding(13.0f, 4.0f, 10.0f, 4.0f);
            this.hint.setIconMargin(0);
            this.hint.setIconTranslate(0.0f, -AndroidUtilities.m1124dp(1.0f));
        } else if (i == Integer.MAX_VALUE) {
            charSequenceReplaceTags = LocaleController.getString(this.isVideo ? C2888R.string.TimerPeriodVideoSetOnce : C2888R.string.TimerPeriodPhotoSetOnce);
            this.hint.setMaxWidthPx(getMeasuredWidth());
            this.hint.setMultilineText(false);
            this.hint.setInnerPadding(13.0f, 4.0f, 10.0f, 4.0f);
            this.hint.setIconMargin(0);
            this.hint.setIconTranslate(0.0f, -AndroidUtilities.m1124dp(1.0f));
        } else {
            if (i <= 0) {
                return;
            }
            charSequenceReplaceTags = AndroidUtilities.replaceTags(LocaleController.formatPluralString(this.isVideo ? "TimerPeriodVideoSetSeconds" : "TimerPeriodPhotoSetSeconds", i, new Object[0]));
            this.hint.setMultilineText(true);
            HintView2 hintView2 = this.hint;
            hintView2.setMaxWidthPx(HintView2.cutInFancyHalf(charSequenceReplaceTags, hintView2.getTextPaint()));
            this.hint.setInnerPadding(12.0f, 7.0f, 11.0f, 7.0f);
            this.hint.setIconMargin(2);
            this.hint.setIconTranslate(0.0f, 0.0f);
        }
        this.hint.setTranslationY(((-Math.min(AndroidUtilities.m1124dp(34.0f), getEditTextHeight())) - AndroidUtilities.m1124dp(14.0f)) * (isAtTop() ? -1.0f : 1.0f));
        this.hint.setText(charSequenceReplaceTags);
        int i2 = i > 0 ? C2888R.raw.fire_on : C2888R.raw.fire_off;
        RLottieDrawable rLottieDrawable = new RLottieDrawable(i2, _UrlKt.FRAGMENT_ENCODE_SET + i2, AndroidUtilities.m1124dp(34.0f), AndroidUtilities.m1124dp(34.0f));
        rLottieDrawable.start();
        this.hint.setIcon(rLottieDrawable);
        this.hint.show();
        this.moveButtonExpanded = false;
        AndroidUtilities.cancelRunOnUIThread(this.collapseMoveButton);
        invalidate();
    }

    @Override // org.telegram.p029ui.Stories.recorder.CaptionContainerView
    protected void onEditHeightChange(int i) {
        this.hint.setTranslationY(((-Math.min(AndroidUtilities.m1124dp(34.0f), i)) - AndroidUtilities.m1124dp(10.0f)) * (isAtTop() ? -1.0f : 1.0f));
    }

    @Override // org.telegram.p029ui.Stories.recorder.CaptionContainerView
    protected boolean clipChild(View view) {
        return view != this.hint;
    }

    public void setOnTimerChange(Utilities.Callback<Integer> callback) {
        this.onTTLChange = callback;
    }

    @Override // org.telegram.p029ui.Stories.recorder.CaptionContainerView
    protected int getCaptionLimit() {
        return UserConfig.getInstance(this.currentAccount).isPremium() ? getCaptionPremiumLimit() : getCaptionDefaultLimit();
    }

    @Override // org.telegram.p029ui.Stories.recorder.CaptionContainerView
    protected int getCaptionDefaultLimit() {
        return MessagesController.getInstance(this.currentAccount).captionLengthLimitDefault;
    }

    @Override // org.telegram.p029ui.Stories.recorder.CaptionContainerView
    protected int getCaptionPremiumLimit() {
        return MessagesController.getInstance(this.currentAccount).captionLengthLimitPremium;
    }

    @Override // org.telegram.p029ui.Stories.recorder.CaptionContainerView
    protected void beforeUpdateShownKeyboard(boolean z) {
        if (!z) {
            this.timerButton.setVisibility(this.timerVisible ? 0 : 8);
            this.addPhotoButton.setVisibility(this.addPhotoVisible ? 0 : 8);
        }
        HintView2 hintView2 = this.hint;
        if (hintView2 != null) {
            hintView2.hide();
        }
    }

    @Override // org.telegram.p029ui.Stories.recorder.CaptionContainerView
    protected void onUpdateShowKeyboard(float f) {
        float f2 = 1.0f - f;
        this.timerButton.setAlpha(f2);
        this.addPhotoButton.setAlpha(f2);
    }

    @Override // org.telegram.p029ui.Stories.recorder.CaptionContainerView
    protected void afterUpdateShownKeyboard(boolean z) {
        this.timerButton.setVisibility((z || !this.timerVisible) ? 8 : 0);
        this.addPhotoButton.setVisibility((z || !this.addPhotoVisible) ? 8 : 0);
        if (z) {
            this.timerButton.setVisibility(8);
            this.addPhotoButton.setVisibility(8);
        }
    }

    @Override // org.telegram.p029ui.Stories.recorder.CaptionContainerView
    public void updateColors(Theme.ResourcesProvider resourcesProvider) {
        super.updateColors(resourcesProvider);
        this.timerDrawable.updateColors(-1, Theme.getColor(Theme.key_chat_editMediaButton, resourcesProvider), -1);
    }

    public void setShowMoveButtonVisible(boolean z, boolean z2) {
        if (this.moveButtonVisible == z && z2) {
            return;
        }
        this.moveButtonVisible = z;
        if (!z2) {
            this.moveButtonAnimated.set(z, true);
        }
        invalidate();
    }

    @Override // org.telegram.p029ui.Stories.recorder.CaptionContainerView
    public int getEditTextHeight() {
        return super.getEditTextHeight();
    }

    @Override // org.telegram.p029ui.Stories.recorder.CaptionContainerView, android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.moveButtonBounce.setPressed(this.moveButtonAnimated.get() > 0.0f && this.moveButtonBounds.contains(motionEvent.getX(), motionEvent.getY()));
        } else if (motionEvent.getAction() == 2) {
            if (this.moveButtonBounce.isPressed() && (this.moveButtonAnimated.get() <= 0.0f || !this.moveButtonBounds.contains(motionEvent.getX(), motionEvent.getY()))) {
                this.moveButtonBounce.setPressed(false);
            }
        } else if ((motionEvent.getAction() == 1 || motionEvent.getAction() == 3) && this.moveButtonBounce.isPressed()) {
            if (motionEvent.getAction() == 1) {
                onMoveButtonClick();
                this.moveButtonText.setText(LocaleController.getString(isAtTop() ? C2888R.string.MoveCaptionDown : C2888R.string.MoveCaptionUp), true);
            }
            this.moveButtonBounce.setPressed(false);
            return true;
        }
        return this.moveButtonBounce.isPressed() || super.dispatchTouchEvent(motionEvent);
    }
}
