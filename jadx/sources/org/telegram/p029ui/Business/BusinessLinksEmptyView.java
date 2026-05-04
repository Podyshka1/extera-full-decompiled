package org.telegram.p029ui.Business;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.BulletinFactory;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.tgnet.p028tl.TL_account;

/* JADX INFO: loaded from: classes6.dex */
public class BusinessLinksEmptyView extends LinearLayout {
    private TextView descriptionView;
    private ImageView imageView;
    private TextView linkView;

    public BusinessLinksEmptyView(Context context, final BaseFragment baseFragment, final TL_account.TL_businessChatLink tL_businessChatLink, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        setOrientation(1);
        int i = Theme.key_chat_serviceText;
        Theme.getColor(i, resourcesProvider);
        Theme.getColor(i);
        ImageView imageView = new ImageView(context);
        this.imageView = imageView;
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        this.imageView.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN));
        this.imageView.setImageResource(C2888R.drawable.filled_chatlink_large);
        addView(this.imageView, LayoutHelper.createLinear(78, 78, 49, 17, 17, 17, 9));
        TextView textView = new TextView(context);
        this.descriptionView = textView;
        textView.setTextAlignment(4);
        this.descriptionView.setTextSize(1, 13.0f);
        this.descriptionView.setTextColor(Theme.getColor(i, resourcesProvider));
        this.descriptionView.setGravity(1);
        this.descriptionView.setMaxWidth(AndroidUtilities.m1124dp(208.0f));
        this.descriptionView.setText(AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.BusinessLinksIntro)));
        addView(this.descriptionView, LayoutHelper.createLinear(-2, -2, 49, 17, 0, 17, 9));
        TextView textView2 = new TextView(context);
        this.linkView = textView2;
        textView2.setTextAlignment(4);
        this.linkView.setTextSize(1, 13.0f);
        this.linkView.setTextColor(Theme.getColor(i, resourcesProvider));
        TextView textView3 = this.linkView;
        textView3.setTypeface(textView3.getTypeface(), 1);
        this.linkView.setGravity(1);
        this.linkView.setMaxWidth(AndroidUtilities.m1124dp(208.0f));
        this.linkView.setText(BusinessLinksController.stripHttps(tL_businessChatLink.link));
        this.linkView.setBackground(Theme.createRadSelectorDrawable(503316480, 503316480, 5, 5));
        this.linkView.setPadding(AndroidUtilities.m1124dp(7.0f), 0, AndroidUtilities.m1124dp(7.0f), 0);
        this.linkView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Business.BusinessLinksEmptyView$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BusinessLinksEmptyView.$r8$lambda$pzWkOivmibCKpFrm3b5_o8bc3JQ(tL_businessChatLink, baseFragment, view);
            }
        });
        addView(this.linkView, LayoutHelper.createLinear(-2, -2, 49, 17, 0, 17, 17));
    }

    public static /* synthetic */ void $r8$lambda$pzWkOivmibCKpFrm3b5_o8bc3JQ(TL_account.TL_businessChatLink tL_businessChatLink, BaseFragment baseFragment, View view) {
        AndroidUtilities.addToClipboard(tL_businessChatLink.link);
        BulletinFactory.m1246of(baseFragment).createCopyLinkBulletin().show();
    }
}
