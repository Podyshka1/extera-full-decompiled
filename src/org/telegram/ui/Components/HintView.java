package org.telegram.ui.Components;

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
import com.google.android.gms.cast.framework.media.NotificationOptions;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.SimpleTextView;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.ChatMessageCell;

/* JADX INFO: loaded from: classes7.dex */
@Deprecated
public class HintView extends FrameLayout {
    private AnimatorSet animatorSet;
    public ImageView arrowImageView;
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

    public interface VisibilityListener {
    }

    public int offsetCx() {
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
            this.textView.setMaxWidth(AndroidUtilities.dp(310.0f));
        } else {
            TextView textView = this.textView;
            if (i == 4) {
                textView.setMaxWidth(AndroidUtilities.dp(280.0f));
            } else {
                textView.setMaxWidth(AndroidUtilities.dp(250.0f));
            }
        }
        int i3 = this.currentType;
        TextView textView2 = this.textView;
        if (i3 == 3) {
            textView2.setGravity(19);
            this.textView.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(5.0f), getThemedColor(Theme.key_chat_gifSaveHintBackground)));
            this.textView.setPadding(AndroidUtilities.dp(10.0f), 0, AndroidUtilities.dp(10.0f), 0);
            addView(this.textView, LayoutHelper.createFrame(-2, 30.0f, 51, 0.0f, z ? 6.0f : 0.0f, 0.0f, z ? 0.0f : 6.0f));
        } else {
            textView2.setGravity(51);
            this.textView.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(10.0f), getThemedColor(Theme.key_chat_gifSaveHintBackground)));
            this.textView.setPadding(AndroidUtilities.dp(this.currentType == 0 ? 54.0f : 12.0f), AndroidUtilities.dp(9.0f), AndroidUtilities.dp(12.0f), AndroidUtilities.dp(10.0f));
            addView(this.textView, LayoutHelper.createFrame(-2, -2.0f, 51, 0.0f, z ? 6.0f : 0.0f, 0.0f, z ? 0.0f : 6.0f));
        }
        if (i == 0) {
            this.textView.setText(LocaleController.getString(C2665R.string.AutoplayVideoInfo));
            ImageView imageView = new ImageView(context);
            this.imageView = imageView;
            imageView.setImageResource(C2665R.drawable.tooltip_sound);
            this.imageView.setScaleType(ImageView.ScaleType.CENTER);
            this.imageView.setColorFilter(new PorterDuffColorFilter(getThemedColor(i2), PorterDuff.Mode.MULTIPLY));
            addView(this.imageView, LayoutHelper.createFrame(38, 34.0f, 51, 7.0f, 7.0f, 0.0f, 0.0f));
        }
        ImageView imageView2 = new ImageView(context);
        this.arrowImageView = imageView2;
        imageView2.setImageResource(z ? C2665R.drawable.tooltip_arrow_up : C2665R.drawable.tooltip_arrow);
        this.arrowImageView.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_chat_gifSaveHintBackground), PorterDuff.Mode.MULTIPLY));
        addView(this.arrowImageView, LayoutHelper.createFrame(14, 6.0f, (z ? 48 : 80) | 3, 0.0f, 0.0f, 0.0f, 0.0f));
    }

    public void createCloseButton() {
        this.textView.setPadding(AndroidUtilities.dp(12.0f), AndroidUtilities.dp(7.0f), AndroidUtilities.dp(36.0f), AndroidUtilities.dp(8.0f));
        this.hasCloseButton = true;
        ImageView imageView = new ImageView(getContext());
        this.imageView = imageView;
        imageView.setImageResource(C2665R.drawable.msg_mini_close_tooltip);
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
        textView.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp((i3 == 7 || i3 == 8) ? 6.0f : 3.0f), i));
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

    /* JADX WARN: Removed duplicated region for block: B:41:0x00cb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean showForMessageCell(ChatMessageCell chatMessageCell, Object obj, int i, int i2, boolean z) {
        int iDp;
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
        int iDp2 = i4 - iArr[1];
        View view = (View) chatMessageCell.getParent();
        int i5 = this.currentType;
        if (i5 == 0) {
            ImageReceiver photoImage = chatMessageCell.getPhotoImage();
            iDp2 = (int) (iDp2 + photoImage.getImageY());
            int imageHeight = (int) photoImage.getImageHeight();
            int i6 = iDp2 + imageHeight;
            int measuredHeight = view.getMeasuredHeight();
            if (iDp2 <= getMeasuredHeight() + AndroidUtilities.dp(10.0f) || i6 > measuredHeight + (imageHeight / 4)) {
                return false;
            }
            forwardNameCenterX = chatMessageCell.getNoSoundIconCenterX();
            measure(View.MeasureSpec.makeMeasureSpec(1000, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(1000, Integer.MIN_VALUE));
        } else if (i5 == 5) {
            Integer num = (Integer) obj;
            iDp2 += i2;
            this.shownY = i2;
            MessageObject messageObject = chatMessageCell.getMessageObject();
            if (messageObject != null && (MessageObject.getMedia(messageObject) instanceof TLRPC.TL_messageMediaPoll)) {
                TLRPC.TL_messageMediaPoll tL_messageMediaPoll = (TLRPC.TL_messageMediaPoll) MessageObject.getMedia(messageObject);
                if (MessageObject.isVoted(tL_messageMediaPoll) && !MessageObject.isVoteResultsIsNotEmpty(tL_messageMediaPoll)) {
                    TLRPC.Poll poll = tL_messageMediaPoll.poll;
                    if (!poll.closed && poll.hide_results_until_close) {
                        this.textView.setText(LocaleController.getString(C2665R.string.PollResultsWillLater));
                    }
                    measure(View.MeasureSpec.makeMeasureSpec(1000, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(1000, Integer.MIN_VALUE));
                    forwardNameCenterX = i;
                }
            } else {
                if (num.intValue() != -1) {
                    return false;
                }
                this.textView.setText(LocaleController.getString(C2665R.string.PollSelectOption));
                measure(View.MeasureSpec.makeMeasureSpec(1000, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(1000, Integer.MIN_VALUE));
                forwardNameCenterX = i;
            }
        } else {
            MessageObject messageObject2 = chatMessageCell.getMessageObject();
            String str = this.overrideText;
            TextView textView = this.textView;
            if (str == null) {
                textView.setText(LocaleController.getString(C2665R.string.HidAccount));
            } else {
                textView.setText(str);
            }
            measure(View.MeasureSpec.makeMeasureSpec(1000, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(1000, Integer.MIN_VALUE));
            TLRPC.User currentUser = chatMessageCell.getCurrentUser();
            if (currentUser != null && currentUser.id == 0) {
                iDp = (chatMessageCell.getMeasuredHeight() - Math.max(0, chatMessageCell.getBottom() - view.getMeasuredHeight())) - AndroidUtilities.dp(50.0f);
            } else {
                iDp2 += AndroidUtilities.dp(22.0f);
                if (!messageObject2.isOutOwner() && chatMessageCell.isDrawNameLayout()) {
                    iDp = AndroidUtilities.dp(20.0f);
                }
                if (this.isTopArrow && iDp2 <= getMeasuredHeight() + AndroidUtilities.dp(10.0f)) {
                    return false;
                }
                forwardNameCenterX = chatMessageCell.getForwardNameCenterX();
            }
            iDp2 += iDp;
            if (this.isTopArrow) {
            }
            forwardNameCenterX = chatMessageCell.getForwardNameCenterX();
        }
        int measuredWidth = view.getMeasuredWidth();
        boolean z2 = this.isTopArrow;
        float f = this.extraTranslationY;
        if (z2) {
            float fDp = AndroidUtilities.dp(44.0f);
            this.translationY = fDp;
            setTranslationY(f + fDp);
        } else {
            float measuredHeight2 = iDp2 - getMeasuredHeight();
            this.translationY = measuredHeight2;
            setTranslationY(f + measuredHeight2);
        }
        int left = chatMessageCell.getLeft() + forwardNameCenterX;
        int iDp3 = AndroidUtilities.dp(19.0f);
        if (this.currentType == 5) {
            int iMax = Math.max(0, (forwardNameCenterX - (getMeasuredWidth() / 2)) - AndroidUtilities.dp(19.1f));
            setTranslationX(iMax);
            iDp3 += iMax;
        } else if (left > view.getMeasuredWidth() / 2) {
            int measuredWidth2 = (measuredWidth - getMeasuredWidth()) - AndroidUtilities.dp(38.0f);
            setTranslationX(measuredWidth2);
            iDp3 += measuredWidth2;
        } else {
            setTranslationX(0.0f);
        }
        float left2 = ((chatMessageCell.getLeft() + forwardNameCenterX) - iDp3) - (this.arrowImageView.getMeasuredWidth() / 2);
        this.arrowImageView.setTranslationX(left2);
        if (left > view.getMeasuredWidth() / 2) {
            if (left2 < AndroidUtilities.dp(10.0f)) {
                float fDp2 = left2 - AndroidUtilities.dp(10.0f);
                setTranslationX(getTranslationX() + fDp2);
                this.arrowImageView.setTranslationX(left2 - fDp2);
            }
        } else if (left2 > getMeasuredWidth() - AndroidUtilities.dp(24.0f)) {
            float measuredWidth3 = (left2 - getMeasuredWidth()) + AndroidUtilities.dp(24.0f);
            setTranslationX(measuredWidth3);
            this.arrowImageView.setTranslationX(left2 - measuredWidth3);
        } else if (left2 < AndroidUtilities.dp(10.0f)) {
            float fDp3 = left2 - AndroidUtilities.dp(10.0f);
            setTranslationX(getTranslationX() + fDp3);
            this.arrowImageView.setTranslationX(left2 - fDp3);
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
            this.animatorSet.addListener(new C39001());
            this.animatorSet.setDuration(300L);
            this.animatorSet.start();
        } else {
            setAlpha(1.0f);
        }
        return true;
    }

    /* JADX INFO: renamed from: org.telegram.ui.Components.HintView$1 */
    public class C39001 extends AnimatorListenerAdapter {
        public C39001() {
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
            AndroidUtilities.runOnUIThread(runnable, HintView.this.currentType == 0 ? NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS : 2000L);
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
            this.animatorSet.addListener(new C39012());
            this.animatorSet.start();
        } else {
            setAlpha(1.0f);
        }
        return true;
    }

    /* JADX INFO: renamed from: org.telegram.ui.Components.HintView$2 */
    public class C39012 extends AnimatorListenerAdapter {
        public C39012() {
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
    /* JADX WARN: Removed duplicated region for block: B:56:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x014b A[PHI: r1
  0x014b: PHI (r1v11 int) = (r1v10 int), (r1v15 int) binds: [B:64:0x0166, B:58:0x0148] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0191  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01b0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void updatePosition(View view) {
        int measuredHeight;
        int iDp;
        int iDp2;
        int i;
        int measuredWidth;
        View view2;
        int i2;
        int iOffsetCx;
        int i3;
        int i4;
        int measuredWidth2;
        int i5;
        measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.displaySize.x, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.displaySize.x, Integer.MIN_VALUE));
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        int iDp3 = iArr[1] - AndroidUtilities.dp(4.0f);
        int i6 = this.currentType;
        if (i6 == 4) {
            iDp2 = AndroidUtilities.dp(4.0f);
        } else {
            if (i6 == 6 && this.isTopArrow) {
                measuredHeight = view.getMeasuredHeight() + getMeasuredHeight();
                iDp = AndroidUtilities.dp(10.0f);
            } else if (i6 == 7 || (i6 == 8 && this.isTopArrow)) {
                measuredHeight = view.getMeasuredHeight() + getMeasuredHeight();
                iDp = AndroidUtilities.dp(8.0f);
            } else {
                if (i6 == 8) {
                    iDp3 -= AndroidUtilities.dp(10.0f);
                }
                i = this.currentType;
                int measuredWidth3 = 0;
                if (i == 8 || !this.isTopArrow) {
                    if (i != 3) {
                        measuredWidth = iArr[0];
                    } else {
                        measuredWidth = iArr[0] + (view.getMeasuredWidth() / 2);
                    }
                } else if (view instanceof SimpleTextView) {
                    SimpleTextView simpleTextView = (SimpleTextView) view;
                    Drawable rightDrawable = simpleTextView.getRightDrawable();
                    measuredWidth = (iArr[0] + (rightDrawable != null ? rightDrawable.getBounds().centerX() : simpleTextView.getTextWidth() / 2)) - AndroidUtilities.dp(8.0f);
                } else if (view instanceof TextView) {
                    measuredWidth = (iArr[0] + ((TextView) view).getMeasuredWidth()) - AndroidUtilities.dp(16.5f);
                } else {
                    measuredWidth = iArr[0];
                }
                view2 = (View) getParent();
                view2.getLocationInWindow(iArr);
                int i7 = measuredWidth - iArr[0];
                i2 = (iDp3 - iArr[1]) - this.bottomOffset;
                iOffsetCx = i7 + offsetCx();
                int measuredWidth4 = view2.getMeasuredWidth();
                if (!this.isTopArrow && (i5 = this.currentType) != 6 && i5 != 7 && i5 != 8) {
                    float f = this.extraTranslationY;
                    float fDp = AndroidUtilities.dp(44.0f);
                    this.translationY = fDp;
                    setTranslationY(f + fDp);
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
                    measuredWidth3 = (((measuredWidth4 - i3) - i4) - getMeasuredWidth()) / 2;
                } else {
                    measuredWidth2 = view2.getMeasuredWidth() / 2;
                    int i8 = this.currentType;
                    if (iOffsetCx <= measuredWidth2) {
                        if (i8 == 3) {
                            int measuredWidth5 = (int) (measuredWidth4 - (getMeasuredWidth() * 1.5f));
                            if (measuredWidth5 >= 0) {
                                measuredWidth3 = measuredWidth5;
                            }
                        } else {
                            measuredWidth3 = (measuredWidth4 - getMeasuredWidth()) - (i4 + i3);
                        }
                    } else if (i8 == 3 && (measuredWidth5 = (iOffsetCx - (getMeasuredWidth() / 2)) - this.arrowImageView.getMeasuredWidth()) >= 0) {
                    }
                }
                setTranslationX(measuredWidth3);
                float measuredWidth6 = (iOffsetCx - (i3 + measuredWidth3)) - (this.arrowImageView.getMeasuredWidth() / 2.0f);
                if (this.currentType == 7) {
                    measuredWidth6 += AndroidUtilities.dp(2.0f);
                }
                this.arrowImageView.setTranslationX(measuredWidth6);
                if (iOffsetCx <= view2.getMeasuredWidth() / 2) {
                    if (measuredWidth6 < AndroidUtilities.dp(10.0f)) {
                        float fDp2 = measuredWidth6 - AndroidUtilities.dp(10.0f);
                        setTranslationX(getTranslationX() + fDp2);
                        this.arrowImageView.setTranslationX(measuredWidth6 - fDp2);
                        return;
                    }
                    return;
                }
                if (measuredWidth6 > getMeasuredWidth() - AndroidUtilities.dp(24.0f)) {
                    float measuredWidth7 = (measuredWidth6 - getMeasuredWidth()) + AndroidUtilities.dp(24.0f);
                    setTranslationX(measuredWidth7);
                    this.arrowImageView.setTranslationX(measuredWidth6 - measuredWidth7);
                    return;
                } else {
                    if (measuredWidth6 < AndroidUtilities.dp(10.0f)) {
                        float fDp3 = measuredWidth6 - AndroidUtilities.dp(10.0f);
                        setTranslationX(getTranslationX() + fDp3);
                        this.arrowImageView.setTranslationX(measuredWidth6 - fDp3);
                        return;
                    }
                    return;
                }
            }
            iDp2 = measuredHeight + iDp;
        }
        iDp3 += iDp2;
        i = this.currentType;
        int measuredWidth32 = 0;
        if (i == 8) {
            if (i != 3) {
            }
        }
        view2 = (View) getParent();
        view2.getLocationInWindow(iArr);
        int i72 = measuredWidth - iArr[0];
        i2 = (iDp3 - iArr[1]) - this.bottomOffset;
        iOffsetCx = i72 + offsetCx();
        int measuredWidth42 = view2.getMeasuredWidth();
        if (!this.isTopArrow) {
            float f22 = this.extraTranslationY;
            float measuredHeight22 = i2 - getMeasuredHeight();
            this.translationY = measuredHeight22;
            setTranslationY(f22 + measuredHeight22);
        }
        if (getLayoutParams() instanceof ViewGroup.MarginLayoutParams) {
        }
        if (this.currentType != 8) {
            measuredWidth2 = view2.getMeasuredWidth() / 2;
            int i82 = this.currentType;
            if (iOffsetCx <= measuredWidth2) {
            }
        }
        setTranslationX(measuredWidth32);
        float measuredWidth62 = (iOffsetCx - (i3 + measuredWidth32)) - (this.arrowImageView.getMeasuredWidth() / 2.0f);
        if (this.currentType == 7) {
        }
        this.arrowImageView.setTranslationX(measuredWidth62);
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
    public void dispatchDraw(Canvas canvas) {
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
    public void onMeasure(int i, int i2) {
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
            boolean z = this.isTopArrow;
            Path path2 = this.path;
            if (z) {
                path2.moveTo(0.0f, AndroidUtilities.dp(6.0f));
                float f = measuredHeight;
                this.path.lineTo(0.0f, f);
                float f2 = measuredWidth;
                this.path.lineTo(f2, f);
                this.path.lineTo(f2, AndroidUtilities.dp(6.0f));
                this.path.lineTo(AndroidUtilities.dp(7.0f) + x, AndroidUtilities.dp(6.0f));
                this.path.lineTo(x, -AndroidUtilities.dp(2.0f));
                this.path.lineTo(x - AndroidUtilities.dp(7.0f), AndroidUtilities.dp(6.0f));
                this.path.close();
                return;
            }
            path2.moveTo(0.0f, measuredHeight - AndroidUtilities.dp(6.0f));
            this.path.lineTo(0.0f, 0.0f);
            float f3 = measuredWidth;
            this.path.lineTo(f3, 0.0f);
            this.path.lineTo(f3, measuredHeight - AndroidUtilities.dp(6.0f));
            this.path.lineTo(AndroidUtilities.dp(7.0f) + x, measuredHeight - AndroidUtilities.dp(6.0f));
            this.path.lineTo(x, AndroidUtilities.dp(2.0f) + measuredHeight);
            this.path.lineTo(x - AndroidUtilities.dp(7.0f), measuredHeight - AndroidUtilities.dp(6.0f));
            this.path.close();
        }
    }
}
