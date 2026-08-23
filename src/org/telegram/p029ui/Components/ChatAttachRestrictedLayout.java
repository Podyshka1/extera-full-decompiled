package org.telegram.p029ui.Components;

import android.content.Context;
import android.graphics.Point;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.LocaleController;
import org.telegram.p029ui.ActionBar.ActionBar;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.ChatAttachAlert;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes7.dex */
public class ChatAttachRestrictedLayout extends ChatAttachAlert.AttachAlertLayout {
    private final RecyclerView.Adapter adapter;
    private int gridExtraSpace;

    /* JADX INFO: renamed from: id */
    public final int f1940id;
    private final RecyclerListView listView;
    private final EmptyTextProgressView progressView;

    public ChatAttachRestrictedLayout(int i, ChatAttachAlert chatAttachAlert, Context context, Theme.ResourcesProvider resourcesProvider) {
        super(chatAttachAlert, context, resourcesProvider);
        this.f1940id = i;
        EmptyTextProgressView emptyTextProgressView = new EmptyTextProgressView(context, null, resourcesProvider);
        this.progressView = emptyTextProgressView;
        emptyTextProgressView.setText(LocaleController.getString(C2888R.string.NoPhotos));
        emptyTextProgressView.setOnTouchListener(null);
        emptyTextProgressView.setTextSize(16);
        addView(emptyTextProgressView, LayoutHelper.createFrame(-1, -2.0f));
        emptyTextProgressView.setLottie(C2888R.raw.media_forbidden, 150, 150);
        TLRPC.Chat chat = this.parentAlert.getChat();
        if (i == 1) {
            emptyTextProgressView.setText(ChatObject.getRestrictedErrorText(chat, 7));
        } else if (i == 3) {
            emptyTextProgressView.setText(ChatObject.getRestrictedErrorText(chat, 18));
        } else if (i == 4) {
            emptyTextProgressView.setText(ChatObject.getRestrictedErrorText(chat, 19));
        } else {
            emptyTextProgressView.setText(ChatObject.getRestrictedErrorText(chat, 22));
        }
        emptyTextProgressView.showTextView();
        RecyclerListView recyclerListView = new RecyclerListView(context, resourcesProvider);
        this.listView = recyclerListView;
        recyclerListView.setSectionsType(2);
        recyclerListView.setVerticalScrollBarEnabled(false);
        recyclerListView.setLayoutManager(new LinearLayoutManager(context));
        recyclerListView.setClipToPadding(false);
        RecyclerView.Adapter adapter = new RecyclerView.Adapter() { // from class: org.telegram.ui.Components.ChatAttachRestrictedLayout.1
            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemCount() {
                return 1;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
                return new RecyclerListView.Holder(new View(ChatAttachRestrictedLayout.this.getContext()) { // from class: org.telegram.ui.Components.ChatAttachRestrictedLayout.1.1
                    @Override // android.view.View
                    protected void onMeasure(int i3, int i4) {
                        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i3), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(ChatAttachRestrictedLayout.this.gridExtraSpace, TLObject.FLAG_30));
                    }
                });
            }
        };
        this.adapter = adapter;
        recyclerListView.setAdapter(adapter);
        recyclerListView.setPadding(0, 0, 0, AndroidUtilities.m1124dp(48.0f));
        recyclerListView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.ChatAttachRestrictedLayout.2
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i2, int i3) {
                ChatAttachRestrictedLayout chatAttachRestrictedLayout = ChatAttachRestrictedLayout.this;
                chatAttachRestrictedLayout.parentAlert.updateLayout(chatAttachRestrictedLayout, true, i3);
            }
        });
        addView(recyclerListView, LayoutHelper.createFrame(-1, -1.0f));
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public int getCurrentItemTop() {
        if (this.listView.getChildCount() <= 0) {
            return Integer.MAX_VALUE;
        }
        int i = 0;
        View childAt = this.listView.getChildAt(0);
        RecyclerListView.Holder holder = (RecyclerListView.Holder) this.listView.findContainingViewHolder(childAt);
        int top = childAt.getTop() - AndroidUtilities.m1124dp(8.0f);
        if (top > 0 && holder != null && holder.getAdapterPosition() == 0) {
            i = top;
        }
        if (top < 0 || holder == null || holder.getAdapterPosition() != 0) {
            top = i;
        }
        this.progressView.setTranslationY(((((getMeasuredHeight() - top) - AndroidUtilities.m1124dp(50.0f)) - this.progressView.getMeasuredHeight()) / 2) + top);
        return top + AndroidUtilities.m1124dp(12.0f);
    }

    @Override // android.view.View
    public void setTranslationY(float f) {
        super.setTranslationY(f);
        this.parentAlert.getSheetContainer().invalidate();
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public int getFirstOffset() {
        return getListTopPadding() + AndroidUtilities.m1124dp(4.0f);
    }

    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    public int getListTopPadding() {
        return this.listView.getPaddingTop();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002d  */
    @Override // org.telegram.ui.Components.ChatAttachAlert.AttachAlertLayout
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onPreMeasure(int i, int i2) {
        int i3;
        super.onPreMeasure(i, i2);
        int iMax = Math.max(0, i2 - ActionBar.getCurrentActionBarHeight());
        if (this.gridExtraSpace != iMax) {
            this.gridExtraSpace = iMax;
            this.adapter.notifyDataSetChanged();
        }
        if (!AndroidUtilities.isTablet()) {
            Point point = AndroidUtilities.displaySize;
            i3 = point.x > point.y ? (int) (i2 / 3.5f) : (i2 / 5) * 2;
        }
        int iM1124dp = i3 - AndroidUtilities.m1124dp(52.0f);
        int i4 = iM1124dp >= 0 ? iM1124dp : 0;
        if (this.listView.getPaddingTop() != i4) {
            this.listView.setPadding(AndroidUtilities.m1124dp(6.0f), i4, AndroidUtilities.m1124dp(6.0f), AndroidUtilities.m1124dp(48.0f));
        }
    }
}
