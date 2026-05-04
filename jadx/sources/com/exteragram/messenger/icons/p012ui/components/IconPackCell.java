package com.exteragram.messenger.icons.p012ui.components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.exteragram.messenger.icons.IconPack;
import com.exteragram.messenger.icons.p012ui.components.IconPackCell;
import com.exteragram.messenger.utils.text.LocaleUtils;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.EffectsTextView;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.RadioButton;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.p029ui.Components.UItem;
import org.telegram.p029ui.Components.UniversalAdapter;
import org.telegram.p029ui.Components.UniversalRecyclerView;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes4.dex */
public class IconPackCell extends FrameLayout {
    private final ImageView handle;
    private final IconPackPreviewView iconView;
    private boolean needDivider;
    private final RadioButton radioButton;
    private final EffectsTextView subtitle;
    private final TextView title;

    public IconPackCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        setWillNotDraw(false);
        IconPackPreviewView iconPackPreviewView = new IconPackPreviewView(context);
        this.iconView = iconPackPreviewView;
        addView(iconPackPreviewView, LayoutHelper.createFrame(44, 44.0f, 19, 16.0f, 0.0f, 0.0f, 0.0f));
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        addView(linearLayout, LayoutHelper.createFrame(-1, -2.0f, 19, 76.0f, 0.0f, 60.0f, 0.0f));
        TextView textView = new TextView(context);
        this.title = textView;
        textView.setGravity(3);
        textView.setTextSize(1, 16.0f);
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        textView.setEllipsize(truncateAt);
        textView.setSingleLine(true);
        textView.setMaxLines(1);
        textView.setIncludeFontPadding(false);
        textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, resourcesProvider));
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_REGULAR));
        linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2));
        EffectsTextView effectsTextView = new EffectsTextView(context);
        this.subtitle = effectsTextView;
        effectsTextView.setGravity(3);
        effectsTextView.setClickable(true);
        effectsTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_REGULAR));
        effectsTextView.setMovementMethod(new AndroidUtilities.LinkMovementMethodMy());
        effectsTextView.setLinkTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteLinkText));
        effectsTextView.setTextSize(1, 13.0f);
        effectsTextView.setEllipsize(truncateAt);
        effectsTextView.setSingleLine(true);
        effectsTextView.setMaxLines(1);
        effectsTextView.setIncludeFontPadding(false);
        effectsTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText));
        linearLayout.addView(effectsTextView, LayoutHelper.createLinear(-1, -2, 0.0f, 4.0f, 0.0f, 0.0f));
        RadioButton radioButton = new RadioButton(context);
        this.radioButton = radioButton;
        radioButton.setSize(AndroidUtilities.m1124dp(20.0f));
        radioButton.setColor(Theme.getColor(Theme.key_radioBackground), Theme.getColor(Theme.key_radioBackgroundChecked));
        addView(radioButton, LayoutHelper.createFrame(22, 22.0f, 21, 0.0f, 0.0f, 18.0f, 0.0f));
        ImageView imageView = new ImageView(context);
        this.handle = imageView;
        imageView.setImageResource(C2888R.drawable.list_reorder);
        imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_windowBackgroundWhiteGrayIcon, resourcesProvider), PorterDuff.Mode.MULTIPLY));
        imageView.setPadding(AndroidUtilities.m1124dp(12.0f), AndroidUtilities.m1124dp(12.0f), AndroidUtilities.m1124dp(12.0f), AndroidUtilities.m1124dp(12.0f));
        imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        addView(imageView, LayoutHelper.createFrame(48, 48.0f, 21, 0.0f, 0.0f, 4.0f, 0.0f));
    }

    public ImageView getHandle() {
        return this.handle;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(64.0f), TLObject.FLAG_30));
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.needDivider) {
            canvas.drawLine(AndroidUtilities.m1124dp(76.0f), getMeasuredHeight() - 1, getMeasuredWidth(), getMeasuredHeight() - 1, Theme.dividerPaint);
        }
    }

    public void set(IconPack iconPack, boolean z, boolean z2, boolean z3) {
        this.needDivider = z;
        this.title.setText(iconPack.getName());
        this.subtitle.setText(LocaleUtils.fullyFormatText(iconPack.getAuthor()));
        this.iconView.setIconPack(iconPack);
        if (iconPack.isBase()) {
            this.handle.setVisibility(8);
            this.radioButton.setVisibility(0);
            this.radioButton.setChecked(z2, true);
        } else {
            this.handle.setVisibility(z3 ? 0 : 8);
            this.radioButton.setVisibility(8);
        }
    }

    public static class Factory extends UItem.UItemFactory {
        static {
            UItem.UItemFactory.setup(new Factory());
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public IconPackCell createView(Context context, RecyclerListView recyclerListView, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
            return new IconPackCell(context, resourcesProvider);
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public void bindView(final View view, UItem uItem, boolean z, UniversalAdapter universalAdapter, final UniversalRecyclerView universalRecyclerView) {
            if (view instanceof IconPackCell) {
                IconPackCell iconPackCell = (IconPackCell) view;
                iconPackCell.set((IconPack) uItem.object, z, uItem.checked, uItem.reordering);
                iconPackCell.getHandle().setOnTouchListener(new View.OnTouchListener() { // from class: com.exteragram.messenger.icons.ui.components.IconPackCell$Factory$$ExternalSyntheticLambda0
                    @Override // android.view.View.OnTouchListener
                    public final boolean onTouch(View view2, MotionEvent motionEvent) {
                        return IconPackCell.Factory.m2499$r8$lambda$CP8IXe3DODPybMaF8F7KjxaU4(universalRecyclerView, view, view2, motionEvent);
                    }
                });
            }
        }

        /* JADX INFO: renamed from: $r8$lambda$CP8IXe3DODPybMaF8F7-Kj-xaU4, reason: not valid java name */
        public static /* synthetic */ boolean m2499$r8$lambda$CP8IXe3DODPybMaF8F7KjxaU4(UniversalRecyclerView universalRecyclerView, View view, View view2, MotionEvent motionEvent) {
            if (motionEvent.getAction() != 0 || universalRecyclerView == null) {
                return false;
            }
            universalRecyclerView.startDrag(universalRecyclerView.getChildViewHolder(view));
            return false;
        }

        public static UItem asIconPackCell(IconPack iconPack) {
            UItem uItemOfFactory = UItem.ofFactory(Factory.class);
            uItemOfFactory.object = iconPack;
            return uItemOfFactory;
        }
    }
}
