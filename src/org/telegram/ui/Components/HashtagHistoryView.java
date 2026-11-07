package org.telegram.ui.Components;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.android.dx.io.Opcodes;
import java.util.ArrayList;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.HashtagSearchController;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.Utilities;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.Theme;

/* JADX INFO: loaded from: classes7.dex */
@SuppressLint({"ViewConstructor"})
public class HashtagHistoryView extends FrameLayout {
    private final UniversalAdapter adapter;
    private final int currentAccount;
    private final ImageView emptyImage;
    private final TextView emptyText;
    public final FrameLayout emptyView;
    private ArrayList<String> history;
    private Utilities.Callback<String> onClickListener;
    private final UniversalRecyclerView recyclerView;
    private final Theme.ResourcesProvider resourcesProvider;

    public HashtagHistoryView(Context context, Theme.ResourcesProvider resourcesProvider, int i) {
        super(context);
        this.currentAccount = i;
        this.resourcesProvider = resourcesProvider;
        UniversalRecyclerView universalRecyclerView = new UniversalRecyclerView(context, i, 0, new Utilities.Callback2() { // from class: org.telegram.ui.Components.HashtagHistoryView$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.fillItems((ArrayList) obj, (UniversalAdapter) obj2);
            }
        }, new Utilities.Callback5() { // from class: org.telegram.ui.Components.HashtagHistoryView$$ExternalSyntheticLambda1
            @Override // org.telegram.messenger.Utilities.Callback5
            public final void run(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                this.f$0.onClick((UItem) obj, (View) obj2, ((Integer) obj3).intValue(), ((Float) obj4).floatValue(), ((Float) obj5).floatValue());
            }
        }, new Utilities.Callback5Return() { // from class: org.telegram.ui.Components.HashtagHistoryView$$ExternalSyntheticLambda2
            @Override // org.telegram.messenger.Utilities.Callback5Return
            public final Object run(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                return Boolean.valueOf(this.f$0.onLongClick((UItem) obj, (View) obj2, ((Integer) obj3).intValue(), ((Float) obj4).floatValue(), ((Float) obj5).floatValue()));
            }
        }, resourcesProvider);
        this.recyclerView = universalRecyclerView;
        universalRecyclerView.setClipToPadding(false);
        UniversalAdapter universalAdapter = (UniversalAdapter) universalRecyclerView.getAdapter();
        this.adapter = universalAdapter;
        universalAdapter.setApplyBackground(false);
        addView(universalRecyclerView, -1, -1);
        FrameLayout frameLayout = new FrameLayout(context);
        this.emptyView = frameLayout;
        ImageView imageView = new ImageView(context);
        this.emptyImage = imageView;
        int i2 = Theme.key_windowBackgroundWhiteGrayIcon;
        imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i2, resourcesProvider), PorterDuff.Mode.MULTIPLY));
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        imageView.setImageResource(C2807R.drawable.large_hashtags);
        frameLayout.addView(imageView, LayoutHelper.createFrame(56, 56, 49));
        TextView textView = new TextView(context);
        this.emptyText = textView;
        textView.setTextColor(Theme.getColor(i2, resourcesProvider));
        textView.setText(LocaleController.getString(C2807R.string.HashtagSearchPlaceholder));
        textView.setGravity(17);
        frameLayout.addView(textView, LayoutHelper.createFrame(-2, -2.0f, 81, 0.0f, 56.0f, 0.0f, 0.0f));
        addView(frameLayout, LayoutHelper.createFrame(Opcodes.MUL_INT_LIT16, -2, 17));
        universalRecyclerView.setEmptyView(frameLayout);
    }

    public void setTopBottomPadding(int i, int i2) {
        this.recyclerView.setPadding(0, i, 0, i2);
        this.emptyView.setTranslationY((i - i2) / 2.0f);
    }

    public void update() {
        this.adapter.update(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fillItems(ArrayList<UItem> arrayList, UniversalAdapter universalAdapter) {
        ArrayList<String> arrayList2 = new ArrayList<>(0);
        this.history = arrayList2;
        arrayList2.addAll(HashtagSearchController.getInstance(this.currentAccount).history);
        if (this.history.isEmpty()) {
            return;
        }
        for (int i = 0; i < this.history.size(); i++) {
            String str = this.history.get(i);
            if (str.startsWith("#") || str.startsWith("$")) {
                arrayList.add(UItem.asButton(i + 1, str.startsWith("$") ? C2807R.drawable.menu_cashtag : C2807R.drawable.menu_hashtag, str.substring(1)));
            }
        }
        arrayList.add(UItem.asButton(0, C2807R.drawable.msg_clear_recent, LocaleController.getString(C2807R.string.ClearHistory)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onClick(UItem uItem, View view, int i, float f, float f2) {
        int i2 = uItem.id;
        if (i2 == 0) {
            HashtagSearchController.getInstance(this.currentAccount).clearHistory();
            update();
        } else {
            Utilities.Callback<String> callback = this.onClickListener;
            if (callback != null) {
                callback.run(this.history.get(i2 - 1));
            }
        }
    }

    public void setOnHashtagClickListener(Utilities.Callback<String> callback) {
        this.onClickListener = callback;
    }

    public void setOnScrollListener(RecyclerView.OnScrollListener onScrollListener) {
        this.recyclerView.addOnScrollListener(onScrollListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean onLongClick(UItem uItem, View view, int i, float f, float f2) {
        int i2 = uItem.id;
        if (i2 == 0) {
            return false;
        }
        final String str = this.history.get(i2 - 1);
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext(), this.resourcesProvider);
        builder.setTitle(LocaleController.getString(C2807R.string.ClearSearchSingleAlertTitle));
        builder.setMessage(LocaleController.formatString(C2807R.string.ClearSearchSingleHashtagAlertText, str));
        builder.setPositiveButton(LocaleController.getString(C2807R.string.ClearSearchRemove), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.HashtagHistoryView$$ExternalSyntheticLambda3
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i3) {
                this.f$0.lambda$onLongClick$0(str, alertDialog, i3);
            }
        });
        builder.setNegativeButton(LocaleController.getString(C2807R.string.Cancel), null);
        builder.create().show();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onLongClick$0(String str, AlertDialog alertDialog, int i) {
        HashtagSearchController.getInstance(this.currentAccount).removeHashtagFromHistory(str);
        update();
    }
}
