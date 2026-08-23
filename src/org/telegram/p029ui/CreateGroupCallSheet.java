package org.telegram.p029ui;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.text.SpannableStringBuilder;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.DefaultItemAnimator;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.BottomSheetWithRecyclerListView;
import org.telegram.p029ui.Components.BulletinFactory;
import org.telegram.p029ui.Components.ColoredImageSpan;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.LinkSpanDrawable;
import org.telegram.p029ui.Components.Premium.boosts.cells.selector.SelectorUserCell;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.p029ui.Components.ScaleStateListAnimator;
import org.telegram.p029ui.Components.TextHelper;
import org.telegram.p029ui.Components.UItem;
import org.telegram.p029ui.Components.UniversalAdapter;
import org.telegram.p029ui.Components.voip.VoIPHelper;
import org.telegram.p029ui.Stories.DarkThemeResourceProvider;
import org.telegram.p029ui.Stories.recorder.ButtonWithCounterView;
import org.telegram.p029ui.Stories.recorder.HintView2;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.p028tl.TL_phone;

/* JADX INFO: loaded from: classes6.dex */
public class CreateGroupCallSheet extends BottomSheetWithRecyclerListView {
    private UniversalAdapter adapter;
    private final FrameLayout buttonsContainer;
    private final LinearLayout buttonsLayout;
    private final ImageView closeButton;
    private boolean creatingCall;
    private final ArrayList participants;
    private final HashSet selectedParticipants;
    private final FrameLayout topView;
    private final LinearLayout topViewLayout;
    private final ButtonWithCounterView videoButton;
    private final ButtonWithCounterView voiceButton;

