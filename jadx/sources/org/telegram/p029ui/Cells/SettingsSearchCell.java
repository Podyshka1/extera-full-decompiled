package org.telegram.p029ui.Cells;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.exteragram.messenger.components.VerticalImageSpan;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.p029ui.Components.UItem;
import org.telegram.p029ui.Components.UniversalAdapter;
import org.telegram.p029ui.Components.UniversalRecyclerView;
import org.telegram.p029ui.ProfileActivity;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes6.dex */
public class SettingsSearchCell extends FrameLayout {
    private ImageView imageView;
    private int left;
    private boolean needDivider;
    private TextView textView;
    private TextView valueTextView;

    public SettingsSearchCell(Context context) {
        super(context);
        TextView textView = new TextView(context);
        this.textView = textView;
        textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
        this.textView.setTextSize(1, 16.0f);
        this.textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_REGULAR));
        this.textView.setGravity(LocaleController.isRTL ? 5 : 3);
        this.textView.setLines(1);
        this.textView.setMaxLines(1);
        this.textView.setSingleLine(true);
        this.textView.setEllipsize(TextUtils.TruncateAt.END);
        TextView textView2 = this.textView;
        boolean z = LocaleController.isRTL;
        addView(textView2, LayoutHelper.createFrame(-2, -2.0f, z ? 5 : 3, z ? 16.0f : 71.0f, 10.0f, z ? 71.0f : 16.0f, 0.0f));
        TextView textView3 = new TextView(context);
        this.valueTextView = textView3;
        textView3.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2));
        this.valueTextView.setTextSize(1, 13.0f);
        this.valueTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_REGULAR));
        this.valueTextView.setLines(1);
        this.valueTextView.setMaxLines(1);
        this.valueTextView.setSingleLine(true);
        this.valueTextView.setGravity(LocaleController.isRTL ? 5 : 3);
        TextView textView4 = this.valueTextView;
        boolean z2 = LocaleController.isRTL;
        addView(textView4, LayoutHelper.createFrame(-2, -2.0f, z2 ? 5 : 3, z2 ? 16.0f : 71.0f, 33.0f, z2 ? 71.0f : 16.0f, 0.0f));
        ImageView imageView = new ImageView(context);
        this.imageView = imageView;
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        this.imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_windowBackgroundWhiteGrayIcon), PorterDuff.Mode.MULTIPLY));
        addView(this.imageView, LayoutHelper.createFrame(48, 48.0f, LocaleController.isRTL ? 5 : 3, 10.0f, 8.0f, 10.0f, 0.0f));
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(64.0f) + (this.needDivider ? 1 : 0), TLObject.FLAG_30));
    }

    public void setTextAndValueAndIcon(CharSequence charSequence, String[] strArr, int i, boolean z) {
        this.textView.setText(charSequence);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.textView.getLayoutParams();
        layoutParams.leftMargin = AndroidUtilities.m1124dp(LocaleController.isRTL ? 16.0f : 71.0f);
        layoutParams.rightMargin = AndroidUtilities.m1124dp(LocaleController.isRTL ? 71.0f : 16.0f);
        if (strArr != null) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            for (int i2 = 0; i2 < strArr.length; i2++) {
                if (i2 != 0) {
                    spannableStringBuilder.append((CharSequence) " > ");
                    Drawable drawableMutate = getContext().getResources().getDrawable(C2888R.drawable.settings_arrow).mutate();
                    drawableMutate.setBounds(0, 0, drawableMutate.getIntrinsicWidth(), drawableMutate.getIntrinsicHeight());
                    drawableMutate.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2), PorterDuff.Mode.MULTIPLY));
                    spannableStringBuilder.setSpan(new VerticalImageSpan(drawableMutate), spannableStringBuilder.length() - 2, spannableStringBuilder.length() - 1, 33);
                }
                spannableStringBuilder.append((CharSequence) strArr[i2]);
            }
            this.valueTextView.setText(spannableStringBuilder);
            this.valueTextView.setVisibility(0);
            layoutParams.topMargin = AndroidUtilities.m1124dp(10.0f);
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.valueTextView.getLayoutParams();
            layoutParams2.leftMargin = AndroidUtilities.m1124dp(LocaleController.isRTL ? 16.0f : 71.0f);
            layoutParams2.rightMargin = AndroidUtilities.m1124dp(LocaleController.isRTL ? 71.0f : 16.0f);
        } else {
            layoutParams.topMargin = AndroidUtilities.m1124dp(21.0f);
            this.valueTextView.setVisibility(8);
        }
        if (i != 0) {
            this.imageView.setImageResource(i);
            this.imageView.setVisibility(0);
        } else {
            this.imageView.setVisibility(8);
        }
        this.left = 69;
        this.needDivider = z;
        setWillNotDraw(!z);
    }

    public void setTextAndValue(CharSequence charSequence, String[] strArr, boolean z, boolean z2) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.textView.getLayoutParams();
        if (z) {
            this.valueTextView.setText(charSequence);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            for (int i = 0; i < strArr.length; i++) {
                if (i != 0) {
                    spannableStringBuilder.append((CharSequence) " > ");
                    Drawable drawableMutate = getContext().getResources().getDrawable(C2888R.drawable.settings_arrow).mutate();
                    drawableMutate.setBounds(0, 0, drawableMutate.getIntrinsicWidth(), drawableMutate.getIntrinsicHeight());
                    drawableMutate.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText), PorterDuff.Mode.MULTIPLY));
                    spannableStringBuilder.setSpan(new VerticalImageSpan(drawableMutate), spannableStringBuilder.length() - 2, spannableStringBuilder.length() - 1, 33);
                }
                spannableStringBuilder.append((CharSequence) strArr[i]);
            }
            this.textView.setText(spannableStringBuilder);
            this.valueTextView.setVisibility(0);
            layoutParams.topMargin = AndroidUtilities.m1124dp(10.0f);
        } else {
            this.textView.setText(charSequence);
            if (strArr != null) {
                SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder();
                for (int i2 = 0; i2 < strArr.length; i2++) {
                    if (i2 != 0) {
                        spannableStringBuilder2.append((CharSequence) " > ");
                        Drawable drawableMutate2 = getContext().getResources().getDrawable(C2888R.drawable.settings_arrow).mutate();
                        drawableMutate2.setBounds(0, 0, drawableMutate2.getIntrinsicWidth(), drawableMutate2.getIntrinsicHeight());
                        drawableMutate2.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2), PorterDuff.Mode.MULTIPLY));
                        spannableStringBuilder2.setSpan(new VerticalImageSpan(drawableMutate2), spannableStringBuilder2.length() - 2, spannableStringBuilder2.length() - 1, 33);
                    }
                    spannableStringBuilder2.append((CharSequence) strArr[i2]);
                }
                this.valueTextView.setText(spannableStringBuilder2);
                this.valueTextView.setVisibility(0);
                layoutParams.topMargin = AndroidUtilities.m1124dp(10.0f);
            } else {
                layoutParams.topMargin = AndroidUtilities.m1124dp(21.0f);
                this.valueTextView.setVisibility(8);
            }
        }
        int iM1124dp = AndroidUtilities.m1124dp(16.0f);
        layoutParams.rightMargin = iM1124dp;
        layoutParams.leftMargin = iM1124dp;
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.valueTextView.getLayoutParams();
        int iM1124dp2 = AndroidUtilities.m1124dp(16.0f);
        layoutParams2.rightMargin = iM1124dp2;
        layoutParams2.leftMargin = iM1124dp2;
        this.imageView.setVisibility(8);
        this.needDivider = z2;
        setWillNotDraw(!z2);
        this.left = 16;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.needDivider) {
            canvas.drawLine(LocaleController.isRTL ? 0.0f : AndroidUtilities.m1124dp(this.left), getMeasuredHeight() - 1, getMeasuredWidth() - (LocaleController.isRTL ? AndroidUtilities.m1124dp(this.left) : 0), getMeasuredHeight() - 1, Theme.dividerPaint);
        }
    }

    public static class Factory extends UItem.UItemFactory {
        static {
            UItem.UItemFactory.setup(new Factory());
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public SettingsSearchCell createView(Context context, RecyclerListView recyclerListView, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
            return new SettingsSearchCell(context);
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public void bindView(View view, UItem uItem, boolean z, UniversalAdapter universalAdapter, UniversalRecyclerView universalRecyclerView) {
            Object obj = uItem.object;
            if (obj instanceof ProfileActivity.SearchAdapter.SearchResult) {
                ProfileActivity.SearchAdapter.SearchResult searchResult = (ProfileActivity.SearchAdapter.SearchResult) obj;
                ((SettingsSearchCell) view).setTextAndValueAndIcon(uItem.text, searchResult.path, searchResult.iconResId, z);
            } else if (obj instanceof MessagesController.FaqSearchResult) {
                ((SettingsSearchCell) view).setTextAndValue(uItem.text, ((MessagesController.FaqSearchResult) obj).path, true, z);
            }
        }

        /* JADX INFO: renamed from: of */
        public static UItem m1231of(CharSequence charSequence, ProfileActivity.SearchAdapter.SearchResult searchResult) {
            UItem uItemOfFactory = UItem.ofFactory(Factory.class);
            uItemOfFactory.text = charSequence;
            uItemOfFactory.object = searchResult;
            return uItemOfFactory;
        }

        /* JADX INFO: renamed from: of */
        public static UItem m1230of(CharSequence charSequence, MessagesController.FaqSearchResult faqSearchResult) {
            UItem uItemOfFactory = UItem.ofFactory(Factory.class);
            uItemOfFactory.text = charSequence;
            uItemOfFactory.object = faqSearchResult;
            return uItemOfFactory;
        }
    }
}
