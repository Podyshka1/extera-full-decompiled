package org.telegram.p029ui.Cells;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.text.SpannableString;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;
import com.exteragram.messenger.preferences.utils.IconShapeHelper;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.ColoredImageSpan;
import org.telegram.p029ui.Components.Easings;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.Premium.PremiumFeatureBottomSheet;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.p029ui.Components.ScaleStateListAnimator;
import org.telegram.p029ui.LauncherIconController;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes6.dex */
public class AppIconsSelectorCell extends RecyclerListView implements NotificationCenter.NotificationCenterDelegate {
    private List availableIcons;
    private int currentAccount;
    private GridLayoutManager linearLayoutManager;
    private LauncherIconController.LauncherIcon selectedIcon;

    public AppIconsSelectorCell(final Context context, final BaseFragment baseFragment, int i) {
        super(context);
        this.availableIcons = new ArrayList();
        this.currentAccount = i;
        setPadding(0, AndroidUtilities.m1124dp(12.0f), 0, AndroidUtilities.m1124dp(12.0f));
        setFocusable(false);
        setItemAnimator(null);
        setLayoutAnimation(null);
        setOverScrollMode(2);
        GridLayoutManager gridLayoutManager = new GridLayoutManager(context, 4);
        this.linearLayoutManager = gridLayoutManager;
        setLayoutManager(gridLayoutManager);
        setAdapter(new RecyclerView.Adapter() { // from class: org.telegram.ui.Cells.AppIconsSelectorCell.1
            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
                return new RecyclerListView.Holder(new IconHolderView(viewGroup.getContext()));
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
                IconHolderView iconHolderView = (IconHolderView) viewHolder.itemView;
                LauncherIconController.LauncherIcon launcherIcon = (LauncherIconController.LauncherIcon) AppIconsSelectorCell.this.availableIcons.get(i2);
                if (launcherIcon.hidden) {
                    return;
                }
                iconHolderView.bind(launcherIcon, launcherIcon == AppIconsSelectorCell.this.selectedIcon);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemCount() {
                return AppIconsSelectorCell.this.availableIcons.size();
            }
        });
        addItemDecoration(new RecyclerView.ItemDecoration() { // from class: org.telegram.ui.Cells.AppIconsSelectorCell.2
            private final int spacing = AndroidUtilities.m1124dp(16.0f);

            @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
            public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
                int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
                int i2 = childAdapterPosition % 4;
                int i3 = this.spacing;
                rect.left = i3 - ((i2 * i3) / 4);
                rect.right = ((i2 + 1) * i3) / 4;
                if (childAdapterPosition < 4) {
                    rect.top = i3;
                }
                rect.bottom = i3;
            }
        });
        setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Cells.AppIconsSelectorCell$$ExternalSyntheticLambda0
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i2) {
                this.f$0.lambda$new$0(baseFragment, context, view, i2);
            }
        });
        updateIconsVisibility();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(BaseFragment baseFragment, Context context, View view, int i) {
        IconHolderView iconHolderView = (IconHolderView) view;
        LauncherIconController.LauncherIcon launcherIcon = (LauncherIconController.LauncherIcon) this.availableIcons.get(i);
        if (launcherIcon.premium && !UserConfig.hasPremiumOnAccounts()) {
            baseFragment.showDialog(new PremiumFeatureBottomSheet(baseFragment, 10, true));
            return;
        }
        if (LauncherIconController.isEnabled(launcherIcon)) {
            return;
        }
        LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(context) { // from class: org.telegram.ui.Cells.AppIconsSelectorCell.3
            @Override // androidx.recyclerview.widget.LinearSmoothScroller
            public int calculateDtToFit(int i2, int i3, int i4, int i5, int i6) {
                return (i4 - i2) + AndroidUtilities.m1124dp(16.0f);
            }

            @Override // androidx.recyclerview.widget.LinearSmoothScroller
            protected float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
                return super.calculateSpeedPerPixel(displayMetrics) * 3.0f;
            }
        };
        linearSmoothScroller.setTargetPosition(i);
        this.linearLayoutManager.startSmoothScroll(linearSmoothScroller);
        LauncherIconController.setIcon(launcherIcon);
        this.selectedIcon = launcherIcon;
        iconHolderView.setSelected(true, true);
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            IconHolderView iconHolderView2 = (IconHolderView) getChildAt(i2);
            if (iconHolderView2 != iconHolderView) {
                iconHolderView2.setSelected(false, true);
            }
        }
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.showBulletin, 5, launcherIcon);
    }

    private void updateIconsVisibility() {
        this.availableIcons.clear();
        this.availableIcons.addAll(Arrays.asList(LauncherIconController.LauncherIcon.values()));
        this.selectedIcon = null;
        int i = 0;
        while (i < this.availableIcons.size()) {
            LauncherIconController.LauncherIcon launcherIcon = (LauncherIconController.LauncherIcon) this.availableIcons.get(i);
            if (launcherIcon.hidden || (MessagesController.getInstance(this.currentAccount).premiumFeaturesBlocked() && launcherIcon.premium)) {
                this.availableIcons.remove(i);
                i--;
            } else if (this.selectedIcon == null && LauncherIconController.isEnabled(launcherIcon)) {
                this.selectedIcon = launcherIcon;
            }
            i++;
        }
        getAdapter().notifyDataSetChanged();
        invalidateItemDecorations();
        if (this.selectedIcon != null) {
            for (int i2 = 0; i2 < this.availableIcons.size(); i2++) {
                if (this.availableIcons.get(i2) == this.selectedIcon) {
                    this.linearLayoutManager.scrollToPositionWithOffset(i2, AndroidUtilities.m1124dp(16.0f));
                    return;
                }
            }
        }
    }

    @Override // org.telegram.p029ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        invalidateItemDecorations();
    }

    @Override // org.telegram.p029ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), i2);
    }

    @Override // org.telegram.p029ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.premiumStatusChangedGlobal);
    }

    @Override // org.telegram.p029ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.premiumStatusChangedGlobal);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.premiumStatusChangedGlobal) {
            updateIconsVisibility();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class IconHolderView extends LinearLayout {
        private Paint fillPaint;
        private AdaptiveIconImageView iconView;
        private Paint outlinePaint;
        private float progress;
        private TextView titleView;

        private IconHolderView(Context context) {
            super(context);
            this.outlinePaint = new Paint(1);
            this.fillPaint = new Paint(1);
            setOrientation(1);
            setWillNotDraw(false);
            AdaptiveIconImageView adaptiveIconImageView = new AdaptiveIconImageView(context);
            this.iconView = adaptiveIconImageView;
            adaptiveIconImageView.setPadding(AndroidUtilities.m1124dp(8.0f), AndroidUtilities.m1124dp(8.0f), AndroidUtilities.m1124dp(8.0f), AndroidUtilities.m1124dp(8.0f));
            this.iconView.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m1124dp(16.0f), 0, Theme.getColor(Theme.key_listSelector), -16777216));
            addView(this.iconView, LayoutHelper.createLinear(58, 58, 1));
            TextView textView = new TextView(context);
            this.titleView = textView;
            textView.setSingleLine();
            this.titleView.setTextSize(1, 13.0f);
            this.titleView.setEllipsize(TextUtils.TruncateAt.END);
            this.titleView.setGravity(17);
            this.titleView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_REGULAR));
            this.titleView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
            addView(this.titleView, LayoutHelper.createLinear(-1, -2, 1, 0, 4, 0, 0));
            this.outlinePaint.setStyle(Paint.Style.STROKE);
            this.outlinePaint.setStrokeWidth(Math.max(2, AndroidUtilities.m1124dp(0.5f)));
            this.fillPaint.setColor(-1);
            ScaleStateListAnimator.apply(this, 0.05f, 1.2f);
        }

        @Override // android.view.View
        public void draw(Canvas canvas) {
            super.draw(canvas);
            canvas.save();
            canvas.translate(this.iconView.getLeft(), this.iconView.getTop());
            canvas.drawPath(this.iconView.outlinePath, this.outlinePaint);
            canvas.restore();
        }

        private void setProgress(float f) {
            this.progress = f;
            TextView textView = this.titleView;
            int color = Theme.getColor(Theme.key_windowBackgroundWhiteBlackText);
            int i = Theme.key_windowBackgroundWhiteValueText;
            textView.setTextColor(ColorUtils.blendARGB(color, Theme.getColor(i), f));
            this.outlinePaint.setColor(ColorUtils.blendARGB(ColorUtils.setAlphaComponent(Theme.getColor(Theme.key_switchTrack), 63), Theme.getColor(i), f));
            this.outlinePaint.setStrokeWidth(Math.max(2, AndroidUtilities.m1124dp(AndroidUtilities.lerp(0.5f, 2.0f, f))));
            invalidate();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSelected(boolean z, boolean z2) {
            float f = z ? 1.0f : 0.0f;
            float f2 = this.progress;
            if (f == f2 && z2) {
                return;
            }
            if (z2) {
                ValueAnimator duration = ValueAnimator.ofFloat(f2, f).setDuration(250L);
                duration.setInterpolator(Easings.easeInOutQuad);
                duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Cells.AppIconsSelectorCell$IconHolderView$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        this.f$0.lambda$setSelected$0(valueAnimator);
                    }
                });
                duration.start();
                return;
            }
            setProgress(f);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$setSelected$0(ValueAnimator valueAnimator) {
            setProgress(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void bind(LauncherIconController.LauncherIcon launcherIcon, boolean z) {
            this.iconView.bindIconResources(launcherIcon.background, launcherIcon.foreground);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.titleView.getLayoutParams();
            if (launcherIcon.premium && !UserConfig.hasPremiumOnAccounts()) {
                SpannableString spannableString = new SpannableString("d " + LocaleController.getString(launcherIcon.title));
                ColoredImageSpan coloredImageSpan = new ColoredImageSpan(C2888R.drawable.msg_mini_premiumlock);
                coloredImageSpan.setTopOffset(1);
                coloredImageSpan.setSize(AndroidUtilities.m1124dp(13.0f));
                spannableString.setSpan(coloredImageSpan, 0, 1, 33);
                marginLayoutParams.rightMargin = AndroidUtilities.m1124dp(4.0f);
                this.titleView.setText(spannableString);
            } else {
                marginLayoutParams.rightMargin = 0;
                this.titleView.setText(LocaleController.getString(launcherIcon.title));
            }
            setSelected(z, false);
        }
    }

    public static class AdaptiveIconImageView extends ImageView {
        private int backgroundOuterPadding;
        private int boundBackgroundRes;
        private int boundForegroundRes;
        private Drawable foreground;
        Path iconPath;
        private boolean loading;
        private int outerPadding;
        Path outlinePath;
        private final Paint placeholderPaint;
        private int requestId;
        private static final Map shapeCache = new HashMap();
        private static final Map drawableStateCache = new HashMap();

        public AdaptiveIconImageView(Context context) {
            super(context);
            Paint paint = new Paint(1);
            this.placeholderPaint = paint;
            this.iconPath = new Path();
            this.outlinePath = new Path();
            this.outerPadding = AndroidUtilities.m1124dp(5.0f);
            this.backgroundOuterPadding = AndroidUtilities.m1124dp(42.0f);
            paint.setColor(ColorUtils.setAlphaComponent(Theme.getColor(Theme.key_switchTrack), 85));
        }

        public void bindIconResources(final int i, final int i2) {
            if (this.boundBackgroundRes == i && this.boundForegroundRes == i2 && !this.loading) {
                return;
            }
            this.boundBackgroundRes = i;
            this.boundForegroundRes = i2;
            final int i3 = this.requestId + 1;
            this.requestId = i3;
            Drawable cachedDrawable = getCachedDrawable(i);
            Drawable cachedDrawable2 = getCachedDrawable(i2);
            if (cachedDrawable != null && cachedDrawable2 != null) {
                this.loading = false;
                animate().cancel();
                setAlpha(1.0f);
                setImageDrawable(cachedDrawable);
                this.foreground = cachedDrawable2;
                invalidate();
                return;
            }
            this.loading = true;
            setImageDrawable(null);
            this.foreground = null;
            animate().cancel();
            setAlpha(1.0f);
            invalidate();
            Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Cells.AppIconsSelectorCell$AdaptiveIconImageView$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$bindIconResources$1(i, i2, i3);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$bindIconResources$1(int i, int i2, final int i3) {
            final Drawable drawableLoadDrawable = loadDrawable(i);
            final Drawable drawableLoadDrawable2 = loadDrawable(i2);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Cells.AppIconsSelectorCell$AdaptiveIconImageView$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$bindIconResources$0(i3, drawableLoadDrawable, drawableLoadDrawable2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$bindIconResources$0(int i, Drawable drawable, Drawable drawable2) {
            if (i != this.requestId) {
                return;
            }
            setAlpha(0.0f);
            setImageDrawable(drawable);
            this.foreground = drawable2;
            this.loading = false;
            animate().alpha(1.0f).setDuration(160L).start();
            invalidate();
        }

        private Drawable loadDrawable(int i) {
            Drawable.ConstantState constantState;
            Map map = drawableStateCache;
            synchronized (map) {
                constantState = (Drawable.ConstantState) map.get(Integer.valueOf(i));
            }
            if (constantState != null) {
                return constantState.newDrawable(ApplicationLoader.applicationContext.getResources()).mutate();
            }
            Drawable drawable = ContextCompat.getDrawable(ApplicationLoader.applicationContext, i);
            if (drawable == null) {
                return null;
            }
            Drawable.ConstantState constantState2 = drawable.getConstantState();
            if (constantState2 == null) {
                return drawable;
            }
            synchronized (map) {
                map.put(Integer.valueOf(i), constantState2);
            }
            return constantState2.newDrawable(ApplicationLoader.applicationContext.getResources()).mutate();
        }

        private Drawable getCachedDrawable(int i) {
            Drawable.ConstantState constantState;
            Map map = drawableStateCache;
            synchronized (map) {
                constantState = (Drawable.ConstantState) map.get(Integer.valueOf(i));
            }
            if (constantState == null) {
                return null;
            }
            return constantState.newDrawable(ApplicationLoader.applicationContext.getResources()).mutate();
        }

        public void setForeground(int i) {
            this.foreground = loadDrawable(i);
            invalidate();
        }

        @Override // android.view.View
        protected void onSizeChanged(int i, int i2, int i3, int i4) {
            super.onSizeChanged(i, i2, i3, i4);
            updatePath();
        }

        public void setPadding(int i) {
            setPadding(i, i, i, i);
        }

        public void setOuterPadding(int i) {
            this.outerPadding = i;
        }

        public void setBackgroundOuterPadding(int i) {
            this.backgroundOuterPadding = i;
        }

        @Override // android.view.View
        public void draw(Canvas canvas) {
            if (!this.iconPath.isEmpty()) {
                canvas.clipPath(this.iconPath);
            }
            canvas.save();
            canvas.scale((this.backgroundOuterPadding / getWidth()) + 1.0f, (this.backgroundOuterPadding / getHeight()) + 1.0f, getWidth() / 2.0f, getHeight() / 2.0f);
            super.draw(canvas);
            canvas.restore();
            if (this.loading && !this.iconPath.isEmpty()) {
                int i = Theme.key_switchTrack;
                this.placeholderPaint.setColor(ColorUtils.blendARGB(ColorUtils.setAlphaComponent(Theme.getColor(i), 56), ColorUtils.setAlphaComponent(Theme.getColor(i), 114), (((float) Math.sin(((double) ((SystemClock.uptimeMillis() % 900) / 900.0f)) * 3.141592653589793d * 2.0d)) * 0.5f) + 0.5f));
                canvas.drawPath(this.iconPath, this.placeholderPaint);
                postInvalidateOnAnimation();
            }
            Drawable drawable = this.foreground;
            if (drawable != null) {
                int i2 = this.outerPadding;
                drawable.setBounds(-i2, -i2, getWidth() + this.outerPadding, getHeight() + this.outerPadding);
                this.foreground.draw(canvas);
            }
        }

        private void updatePath() {
            this.iconPath.rewind();
            this.outlinePath.rewind();
            float width = getWidth() / AndroidUtilities.density;
            if (width <= 0.0f) {
                return;
            }
            float paddingLeft = width - ((getPaddingLeft() / AndroidUtilities.density) * 2.0f);
            float f = width - 4.0f;
            float f2 = (paddingLeft / width) * 16.0f;
            float f3 = (f / width) * 16.0f;
            String str = "i_" + paddingLeft + "_" + f2;
            Map map = shapeCache;
            Path finalIconShapePath = (Path) map.get(str);
            if (finalIconShapePath == null) {
                finalIconShapePath = IconShapeHelper.INSTANCE.getFinalIconShapePath(paddingLeft, paddingLeft, f2);
                map.put(str, finalIconShapePath);
            }
            String str2 = "o_" + f + "_" + f3;
            Path finalIconShapePath2 = (Path) map.get(str2);
            if (finalIconShapePath2 == null) {
                finalIconShapePath2 = IconShapeHelper.INSTANCE.getFinalIconShapePath(f, f, f3);
                map.put(str2, finalIconShapePath2);
            }
            Matrix matrix = new Matrix();
            matrix.setTranslate(getPaddingLeft(), getPaddingTop());
            finalIconShapePath.transform(matrix, this.iconPath);
            matrix.setTranslate(AndroidUtilities.m1124dp(2.0f), AndroidUtilities.m1124dp(2.0f));
            finalIconShapePath2.transform(matrix, this.outlinePath);
        }
    }
}
