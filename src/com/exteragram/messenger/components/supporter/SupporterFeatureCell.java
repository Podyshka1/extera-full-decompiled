package com.exteragram.messenger.components.supporter;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.LocaleController;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.LinkSpanDrawable;

/* JADX INFO: loaded from: classes4.dex */
public class SupporterFeatureCell extends FrameLayout {
    private final FrameLayout content;
    private final ImageView nextIcon;
    private final Theme.ResourcesProvider resourcesProvider;
    private final LinkSpanDrawable.LinksTextView subtitleView;

    public SupporterFeatureCell(Context context, int i, CharSequence charSequence, CharSequence charSequence2, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.resourcesProvider = resourcesProvider;
        boolean z = LocaleController.isRTL;
        int i2 = z ? 5 : 3;
        FrameLayout frameLayout = new FrameLayout(context);
        this.content = frameLayout;
        addView(frameLayout, LayoutHelper.createFrame(-1, -2.0f));
        ImageView imageView = new ImageView(context);
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        imageView.setImageResource(i);
        int i3 = Theme.key_windowBackgroundWhiteBlackText;
        imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i3, resourcesProvider), PorterDuff.Mode.SRC_IN));
        int i4 = i2 | 48;
        frameLayout.addView(imageView, LayoutHelper.createFrame(24, 24.0f, i4, z ? 0.0f : 21.0f, 10.0f, z ? 21.0f : 0.0f, 0.0f));
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        TextView textView = new TextView(context);
        textView.setText(charSequence);
        textView.setTextColor(Theme.getColor(i3, resourcesProvider));
        textView.setTextSize(1, 15.0f);
        textView.setTypeface(AndroidUtilities.bold());
        textView.setGravity(i2);
        linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2));
        LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(context, resourcesProvider);
        this.subtitleView = linksTextView;
        linksTextView.setText(charSequence2);
        linksTextView.setTypeface(AndroidUtilities.regular());
        linksTextView.setTextSize(1, 14.0f);
        linksTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText, resourcesProvider));
        linksTextView.setLinkTextColor(Theme.getColor(Theme.key_chat_messageLinkIn, resourcesProvider));
        linksTextView.setLineSpacing(AndroidUtilities.dp(2.0f), 1.0f);
        linksTextView.setGravity(i2);
        linearLayout.addView(linksTextView, LayoutHelper.createLinear(-1, -2, 0.0f, 1.0f, 0.0f, 0.0f));
        frameLayout.addView(linearLayout, LayoutHelper.createFrame(-1, -2.0f, i4, z ? 48.0f : 64.0f, 8.0f, z ? 64.0f : 48.0f, 9.0f));
        ImageView imageView2 = new ImageView(context);
        this.nextIcon = imageView2;
        imageView2.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        imageView2.setImageResource(C2807R.drawable.msg_arrowright);
        imageView2.setColorFilter(Theme.getColor(Theme.key_switchTrack, resourcesProvider));
        imageView2.setScaleX(z ? -1.0f : 1.0f);
        imageView2.setVisibility(8);
        frameLayout.addView(imageView2, LayoutHelper.createFrame(24, 24.0f, (z ? 3 : 5) | 16, 18.0f, 0.0f, 18.0f, 0.0f));
    }

    public void setSubtitle(CharSequence charSequence) {
        this.subtitleView.setText(charSequence);
    }

    public void setAction(final Runnable runnable) {
        this.nextIcon.setVisibility(runnable != null ? 0 : 8);
        this.content.setBackground(runnable != null ? Theme.getSelectorDrawable(Theme.getColor(Theme.key_listSelector, this.resourcesProvider), false) : null);
        FrameLayout frameLayout = this.content;
        if (runnable != null) {
            frameLayout.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.components.supporter.SupporterFeatureCell$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    runnable.run();
                }
            });
        } else {
            frameLayout.setOnClickListener(null);
            this.content.setClickable(false);
        }
    }
}
