package org.telegram.ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2573R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.BottomSheet;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.GroupCreateUserCell;
import org.telegram.ui.Cells.HeaderCell;
import org.telegram.ui.Cells.TextInfoPrivacyCell;
import org.telegram.ui.Components.JoinCallAlert;
import org.telegram.ui.Components.RecyclerListView;

/* JADX INFO: loaded from: classes7.dex */
public class CreateGroupCallBottomSheet extends BottomSheetWithRecyclerListView {
    private final boolean canRtmpStream;
    private final List<TLRPC.Peer> chats;
    private final long dialogId;
    private final BaseFragment fragment;
    private final boolean isChannelOrGiga;
    private boolean isScheduleSelected;
    private final JoinCallAlert.JoinCallAlertDelegate joinCallDelegate;
    private final boolean needSelector;
    private TLRPC.InputPeer selectAfterDismiss;
    private TLRPC.Peer selectedPeer;

    public static void show(ArrayList<TLRPC.Peer> arrayList, BaseFragment baseFragment, long j, JoinCallAlert.JoinCallAlertDelegate joinCallAlertDelegate) {
        if (arrayList.isEmpty()) {
            return;
        }
        CreateGroupCallBottomSheet createGroupCallBottomSheet = new CreateGroupCallBottomSheet(baseFragment, arrayList, j, joinCallAlertDelegate);
        if (baseFragment != null && baseFragment.getParentActivity() != null) {
            baseFragment.showDialog(createGroupCallBottomSheet);
        } else {
            createGroupCallBottomSheet.show();
        }
    }

