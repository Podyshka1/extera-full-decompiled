package org.telegram.ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.util.Property;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.ScrollView;
import androidx.collection.LongSparseArray;
import androidx.core.graphics.ColorUtils;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.timepicker.TimeModel;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2573R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.DispatchQueue;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.BottomSheet;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Adapters.SearchAdapterHelper;
import org.telegram.ui.Cells.GroupCreateSectionCell;
import org.telegram.ui.Cells.GroupCreateUserCell;
import org.telegram.ui.Cells.ManageChatTextCell;
import org.telegram.ui.ChatActivity;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.UsersAlertBase;
import org.telegram.ui.Components.spoilers.SpoilersTextView;
import org.telegram.ui.GroupCreateActivity;
import org.telegram.ui.LaunchActivity;

/* JADX INFO: loaded from: classes7.dex */
public class InviteMembersBottomSheet extends UsersAlertBase implements NotificationCenter.NotificationCenterDelegate {
    private int additionalHeight;
    private long chatId;
    private ArrayList<TLObject> contacts;
    private int contactsEndRow;
    private int contactsStartRow;
    private int copyLinkRow;
    private AnimatorSet currentAnimation;
    private GroupCreateSpan currentDeletingSpan;
    private GroupCreateActivity.ContactsAddActivityDelegate delegate;
    private InviteMembersBottomSheetDelegate dialogsDelegate;
    private ArrayList<TLRPC.Dialog> dialogsServerOnly;
    private int emptyRow;
    boolean enterEventSent;
    private final FragmentFloatingButton floatingButton;
    private LongSparseArray<TLObject> ignoreUsers;
    TLRPC.TL_chatInviteExported invite;
    private int lastRow;
    boolean linkGenerating;
    private int maxSize;
    private int noContactsStubRow;
    private BaseFragment parentFragment;
    private int rowCount;
    private int scrollViewH;
    private SearchAdapter searchAdapter;
    private int searchAdditionalHeight;
    private LongSparseArray<GroupCreateSpan> selectedContacts;
    private View.OnClickListener spanClickListener;
    private boolean spanEnter;
    private final SpansContainer spansContainer;
    private ValueAnimator spansEnterAnimator;
    private float spansEnterProgress;
    private final ScrollView spansScrollView;
    private float touchSlop;

    /* JADX INFO: renamed from: y */
    float f956y;

    public interface InviteMembersBottomSheetDelegate {
        void didSelectDialogs(ArrayList<Long> arrayList);
    }

    public boolean canGenerateLink() {
        return true;
    }

