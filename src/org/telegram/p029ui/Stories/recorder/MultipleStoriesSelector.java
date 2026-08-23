package org.telegram.p029ui.Stories.recorder;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.ContentUris;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.util.Size;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.util.Consumer;
import java.io.File;
import java.util.ArrayList;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.AnimatedFloat;
import org.telegram.p029ui.Components.AnimatedTextView;
import org.telegram.p029ui.Components.BlurringShader;
import org.telegram.p029ui.Components.ButtonBounce;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.p029ui.Components.ScaleStateListAnimator;
import org.telegram.p029ui.Components.Text;
import org.telegram.p029ui.Components.UItem;
import org.telegram.p029ui.Components.UniversalAdapter;
import org.telegram.p029ui.Components.UniversalRecyclerView;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes7.dex */
public abstract class MultipleStoriesSelector extends FrameLayout {
    private AnimatedFloat animatedHint;
    private final BlurringShader.StoryBlurDrawer backgroundBlur;
    private final BlurringShader.BlurManager blurManager;
    private ButtonBounce buttonBounce;
    private final RectF buttonBounds;
    private final RectF buttonTouchBounds;
    private final Path clipPath;
    private final Path closePath;
    private Text counter;
    private final Paint darkenBackground;
    private final Runnable hideHint;
    private Text hint;
    private final RectF hintArc;
    private final RectF hintBounds;
    private final Path hintClipPath;
    private boolean hintShown;
    private final RectF listBounds;
    private boolean listShown;
    private final UniversalRecyclerView listView;
    private final Theme.ResourcesProvider resourcesProvider;
    private ArrayList selectedOrder;
    private ArrayList selectedStories;
    private int selectedStory;
    private ArrayList stories;
    private final Paint strokePaint;

    protected abstract boolean customBlur();

    protected abstract void drawBlur(BlurringShader.StoryBlurDrawer storyBlurDrawer, Canvas canvas, RectF rectF, float f, boolean z, float f2, float f3, boolean z2, float f4);

    protected abstract void onSwitchToStory(int i, StoryEntry storyEntry);