    public CreateGroupCallSheet(Context context, Collection collection) {
        super(context, null, false, false, false, new DarkThemeResourceProvider());
        ArrayList arrayList = new ArrayList();
        this.participants = arrayList;
        HashSet hashSet = new HashSet();
        this.selectedParticipants = hashSet;
        arrayList.addAll(collection);
        hashSet.addAll(collection);
        fixNavigationBar(getThemedColor(Theme.key_dialogBackground));
        this.drawDoubleNavigationBar = false;
        FrameLayout frameLayout = new FrameLayout(context);
        this.topView = frameLayout;
        LinearLayout linearLayout = new LinearLayout(context);
        this.topViewLayout = linearLayout;
        linearLayout.setOrientation(1);
        frameLayout.addView(linearLayout, LayoutHelper.createFrame(-1, -1, 119));
        ImageView imageView = new ImageView(context);
        this.closeButton = imageView;
        imageView.setImageResource(C2888R.drawable.ic_close_white);
        imageView.setColorFilter(new PorterDuffColorFilter(-8090220, PorterDuff.Mode.SRC_IN));
        frameLayout.addView(imageView, LayoutHelper.createFrame(24, 24.0f, 53, 0.0f, 14.0f, 14.0f, 0.0f));
        ScaleStateListAnimator.apply(imageView);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.CreateGroupCallSheet$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$0(view);
            }
        });
        FrameLayout frameLayout2 = new FrameLayout(context);
        frameLayout2.setBackground(Theme.createCircleDrawable(AndroidUtilities.m1124dp(80.0f), Theme.getColor(Theme.key_featuredStickers_addButton, this.resourcesProvider)));
        ImageView imageView2 = new ImageView(context);
        imageView2.setImageResource(C2888R.drawable.filled_calls_users);
        frameLayout2.addView(imageView2, LayoutHelper.createFrame(56, 56, 17));
        linearLayout.addView(frameLayout2, LayoutHelper.createLinear(80, 80, 1, 2, 21, 2, 13));
        int i = Theme.key_windowBackgroundWhiteBlackText;
        LinkSpanDrawable.LinksTextView linksTextViewMakeLinkTextView = TextHelper.makeLinkTextView(context, 20.0f, i, true, this.resourcesProvider);
        linksTextViewMakeLinkTextView.setText(LocaleController.getString(C2888R.string.GroupCallCreateTitle));
        linksTextViewMakeLinkTextView.setGravity(17);
        linearLayout.addView(linksTextViewMakeLinkTextView, LayoutHelper.createLinear(-1, -2, 1, 2, 0, 2, 4));
        LinkSpanDrawable.LinksTextView linksTextViewMakeLinkTextView2 = TextHelper.makeLinkTextView(context, 14.0f, i, false, this.resourcesProvider);
        linksTextViewMakeLinkTextView2.setText(AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.GroupCallCreateText)));
        linksTextViewMakeLinkTextView2.setGravity(17);
        linksTextViewMakeLinkTextView2.setMaxWidth(HintView2.cutInFancyHalf(linksTextViewMakeLinkTextView2.getText(), linksTextViewMakeLinkTextView2.getPaint()));
        linearLayout.addView(linksTextViewMakeLinkTextView2, LayoutHelper.createLinear(-1, -2, 1, 2, 0, 2, 23));
        UniversalAdapter universalAdapter = this.adapter;
        if (universalAdapter != null) {
            universalAdapter.update(false);
        }
        DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator();
        defaultItemAnimator.setSupportsChangeAnimations(false);
        defaultItemAnimator.setDelayAnimations(false);
        defaultItemAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        defaultItemAnimator.setDurations(350L);
        this.recyclerListView.setItemAnimator(defaultItemAnimator);
        this.recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListenerExtended() { // from class: org.telegram.ui.CreateGroupCallSheet$$ExternalSyntheticLambda2
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListenerExtended
            public /* synthetic */ boolean hasDoubleTap(View view, int i2) {
                return RecyclerListView.OnItemClickListenerExtended.CC.$default$hasDoubleTap(this, view, i2);
            }

            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListenerExtended
            public /* synthetic */ void onDoubleTap(View view, int i2, float f, float f2) {
                RecyclerListView.OnItemClickListenerExtended.CC.$default$onDoubleTap(this, view, i2, f, f2);
            }

            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListenerExtended
            public final void onItemClick(View view, int i2, float f, float f2) {
                this.f$0.lambda$new$1(view, i2, f, f2);
            }
        });
        FrameLayout frameLayout3 = new FrameLayout(context);
        this.buttonsContainer = frameLayout3;
        LinearLayout linearLayout2 = new LinearLayout(context);
        this.buttonsLayout = linearLayout2;
        linearLayout2.setOrientation(0);
        linearLayout2.setPadding(this.backgroundPaddingLeft + AndroidUtilities.m1124dp(14.0f), AndroidUtilities.m1124dp(14.0f), this.backgroundPaddingLeft + AndroidUtilities.m1124dp(14.0f), AndroidUtilities.m1124dp(14.0f));
        frameLayout3.addView(linearLayout2, LayoutHelper.createFrame(-1, -2, 87));
        ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(context, this.resourcesProvider);
        this.voiceButton = buttonWithCounterView;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) "x  ");
        spannableStringBuilder.setSpan(new ColoredImageSpan(C2888R.drawable.profile_phone), 0, 1, 33);
        spannableStringBuilder.append((CharSequence) LocaleController.getString(C2888R.string.GroupCallCreateVoice));
        buttonWithCounterView.setText(spannableStringBuilder, false);
        linearLayout2.addView(buttonWithCounterView, LayoutHelper.createLinear(-1, 48, 1.0f, 119, 0, 0, 6, 0));
        buttonWithCounterView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.CreateGroupCallSheet$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$2(view);
            }
        });
        ButtonWithCounterView buttonWithCounterView2 = new ButtonWithCounterView(context, this.resourcesProvider);
        this.videoButton = buttonWithCounterView2;
        SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder();
        spannableStringBuilder2.append((CharSequence) "x  ");
        spannableStringBuilder2.setSpan(new ColoredImageSpan(C2888R.drawable.profile_video), 0, 1, 33);
        spannableStringBuilder2.append((CharSequence) LocaleController.getString(C2888R.string.GroupCallCreateVideo));
        buttonWithCounterView2.setText(spannableStringBuilder2, false);
        linearLayout2.addView(buttonWithCounterView2, LayoutHelper.createLinear(-1, 48, 1.0f, 119, 6, 0, 0, 0));
        buttonWithCounterView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.CreateGroupCallSheet$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$3(view);
            }
        });
        this.containerView.addView(frameLayout3, LayoutHelper.createFrame(-1, -2, 87));
        RecyclerListView recyclerListView = this.recyclerListView;
        int i2 = this.backgroundPaddingLeft;
        recyclerListView.setPadding(i2, 0, i2, AndroidUtilities.m1124dp(76.0f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        lambda$new$0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(View view, int i, float f, float f2) {
        UItem item;
        Object obj;
        long j;
        if (this.creatingCall || (item = this.adapter.getItem(i - 1)) == null || (obj = item.object) == null) {
            return;
        }
        if (obj instanceof TLRPC.User) {
            j = ((TLRPC.User) obj).f1825id;
        } else if (!(obj instanceof TLRPC.Chat)) {
            return;
        } else {
            j = ((TLRPC.Chat) obj).f1660id;
        }
        if (this.selectedParticipants.contains(Long.valueOf(j))) {
            this.selectedParticipants.remove(Long.valueOf(j));
        } else {
            this.selectedParticipants.add(Long.valueOf(j));
        }
        if (view instanceof SelectorUserCell) {
            ((SelectorUserCell) view).setChecked(this.selectedParticipants.contains(Long.valueOf(j)), true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(View view) {
        createCall(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(View view) {
        createCall(true);
    }

    private void createCall(final boolean z) {
        if (this.creatingCall) {
            return;
        }
        this.creatingCall = true;
        final ButtonWithCounterView buttonWithCounterView = z ? this.videoButton : this.voiceButton;
        buttonWithCounterView.setLoading(true);
        final HashSet hashSet = new HashSet();
        hashSet.addAll(this.selectedParticipants);
        TL_phone.createConferenceCall createconferencecall = new TL_phone.createConferenceCall();
        createconferencecall.random_id = Utilities.random.nextInt();
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(createconferencecall, new RequestDelegate() { // from class: org.telegram.ui.CreateGroupCallSheet$$ExternalSyntheticLambda5
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$createCall$6(buttonWithCounterView, z, hashSet, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createCall$6(final ButtonWithCounterView buttonWithCounterView, final boolean z, final HashSet hashSet, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.CreateGroupCallSheet$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createCall$5(tLObject, buttonWithCounterView, z, hashSet, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createCall$5(TLObject tLObject, ButtonWithCounterView buttonWithCounterView, boolean z, HashSet hashSet, TLRPC.TL_error tL_error) {
        if (tLObject instanceof TLRPC.Updates) {
            final TLRPC.Updates updates = (TLRPC.Updates) tLObject;
            MessagesController.getInstance(this.currentAccount).putUsers(updates.users, false);
            MessagesController.getInstance(this.currentAccount).putChats(updates.chats, false);
            ArrayList arrayListFindUpdates = MessagesController.findUpdates(updates, TLRPC.TL_updateGroupCall.class);
            int size = arrayListFindUpdates.size();
            TLRPC.GroupCall groupCall = null;
            int i = 0;
            while (i < size) {
                Object obj = arrayListFindUpdates.get(i);
                i++;
                groupCall = ((TLRPC.TL_updateGroupCall) obj).call;
            }
            Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.CreateGroupCallSheet$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$createCall$4(updates);
                }
            });
            if (groupCall == null || LaunchActivity.instance == null) {
                this.creatingCall = false;
                buttonWithCounterView.setLoading(false);
                return;
            }
            TLRPC.TL_inputGroupCall tL_inputGroupCall = new TLRPC.TL_inputGroupCall();
            tL_inputGroupCall.f1682id = groupCall.f1675id;
            tL_inputGroupCall.access_hash = groupCall.access_hash;
            lambda$new$0();
            VoIPHelper.joinConference(LaunchActivity.instance, this.currentAccount, tL_inputGroupCall, z, groupCall, hashSet);
            return;
        }
        if (!(tLObject instanceof TL_phone.groupCall)) {
            if (tL_error != null) {
                BulletinFactory.m1245of(this.topBulletinContainer, this.resourcesProvider).showForError(tL_error);
                return;
            }
            return;
        }
        TL_phone.groupCall groupcall = (TL_phone.groupCall) tLObject;
        MessagesController.getInstance(this.currentAccount).putUsers(groupcall.users, false);
        MessagesController.getInstance(this.currentAccount).putChats(groupcall.chats, false);
        if (LaunchActivity.instance == null) {
            this.creatingCall = false;
            buttonWithCounterView.setLoading(false);
            return;
        }
        TLRPC.TL_inputGroupCall tL_inputGroupCall2 = new TLRPC.TL_inputGroupCall();
        TLRPC.GroupCall groupCall2 = groupcall.call;
        tL_inputGroupCall2.f1682id = groupCall2.f1675id;
        tL_inputGroupCall2.access_hash = groupCall2.access_hash;
        lambda$new$0();
        VoIPHelper.joinConference(LaunchActivity.instance, this.currentAccount, tL_inputGroupCall2, z, groupcall.call, hashSet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createCall$4(TLRPC.Updates updates) {
        MessagesController.getInstance(this.currentAccount).processUpdates(updates, false);
    }

    @Override // org.telegram.p029ui.Components.BottomSheetWithRecyclerListView
    protected CharSequence getTitle() {
        return LocaleController.getString(C2888R.string.GroupCallCreateTitle);
    }

    @Override // org.telegram.p029ui.Components.BottomSheetWithRecyclerListView
    protected RecyclerListView.SelectionAdapter createAdapter(RecyclerListView recyclerListView) {
        UniversalAdapter universalAdapter = new UniversalAdapter(recyclerListView, getContext(), this.currentAccount, 0, true, new Utilities.Callback2() { // from class: org.telegram.ui.CreateGroupCallSheet$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.fillItems((ArrayList) obj, (UniversalAdapter) obj2);
            }
        }, this.resourcesProvider);
        this.adapter = universalAdapter;
        return universalAdapter;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fillItems(ArrayList arrayList, UniversalAdapter universalAdapter) {
        arrayList.add(UItem.asCustom(this.topView));
        arrayList.add(UItem.asShadow(null));
        ArrayList arrayList2 = this.participants;
        if (arrayList2 == null || arrayList2.isEmpty()) {
            return;
        }
        arrayList.add(UItem.asHeader(LocaleController.getString(C2888R.string.GroupCallCreateAddMembers)));
        for (int i = 0; i < this.participants.size(); i++) {
            Long l = (Long) this.participants.get(i);
            l.longValue();
            TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(l);
            if (user == null) {
                return;
            }
            arrayList.add(SelectorUserCell.Factory.make(user).setChecked(this.selectedParticipants.contains(l)));
        }
    }
}
