package org.telegram.p029ui.Components;

import android.content.Context;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes7.dex */
public class StarAppsSheet extends BottomSheetWithRecyclerListView {
    private DialogsBotsAdapter adapter;

    public StarAppsSheet(Context context) {
        super(context, null, true, false, false, null);
        fixNavigationBar();
        this.handleOffset = true;
        setShowHandle(true);
        setSlidingActionBar();
        RecyclerListView recyclerListView = this.recyclerListView;
        int i = this.backgroundPaddingLeft;
        recyclerListView.setPadding(i, 0, i, 0);
        this.recyclerListView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.StarAppsSheet.1
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i2, int i3) {
                StarAppsSheet.this.adapter.checkBottom();
            }
        });
        this.recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Components.StarAppsSheet$$ExternalSyntheticLambda0
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i2) {
                this.f$0.lambda$new$0(view, i2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view, int i) {
        Object object = this.adapter.getObject(i - 1);
        if (object instanceof TLRPC.User) {
            MessagesController.getInstance(this.currentAccount).openApp(this.attachedFragment, (TLRPC.User) object, null, 0, null);
        }
    }

    @Override // org.telegram.p029ui.Components.BottomSheetWithRecyclerListView
    protected CharSequence getTitle() {
        return LocaleController.getString(C2888R.string.SearchAppsExamples);
    }

    @Override // org.telegram.p029ui.Components.BottomSheetWithRecyclerListView
    protected RecyclerListView.SelectionAdapter createAdapter(RecyclerListView recyclerListView) {
        DialogsBotsAdapter dialogsBotsAdapter = new DialogsBotsAdapter(recyclerListView, getContext(), this.currentAccount, 0, true, this.resourcesProvider);
        this.adapter = dialogsBotsAdapter;
        dialogsBotsAdapter.setApplyBackground(false);
        return this.adapter;
    }
}
