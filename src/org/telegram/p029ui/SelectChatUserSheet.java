package org.telegram.p029ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Shader;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.HashSet;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BotForumHelper$$ExternalSyntheticLambda2;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.AlertDialog;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Cells.ProfileSearchCell;
import org.telegram.p029ui.Components.AlertsCreator;
import org.telegram.p029ui.Components.BackupImageView;
import org.telegram.p029ui.Components.BottomSheetWithRecyclerListView;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.EditTextBoldCursor;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.Premium.LimitReachedBottomSheet;
import org.telegram.p029ui.Components.RLottieDrawable;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.p029ui.Components.UItem;
import org.telegram.p029ui.Components.UniversalAdapter;
import org.telegram.p029ui.Stories.recorder.ButtonWithCounterView;
import org.telegram.p029ui.TwoStepVerificationActivity;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.p028tl.TL_account;

/* JADX INFO: loaded from: classes6.dex */
public class SelectChatUserSheet extends BottomSheetWithRecyclerListView {
    private UniversalAdapter adapter;
    private ParticipantsList admins;
    private View bottomGradient;
    private ButtonWithCounterView button;
    private TLRPC.Chat chat;
    private Context context;
    private FrameLayout emptySearchView;
    private final TLObject initialOwner;
    private ParticipantsList members;
    private ParticipantsList search;
    private FrameLayout searchBox;
    private FrameLayout searchContainer;
    private EditTextBoldCursor searchEdit;
    private TLObject selectedOwner;
    private final Runnable whenTransferred;

    @Override // org.telegram.p029ui.Components.BottomSheetWithRecyclerListView
    protected CharSequence getTitle() {
        return LocaleController.getString(C2888R.string.AppointNewOwner);
    }

