package org.telegram.p029ui.Cells;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.Property;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.exteragram.messenger.ExteraConfig;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
import org.telegram.p029ui.ActionBar.SimpleTextView;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.AnimatedTextView;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes6.dex */
public class HeaderCell extends FrameLayout {
    private final boolean animated;
    private AnimatedTextView animatedTextView;
    protected int bottomMargin;
    private int height;

    /* JADX INFO: renamed from: id */
    public int f1909id;
    protected int padding;
    private final Theme.ResourcesProvider resourcesProvider;
    private TextView textView;
    private SimpleTextView textView2;

    public HeaderCell(Context context) {
        this(context, Theme.key_windowBackgroundWhiteBlueHeader, 20, 6, false, null);
    }

    public HeaderCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        this(context, Theme.key_windowBackgroundWhiteBlueHeader, 20, 6, false, resourcesProvider);
    }

    public HeaderCell(Context context, int i) {
        this(context, Theme.key_windowBackgroundWhiteBlueHeader, i, 6, false, null);
    }

    public HeaderCell(Context context, int i, Theme.ResourcesProvider resourcesProvider) {
        this(context, Theme.key_windowBackgroundWhiteBlueHeader, i, 6, false, resourcesProvider);
    }

    public HeaderCell(Context context, int i, int i2, int i3, boolean z) {
        this(context, i, i2, i3, z, null);
    }

    public HeaderCell(Context context, int i, int i2, int i3, boolean z, Theme.ResourcesProvider resourcesProvider) {
        this(context, i, i2, i3, 0, z, resourcesProvider);
    }

    public HeaderCell(Context context, int i, int i2, int i3, int i4, boolean z, Theme.ResourcesProvider resourcesProvider) {
        this(context, i, i2, i3, i4, z, false, resourcesProvider);
    }

    public HeaderCell(Context context, int i, int i2, int i3, int i4, boolean z, boolean z2, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.height = 40;
        this.resourcesProvider = resourcesProvider;
        boolean z3 = ExteraConfig.sectionsSeparatedHeaders;
        int i5 = z3 ? 24 : i2;
        this.padding = i5;
        int i6 = z3 ? 3 : i4;
        this.bottomMargin = i6;
        this.animated = z2;
        if (z2) {
            AnimatedTextView animatedTextView = new AnimatedTextView(getContext());
            this.animatedTextView = animatedTextView;
            animatedTextView.setTextSize(AndroidUtilities.m1124dp(15.0f));
            this.animatedTextView.setTypeface(AndroidUtilities.bold());
            this.animatedTextView.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
            this.animatedTextView.setTextColor(getThemedColor(i));
            this.animatedTextView.setTag(Integer.valueOf(i));
            this.animatedTextView.getDrawable().setHacks(true, true, false);
            float f = i5;
            addView(this.animatedTextView, LayoutHelper.createFrame(-1, this.height - i3, (LocaleController.isRTL ? 5 : 3) | 48, f, i3, f, z ? 0.0f : i6));
        } else {
            TextView textView = new TextView(getContext());
            this.textView = textView;
            textView.setTextSize(1, 15.0f);
            this.textView.setTypeface(AndroidUtilities.bold());
            this.textView.setEllipsize(TextUtils.TruncateAt.END);
            this.textView.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
            this.textView.setMinHeight(AndroidUtilities.m1124dp(this.height - i3));
            this.textView.setTextColor(getThemedColor(i));
            this.textView.setTag(Integer.valueOf(i));
            float f2 = i5;
            addView(this.textView, LayoutHelper.createFrame(-1, -1.0f, (LocaleController.isRTL ? 5 : 3) | 48, f2, i3, f2, z ? 0.0f : i6));
        }
        if (z) {
            SimpleTextView simpleTextView = new SimpleTextView(getContext());
            this.textView2 = simpleTextView;
            simpleTextView.setTextSize(13);
            this.textView2.setGravity((LocaleController.isRTL ? 3 : 5) | 48);
            float f3 = i5;
            addView(this.textView2, LayoutHelper.createFrame(-1, -1.0f, (LocaleController.isRTL ? 3 : 5) | 48, f3, 21.0f, f3, i6));
        }
        ViewCompat.setAccessibilityHeading(this, true);
    }

    public void setOnWidthUpdateListener(Runnable runnable) {
        this.animatedTextView.setOnWidthUpdatedListener(runnable);
    }

    public float getAnimatedWidth() {
        return this.animatedTextView.getDrawable().getCurrentWidth();
    }

    public void setHeight(int i) {
        if (ExteraConfig.sectionsSeparatedHeaders) {
            return;
        }
        this.height = i;
        int iM1124dp = AndroidUtilities.m1124dp(i) - ((FrameLayout.LayoutParams) this.textView.getLayoutParams()).topMargin;
        if (this.textView.getMinHeight() != iM1124dp) {
            this.textView.setMinHeight(iM1124dp);
            requestLayout();
        }
    }

    public void setTopMargin(int i) {
        if (ExteraConfig.sectionsSeparatedHeaders) {
            return;
        }
        ((FrameLayout.LayoutParams) this.textView.getLayoutParams()).topMargin = AndroidUtilities.m1124dp(i);
        setHeight(this.height);
    }

    public void setBottomMargin(int i) {
        if (ExteraConfig.sectionsSeparatedHeaders) {
            return;
        }
        float f = i;
        ((FrameLayout.LayoutParams) this.textView.getLayoutParams()).bottomMargin = AndroidUtilities.m1124dp(f);
        SimpleTextView simpleTextView = this.textView2;
        if (simpleTextView != null) {
            ((FrameLayout.LayoutParams) simpleTextView.getLayoutParams()).bottomMargin = AndroidUtilities.m1124dp(f);
        }
    }

    public void setEnabled(boolean z, ArrayList arrayList) {
        if (arrayList != null) {
            arrayList.add(ObjectAnimator.ofFloat(this.textView, (Property<TextView, Float>) View.ALPHA, z ? 1.0f : 0.5f));
        } else {
            this.textView.setAlpha(z ? 1.0f : 0.5f);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(0, 0));
    }

    public void setTextSize(float f) {
        if (this.animated) {
            this.animatedTextView.setTextSize(AndroidUtilities.m1124dp(f));
        } else {
            this.textView.setTextSize(1, f);
        }
    }

    public void setTextColor(int i) {
        TextView textView = this.textView;
        if (textView != null) {
            textView.setTextColor(i);
        }
        AnimatedTextView animatedTextView = this.animatedTextView;
        if (animatedTextView != null) {
            animatedTextView.setTextColor(i);
        }
    }

    public void setText(CharSequence charSequence) {
        setText(charSequence, false);
    }

    public void setText(CharSequence charSequence, boolean z) {
        if (this.animated) {
            this.animatedTextView.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
            this.animatedTextView.setText(charSequence, z);
        } else {
            this.textView.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
            this.textView.setText(charSequence);
        }
    }

    public void setText2(CharSequence charSequence) {
        SimpleTextView simpleTextView = this.textView2;
        if (simpleTextView == null) {
            return;
        }
        simpleTextView.setText(charSequence);
    }

    public TextView getTextView() {
        return this.textView;
    }

    public SimpleTextView getTextView2() {
        return this.textView2;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (Build.VERSION.SDK_INT >= 28) {
            accessibilityNodeInfo.setHeading(true);
        } else {
            AccessibilityNodeInfo.CollectionItemInfo collectionItemInfo = accessibilityNodeInfo.getCollectionItemInfo();
            if (collectionItemInfo != null) {
                accessibilityNodeInfo.setCollectionItemInfo(AccessibilityNodeInfo.CollectionItemInfo.obtain(collectionItemInfo.getRowIndex(), collectionItemInfo.getRowSpan(), collectionItemInfo.getColumnIndex(), collectionItemInfo.getColumnSpan(), true));
            }
        }
        accessibilityNodeInfo.setEnabled(true);
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        if (ExteraConfig.sectionsSeparatedHeaders) {
            return;
        }
        super.setBackground(drawable);
    }
}
