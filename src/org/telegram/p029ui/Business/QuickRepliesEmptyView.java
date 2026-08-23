package org.telegram.p029ui.Business;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.UserConfig;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Business.QuickRepliesController;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.RLottieImageView;
import org.telegram.p029ui.Stories.recorder.HintView2;

/* JADX INFO: loaded from: classes6.dex */
public class QuickRepliesEmptyView extends LinearLayout {
    private TextView descriptionView;
    private TextView descriptionView2;
    public RLottieImageView imageView;
    private final Theme.ResourcesProvider resourcesProvider;
    private TextView titleView;

    private class DotTextView extends TextView {
        public DotTextView(Context context) {
            super(context);
        }

        @Override // android.view.View
        protected void dispatchDraw(Canvas canvas) {
            if (getPaddingLeft() > 0) {
                canvas.drawCircle((getPaddingLeft() - AndroidUtilities.m1124dp(2.5f)) / 2.0f, AndroidUtilities.m1124dp(10.0f), AndroidUtilities.m1124dp(2.5f), getPaint());
            }
            super.dispatchDraw(canvas);
        }
    }

    public QuickRepliesEmptyView(Context context, int i, long j, long j2, String str, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        setOrientation(1);
        this.resourcesProvider = resourcesProvider;
        TextView textView = new TextView(context);
        this.titleView = textView;
        textView.setTextSize(1, 14.0f);
        this.titleView.setTypeface(AndroidUtilities.bold());
        this.titleView.setTextAlignment(4);
        this.titleView.setGravity(17);
        DotTextView dotTextView = new DotTextView(context);
        this.descriptionView = dotTextView;
        dotTextView.setTextAlignment(4);
        this.descriptionView.setGravity(17);
        this.descriptionView.setTextSize(1, 13.0f);
        this.descriptionView.setGravity(1);
        RLottieImageView rLottieImageView = new RLottieImageView(context);
        this.imageView = rLottieImageView;
        rLottieImageView.setScaleType(ImageView.ScaleType.CENTER);
        this.imageView.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN));
        this.descriptionView.setMaxWidth(AndroidUtilities.m1124dp(160.0f));
        int i2 = 22;
        if ("hello".equalsIgnoreCase(str)) {
            this.imageView.setImageResource(C2888R.drawable.large_greeting);
            this.titleView.setText(LocaleController.getString(C2888R.string.BusinessGreetingIntroTitle));
            this.descriptionView.setText(LocaleController.getString(C2888R.string.BusinessGreetingIntro));
            this.descriptionView.setMaxWidth(Math.min(AndroidUtilities.m1124dp(160.0f), HintView2.cutInFancyHalf(this.descriptionView.getText(), this.descriptionView.getPaint())));
        } else if ("away".equalsIgnoreCase(str)) {
            this.imageView.setImageResource(C2888R.drawable.large_away);
            this.titleView.setText(LocaleController.getString(C2888R.string.BusinessAwayIntroTitle));
            this.descriptionView.setText(LocaleController.getString(C2888R.string.BusinessAwayIntro));
            this.descriptionView.setMaxWidth(Math.min(AndroidUtilities.m1124dp(160.0f), HintView2.cutInFancyHalf(this.descriptionView.getText(), this.descriptionView.getPaint())));
        } else {
            if (i == 5) {
                this.imageView.setImageResource(C2888R.drawable.large_quickreplies);
                QuickRepliesController.QuickReply quickReplyFindReply = QuickRepliesController.getInstance(UserConfig.selectedAccount).findReply(j2);
                str = quickReplyFindReply != null ? quickReplyFindReply.name : str;
                this.titleView.setText(LocaleController.getString(C2888R.string.BusinessRepliesIntroTitle));
                this.descriptionView.setMaxWidth(AndroidUtilities.m1124dp(208.0f));
                this.descriptionView.setTextAlignment(2);
                this.descriptionView.setGravity(3);
                this.descriptionView.setText(AndroidUtilities.replaceTags(LocaleController.formatString(C2888R.string.BusinessRepliesIntro1, str)));
                this.descriptionView.setPadding(AndroidUtilities.m1124dp(28.0f), 0, 0, 0);
                DotTextView dotTextView2 = new DotTextView(context);
                this.descriptionView2 = dotTextView2;
                dotTextView2.setMaxWidth(AndroidUtilities.m1124dp(208.0f));
                this.descriptionView2.setTextAlignment(2);
                this.descriptionView2.setGravity(3);
                this.descriptionView2.setTextSize(1, 13.0f);
                this.descriptionView2.setText(AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.BusinessRepliesIntro2)));
                this.descriptionView2.setPadding(AndroidUtilities.m1124dp(28.0f), 0, 0, 0);
            }
            i2 = 12;
        }
        int i3 = i2;
        addView(this.imageView, LayoutHelper.createLinear(78, 78, 49, 20, 17, 20, 9));
        addView(this.titleView, LayoutHelper.createLinear(-2, -2, 49, 20, 0, 20, 9));
        addView(this.descriptionView, LayoutHelper.createLinear(-2, -2, 49, i3, 0, i3, this.descriptionView2 != null ? 9 : 19));
        TextView textView2 = this.descriptionView2;
        if (textView2 != null) {
            addView(textView2, LayoutHelper.createLinear(-2, -2, 49, 12, 0, 12, 19));
        }
        updateColors();
    }

    private void updateColors() {
        TextView textView = this.titleView;
        int i = Theme.key_chat_serviceText;
        textView.setTextColor(getThemedColor(i));
        this.descriptionView.setTextColor(getThemedColor(i));
        TextView textView2 = this.descriptionView2;
        if (textView2 != null) {
            textView2.setTextColor(getThemedColor(i));
        }
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }
}