    public InviteMembersBottomSheet(final Context context, int i, final LongSparseArray<TLObject> longSparseArray, final long j, final BaseFragment baseFragment, Theme.ResourcesProvider resourcesProvider) {
        super(context, false, i, resourcesProvider);
        this.contacts = new ArrayList<>();
        this.selectedContacts = new LongSparseArray<>();
        this.spansEnterProgress = 0.0f;
        this.spanClickListener = new View.OnClickListener() { // from class: org.telegram.ui.Components.InviteMembersBottomSheet.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                GroupCreateSpan groupCreateSpan = (GroupCreateSpan) view;
                boolean zIsDeleting = groupCreateSpan.isDeleting();
                InviteMembersBottomSheet inviteMembersBottomSheet = InviteMembersBottomSheet.this;
                if (zIsDeleting) {
                    inviteMembersBottomSheet.currentDeletingSpan = null;
                    InviteMembersBottomSheet.this.selectedContacts.remove(groupCreateSpan.getUid());
                    InviteMembersBottomSheet.this.spansContainer.removeSpan(groupCreateSpan);
                    InviteMembersBottomSheet.this.spansCountChanged(true);
                    AndroidUtilities.updateVisibleRows(InviteMembersBottomSheet.this.listView);
                    return;
                }
                if (inviteMembersBottomSheet.currentDeletingSpan != null) {
                    InviteMembersBottomSheet.this.currentDeletingSpan.cancelDeleteAnimation();
                }
                InviteMembersBottomSheet.this.currentDeletingSpan = groupCreateSpan;
                groupCreateSpan.startDeleteAnimation();
            }
        };
        this.ignoreUsers = longSparseArray;
        this.needSnapToTop = false;
        this.parentFragment = baseFragment;
        this.chatId = j;
        fixNavigationBar();
        this.searchView.searchEditText.setHint(LocaleController.getString(C2573R.string.SearchForChats));
        this.touchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        SearchAdapter searchAdapter = new SearchAdapter();
        this.searchAdapter = searchAdapter;
        this.searchListViewAdapter = searchAdapter;
        RecyclerListView recyclerListView = this.listView;
        ListAdapter listAdapter = new ListAdapter();
        this.listViewAdapter = listAdapter;
        recyclerListView.setAdapter(listAdapter);
        this.emptyView.showProgress(false, false);
        this.emptyView.setVisibility(8);
        ArrayList<TLRPC.TL_contact> arrayList = ContactsController.getInstance(i).contacts;
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(arrayList.get(i2).user_id));
            if (user != null && !user.self && !user.deleted) {
                this.contacts.add(user);
            }
        }
        SpansContainer spansContainer = new SpansContainer(context);
        this.spansContainer = spansContainer;
        this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Components.InviteMembersBottomSheet$$ExternalSyntheticLambda2
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i3) {
                this.f$0.lambda$new$0(j, baseFragment, longSparseArray, context, view, i3);
            }
        });
        this.listView.setItemAnimator(new ItemAnimator());
        updateRows();
        ScrollView scrollView = new ScrollView(context) { // from class: org.telegram.ui.Components.InviteMembersBottomSheet.2
            @Override // android.widget.ScrollView, android.widget.FrameLayout, android.view.View
            public void onMeasure(int i3, int i4) {
                int size = View.MeasureSpec.getSize(i3);
                int size2 = View.MeasureSpec.getSize(i4);
                if (AndroidUtilities.isTablet() || size2 > size) {
                    InviteMembersBottomSheet.this.maxSize = AndroidUtilities.dp(144.0f);
                } else {
                    InviteMembersBottomSheet.this.maxSize = AndroidUtilities.dp(56.0f);
                }
                super.onMeasure(i3, View.MeasureSpec.makeMeasureSpec(InviteMembersBottomSheet.this.maxSize, Integer.MIN_VALUE));
            }
        };
        this.spansScrollView = scrollView;
        scrollView.setVisibility(8);
        scrollView.setClipChildren(false);
        scrollView.addView(spansContainer);
        this.containerView.addView(scrollView);
        FragmentFloatingButton fragmentFloatingButton = new FragmentFloatingButton(context, resourcesProvider);
        this.floatingButton = fragmentFloatingButton;
        fragmentFloatingButton.setImageResource(C2573R.drawable.floating_check);
        fragmentFloatingButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.InviteMembersBottomSheet$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$2(context, j, view);
            }
        });
        fragmentFloatingButton.setButtonVisible(false, false);
        fragmentFloatingButton.setContentDescription(LocaleController.getString(C2573R.string.Next));
        this.containerView.addView(fragmentFloatingButton, FragmentFloatingButton.createDefaultLayoutParams());
        ((ViewGroup.MarginLayoutParams) this.emptyView.getLayoutParams()).topMargin = AndroidUtilities.dp(20.0f);
        ((ViewGroup.MarginLayoutParams) this.emptyView.getLayoutParams()).leftMargin = AndroidUtilities.dp(4.0f);
        ((ViewGroup.MarginLayoutParams) this.emptyView.getLayoutParams()).rightMargin = AndroidUtilities.dp(4.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00cb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$new$0(long j, BaseFragment baseFragment, LongSparseArray longSparseArray, Context context, View view, int i) {
        String str;
        TLRPC.TL_chatInviteExported tL_chatInviteExported;
        long j2;
        RecyclerView.Adapter adapter = this.listView.getAdapter();
        SearchAdapter searchAdapter = this.searchAdapter;
        TLObject object = null;
        if (adapter == searchAdapter) {
            int size = searchAdapter.searchResult.size();
            int size2 = this.searchAdapter.searchAdapterHelper.getGlobalSearch().size();
            int size3 = this.searchAdapter.searchAdapterHelper.getLocalServerSearch().size();
            int i2 = i - 1;
            if (i2 >= 0 && i2 < size) {
                object = (TLObject) this.searchAdapter.searchResult.get(i2);
            } else if (i2 >= size && i2 < size3 + size) {
                object = this.searchAdapter.searchAdapterHelper.getLocalServerSearch().get(i2 - size);
            } else if (i2 > size + size3 && i2 <= size2 + size + size3) {
                object = this.searchAdapter.searchAdapterHelper.getGlobalSearch().get(((i2 - size) - size3) - 1);
            }
            if (this.dialogsDelegate != null) {
                this.searchView.closeSearch();
            }
        } else if (i == this.copyLinkRow) {
            TLRPC.Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(j));
            TLRPC.ChatFull chatFull = MessagesController.getInstance(this.currentAccount).getChatFull(j);
            if (chat != null) {
                String publicUsername = ChatObject.getPublicUsername(chat);
                if (!TextUtils.isEmpty(publicUsername)) {
                    str = "https://" + MessagesController.getInstance(this.currentAccount).linkPrefix + "/" + publicUsername;
                } else if (chatFull != null && (tL_chatInviteExported = chatFull.exported_invite) != null) {
                    str = tL_chatInviteExported.link;
                } else {
                    generateLink();
                    str = null;
                }
                if (str == null) {
                    return;
                }
                ((ClipboardManager) ApplicationLoader.applicationContext.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("label", str));
                lambda$new$0();
                BulletinFactory.createCopyLinkBulletin(baseFragment).show();
            }
        } else if (i >= this.contactsStartRow && i < this.contactsEndRow) {
            object = ((ListAdapter) this.listViewAdapter).getObject(i);
        }
        if (object != null) {
            if (object instanceof TLRPC.User) {
                j2 = ((TLRPC.User) object).id;
            } else {
                j2 = object instanceof TLRPC.Chat ? -((TLRPC.Chat) object).id : 0L;
            }
            if (longSparseArray == null || longSparseArray.indexOfKey(j2) < 0) {
                if (j2 != 0) {
                    if (this.selectedContacts.indexOfKey(j2) >= 0) {
                        GroupCreateSpan groupCreateSpan = this.selectedContacts.get(j2);
                        this.selectedContacts.remove(j2);
                        this.spansContainer.removeSpan(groupCreateSpan);
                    } else {
                        GroupCreateSpan groupCreateSpan2 = new GroupCreateSpan(context, object);
                        groupCreateSpan2.setOnClickListener(this.spanClickListener);
                        this.selectedContacts.put(j2, groupCreateSpan2);
                        this.spansContainer.addSpan(groupCreateSpan2, true);
                    }
                }
                spansCountChanged(true);
                AndroidUtilities.updateVisibleRows(this.listView);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(Context context, long j, View view) {
        Activity activityFindActivity;
        if ((this.dialogsDelegate == null && this.selectedContacts.isEmpty()) || (activityFindActivity = AndroidUtilities.findActivity(context)) == null) {
            return;
        }
        int i = 0;
        if (this.dialogsDelegate != null) {
            ArrayList<Long> arrayList = new ArrayList<>();
            while (i < this.selectedContacts.size()) {
                arrayList.add(Long.valueOf(this.selectedContacts.keyAt(i)));
                i++;
            }
            this.dialogsDelegate.didSelectDialogs(arrayList);
            lambda$new$0();
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(activityFindActivity);
        builder.setTitle(LocaleController.formatPluralString("AddManyMembersAlertTitle", this.selectedContacts.size(), new Object[0]));
        StringBuilder sb = new StringBuilder();
        while (i < this.selectedContacts.size()) {
            TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.selectedContacts.keyAt(i)));
            if (user != null) {
                if (sb.length() > 0) {
                    sb.append(", ");
                }
                sb.append("**");
                sb.append(ContactsController.formatName(user.first_name, user.last_name));
                sb.append("**");
            }
            i++;
        }
        TLRPC.Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(j));
        if (this.selectedContacts.size() > 5) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(AndroidUtilities.replaceTags(LocaleController.formatPluralString("AddManyMembersAlertNamesText", this.selectedContacts.size(), chat.title)));
            String str = String.format(TimeModel.NUMBER_FORMAT, Integer.valueOf(this.selectedContacts.size()));
            int iIndexOf = TextUtils.indexOf(spannableStringBuilder, str);
            if (iIndexOf >= 0) {
                spannableStringBuilder.setSpan(new TypefaceSpan(AndroidUtilities.bold()), iIndexOf, str.length() + iIndexOf, 33);
            }
            builder.setMessage(spannableStringBuilder);
        } else {
            builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("AddMembersAlertNamesText", C2573R.string.AddMembersAlertNamesText, sb, chat.title)));
        }
        builder.setPositiveButton(LocaleController.getString(C2573R.string.Add), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.Components.InviteMembersBottomSheet$$ExternalSyntheticLambda5
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i2) {
                this.f$0.lambda$new$1(alertDialog, i2);
            }
        });
        builder.setNegativeButton(LocaleController.getString(C2573R.string.Cancel), null);
        builder.create();
        builder.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(AlertDialog alertDialog, int i) {
        onAddToGroupDone(0);
    }

    private void onAddToGroupDone(int i) {
        ArrayList<TLRPC.User> arrayList = new ArrayList<>();
        for (int i2 = 0; i2 < this.selectedContacts.size(); i2++) {
            arrayList.add(MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.selectedContacts.keyAt(i2))));
        }
        GroupCreateActivity.ContactsAddActivityDelegate contactsAddActivityDelegate = this.delegate;
        if (contactsAddActivityDelegate != null) {
            contactsAddActivityDelegate.didSelectUsers(arrayList, i);
        }
        lambda$new$0();
    }

    @Override // org.telegram.ui.Components.UsersAlertBase, org.telegram.ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface, org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    /* JADX INFO: renamed from: dismiss */
    public void lambda$new$0() {
        super.lambda$new$0();
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.dialogsNeedReload);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0136  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setSelectedContacts(ArrayList<Long> arrayList) {
        float fMax;
        int i;
        int i2;
        int iMax;
        Object user;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            Long l = arrayList.get(i3);
            long jLongValue = l.longValue();
            boolean zIsChatDialog = DialogObject.isChatDialog(jLongValue);
            int i4 = this.currentAccount;
            if (zIsChatDialog) {
                user = MessagesController.getInstance(i4).getChat(Long.valueOf(-jLongValue));
            } else {
                user = MessagesController.getInstance(i4).getUser(l);
            }
            GroupCreateSpan groupCreateSpan = new GroupCreateSpan(this.spansContainer.getContext(), user);
            this.spansContainer.addSpan(groupCreateSpan, false);
            groupCreateSpan.setOnClickListener(this.spanClickListener);
        }
        spansCountChanged(false);
        int childCount = this.spansContainer.getChildCount();
        Point point = AndroidUtilities.displaySize;
        boolean z = point.x < point.y;
        if (AndroidUtilities.isTablet() || z) {
            this.maxSize = AndroidUtilities.dp(144.0f);
        } else {
            this.maxSize = AndroidUtilities.dp(56.0f);
        }
        if (AndroidUtilities.isTablet()) {
            Point point2 = AndroidUtilities.displaySize;
            fMax = Math.min(point2.x, point2.y) * 0.8f;
        } else {
            if (z) {
                i = AndroidUtilities.displaySize.x;
                int iDp = i - AndroidUtilities.dp(26.0f);
                int iDp2 = AndroidUtilities.dp(10.0f);
                int measuredWidth = 0;
                for (i2 = 0; i2 < childCount; i2++) {
                    View childAt = this.spansContainer.getChildAt(i2);
                    if (childAt instanceof GroupCreateSpan) {
                        childAt.measure(View.MeasureSpec.makeMeasureSpec(i, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(32.0f), TLObject.FLAG_30));
                        if (childAt.getMeasuredWidth() + measuredWidth > iDp) {
                            iDp2 += childAt.getMeasuredHeight() + AndroidUtilities.dp(8.0f);
                            measuredWidth = 0;
                        }
                        measuredWidth += childAt.getMeasuredWidth() + AndroidUtilities.dp(9.0f);
                    }
                }
                int iDp3 = iDp2 + AndroidUtilities.dp(42.0f);
                if (this.dialogsDelegate == null) {
                    iMax = this.spanEnter ? Math.min(this.maxSize, iDp3) : 0;
                } else {
                    iMax = Math.max(0, Math.min(this.maxSize, iDp3) - AndroidUtilities.dp(52.0f));
                }
                int i5 = this.searchAdditionalHeight;
                int iDp4 = this.selectedContacts.size() > 0 ? AndroidUtilities.dp(56.0f) : 0;
                this.searchAdditionalHeight = iDp4;
                if (iMax == this.additionalHeight || i5 != iDp4) {
                    this.additionalHeight = iMax;
                }
                return;
            }
            fMax = Math.max(AndroidUtilities.displaySize.x * 0.8f, Math.min(AndroidUtilities.dp(480.0f), AndroidUtilities.displaySize.x));
        }
        i = (int) fMax;
        int iDp5 = i - AndroidUtilities.dp(26.0f);
        int iDp22 = AndroidUtilities.dp(10.0f);
        int measuredWidth2 = 0;
        while (i2 < childCount) {
        }
        int iDp32 = iDp22 + AndroidUtilities.dp(42.0f);
        if (this.dialogsDelegate == null) {
        }
        int i52 = this.searchAdditionalHeight;
        if (this.selectedContacts.size() > 0) {
        }
        this.searchAdditionalHeight = iDp4;
        if (iMax == this.additionalHeight) {
        }
        this.additionalHeight = iMax;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void spansCountChanged(boolean z) {
        boolean z2 = true;
        final boolean z3 = this.selectedContacts.size() > 0;
        if (this.spanEnter != z3) {
            ValueAnimator valueAnimator = this.spansEnterAnimator;
            if (valueAnimator != null) {
                valueAnimator.removeAllListeners();
                this.spansEnterAnimator.cancel();
            }
            this.spanEnter = z3;
            if (z3) {
                this.spansScrollView.setVisibility(0);
            }
            if (z) {
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.spansEnterProgress, z3 ? 1.0f : 0.0f);
                this.spansEnterAnimator = valueAnimatorOfFloat;
                valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.InviteMembersBottomSheet$$ExternalSyntheticLambda4
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        this.f$0.lambda$spansCountChanged$3(valueAnimator2);
                    }
                });
                this.spansEnterAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.InviteMembersBottomSheet.3
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        InviteMembersBottomSheet.this.spansEnterProgress = z3 ? 1.0f : 0.0f;
                        ((BottomSheet) InviteMembersBottomSheet.this).containerView.invalidate();
                        if (z3) {
                            return;
                        }
                        InviteMembersBottomSheet.this.spansScrollView.setVisibility(8);
                    }
                });
                this.spansEnterAnimator.setDuration(150L);
                this.spansEnterAnimator.start();
            } else {
                this.spansEnterProgress = z3 ? 1.0f : 0.0f;
                this.containerView.invalidate();
                if (!z3) {
                    this.spansScrollView.setVisibility(8);
                }
            }
            FragmentFloatingButton fragmentFloatingButton = this.floatingButton;
            if (!this.spanEnter && this.dialogsDelegate == null) {
                z2 = false;
            }
            fragmentFloatingButton.setButtonVisible(z2, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$spansCountChanged$3(ValueAnimator valueAnimator) {
        this.spansEnterProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.containerView.invalidate();
    }

    private void updateRows() {
        this.contactsStartRow = -1;
        this.contactsEndRow = -1;
        this.copyLinkRow = -1;
        this.noContactsStubRow = -1;
        this.rowCount = 1;
        this.emptyRow = 0;
        if (this.dialogsDelegate == null) {
            if (hasLink()) {
                int i = this.rowCount;
                this.rowCount = i + 1;
                this.copyLinkRow = i;
            }
            int size = this.contacts.size();
            int i2 = this.rowCount;
            if (size != 0) {
                this.contactsStartRow = i2;
                int size2 = i2 + this.contacts.size();
                this.rowCount = size2;
                this.contactsEndRow = size2;
            } else {
                this.rowCount = i2 + 1;
                this.noContactsStubRow = i2;
            }
        } else {
            int size3 = this.dialogsServerOnly.size();
            int i3 = this.rowCount;
            if (size3 != 0) {
                this.contactsStartRow = i3;
                int size4 = i3 + this.dialogsServerOnly.size();
                this.rowCount = size4;
                this.contactsEndRow = size4;
            } else {
                this.rowCount = i3 + 1;
                this.noContactsStubRow = i3;
            }
        }
        int i4 = this.rowCount;
        this.rowCount = i4 + 1;
        this.lastRow = i4;
    }

    public boolean hasLink() {
        TLRPC.Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(this.chatId));
        TLRPC.ChatFull chatFull = MessagesController.getInstance(this.currentAccount).getChatFull(this.chatId);
        if (chat != null && !TextUtils.isEmpty(ChatObject.getPublicUsername(chat))) {
            return true;
        }
        if (chatFull == null || chatFull.exported_invite == null) {
            return canGenerateLink();
        }
        return true;
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.dialogsNeedReload && this.dialogsDelegate != null && this.dialogsServerOnly.isEmpty()) {
            this.dialogsServerOnly = new ArrayList<>(MessagesController.getInstance(this.currentAccount).dialogsServerOnly);
            this.listViewAdapter.notifyDataSetChanged();
        }
    }

    public class ListAdapter extends RecyclerListView.SelectionAdapter {
        private ListAdapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View groupCreateUserCell;
            Context context = viewGroup.getContext();
            if (i != 2) {
                int i2 = 0;
                if (i == 3) {
                    groupCreateUserCell = new GroupCreateUserCell(context, 1, 0, InviteMembersBottomSheet.this.dialogsDelegate != null);
                } else if (i == 4) {
                    groupCreateUserCell = new View(context);
                } else if (i != 5) {
                    ManageChatTextCell manageChatTextCell = new ManageChatTextCell(context);
                    manageChatTextCell.setText(LocaleController.getString(C2573R.string.VoipGroupCopyInviteLink), null, C2573R.drawable.msg_link, 7, true);
                    int i3 = Theme.key_dialogTextBlue2;
                    manageChatTextCell.setColors(i3, i3);
                    groupCreateUserCell = manageChatTextCell;
                } else {
                    StickerEmptyView stickerEmptyView = new StickerEmptyView(context, null, i2) { // from class: org.telegram.ui.Components.InviteMembersBottomSheet.ListAdapter.2
                        @Override // org.telegram.ui.Components.StickerEmptyView, android.view.ViewGroup, android.view.View
                        public void onAttachedToWindow() {
                            super.onAttachedToWindow();
                            this.stickerView.getImageReceiver().startAnimation();
                        }
                    };
                    stickerEmptyView.setLayoutParams(new RecyclerView.LayoutParams(-1, -1));
                    stickerEmptyView.subtitle.setVisibility(8);
                    InviteMembersBottomSheetDelegate inviteMembersBottomSheetDelegate = InviteMembersBottomSheet.this.dialogsDelegate;
                    SpoilersTextView spoilersTextView = stickerEmptyView.title;
                    if (inviteMembersBottomSheetDelegate != null) {
                        spoilersTextView.setText(LocaleController.getString(C2573R.string.FilterNoChats));
                    } else {
                        spoilersTextView.setText(LocaleController.getString(C2573R.string.NoContacts));
                    }
                    stickerEmptyView.setAnimateLayoutChange(true);
                    groupCreateUserCell = stickerEmptyView;
                }
            } else {
                groupCreateUserCell = new View(context) { // from class: org.telegram.ui.Components.InviteMembersBottomSheet.ListAdapter.1
                    @Override // android.view.View
                    public void onMeasure(int i4, int i5) {
                        super.onMeasure(i4, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(48.0f) + InviteMembersBottomSheet.this.additionalHeight, TLObject.FLAG_30));
                    }
                };
            }
            return new RecyclerListView.Holder(groupCreateUserCell);
        }

        public TLObject getObject(int i) {
            InviteMembersBottomSheetDelegate inviteMembersBottomSheetDelegate = InviteMembersBottomSheet.this.dialogsDelegate;
            InviteMembersBottomSheet inviteMembersBottomSheet = InviteMembersBottomSheet.this;
            if (inviteMembersBottomSheetDelegate != null) {
                TLRPC.Dialog dialog = (TLRPC.Dialog) inviteMembersBottomSheet.dialogsServerOnly.get(i - InviteMembersBottomSheet.this.contactsStartRow);
                boolean zIsUserDialog = DialogObject.isUserDialog(dialog.id);
                InviteMembersBottomSheet inviteMembersBottomSheet2 = InviteMembersBottomSheet.this;
                return zIsUserDialog ? MessagesController.getInstance(((BottomSheet) inviteMembersBottomSheet2).currentAccount).getUser(Long.valueOf(dialog.id)) : MessagesController.getInstance(((BottomSheet) inviteMembersBottomSheet2).currentAccount).getChat(Long.valueOf(-dialog.id));
            }
            return (TLObject) inviteMembersBottomSheet.contacts.get(i - InviteMembersBottomSheet.this.contactsStartRow);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            long j;
            long j2;
            int itemViewType = viewHolder.getItemViewType();
            if (itemViewType == 2) {
                viewHolder.itemView.requestLayout();
                return;
            }
            if (itemViewType != 3) {
                return;
            }
            GroupCreateUserCell groupCreateUserCell = (GroupCreateUserCell) viewHolder.itemView;
            TLObject object = getObject(i);
            Object object2 = groupCreateUserCell.getObject();
            if (object2 instanceof TLRPC.User) {
                j = ((TLRPC.User) object2).id;
            } else {
                j = object2 instanceof TLRPC.Chat ? -((TLRPC.Chat) object2).id : 0L;
            }
            groupCreateUserCell.setObject(object, null, null, i != InviteMembersBottomSheet.this.contactsEndRow);
            if (object instanceof TLRPC.User) {
                j2 = ((TLRPC.User) object).id;
            } else {
                j2 = object instanceof TLRPC.Chat ? -((TLRPC.Chat) object).id : 0L;
            }
            if (j2 != 0) {
                if (InviteMembersBottomSheet.this.ignoreUsers != null && InviteMembersBottomSheet.this.ignoreUsers.indexOfKey(j2) >= 0) {
                    groupCreateUserCell.setChecked(true, false);
                    groupCreateUserCell.setCheckBoxEnabled(false);
                } else {
                    groupCreateUserCell.setChecked(InviteMembersBottomSheet.this.selectedContacts.indexOfKey(j2) >= 0, j == j2);
                    groupCreateUserCell.setCheckBoxEnabled(true);
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i == InviteMembersBottomSheet.this.copyLinkRow) {
                return 1;
            }
            if (i == InviteMembersBottomSheet.this.emptyRow) {
                return 2;
            }
            if (i >= InviteMembersBottomSheet.this.contactsStartRow && i < InviteMembersBottomSheet.this.contactsEndRow) {
                return 3;
            }
            if (i == InviteMembersBottomSheet.this.lastRow) {
                return 4;
            }
            return i == InviteMembersBottomSheet.this.noContactsStubRow ? 5 : 0;
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return viewHolder.getItemViewType() == 3 || viewHolder.getItemViewType() == 1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return InviteMembersBottomSheet.this.rowCount;
        }
    }

    public class SearchAdapter extends RecyclerListView.SelectionAdapter {
        private int currentItemsCount;
        private final SearchAdapterHelper searchAdapterHelper;
        private ArrayList<Object> searchResult = new ArrayList<>();
        private ArrayList<CharSequence> searchResultNames = new ArrayList<>();
        private Runnable searchRunnable;

        public SearchAdapter() {
            SearchAdapterHelper searchAdapterHelper = new SearchAdapterHelper(false);
            this.searchAdapterHelper = searchAdapterHelper;
            searchAdapterHelper.setDelegate(new SearchAdapterHelper.SearchAdapterHelperDelegate() { // from class: org.telegram.ui.Components.InviteMembersBottomSheet$SearchAdapter$$ExternalSyntheticLambda0
                @Override // org.telegram.ui.Adapters.SearchAdapterHelper.SearchAdapterHelperDelegate
                public final void onDataSetChanged(int i) {
                    this.f$0.lambda$new$0(i);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(int i) {
            InviteMembersBottomSheet.this.showItemsAnimated(this.currentItemsCount - 1);
            if (this.searchRunnable == null && !this.searchAdapterHelper.isSearchInProgress() && getItemCount() <= 2) {
                InviteMembersBottomSheet.this.emptyView.showProgress(false, true);
            }
            notifyDataSetChanged();
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return viewHolder.getItemViewType() == 1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View groupCreateUserCell;
            Context context = viewGroup.getContext();
            if (i == 1) {
                groupCreateUserCell = new GroupCreateUserCell(context, 1, 0, false);
            } else if (i == 2) {
                groupCreateUserCell = new View(context) { // from class: org.telegram.ui.Components.InviteMembersBottomSheet.SearchAdapter.1
                    @Override // android.view.View
                    public void onMeasure(int i2, int i3) {
                        super.onMeasure(i2, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(48.0f) + InviteMembersBottomSheet.this.additionalHeight + InviteMembersBottomSheet.this.searchAdditionalHeight, TLObject.FLAG_30));
                    }
                };
            } else if (i != 4) {
                groupCreateUserCell = new GroupCreateSectionCell(context);
            } else {
                groupCreateUserCell = new View(context);
            }
            return new RecyclerListView.Holder(groupCreateUserCell);
        }

        /* JADX WARN: Removed duplicated region for block: B:39:0x00af  */
        /* JADX WARN: Removed duplicated region for block: B:55:0x00fc  */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            TLObject tLObject;
            CharSequence charSequence;
            long j;
            long j2;
            String publicUsername;
            int itemViewType = viewHolder.getItemViewType();
            if (itemViewType == 0) {
                ((GroupCreateSectionCell) viewHolder.itemView).setText(LocaleController.getString(C2573R.string.GlobalSearch));
                return;
            }
            if (itemViewType != 1) {
                if (itemViewType != 2) {
                    return;
                }
                viewHolder.itemView.requestLayout();
                return;
            }
            GroupCreateUserCell groupCreateUserCell = (GroupCreateUserCell) viewHolder.itemView;
            int size = this.searchResult.size();
            int size2 = this.searchAdapterHelper.getGlobalSearch().size();
            int size3 = this.searchAdapterHelper.getLocalServerSearch().size();
            int i2 = i - 1;
            CharSequence charSequence2 = null;
            if (i2 >= 0 && i2 < size) {
                tLObject = (TLObject) this.searchResult.get(i2);
            } else if (i2 >= size && i2 < size3 + size) {
                tLObject = this.searchAdapterHelper.getLocalServerSearch().get(i2 - size);
            } else {
                tLObject = (i2 <= size + size3 || i2 > (size2 + size) + size3) ? null : this.searchAdapterHelper.getGlobalSearch().get(((i2 - size) - size3) - 1);
            }
            if (tLObject == null) {
                charSequence = null;
            } else {
                if (tLObject instanceof TLRPC.User) {
                    publicUsername = ((TLRPC.User) tLObject).username;
                } else {
                    publicUsername = ChatObject.getPublicUsername((TLRPC.Chat) tLObject);
                }
                if (i2 < size) {
                    charSequence = this.searchResultNames.get(i2);
                    if (charSequence == null || TextUtils.isEmpty(publicUsername)) {
                        charSequence2 = charSequence;
                        charSequence = null;
                    } else {
                        if (!charSequence.toString().startsWith("@" + publicUsername)) {
                        }
                    }
                } else if (i2 > size && !TextUtils.isEmpty(publicUsername)) {
                    String lastFoundUsername = this.searchAdapterHelper.getLastFoundUsername();
                    if (lastFoundUsername.startsWith("@")) {
                        lastFoundUsername = lastFoundUsername.substring(1);
                    }
                    try {
                        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                        spannableStringBuilder.append((CharSequence) "@");
                        spannableStringBuilder.append((CharSequence) publicUsername);
                        int iIndexOfIgnoreCase = AndroidUtilities.indexOfIgnoreCase(publicUsername, lastFoundUsername);
                        if (iIndexOfIgnoreCase != -1) {
                            int length = lastFoundUsername.length();
                            if (iIndexOfIgnoreCase == 0) {
                                length++;
                            } else {
                                iIndexOfIgnoreCase++;
                            }
                            spannableStringBuilder.setSpan(new ForegroundColorSpan(Theme.getColor(Theme.key_windowBackgroundWhiteBlueText4)), iIndexOfIgnoreCase, length + iIndexOfIgnoreCase, 33);
                        }
                        charSequence = spannableStringBuilder;
                    } catch (Exception unused) {
                        charSequence = publicUsername;
                    }
                }
            }
            Object object = groupCreateUserCell.getObject();
            if (object instanceof TLRPC.User) {
                j = ((TLRPC.User) object).id;
            } else {
                j = object instanceof TLRPC.Chat ? -((TLRPC.Chat) object).id : 0L;
            }
            groupCreateUserCell.setObject(tLObject, charSequence2, charSequence);
            if (tLObject instanceof TLRPC.User) {
                j2 = ((TLRPC.User) tLObject).id;
            } else {
                j2 = tLObject instanceof TLRPC.Chat ? -((TLRPC.Chat) tLObject).id : 0L;
            }
            if (j2 != 0) {
                if (InviteMembersBottomSheet.this.ignoreUsers != null && InviteMembersBottomSheet.this.ignoreUsers.indexOfKey(j2) >= 0) {
                    groupCreateUserCell.setChecked(true, j == j2);
                    groupCreateUserCell.setCheckBoxEnabled(false);
                } else {
                    groupCreateUserCell.setChecked(InviteMembersBottomSheet.this.selectedContacts.indexOfKey(j2) >= 0, j == j2);
                    groupCreateUserCell.setCheckBoxEnabled(true);
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i == 0) {
                return 2;
            }
            if (i == this.currentItemsCount - 1) {
                return 4;
            }
            return i + (-1) == this.searchResult.size() + this.searchAdapterHelper.getLocalServerSearch().size() ? 0 : 1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            int size = this.searchResult.size();
            int size2 = this.searchAdapterHelper.getLocalServerSearch().size();
            int size3 = this.searchAdapterHelper.getGlobalSearch().size();
            int i = size + size2;
            if (size3 != 0) {
                i += size3 + 1;
            }
            int i2 = i + 2;
            this.currentItemsCount = i2;
            return i2;
        }

        private void updateSearchResults(final ArrayList<Object> arrayList, final ArrayList<CharSequence> arrayList2) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.InviteMembersBottomSheet$SearchAdapter$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$updateSearchResults$1(arrayList, arrayList2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$updateSearchResults$1(ArrayList arrayList, ArrayList arrayList2) {
            this.searchRunnable = null;
            this.searchResult = arrayList;
            this.searchResultNames = arrayList2;
            this.searchAdapterHelper.mergeResults(arrayList);
            InviteMembersBottomSheet.this.showItemsAnimated(this.currentItemsCount - 1);
            notifyDataSetChanged();
            if (this.searchAdapterHelper.isSearchInProgress() || getItemCount() > 2) {
                return;
            }
            InviteMembersBottomSheet.this.emptyView.showProgress(false, true);
        }

        public void searchDialogs(final String str) {
            if (this.searchRunnable != null) {
                Utilities.searchQueue.cancelRunnable(this.searchRunnable);
                this.searchRunnable = null;
            }
            this.searchResult.clear();
            this.searchResultNames.clear();
            this.searchAdapterHelper.mergeResults(null);
            this.searchAdapterHelper.queryServerSearch(null, true, false, false, false, false, 0L, false, 0, 0);
            notifyDataSetChanged();
            boolean zIsEmpty = TextUtils.isEmpty(str);
            InviteMembersBottomSheet inviteMembersBottomSheet = InviteMembersBottomSheet.this;
            if (!zIsEmpty) {
                RecyclerView.Adapter adapter = inviteMembersBottomSheet.listView.getAdapter();
                InviteMembersBottomSheet inviteMembersBottomSheet2 = InviteMembersBottomSheet.this;
                RecyclerView.Adapter adapter2 = inviteMembersBottomSheet2.searchListViewAdapter;
                if (adapter != adapter2) {
                    inviteMembersBottomSheet2.listView.setAdapter(adapter2);
                }
                InviteMembersBottomSheet.this.emptyView.showProgress(true, false);
                DispatchQueue dispatchQueue = Utilities.searchQueue;
                Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.InviteMembersBottomSheet$SearchAdapter$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$searchDialogs$4(str);
                    }
                };
                this.searchRunnable = runnable;
                dispatchQueue.postRunnable(runnable, 300L);
                return;
            }
            RecyclerView.Adapter adapter3 = inviteMembersBottomSheet.listView.getAdapter();
            InviteMembersBottomSheet inviteMembersBottomSheet3 = InviteMembersBottomSheet.this;
            RecyclerView.Adapter adapter4 = inviteMembersBottomSheet3.listViewAdapter;
            if (adapter3 != adapter4) {
                inviteMembersBottomSheet3.listView.setAdapter(adapter4);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$searchDialogs$4(final String str) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.InviteMembersBottomSheet$SearchAdapter$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$searchDialogs$3(str);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$searchDialogs$3(final String str) {
            boolean z;
            SearchAdapterHelper searchAdapterHelper = this.searchAdapterHelper;
            boolean z2 = true;
            if (InviteMembersBottomSheet.this.dialogsDelegate != null) {
                z = true;
            } else {
                z = true;
                z2 = false;
            }
            searchAdapterHelper.queryServerSearch(str, true, z2, true, InviteMembersBottomSheet.this.dialogsDelegate != null ? z : false, false, 0L, false, 0, 0);
            DispatchQueue dispatchQueue = Utilities.searchQueue;
            Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.InviteMembersBottomSheet$SearchAdapter$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$searchDialogs$2(str);
                }
            };
            this.searchRunnable = runnable;
            dispatchQueue.postRunnable(runnable);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:44:0x00db  */
        /* JADX WARN: Removed duplicated region for block: B:54:0x0129 A[LOOP:1: B:29:0x0098->B:54:0x0129, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:62:0x00de A[SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public /* synthetic */ void lambda$searchDialogs$2(String str) {
            String lowerCase;
            String publicUsername;
            boolean z;
            Object obj;
            String lowerCase2 = str.trim().toLowerCase();
            if (lowerCase2.length() == 0) {
                updateSearchResults(new ArrayList<>(), new ArrayList<>());
                return;
            }
            String translitString = LocaleController.getInstance().getTranslitString(lowerCase2);
            if (lowerCase2.equals(translitString) || translitString.length() == 0) {
                translitString = null;
            }
            int i = 0;
            boolean z2 = true;
            int i2 = (translitString != null ? 1 : 0) + 1;
            String[] strArr = new String[i2];
            strArr[0] = lowerCase2;
            if (translitString != null) {
                strArr[1] = translitString;
            }
            ArrayList<Object> arrayList = new ArrayList<>();
            ArrayList<CharSequence> arrayList2 = new ArrayList<>();
            int i3 = 0;
            while (i3 < InviteMembersBottomSheet.this.contacts.size()) {
                TLObject tLObject = (TLObject) InviteMembersBottomSheet.this.contacts.get(i3);
                boolean z3 = tLObject instanceof TLRPC.User;
                if (z3) {
                    TLRPC.User user = (TLRPC.User) tLObject;
                    lowerCase = ContactsController.formatName(user.first_name, user.last_name).toLowerCase();
                    publicUsername = UserObject.getPublicUsername(user);
                } else {
                    TLRPC.Chat chat = (TLRPC.Chat) tLObject;
                    lowerCase = chat.title;
                    publicUsername = ChatObject.getPublicUsername(chat);
                }
                String translitString2 = LocaleController.getInstance().getTranslitString(lowerCase);
                if (lowerCase.equals(translitString2)) {
                    translitString2 = null;
                }
                int i4 = i;
                int i5 = i4;
                while (true) {
                    if (i4 >= i2) {
                        z = z2;
                        break;
                    }
                    String str2 = strArr[i4];
                    if (!lowerCase.startsWith(str2)) {
                        if (lowerCase.contains(" " + str2)) {
                            i5 = 1;
                            if (i5 == 0) {
                                z = true;
                                if (i5 == 1) {
                                    if (z3) {
                                        TLRPC.User user2 = (TLRPC.User) tLObject;
                                        arrayList2.add(AndroidUtilities.generateSearchName(user2.first_name, user2.last_name, str2));
                                    } else {
                                        arrayList2.add(AndroidUtilities.generateSearchName(((TLRPC.Chat) tLObject).title, null, str2));
                                    }
                                    obj = null;
                                } else {
                                    obj = null;
                                    arrayList2.add(AndroidUtilities.generateSearchName("@" + publicUsername, null, "@" + str2));
                                }
                                arrayList.add(tLObject);
                            } else {
                                i4++;
                                z2 = true;
                            }
                        } else {
                            if (translitString2 != null) {
                                if (!translitString2.startsWith(str2)) {
                                    if (translitString2.contains(" " + str2)) {
                                    }
                                    if (i5 == 0) {
                                    }
                                }
                                i5 = 1;
                                if (i5 == 0) {
                                }
                            }
                            if (publicUsername != null && publicUsername.startsWith(str2)) {
                                i5 = 2;
                            }
                            if (i5 == 0) {
                            }
                        }
                    }
                }
                i3++;
                z2 = z;
                i = 0;
            }
            updateSearchResults(arrayList, arrayList2);
        }
    }

    @Override // org.telegram.ui.Components.UsersAlertBase
    public void onSearchViewTouched(MotionEvent motionEvent, final EditTextBoldCursor editTextBoldCursor) {
        BaseFragment baseFragment;
        if (motionEvent.getAction() == 0) {
            this.f956y = this.scrollOffsetY;
            return;
        }
        if (motionEvent.getAction() != 1 || Math.abs(this.scrollOffsetY - this.f956y) >= this.touchSlop || this.enterEventSent) {
            return;
        }
        Activity activityFindActivity = AndroidUtilities.findActivity(getContext());
        if (activityFindActivity instanceof LaunchActivity) {
            LaunchActivity launchActivity = (LaunchActivity) activityFindActivity;
            baseFragment = launchActivity.getActionBarLayout().getFragmentStack().get(launchActivity.getActionBarLayout().getFragmentStack().size() - 1);
        } else {
            baseFragment = null;
        }
        if (baseFragment instanceof ChatActivity) {
            boolean zNeedEnterText = ((ChatActivity) baseFragment).needEnterText();
            this.enterEventSent = true;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.InviteMembersBottomSheet$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onSearchViewTouched$5(editTextBoldCursor);
                }
            }, zNeedEnterText ? 200L : 0L);
        } else {
            this.enterEventSent = true;
            setFocusable(true);
            editTextBoldCursor.requestFocus();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.InviteMembersBottomSheet$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidUtilities.showKeyboard(editTextBoldCursor);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onSearchViewTouched$5(final EditTextBoldCursor editTextBoldCursor) {
        setFocusable(true);
        editTextBoldCursor.requestFocus();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.InviteMembersBottomSheet$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                AndroidUtilities.showKeyboard(editTextBoldCursor);
            }
        });
    }

    public class SpansContainer extends ViewGroup {
        boolean addAnimation;
        private int animationIndex;
        private boolean animationStarted;
        private ArrayList<Animator> animators;
        private View removingSpan;

        public SpansContainer(Context context) {
            super(context);
            this.animators = new ArrayList<>();
            this.animationIndex = -1;
        }

        @Override // android.view.View
        public void onMeasure(int i, int i2) {
            int iMax;
            RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition;
            int childCount = getChildCount();
            int size = View.MeasureSpec.getSize(i);
            int iDp = size - AndroidUtilities.dp(26.0f);
            int iDp2 = AndroidUtilities.dp(10.0f);
            int iDp3 = AndroidUtilities.dp(10.0f);
            int measuredWidth = 0;
            int measuredWidth2 = 0;
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = getChildAt(i3);
                if (childAt instanceof GroupCreateSpan) {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(32.0f), TLObject.FLAG_30));
                    if (childAt != this.removingSpan && childAt.getMeasuredWidth() + measuredWidth > iDp) {
                        iDp2 += childAt.getMeasuredHeight() + AndroidUtilities.dp(8.0f);
                        measuredWidth = 0;
                    }
                    if (childAt.getMeasuredWidth() + measuredWidth2 > iDp) {
                        iDp3 += childAt.getMeasuredHeight() + AndroidUtilities.dp(8.0f);
                        measuredWidth2 = 0;
                    }
                    int iDp4 = AndroidUtilities.dp(13.0f) + measuredWidth;
                    if (!this.animationStarted) {
                        View view = this.removingSpan;
                        if (childAt == view) {
                            childAt.setTranslationX(AndroidUtilities.dp(13.0f) + measuredWidth2);
                            childAt.setTranslationY(iDp3);
                        } else if (view != null) {
                            float f = iDp4;
                            if (childAt.getTranslationX() != f) {
                                this.animators.add(ObjectAnimator.ofFloat(childAt, (Property<View, Float>) View.TRANSLATION_X, f));
                            }
                            float f2 = iDp2;
                            if (childAt.getTranslationY() != f2) {
                                this.animators.add(ObjectAnimator.ofFloat(childAt, (Property<View, Float>) View.TRANSLATION_Y, f2));
                            }
                        } else {
                            childAt.setTranslationX(iDp4);
                            childAt.setTranslationY(iDp2);
                        }
                    }
                    if (childAt != this.removingSpan) {
                        measuredWidth += childAt.getMeasuredWidth() + AndroidUtilities.dp(9.0f);
                    }
                    measuredWidth2 += childAt.getMeasuredWidth() + AndroidUtilities.dp(9.0f);
                }
            }
            int iDp5 = iDp3 + AndroidUtilities.dp(42.0f);
            final int iDp6 = iDp2 + AndroidUtilities.dp(42.0f);
            InviteMembersBottomSheetDelegate inviteMembersBottomSheetDelegate = InviteMembersBottomSheet.this.dialogsDelegate;
            InviteMembersBottomSheet inviteMembersBottomSheet = InviteMembersBottomSheet.this;
            if (inviteMembersBottomSheetDelegate != null) {
                iMax = inviteMembersBottomSheet.spanEnter ? Math.min(InviteMembersBottomSheet.this.maxSize, iDp6) : 0;
            } else {
                iMax = Math.max(0, Math.min(inviteMembersBottomSheet.maxSize, iDp6) - AndroidUtilities.dp(52.0f));
            }
            int i4 = InviteMembersBottomSheet.this.searchAdditionalHeight;
            InviteMembersBottomSheet inviteMembersBottomSheet2 = InviteMembersBottomSheet.this;
            inviteMembersBottomSheet2.searchAdditionalHeight = (inviteMembersBottomSheet2.dialogsDelegate != null || InviteMembersBottomSheet.this.selectedContacts.size() <= 0) ? 0 : AndroidUtilities.dp(56.0f);
            if (iMax != InviteMembersBottomSheet.this.additionalHeight || i4 != InviteMembersBottomSheet.this.searchAdditionalHeight) {
                InviteMembersBottomSheet.this.additionalHeight = iMax;
                if (InviteMembersBottomSheet.this.listView.getAdapter() != null && InviteMembersBottomSheet.this.listView.getAdapter().getItemCount() > 0 && (viewHolderFindViewHolderForAdapterPosition = InviteMembersBottomSheet.this.listView.findViewHolderForAdapterPosition(0)) != null) {
                    InviteMembersBottomSheet.this.listView.getAdapter().notifyItemChanged(0);
                    InviteMembersBottomSheet.this.layoutManager.scrollToPositionWithOffset(0, viewHolderFindViewHolderForAdapterPosition.itemView.getTop() - InviteMembersBottomSheet.this.listView.getPaddingTop());
                    if (InviteMembersBottomSheet.this.listView.getItemAnimator() != null) {
                        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.InviteMembersBottomSheet.SpansContainer.1
                            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                                InviteMembersBottomSheet.this.listView.updateSelector();
                            }
                        });
                        valueAnimatorOfFloat.setDuration(InviteMembersBottomSheet.this.listView.getItemAnimator().getChangeDuration()).start();
                    }
                }
            }
            int iMin = Math.min(InviteMembersBottomSheet.this.maxSize, iDp6);
            if (InviteMembersBottomSheet.this.scrollViewH != iMin) {
                ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(InviteMembersBottomSheet.this.scrollViewH, iMin);
                valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.InviteMembersBottomSheet$SpansContainer$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        this.f$0.lambda$onMeasure$0(valueAnimator);
                    }
                });
                this.animators.add(valueAnimatorOfInt);
            }
            if (this.addAnimation && iDp6 > InviteMembersBottomSheet.this.maxSize) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.InviteMembersBottomSheet$SpansContainer$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onMeasure$1(iDp6);
                    }
                });
            } else if (!this.addAnimation && InviteMembersBottomSheet.this.spansScrollView.getScrollY() + InviteMembersBottomSheet.this.spansScrollView.getMeasuredHeight() > iDp6) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.InviteMembersBottomSheet$SpansContainer$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onMeasure$2(iDp6);
                    }
                });
            }
            if (!this.animationStarted && InviteMembersBottomSheet.this.currentAnimation != null) {
                InviteMembersBottomSheet.this.currentAnimation.playTogether(this.animators);
                InviteMembersBottomSheet.this.currentAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.InviteMembersBottomSheet.SpansContainer.2
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        InviteMembersBottomSheet.this.currentAnimation = null;
                        SpansContainer.this.requestLayout();
                    }
                });
                InviteMembersBottomSheet.this.currentAnimation.start();
                this.animationStarted = true;
            }
            if (InviteMembersBottomSheet.this.currentAnimation == null) {
                InviteMembersBottomSheet.this.scrollViewH = iMin;
                ((BottomSheet) InviteMembersBottomSheet.this).containerView.invalidate();
            }
            setMeasuredDimension(size, Math.max(iDp6, iDp5));
            InviteMembersBottomSheet.this.listView.setTranslationY(0.0f);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onMeasure$0(ValueAnimator valueAnimator) {
            InviteMembersBottomSheet.this.scrollViewH = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            ((BottomSheet) InviteMembersBottomSheet.this).containerView.invalidate();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onMeasure$1(int i) {
            InviteMembersBottomSheet.this.spansScrollView.smoothScrollTo(0, i - InviteMembersBottomSheet.this.maxSize);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onMeasure$2(int i) {
            InviteMembersBottomSheet.this.spansScrollView.smoothScrollTo(0, i - InviteMembersBottomSheet.this.maxSize);
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
            int childCount = getChildCount();
            for (int i5 = 0; i5 < childCount; i5++) {
                View childAt = getChildAt(i5);
                childAt.layout(0, 0, childAt.getMeasuredWidth(), childAt.getMeasuredHeight());
            }
        }

        public void addSpan(GroupCreateSpan groupCreateSpan, boolean z) {
            this.addAnimation = true;
            InviteMembersBottomSheet.this.selectedContacts.put(groupCreateSpan.getUid(), groupCreateSpan);
            if (InviteMembersBottomSheet.this.currentAnimation != null) {
                InviteMembersBottomSheet.this.currentAnimation.setupEndValues();
                InviteMembersBottomSheet.this.currentAnimation.cancel();
            }
            this.animationStarted = false;
            if (z) {
                InviteMembersBottomSheet.this.currentAnimation = new AnimatorSet();
                InviteMembersBottomSheet.this.currentAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.InviteMembersBottomSheet.SpansContainer.3
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        InviteMembersBottomSheet.this.currentAnimation = null;
                        SpansContainer.this.animationStarted = false;
                    }
                });
                InviteMembersBottomSheet.this.currentAnimation.setDuration(150L);
                InviteMembersBottomSheet.this.currentAnimation.setInterpolator(CubicBezierInterpolator.DEFAULT);
                this.animators.clear();
                this.animators.add(ObjectAnimator.ofFloat(groupCreateSpan, (Property<GroupCreateSpan, Float>) View.SCALE_X, 0.01f, 1.0f));
                this.animators.add(ObjectAnimator.ofFloat(groupCreateSpan, (Property<GroupCreateSpan, Float>) View.SCALE_Y, 0.01f, 1.0f));
                this.animators.add(ObjectAnimator.ofFloat(groupCreateSpan, (Property<GroupCreateSpan, Float>) View.ALPHA, 0.0f, 1.0f));
            }
            addView(groupCreateSpan);
        }

        public void removeSpan(final GroupCreateSpan groupCreateSpan) {
            this.addAnimation = false;
            InviteMembersBottomSheet.this.selectedContacts.remove(groupCreateSpan.getUid());
            groupCreateSpan.setOnClickListener(null);
            if (InviteMembersBottomSheet.this.currentAnimation != null) {
                InviteMembersBottomSheet.this.currentAnimation.setupEndValues();
                InviteMembersBottomSheet.this.currentAnimation.cancel();
            }
            this.animationStarted = false;
            InviteMembersBottomSheet.this.currentAnimation = new AnimatorSet();
            InviteMembersBottomSheet.this.currentAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.InviteMembersBottomSheet.SpansContainer.4
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    SpansContainer.this.removeView(groupCreateSpan);
                    SpansContainer.this.removingSpan = null;
                    InviteMembersBottomSheet.this.currentAnimation = null;
                    SpansContainer.this.animationStarted = false;
                }
            });
            InviteMembersBottomSheet.this.currentAnimation.setDuration(150L);
            this.removingSpan = groupCreateSpan;
            this.animators.clear();
            this.animators.add(ObjectAnimator.ofFloat(this.removingSpan, (Property<View, Float>) View.SCALE_X, 1.0f, 0.01f));
            this.animators.add(ObjectAnimator.ofFloat(this.removingSpan, (Property<View, Float>) View.SCALE_Y, 1.0f, 0.01f));
            this.animators.add(ObjectAnimator.ofFloat(this.removingSpan, (Property<View, Float>) View.ALPHA, 1.0f, 0.0f));
            requestLayout();
        }
    }

    @Override // org.telegram.ui.Components.UsersAlertBase
    public UsersAlertBase.ContainerView createContainerView(Context context) {
        return new UsersAlertBase.ContainerView(context) { // from class: org.telegram.ui.Components.InviteMembersBottomSheet.4
            float animateToEmptyViewOffset;
            float deltaOffset;
            float emptyViewOffset;
            Paint paint = new Paint();
            private VerticalPositionAutoAnimator verticalPositionAutoAnimator;

            @Override // android.view.ViewGroup
            public void onViewAdded(View view) {
                if (view == InviteMembersBottomSheet.this.floatingButton && this.verticalPositionAutoAnimator == null) {
                    this.verticalPositionAutoAnimator = VerticalPositionAutoAnimator.attach(view);
                }
            }

            @Override // android.view.ViewGroup, android.view.View
            public void onAttachedToWindow() {
                super.onAttachedToWindow();
                VerticalPositionAutoAnimator verticalPositionAutoAnimator = this.verticalPositionAutoAnimator;
                if (verticalPositionAutoAnimator != null) {
                    verticalPositionAutoAnimator.ignoreNextLayout();
                }
            }

            @Override // org.telegram.ui.Components.UsersAlertBase.ContainerView, android.view.ViewGroup, android.view.View
            public void dispatchDraw(Canvas canvas) {
                InviteMembersBottomSheet inviteMembersBottomSheet = InviteMembersBottomSheet.this;
                InviteMembersBottomSheet.this.spansScrollView.setTranslationY((inviteMembersBottomSheet.scrollOffsetY - ((BottomSheet) inviteMembersBottomSheet).backgroundPaddingTop) + AndroidUtilities.dp(6.0f) + AndroidUtilities.dp(64.0f));
                float f = InviteMembersBottomSheet.this.additionalHeight + InviteMembersBottomSheet.this.searchAdditionalHeight;
                if (InviteMembersBottomSheet.this.emptyView.getVisibility() != 0) {
                    this.emptyViewOffset = f;
                    this.animateToEmptyViewOffset = f;
                } else if (this.animateToEmptyViewOffset != f) {
                    this.animateToEmptyViewOffset = f;
                    this.deltaOffset = (f - this.emptyViewOffset) * 0.10666667f;
                }
                float f2 = this.emptyViewOffset;
                float f3 = this.animateToEmptyViewOffset;
                if (f2 != f3) {
                    float f4 = this.deltaOffset;
                    float f5 = f2 + f4;
                    this.emptyViewOffset = f5;
                    if (f4 > 0.0f && f5 > f3) {
                        this.emptyViewOffset = f3;
                    } else if (f4 < 0.0f && f5 < f3) {
                        this.emptyViewOffset = f3;
                    } else {
                        invalidate();
                    }
                }
                InviteMembersBottomSheet.this.emptyView.setTranslationY(r0.scrollOffsetY + this.emptyViewOffset);
                super.dispatchDraw(canvas);
            }

            @Override // android.view.ViewGroup
            public boolean drawChild(Canvas canvas, View view, long j) {
                if (view == InviteMembersBottomSheet.this.spansScrollView) {
                    canvas.save();
                    canvas.clipRect(0.0f, view.getY() - AndroidUtilities.dp(4.0f), getMeasuredWidth(), view.getY() + InviteMembersBottomSheet.this.scrollViewH + 1.0f);
                    canvas.drawColor(ColorUtils.setAlphaComponent(Theme.getColor(Theme.key_windowBackgroundWhite), (int) (InviteMembersBottomSheet.this.spansEnterProgress * 255.0f)));
                    this.paint.setColor(ColorUtils.setAlphaComponent(Theme.getColor(Theme.key_divider), (int) (InviteMembersBottomSheet.this.spansEnterProgress * 255.0f)));
                    canvas.drawRect(0.0f, view.getY() + InviteMembersBottomSheet.this.scrollViewH, getMeasuredWidth(), view.getY() + InviteMembersBottomSheet.this.scrollViewH + 1.0f, this.paint);
                    boolean zDrawChild = super.drawChild(canvas, view, j);
                    canvas.restore();
                    return zDrawChild;
                }
                return super.drawChild(canvas, view, j);
            }
        };
    }

    @Override // org.telegram.ui.Components.UsersAlertBase
    public void search(String str) {
        this.searchAdapter.searchDialogs(str);
    }

    public void setDelegate(GroupCreateActivity.ContactsAddActivityDelegate contactsAddActivityDelegate) {
        this.delegate = contactsAddActivityDelegate;
    }

    public void setDelegate(InviteMembersBottomSheetDelegate inviteMembersBottomSheetDelegate, ArrayList<Long> arrayList) {
        this.dialogsDelegate = inviteMembersBottomSheetDelegate;
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.dialogsNeedReload);
        this.dialogsServerOnly = new ArrayList<>(MessagesController.getInstance(this.currentAccount).dialogsServerOnly);
        updateRows();
    }

    public class ItemAnimator extends DefaultItemAnimator {
        public ItemAnimator() {
            this.translationInterpolator = CubicBezierInterpolator.DEFAULT;
            setMoveDuration(150L);
            setAddDuration(150L);
            setRemoveDuration(150L);
            InviteMembersBottomSheet.this.setShowWithoutAnimation(false);
        }
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet
    public void dismissInternal() {
        super.dismissInternal();
        if (this.enterEventSent) {
            Activity activityFindActivity = AndroidUtilities.findActivity(getContext());
            if (activityFindActivity instanceof LaunchActivity) {
                LaunchActivity launchActivity = (LaunchActivity) activityFindActivity;
                BaseFragment baseFragment = launchActivity.getActionBarLayout().getFragmentStack().get(launchActivity.getActionBarLayout().getFragmentStack().size() - 1);
                if (baseFragment instanceof ChatActivity) {
                    ((ChatActivity) baseFragment).onEditTextDialogClose(true, true);
                }
            }
        }
    }

    private void generateLink() {
        if (this.linkGenerating) {
            return;
        }
        this.linkGenerating = true;
        TLRPC.TL_messages_exportChatInvite tL_messages_exportChatInvite = new TLRPC.TL_messages_exportChatInvite();
        tL_messages_exportChatInvite.legacy_revoke_permanent = true;
        tL_messages_exportChatInvite.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(-this.chatId);
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_messages_exportChatInvite, new RequestDelegate() { // from class: org.telegram.ui.Components.InviteMembersBottomSheet$$ExternalSyntheticLambda7
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$generateLink$8(tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$generateLink$8(final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.InviteMembersBottomSheet$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$generateLink$7(tL_error, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$generateLink$7(TLRPC.TL_error tL_error, TLObject tLObject) {
        if (tL_error == null) {
            this.invite = (TLRPC.TL_chatInviteExported) tLObject;
            TLRPC.ChatFull chatFull = MessagesController.getInstance(this.currentAccount).getChatFull(this.chatId);
            if (chatFull != null) {
                chatFull.exported_invite = this.invite;
            }
            if (this.invite.link == null) {
                return;
            }
            ((ClipboardManager) ApplicationLoader.applicationContext.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("label", this.invite.link));
            BulletinFactory.createCopyLinkBulletin(this.parentFragment).show();
            lambda$new$0();
        }
        this.linkGenerating = false;
    }
}
