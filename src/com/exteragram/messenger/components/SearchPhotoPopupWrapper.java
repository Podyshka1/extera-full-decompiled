package com.exteragram.messenger.components;

import android.content.Context;
import android.text.method.LinkMovementMethod;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.exteragram.messenger.utils.system.SystemUtils;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.ActionBarMenuItem;
import org.telegram.p029ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.p029ui.ActionBar.ActionBarPopupWindow;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.LinkSpanDrawable;
import org.telegram.p029ui.Components.PopupSwipeBackLayout;
import org.telegram.p029ui.Stories.DarkThemeResourceProvider;

/* JADX INFO: loaded from: classes.dex */
public class SearchPhotoPopupWrapper {
    ActionBarMenuSubItem lensItem;
    public ActionBarPopupWindow.ActionBarPopupWindowLayout searchSwipeBackLayout;

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public SearchPhotoPopupWrapper(Context context, final PopupSwipeBackLayout popupSwipeBackLayout, final Utilities.Callback2 callback2) {
        ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = new ActionBarPopupWindow.ActionBarPopupWindowLayout(context, 0, null);
        this.searchSwipeBackLayout = actionBarPopupWindowLayout;
        actionBarPopupWindowLayout.setFitItems(true);
        ActionBarMenuSubItem actionBarMenuSubItemAddItem = ActionBarMenuItem.addItem(this.searchSwipeBackLayout, C2888R.drawable.msg_arrow_back, LocaleController.getString(C2888R.string.Back), false, null);
        actionBarMenuSubItemAddItem.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.components.SearchPhotoPopupWrapper$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                popupSwipeBackLayout.closeForeground();
            }
        });
        actionBarMenuSubItemAddItem.setColors(-328966, -328966);
        actionBarMenuSubItemAddItem.setSelectorColor(268435455);
        FrameLayout frameLayout = new FrameLayout(context) { // from class: com.exteragram.messenger.components.SearchPhotoPopupWrapper.1
            @Override // android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i, int i2) {
                super.onMeasure(i, i2);
            }
        };
        frameLayout.setMinimumWidth(AndroidUtilities.m1124dp(196.0f));
        frameLayout.setBackgroundColor(-15198184);
        this.searchSwipeBackLayout.addView(frameLayout);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) frameLayout.getLayoutParams();
        if (LocaleController.isRTL) {
            layoutParams.gravity = 5;
        }
        layoutParams.width = -1;
        layoutParams.height = AndroidUtilities.m1124dp(8.0f);
        frameLayout.setLayoutParams(layoutParams);
        ActionBarMenuSubItem actionBarMenuSubItemAddItem2 = ActionBarMenuItem.addItem(this.searchSwipeBackLayout, 0, "Yandex", false, null);
        actionBarMenuSubItemAddItem2.setColors(-328966, -328966);
        actionBarMenuSubItemAddItem2.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.components.SearchPhotoPopupWrapper$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                callback2.run("https://yandex.com/images/search?rpt=imageview&url=", Boolean.FALSE);
            }
        });
        actionBarMenuSubItemAddItem2.setSelectorColor(268435455);
        ActionBarMenuSubItem actionBarMenuSubItemAddItem3 = ActionBarMenuItem.addItem(this.searchSwipeBackLayout, 0, "Google", false, null);
        actionBarMenuSubItemAddItem3.setColors(-328966, -328966);
        actionBarMenuSubItemAddItem3.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.components.SearchPhotoPopupWrapper$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                callback2.run("https://www.google.com/searchbyimage?client=app&image_url=", Boolean.FALSE);
            }
        });
        actionBarMenuSubItemAddItem3.setSelectorColor(268435455);
        ActionBarMenuSubItem actionBarMenuSubItemAddItem4 = ActionBarMenuItem.addItem(this.searchSwipeBackLayout, 0, "Bing", false, null);
        actionBarMenuSubItemAddItem4.setColors(-328966, -328966);
        actionBarMenuSubItemAddItem4.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.components.SearchPhotoPopupWrapper$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                callback2.run("https://www.bing.com/images/search?view=detailv2&iss=SBI&form=SBIIDP&sbisrc=UrlPaste&q=imgurl:", Boolean.FALSE);
            }
        });
        actionBarMenuSubItemAddItem4.setSelectorColor(268435455);
        ActionBarMenuSubItem actionBarMenuSubItemAddItem5 = ActionBarMenuItem.addItem(this.searchSwipeBackLayout, 0, "TinEye", false, null);
        actionBarMenuSubItemAddItem5.setColors(-328966, -328966);
        actionBarMenuSubItemAddItem5.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.components.SearchPhotoPopupWrapper$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                callback2.run("https://tineye.com/search/?url=", Boolean.FALSE);
            }
        });
        actionBarMenuSubItemAddItem5.setSelectorColor(268435455);
        if (SystemUtils.isLensAvailable()) {
            ActionBarMenuSubItem actionBarMenuSubItemAddItem6 = ActionBarMenuItem.addItem(this.searchSwipeBackLayout, 0, "Google Lens", false, null);
            this.lensItem = actionBarMenuSubItemAddItem6;
            actionBarMenuSubItemAddItem6.setColors(-328966, -328966);
            actionBarMenuSubItemAddItem6.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.components.SearchPhotoPopupWrapper$$ExternalSyntheticLambda5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    callback2.run(null, Boolean.TRUE);
                }
            });
            actionBarMenuSubItemAddItem6.setSelectorColor(268435455);
        }
        FrameLayout frameLayout2 = new FrameLayout(context) { // from class: com.exteragram.messenger.components.SearchPhotoPopupWrapper.2
            @Override // android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i, int i2) {
                super.onMeasure(i, i2);
            }
        };
        frameLayout2.setMinimumWidth(AndroidUtilities.m1124dp(196.0f));
        frameLayout2.setBackgroundColor(-15198184);
        this.searchSwipeBackLayout.addView(frameLayout2);
        frameLayout2.setLayoutParams(layoutParams);
        LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(context);
        linksTextView.setTag(C2888R.id.fit_width_tag, 1);
        linksTextView.setPadding(AndroidUtilities.m1124dp(13.0f), 0, AndroidUtilities.m1124dp(13.0f), AndroidUtilities.m1124dp(8.0f));
        linksTextView.setTextSize(1, 12.0f);
        linksTextView.setTextColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuItem, new DarkThemeResourceProvider()));
        linksTextView.setMovementMethod(LinkMovementMethod.getInstance());
        linksTextView.setLinkTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteLinkText, new DarkThemeResourceProvider()));
        linksTextView.setText(LocaleController.getString(C2888R.string.SearchPhotoInfo));
        this.searchSwipeBackLayout.addView((View) linksTextView, LayoutHelper.createLinear(-1, -2, 0.0f, 0, 0, 8, 0, 0));
    }
}
