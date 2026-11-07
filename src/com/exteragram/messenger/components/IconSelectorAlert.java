package com.exteragram.messenger.components;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.view.View;
import android.widget.GridLayout;
import android.widget.ImageView;
import com.exteragram.messenger.utils.ui.FolderIcons;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.ItemOptions;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.RecyclerListView;

/* JADX INFO: loaded from: classes4.dex */
public abstract class IconSelectorAlert {

    public interface OnIconSelectedListener {
        void onIconSelected(String str);
    }

    public static void show(BaseFragment baseFragment, View view, String str, final OnIconSelectedListener onIconSelectedListener) {
        Context context = baseFragment.getContext();
        if (context == null) {
            return;
        }
        Theme.ResourcesProvider resourceProvider = baseFragment.getResourceProvider();
        int color = Theme.getColor(Theme.key_windowBackgroundWhiteValueText, resourceProvider);
        int color2 = Theme.getColor(Theme.key_windowBackgroundWhiteGrayIcon, resourceProvider);
        int color3 = Theme.getColor(Theme.key_listSelector, resourceProvider);
        View view2 = (View) view.getParent();
        final ItemOptions itemOptionsTranslate = ItemOptions.makeOptions(baseFragment, view2).setGravity(3).translate(view.getX() - AndroidUtilities.dp(13.0f), 0.0f);
        if (view2.getParent() instanceof RecyclerListView) {
            itemOptionsTranslate.setScrimViewBackground(((RecyclerListView) view2.getParent()).getClipBackground(view2));
        }
        GridLayout gridLayout = new GridLayout(context);
        int i = 6;
        while (i > 1 && AndroidUtilities.dp((i * 50) + 40) > AndroidUtilities.displaySize.x) {
            i--;
        }
        gridLayout.setColumnCount(i);
        for (final String str2 : FolderIcons.folderIcons.keySet()) {
            final boolean zEquals = str2.equals(str);
            ImageView imageView = new ImageView(context);
            imageView.setScaleType(ImageView.ScaleType.FIT_XY);
            imageView.setPadding(AndroidUtilities.dp(6.0f), AndroidUtilities.dp(6.0f), AndroidUtilities.dp(6.0f), AndroidUtilities.dp(6.0f));
            imageView.setImageResource(FolderIcons.getTabIcon(str2));
            imageView.setColorFilter(new PorterDuffColorFilter(zEquals ? color : color2, PorterDuff.Mode.MULTIPLY));
            imageView.setBackground(Theme.createRadSelectorDrawable(zEquals ? Theme.multAlpha(color, 0.15686275f) : 0, color3, 7, 7));
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.components.IconSelectorAlert$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    IconSelectorAlert.$r8$lambda$b3ZIL3otS284YS1EShI6wgNn894(itemOptionsTranslate, zEquals, onIconSelectedListener, str2, view3);
                }
            });
            gridLayout.addView(imageView, LayoutHelper.createFrame(48, 48.0f, 17, 1.0f, 1.0f, 1.0f, 1.0f));
        }
        itemOptionsTranslate.addView(gridLayout, LayoutHelper.createLinear(-2, -2, 4.0f, 4.0f, 4.0f, 4.0f));
        itemOptionsTranslate.show();
    }

    public static /* synthetic */ void $r8$lambda$b3ZIL3otS284YS1EShI6wgNn894(ItemOptions itemOptions, boolean z, OnIconSelectedListener onIconSelectedListener, String str, View view) {
        itemOptions.dismiss();
        if (z) {
            return;
        }
        onIconSelectedListener.onIconSelected(str);
    }
}
