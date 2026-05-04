package org.telegram.p029ui.Stories.recorder;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.p029ui.GradientClip;
import org.telegram.p029ui.Stories.recorder.CollageLayout;

/* JADX INFO: loaded from: classes7.dex */
public class CollageLayoutButton extends ToggleButton2 {
    public CollageLayoutButton(Context context) {
        super(context);
    }

    public static class CollageLayoutListView extends FrameLayout {
        public final RecyclerListView listView;
        private Utilities.Callback onLayoutClick;
        private CollageLayout selectedLayout;
        private boolean visible;
        private ValueAnimator visibleAnimator;
        private float visibleProgress;

        public void setSelected(CollageLayout collageLayout) {
            this.selectedLayout = collageLayout;
            AndroidUtilities.updateVisibleRows(this.listView);
        }

        public CollageLayoutListView(final Context context, final FlashViews flashViews) {
            super(context);
            RecyclerListView recyclerListView = new RecyclerListView(context) { // from class: org.telegram.ui.Stories.recorder.CollageLayoutButton.CollageLayoutListView.1
                private final GradientClip clip = new GradientClip();

                @Override // org.telegram.p029ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
                public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
                    if (motionEvent.getX() <= getPaddingLeft() || motionEvent.getX() >= getWidth() - getPaddingRight()) {
                        return false;
                    }
                    getParent().requestDisallowInterceptTouchEvent(true);
                    return super.onInterceptTouchEvent(motionEvent);
                }

                @Override // org.telegram.p029ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
                public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                    if (motionEvent.getX() <= getPaddingLeft() || motionEvent.getX() >= getWidth() - getPaddingRight()) {
                        return false;
                    }
                    return super.dispatchTouchEvent(motionEvent);
                }

                @Override // org.telegram.p029ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
                protected void dispatchDraw(Canvas canvas) {
                    canvas.saveLayerAlpha(0.0f, 0.0f, getWidth(), getHeight(), (int) (CollageLayoutListView.this.visibleProgress * 255.0f), 31);
                    canvas.save();
                    float paddingLeft = getPaddingLeft();
                    float width = getWidth() - getPaddingRight();
                    canvas.clipRect(paddingLeft, 0.0f, width, getHeight());
                    canvas.translate((1.0f - CollageLayoutListView.this.visibleProgress) * width, 0.0f);
                    super.dispatchDraw(canvas);
                    canvas.restore();
                    canvas.save();
                    RectF rectF = AndroidUtilities.rectTmp;
                    rectF.set(paddingLeft, 0.0f, AndroidUtilities.m1124dp(12.0f) + paddingLeft, getHeight());
                    this.clip.draw(canvas, rectF, 0, CollageLayoutListView.this.visibleProgress);
                    rectF.set(width - AndroidUtilities.m1124dp(12.0f), 0.0f, width, getHeight());
                    this.clip.draw(canvas, rectF, 2, CollageLayoutListView.this.visibleProgress);
                    canvas.restore();
                    canvas.restore();
                }
            };
            this.listView = recyclerListView;
            recyclerListView.setAdapter(new RecyclerView.Adapter() { // from class: org.telegram.ui.Stories.recorder.CollageLayoutButton.CollageLayoutListView.2
                @Override // androidx.recyclerview.widget.RecyclerView.Adapter
                public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
                    Button button = new Button(context);
                    button.setLayoutParams(new RecyclerView.LayoutParams(AndroidUtilities.m1124dp(46.0f), AndroidUtilities.m1124dp(56.0f)));
                    button.setBackground(Theme.createSelectorDrawable(553648127));
                    return new RecyclerListView.Holder(button);
                }

                @Override // androidx.recyclerview.widget.RecyclerView.Adapter
                public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
                    Button button = (Button) viewHolder.itemView;
                    CollageLayout collageLayout = (CollageLayout) CollageLayout.getLayouts().get(i);
                    boolean z = i == button.position;
                    button.setDrawable(new CollageLayoutDrawable(collageLayout));
                    button.setSelected(collageLayout.equals(CollageLayoutListView.this.selectedLayout), z);
                    button.position = i;
                }

