package org.telegram.p029ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.text.TextPaint;
import android.view.View;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.MessagesStorage;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes7.dex */
public class HorizontalRoundTabsLayout extends HorizontalScrollView {
    private static final RectF tmpRect = new RectF();
    private final Paint bgPaint;
    private final Path clipPath;
    private final Path clipPath2;
    public final LinearLayout linearLayout;
    private int selectedIndex;
    private final AnimatedFloat selectorEndX;
    private final AnimatedFloat selectorStartX;
    private final TextPaint textPaint;

    public HorizontalRoundTabsLayout(Context context) {
        super(context);
        this.bgPaint = new Paint(1);
        TextPaint textPaint = new TextPaint(1);
        this.textPaint = textPaint;
        this.clipPath = new Path();
        this.clipPath2 = new Path();
        LinearLayout linearLayout = new LinearLayout(context);
        this.linearLayout = linearLayout;
        linearLayout.setLayerType(0, null);
        linearLayout.setOrientation(0);
        addView(linearLayout, LayoutHelper.createScroll(-1, -1, 8388611));
        textPaint.setTextSize(AndroidUtilities.m1124dp(13.0f));
        textPaint.setTypeface(AndroidUtilities.bold());
        AnimatedFloat animatedFloat = new AnimatedFloat(new Runnable() { // from class: org.telegram.ui.Components.HorizontalRoundTabsLayout$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0();
            }
        });
        this.selectorStartX = animatedFloat;
        animatedFloat.setDuration(180L);
        AnimatedFloat animatedFloat2 = new AnimatedFloat(new Runnable() { // from class: org.telegram.ui.Components.HorizontalRoundTabsLayout$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$1();
            }
        });
        this.selectorEndX = animatedFloat2;
        animatedFloat2.setDuration(180L);
        setVerticalScrollBarEnabled(false);
        setHorizontalScrollBarEnabled(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        invalidate();
        this.linearLayout.invalidate();
        for (int i = 0; i < this.linearLayout.getChildCount(); i++) {
            this.linearLayout.getChildAt(i).invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1() {
        invalidate();
        this.linearLayout.invalidate();
        for (int i = 0; i < this.linearLayout.getChildCount(); i++) {
            this.linearLayout.getChildAt(i).invalidate();
        }
    }

    public void setTabs(ArrayList arrayList, final MessagesStorage.IntCallback intCallback) {
        this.linearLayout.removeAllViews();
        for (final int i = 0; i < arrayList.size(); i++) {
            CharSequence charSequence = (CharSequence) arrayList.get(i);
            RoundTabView roundTabView = new RoundTabView(getContext());
            roundTabView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.HorizontalRoundTabsLayout$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$setTabs$2(i, intCallback, view);
                }
            });
            roundTabView.setPadding(AndroidUtilities.m1124dp(12.0f), AndroidUtilities.m1124dp(5.0f), AndroidUtilities.m1124dp(12.0f), AndroidUtilities.m1124dp(5.0f));
            LinearLayout.LayoutParams layoutParamsCreateLinear = LayoutHelper.createLinear(-2, -2);
            if (i < arrayList.size() - 1) {
                layoutParamsCreateLinear.rightMargin = AndroidUtilities.m1124dp(4.0f);
            }
            roundTabView.setText(new Text(charSequence, this.textPaint));
            this.linearLayout.addView(roundTabView, layoutParamsCreateLinear);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setTabs$2(int i, MessagesStorage.IntCallback intCallback, View view) {
        this.selectedIndex = i;
        this.selectorStartX.set(view.getLeft(), false);
        this.selectorEndX.set(view.getRight(), false);
        intCallback.run(i);
    }

    public void setSelectedIndex(int i, boolean z) {
        this.selectedIndex = i;
        this.selectorStartX.set(this.linearLayout.getChildAt(i).getLeft(), !z);
        this.selectorEndX.set(this.linearLayout.getChildAt(i).getRight(), !z);
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        setSelectedIndex(this.selectedIndex, false);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        RectF rectF = tmpRect;
        rectF.set(this.selectorStartX.getValue(), 0.0f, this.selectorEndX.getValue(), getMeasuredHeight());
        this.clipPath.rewind();
        Path path = this.clipPath;
        float fM1124dp = AndroidUtilities.m1124dp(13.0f);
        float fM1124dp2 = AndroidUtilities.m1124dp(13.0f);
        Path.Direction direction = Path.Direction.CW;
        path.addRoundRect(rectF, fM1124dp, fM1124dp2, direction);
        this.clipPath.close();
        this.clipPath2.rewind();
        this.clipPath2.addRect(0.0f, 0.0f, this.linearLayout.getMeasuredWidth(), getMeasuredHeight(), direction);
        this.clipPath2.addRoundRect(rectF, AndroidUtilities.m1124dp(13.0f), AndroidUtilities.m1124dp(13.0f), Path.Direction.CCW);
        this.clipPath2.close();
        Paint paint = this.bgPaint;
        int i = Theme.key_windowBackgroundWhiteGrayText;
        paint.setColor(Theme.getColor(i) & 520093695);
        canvas.drawPath(this.clipPath, this.bgPaint);
        this.textPaint.setColor(Theme.getColor(i));
        canvas.save();
        canvas.clipPath(this.clipPath2);
        super.dispatchDraw(canvas);
        canvas.restore();
        this.textPaint.setColor(Theme.getColor(Theme.key_chats_nameArchived));
        canvas.save();
        canvas.clipPath(this.clipPath);
        for (int i2 = 0; i2 < this.linearLayout.getChildCount(); i2++) {
            View childAt = this.linearLayout.getChildAt(i2);
            RectF rectF2 = tmpRect;
            if (rectF2.right >= childAt.getLeft() && rectF2.left <= childAt.getRight()) {
                canvas.save();
                canvas.translate(childAt.getLeft(), childAt.getTop());
                childAt.draw(canvas);
                canvas.restore();
            }
        }
        canvas.restore();
    }

    private static class RoundTabView extends View {
        private Text text;

        public RoundTabView(Context context) {
            super(context);
            setDrawingCacheEnabled(false);
        }

        public void setText(Text text) {
            this.text = text;
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(Math.round(this.text.getWidth()) + getPaddingLeft() + getPaddingRight(), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(Math.max(Math.round(this.text.getHeight()) + getPaddingTop() + getPaddingBottom(), AndroidUtilities.m1124dp(26.0f)), TLObject.FLAG_30));
        }

        @Override // android.view.View
        public void draw(Canvas canvas) {
            super.draw(canvas);
            this.text.draw(canvas, (getMeasuredWidth() - this.text.getWidth()) / 2.0f, getMeasuredHeight() / 2.0f);
        }
    }
}