    public SelectChatUserSheet(Context context, TLRPC.Chat chat, TLRPC.User user, Runnable runnable, Theme.ResourcesProvider resourcesProvider) {
        super(context, null, true, false, false, BottomSheetWithRecyclerListView.ActionBarType.SLIDING, resourcesProvider);
        this.headerMoveTop = AndroidUtilities.m1124dp(12.0f);
        this.smoothKeyboardAnimationEnabled = true;
        this.chat = chat;
        this.initialOwner = user;
        this.selectedOwner = user;
        this.whenTransferred = runnable;
        UserConfig.getInstance(this.currentAccount).getCurrentUser();
        this.searchContainer = new FrameLayout(context);
        FrameLayout frameLayout = new FrameLayout(context);
        this.searchBox = frameLayout;
        frameLayout.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.m1124dp(20.0f), getThemedColor(Theme.key_dialogSearchBackground)));
        ImageView imageView = new ImageView(context);
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        imageView.setImageResource(C2888R.drawable.smiles_inputsearch);
        int i = Theme.key_dialogSearchHint;
        imageView.setColorFilter(new PorterDuffColorFilter(getThemedColor(i), PorterDuff.Mode.SRC_IN));
        this.searchBox.addView(imageView, LayoutHelper.createFrame(24, 24.0f, 19, 11.0f, 0.0f, 0.0f, 0.0f));
        EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(context) { // from class: org.telegram.ui.SelectChatUserSheet.1
            @Override // org.telegram.p029ui.Components.EditTextBoldCursor, android.widget.TextView, android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                if (motionEvent.getAction() == 0 && !AndroidUtilities.showKeyboard(this)) {
                    clearFocus();
                    requestFocus();
                }
                return super.onTouchEvent(motionEvent);
            }
        };
        this.searchEdit = editTextBoldCursor;
        editTextBoldCursor.setTextColor(getThemedColor(Theme.key_dialogSearchText));
        this.searchEdit.setHintTextColor(getThemedColor(i));
        this.searchEdit.setTextSize(1, 15.0f);
        this.searchEdit.setSingleLine(true);
        this.searchEdit.setBackground(null);
        this.searchEdit.setCursorWidth(1.5f);
        this.searchEdit.setGravity(112);
        this.searchEdit.setClipToPadding(true);
        this.searchEdit.setPadding(AndroidUtilities.m1124dp(46.0f), 0, AndroidUtilities.m1124dp(16.0f), 0);
        this.searchEdit.setTranslationY(-AndroidUtilities.m1124dp(0.66f));
        EditTextBoldCursor editTextBoldCursor2 = this.searchEdit;
        editTextBoldCursor2.setInputType(editTextBoldCursor2.getInputType() | 524288);
        this.searchEdit.setImeOptions(33554435);
        this.searchEdit.setTextIsSelectable(false);
        this.searchEdit.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.SelectChatUserSheet$$ExternalSyntheticLambda9
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
                return this.f$0.lambda$new$0(textView, i2, keyEvent);
            }
        });
        this.searchEdit.addTextChangedListener(new C66622());
        this.searchEdit.setHint(LocaleController.getString(C2888R.string.SearchMembers));
        this.searchBox.addView(this.searchEdit, LayoutHelper.createFrame(-1, -1, 119));
        this.searchContainer.addView(this.searchBox, LayoutHelper.createFrame(-1, 40.0f, 23, 11.0f, 0.0f, 11.0f, 0.0f));
        ViewGroup viewGroup = this.containerView;
        FrameLayout frameLayout2 = this.searchContainer;
        int iMax = Math.max(0, viewGroup.indexOfChild(this.actionBar));
        int i2 = this.backgroundPaddingLeft;
        float f = AndroidUtilities.density;
        viewGroup.addView(frameLayout2, iMax, LayoutHelper.createFrame(-1, 64.0f, 55, i2 / f, 0.0f, i2 / f, 0.0f));
        this.emptySearchView = new FrameLayout(context) { // from class: org.telegram.ui.SelectChatUserSheet.3
            @Override // android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i3, int i4) {
                super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i3), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(240.0f), TLObject.FLAG_30));
            }
        };
        BackupImageView backupImageView = new BackupImageView(context);
        backupImageView.setImageDrawable(new RLottieDrawable(C2888R.raw.utyan_empty, "utyan_empty", AndroidUtilities.m1124dp(130.0f), AndroidUtilities.m1124dp(130.0f)));
        this.emptySearchView.addView(backupImageView, LayoutHelper.createFrame(130, 130, 17));
        this.admins = new ParticipantsList(this.currentAccount, chat.f1660id, new TLRPC.TL_channelParticipantsAdmins()).listen(new Runnable() { // from class: org.telegram.ui.SelectChatUserSheet$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.update();
            }
        });
        this.members = new ParticipantsList(this.currentAccount, chat.f1660id, new TLRPC.TL_channelParticipantsRecent()).listen(new Runnable() { // from class: org.telegram.ui.SelectChatUserSheet$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.update();
            }
        });
        this.search = new ParticipantsList(this.currentAccount, chat.f1660id, new TLRPC.TL_channelParticipantsSearch()).listen(new Runnable() { // from class: org.telegram.ui.SelectChatUserSheet$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.update();
            }
        });
        RecyclerListView recyclerListView = this.recyclerListView;
        int i3 = this.backgroundPaddingLeft;
        recyclerListView.setPadding(i3, 0, i3, AndroidUtilities.m1124dp(68.0f));
        this.recyclerListView.setClipToPadding(false);
        this.recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.SelectChatUserSheet$$ExternalSyntheticLambda11
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i4) {
                this.f$0.lambda$new$1(view, i4);
            }
        });
        DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator() { // from class: org.telegram.ui.SelectChatUserSheet.4
            @Override // androidx.recyclerview.widget.DefaultItemAnimator
            protected void onMoveAnimationUpdate(RecyclerView.ViewHolder viewHolder) {
                super.onMoveAnimationUpdate(viewHolder);
                SelectChatUserSheet.this.updateSearchY();
            }
        };
        defaultItemAnimator.setSupportsChangeAnimations(false);
        defaultItemAnimator.setDelayAnimations(false);
        defaultItemAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        defaultItemAnimator.setDurations(350L);
        this.recyclerListView.setItemAnimator(defaultItemAnimator);
        this.recyclerListView.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: org.telegram.ui.SelectChatUserSheet.5
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11) {
                SelectChatUserSheet.this.updateSearchY();
            }
        });
        this.recyclerListView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.SelectChatUserSheet.6
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i4, int i5) {
                if (((BottomSheetWithRecyclerListView) SelectChatUserSheet.this).recyclerListView.scrollingByUser) {
                    AndroidUtilities.hideKeyboard(SelectChatUserSheet.this.searchEdit);
                }
                SelectChatUserSheet.this.updateSearchY();
            }
        });
        View view = new View(getContext()) { // from class: org.telegram.ui.SelectChatUserSheet.7
            private final LinearGradient gradient;
            private final Paint paint = new Paint(1);

            {
                float fM1124dp = AndroidUtilities.m1124dp(68.0f);
                int i4 = Theme.key_dialogBackground;
                this.gradient = new LinearGradient(0.0f, 0.0f, 0.0f, fM1124dp, new int[]{Theme.multAlpha(SelectChatUserSheet.this.getThemedColor(i4), 0.0f), SelectChatUserSheet.this.getThemedColor(i4)}, new float[]{0.0f, 0.2f}, Shader.TileMode.CLAMP);
            }

            @Override // android.view.View
            protected void onDraw(Canvas canvas) {
                this.paint.setShader(this.gradient);
                canvas.drawRect(0.0f, 0.0f, getWidth(), getHeight(), this.paint);
            }
        };
        this.bottomGradient = view;
        this.containerView.addView(view, LayoutHelper.createFrame(-1, 68, 87));
        ButtonWithCounterView round = new ButtonWithCounterView(getContext(), resourcesProvider).setRound();
        this.button = round;
        round.setColor(getThemedColor(Theme.key_fill_RedNormal));
        updateButton(false);
        ViewGroup viewGroup2 = this.containerView;
        ButtonWithCounterView buttonWithCounterView = this.button;
        int i4 = this.backgroundPaddingLeft;
        float f2 = AndroidUtilities.density;
        viewGroup2.addView(buttonWithCounterView, LayoutHelper.createFrame(-1, 48.0f, 87, (i4 / f2) + 10.0f, 10.0f, (i4 / f2) + 10.0f, 10.0f));
        this.button.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.SelectChatUserSheet$$ExternalSyntheticLambda12
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$new$2(view2);
            }
        });
        UniversalAdapter universalAdapter = this.adapter;
        if (universalAdapter != null) {
            universalAdapter.update(false);
        }
        this.admins.load();
        this.members.load();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$0(TextView textView, int i, KeyEvent keyEvent) {
        if (keyEvent == null) {
            return false;
        }
        if ((keyEvent.getAction() != 1 || keyEvent.getKeyCode() != 84) && (keyEvent.getAction() != 0 || keyEvent.getKeyCode() != 66)) {
            return false;
        }
        AndroidUtilities.hideKeyboard(this.searchEdit);
        return false;
    }

    /* JADX INFO: renamed from: org.telegram.ui.SelectChatUserSheet$2 */
    class C66622 implements TextWatcher {
        private final Runnable updateSearchRunnable = new Runnable() { // from class: org.telegram.ui.SelectChatUserSheet$2$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$$0();
            }
        };

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        C66622() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (editable.length() <= 0) {
                AndroidUtilities.cancelRunOnUIThread(this.updateSearchRunnable);
                lambda$$0();
            } else {
                AndroidUtilities.cancelRunOnUIThread(this.updateSearchRunnable);
                AndroidUtilities.runOnUIThread(this.updateSearchRunnable, 300L);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: updateSearch, reason: merged with bridge method [inline-methods] */
        public void lambda$$0() {
            TLRPC.TL_channelParticipantsSearch tL_channelParticipantsSearch = new TLRPC.TL_channelParticipantsSearch();
            tL_channelParticipantsSearch.f1659q = SelectChatUserSheet.this.searchEdit.getText().toString();
            SelectChatUserSheet.this.search.setFilter(tL_channelParticipantsSearch);
            SelectChatUserSheet.this.update();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(View view, int i) {
        UItem item = this.adapter.getItem(i - 1);
        if (item == null) {
            return;
        }
        Object obj = item.object;
        if ((obj instanceof TLRPC.User) || (obj instanceof TLRPC.Chat)) {
            ((ProfileSearchCell) view).setChecked(true, true);
            this.selectedOwner = (TLObject) item.object;
            updateButton(true);
            this.adapter.update(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(View view) {
        if ((this.selectedOwner instanceof TLRPC.User) && !this.button.isLoading()) {
            this.button.setLoading(true);
            lambda$initTransfer$4((TLRPC.User) this.selectedOwner, null, null);
        }
    }

    private void updateButton(boolean z) {
        int i = ChatObject.isChannelAndNotMegaGroup(this.chat) ? C2888R.string.LeaveChannelAndAppoint : C2888R.string.LeaveGroupAndAppoint;
        this.button.setText(LocaleController.formatString(i, TextUtils.ellipsize(DialogObject.getShortTitle(this.selectedOwner), this.button.getTextPaint(), Math.max(AndroidUtilities.m1124dp(32.0f), ((this.button.getWidth() > 0 ? this.button.getWidth() : AndroidUtilities.displaySize.x - AndroidUtilities.m1124dp(20.0f)) - AndroidUtilities.m1124dp(16.0f)) - this.button.getTextPaint().measureText(LocaleController.getString(i))), TextUtils.TruncateAt.MIDDLE)), z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSearchY() {
        float y = -AndroidUtilities.m1124dp(64.0f);
        int i = 0;
        while (true) {
            if (i >= this.recyclerListView.getChildCount()) {
                break;
            }
            View childAt = this.recyclerListView.getChildAt(i);
            if (childAt.getId() == 3) {
                y = childAt.getY();
                break;
            }
            i++;
        }
        this.searchContainer.setTranslationY(y);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void update() {
        UniversalAdapter universalAdapter = this.adapter;
        if (universalAdapter != null) {
            universalAdapter.update(true);
        }
    }

    @Override // org.telegram.p029ui.Components.BottomSheetWithRecyclerListView
    protected RecyclerListView.SelectionAdapter createAdapter(RecyclerListView recyclerListView) {
        UniversalAdapter universalAdapter = new UniversalAdapter(recyclerListView, getContext(), this.currentAccount, 0, new Utilities.Callback2() { // from class: org.telegram.ui.SelectChatUserSheet$$ExternalSyntheticLambda8
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.fillItems((ArrayList) obj, (UniversalAdapter) obj2);
            }
        }, this.resourcesProvider);
        this.adapter = universalAdapter;
        return universalAdapter;
    }

    private boolean isInitialOwnerAdmin() {
        ArrayList arrayList = this.admins.users;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            if (DialogObject.getDialogId((TLObject) obj) == DialogObject.getDialogId(this.initialOwner)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fillItems(ArrayList arrayList, UniversalAdapter universalAdapter) {
        boolean z;
        boolean z2;
        if (this.admins == null || this.members == null) {
            return;
        }
        HashSet hashSet = new HashSet();
        hashSet.add(Long.valueOf(UserConfig.getInstance(this.currentAccount).getClientUserId()));
        arrayList.add(UItem.asSpace(3, AndroidUtilities.m1124dp(64.0f)));
        ParticipantsList participantsList = this.search;
        if (participantsList != null && !TextUtils.isEmpty(participantsList.filter.f1659q)) {
            ArrayList arrayList2 = this.search.users;
            int size = arrayList2.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList2.get(i);
                i++;
                TLObject tLObject = (TLObject) obj;
                if (!hashSet.contains(Long.valueOf(DialogObject.getDialogId(tLObject)))) {
                    hashSet.add(Long.valueOf(DialogObject.getDialogId(tLObject)));
                    arrayList.add(UItem.asProfileCell(tLObject).setChecked(DialogObject.getDialogId(tLObject) == DialogObject.getDialogId(this.selectedOwner)));
                }
            }
            if (this.search.loading) {
                arrayList.add(UItem.asFlicker(29));
                arrayList.add(UItem.asFlicker(29));
                arrayList.add(UItem.asFlicker(29));
            }
            if (arrayList.size() == 1) {
                arrayList.add(UItem.asCustom(this.emptySearchView));
                return;
            }
            return;
        }
        if (this.initialOwner == null || !isInitialOwnerAdmin() || hashSet.contains(Long.valueOf(DialogObject.getDialogId(this.initialOwner)))) {
            z = true;
        } else {
            arrayList.add(UItem.asGraySection(LocaleController.getString(ChatObject.isChannelAndNotMegaGroup(this.chat) ? C2888R.string.ChannelAdmins : C2888R.string.GroupAdmins)));
            hashSet.add(Long.valueOf(DialogObject.getDialogId(this.initialOwner)));
            arrayList.add(UItem.asProfileCell(this.initialOwner).setChecked(DialogObject.getDialogId(this.initialOwner) == DialogObject.getDialogId(this.selectedOwner)));
            z = false;
        }
        ArrayList arrayList3 = this.admins.users;
        int size2 = arrayList3.size();
        int i2 = 0;
        while (i2 < size2) {
            Object obj2 = arrayList3.get(i2);
            i2++;
            TLObject tLObject2 = (TLObject) obj2;
            if (!hashSet.contains(Long.valueOf(DialogObject.getDialogId(tLObject2)))) {
                if (z) {
                    arrayList.add(UItem.asGraySection(LocaleController.getString(ChatObject.isChannelAndNotMegaGroup(this.chat) ? C2888R.string.ChannelAdmins : C2888R.string.GroupAdmins)));
                    z = false;
                }
                hashSet.add(Long.valueOf(DialogObject.getDialogId(tLObject2)));
                arrayList.add(UItem.asProfileCell(tLObject2).setChecked(DialogObject.getDialogId(tLObject2) == DialogObject.getDialogId(this.selectedOwner)));
            }
        }
        if (this.admins.loading) {
            arrayList.add(UItem.asFlicker(29));
            arrayList.add(UItem.asFlicker(29));
            arrayList.add(UItem.asFlicker(29));
        }
        TLObject tLObject3 = this.initialOwner;
        if (tLObject3 == null || hashSet.contains(Long.valueOf(DialogObject.getDialogId(tLObject3)))) {
            z2 = true;
        } else {
            arrayList.add(UItem.asGraySection(LocaleController.getString(ChatObject.isChannelAndNotMegaGroup(this.chat) ? C2888R.string.ChannelSubscribers2 : C2888R.string.GroupMembers2)));
            hashSet.add(Long.valueOf(DialogObject.getDialogId(this.initialOwner)));
            arrayList.add(UItem.asProfileCell(this.initialOwner).setChecked(DialogObject.getDialogId(this.initialOwner) == DialogObject.getDialogId(this.selectedOwner)));
            z2 = false;
        }
        ArrayList arrayList4 = this.members.users;
        int size3 = arrayList4.size();
        int i3 = 0;
        while (i3 < size3) {
            Object obj3 = arrayList4.get(i3);
            i3++;
            TLObject tLObject4 = (TLObject) obj3;
            if (!hashSet.contains(Long.valueOf(DialogObject.getDialogId(tLObject4)))) {
                if (z2) {
                    arrayList.add(UItem.asGraySection(LocaleController.getString(ChatObject.isChannelAndNotMegaGroup(this.chat) ? C2888R.string.ChannelSubscribers2 : C2888R.string.GroupMembers2)));
                    z2 = false;
                }
                hashSet.add(Long.valueOf(DialogObject.getDialogId(tLObject4)));
                arrayList.add(UItem.asProfileCell(tLObject4).setChecked(DialogObject.getDialogId(tLObject4) == DialogObject.getDialogId(this.selectedOwner)));
            }
        }
        if (this.members.users.isEmpty() || !this.members.loading) {
            return;
        }
        arrayList.add(UItem.asFlicker(29));
        arrayList.add(UItem.asFlicker(29));
        arrayList.add(UItem.asFlicker(29));
    }

    @Override // org.telegram.p029ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface, org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    /* JADX INFO: renamed from: dismiss */
    public void lambda$new$0() {
        super.lambda$new$0();
        this.admins.detach();
        this.members.detach();
        this.search.detach();
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class ParticipantsList implements NotificationCenter.NotificationCenterDelegate {
        private boolean attached;
        private final TLRPC.Chat chat;
        private TLRPC.ChatFull chatInfo;
        private boolean clearOnLoad;
        private final int currentAccount;
        public boolean endReached;
        public TLRPC.ChannelParticipantsFilter filter;
        public boolean loading;
        public final ArrayList users = new ArrayList();
        private ArrayList listeners = new ArrayList();
        private int requestId = -1;

        public ParticipantsList(int i, long j, TLRPC.ChannelParticipantsFilter channelParticipantsFilter) {
            this.currentAccount = i;
            this.chat = MessagesController.getInstance(i).getChat(Long.valueOf(j));
            TLRPC.ChatFull chatFull = MessagesController.getInstance(i).getChatFull(j);
            this.chatInfo = chatFull;
            this.filter = channelParticipantsFilter;
            if (chatFull == null) {
                attach();
                MessagesController.getInstance(i).loadFullChat(j, 0, false);
            }
        }

        public ParticipantsList setFilter(TLRPC.ChannelParticipantsFilter channelParticipantsFilter) {
            boolean z;
            boolean z2;
            TLRPC.ChannelParticipantsFilter channelParticipantsFilter2 = this.filter;
            if ((channelParticipantsFilter2 instanceof TLRPC.TL_channelParticipantsSearch) && (channelParticipantsFilter instanceof TLRPC.TL_channelParticipantsSearch)) {
                z = !TextUtils.equals(channelParticipantsFilter2.f1659q, channelParticipantsFilter.f1659q);
                z2 = false;
            } else {
                z = true;
                z2 = true;
            }
            this.filter = channelParticipantsFilter;
            if (z) {
                if (z2) {
                    clear();
                } else {
                    this.clearOnLoad = true;
                    this.endReached = false;
                }
                load();
            }
            return this;
        }

        public ParticipantsList listen(Runnable runnable) {
            this.listeners.add(runnable);
            return this;
        }

        private void emit() {
            ArrayList arrayList = this.listeners;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                ((Runnable) obj).run();
            }
        }

        public void clear() {
            this.clearOnLoad = false;
            cancel();
            this.users.clear();
            this.endReached = false;
        }

        public void load() {
            if (this.loading || this.endReached) {
                return;
            }
            TLRPC.ChannelParticipantsFilter channelParticipantsFilter = this.filter;
            if ((channelParticipantsFilter instanceof TLRPC.TL_channelParticipantsSearch) && TextUtils.isEmpty(channelParticipantsFilter.f1659q)) {
                return;
            }
            this.loading = true;
            if (ChatObject.isChannel(this.chat)) {
                TLRPC.TL_channels_getParticipants tL_channels_getParticipants = new TLRPC.TL_channels_getParticipants();
                tL_channels_getParticipants.channel = MessagesController.getInputChannel(this.chat);
                tL_channels_getParticipants.filter = this.filter;
                tL_channels_getParticipants.limit = 30;
                tL_channels_getParticipants.offset = this.clearOnLoad ? 0 : this.users.size();
                ConnectionsManager.getInstance(this.currentAccount).sendRequestTyped(tL_channels_getParticipants, new BotForumHelper$$ExternalSyntheticLambda2(), new Utilities.Callback2() { // from class: org.telegram.ui.SelectChatUserSheet$ParticipantsList$$ExternalSyntheticLambda0
                    @Override // org.telegram.messenger.Utilities.Callback2
                    public final void run(Object obj, Object obj2) {
                        this.f$0.lambda$load$0((TLRPC.channels_ChannelParticipants) obj, (TLRPC.TL_error) obj2);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$load$0(TLRPC.channels_ChannelParticipants channels_channelparticipants, TLRPC.TL_error tL_error) {
            if (tL_error != null) {
                if (this.clearOnLoad) {
                    this.users.clear();
                    this.clearOnLoad = false;
                }
                this.endReached = true;
                this.loading = false;
                emit();
                return;
            }
            MessagesController.getInstance(this.currentAccount).putUsers(channels_channelparticipants.users, false);
            MessagesController.getInstance(this.currentAccount).putChats(channels_channelparticipants.chats, false);
            if (this.clearOnLoad) {
                this.users.clear();
                this.clearOnLoad = false;
            }
            ArrayList arrayList = channels_channelparticipants.participants;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                TLObject userOrChat = MessagesController.getInstance(this.currentAccount).getUserOrChat(DialogObject.getPeerDialogId(((TLRPC.ChannelParticipant) obj).peer));
                if (userOrChat != null) {
                    this.users.add(userOrChat);
                }
            }
            if (channels_channelparticipants.participants.size() < 30) {
                this.endReached = true;
            }
            this.loading = false;
            emit();
        }

        public void cancel() {
            if (this.requestId >= 0) {
                ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.requestId, true);
                this.requestId = -1;
            }
            this.loading = false;
        }

        @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
        public void didReceivedNotification(int i, int i2, Object... objArr) {
            if (i == NotificationCenter.chatInfoDidLoad) {
                TLRPC.ChatFull chatFull = (TLRPC.ChatFull) objArr[0];
                long j = chatFull.f1661id;
                TLRPC.Chat chat = this.chat;
                if (j == chat.f1660id) {
                    this.chatInfo = chatFull;
                    if (ChatObject.isChannel(chat) || !this.loading) {
                        return;
                    }
                    this.loading = false;
                    load();
                }
            }
        }

        public void attach() {
            if (this.attached) {
                return;
            }
            this.attached = true;
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.chatInfoDidLoad);
        }

        public void detach() {
            if (this.attached) {
                return;
            }
            this.attached = false;
            NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.chatInfoDidLoad);
            cancel();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initTransfer, reason: merged with bridge method [inline-methods] */
    public void lambda$initTransfer$4(final TLRPC.User user, final TLRPC.InputCheckPasswordSRP inputCheckPasswordSRP, final TwoStepVerificationActivity twoStepVerificationActivity) {
        if (getContext() != null) {
            this.context = getContext();
        }
        if (this.context == null) {
            return;
        }
        if (inputCheckPasswordSRP != null && !ChatObject.isChannel(this.chat)) {
            BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
            if (safeLastFragment == null) {
                return;
            }
            MessagesController.getInstance(this.currentAccount).convertToMegaGroup(this.context, this.chat.f1660id, safeLastFragment, new MessagesStorage.LongCallback() { // from class: org.telegram.ui.SelectChatUserSheet$$ExternalSyntheticLambda13
                @Override // org.telegram.messenger.MessagesStorage.LongCallback
                public final void run(long j) {
                    this.f$0.lambda$initTransfer$3(user, inputCheckPasswordSRP, twoStepVerificationActivity, j);
                }
            });
            return;
        }
        final TLRPC.TL_channels_editCreator tL_channels_editCreator = new TLRPC.TL_channels_editCreator();
        if (ChatObject.isChannel(this.chat)) {
            TLRPC.TL_inputChannel tL_inputChannel = new TLRPC.TL_inputChannel();
            tL_channels_editCreator.channel = tL_inputChannel;
            TLRPC.Chat chat = this.chat;
            tL_inputChannel.channel_id = chat.f1660id;
            tL_inputChannel.access_hash = chat.access_hash;
        } else {
            tL_channels_editCreator.channel = new TLRPC.TL_inputChannelEmpty();
        }
        tL_channels_editCreator.password = inputCheckPasswordSRP != null ? inputCheckPasswordSRP : new TLRPC.TL_inputCheckPasswordEmpty();
        tL_channels_editCreator.user_id = MessagesController.getInstance(this.currentAccount).getInputUser(user);
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_channels_editCreator, new RequestDelegate() { // from class: org.telegram.ui.SelectChatUserSheet$$ExternalSyntheticLambda14
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$initTransfer$13(inputCheckPasswordSRP, user, twoStepVerificationActivity, tL_channels_editCreator, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initTransfer$3(TLRPC.User user, TLRPC.InputCheckPasswordSRP inputCheckPasswordSRP, TwoStepVerificationActivity twoStepVerificationActivity, long j) {
        if (j != 0) {
            this.chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(j));
            lambda$initTransfer$4(user, inputCheckPasswordSRP, twoStepVerificationActivity);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initTransfer$13(final TLRPC.InputCheckPasswordSRP inputCheckPasswordSRP, final TLRPC.User user, final TwoStepVerificationActivity twoStepVerificationActivity, final TLRPC.TL_channels_editCreator tL_channels_editCreator, TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.SelectChatUserSheet$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$initTransfer$12(tL_error, inputCheckPasswordSRP, user, twoStepVerificationActivity, tL_channels_editCreator);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initTransfer$12(TLRPC.TL_error tL_error, TLRPC.InputCheckPasswordSRP inputCheckPasswordSRP, final TLRPC.User user, final TwoStepVerificationActivity twoStepVerificationActivity, TLRPC.TL_channels_editCreator tL_channels_editCreator) {
        int i;
        if (tL_error == null) {
            if (inputCheckPasswordSRP != null) {
                Runnable runnable = this.whenTransferred;
                if (runnable != null) {
                    runnable.run();
                }
                lambda$new$0();
                twoStepVerificationActivity.needHideProgress();
                twoStepVerificationActivity.finishFragment();
                return;
            }
            return;
        }
        if (this.context == null) {
            return;
        }
        if ("PASSWORD_HASH_INVALID".equals(tL_error.text)) {
            if (inputCheckPasswordSRP == null) {
                AlertDialog.Builder builder = new AlertDialog.Builder(this.context);
                builder.setTitle(LocaleController.getString(ChatObject.isChannelAndNotMegaGroup(this.chat) ? C2888R.string.EditAdminChannelTransfer : C2888R.string.EditAdminGroupTransfer));
                builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString(C2888R.string.EditAdminTransferReadyAlertText2, this.chat.title, UserObject.getFirstName(user))));
                builder.setPositiveButton(LocaleController.getString(C2888R.string.EditAdminTransferChangeOwner), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.SelectChatUserSheet$$ExternalSyntheticLambda0
                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                    public final void onClick(AlertDialog alertDialog, int i2) {
                        this.f$0.lambda$initTransfer$5(user, alertDialog, i2);
                    }
                });
                builder.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.SelectChatUserSheet$$ExternalSyntheticLambda1
                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                    public final void onClick(AlertDialog alertDialog, int i2) {
                        this.f$0.lambda$initTransfer$6(alertDialog, i2);
                    }
                });
                builder.show();
                return;
            }
            return;
        }
        if ("PASSWORD_MISSING".equals(tL_error.text) || tL_error.text.startsWith("PASSWORD_TOO_FRESH_") || tL_error.text.startsWith("SESSION_TOO_FRESH_")) {
            if (twoStepVerificationActivity != null) {
                twoStepVerificationActivity.needHideProgress();
            }
            AlertDialog.Builder builder2 = new AlertDialog.Builder(this.context);
            builder2.setTitle(LocaleController.getString(C2888R.string.EditAdminTransferAlertTitle));
            LinearLayout linearLayout = new LinearLayout(this.context);
            linearLayout.setPadding(AndroidUtilities.m1124dp(24.0f), AndroidUtilities.m1124dp(2.0f), AndroidUtilities.m1124dp(24.0f), 0);
            linearLayout.setOrientation(1);
            builder2.setView(linearLayout);
            TextView textView = new TextView(this.context);
            int i2 = Theme.key_dialogTextBlack;
            textView.setTextColor(Theme.getColor(i2));
            textView.setTextSize(1, 16.0f);
            textView.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
            if (ChatObject.isChannelAndNotMegaGroup(this.chat)) {
                textView.setText(AndroidUtilities.replaceTags(LocaleController.formatString(C2888R.string.EditChannelAdminTransferAlertText, UserObject.getFirstName(user))));
            } else {
                textView.setText(AndroidUtilities.replaceTags(LocaleController.formatString(C2888R.string.EditAdminTransferAlertText, UserObject.getFirstName(user))));
            }
            linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2));
            LinearLayout linearLayout2 = new LinearLayout(this.context);
            linearLayout2.setOrientation(0);
            linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-1, -2, 0.0f, 11.0f, 0.0f, 0.0f));
            ImageView imageView = new ImageView(this.context);
            imageView.setImageResource(C2888R.drawable.list_circle);
            imageView.setPadding(LocaleController.isRTL ? AndroidUtilities.m1124dp(11.0f) : 0, AndroidUtilities.m1124dp(9.0f), LocaleController.isRTL ? 0 : AndroidUtilities.m1124dp(11.0f), 0);
            int color = Theme.getColor(i2);
            PorterDuff.Mode mode = PorterDuff.Mode.MULTIPLY;
            imageView.setColorFilter(new PorterDuffColorFilter(color, mode));
            TextView textView2 = new TextView(this.context);
            textView2.setTextColor(Theme.getColor(i2));
            textView2.setTextSize(1, 16.0f);
            textView2.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
            textView2.setText(AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.EditAdminTransferAlertText1)));
            if (LocaleController.isRTL) {
                linearLayout2.addView(textView2, LayoutHelper.createLinear(-1, -2));
                linearLayout2.addView(imageView, LayoutHelper.createLinear(-2, -2, 5));
            } else {
                linearLayout2.addView(imageView, LayoutHelper.createLinear(-2, -2));
                linearLayout2.addView(textView2, LayoutHelper.createLinear(-1, -2));
            }
            LinearLayout linearLayout3 = new LinearLayout(this.context);
            linearLayout3.setOrientation(0);
            linearLayout.addView(linearLayout3, LayoutHelper.createLinear(-1, -2, 0.0f, 11.0f, 0.0f, 0.0f));
            ImageView imageView2 = new ImageView(this.context);
            imageView2.setImageResource(C2888R.drawable.list_circle);
            imageView2.setPadding(LocaleController.isRTL ? AndroidUtilities.m1124dp(11.0f) : 0, AndroidUtilities.m1124dp(9.0f), LocaleController.isRTL ? 0 : AndroidUtilities.m1124dp(11.0f), 0);
            imageView2.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i2), mode));
            TextView textView3 = new TextView(this.context);
            textView3.setTextColor(Theme.getColor(i2));
            textView3.setTextSize(1, 16.0f);
            textView3.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
            textView3.setText(AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.EditAdminTransferAlertText2)));
            if (LocaleController.isRTL) {
                linearLayout3.addView(textView3, LayoutHelper.createLinear(-1, -2));
                i = 5;
                linearLayout3.addView(imageView2, LayoutHelper.createLinear(-2, -2, 5));
            } else {
                i = 5;
                linearLayout3.addView(imageView2, LayoutHelper.createLinear(-2, -2));
                linearLayout3.addView(textView3, LayoutHelper.createLinear(-1, -2));
            }
            if ("PASSWORD_MISSING".equals(tL_error.text)) {
                builder2.setPositiveButton(LocaleController.getString(C2888R.string.EditAdminTransferSetPassword), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.SelectChatUserSheet$$ExternalSyntheticLambda2
                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                    public final void onClick(AlertDialog alertDialog, int i3) {
                        this.f$0.lambda$initTransfer$7(alertDialog, i3);
                    }
                });
                builder2.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.SelectChatUserSheet$$ExternalSyntheticLambda3
                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                    public final void onClick(AlertDialog alertDialog, int i3) {
                        this.f$0.lambda$initTransfer$8(alertDialog, i3);
                    }
                });
            } else {
                TextView textView4 = new TextView(this.context);
                textView4.setTextColor(Theme.getColor(i2));
                textView4.setTextSize(1, 16.0f);
                textView4.setGravity((LocaleController.isRTL ? i : 3) | 48);
                textView4.setText(LocaleController.getString(C2888R.string.EditAdminTransferAlertText3));
                linearLayout.addView(textView4, LayoutHelper.createLinear(-1, -2, 0.0f, 11.0f, 0.0f, 0.0f));
                builder2.setNegativeButton(LocaleController.getString(C2888R.string.f1606OK), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.SelectChatUserSheet$$ExternalSyntheticLambda4
                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                    public final void onClick(AlertDialog alertDialog, int i3) {
                        this.f$0.lambda$initTransfer$9(alertDialog, i3);
                    }
                });
            }
            builder2.show();
            return;
        }
        if ("SRP_ID_INVALID".equals(tL_error.text)) {
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(new TL_account.getPassword(), new RequestDelegate() { // from class: org.telegram.ui.SelectChatUserSheet$$ExternalSyntheticLambda5
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error2) {
                    this.f$0.lambda$initTransfer$11(twoStepVerificationActivity, user, tLObject, tL_error2);
                }
            }, 8);
            return;
        }
        if (tL_error.text.equals("CHANNELS_TOO_MUCH")) {
            if (this.context != null && !AccountInstance.getInstance(this.currentAccount).getUserConfig().isPremium()) {
                BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
                if (safeLastFragment == null) {
                    return;
                }
                showDialog(new LimitReachedBottomSheet(safeLastFragment, this.context, 5, this.currentAccount, null));
                return;
            }
            BaseFragment safeLastFragment2 = LaunchActivity.getSafeLastFragment();
            if (safeLastFragment2 == null) {
                return;
            }
            lambda$new$0();
            safeLastFragment2.presentFragment(new TooManyCommunitiesActivity(1));
            return;
        }
        if (twoStepVerificationActivity != null) {
            twoStepVerificationActivity.needHideProgress();
            twoStepVerificationActivity.finishFragment();
        }
        BaseFragment safeLastFragment3 = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment3 == null) {
            return;
        }
        AlertsCreator.showAddUserAlert(tL_error.text, safeLastFragment3, ChatObject.isChannelAndNotMegaGroup(this.chat), tL_channels_editCreator);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initTransfer$5(final TLRPC.User user, AlertDialog alertDialog, int i) {
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment == null) {
            return;
        }
        lambda$new$0();
        final TwoStepVerificationActivity twoStepVerificationActivity = new TwoStepVerificationActivity();
        twoStepVerificationActivity.setDelegate(0, new TwoStepVerificationActivity.TwoStepVerificationActivityDelegate() { // from class: org.telegram.ui.SelectChatUserSheet$$ExternalSyntheticLambda6
            @Override // org.telegram.ui.TwoStepVerificationActivity.TwoStepVerificationActivityDelegate
            public final void didEnterPassword(TLRPC.InputCheckPasswordSRP inputCheckPasswordSRP) {
                this.f$0.lambda$initTransfer$4(user, twoStepVerificationActivity, inputCheckPasswordSRP);
            }
        });
        safeLastFragment.presentFragment(twoStepVerificationActivity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initTransfer$6(AlertDialog alertDialog, int i) {
        this.button.setLoading(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initTransfer$7(AlertDialog alertDialog, int i) {
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment == null) {
            return;
        }
        lambda$new$0();
        safeLastFragment.presentFragment(new TwoStepVerificationSetupActivity(6, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initTransfer$8(AlertDialog alertDialog, int i) {
        this.button.setLoading(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initTransfer$9(AlertDialog alertDialog, int i) {
        this.button.setLoading(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initTransfer$11(final TwoStepVerificationActivity twoStepVerificationActivity, final TLRPC.User user, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.SelectChatUserSheet$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$initTransfer$10(tL_error, tLObject, twoStepVerificationActivity, user);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initTransfer$10(TLRPC.TL_error tL_error, TLObject tLObject, TwoStepVerificationActivity twoStepVerificationActivity, TLRPC.User user) {
        if (tL_error == null) {
            TL_account.Password password = (TL_account.Password) tLObject;
            twoStepVerificationActivity.setCurrentPasswordInfo(null, password);
            TwoStepVerificationActivity.initPasswordNewAlgo(password);
            lambda$initTransfer$4(user, twoStepVerificationActivity.getNewSrpPassword(), twoStepVerificationActivity);
        }
    }
}
