package com.exteragram.messenger.icons.p012ui.components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
import com.exteragram.messenger.icons.ExteraResources;
import com.exteragram.messenger.icons.IconManager;
import com.exteragram.messenger.icons.IconPack;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import p022j$.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes4.dex */
public class IconPackPreviewView extends View {
    private static final int[] DEFAULT_ICONS = {C2888R.drawable.msg_sticker, C2888R.drawable.msg_link2, C2888R.drawable.msg_pin, C2888R.drawable.msg_photos};
    private float animationProgress;
    private ValueAnimator animator;
    private boolean attached;
    private final List availableIconIds;
    private final Runnable changeRunnable;
    private final int circCenterSize;
    private final int circInnerIconSize;
    private final int circInnerRadius;
    private final int circOuterIconSize;
    private final int circOuterRadius;
    private final int cols;
    private int count;
    private final int[] currentIconIds;
    private final Drawable[] currentIcons;
    private IconPack currentPack;
    private final int gap;
    private final int iconSize;
    private boolean isCircularMode;
    private final Drawable[] nextIcons;
    private final Random random;
    private int refreshTimeMilliseconds;
    private final int rows;
    private boolean shouldAnimate;

    public IconPackPreviewView(Context context) {
        super(context);
        this.availableIconIds = new ArrayList();
        this.currentIcons = new Drawable[20];
        this.nextIcons = new Drawable[20];
        this.currentIconIds = new int[20];
        this.random = new Random();
        this.rows = 2;
        this.cols = 2;
        this.count = 4;
        this.iconSize = AndroidUtilities.m1124dp(20.0f);
        this.gap = AndroidUtilities.m1124dp(4.0f);
        this.isCircularMode = false;
        this.circInnerRadius = AndroidUtilities.m1124dp(46.0f);
        this.circInnerIconSize = AndroidUtilities.m1124dp(24.0f);
        this.circOuterRadius = AndroidUtilities.m1124dp(72.0f);
        this.circOuterIconSize = AndroidUtilities.m1124dp(20.0f);
        this.circCenterSize = AndroidUtilities.m1124dp(36.0f);
        this.animationProgress = 0.0f;
        this.refreshTimeMilliseconds = 5000;
        this.changeRunnable = new Runnable() { // from class: com.exteragram.messenger.icons.ui.components.IconPackPreviewView$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.animateToNext();
            }
        };
    }

    public void setCircularMode(boolean z) {
        this.isCircularMode = z;
        if (z) {
            this.count = 13;
        }
        requestLayout();
        IconPack iconPack = this.currentPack;
        if (iconPack != null) {
            setIconPack(iconPack);
        }
    }

    public void setRefreshTime(int i) {
        this.refreshTimeMilliseconds = i;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.isCircularMode) {
            setMeasuredDimension(View.getDefaultSize(getSuggestedMinimumWidth(), i), View.resolveSize(((this.circOuterRadius + (this.circOuterIconSize / 2)) * 2) + AndroidUtilities.m1124dp(8.0f), i2));
        } else {
            setMeasuredDimension(View.resolveSize((this.iconSize * 2) + this.gap + getPaddingLeft() + getPaddingRight(), i), View.resolveSize((this.iconSize * 2) + this.gap + getPaddingTop() + getPaddingBottom(), i2));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setIconPack(IconPack iconPack) {
        if (this.currentPack != iconPack || this.availableIconIds.isEmpty() || this.availableIconIds.size() < this.count) {
            this.currentPack = iconPack;
            this.availableIconIds.clear();
            if (iconPack.isBase()) {
                for (int i : DEFAULT_ICONS) {
                    this.availableIconIds.add(Integer.valueOf(i));
                }
                this.shouldAnimate = false;
            } else {
                ArrayList arrayList = new ArrayList();
                HashSet hashSet = new HashSet();
                for (Map.Entry entry : iconPack.getIcons().entrySet()) {
                    String str = (String) entry.getKey();
                    String str2 = (String) entry.getValue();
                    if (!hashSet.contains(str2)) {
                        hashSet.add(str2);
                        arrayList.add(str);
                    }
                }
                if (arrayList.isEmpty()) {
                    this.availableIconIds.add(Integer.valueOf(C2888R.drawable.msg_media));
                } else {
                    ConcurrentHashMap systemIcons = IconManager.INSTANCE.getSystemIcons();
                    if (!systemIcons.isEmpty()) {
                        int size = arrayList.size();
                        int i2 = 0;
                        while (i2 < size) {
                            Object obj = arrayList.get(i2);
                            i2++;
                            Integer num = (Integer) systemIcons.get((String) obj);
                            if (num != null) {
                                this.availableIconIds.add(num);
                            }
                        }
                    } else {
                        int size2 = arrayList.size();
                        int i3 = 0;
                        int i4 = 0;
                        while (i4 < size2) {
                            Object obj2 = arrayList.get(i4);
                            i4++;
                            int identifier = getResources().getIdentifier((String) obj2, "drawable", getContext().getPackageName());
                            if (identifier != 0) {
                                this.availableIconIds.add(Integer.valueOf(identifier));
                            }
                            i3++;
                            if (i3 > 30) {
                                break;
                            }
                        }
                    }
                }
                this.shouldAnimate = hashSet.size() >= this.count * 2;
            }
            loadIcons(false);
        }
    }

    private void loadIcons(final boolean z) {
        int iMin;
        final IconPack iconPack = this.currentPack;
        final ArrayList arrayList = new ArrayList(this.availableIconIds);
        final int[] iArr = z ? (int[]) this.currentIconIds.clone() : null;
        if (!iconPack.isBase()) {
            iMin = Math.min(this.count, arrayList.size());
        } else {
            iMin = this.count;
        }
        final int i = iMin;
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.icons.ui.components.IconPackPreviewView$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadIcons$1(arrayList, i, iArr, iconPack, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadIcons$1(List list, int i, int[] iArr, final IconPack iconPack, final boolean z) {
        final List listPickRandomIconIdsInternal = pickRandomIconIdsInternal(list, i, iArr);
        int[] iArr2 = this.currentIconIds;
        final Drawable[] drawableArr = new Drawable[iArr2.length];
        final int[] iArr3 = new int[iArr2.length];
        for (int i2 = 0; i2 < this.currentIconIds.length; i2++) {
            if (i2 < listPickRandomIconIdsInternal.size()) {
                int iIntValue = ((Integer) listPickRandomIconIdsInternal.get(i2)).intValue();
                iArr3[i2] = iIntValue;
                drawableArr[i2] = getIconDrawableInternal(iconPack, iIntValue);
            } else if (!listPickRandomIconIdsInternal.isEmpty() && this.isCircularMode) {
                int iIntValue2 = ((Integer) listPickRandomIconIdsInternal.get(i2 % listPickRandomIconIdsInternal.size())).intValue();
                iArr3[i2] = iIntValue2;
                drawableArr[i2] = getIconDrawableInternal(iconPack, iIntValue2);
            } else {
                iArr3[i2] = 0;
                drawableArr[i2] = null;
            }
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.icons.ui.components.IconPackPreviewView$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadIcons$0(iconPack, z, drawableArr, listPickRandomIconIdsInternal, iArr3);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadIcons$0(IconPack iconPack, boolean z, Drawable[] drawableArr, List list, int[] iArr) {
        if (this.currentPack != iconPack) {
            return;
        }
        int i = 0;
        if (z) {
            Drawable[] drawableArr2 = this.nextIcons;
            System.arraycopy(drawableArr, 0, drawableArr2, 0, drawableArr2.length);
            startTransition(list);
            return;
        }
        while (true) {
            Drawable[] drawableArr3 = this.currentIcons;
            if (i >= drawableArr3.length) {
                break;
            }
            this.currentIconIds[i] = iArr[i];
            drawableArr3[i] = drawableArr[i];
            i++;
        }
        invalidate();
        if (this.attached && this.shouldAnimate) {
            scheduleNext();
        } else {
            removeCallbacks(this.changeRunnable);
        }
    }

    private List pickRandomIconIdsInternal(List list, int i, int[] iArr) {
        ArrayList arrayList = new ArrayList();
        if (!list.isEmpty()) {
            ArrayList arrayList2 = new ArrayList(list);
            if (iArr != null) {
                for (int i2 : iArr) {
                    arrayList2.remove(Integer.valueOf(i2));
                }
            }
            if (arrayList2.isEmpty()) {
                arrayList2.addAll(list);
            }
            HashSet hashSet = new HashSet();
            int size = arrayList2.size();
            for (int i3 = 0; hashSet.size() < i && hashSet.size() < size && i3 < i * 4; i3++) {
                hashSet.add(Integer.valueOf(this.random.nextInt(size)));
            }
            if (hashSet.size() < i && hashSet.size() < size) {
                for (int i4 = 0; i4 < size && hashSet.size() < i; i4++) {
                    hashSet.add(Integer.valueOf(i4));
                }
            }
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                arrayList.add((Integer) arrayList2.get(((Integer) it.next()).intValue()));
            }
        }
        return arrayList;
    }

    private Drawable getIconDrawableInternal(IconPack iconPack, int i) {
        Drawable packIconDrawable = null;
        if (i == 0) {
            return null;
        }
        if (iconPack.isBase()) {
            SparseIntArray preinstalledMap = iconPack.getPreinstalledMap();
            int i2 = preinstalledMap != null ? preinstalledMap.get(i, -1) : -1;
            if (i2 != -1) {
                packIconDrawable = getResources().getDrawable(i2);
            }
        } else {
            packIconDrawable = IconManager.INSTANCE.getPackIconDrawable(iconPack, i);
        }
        if (packIconDrawable == null) {
            if (getResources() instanceof ExteraResources) {
                try {
                    packIconDrawable = ((ExteraResources) getResources()).getOriginalDrawable(i);
                } catch (Exception unused) {
                    packIconDrawable = getResources().getDrawable(i);
                }
            } else {
                packIconDrawable = getResources().getDrawable(i);
            }
        }
        if (packIconDrawable == null) {
            return packIconDrawable;
        }
        Drawable drawableMutate = packIconDrawable.mutate();
        drawableMutate.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_windowBackgroundWhiteGrayIcon), PorterDuff.Mode.MULTIPLY));
        return drawableMutate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scheduleNext() {
        removeCallbacks(this.changeRunnable);
        if (this.shouldAnimate) {
            postDelayed(this.changeRunnable, this.refreshTimeMilliseconds);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void animateToNext() {
        if (this.shouldAnimate) {
            loadIcons(true);
        }
    }

    private void startTransition(final List list) {
        ValueAnimator valueAnimator = this.animator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.animator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(300L);
        this.animator.setInterpolator(CubicBezierInterpolator.DEFAULT);
        this.animator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.exteragram.messenger.icons.ui.components.IconPackPreviewView$$ExternalSyntheticLambda3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f$0.lambda$startTransition$2(valueAnimator2);
            }
        });
        this.animator.addListener(new AnimatorListenerAdapter() { // from class: com.exteragram.messenger.icons.ui.components.IconPackPreviewView.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                for (int i = 0; i < IconPackPreviewView.this.currentIcons.length; i++) {
                    if (i < list.size()) {
                        IconPackPreviewView.this.currentIconIds[i] = ((Integer) list.get(i)).intValue();
                    } else {
                        IconPackPreviewView.this.currentIconIds[i] = 0;
                    }
                    IconPackPreviewView.this.currentIcons[i] = IconPackPreviewView.this.nextIcons[i];
                    IconPackPreviewView.this.nextIcons[i] = null;
                }
                IconPackPreviewView.this.animationProgress = 0.0f;
                IconPackPreviewView.this.invalidate();
                IconPackPreviewView.this.scheduleNext();
            }
        });
        this.animator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startTransition$2(ValueAnimator valueAnimator) {
        this.animationProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.attached = true;
        if (this.shouldAnimate) {
            scheduleNext();
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.attached = false;
        removeCallbacks(this.changeRunnable);
        ValueAnimator valueAnimator = this.animator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.isCircularMode) {
            drawCircularLayout(canvas);
            return;
        }
        if (this.count == 4) {
            int i = 0;
            for (Drawable drawable : this.currentIcons) {
                if (drawable != null) {
                    i++;
                }
            }
            if (i == 1) {
                int iM1124dp = AndroidUtilities.m1124dp(24.0f);
                drawIcon(canvas, 0, (getWidth() - iM1124dp) / 2, (getHeight() - iM1124dp) / 2, iM1124dp, 1.0f);
                return;
            }
            if (i == 2) {
                int iM1124dp2 = AndroidUtilities.m1124dp(20.0f);
                int iM1124dp3 = AndroidUtilities.m1124dp(4.0f);
                int height = (getHeight() - iM1124dp2) / 2;
                drawIcon(canvas, 0, 0, height, iM1124dp2, 1.0f);
                drawIcon(canvas, 1, iM1124dp2 + iM1124dp3, height, iM1124dp2, 1.0f);
                return;
            }
            if (i == 3) {
                int iM1124dp4 = AndroidUtilities.m1124dp(20.0f);
                int iM1124dp5 = AndroidUtilities.m1124dp(4.0f);
                drawIcon(canvas, 0, 0, 0, iM1124dp4, 1.0f);
                int i2 = iM1124dp4 + iM1124dp5;
                drawIcon(canvas, 1, i2, 0, iM1124dp4, 1.0f);
                drawIcon(canvas, 2, (getWidth() - iM1124dp4) / 2, i2, iM1124dp4, 1.0f);
                return;
            }
            int iM1124dp6 = AndroidUtilities.m1124dp(20.0f);
            int iM1124dp7 = iM1124dp6 + AndroidUtilities.m1124dp(4.0f);
            drawIcon(canvas, 0, 0, 0, iM1124dp6, 1.0f);
            drawIcon(canvas, 1, iM1124dp7, 0, iM1124dp6, 1.0f);
            drawIcon(canvas, 2, 0, iM1124dp7, iM1124dp6, 1.0f);
            drawIcon(canvas, 3, iM1124dp7, iM1124dp7, iM1124dp6, 1.0f);
            return;
        }
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int i3 = 0;
        int i4 = 0;
        while (i4 < 2) {
            int i5 = i3;
            for (int i6 = 0; i6 < 2 && i5 < this.currentIcons.length; i6++) {
                int i7 = this.iconSize;
                int i8 = this.gap;
                drawIcon(canvas, i5, ((i7 + i8) * i6) + paddingLeft, paddingTop + ((i8 + i7) * i4), i7, 1.0f);
                i5++;
            }
            i4++;
            i3 = i5;
        }
    }

    private void drawCircularLayout(Canvas canvas) {
        IconPackPreviewView iconPackPreviewView = this;
        int width = iconPackPreviewView.getWidth() / 2;
        int height = iconPackPreviewView.getHeight() / 2;
        int i = iconPackPreviewView.circCenterSize;
        iconPackPreviewView.drawIcon(canvas, 0, width - (i / 2), height - (i / 2), i, 1.0f);
        double d = 360.0d / ((double) 6);
        int i2 = 0;
        int i3 = 0;
        while (i3 < 6) {
            int i4 = 1 + i3;
            if (i4 >= iconPackPreviewView.currentIcons.length) {
                break;
            }
            double radians = Math.toRadians(((double) i3) * d);
            int iCos = ((int) (((double) width) + (((double) iconPackPreviewView.circInnerRadius) * Math.cos(radians)))) - (iconPackPreviewView.circInnerIconSize / 2);
            int iSin = (int) (((double) height) + (((double) iconPackPreviewView.circInnerRadius) * Math.sin(radians)));
            int i5 = iconPackPreviewView.circInnerIconSize;
            iconPackPreviewView.drawIcon(canvas, i4, iCos, iSin - (i5 / 2), i5, 0.7f);
            i3 = i4;
        }
        while (i2 < 6) {
            int i6 = 7 + i2;
            if (i6 >= iconPackPreviewView.currentIcons.length) {
                return;
            }
            double radians2 = Math.toRadians((((double) i2) * d) + (d / 2.0d));
            int iCos2 = ((int) (((double) width) + (((double) iconPackPreviewView.circOuterRadius) * Math.cos(radians2)))) - (iconPackPreviewView.circOuterIconSize / 2);
            int iSin2 = (int) (((double) height) + (((double) iconPackPreviewView.circOuterRadius) * Math.sin(radians2)));
            int i7 = iconPackPreviewView.circOuterIconSize;
            iconPackPreviewView.drawIcon(canvas, i6, iCos2, iSin2 - (i7 / 2), i7, 0.3f);
            i2++;
            iconPackPreviewView = this;
        }
    }

    private void drawIcon(Canvas canvas, int i, int i2, int i3, int i4, float f) {
        if (i >= this.currentIcons.length) {
            return;
        }
        canvas.save();
        canvas.translate(i2, i3);
        Drawable drawable = this.currentIcons[i];
        Drawable drawable2 = this.nextIcons[i];
        if (drawable != null) {
            drawable.setBounds(0, 0, i4, i4);
            drawable.setAlpha((int) ((1.0f - this.animationProgress) * f * 255.0f));
            drawable.draw(canvas);
        }
        if (drawable2 != null) {
            drawable2.setBounds(0, 0, i4, i4);
            drawable2.setAlpha((int) (this.animationProgress * f * 255.0f));
            drawable2.draw(canvas);
        }
        canvas.restore();
    }
}