    public CreateGroupCallBottomSheet(BaseFragment baseFragment, ArrayList<TLRPC.Peer> arrayList, long j, JoinCallAlert.JoinCallAlertDelegate joinCallAlertDelegate) {
        String string;
        String string2;
        super(baseFragment, false, false);
        TLRPC.Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-j));
        this.fragment = baseFragment;
        this.dialogId = j;
        this.topPadding = 0.26f;
        ArrayList arrayList2 = new ArrayList(arrayList);
        this.chats = arrayList2;
        this.joinCallDelegate = joinCallAlertDelegate;
        boolean zIsChannelOrGiga = ChatObject.isChannelOrGiga(chat);
        this.isChannelOrGiga = zIsChannelOrGiga;
        this.selectedPeer = (TLRPC.Peer) arrayList2.get(0);
        this.needSelector = arrayList2.size() > 1;
        this.canRtmpStream = ChatObject.canManageCalls(chat);
        Context context = this.containerView.getContext();
        this.containerView.addView(new View(context) { // from class: org.telegram.ui.Components.CreateGroupCallBottomSheet.1
            @Override // android.view.View
            public void onDraw(Canvas canvas) {
                if (CreateGroupCallBottomSheet.this.needSelector) {
                    canvas.drawRect(((BottomSheet) CreateGroupCallBottomSheet.this).backgroundPaddingLeft, 0.0f, getMeasuredWidth() - ((BottomSheet) CreateGroupCallBottomSheet.this).backgroundPaddingLeft, 1.0f, Theme.dividerPaint);
                }
            }
        }, LayoutHelper.createFrame(-1, 120.0f, 80, 0.0f, 0.0f, 0.0f, 0.0f));
        TextView textView = new TextView(context);
        textView.setGravity(17);
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        textView.setEllipsize(truncateAt);
        textView.setSingleLine(true);
        textView.setTextSize(1, 14.0f);
        textView.setTypeface(AndroidUtilities.bold());
        if (zIsChannelOrGiga) {
            string = LocaleController.formatString(C2573R.string.VoipChannelStartVoiceChat, new Object[0]);
        } else {
            string = LocaleController.formatString(C2573R.string.VoipGroupStartVoiceChat, new Object[0]);
        }
        textView.setText(string);
        textView.setTextColor(Theme.getColor(Theme.key_featuredStickers_buttonText));
        int iDp = AndroidUtilities.dp(8.0f);
        int i = Theme.key_featuredStickers_addButton;
        textView.setBackground(Theme.createSimpleSelectorRoundRectDrawable(iDp, Theme.getColor(i), ColorUtils.setAlphaComponent(Theme.getColor(Theme.key_windowBackgroundWhite), 120)));
        this.containerView.addView(textView, LayoutHelper.createFrame(-1, 48.0f, 80, 16.0f, 0.0f, 16.0f, 60.0f));
        TextView textView2 = new TextView(context);
        textView2.setGravity(17);
        textView2.setEllipsize(truncateAt);
        textView2.setSingleLine(true);
        textView2.setTextSize(1, 14.0f);
        textView2.setTypeface(AndroidUtilities.bold());
        if (zIsChannelOrGiga) {
            string2 = LocaleController.formatString(C2573R.string.VoipChannelScheduleVoiceChat, new Object[0]);
        } else {
            string2 = LocaleController.formatString(C2573R.string.VoipGroupScheduleVoiceChat, new Object[0]);
        }
        textView2.setText(string2);
        textView2.setLetterSpacing(0.025f);
        textView2.setTextColor(Theme.getColor(i));
        textView2.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.dp(8.0f), 0, ColorUtils.setAlphaComponent(Theme.getColor(i), 120)));
        this.containerView.addView(textView2, LayoutHelper.createFrame(-1, 48.0f, 80, 16.0f, 0.0f, 16.0f, 6.0f));
        textView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.CreateGroupCallBottomSheet$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$0(view);
            }
        });
        textView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.CreateGroupCallBottomSheet$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$1(view);
            }
        });
        RecyclerListView recyclerListView = this.recyclerListView;
        int i2 = this.backgroundPaddingLeft;
        recyclerListView.setPadding(i2, 0, i2, AndroidUtilities.dp(120.0f));
        this.recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Components.CreateGroupCallBottomSheet$$ExternalSyntheticLambda2
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i3) {
                this.f$0.lambda$new$2(view, i3);
            }
        });
        fixNavigationBar();
        updateTitle();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        this.selectAfterDismiss = MessagesController.getInstance(this.currentAccount).getInputPeer(MessageObject.getPeerId(this.selectedPeer));
        lambda$new$0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(View view) {
        this.selectAfterDismiss = MessagesController.getInstance(this.currentAccount).getInputPeer(MessageObject.getPeerId(this.selectedPeer));
        this.isScheduleSelected = true;
        lambda$new$0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(View view, int i) {
        if (i <= 3) {
            return;
        }
        this.selectedPeer = this.chats.get(i - 4);
        if (view instanceof GroupCreateUserCell) {
            ((GroupCreateUserCell) view).setChecked(true, true);
        }
        for (int i2 = 0; i2 < this.recyclerListView.getChildCount(); i2++) {
            View childAt = this.recyclerListView.getChildAt(i2);
            if (childAt != view && (childAt instanceof GroupCreateUserCell)) {
                ((GroupCreateUserCell) childAt).setChecked(false, true);
            }
        }
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet
    public void dismissInternal() {
        super.dismissInternal();
        TLRPC.InputPeer inputPeer = this.selectAfterDismiss;
        if (inputPeer != null) {
            this.joinCallDelegate.didSelectChat(inputPeer, this.chats.size() > 1, this.isScheduleSelected, false);
        }
    }

    @Override // org.telegram.ui.Components.BottomSheetWithRecyclerListView
    public CharSequence getTitle() {
        if (this.isChannelOrGiga) {
            return LocaleController.getString(C2573R.string.StartVoipChannelTitle);
        }
        return LocaleController.getString(C2573R.string.StartVoipChatTitle);
    }

    /* JADX INFO: renamed from: org.telegram.ui.Components.CreateGroupCallBottomSheet$2 */
    public class C36282 extends RecyclerListView.SelectionAdapter {
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i == 0) {
                return 0;
            }
            if (i != 1) {
                return i != 2 ? 3 : 2;
            }
            return 1;
        }

        public C36282() {
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return viewHolder.getItemViewType() == 3;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View headerCell;
            Context context = viewGroup.getContext();
            if (i == 1) {
                TextInfoPrivacyCell textInfoPrivacyCell = new TextInfoPrivacyCell(context);
                textInfoPrivacyCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray, ((BottomSheet) CreateGroupCallBottomSheet.this).resourcesProvider));
                textInfoPrivacyCell.setTopPadding(17);
                textInfoPrivacyCell.setBottomPadding(17);
                headerCell = textInfoPrivacyCell;
            } else if (i == 2) {
                headerCell = new HeaderCell(context, 22);
            } else if (i != 3) {
                headerCell = new TopCell(context, CreateGroupCallBottomSheet.this.isChannelOrGiga);
            } else {
                headerCell = new GroupCreateUserCell(context, 1, 0, false);
            }
            headerCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            return new RecyclerListView.Holder(headerCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            TLObject chat;
            String string;
            if (viewHolder.getItemViewType() == 3) {
                TLRPC.Peer peer = (TLRPC.Peer) CreateGroupCallBottomSheet.this.chats.get(i - 3);
                long peerId = MessageObject.getPeerId(peer);
                CreateGroupCallBottomSheet createGroupCallBottomSheet = CreateGroupCallBottomSheet.this;
                if (peerId > 0) {
                    chat = MessagesController.getInstance(((BottomSheet) createGroupCallBottomSheet).currentAccount).getUser(Long.valueOf(peerId));
                    string = LocaleController.getString(C2573R.string.VoipGroupPersonalAccount);
                } else {
                    chat = MessagesController.getInstance(((BottomSheet) createGroupCallBottomSheet).currentAccount).getChat(Long.valueOf(-peerId));
                    string = null;
                }
                GroupCreateUserCell groupCreateUserCell = (GroupCreateUserCell) viewHolder.itemView;
                groupCreateUserCell.setObject(chat, null, string, i != getItemCount() - 1);
                groupCreateUserCell.setChecked(peer == CreateGroupCallBottomSheet.this.selectedPeer, false);
                return;
            }
            if (viewHolder.getItemViewType() == 2) {
                HeaderCell headerCell = (HeaderCell) viewHolder.itemView;
                headerCell.setTextSize(15.0f);
                headerCell.setPadding(0, 0, 0, AndroidUtilities.dp(2.0f));
                headerCell.setText(LocaleController.getString(C2573R.string.VoipChatDisplayedAs).replace(":", _UrlKt.FRAGMENT_ENCODE_SET));
                return;
            }
            if (viewHolder.getItemViewType() == 1) {
                ((TextInfoPrivacyCell) viewHolder.itemView).setText(AndroidUtilities.replaceArrows(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2573R.string.VoipChatStreamWithAnotherApp), Theme.key_windowBackgroundWhiteBlueHeader, 0, new Runnable() { // from class: org.telegram.ui.Components.CreateGroupCallBottomSheet$2$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onBindViewHolder$0();
                    }
                }), true, AndroidUtilities.dp(1.0f), AndroidUtilities.dp(1.0f)));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onBindViewHolder$0() {
            CreateRtmpStreamBottomSheet.show(CreateGroupCallBottomSheet.this.selectedPeer, CreateGroupCallBottomSheet.this.fragment, CreateGroupCallBottomSheet.this.dialogId, CreateGroupCallBottomSheet.this.chats.size() > 1, CreateGroupCallBottomSheet.this.joinCallDelegate);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            boolean z = CreateGroupCallBottomSheet.this.needSelector;
            CreateGroupCallBottomSheet createGroupCallBottomSheet = CreateGroupCallBottomSheet.this;
            return z ? createGroupCallBottomSheet.chats.size() + 3 : createGroupCallBottomSheet.canRtmpStream ? 2 : 1;
        }
    }

    @Override // org.telegram.ui.Components.BottomSheetWithRecyclerListView
    public RecyclerListView.SelectionAdapter createAdapter(RecyclerListView recyclerListView) {
        return new C36282();
    }

    public static class TopCell extends LinearLayout {
        public TopCell(Context context, boolean z) {
            String string;
            String string2;
            super(context);
            setOrientation(1);
            RLottieImageView rLottieImageView = new RLottieImageView(context);
            rLottieImageView.setAutoRepeat(true);
            rLottieImageView.setAnimation(C2573R.raw.utyan_schedule, 112, 112);
            rLottieImageView.playAnimation();
            addView(rLottieImageView, LayoutHelper.createLinear(112, 112, 49, 0, 24, 0, 0));
            TextView textView = new TextView(context);
            textView.setTypeface(AndroidUtilities.bold());
            if (z) {
                string = LocaleController.formatString(C2573R.string.StartVoipChannelTitle, new Object[0]);
            } else {
                string = LocaleController.formatString(C2573R.string.StartVoipChatTitle, new Object[0]);
            }
            textView.setText(string);
            textView.setTextSize(1, 20.0f);
            textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
            addView(textView, LayoutHelper.createLinear(-2, -2, 1, 0, 14, 0, 7));
            TextView textView2 = new TextView(context);
            textView2.setTextSize(1, 14.0f);
            textView2.setGravity(1);
            textView2.setTextColor(Theme.getColor(Theme.key_dialogTextBlack));
            if (z) {
                string2 = LocaleController.formatString(C2573R.string.VoipChannelStart2, new Object[0]);
            } else {
                string2 = LocaleController.formatString(C2573R.string.VoipGroupStart2, new Object[0]);
            }
            textView2.setText(string2);
            textView2.setLineSpacing(textView2.getLineSpacingExtra(), textView2.getLineSpacingMultiplier() * 1.1f);
            addView(textView2, LayoutHelper.createLinear(-2, -2, 1, 28, 0, 28, 17));
        }
    }
}
