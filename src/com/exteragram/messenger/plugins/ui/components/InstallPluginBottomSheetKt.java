package com.exteragram.messenger.plugins.ui.components;

import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import kotlin.Metadata;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.Utilities;
import org.telegram.ui.Cells.HeaderCell;
import org.telegram.ui.Components.UItem;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000¨\u0006\u0004"}, d2 = {"pluginSheetHeader", "Lorg/telegram/ui/Components/UItem;", "text", _UrlKt.FRAGMENT_ENCODE_SET, "TMessagesProj"}, m910k = 2, mv = {2, 2, 0}, xi = 48)
public final class InstallPluginBottomSheetKt {
    public static final UItem pluginSheetHeader(CharSequence charSequence) {
        return UItem.asHeader(charSequence).onBind(new Utilities.Callback() { // from class: com.exteragram.messenger.plugins.ui.components.InstallPluginBottomSheetKt$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                InstallPluginBottomSheetKt.$r8$lambda$AFhqWpoPnUHEK2N4BG2OTxYHJQc((View) obj);
            }
        });
    }

    public static void $r8$lambda$AFhqWpoPnUHEK2N4BG2OTxYHJQc(View view) {
        HeaderCell headerCell = view instanceof HeaderCell ? (HeaderCell) view : null;
        if (headerCell == null) {
            return;
        }
        TextView textView = headerCell.getTextView();
        ViewGroup.LayoutParams layoutParams = textView.getLayoutParams();
        FrameLayout.LayoutParams layoutParams2 = layoutParams instanceof FrameLayout.LayoutParams ? (FrameLayout.LayoutParams) layoutParams : null;
        if (layoutParams2 == null) {
            return;
        }
        int iDp = AndroidUtilities.dp(6.0f);
        int iDp2 = AndroidUtilities.dp(34.0f);
        if (layoutParams2.topMargin == iDp && textView.getMinHeight() == iDp2) {
            return;
        }
        layoutParams2.topMargin = iDp;
        textView.setMinHeight(iDp2);
        headerCell.requestLayout();
    }
}
