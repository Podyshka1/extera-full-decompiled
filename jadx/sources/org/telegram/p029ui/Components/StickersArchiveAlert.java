package org.telegram.p029ui.Components;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.p029ui.ActionBar.AlertDialog;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Cells.ArchivedStickerSetCell;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.p029ui.StickersActivity;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes7.dex */
public class StickersArchiveAlert extends AlertDialog.Builder {
    private int currentType;
    private BaseFragment parentFragment;
    private ArrayList stickerSets;

    public StickersArchiveAlert(Context context, BaseFragment baseFragment, ArrayList arrayList) {
        super(context);
        TLRPC.StickerSetCovered stickerSetCovered = (TLRPC.StickerSetCovered) arrayList.get(0);
        if (stickerSetCovered.set.masks) {
            this.currentType = 1;
            setTitle(LocaleController.getString(C2888R.string.ArchivedMasksAlertTitle));
        } else {
            this.currentType = 0;
            setTitle(LocaleController.getString(C2888R.string.ArchivedStickersAlertTitle));
        }
        this.stickerSets = new ArrayList(arrayList);
        this.parentFragment = baseFragment;
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        setView(linearLayout);
        TextView textView = new TextView(context);
        textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
        textView.setGravity(LayoutHelper.getAbsoluteGravityStart());
        textView.setTextSize(1, 16.0f);
        textView.setPadding(AndroidUtilities.m1124dp(23.0f), AndroidUtilities.m1124dp(10.0f), AndroidUtilities.m1124dp(23.0f), 0);
        if (stickerSetCovered.set.masks) {
            textView.setText(LocaleController.getString(C2888R.string.ArchivedMasksAlertInfo));
        } else {
            textView.setText(LocaleController.getString(C2888R.string.ArchivedStickersAlertInfo));
        }
        linearLayout.addView(textView, LayoutHelper.createLinear(-2, -2));
        RecyclerListView recyclerListView = new RecyclerListView(context);
        recyclerListView.setLayoutManager(new LinearLayoutManager(getContext(), 1, false));
        recyclerListView.setAdapter(new ListAdapter(context));
        recyclerListView.setVerticalScrollBarEnabled(false);
        recyclerListView.setPadding(AndroidUtilities.m1124dp(10.0f), 0, AndroidUtilities.m1124dp(10.0f), 0);
        recyclerListView.setGlowColor(-657673);
        linearLayout.addView(recyclerListView, LayoutHelper.createLinear(-1, -2, 0.0f, 10.0f, 0.0f, 0.0f));
        setNegativeButton(LocaleController.getString(C2888R.string.Close), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.StickersArchiveAlert$$ExternalSyntheticLambda0
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                alertDialog.dismiss();
            }
        });
        if (this.parentFragment != null) {
            setPositiveButton(LocaleController.getString(C2888R.string.Settings), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.StickersArchiveAlert$$ExternalSyntheticLambda1
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i) {
                    this.f$0.lambda$new$1(alertDialog, i);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(AlertDialog alertDialog, int i) {
        this.parentFragment.presentFragment(new StickersActivity(this.currentType, null));
        alertDialog.dismiss();
    }

    private class ListAdapter extends RecyclerListView.SelectionAdapter {
        Context context;

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return false;
        }

        public ListAdapter(Context context) {
            this.context = context;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return StickersArchiveAlert.this.stickerSets.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            ArchivedStickerSetCell archivedStickerSetCell = new ArchivedStickerSetCell(this.context, false);
            archivedStickerSetCell.setLayoutParams(new RecyclerView.LayoutParams(-1, AndroidUtilities.m1124dp(82.0f)));
            return new RecyclerListView.Holder(archivedStickerSetCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            ((ArchivedStickerSetCell) viewHolder.itemView).setStickersSet((TLRPC.StickerSetCovered) StickersArchiveAlert.this.stickerSets.get(i), i != StickersArchiveAlert.this.stickerSets.size() - 1);
        }
    }
}