                @Override // androidx.recyclerview.widget.RecyclerView.Adapter
                public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
                    Button button = (Button) viewHolder.itemView;
                    flashViews.add(button);
                    int i = button.position;
                    if (i >= 0 && i < CollageLayout.getLayouts().size()) {
                        CollageLayout collageLayout = (CollageLayout) CollageLayout.getLayouts().get(button.position);
                        button.setDrawable(new CollageLayoutDrawable(collageLayout));
                        button.setSelected(collageLayout.equals(CollageLayoutListView.this.selectedLayout), false);
                    }
                    super.onViewAttachedToWindow(viewHolder);
                }

                @Override // androidx.recyclerview.widget.RecyclerView.Adapter
                public void onViewDetachedFromWindow(RecyclerView.ViewHolder viewHolder) {
                    flashViews.remove((Button) viewHolder.itemView);
                    super.onViewDetachedFromWindow(viewHolder);
                }

                @Override // androidx.recyclerview.widget.RecyclerView.Adapter
                public int getItemCount() {
                    return CollageLayout.getLayouts().size();
                }
            });
            recyclerListView.setLayoutManager(new LinearLayoutManager(context, 0, false));
            recyclerListView.setClipToPadding(false);
            recyclerListView.setVisibility(8);
            recyclerListView.setWillNotDraw(false);
            recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Stories.recorder.CollageLayoutButton$CollageLayoutListView$$ExternalSyntheticLambda1
                @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
                public final void onItemClick(View view, int i) {
                    this.f$0.lambda$new$0(view, i);
                }
            });
            addView(recyclerListView, LayoutHelper.createFrame(-1, 56.0f));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(View view, int i) {
            Utilities.Callback callback = this.onLayoutClick;
            if (callback != null) {
                callback.run((CollageLayout) CollageLayout.getLayouts().get(i));
            }
        }

        private static class Button extends ToggleButton2 {
            public int position;

            public Button(Context context) {
                super(context);
            }
        }

        public void setOnLayoutClick(Utilities.Callback<CollageLayout> callback) {
            this.onLayoutClick = callback;
        }

        public void setBounds(float f, float f2) {
            this.listView.setPadding((int) f, 0, (int) f2, 0);
            this.listView.invalidate();
        }

        public boolean isVisible() {
            return this.visible;
        }

        public void setVisible(final boolean z, boolean z2) {
            ValueAnimator valueAnimator = this.visibleAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            if (this.visible == z) {
                return;
            }
            this.visible = z;
            if (z2) {
                this.listView.setVisibility(0);
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.visibleProgress, z ? 1.0f : 0.0f);
                this.visibleAnimator = valueAnimatorOfFloat;
                valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.recorder.CollageLayoutButton$CollageLayoutListView$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        this.f$0.lambda$setVisible$1(valueAnimator2);
                    }
                });
                this.visibleAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.recorder.CollageLayoutButton.CollageLayoutListView.3
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        CollageLayoutListView.this.visibleProgress = z ? 1.0f : 0.0f;
                        CollageLayoutListView.this.listView.invalidate();
                        CollageLayoutListView.this.listView.setVisibility(z ? 0 : 8);
                    }
                });
                this.visibleAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
                this.visibleAnimator.setDuration(340L);
                this.visibleAnimator.start();
                return;
            }
            this.visibleProgress = z ? 1.0f : 0.0f;
            this.listView.invalidate();
            this.listView.setVisibility(z ? 0 : 8);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setVisible$1(ValueAnimator valueAnimator) {
            this.visibleProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            this.listView.invalidate();
        }
    }

    public static class CollageLayoutDrawable extends Drawable {
        private boolean cross;
        public final Paint crossPaint;
        public final Paint crossXferPaint;
        public final Paint paint;
        public final Path path;
        private final float[] radii;

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -2;
        }

        public CollageLayoutDrawable(CollageLayout collageLayout) {
            this(collageLayout, false);
        }

        public CollageLayoutDrawable(CollageLayout collageLayout, boolean z) {
            Paint paint = new Paint(1);
            this.paint = paint;
            this.crossXferPaint = new Paint(1);
            this.crossPaint = new Paint(1);
            Path path = new Path();
            this.path = path;
            this.radii = new float[8];
            this.cross = z;
            paint.setColor(-1);
            float fDpf2 = AndroidUtilities.dpf2(13.333333f);
            float fDpf22 = AndroidUtilities.dpf2(18.666666f);
            float fDpf23 = AndroidUtilities.dpf2(3.0f);
            float fDpf24 = AndroidUtilities.dpf2(10.0f);
            float fDpf25 = AndroidUtilities.dpf2(15.333333f);
            float fDpf26 = AndroidUtilities.dpf2(1.0f);
            float f = 1.33f;
            float fDpf27 = AndroidUtilities.dpf2(1.33f);
            path.setFillType(Path.FillType.EVEN_ODD);
            RectF rectF = AndroidUtilities.rectTmp;
            float f2 = 2.0f;
            rectF.set((-fDpf2) / 2.0f, (-fDpf22) / 2.0f, fDpf2 / 2.0f, fDpf22 / 2.0f);
            path.addRoundRect(rectF, fDpf23, fDpf23, Path.Direction.CW);
            ArrayList arrayList = collageLayout.parts;
            int size = arrayList.size();
            int i = 0;
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                int i3 = i2 + 1;
                CollageLayout.Part part = (CollageLayout.Part) obj;
                int i4 = collageLayout.columns[part.f2189y];
                int i5 = i4 - 1;
                float f3 = f;
                float fMax = (fDpf24 - (Math.max(i, i5) * fDpf27)) / i4;
                int i6 = i;
                float fMax2 = (fDpf25 - (Math.max(i, collageLayout.f2186h - 1) * fDpf27)) / collageLayout.f2186h;
                RectF rectF2 = AndroidUtilities.rectTmp;
                float f4 = f2;
                float f5 = (-fDpf24) / f4;
                int i7 = part.f2188x;
                ArrayList arrayList2 = arrayList;
                int i8 = size;
                float f6 = (-fDpf25) / f4;
                int i9 = part.f2189y;
                float f7 = fDpf24;
                rectF2.set((i7 * fMax) + f5 + (i7 * fDpf27), f6 + (i9 * fMax2) + (i9 * fDpf27), f5 + (fMax * (i7 + 1)) + (i7 * fDpf27), f6 + (fMax2 * (i9 + 1)) + (i9 * fDpf27));
                float[] fArr = this.radii;
                int i10 = part.f2188x;
                float f8 = 0.0f;
                float f9 = (i10 == 0 && part.f2189y == 0) ? fDpf26 : 0.0f;
                fArr[1] = f9;
                fArr[i6] = f9;
                float f10 = (i10 == i5 && part.f2189y == 0) ? fDpf26 : 0.0f;
                fArr[3] = f10;
                fArr[2] = f10;
                float f11 = (i10 == i5 && part.f2189y == collageLayout.f2186h + (-1)) ? fDpf26 : 0.0f;
                fArr[5] = f11;
                fArr[4] = f11;
                if (i10 == 0 && part.f2189y == collageLayout.f2186h - 1) {
                    f8 = fDpf26;
                }
                fArr[7] = f8;
                fArr[6] = f8;
                this.path.addRoundRect(rectF2, fArr, Path.Direction.CW);
                f = f3;
                i = i6;
                f2 = f4;
                arrayList = arrayList2;
                size = i8;
                i2 = i3;
                fDpf24 = f7;
            }
            Paint paint2 = this.crossXferPaint;
            Paint.Style style = Paint.Style.STROKE;
            paint2.setStyle(style);
            this.crossXferPaint.setStrokeWidth(AndroidUtilities.m1124dp(3.33f));
            this.crossXferPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
            this.crossPaint.setStyle(style);
            this.crossPaint.setStrokeWidth(AndroidUtilities.m1124dp(f));
            this.crossPaint.setColor(-1);
            this.crossPaint.setStrokeCap(Paint.Cap.ROUND);
            this.crossPaint.setStrokeJoin(Paint.Join.ROUND);
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            Canvas canvas2;
            if (this.cross) {
                canvas.saveLayerAlpha(getBounds().left, getBounds().top, getBounds().right, getBounds().bottom, 255, 31);
                canvas2 = canvas;
            } else {
                canvas2 = canvas;
                canvas2.save();
            }
            canvas2.translate(getBounds().centerX(), getBounds().centerY());
            canvas2.drawPath(this.path, this.paint);
            if (this.cross) {
                canvas2.drawLine(-AndroidUtilities.m1124dp(8.66f), -AndroidUtilities.m1124dp(8.66f), AndroidUtilities.m1124dp(8.66f), AndroidUtilities.m1124dp(8.66f), this.crossXferPaint);
                canvas2.drawLine(-AndroidUtilities.m1124dp(8.66f), -AndroidUtilities.m1124dp(8.66f), AndroidUtilities.m1124dp(8.66f), AndroidUtilities.m1124dp(8.66f), this.crossPaint);
            }
            canvas2.restore();
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
            this.paint.setAlpha(i);
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
            this.paint.setColorFilter(colorFilter);
        }

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicWidth() {
            return AndroidUtilities.m1124dp(32.0f);
        }

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicHeight() {
            return AndroidUtilities.m1124dp(32.0f);
        }
    }
}
