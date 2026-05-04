package org.telegram.p029ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.CornerPathEffect;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.p029ui.ActionBar.SimpleTextView;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Cells.ChatMessageCell;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes3.dex */
public class HintView extends FrameLayout {
    private AnimatorSet animatorSet;
    private ImageView arrowImageView;
    private int backgroundColor;
    Paint backgroundPaint;
    private int bottomOffset;
    private int currentType;
    private View currentView;
    private boolean drawPath;
    private float extraTranslationY;
    private boolean hasCloseButton;
    private Runnable hideRunnable;
    private ImageView imageView;
    private boolean isTopArrow;
    private ChatMessageCell messageCell;
    private String overrideText;
    Path path;
    private final Theme.ResourcesProvider resourcesProvider;
    private long showingDuration;
    private int shownY;
    public TextView textView;
    private float translationY;
    private boolean useScale;

    /* JADX INFO: loaded from: classes7.dex */
    public interface VisibilityListener {
    }

    protected int offsetCx() {
        return 0;
    }

    public void setVisibleListener(VisibilityListener visibilityListener) {
    }

    public HintView(Context context, int i) {
        this(context, i, false, null);
    }

    public HintView(Context context, int i, boolean z) {
        this(context, i, z, null);
    }

    public HintView(Context context, int i, Theme.ResourcesProvider resourcesProvider) {
        this(context, i, false, resourcesProvider);
    }

