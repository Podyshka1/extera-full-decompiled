package org.telegram.p029ui.Components;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.p029ui.ActionBar.AlertDialog;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.BottomSheet;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes7.dex */
public abstract class GigagroupConvertAlert extends BottomSheet {
    protected abstract void onCancel();

    protected abstract void onCovert();

    public static class BottomSheetCell extends FrameLayout {
        private View background;
        private TextView textView;

        public BottomSheetCell(Context context) {
            super(context);
            View view = new View(context);
            this.background = view;
            view.setBackground(Theme.AdaptiveRipple.filledRectByKey(Theme.key_featuredStickers_addButton, 4.0f));
            addView(this.background, LayoutHelper.createFrame(-1, -1.0f, 0, 16.0f, 16.0f, 16.0f, 16.0f));
            TextView textView = new TextView(context);
            this.textView = textView;
            textView.setLines(1);
            this.textView.setSingleLine(true);
            this.textView.setGravity(1);
            this.textView.setEllipsize(TextUtils.TruncateAt.END);
            this.textView.setGravity(17);
            this.textView.setTextColor(Theme.getColor(Theme.key_featuredStickers_buttonText));
            this.textView.setTextSize(1, 14.0f);
            this.textView.setTypeface(AndroidUtilities.bold());
            addView(this.textView, LayoutHelper.createFrame(-2, -2, 17));
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(80.0f), TLObject.FLAG_30));
        }

        public void setText(CharSequence charSequence) {
            this.textView.setText(charSequence);
        }
    }

    public GigagroupConvertAlert(final Context context, final BaseFragment baseFragment) {
        super(context, true);
        setApplyBottomPadding(false);
        setApplyTopPadding(false);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        setCustomView(linearLayout);
        RLottieImageView rLottieImageView = new RLottieImageView(context);
        rLottieImageView.setAutoRepeat(true);
        rLottieImageView.setAnimation(C2888R.raw.utyan_gigagroup, 120, 120);
        rLottieImageView.playAnimation();
        linearLayout.addView(rLottieImageView, LayoutHelper.createLinear(160, 160, 49, 17, 30, 17, 0));
        TextView textView = new TextView(context);
        textView.setTypeface(AndroidUtilities.bold());
        textView.setTextSize(1, 24.0f);
        textView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack));
        textView.setText(LocaleController.getString(C2888R.string.GigagroupConvertTitle));
        linearLayout.addView(textView, LayoutHelper.createLinear(-2, -2, 49, 17, 18, 17, 0));
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setOrientation(1);
        linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-2, -2, 1, 0, 12, 0, 0));
        int i = 0;
        while (true) {
            if (i < 3) {
                LinearLayout linearLayout3 = new LinearLayout(context);
                linearLayout3.setOrientation(0);
                linearLayout2.addView(linearLayout3, LayoutHelper.createLinear(-2, -2, LocaleController.isRTL ? 5 : 3, 0, 8, 0, 0));
                ImageView imageView = new ImageView(context);
                int i2 = Theme.key_dialogTextGray3;
                imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i2), PorterDuff.Mode.MULTIPLY));
                imageView.setImageResource(C2888R.drawable.list_circle);
                TextView textView2 = new TextView(context);
                textView2.setTextSize(1, 15.0f);
                textView2.setTextColor(Theme.getColor(i2));
                textView2.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
                textView2.setMaxWidth(AndroidUtilities.m1124dp(260.0f));
                if (i == 0) {
                    textView2.setText(LocaleController.getString(C2888R.string.GigagroupConvertInfo1));
                } else if (i == 1) {
                    textView2.setText(LocaleController.getString(C2888R.string.GigagroupConvertInfo2));
                } else if (i == 2) {
                    textView2.setText(LocaleController.getString(C2888R.string.GigagroupConvertInfo3));
                }
                if (LocaleController.isRTL) {
                    linearLayout3.addView(textView2, LayoutHelper.createLinear(-2, -2));
                    linearLayout3.addView(imageView, LayoutHelper.createLinear(-2, -2, 8.0f, 7.0f, 0.0f, 0.0f));
                } else {
                    linearLayout3.addView(imageView, LayoutHelper.createLinear(-2, -2, 0.0f, 8.0f, 8.0f, 0.0f));
                    linearLayout3.addView(textView2, LayoutHelper.createLinear(-2, -2));
                }
                i++;
            } else {
                BottomSheetCell bottomSheetCell = new BottomSheetCell(context);
                bottomSheetCell.setBackground(null);
                bottomSheetCell.setText(LocaleController.getString(C2888R.string.GigagroupConvertProcessButton));
                bottomSheetCell.background.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.GigagroupConvertAlert$$ExternalSyntheticLambda0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$new$1(context, baseFragment, view);
                    }
                });
                linearLayout.addView(bottomSheetCell, LayoutHelper.createLinear(-1, 50, 51, 0, 29, 0, 0));
                TextView textView3 = new TextView(context);
                textView3.setTextSize(1, 14.0f);
                textView3.setTextColor(Theme.getColor(Theme.key_dialogTextBlue2));
                textView3.setText(LocaleController.getString(C2888R.string.GigagroupConvertCancelButton));
                textView3.setGravity(17);
                linearLayout.addView(textView3, LayoutHelper.createLinear(-2, 48, 49, 17, 0, 17, 16));
                textView3.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.GigagroupConvertAlert$$ExternalSyntheticLambda1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$new$2(view);
                    }
                });
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(Context context, BaseFragment baseFragment, View view) {
        dismiss();
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(LocaleController.getString(C2888R.string.GigagroupConvertAlertTitle));
        builder.setMessage(AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.GigagroupConvertAlertText)));
        builder.setPositiveButton(LocaleController.getString(C2888R.string.GigagroupConvertAlertConver), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.GigagroupConvertAlert$$ExternalSyntheticLambda2
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                this.f$0.lambda$new$0(alertDialog, i);
            }
        });
        builder.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null);
        baseFragment.showDialog(builder.create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(AlertDialog alertDialog, int i) {
        onCovert();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(View view) {
        onCancel();
        dismiss();
    }
}
