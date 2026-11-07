package org.telegram.ui.Stories;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.GradientDrawable;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.OvershootInterpolator;
import android.widget.Scroller;
import androidx.core.graphics.ColorUtils;
import java.util.ArrayList;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.ImageReceiver;
import org.telegram.tgnet.tl.TL_stories;
import org.telegram.ui.Components.ColoredImageSpan;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.StaticLayoutEx;
import org.telegram.ui.Stories.SelfStoryViewsView;

/* JADX INFO: loaded from: classes7.dex */
public abstract class SelfStoriesPreviewView extends View {
    boolean checkScroll;
    int childPadding;
    GestureDetector gestureDetector;
    GradientDrawable gradientDrawable;
    ArrayList<ImageHolder> imageReceiversTmp;
    public int imagesFromH;
    public int imagesFromW;
    public int imagesFromY;
    private boolean isAttachedToWindow;
    private int lastClosestPosition;
    ArrayList<ImageHolder> lastDrawnImageReceivers;
    float maxScroll;
    float minScroll;
    float progressToOpen;
    ValueAnimator scrollAnimator;
    private int scrollToPositionInLayout;
    float scrollX;
    Scroller scroller;
    ArrayList<SelfStoryViewsView.StoryItemInternal> storyItems;
    private float textWidth;
    float topPadding;
    private int viewH;
    private int viewW;

    public abstract void onCenteredImageTap();

    public void onClosestPositionChanged(int i) {
    }

    public abstract void onDragging();

