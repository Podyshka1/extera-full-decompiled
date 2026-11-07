package com.exteragram.messenger.icons.ui;

import android.widget.EditText;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.ui.ActionBar.ActionBarMenuItem;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\b\u0010\u0004\u001a\u00020\u0003H\u0016J\u0010\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"com/exteragram/messenger/icons/ui/IconPacksEditorActivity$createView$searchItem$1", "Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;", "onSearchExpand", _UrlKt.FRAGMENT_ENCODE_SET, "onSearchCollapse", "onTextChanged", "editText", "Landroid/widget/EditText;", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nIconPacksEditorActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IconPacksEditorActivity.kt\ncom/exteragram/messenger/icons/ui/IconPacksEditorActivity$createView$searchItem$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,389:1\n1#2:390\n*E\n"})
public final class IconPacksEditorActivity$createView$searchItem$1 extends ActionBarMenuItem.ActionBarMenuItemSearchListener {
    final /* synthetic */ IconPacksEditorActivity this$0;

    public IconPacksEditorActivity$createView$searchItem$1(IconPacksEditorActivity iconPacksEditorActivity) {
        this.this$0 = iconPacksEditorActivity;
    }

    @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
    public void onSearchExpand() {
        this.this$0.searching = true;
        ActionBarMenuItem actionBarMenuItem = this.this$0.otherItem;
        if (actionBarMenuItem != null) {
            actionBarMenuItem.setVisibility(8);
        }
    }

    @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
    public void onSearchCollapse() {
        this.this$0.searching = false;
        this.this$0.query = null;
        ActionBarMenuItem actionBarMenuItem = this.this$0.otherItem;
        if (actionBarMenuItem != null) {
            actionBarMenuItem.setVisibility(0);
        }
        this.this$0.updateAdapter();
    }

    @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
    public void onTextChanged(final EditText editText) {
        Runnable runnable = this.this$0.searchRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
        }
        final IconPacksEditorActivity iconPacksEditorActivity = this.this$0;
        Runnable runnable2 = new Runnable() { // from class: com.exteragram.messenger.icons.ui.IconPacksEditorActivity$createView$searchItem$1$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                IconPacksEditorActivity$createView$searchItem$1.$r8$lambda$UHgwOIcW448g3rraVlWtzY1_HCY(iconPacksEditorActivity, editText);
            }
        };
        this.this$0.searchRunnable = runnable2;
        AndroidUtilities.runOnUIThread(runnable2, 200L);
    }

    public static void $r8$lambda$UHgwOIcW448g3rraVlWtzY1_HCY(IconPacksEditorActivity iconPacksEditorActivity, EditText editText) {
        iconPacksEditorActivity.query = editText.getText().toString();
        iconPacksEditorActivity.updateAdapter();
    }
}