    public HintView(Context context, int i, boolean z, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.showingDuration = 2000L;
        this.resourcesProvider = resourcesProvider;
        this.currentType = i;
        this.isTopArrow = z;
        CorrectlyMeasuringTextView correctlyMeasuringTextView = new CorrectlyMeasuringTextView(context);
        this.textView = correctlyMeasuringTextView;
        int i2 = Theme.key_chat_gifSaveHintText;
        correctlyMeasuringTextView.setTextColor(getThemedColor(i2));
        this.textView.setTextSize(1, 14.0f);
        this.textView.setMaxLines(2);
        if (i == 7 || i == 8 || i == 9) {
            this.textView.setMaxWidth(AndroidUtilities.m1124dp(310.0f));
        } else if (i == 4) {
            this.textView.setMaxWidth(AndroidUtilities.m1124dp(280.0f));
        } else {
            this.textView.setMaxWidth(AndroidUtilities.m1124dp(250.0f));
        }
        if (this.currentType == 3) {
            this.textView.setGravity(19);
            this.textView.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.m1124dp(5.0f), getThemedColor(Theme.key_chat_gifSaveHintBackground)));
            this.textView.setPadding(AndroidUtilities.m1124dp(10.0f), 0, AndroidUtilities.m1124dp(10.0f), 0);
            addView(this.textView, LayoutHelper.createFrame(-2, 30.0f, 51, 0.0f, z ? 6.0f : 0.0f, 0.0f, z ? 0.0f : 6.0f));
        } else {
            this.textView.setGravity(51);
            this.textView.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.m1124dp(10.0f), getThemedColor(Theme.key_chat_gifSaveHintBackground)));
            this.textView.setPadding(AndroidUtilities.m1124dp(this.currentType == 0 ? 54.0f : 12.0f), AndroidUtilities.m1124dp(9.0f), AndroidUtilities.m1124dp(12.0f), AndroidUtilities.m1124dp(10.0f));
            addView(this.textView, LayoutHelper.createFrame(-2, -2.0f, 51, 0.0f, z ? 6.0f : 0.0f, 0.0f, z ? 0.0f : 6.0f));
        }
        if (i == 0) {
            this.textView.setText(LocaleController.getString(C2888R.string.AutoplayVideoInfo));
            ImageView imageView = new ImageView(context);
            this.imageView = imageView;
            imageView.setImageResource(C2888R.drawable.tooltip_sound);
            this.imageView.setScaleType(ImageView.ScaleType.CENTER);
            this.imageView.setColorFilter(new PorterDuffColorFilter(getThemedColor(i2), PorterDuff.Mode.MULTIPLY));
            addView(this.imageView, LayoutHelper.createFrame(38, 34.0f, 51, 7.0f, 7.0f, 0.0f, 0.0f));
        }
        ImageView imageView2 = new ImageView(context);
        this.arrowImageView = imageView2;
        imageView2.setImageResource(z ? C2888R.drawable.tooltip_arrow_up : C2888R.drawable.tooltip_arrow);
        this.arrowImageView.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_chat_gifSaveHintBackground), PorterDuff.Mode.MULTIPLY));
        addView(this.arrowImageView, LayoutHelper.createFrame(14, 6.0f, (z ? 48 : 80) | 3, 0.0f, 0.0f, 0.0f, 0.0f));
    }

    public void createCloseButton() {
        this.textView.setPadding(AndroidUtilities.m1124dp(12.0f), AndroidUtilities.m1124dp(7.0f), AndroidUtilities.m1124dp(36.0f), AndroidUtilities.m1124dp(8.0f));
        this.hasCloseButton = true;
        ImageView imageView = new ImageView(getContext());
        this.imageView = imageView;
        imageView.setImageResource(C2888R.drawable.msg_mini_close_tooltip);
        this.imageView.setScaleType(ImageView.ScaleType.CENTER);
        this.imageView.setColorFilter(new PorterDuffColorFilter(ColorUtils.setAlphaComponent(getThemedColor(Theme.key_chat_gifSaveHintText), 125), PorterDuff.Mode.MULTIPLY));
        ImageView imageView2 = this.imageView;
        boolean z = this.isTopArrow;
        addView(imageView2, LayoutHelper.createFrame(34, 34.0f, 21, 0.0f, z ? 3.0f : 0.0f, 0.0f, z ? 0.0f : 3.0f));
        setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.HintView$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createCloseButton$0(view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createCloseButton$0(View view) {
        hide(true);
    }

    public void setBackgroundColor(int i, int i2) {
        this.textView.setTextColor(i2);
        this.arrowImageView.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.MULTIPLY));
        TextView textView = this.textView;
        int i3 = this.currentType;
        textView.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.m1124dp((i3 == 7 || i3 == 8) ? 6.0f : 3.0f), i));
    }

    public void setOverrideText(String str) {
        this.overrideText = str;
        this.textView.setText(str);
        ChatMessageCell chatMessageCell = this.messageCell;
        if (chatMessageCell != null) {
            this.messageCell = null;
            showForMessageCell(chatMessageCell, false);
        }
    }

    public void setExtraTranslationY(float f) {
        this.extraTranslationY = f;
        setTranslationY(f + this.translationY);
    }

    public float getBaseTranslationY() {
        return this.translationY;
    }

    public boolean showForMessageCell(ChatMessageCell chatMessageCell, boolean z) {
        return showForMessageCell(chatMessageCell, null, 0, 0, z);
    }

    public boolean showForMessageCell(ChatMessageCell chatMessageCell, Object obj, int i, int i2, boolean z) {
        int iM1124dp;
        int forwardNameCenterX;
        int i3 = this.currentType;
        if ((i3 == 5 && i2 == this.shownY && this.messageCell == chatMessageCell) || (i3 != 5 && ((i3 == 0 && getTag() != null) || this.messageCell == chatMessageCell))) {
            return false;
        }
        Runnable runnable = this.hideRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.hideRunnable = null;
        }
        int[] iArr = new int[2];
        chatMessageCell.getLocationInWindow(iArr);
        int i4 = iArr[1];
        ((View) getParent()).getLocationInWindow(iArr);
        int iM1124dp2 = i4 - iArr[1];
        View view = (View) chatMessageCell.getParent();
        int i5 = this.currentType;
        if (i5 == 0) {
            ImageReceiver photoImage = chatMessageCell.getPhotoImage();
            iM1124dp2 = (int) (iM1124dp2 + photoImage.getImageY());
            int imageHeight = (int) photoImage.getImageHeight();
            int i6 = iM1124dp2 + imageHeight;
            int measuredHeight = view.getMeasuredHeight();
            if (iM1124dp2 <= getMeasuredHeight() + AndroidUtilities.m1124dp(10.0f) || i6 > measuredHeight + (imageHeight / 4)) {
                return false;
            }
            forwardNameCenterX = chatMessageCell.getNoSoundIconCenterX();
            measure(View.MeasureSpec.makeMeasureSpec(MediaDataController.MAX_STYLE_RUNS_COUNT, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(MediaDataController.MAX_STYLE_RUNS_COUNT, Integer.MIN_VALUE));
        } else if (i5 == 5) {
            Integer num = (Integer) obj;
            iM1124dp2 += i2;
            this.shownY = i2;
            if (num.intValue() == -1) {
                this.textView.setText(LocaleController.getString(C2888R.string.PollSelectOption));
            } else if (chatMessageCell.getMessageObject().isQuiz()) {
                if (num.intValue() == 0) {
                    this.textView.setText(LocaleController.getString(C2888R.string.NoVotesQuiz));
                } else {
                    this.textView.setText(LocaleController.formatPluralString("Answer", num.intValue(), new Object[0]));
                }
            } else if (num.intValue() == 0) {
                this.textView.setText(LocaleController.getString(C2888R.string.NoVotes));
            } else {
                this.textView.setText(LocaleController.formatPluralString("Vote", num.intValue(), new Object[0]));
            }
            measure(View.MeasureSpec.makeMeasureSpec(MediaDataController.MAX_STYLE_RUNS_COUNT, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(MediaDataController.MAX_STYLE_RUNS_COUNT, Integer.MIN_VALUE));
            forwardNameCenterX = i;
        } else {
            MessageObject messageObject = chatMessageCell.getMessageObject();
            String str = this.overrideText;
            if (str == null) {
                this.textView.setText(LocaleController.getString(C2888R.string.HidAccount));
            } else {
                this.textView.setText(str);
            }
            measure(View.MeasureSpec.makeMeasureSpec(MediaDataController.MAX_STYLE_RUNS_COUNT, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(MediaDataController.MAX_STYLE_RUNS_COUNT, Integer.MIN_VALUE));
            TLRPC.User currentUser = chatMessageCell.getCurrentUser();
            if (currentUser != null && currentUser.f1825id == 0) {
                iM1124dp = (chatMessageCell.getMeasuredHeight() - Math.max(0, chatMessageCell.getBottom() - view.getMeasuredHeight())) - AndroidUtilities.m1124dp(50.0f);
            } else {
                iM1124dp2 += AndroidUtilities.m1124dp(22.0f);
                if (!messageObject.isOutOwner() && chatMessageCell.isDrawNameLayout()) {
                    iM1124dp = AndroidUtilities.m1124dp(20.0f);
                }
                if (this.isTopArrow && iM1124dp2 <= getMeasuredHeight() + AndroidUtilities.m1124dp(10.0f)) {
                    return false;
                }
                forwardNameCenterX = chatMessageCell.getForwardNameCenterX();
            }
            iM1124dp2 += iM1124dp;
            if (this.isTopArrow) {
            }
            forwardNameCenterX = chatMessageCell.getForwardNameCenterX();
        }
        int measuredWidth = view.getMeasuredWidth();
        if (this.isTopArrow) {
            float f = this.extraTranslationY;
            float fM1124dp = AndroidUtilities.m1124dp(44.0f);
            this.translationY = fM1124dp;
            setTranslationY(f + fM1124dp);
        } else {
            float f2 = this.extraTranslationY;
            float measuredHeight2 = iM1124dp2 - getMeasuredHeight();
            this.translationY = measuredHeight2;
            setTranslationY(f2 + measuredHeight2);
        }
        int left = chatMessageCell.getLeft() + forwardNameCenterX;
        int iM1124dp3 = AndroidUtilities.m1124dp(19.0f);
        if (this.currentType == 5) {
            int iMax = Math.max(0, (forwardNameCenterX - (getMeasuredWidth() / 2)) - AndroidUtilities.m1124dp(19.1f));
            setTranslationX(iMax);
            iM1124dp3 += iMax;
        } else if (left > view.getMeasuredWidth() / 2) {
            int measuredWidth2 = (measuredWidth - getMeasuredWidth()) - AndroidUtilities.m1124dp(38.0f);
            setTranslationX(measuredWidth2);
            iM1124dp3 += measuredWidth2;
        } else {
            setTranslationX(0.0f);
        }
        float left2 = ((chatMessageCell.getLeft() + forwardNameCenterX) - iM1124dp3) - (this.arrowImageView.getMeasuredWidth() / 2);
        this.arrowImageView.setTranslationX(left2);
        if (left > view.getMeasuredWidth() / 2) {
            if (left2 < AndroidUtilities.m1124dp(10.0f)) {
                float fM1124dp2 = left2 - AndroidUtilities.m1124dp(10.0f);
                setTranslationX(getTranslationX() + fM1124dp2);
                this.arrowImageView.setTranslationX(left2 - fM1124dp2);
            }
        } else if (left2 > getMeasuredWidth() - AndroidUtilities.m1124dp(24.0f)) {
            float measuredWidth3 = (left2 - getMeasuredWidth()) + AndroidUtilities.m1124dp(24.0f);
            setTranslationX(measuredWidth3);
            this.arrowImageView.setTranslationX(left2 - measuredWidth3);
        } else if (left2 < AndroidUtilities.m1124dp(10.0f)) {
            float fM1124dp3 = left2 - AndroidUtilities.m1124dp(10.0f);
            setTranslationX(getTranslationX() + fM1124dp3);
            this.arrowImageView.setTranslationX(left2 - fM1124dp3);
        }
        this.messageCell = chatMessageCell;
        AnimatorSet animatorSet = this.animatorSet;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.animatorSet = null;
        }
        setTag(1);
        setVisibility(0);
        if (z) {
            AnimatorSet animatorSet2 = new AnimatorSet();
            this.animatorSet = animatorSet2;
            animatorSet2.playTogether(ObjectAnimator.ofFloat(this, (Property<HintView, Float>) View.ALPHA, 0.0f, 1.0f));
            this.animatorSet.addListener(new C44661());
            this.animatorSet.setDuration(300L);
            this.animatorSet.start();
        } else {
            setAlpha(1.0f);
        }
        return true;
    }

    /* JADX INFO: renamed from: org.telegram.ui.Components.HintView$1 */
    /* JADX INFO: loaded from: classes7.dex */
    class C44661 extends AnimatorListenerAdapter {
        C44661() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            HintView.this.animatorSet = null;
            if (HintView.this.hasCloseButton) {
                return;
            }
            HintView hintView = HintView.this;
            Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.HintView$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onAnimationEnd$0();
                }
            };
            hintView.hideRunnable = runnable;
            AndroidUtilities.runOnUIThread(runnable, HintView.this.currentType == 0 ? 10000L : 2000L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onAnimationEnd$0() {
            HintView.this.hide();
        }
    }

    public boolean showForView(View view, boolean z) {
        if (this.currentView == view || getTag() != null) {
            if (getTag() != null) {
                updatePosition(view);
            }
            return false;
        }
        Runnable runnable = this.hideRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.hideRunnable = null;
        }
        updatePosition(view);
        this.currentView = view;
        AnimatorSet animatorSet = this.animatorSet;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.animatorSet = null;
        }
        setTag(1);
        setVisibility(0);
        if (z) {
            AnimatorSet animatorSet2 = new AnimatorSet();
            this.animatorSet = animatorSet2;
            boolean z2 = this.useScale;
            Property property = View.ALPHA;
            if (z2) {
                setPivotX(this.arrowImageView.getX() + (this.arrowImageView.getMeasuredWidth() / 2.0f));
                setPivotY(this.arrowImageView.getY() + (this.arrowImageView.getMeasuredHeight() / 2.0f));
                this.animatorSet.playTogether(ObjectAnimator.ofFloat(this, (Property<HintView, Float>) property, 0.0f, 1.0f), ObjectAnimator.ofFloat(this, (Property<HintView, Float>) View.SCALE_Y, 0.5f, 1.0f), ObjectAnimator.ofFloat(this, (Property<HintView, Float>) View.SCALE_X, 0.5f, 1.0f));
                this.animatorSet.setDuration(350L);
                this.animatorSet.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            } else {
                animatorSet2.playTogether(ObjectAnimator.ofFloat(this, (Property<HintView, Float>) property, 0.0f, 1.0f));
                this.animatorSet.setDuration(300L);
            }
            this.animatorSet.addListener(new C44672());
            this.animatorSet.start();
        } else {
            setAlpha(1.0f);
        }
        return true;
    }

    /* JADX INFO: renamed from: org.telegram.ui.Components.HintView$2 */
    /* JADX INFO: loaded from: classes7.dex */
    class C44672 extends AnimatorListenerAdapter {
        C44672() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            HintView.this.animatorSet = null;
            if (HintView.this.hasCloseButton) {
                return;
            }
            HintView hintView = HintView.this;
            Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.HintView$2$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onAnimationEnd$0();
                }
            };
            hintView.hideRunnable = runnable;
            AndroidUtilities.runOnUIThread(runnable, HintView.this.showingDuration);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onAnimationEnd$0() {
            HintView.this.hide();
        }
    }

    public void updatePosition() {
        View view = this.currentView;
        if (view == null) {
            return;
        }
        updatePosition(view);
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x014b A[PHI: r1
  0x014b: PHI (r1v12 int) = (r1v11 int), (r1v16 int) binds: [B:66:0x0168, B:59:0x0148] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01b2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void updatePosition(View view) {
        int measuredHeight;
        int iM1124dp;
        int iM1124dp2;
        int i;
        int measuredWidth;
        View view2;
        int i2;
        int iOffsetCx;
        int i3;
        int i4;
        int i5;
        measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.displaySize.x, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.displaySize.x, Integer.MIN_VALUE));
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        int iM1124dp3 = iArr[1] - AndroidUtilities.m1124dp(4.0f);
        int i6 = this.currentType;
        if (i6 == 4) {
            iM1124dp2 = AndroidUtilities.m1124dp(4.0f);
        } else {
            if (i6 == 6 && this.isTopArrow) {
                measuredHeight = view.getMeasuredHeight() + getMeasuredHeight();
                iM1124dp = AndroidUtilities.m1124dp(10.0f);
            } else if (i6 == 7 || (i6 == 8 && this.isTopArrow)) {
                measuredHeight = view.getMeasuredHeight() + getMeasuredHeight();
                iM1124dp = AndroidUtilities.m1124dp(8.0f);
            } else {
                if (i6 == 8) {
                    iM1124dp3 -= AndroidUtilities.m1124dp(10.0f);
                }
                i = this.currentType;
                int measuredWidth2 = 0;
                if (i == 8 || !this.isTopArrow) {
                    if (i != 3) {
                        measuredWidth = iArr[0];
                    } else {
                        measuredWidth = iArr[0] + (view.getMeasuredWidth() / 2);
                    }
                } else if (view instanceof SimpleTextView) {
                    SimpleTextView simpleTextView = (SimpleTextView) view;
                    Drawable rightDrawable = simpleTextView.getRightDrawable();
                    measuredWidth = (iArr[0] + (rightDrawable != null ? rightDrawable.getBounds().centerX() : simpleTextView.getTextWidth() / 2)) - AndroidUtilities.m1124dp(8.0f);
                } else if (view instanceof TextView) {
                    measuredWidth = (iArr[0] + ((TextView) view).getMeasuredWidth()) - AndroidUtilities.m1124dp(16.5f);
                } else {
                    measuredWidth = iArr[0];
                }
                view2 = (View) getParent();
                view2.getLocationInWindow(iArr);
                int i7 = measuredWidth - iArr[0];
                i2 = (iM1124dp3 - iArr[1]) - this.bottomOffset;
                iOffsetCx = i7 + offsetCx();
                int measuredWidth3 = view2.getMeasuredWidth();
                if (!this.isTopArrow && (i5 = this.currentType) != 6 && i5 != 7 && i5 != 8) {
                    float f = this.extraTranslationY;
                    float fM1124dp = AndroidUtilities.m1124dp(44.0f);
                    this.translationY = fM1124dp;
                    setTranslationY(f + fM1124dp);
                } else {
                    float f2 = this.extraTranslationY;
                    float measuredHeight2 = i2 - getMeasuredHeight();
                    this.translationY = measuredHeight2;
                    setTranslationY(f2 + measuredHeight2);
                }
                if (getLayoutParams() instanceof ViewGroup.MarginLayoutParams) {
                    i3 = 0;
                    i4 = 0;
                } else {
                    i3 = ((ViewGroup.MarginLayoutParams) getLayoutParams()).leftMargin;
                    i4 = ((ViewGroup.MarginLayoutParams) getLayoutParams()).rightMargin;
                }
                if (this.currentType != 8 && !this.isTopArrow) {
                    measuredWidth2 = (((measuredWidth3 - i3) - i4) - getMeasuredWidth()) / 2;
                } else if (iOffsetCx <= view2.getMeasuredWidth() / 2) {
                    if (this.currentType == 3) {
                        int measuredWidth4 = (int) (measuredWidth3 - (getMeasuredWidth() * 1.5f));
                        if (measuredWidth4 >= 0) {
                            measuredWidth2 = measuredWidth4;
                        }
                    } else {
                        measuredWidth2 = (measuredWidth3 - getMeasuredWidth()) - (i4 + i3);
                    }
                } else if (this.currentType == 3 && (measuredWidth4 = (iOffsetCx - (getMeasuredWidth() / 2)) - this.arrowImageView.getMeasuredWidth()) >= 0) {
                }
                setTranslationX(measuredWidth2);
                float measuredWidth5 = (iOffsetCx - (i3 + measuredWidth2)) - (this.arrowImageView.getMeasuredWidth() / 2.0f);
                if (this.currentType == 7) {
                    measuredWidth5 += AndroidUtilities.m1124dp(2.0f);
                }
                this.arrowImageView.setTranslationX(measuredWidth5);
                if (iOffsetCx <= view2.getMeasuredWidth() / 2) {
                    if (measuredWidth5 < AndroidUtilities.m1124dp(10.0f)) {
                        float fM1124dp2 = measuredWidth5 - AndroidUtilities.m1124dp(10.0f);
                        setTranslationX(getTranslationX() + fM1124dp2);
                        this.arrowImageView.setTranslationX(measuredWidth5 - fM1124dp2);
                        return;
                    }
                    return;
                }
                if (measuredWidth5 > getMeasuredWidth() - AndroidUtilities.m1124dp(24.0f)) {
                    float measuredWidth6 = (measuredWidth5 - getMeasuredWidth()) + AndroidUtilities.m1124dp(24.0f);
                    setTranslationX(measuredWidth6);
                    this.arrowImageView.setTranslationX(measuredWidth5 - measuredWidth6);
                    return;
                } else {
                    if (measuredWidth5 < AndroidUtilities.m1124dp(10.0f)) {
                        float fM1124dp3 = measuredWidth5 - AndroidUtilities.m1124dp(10.0f);
                        setTranslationX(getTranslationX() + fM1124dp3);
                        this.arrowImageView.setTranslationX(measuredWidth5 - fM1124dp3);
                        return;
                    }
                    return;
                }
            }
            iM1124dp2 = measuredHeight + iM1124dp;
        }
        iM1124dp3 += iM1124dp2;
        i = this.currentType;
        int measuredWidth22 = 0;
        if (i == 8) {
            if (i != 3) {
            }
        }
        view2 = (View) getParent();
        view2.getLocationInWindow(iArr);
        int i72 = measuredWidth - iArr[0];
        i2 = (iM1124dp3 - iArr[1]) - this.bottomOffset;
        iOffsetCx = i72 + offsetCx();
        int measuredWidth32 = view2.getMeasuredWidth();
        if (!this.isTopArrow) {
            float f22 = this.extraTranslationY;
            float measuredHeight22 = i2 - getMeasuredHeight();
            this.translationY = measuredHeight22;
            setTranslationY(f22 + measuredHeight22);
        }
        if (getLayoutParams() instanceof ViewGroup.MarginLayoutParams) {
        }
        if (this.currentType != 8) {
            if (iOffsetCx <= view2.getMeasuredWidth() / 2) {
            }
        }
        setTranslationX(measuredWidth22);
        float measuredWidth52 = (iOffsetCx - (i3 + measuredWidth22)) - (this.arrowImageView.getMeasuredWidth() / 2.0f);
        if (this.currentType == 7) {
        }
        this.arrowImageView.setTranslationX(measuredWidth52);
        if (iOffsetCx <= view2.getMeasuredWidth() / 2) {
        }
    }

    public void hide() {
        hide(true);
    }

    public void hide(boolean z) {
        if (getTag() == null) {
            return;
        }
        setTag(null);
        Runnable runnable = this.hideRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.hideRunnable = null;
        }
        AnimatorSet animatorSet = this.animatorSet;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.animatorSet = null;
        }
        if (z) {
            AnimatorSet animatorSet2 = new AnimatorSet();
            this.animatorSet = animatorSet2;
            boolean z2 = this.useScale;
            Property property = View.ALPHA;
            if (z2) {
                animatorSet2.playTogether(ObjectAnimator.ofFloat(this, (Property<HintView, Float>) property, 1.0f, 0.0f), ObjectAnimator.ofFloat(this, (Property<HintView, Float>) View.SCALE_Y, 1.0f, 0.5f), ObjectAnimator.ofFloat(this, (Property<HintView, Float>) View.SCALE_X, 1.0f, 0.5f));
                this.animatorSet.setDuration(150L);
                this.animatorSet.setInterpolator(CubicBezierInterpolator.DEFAULT);
            } else {
                animatorSet2.playTogether(ObjectAnimator.ofFloat(this, (Property<HintView, Float>) property, 0.0f));
                this.animatorSet.setDuration(300L);
            }
            this.animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.HintView.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    HintView.this.setVisibility(4);
                    HintView.this.getClass();
                    HintView.this.currentView = null;
                    HintView.this.messageCell = null;
                    HintView.this.animatorSet = null;
                }
            });
            this.animatorSet.start();
            return;
        }
        setVisibility(4);
        this.currentView = null;
        this.messageCell = null;
        this.animatorSet = null;
    }

    public boolean isShowing() {
        return getTag() != null;
    }

    public void setText(CharSequence charSequence) {
        this.textView.setText(charSequence);
    }

    public ChatMessageCell getMessageCell() {
        return this.messageCell;
    }

    public void setShowingDuration(long j) {
        this.showingDuration = j;
    }

    public void setBottomOffset(int i) {
        this.bottomOffset = i;
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    public void setUseScale(boolean z) {
        this.useScale = z;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (this.drawPath && this.path != null) {
            if (this.backgroundPaint == null) {
                Paint paint = new Paint(1);
                this.backgroundPaint = paint;
                paint.setPathEffect(new CornerPathEffect(AndroidUtilities.dpf2(6.0f)));
                this.backgroundPaint.setColor(this.backgroundColor);
            }
            canvas.drawPath(this.path, this.backgroundPaint);
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.drawPath) {
            int measuredHeight = getMeasuredHeight();
            int measuredWidth = getMeasuredWidth();
            float x = this.arrowImageView.getX() + (this.arrowImageView.getMeasuredWidth() / 2.0f);
            Path path = this.path;
            if (path == null) {
                this.path = new Path();
            } else {
                path.rewind();
            }
            if (this.isTopArrow) {
                this.path.moveTo(0.0f, AndroidUtilities.m1124dp(6.0f));
                float f = measuredHeight;
                this.path.lineTo(0.0f, f);
                float f2 = measuredWidth;
                this.path.lineTo(f2, f);
                this.path.lineTo(f2, AndroidUtilities.m1124dp(6.0f));
                this.path.lineTo(AndroidUtilities.m1124dp(7.0f) + x, AndroidUtilities.m1124dp(6.0f));
                this.path.lineTo(x, -AndroidUtilities.m1124dp(2.0f));
                this.path.lineTo(x - AndroidUtilities.m1124dp(7.0f), AndroidUtilities.m1124dp(6.0f));
                this.path.close();
                return;
            }
            this.path.moveTo(0.0f, measuredHeight - AndroidUtilities.m1124dp(6.0f));
            this.path.lineTo(0.0f, 0.0f);
            float f3 = measuredWidth;
            this.path.lineTo(f3, 0.0f);
            this.path.lineTo(f3, measuredHeight - AndroidUtilities.m1124dp(6.0f));
            this.path.lineTo(AndroidUtilities.m1124dp(7.0f) + x, measuredHeight - AndroidUtilities.m1124dp(6.0f));
            this.path.lineTo(x, AndroidUtilities.m1124dp(2.0f) + measuredHeight);
            this.path.lineTo(x - AndroidUtilities.m1124dp(7.0f), measuredHeight - AndroidUtilities.m1124dp(6.0f));
            this.path.close();
        }
    }
}
