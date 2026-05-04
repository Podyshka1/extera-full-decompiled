package org.telegram.p029ui.Cells;

import android.content.Context;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import okhttp3.internal.url._UrlKt;
import org.telegram.PhoneFormat.PhoneFormat;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.LinkSpanDrawable;
import org.telegram.p029ui.Components.ScaleStateListAnimator;
import org.telegram.p029ui.Components.URLSpanNoUnderline;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes6.dex */
public abstract class SettingsSuggestionCell extends LinearLayout {
    private int currentAccount;
    private int currentType;
    private TextView detailTextView;
    private TextView noButton;
    private Theme.ResourcesProvider resourcesProvider;
    private TextView textView;
    private TextView yesButton;

    protected abstract void onNoClick(int i);

    protected abstract void onYesClick(int i);

    public SettingsSuggestionCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.currentAccount = UserConfig.selectedAccount;
        this.resourcesProvider = resourcesProvider;
        setOrientation(1);
        TextView textView = new TextView(context);
        this.textView = textView;
        textView.setTextSize(1, 15.0f);
        this.textView.setTypeface(AndroidUtilities.bold());
        this.textView.setEllipsize(TextUtils.TruncateAt.END);
        this.textView.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
        this.textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlueHeader, resourcesProvider));
        addView(this.textView, LayoutHelper.createLinear(-1, -2, (LocaleController.isRTL ? 5 : 3) | 48, 21, 15, 21, 0));
        LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(context, resourcesProvider);
        this.detailTextView = linksTextView;
        linksTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, resourcesProvider));
        this.detailTextView.setTextSize(1, 14.0f);
        this.detailTextView.setLinkTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteLinkText, resourcesProvider));
        this.detailTextView.setHighlightColor(Theme.getColor(Theme.key_windowBackgroundWhiteLinkSelection, resourcesProvider));
        this.detailTextView.setMovementMethod(new AndroidUtilities.LinkMovementMethodMy());
        this.detailTextView.setGravity(LocaleController.isRTL ? 5 : 3);
        addView(this.detailTextView, LayoutHelper.createLinear(-2, -2, LocaleController.isRTL ? 5 : 3, 21, 14, 21, 0));
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(0);
        addView(linearLayout, LayoutHelper.createLinear(-1, 44, 21.0f, 16.0f, 21.0f, 15.0f));
        int i = 0;
        while (i < 2) {
            TextView textView2 = new TextView(context);
            textView2.setBackground(Theme.AdaptiveRipple.filledRectByKey(Theme.key_featuredStickers_addButton, 8.0f));
            ScaleStateListAnimator.apply(textView2, 0.02f, 1.5f);
            textView2.setLines(1);
            textView2.setSingleLine(true);
            textView2.setGravity(1);
            textView2.setEllipsize(TextUtils.TruncateAt.END);
            textView2.setGravity(17);
            textView2.setTextColor(Theme.getColor(Theme.key_featuredStickers_buttonText, resourcesProvider));
            textView2.setTextSize(1, 14.0f);
            textView2.setTypeface(AndroidUtilities.bold());
            linearLayout.addView(textView2, LayoutHelper.createLinear(0, 44, 0.5f, i == 0 ? 0 : 4, 0, i == 0 ? 4 : 0, 0));
            if (i == 0) {
                this.yesButton = textView2;
                textView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Cells.SettingsSuggestionCell$$ExternalSyntheticLambda0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$new$0(view);
                    }
                });
            } else {
                this.noButton = textView2;
                textView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Cells.SettingsSuggestionCell$$ExternalSyntheticLambda1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$new$1(view);
                    }
                });
            }
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        onYesClick(this.currentType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(View view) {
        onNoClick(this.currentType);
    }

    public void setType(int i) {
        this.currentType = i;
        if (i != 0) {
            if (i == 1) {
                this.textView.setText(LocaleController.getString(C2888R.string.YourPasswordHeader));
                this.detailTextView.setText(LocaleController.getString(C2888R.string.YourPasswordRemember));
                this.yesButton.setText(LocaleController.getString(C2888R.string.YourPasswordRememberYes));
                this.noButton.setVisibility(0);
                this.noButton.setText(LocaleController.getString(C2888R.string.YourPasswordRememberNo));
                return;
            }
            if (i == 2) {
                this.textView.setText(LocaleController.getString(C2888R.string.GraceSuggestionTitle));
                this.detailTextView.setText(LocaleController.getString(C2888R.string.GraceSuggestionMessage));
                this.yesButton.setText(LocaleController.getString(C2888R.string.GraceSuggestionButton));
                this.noButton.setVisibility(8);
                return;
            }
            return;
        }
        TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(UserConfig.getInstance(this.currentAccount).clientUserId));
        this.textView.setText(LocaleController.formatString(C2888R.string.CheckPhoneNumber, PhoneFormat.getInstance().format("+" + user.phone)));
        String string = LocaleController.getString(C2888R.string.CheckPhoneNumberInfo);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(string);
        int iIndexOf = string.indexOf("**");
        int iLastIndexOf = string.lastIndexOf("**");
        if (iIndexOf >= 0 && iLastIndexOf >= 0 && iIndexOf != iLastIndexOf) {
            spannableStringBuilder.replace(iLastIndexOf, iLastIndexOf + 2, (CharSequence) _UrlKt.FRAGMENT_ENCODE_SET);
            spannableStringBuilder.replace(iIndexOf, iIndexOf + 2, (CharSequence) _UrlKt.FRAGMENT_ENCODE_SET);
            try {
                spannableStringBuilder.setSpan(new URLSpanNoUnderline(LocaleController.getString(C2888R.string.CheckPhoneNumberLearnMoreUrl)), iIndexOf, iLastIndexOf - 2, 33);
            } catch (Exception e) {
                FileLog.m1136e(e);
            }
        }
        this.detailTextView.setText(spannableStringBuilder);
        this.yesButton.setText(LocaleController.getString(C2888R.string.CheckPhoneNumberYes));
        this.noButton.setVisibility(0);
        this.noButton.setText(LocaleController.getString(C2888R.string.CheckPhoneNumberNo));
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), i2);
    }
}