    public MultipleStoriesSelector(Context context, Theme.ResourcesProvider resourcesProvider, BlurringShader.BlurManager blurManager) {
        super(context);
        this.stories = new ArrayList();
        this.selectedOrder = new ArrayList();
        this.selectedStories = new ArrayList();
        this.hideHint = new Runnable() { // from class: org.telegram.ui.Stories.recorder.MultipleStoriesSelector$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$2();
            }
        };
        this.buttonBounce = new ButtonBounce(this);
        this.buttonBounds = new RectF();
        this.buttonTouchBounds = new RectF();
        Paint paint = new Paint(1);
        this.strokePaint = paint;
        Path path = new Path();
        this.closePath = path;
        this.listBounds = new RectF();
        this.darkenBackground = new Paint(1);
        this.hintBounds = new RectF();
        this.hintArc = new RectF();
        this.hintClipPath = new Path();
        this.animatedHint = new AnimatedFloat(this, 0L, 320L, CubicBezierInterpolator.EASE_OUT_QUINT);
        this.clipPath = new Path();
        this.listShown = true;
        this.resourcesProvider = resourcesProvider;
        this.blurManager = blurManager;
        path.rewind();
        path.moveTo(-AndroidUtilities.m1124dp(4.33f), -AndroidUtilities.m1124dp(4.33f));
        path.lineTo(AndroidUtilities.m1124dp(4.33f), AndroidUtilities.m1124dp(4.33f));
        path.moveTo(-AndroidUtilities.m1124dp(4.33f), AndroidUtilities.m1124dp(4.33f));
        path.lineTo(AndroidUtilities.m1124dp(4.33f), -AndroidUtilities.m1124dp(4.33f));
        this.backgroundBlur = new BlurringShader.StoryBlurDrawer(blurManager, this, 0, !customBlur());
        setPadding(AndroidUtilities.m1124dp(12.0f), AndroidUtilities.m1124dp(12.0f), AndroidUtilities.m1124dp(12.0f), AndroidUtilities.m1124dp(44.0f));
        C70741 c70741 = new C70741(context, UserConfig.selectedAccount, 0, false, new Utilities.Callback2() { // from class: org.telegram.ui.Stories.recorder.MultipleStoriesSelector$$ExternalSyntheticLambda2
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.fillItems((ArrayList) obj, (UniversalAdapter) obj2);
            }
        }, new Utilities.Callback5() { // from class: org.telegram.ui.Stories.recorder.MultipleStoriesSelector$$ExternalSyntheticLambda3
            @Override // org.telegram.messenger.Utilities.Callback5
            public final void run(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                this.f$0.onItemClick((UItem) obj, (View) obj2, ((Integer) obj3).intValue(), ((Float) obj4).floatValue(), ((Float) obj5).floatValue());
            }
        }, null, resourcesProvider, -1, 0);
        this.listView = c70741;
        c70741.adapter.setApplyBackground(false);
        c70741.setClipToPadding(false);
        c70741.setClipChildren(false);
        c70741.setPadding(AndroidUtilities.m1124dp(2.0f), 0, AndroidUtilities.m1124dp(2.0f), 0);
        addView(c70741, LayoutHelper.createFrame(-2, 120, 85));
        c70741.allowReorder(true);
        c70741.listenReorder(new Utilities.Callback2() { // from class: org.telegram.ui.Stories.recorder.MultipleStoriesSelector$$ExternalSyntheticLambda4
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.whenReordered(((Integer) obj).intValue(), (ArrayList) obj2);
            }
        }, true);
        showList(false, false);
        setWillNotDraw(false);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeJoin(Paint.Join.ROUND);
        paint.setStrokeCap(Paint.Cap.ROUND);
        paint.setColor(-1);
    }

    /* JADX INFO: renamed from: org.telegram.ui.Stories.recorder.MultipleStoriesSelector$1 */
    class C70741 extends UniversalRecyclerView {
        C70741(Context context, int i, int i2, boolean z, Utilities.Callback2 callback2, Utilities.Callback5 callback5, Utilities.Callback5Return callback5Return, Theme.ResourcesProvider resourcesProvider, int i3, int i4) {
            super(context, i, i2, z, callback2, callback5, callback5Return, resourcesProvider, i3, i4);
        }

        @Override // org.telegram.p029ui.Components.RecyclerListView
        public Integer getSelectorColor(int i) {
            return 0;
        }

        @Override // org.telegram.p029ui.Components.UniversalRecyclerView
        protected void swappedElements() {
            AndroidUtilities.forEachViews((RecyclerView) MultipleStoriesSelector.this.listView, new Consumer() { // from class: org.telegram.ui.Stories.recorder.MultipleStoriesSelector$1$$ExternalSyntheticLambda0
                @Override // com.google.android.exoplayer2.util.Consumer
                public final void accept(Object obj) {
                    this.f$0.lambda$swappedElements$0((View) obj);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$swappedElements$0(View view) {
            if (view instanceof EntryView) {
                MultipleStoriesSelector multipleStoriesSelector = MultipleStoriesSelector.this;
                ((EntryView) view).setPosition(multipleStoriesSelector.getPositionOf(multipleStoriesSelector.listView.getChildAdapterPosition(view)));
                view.setPressed(false);
            }
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(176.0f), TLObject.FLAG_30));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void whenReordered(int i, ArrayList arrayList) {
        this.selectedOrder.clear();
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            this.selectedOrder.add(Integer.valueOf(((UItem) obj).f2105id));
        }
        updateItemsAnimated();
    }

    private void updateItemsAnimated() {
        AndroidUtilities.forEachViews((RecyclerView) this.listView, new Consumer() { // from class: org.telegram.ui.Stories.recorder.MultipleStoriesSelector$$ExternalSyntheticLambda6
            @Override // com.google.android.exoplayer2.util.Consumer
            public final void accept(Object obj) {
                this.f$0.lambda$updateItemsAnimated$0((View) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateItemsAnimated$0(View view) {
        int childAdapterPosition;
        UItem item;
        if (!(view instanceof EntryView) || (item = this.listView.adapter.getItem((childAdapterPosition = this.listView.getChildAdapterPosition(view)))) == null) {
            return;
        }
        EntryView entryView = (EntryView) view;
        entryView.setPosition(getPositionOf(childAdapterPosition));
        entryView.setSelected(this.selectedStory == item.f2105id, true);
        entryView.setChecked(this.selectedStories.contains(Integer.valueOf(item.f2105id)), true);
        view.setPressed(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fillItems(ArrayList arrayList, UniversalAdapter universalAdapter) {
        universalAdapter.reorderSectionStart();
        int i = 0;
        for (int i2 = 0; i2 < this.selectedOrder.size(); i2++) {
            Integer num = (Integer) this.selectedOrder.get(i2);
            final int iIntValue = num.intValue();
            arrayList.add(EntryView.Factory.asStoryEntry(iIntValue, i, (StoryEntry) this.stories.get(iIntValue)).setChecked(this.selectedStory == iIntValue).setCollapsed(this.selectedStories.contains(num)).setClickCallback(new View.OnClickListener() { // from class: org.telegram.ui.Stories.recorder.MultipleStoriesSelector$$ExternalSyntheticLambda7
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$fillItems$1(iIntValue, view);
                }
            }));
            if (this.selectedStories.contains(num)) {
                i++;
            }
        }
        universalAdapter.reorderSectionEnd();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fillItems$1(int i, View view) {
        if (this.selectedStories.contains(Integer.valueOf(i))) {
            if (this.selectedStories.size() <= 1) {
                return;
            } else {
                this.selectedStories.remove(Integer.valueOf(i));
            }
        } else {
            this.selectedStories.add(Integer.valueOf(i));
        }
        updateItemsAnimated();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onItemClick(UItem uItem, View view, int i, float f, float f2) {
        onSwitchToStory(uItem.f2105id, (StoryEntry) uItem.object);
    }

    public void set(ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3) {
        showList(false, false);
        this.stories = arrayList;
        this.selectedOrder = arrayList2;
        this.selectedStories = arrayList3;
        this.counter = new Text(Integer.toString(arrayList.size()), 20.0f, AndroidUtilities.getTypeface("fonts/num.otf"));
        this.hint = new Text(LocaleController.formatPluralStringComma("HintViewStoriesMultiple", arrayList.size()), 14.0f);
        this.listView.adapter.update(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2() {
        if (this.hintShown) {
            this.hintShown = false;
            invalidate();
        }
    }

    public void showHint() {
        int i;
        if (this.hintShown || this.listShown || (i = MessagesController.getGlobalMainSettings().getInt("multistorieshint", 0)) >= 3) {
            return;
        }
        MessagesController.getGlobalMainSettings().edit().putInt("multistorieshint", i + 1).apply();
        AndroidUtilities.cancelRunOnUIThread(this.hideHint);
        this.hintShown = true;
        invalidate();
        AndroidUtilities.runOnUIThread(this.hideHint, 5500L);
    }

    public void setSelected(final int i) {
        if (this.selectedStory == i) {
            return;
        }
        this.selectedStory = i;
        AndroidUtilities.forEachViews((RecyclerView) this.listView, new Consumer() { // from class: org.telegram.ui.Stories.recorder.MultipleStoriesSelector$$ExternalSyntheticLambda0
            @Override // com.google.android.exoplayer2.util.Consumer
            public final void accept(Object obj) {
                this.f$0.lambda$setSelected$3(i, (View) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setSelected$3(int i, View view) {
        int childAdapterPosition;
        UItem item;
        if (!(view instanceof EntryView) || (item = this.listView.adapter.getItem((childAdapterPosition = this.listView.getChildAdapterPosition(view)))) == null) {
            return;
        }
        EntryView entryView = (EntryView) view;
        entryView.setPosition(getPositionOf(childAdapterPosition));
        entryView.setSelected(i == item.f2105id, true);
        view.setPressed(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getPositionOf(int i) {
        if (!this.selectedOrder.contains(Integer.valueOf(i))) {
            return -1;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < Math.min(i, this.stories.size()); i3++) {
            if (this.selectedOrder.contains(Integer.valueOf(i3))) {
                i2++;
            }
        }
        return i2;
    }

    public void update() {
        this.listView.adapter.update(false);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.listView.setPivotX(r2.getWidth() - AndroidUtilities.m1124dp(15.0f));
        this.listView.setPivotY(r2.getHeight());
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        float scale = this.buttonBounce.getScale(0.1f);
        canvas.save();
        this.buttonBounds.set(getWidth() - AndroidUtilities.m1124dp(42.0f), getHeight() - AndroidUtilities.m1124dp(34.0f), getWidth() - AndroidUtilities.m1124dp(12.0f), getHeight() - AndroidUtilities.m1124dp(4.0f));
        this.buttonTouchBounds.set(this.buttonBounds);
        this.buttonTouchBounds.inset(-AndroidUtilities.m1124dp(8.0f), -AndroidUtilities.m1124dp(8.0f));
        canvas.scale(scale, scale, this.buttonBounds.centerX(), this.buttonBounds.centerY());
        RectF rectF = this.buttonBounds;
        drawBlur(canvas, rectF, rectF.width() / 2.0f, 1.0f);
        this.strokePaint.setStrokeWidth(AndroidUtilities.m1124dp(2.0f));
        this.strokePaint.setAlpha(255);
        canvas.drawCircle(this.buttonBounds.centerX(), this.buttonBounds.centerY(), (this.buttonBounds.width() / 2.0f) - AndroidUtilities.m1124dp(0.9f), this.strokePaint);
        Text text = this.counter;
        if (text != null) {
            text.draw(canvas, this.buttonBounds.centerX() - (this.counter.getCurrentWidth() / 2.0f), this.buttonBounds.centerY() - AndroidUtilities.m1124dp(0.6f), -1, 1.0f - this.listView.getAlpha());
        }
        if (this.listView.getAlpha() > 0.0f) {
            canvas.save();
            canvas.translate(this.buttonBounds.centerX(), this.buttonBounds.centerY());
            this.strokePaint.setAlpha((int) (this.listView.getAlpha() * 255.0f));
            canvas.drawPath(this.closePath, this.strokePaint);
            canvas.restore();
        }
        canvas.restore();
        if (this.hint != null) {
            float f = this.animatedHint.set(this.hintShown);
            if (f > 0.0f) {
                float fLerp = AndroidUtilities.lerp(0.6f, 1.0f, f);
                float fM1124dp = AndroidUtilities.m1124dp(11.0f) + this.hint.getWidth() + AndroidUtilities.m1124dp(11.0f);
                float fM1124dp2 = AndroidUtilities.m1124dp(32.0f);
                RectF rectF2 = this.hintBounds;
                RectF rectF3 = this.buttonBounds;
                float f2 = rectF3.right - fM1124dp;
                float fM1124dp3 = (rectF3.top - AndroidUtilities.m1124dp(9.66f)) - fM1124dp2;
                RectF rectF4 = this.buttonBounds;
                rectF2.set(f2, fM1124dp3, rectF4.right, rectF4.top - AndroidUtilities.m1124dp(9.66f));
                RectF rectF5 = this.hintBounds;
                float fWidth = rectF5.right - (rectF5.width() * fLerp);
                RectF rectF6 = this.hintBounds;
                float fHeight = rectF6.bottom - (rectF6.height() * fLerp);
                RectF rectF7 = this.hintBounds;
                rectF5.set(fWidth, fHeight, rectF7.right, rectF7.bottom);
                this.hintBounds.offset(0.0f, AndroidUtilities.m1124dp(4.0f) * (1.0f - f));
                this.hintClipPath.rewind();
                float fM1124dp4 = AndroidUtilities.m1124dp(8.0f);
                RectF rectF8 = this.hintArc;
                RectF rectF9 = this.hintBounds;
                float f3 = rectF9.left;
                float f4 = rectF9.top;
                rectF8.set(f3, f4, f3 + fM1124dp4, f4 + fM1124dp4);
                this.hintClipPath.arcTo(this.hintArc, 180.0f, 90.0f, false);
                RectF rectF10 = this.hintArc;
                RectF rectF11 = this.hintBounds;
                float f5 = rectF11.right;
                float f6 = rectF11.top;
                rectF10.set(f5 - fM1124dp4, f6, f5, f6 + fM1124dp4);
                this.hintClipPath.arcTo(this.hintArc, 270.0f, 90.0f, false);
                RectF rectF12 = this.hintArc;
                RectF rectF13 = this.hintBounds;
                float f7 = rectF13.right;
                float f8 = rectF13.bottom;
                rectF12.set(f7 - fM1124dp4, f8 - fM1124dp4, f7, f8);
                this.hintClipPath.arcTo(this.hintArc, 0.0f, 90.0f, false);
                this.hintClipPath.lineTo(this.hintBounds.right - AndroidUtilities.m1124dp(8.0f), this.hintBounds.bottom);
                this.hintClipPath.lineTo(this.hintBounds.right - AndroidUtilities.m1124dp(14.5f), this.hintBounds.bottom + AndroidUtilities.m1124dp(5.66f));
                this.hintClipPath.lineTo(this.hintBounds.right - AndroidUtilities.m1124dp(21.0f), this.hintBounds.bottom);
                RectF rectF14 = this.hintArc;
                RectF rectF15 = this.hintBounds;
                float f9 = rectF15.left;
                float f10 = rectF15.bottom;
                rectF14.set(f9, f10 - fM1124dp4, f9 + fM1124dp4, f10);
                this.hintClipPath.arcTo(this.hintArc, 90.0f, 90.0f, false);
                this.hintClipPath.close();
                this.hintBounds.bottom += AndroidUtilities.m1124dp(5.66f);
                canvas.save();
                canvas.clipPath(this.hintClipPath);
                drawBlur(canvas, this.hintBounds, fM1124dp4, f);
                canvas.restore();
                canvas.save();
                RectF rectF16 = this.hintBounds;
                canvas.scale(fLerp, fLerp, rectF16.right, rectF16.bottom);
                this.hint.draw(canvas, (this.buttonBounds.right - fM1124dp) + AndroidUtilities.m1124dp(11.0f), (this.buttonBounds.top - AndroidUtilities.m1124dp(9.66f)) - (fM1124dp2 / 2.0f), -1, f);
                canvas.restore();
            }
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        UniversalRecyclerView universalRecyclerView = this.listView;
        if (view == universalRecyclerView) {
            this.listBounds.set(universalRecyclerView.getX(), this.listView.getY(), this.listView.getX() + this.listView.getWidth(), this.listView.getY() + this.listView.getHeight());
            AndroidUtilities.scaleRect(this.listBounds, this.listView.getScaleX(), this.listView.getX() + this.listView.getPivotX(), this.listView.getY() + this.listView.getPivotY());
            drawBlur(canvas, this.listBounds, AndroidUtilities.m1124dp(10.0f), this.listView.getAlpha());
            this.clipPath.rewind();
            this.clipPath.addRoundRect(this.listBounds, AndroidUtilities.m1124dp(10.0f), AndroidUtilities.m1124dp(10.0f), Path.Direction.CW);
            canvas.save();
            canvas.clipPath(this.clipPath);
            boolean zDrawChild = super.drawChild(canvas, view, j);
            canvas.restore();
            return zDrawChild;
        }
        return super.drawChild(canvas, view, j);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zContains = this.buttonBounds.contains(motionEvent.getX(), motionEvent.getY());
        if (motionEvent.getAction() == 0) {
            this.buttonBounce.setPressed(zContains);
            if (this.listShown && !zContains && !this.listBounds.contains(motionEvent.getX(), motionEvent.getY())) {
                showList(false, true);
                return true;
            }
        } else if (motionEvent.getAction() == 2) {
            if (!zContains) {
                this.buttonBounce.setPressed(false);
            }
        } else if (motionEvent.getAction() == 1) {
            if (this.buttonBounce.isPressed()) {
                showList(!this.listShown, true);
            }
            this.buttonBounce.setPressed(false);
        } else if (motionEvent.getAction() == 3) {
            this.buttonBounce.setPressed(false);
        }
        return this.buttonBounce.isPressed() || super.onTouchEvent(motionEvent);
    }

    public void showList(final boolean z, boolean z2) {
        if (this.listShown == z) {
            return;
        }
        this.listShown = z;
        this.listView.animate().cancel();
        if (z2) {
            this.listView.setVisibility(0);
            this.listView.animate().alpha(z ? 1.0f : 0.0f).scaleX(z ? 1.0f : 0.65f).scaleY(z ? 1.0f : 0.65f).setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.recorder.MultipleStoriesSelector.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (z) {
                        return;
                    }
                    MultipleStoriesSelector.this.listView.setVisibility(8);
                }
            }).setUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.recorder.MultipleStoriesSelector$$ExternalSyntheticLambda5
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$showList$4(valueAnimator);
                }
            }).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).setDuration(360L).start();
        } else {
            this.listView.setVisibility(z ? 0 : 8);
            this.listView.setAlpha(z ? 1.0f : 0.0f);
            this.listView.setScaleX(z ? 1.0f : 0.65f);
            this.listView.setScaleY(z ? 1.0f : 0.65f);
            invalidate();
        }
        if (z && this.hintShown) {
            this.hintShown = false;
            invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showList$4(ValueAnimator valueAnimator) {
        invalidate();
    }

    public boolean onBackPressed() {
        if (!this.listShown) {
            return false;
        }
        showList(false, true);
        return true;
    }

    private void drawBlur(Canvas canvas, RectF rectF, float f, float f2) {
        if (f2 < 1.0f) {
            canvas.saveLayerAlpha(rectF, (int) (255.0f * f2), 31);
        }
        if (customBlur()) {
            drawBlur(this.backgroundBlur, canvas, rectF, f, false, 0.0f, 0.0f, true, 1.0f);
            this.darkenBackground.setAlpha(38);
            canvas.drawRoundRect(rectF, f, f, this.darkenBackground);
        } else {
            Paint[] paints = this.backgroundBlur.getPaints(1.0f, 0.0f, 0.0f);
            if (paints == null || paints[1] == null) {
                this.darkenBackground.setAlpha(128);
                canvas.drawRoundRect(rectF, f, f, this.darkenBackground);
            } else {
                Paint paint = paints[0];
                if (paint != null) {
                    canvas.drawRoundRect(rectF, f, f, paint);
                }
                Paint paint2 = paints[1];
                if (paint2 != null) {
                    canvas.drawRoundRect(rectF, f, f, paint2);
                }
                this.darkenBackground.setAlpha((int) (51.0f * f2));
                canvas.drawRoundRect(rectF, f, f, this.darkenBackground);
            }
        }
        if (f2 < 1.0f) {
            canvas.restore();
        }
    }

    public static class EntryView extends View {
        private AnimatedFloat animatedChecked;
        private AnimatedFloat animatedSelected;
        private ButtonBounce checkboxBounce;
        private boolean checked;
        private final AnimatedTextView.AnimatedTextDrawable counter;

        /* JADX INFO: renamed from: cx */
        private float f2201cx;

        /* JADX INFO: renamed from: cy */
        private float f2202cy;
        private final Paint fillPaint;
        private final ImageReceiver imageReceiver;
        private String lastEntryPath;
        private int lastId;
        private View.OnClickListener onCheckboxClick;

        /* JADX INFO: renamed from: r */
        private float f2203r;
        private boolean selected;
        private final Paint strokePaint;

        public EntryView(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            ImageReceiver imageReceiver = new ImageReceiver(this);
            this.imageReceiver = imageReceiver;
            Paint paint = new Paint(1);
            this.strokePaint = paint;
            Paint paint2 = new Paint(1);
            this.fillPaint = paint2;
            AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = new AnimatedTextView.AnimatedTextDrawable();
            this.counter = animatedTextDrawable;
            this.checkboxBounce = new ButtonBounce(this);
            this.lastId = -1;
            CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
            this.animatedSelected = new AnimatedFloat(this, 0L, 320L, cubicBezierInterpolator);
            this.animatedChecked = new AnimatedFloat(this, 0L, 320L, cubicBezierInterpolator);
            animatedTextDrawable.setCallback(this);
            animatedTextDrawable.setTextColor(-1);
            animatedTextDrawable.setGravity(17);
            animatedTextDrawable.setTextSize(AndroidUtilities.m1124dp(16.0f));
            animatedTextDrawable.setTypeface(AndroidUtilities.getTypeface("fonts/num.otf"));
            animatedTextDrawable.setOverrideFullWidth(AndroidUtilities.displaySize.x);
            animatedTextDrawable.setAnimationProperties(0.65f, 0L, 480L, cubicBezierInterpolator);
            animatedTextDrawable.setScaleProperty(0.35f);
            paint.setStyle(Paint.Style.STROKE);
            paint.setColor(-1);
            paint2.setColor(Theme.getColor(Theme.key_featuredStickers_addButton, resourcesProvider));
            imageReceiver.setRoundRadius(AndroidUtilities.m1124dp(6.0f));
            ScaleStateListAnimator.apply(this);
        }

        @Override // android.view.View
        protected boolean verifyDrawable(Drawable drawable) {
            return drawable == this.counter || super.verifyDrawable(drawable);
        }

        @Override // android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            this.imageReceiver.onAttachedToWindow();
        }

        @Override // android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            this.imageReceiver.onDetachedFromWindow();
        }

        public void setPosition(int i) {
            this.counter.setText(i < 0 ? _UrlKt.FRAGMENT_ENCODE_SET : Integer.toString(i + 1), true);
        }

        public void setSelected(boolean z, boolean z2) {
            if (this.selected == z) {
                return;
            }
            this.selected = z;
            if (!z2) {
                this.animatedSelected.force(z);
            }
            invalidate();
        }

        public void setChecked(boolean z, boolean z2) {
            if (this.checked == z) {
                return;
            }
            this.checked = z;
            if (!z2) {
                this.animatedChecked.force(z);
            }
            invalidate();
        }

        public void setOnCheckboxClick(View.OnClickListener onClickListener) {
            this.onCheckboxClick = onClickListener;
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            View.OnClickListener onClickListener;
            boolean z = motionEvent.getX() >= this.f2201cx - ((float) AndroidUtilities.m1124dp(14.0f)) && motionEvent.getX() <= this.f2201cx + ((float) AndroidUtilities.m1124dp(14.0f)) && motionEvent.getY() >= this.f2202cy - ((float) AndroidUtilities.m1124dp(14.0f)) && motionEvent.getY() <= this.f2202cy + ((float) AndroidUtilities.m1124dp(14.0f));
            if (motionEvent.getAction() == 0) {
                this.checkboxBounce.setPressed(z);
            } else if (motionEvent.getAction() == 1) {
                if (this.checkboxBounce.isPressed() && z && (onClickListener = this.onCheckboxClick) != null) {
                    onClickListener.onClick(this);
                }
                this.checkboxBounce.setPressed(false);
            } else if (motionEvent.getAction() == 3) {
                this.checkboxBounce.setPressed(false);
            }
            return this.checkboxBounce.isPressed() || super.onTouchEvent(motionEvent);
        }

        public void set(int i, int i2, final StoryEntry storyEntry) {
            String str;
            Uri uriWithAppendedId;
            if (this.lastId != i) {
                this.lastEntryPath = null;
                this.imageReceiver.clearImage();
                this.lastId = i;
            }
            this.counter.setText(Integer.toString(i2 + 1), false);
            File file = storyEntry.draftThumbFile;
            if (file != null) {
                if (TextUtils.equals(this.lastEntryPath, file.getPath())) {
                    return;
                }
                this.lastEntryPath = storyEntry.draftThumbFile.getPath();
                Utilities.searchQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.recorder.MultipleStoriesSelector$EntryView$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$set$1(storyEntry);
                    }
                });
                return;
            }
            if (storyEntry.isVideo) {
                Bitmap bitmapLoadThumbnail = storyEntry.blurredVideoThumb;
                if (bitmapLoadThumbnail == null) {
                    bitmapLoadThumbnail = null;
                }
                if (bitmapLoadThumbnail == null && (str = storyEntry.thumbPath) != null && str.startsWith("vthumb://")) {
                    if (TextUtils.equals(this.lastEntryPath, storyEntry.thumbPath)) {
                        return;
                    }
                    String str2 = storyEntry.thumbPath;
                    this.lastEntryPath = str2;
                    long j = Long.parseLong(str2.substring(9));
                    if (bitmapLoadThumbnail == null && Build.VERSION.SDK_INT >= 29) {
                        try {
                            if (storyEntry.isVideo) {
                                uriWithAppendedId = ContentUris.withAppendedId(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, j);
                            } else {
                                uriWithAppendedId = ContentUris.withAppendedId(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, j);
                            }
                            bitmapLoadThumbnail = getContext().getContentResolver().loadThumbnail(uriWithAppendedId, new Size(AndroidUtilities.m1124dp(94.0f), AndroidUtilities.m1124dp(112.0f)), null);
                        } catch (Exception unused) {
                        }
                    }
                }
                this.imageReceiver.setImageBitmap(bitmapLoadThumbnail);
                return;
            }
            File file2 = storyEntry.file;
            if (file2 == null || TextUtils.equals(this.lastEntryPath, file2.getPath())) {
                return;
            }
            this.lastEntryPath = storyEntry.file.getPath();
            Utilities.searchQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.recorder.MultipleStoriesSelector$EntryView$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$set$3(storyEntry);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$set$1(StoryEntry storyEntry) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(storyEntry.draftThumbFile.getPath(), options);
            StoryEntry.setupScale(options, AndroidUtilities.m1124dp(94.0f), AndroidUtilities.m1124dp(112.0f));
            options.inPreferredConfig = Bitmap.Config.ARGB_8888;
            options.inDither = true;
            options.inJustDecodeBounds = false;
            final Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(storyEntry.draftThumbFile.getPath(), options);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.recorder.MultipleStoriesSelector$EntryView$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$set$0(bitmapDecodeFile);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$set$0(Bitmap bitmap) {
            this.imageReceiver.setImageBitmap(bitmap);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$set$3(StoryEntry storyEntry) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(storyEntry.file.getPath(), options);
            StoryEntry.setupScale(options, AndroidUtilities.m1124dp(94.0f), AndroidUtilities.m1124dp(112.0f));
            options.inPreferredConfig = Bitmap.Config.ARGB_8888;
            options.inDither = true;
            options.inJustDecodeBounds = false;
            final Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(storyEntry.file.getPath(), options);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.recorder.MultipleStoriesSelector$EntryView$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$set$2(bitmapDecodeFile);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$set$2(Bitmap bitmap) {
            this.imageReceiver.setImageBitmap(bitmap);
        }

        @Override // android.view.View
        protected void dispatchDraw(Canvas canvas) {
            super.dispatchDraw(canvas);
            this.imageReceiver.setImageCoords(AndroidUtilities.m1124dp(2.0f), AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(94.0f), AndroidUtilities.m1124dp(112.0f));
            this.imageReceiver.draw(canvas);
            this.strokePaint.setStrokeWidth(AndroidUtilities.m1124dp(1.5f));
            float f = this.animatedSelected.set(this.selected);
            if (f > 0.0f) {
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(AndroidUtilities.m1124dp(2.0f), AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(96.0f), AndroidUtilities.m1124dp(116.0f));
                this.strokePaint.setAlpha((int) (f * 255.0f));
                canvas.drawRoundRect(rectF, AndroidUtilities.m1124dp(6.0f), AndroidUtilities.m1124dp(6.0f), this.strokePaint);
            }
            this.f2201cx = (getWidth() - AndroidUtilities.m1124dp(17.163f)) - AndroidUtilities.m1124dp(3.0f);
            this.f2202cy = AndroidUtilities.m1124dp(17.833f) + AndroidUtilities.m1124dp(3.0f);
            this.f2203r = AndroidUtilities.m1124dp(12.833f);
            float f2 = this.animatedChecked.set(this.checked);
            float scale = this.checkboxBounce.getScale(0.075f);
            canvas.save();
            canvas.scale(scale, scale, this.f2201cx, this.f2202cy);
            if (f2 > 0.0f) {
                this.fillPaint.setAlpha((int) (f2 * 255.0f));
                canvas.drawCircle(this.f2201cx, this.f2202cy, this.f2203r, this.fillPaint);
            }
            this.strokePaint.setAlpha(255);
            canvas.drawCircle(this.f2201cx, this.f2202cy, this.f2203r - AndroidUtilities.m1124dp(1.0f), this.strokePaint);
            if (f2 > 0.0f) {
                AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = this.counter;
                float f3 = this.f2201cx;
                float f4 = this.f2203r;
                float f5 = this.f2202cy;
                animatedTextDrawable.setBounds(f3 - f4, f5, f3 + f4, f5);
                this.counter.setAlpha((int) (f2 * 255.0f));
                this.counter.draw(canvas);
            }
            canvas.restore();
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(98.0f), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(120.0f), TLObject.FLAG_30));
        }

        public static class Factory extends UItem.UItemFactory {
            static {
                UItem.UItemFactory.setup(new Factory());
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public EntryView createView(Context context, RecyclerListView recyclerListView, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
                return new EntryView(context, resourcesProvider);
            }

            @Override // org.telegram.ui.Components.UItem.UItemFactory
            public void bindView(View view, UItem uItem, boolean z, UniversalAdapter universalAdapter, UniversalRecyclerView universalRecyclerView) {
                EntryView entryView = (EntryView) view;
                entryView.set(uItem.f2105id, uItem.intValue, (StoryEntry) uItem.object);
                entryView.setSelected(uItem.checked, false);
                entryView.setChecked(uItem.collapsed, false);
                entryView.setOnCheckboxClick(uItem.clickCallback);
            }

            public static UItem asStoryEntry(int i, int i2, StoryEntry storyEntry) {
                UItem uItemOfFactory = UItem.ofFactory(Factory.class);
                uItemOfFactory.f2105id = i;
                uItemOfFactory.object = storyEntry;
                uItemOfFactory.intValue = i2;
                return uItemOfFactory;
            }
        }
    }
}