    public SelfStoriesPreviewView(Context context) {
        super(context);
        this.scrollToPositionInLayout = -1;
        this.storyItems = new ArrayList<>();
        this.imageReceiversTmp = new ArrayList<>();
        this.lastDrawnImageReceivers = new ArrayList<>();
        this.gestureDetector = new GestureDetector(new GestureDetector.OnGestureListener() { // from class: org.telegram.ui.Stories.SelfStoriesPreviewView.1
            @Override // android.view.GestureDetector.OnGestureListener
            public void onLongPress(MotionEvent motionEvent) {
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public void onShowPress(MotionEvent motionEvent) {
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onDown(MotionEvent motionEvent) {
                SelfStoriesPreviewView.this.scroller.abortAnimation();
                ValueAnimator valueAnimator = SelfStoriesPreviewView.this.scrollAnimator;
                if (valueAnimator != null) {
                    valueAnimator.removeAllListeners();
                    SelfStoriesPreviewView.this.scrollAnimator.cancel();
                    SelfStoriesPreviewView.this.scrollAnimator = null;
                }
                SelfStoriesPreviewView selfStoriesPreviewView = SelfStoriesPreviewView.this;
                selfStoriesPreviewView.checkScroll = false;
                selfStoriesPreviewView.onDragging();
                return true;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onSingleTapUp(MotionEvent motionEvent) {
                for (int i = 0; i < SelfStoriesPreviewView.this.lastDrawnImageReceivers.size(); i++) {
                    ImageHolder imageHolder = SelfStoriesPreviewView.this.lastDrawnImageReceivers.get(i);
                    if (SelfStoriesPreviewView.this.lastDrawnImageReceivers.get(i).receiver.getDrawRegion().contains(motionEvent.getX(), motionEvent.getY())) {
                        int i2 = SelfStoriesPreviewView.this.lastClosestPosition;
                        int i3 = imageHolder.position;
                        SelfStoriesPreviewView selfStoriesPreviewView = SelfStoriesPreviewView.this;
                        if (i2 != i3) {
                            selfStoriesPreviewView.scrollToPosition(i3, true, false);
                        } else {
                            selfStoriesPreviewView.onCenteredImageTap();
                        }
                    }
                }
                return false;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                SelfStoriesPreviewView selfStoriesPreviewView = SelfStoriesPreviewView.this;
                float f3 = selfStoriesPreviewView.scrollX + f;
                selfStoriesPreviewView.scrollX = f3;
                float f4 = selfStoriesPreviewView.minScroll;
                if (f3 < f4) {
                    selfStoriesPreviewView.scrollX = f4;
                }
                float f5 = selfStoriesPreviewView.scrollX;
                float f6 = selfStoriesPreviewView.maxScroll;
                if (f5 > f6) {
                    selfStoriesPreviewView.scrollX = f6;
                }
                selfStoriesPreviewView.invalidate();
                return false;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                SelfStoriesPreviewView selfStoriesPreviewView = SelfStoriesPreviewView.this;
                selfStoriesPreviewView.scroller.fling((int) selfStoriesPreviewView.scrollX, 0, (int) (-f), 0, (int) selfStoriesPreviewView.minScroll, (int) selfStoriesPreviewView.maxScroll, 0, 0);
                SelfStoriesPreviewView.this.invalidate();
                return false;
            }
        });
        this.scroller = new Scroller(context, new OvershootInterpolator());
        this.gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{0, ColorUtils.setAlphaComponent(-16777216, 160)});
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.childPadding = AndroidUtilities.dp(8.0f);
        int iDp = (int) (AndroidUtilities.dp(180.0f) / 1.2f);
        this.viewH = iDp;
        int i3 = (int) ((iDp / 16.0f) * 9.0f);
        this.viewW = i3;
        float fDp = i3 - AndroidUtilities.dp(8.0f);
        this.topPadding = ((AndroidUtilities.dp(180.0f) - this.viewH) / 2.0f) + AndroidUtilities.dp(20.0f);
        updateScrollParams();
        if (this.scrollToPositionInLayout >= 0 && getMeasuredWidth() > 0) {
            this.lastClosestPosition = -1;
            scrollToPosition(this.scrollToPositionInLayout, false, false);
            this.scrollToPositionInLayout = -1;
        }
        if (this.textWidth != fDp) {
            this.textWidth = fDp;
            for (int i4 = 0; i4 < this.lastDrawnImageReceivers.size(); i4++) {
                this.lastDrawnImageReceivers.get(i4).onBind(this.lastDrawnImageReceivers.get(i4).position);
            }
        }
    }

    private void updateScrollParams() {
        int measuredWidth = getMeasuredWidth();
        int i = this.viewW;
        this.minScroll = (-(measuredWidth - i)) / 2.0f;
        this.maxScroll = ((((i + this.childPadding) * this.storyItems.size()) - this.childPadding) - getMeasuredWidth()) + ((getMeasuredWidth() - this.viewW) / 2.0f);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        float fAbs;
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        int i;
        super.onDraw(canvas);
        if (this.scroller.computeScrollOffset()) {
            this.scrollX = this.scroller.getCurrX();
            invalidate();
            this.checkScroll = true;
        } else if (this.checkScroll) {
            scrollToClosest();
        }
        float f6 = 2.0f;
        float measuredWidth = getMeasuredWidth() / 2.0f;
        this.imageReceiversTmp.clear();
        this.imageReceiversTmp.addAll(this.lastDrawnImageReceivers);
        this.lastDrawnImageReceivers.clear();
        int i2 = -1;
        float f7 = 2.1474836E9f;
        int i3 = -1;
        int i4 = 0;
        while (i4 < this.storyItems.size()) {
            float f8 = -this.scrollX;
            float f9 = f8 + ((this.childPadding + r10) * i4);
            float f10 = ((this.viewW / f6) + f9) - measuredWidth;
            float fAbs2 = Math.abs(f10);
            if (fAbs2 < this.viewW) {
                fAbs = 1.0f - (Math.abs(f10) / this.viewW);
                f = (0.2f * fAbs) + 1.0f;
            } else {
                fAbs = 0.0f;
                f = 1.0f;
            }
            if (i3 == i2 || fAbs2 < f7) {
                i3 = i4;
                f7 = fAbs2;
            }
            int i5 = this.viewW;
            float f11 = f10 < 0.0f ? f9 - ((i5 * 0.1f) * (1.0f - fAbs)) : f9 + (i5 * 0.1f * (1.0f - fAbs));
            if (f11 > getMeasuredWidth() || this.viewW + f11 < 0.0f) {
                f2 = measuredWidth;
                f3 = f6;
                f4 = f7;
            } else {
                ImageHolder imageHolderFindOrCreateImageReceiver = findOrCreateImageReceiver(i4, this.imageReceiversTmp);
                int i6 = this.viewW;
                f3 = f6;
                float f12 = i6 * f;
                int i7 = this.viewH;
                float f13 = i7 * f;
                float f14 = f11 - ((f12 - i6) / f3);
                float f15 = this.topPadding - ((f13 - i7) / f3);
                if (this.progressToOpen == 0.0f || i4 == (i = this.lastClosestPosition)) {
                    f2 = measuredWidth;
                    f4 = f7;
                    f5 = 1.0f;
                    imageHolderFindOrCreateImageReceiver.receiver.setImageCoords(f14, f15, f12, f13);
                } else {
                    f5 = 1.0f;
                    f2 = measuredWidth;
                    f4 = f7;
                    imageHolderFindOrCreateImageReceiver.receiver.setImageCoords(AndroidUtilities.lerp((i4 - i) * getMeasuredWidth(), f14, this.progressToOpen), AndroidUtilities.lerp(this.imagesFromY, f15, this.progressToOpen), AndroidUtilities.lerp(this.imagesFromW, f12, this.progressToOpen), AndroidUtilities.lerp(this.imagesFromH, f13, this.progressToOpen));
                }
                if (this.progressToOpen == f5 || i4 != this.lastClosestPosition) {
                    imageHolderFindOrCreateImageReceiver.receiver.draw(canvas);
                    if (imageHolderFindOrCreateImageReceiver.layout != null) {
                        int i8 = (int) (((fAbs * 0.3f) + 0.7f) * 255.0f);
                        this.gradientDrawable.setAlpha(i8);
                        this.gradientDrawable.setBounds((int) imageHolderFindOrCreateImageReceiver.receiver.getImageX(), (int) (imageHolderFindOrCreateImageReceiver.receiver.getImageY2() - AndroidUtilities.dp(24.0f)), (int) imageHolderFindOrCreateImageReceiver.receiver.getImageX2(), ((int) imageHolderFindOrCreateImageReceiver.receiver.getImageY2()) + 2);
                        this.gradientDrawable.draw(canvas);
                        canvas.save();
                        canvas.translate(imageHolderFindOrCreateImageReceiver.receiver.getCenterX() - (this.textWidth / f3), (imageHolderFindOrCreateImageReceiver.receiver.getImageY2() - AndroidUtilities.dp(8.0f)) - imageHolderFindOrCreateImageReceiver.layout.getHeight());
                        imageHolderFindOrCreateImageReceiver.paint.setAlpha(i8);
                        imageHolderFindOrCreateImageReceiver.layout.draw(canvas);
                        canvas.restore();
                    }
                }
                this.lastDrawnImageReceivers.add(imageHolderFindOrCreateImageReceiver);
            }
            i4++;
            f6 = f3;
            measuredWidth = f2;
            f7 = f4;
            i2 = -1;
        }
        if (this.scrollAnimator == null && this.lastClosestPosition != i3) {
            this.lastClosestPosition = i3;
            onClosestPositionChanged(i3);
        }
        int i9 = 0;
        while (true) {
            int size = this.imageReceiversTmp.size();
            ArrayList<ImageHolder> arrayList = this.imageReceiversTmp;
            if (i9 < size) {
                arrayList.get(i9).onDetach();
                i9++;
            } else {
                arrayList.clear();
                return;
            }
        }
    }

    private void scrollToClosest() {
        int i = this.lastClosestPosition;
        if (i >= 0) {
            scrollToPosition(i, true, true);
        }
    }

    private ImageHolder findOrCreateImageReceiver(int i, ArrayList<ImageHolder> arrayList) {
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            if (arrayList.get(i2).position == i) {
                return arrayList.remove(i2);
            }
        }
        ImageHolder imageHolder = new ImageHolder();
        imageHolder.onBind(i);
        imageHolder.position = i;
        return imageHolder;
    }

    public void scrollToPosition(int i, boolean z, boolean z2) {
        if ((this.lastClosestPosition != i || z2) && getMeasuredHeight() > 0) {
            if (this.lastClosestPosition != i) {
                this.lastClosestPosition = i;
                onClosestPositionChanged(i);
            }
            this.scroller.abortAnimation();
            this.checkScroll = false;
            ValueAnimator valueAnimator = this.scrollAnimator;
            if (valueAnimator != null) {
                valueAnimator.removeAllListeners();
                this.scrollAnimator.cancel();
                this.scrollAnimator = null;
            }
            if (!z) {
                this.scrollX = ((-getMeasuredWidth()) / 2.0f) + (this.viewW / 2.0f) + ((r6 + this.childPadding) * i);
                invalidate();
                return;
            }
            float f = ((-getMeasuredWidth()) / 2.0f) + (this.viewW / 2.0f) + ((r1 + this.childPadding) * i);
            float f2 = this.scrollX;
            if (f == f2) {
                return;
            }
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f2, f);
            this.scrollAnimator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.SelfStoriesPreviewView.2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    SelfStoriesPreviewView.this.scrollX = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                    SelfStoriesPreviewView.this.invalidate();
                }
            });
            this.scrollAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.SelfStoriesPreviewView.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    SelfStoriesPreviewView.this.scrollAnimator = null;
                }
            });
            this.scrollAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
            this.scrollAnimator.setDuration(200L);
            this.scrollAnimator.start();
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.gestureDetector.onTouchEvent(motionEvent);
        if ((motionEvent.getAction() == 1 || motionEvent.getAction() == 3) && this.scroller.isFinished()) {
            scrollToClosest();
        }
        return true;
    }

    public void setItems(ArrayList<SelfStoryViewsView.StoryItemInternal> arrayList, int i) {
        this.storyItems.clear();
        this.storyItems.addAll(arrayList);
        updateScrollParams();
        if (getMeasuredHeight() > 0) {
            scrollToPosition(i, false, false);
        } else {
            this.scrollToPositionInLayout = i;
        }
        for (int i2 = 0; i2 < this.lastDrawnImageReceivers.size(); i2++) {
            this.lastDrawnImageReceivers.get(i2).onBind(this.lastDrawnImageReceivers.get(i2).position);
        }
    }

    public int getClosestPosition() {
        return this.lastClosestPosition;
    }

    public ImageHolder getCenteredImageReciever() {
        for (int i = 0; i < this.lastDrawnImageReceivers.size(); i++) {
            if (this.lastDrawnImageReceivers.get(i).position == this.lastClosestPosition) {
                return this.lastDrawnImageReceivers.get(i);
            }
        }
        return null;
    }

    public void abortScroll() {
        this.scroller.abortAnimation();
        ValueAnimator valueAnimator = this.scrollAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.scrollAnimator = null;
        }
        scrollToPosition(this.lastClosestPosition, false, true);
    }

    public float getFinalHeight() {
        return AndroidUtilities.dp(180.0f);
    }

    public void setProgressToOpen(float f) {
        if (this.progressToOpen == f) {
            return;
        }
        this.progressToOpen = f;
        invalidate();
    }

    public void scrollToPositionWithOffset(int i, float f) {
        float f2;
        this.scroller.abortAnimation();
        if (Math.abs(f) > 1.0f) {
            return;
        }
        ValueAnimator valueAnimator = this.scrollAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.scrollAnimator = null;
        }
        float f3 = ((-getMeasuredWidth()) / 2.0f) + (this.viewW / 2.0f) + ((r2 + this.childPadding) * i);
        if (f > 0.0f) {
            f2 = ((-getMeasuredWidth()) / 2.0f) + (this.viewW / 2.0f) + ((r4 + this.childPadding) * (i + 1));
        } else {
            f2 = ((-getMeasuredWidth()) / 2.0f) + (this.viewW / 2.0f) + ((r4 + this.childPadding) * (i - 1));
            f = -f;
        }
        if (f == 0.0f) {
            this.scrollX = f3;
        } else {
            this.scrollX = AndroidUtilities.lerp(f3, f2, f);
        }
        this.checkScroll = false;
        invalidate();
    }

    public class ImageHolder {
        StaticLayout layout;
        TextPaint paint = new TextPaint(1);
        int position;
        ImageReceiver receiver;
        SelfStoryViewsView.StoryItemInternal storyItem;

        public ImageHolder() {
            this.receiver = new ImageReceiver(SelfStoriesPreviewView.this);
            this.receiver.setAllowLoadingOnAttachedOnly(true);
            this.receiver.setRoundRadius(AndroidUtilities.dp(6.0f));
            this.paint.setColor(-1);
            this.paint.setTextSize(AndroidUtilities.dp(13.0f));
        }

        public void onBind(int i) {
            if (i < 0 || i >= SelfStoriesPreviewView.this.storyItems.size()) {
                return;
            }
            this.storyItem = SelfStoriesPreviewView.this.storyItems.get(i);
            if (SelfStoriesPreviewView.this.isAttachedToWindow) {
                this.receiver.onAttachedToWindow();
            }
            SelfStoryViewsView.StoryItemInternal storyItemInternal = this.storyItem;
            TL_stories.StoryItem storyItem = storyItemInternal.storyItem;
            ImageReceiver imageReceiver = this.receiver;
            if (storyItem != null) {
                StoriesUtilities.setImage(imageReceiver, storyItem);
            } else {
                StoriesUtilities.setImage(imageReceiver, storyItemInternal.uploadingStory);
            }
            updateLayout();
        }

        private void updateLayout() {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            TL_stories.StoryItem storyItem = this.storyItem.storyItem;
            if (storyItem != null) {
                SelfStoriesPreviewView.this.formatCounterText(spannableStringBuilder, storyItem.views, false);
            }
            if (spannableStringBuilder.length() == 0) {
                this.layout = null;
                return;
            }
            TextPaint textPaint = this.paint;
            int i = (int) (SelfStoriesPreviewView.this.textWidth + 1.0f);
            Layout.Alignment alignment = Layout.Alignment.ALIGN_CENTER;
            StaticLayout staticLayoutCreateStaticLayout = StaticLayoutEx.createStaticLayout(spannableStringBuilder, textPaint, i, alignment, 1.0f, 0.0f, false, null, Integer.MAX_VALUE, 1);
            this.layout = staticLayoutCreateStaticLayout;
            if (staticLayoutCreateStaticLayout.getLineCount() > 1) {
                SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(_UrlKt.FRAGMENT_ENCODE_SET);
                SelfStoriesPreviewView.this.formatCounterText(spannableStringBuilder2, this.storyItem.storyItem.views, true);
                this.layout = StaticLayoutEx.createStaticLayout(spannableStringBuilder2, this.paint, (int) (SelfStoriesPreviewView.this.textWidth + 1.0f), alignment, 1.0f, 0.0f, false, null, Integer.MAX_VALUE, 2);
            }
        }

        public void onDetach() {
            this.receiver.onDetachedFromWindow();
        }

        public void draw(Canvas canvas, float f, float f2, int i, int i2, int i3, int i4) {
            this.receiver.setImageCoords(i, i2, i3, i4);
            this.receiver.setAlpha(f);
            this.receiver.draw(canvas);
            this.receiver.setAlpha(1.0f);
            if (this.layout != null) {
                int i5 = (int) (f * 255.0f);
                this.paint.setAlpha(i5);
                SelfStoriesPreviewView.this.gradientDrawable.setAlpha(i5);
                SelfStoriesPreviewView.this.gradientDrawable.setBounds((int) this.receiver.getImageX(), (int) (this.receiver.getImageY2() - (AndroidUtilities.dp(24.0f) * f2)), (int) this.receiver.getImageX2(), ((int) this.receiver.getImageY2()) + 2);
                SelfStoriesPreviewView.this.gradientDrawable.draw(canvas);
                canvas.save();
                canvas.scale(f2, f2, this.receiver.getCenterX(), this.receiver.getImageY2() - (AndroidUtilities.dp(8.0f) * f2));
                canvas.translate(this.receiver.getCenterX() - (SelfStoriesPreviewView.this.textWidth / 2.0f), (this.receiver.getImageY2() - (AndroidUtilities.dp(8.0f) * f2)) - this.layout.getHeight());
                this.layout.draw(canvas);
                canvas.restore();
            }
        }

        public void update() {
            updateLayout();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void formatCounterText(SpannableStringBuilder spannableStringBuilder, TL_stories.StoryViews storyViews, boolean z) {
        int i = storyViews == null ? 0 : storyViews.views_count;
        if (i > 0) {
            spannableStringBuilder.append("d");
            spannableStringBuilder.setSpan(new ColoredImageSpan(C2807R.drawable.msg_views), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 0);
            spannableStringBuilder.append(" ").append((CharSequence) AndroidUtilities.formatWholeNumber(i, 0));
            if (storyViews == null || storyViews.reactions_count <= 0) {
                return;
            }
            spannableStringBuilder.append((CharSequence) (z ? "\n" : "  "));
            spannableStringBuilder.append("d");
            spannableStringBuilder.setSpan(new ColoredImageSpan(C2807R.drawable.mini_like_filled), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 0);
            spannableStringBuilder.append(" ").append((CharSequence) AndroidUtilities.formatWholeNumber(storyViews.reactions_count, 0));
        }
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.isAttachedToWindow = true;
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        int i = 0;
        this.isAttachedToWindow = false;
        while (true) {
            int size = this.lastDrawnImageReceivers.size();
            ArrayList<ImageHolder> arrayList = this.lastDrawnImageReceivers;
            if (i < size) {
                arrayList.get(i).onDetach();
                i++;
            } else {
                arrayList.clear();
                return;
            }
        }
    }

    public void update() {
        for (int i = 0; i < this.lastDrawnImageReceivers.size(); i++) {
            this.lastDrawnImageReceivers.get(i).update();
        }
    }
}
