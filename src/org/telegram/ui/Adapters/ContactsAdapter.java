package org.telegram.ui.Adapters;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.collection.LongSparseArray;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Objects;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.DividerCell;
import org.telegram.ui.Cells.GraySectionCell;
import org.telegram.ui.Cells.HeaderCell;
import org.telegram.ui.Cells.InviteUserCell;
import org.telegram.ui.Cells.LetterSectionCell;
import org.telegram.ui.Cells.ShadowSectionCell;
import org.telegram.ui.Cells.TextCell;
import org.telegram.ui.Cells.UserCell;
import org.telegram.ui.Components.ContactsEmptyView;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.RecyclerListView;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ContactsAdapter extends RecyclerListView.SectionsAdapter {
    private final int currentAccount = UserConfig.selectedAccount;
    private boolean disableSections;
    BaseFragment fragment;
    private boolean hasPhonebook;
    private final LongSparseArray<TLRPC.User> ignoreUsers;
    public boolean includeSearch;
    private final boolean isAdmin;
    private final boolean isChannel;
    private boolean isEmpty;
    public boolean isEmptyWithMainTabs;
    private final Context mContext;
    private final boolean needPhonebook;
    private ArrayList<TLRPC.TL_contact> onlineContacts;
    private final int onlyUsers;
    private final LongSparseArray<TLRPC.User> selectedContacts;
    private int sortType;

    public ContactsAdapter(Context context, BaseFragment baseFragment, int i, boolean z, LongSparseArray<TLRPC.User> longSparseArray, LongSparseArray<TLRPC.User> longSparseArray2, int i2) {
        this.mContext = context;
        this.onlyUsers = i;
        this.needPhonebook = z;
        this.ignoreUsers = longSparseArray;
        this.selectedContacts = longSparseArray2;
        this.isAdmin = i2 != 0;
        this.isChannel = i2 == 2;
        this.fragment = baseFragment;
    }

    public void setDisableSections(boolean z) {
        this.disableSections = z;
    }

    public void setSortType(int i, boolean z) {
        this.sortType = i;
        if (i == 2) {
            if (this.onlineContacts == null || z) {
                this.onlineContacts = new ArrayList<>(ContactsController.getInstance(this.currentAccount).contacts);
                long j = UserConfig.getInstance(this.currentAccount).clientUserId;
                int size = this.onlineContacts.size();
                int i2 = 0;
                while (true) {
                    if (i2 >= size) {
                        break;
                    }
                    if (this.onlineContacts.get(i2).user_id == j) {
                        this.onlineContacts.remove(i2);
                        break;
                    }
                    i2++;
                }
            }
            sortOnlineContacts();
            return;
        }
        notifyDataSetChanged();
    }

    public boolean isEmpty() {
        return this.isEmpty;
    }

    public void sortOnlineContacts() {
        if (this.onlineContacts == null) {
            return;
        }
        try {
            final int currentTime = ConnectionsManager.getInstance(this.currentAccount).getCurrentTime();
            final MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
            Collections.sort(this.onlineContacts, new Comparator() { // from class: org.telegram.ui.Adapters.ContactsAdapter$$ExternalSyntheticLambda0
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return ContactsAdapter.$r8$lambda$ELiMIR3niEAcM_m7UV_uqfYJfuE(messagesController, currentTime, (TLRPC.TL_contact) obj, (TLRPC.TL_contact) obj2);
                }
            });
            notifyDataSetChanged();
        } catch (Exception e) {
            FileLog.m992e(e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0038  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ int $r8$lambda$ELiMIR3niEAcM_m7UV_uqfYJfuE(MessagesController messagesController, int i, TLRPC.TL_contact tL_contact, TLRPC.TL_contact tL_contact2) {
        int i2;
        int i3;
        TLRPC.User user = messagesController.getUser(Long.valueOf(tL_contact2.user_id));
        TLRPC.User user2 = messagesController.getUser(Long.valueOf(tL_contact.user_id));
        if (user == null) {
            i2 = 0;
        } else if (user.self) {
            i2 = i + 50000;
        } else {
            TLRPC.UserStatus userStatus = user.status;
            if (userStatus != null) {
                i2 = userStatus.expires;
            }
        }
        if (user2 == null) {
            i3 = 0;
        } else if (user2.self) {
            i3 = i + 50000;
        } else {
            TLRPC.UserStatus userStatus2 = user2.status;
            if (userStatus2 != null) {
                i3 = userStatus2.expires;
            }
        }
        if (i2 <= 0 || i3 <= 0) {
            if (i2 >= 0 || i3 >= 0) {
                if (i2 < 0 && i3 > 0) {
                    return -1;
                }
                if (i2 == 0 && i3 != 0) {
                    return -1;
                }
                if (i3 < 0 && i2 > 0) {
                    return 1;
                }
                if (i3 == 0 && i2 != 0) {
                    return 1;
                }
            } else {
                if (i2 > i3) {
                    return 1;
                }
                if (i2 < i3) {
                    return -1;
                }
            }
        } else {
            if (i2 > i3) {
                return 1;
            }
            if (i2 < i3) {
                return -1;
            }
        }
        return 0;
    }

    @Override // org.telegram.ui.Components.RecyclerListView.SectionsAdapter
    public Object getItem(int i, int i2) {
        int i3;
        if (this.isEmptyWithMainTabs && i == 1 && i2 > 1 && i2 - 2 < ContactsController.getInstance(this.currentAccount).phoneBookContacts.size()) {
            return ContactsController.getInstance(this.currentAccount).phoneBookContacts.get(i3);
        }
        if (getItemViewType(i, i2) == 2) {
            return "Header";
        }
        int i4 = this.onlyUsers;
        int i5 = this.currentAccount;
        HashMap<String, ArrayList<TLRPC.TL_contact>> map = i4 == 2 ? ContactsController.getInstance(i5).usersMutualSectionsDict : ContactsController.getInstance(i5).usersSectionsDict;
        int i6 = this.onlyUsers;
        int i7 = this.currentAccount;
        ArrayList<String> arrayList = i6 == 2 ? ContactsController.getInstance(i7).sortedUsersMutualSectionsArray : ContactsController.getInstance(i7).sortedUsersSectionsArray;
        if (this.onlyUsers != 0 && !this.isAdmin) {
            if (i < arrayList.size()) {
                ArrayList<TLRPC.TL_contact> arrayList2 = map.get(arrayList.get(i));
                if (i2 < arrayList2.size()) {
                    return MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(arrayList2.get(i2).user_id));
                }
            }
            return null;
        }
        if (i == 0) {
            return null;
        }
        if (this.sortType != 2) {
            int i8 = i - 1;
            if (i8 < arrayList.size()) {
                ArrayList<TLRPC.TL_contact> arrayList3 = map.get(arrayList.get(i8));
                if (i2 < arrayList3.size()) {
                    return MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(arrayList3.get(i2).user_id));
                }
                return null;
            }
        } else if (i == 1) {
            if (i2 < this.onlineContacts.size()) {
                return MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.onlineContacts.get(i2).user_id));
            }
            return null;
        }
        if (!this.needPhonebook || i2 < 0 || i2 >= ContactsController.getInstance(this.currentAccount).phoneBookContacts.size()) {
            return null;
        }
        return ContactsController.getInstance(this.currentAccount).phoneBookContacts.get(i2);
    }

    @Override // org.telegram.ui.Components.RecyclerListView.SectionsAdapter
    public int getHash(int i, int i2) {
        return Objects.hash(Integer.valueOf(i * (-49612)), getItem(i, i2));
    }

    @Override // org.telegram.ui.Components.RecyclerListView.SectionsAdapter
    public boolean isEnabled(RecyclerView.ViewHolder viewHolder, int i, int i2) {
        if (this.isEmptyWithMainTabs) {
            return i == 1 && i2 > 1;
        }
        int i3 = this.onlyUsers;
        int i4 = this.currentAccount;
        HashMap<String, ArrayList<TLRPC.TL_contact>> map = i3 == 2 ? ContactsController.getInstance(i4).usersMutualSectionsDict : ContactsController.getInstance(i4).usersSectionsDict;
        int i5 = this.onlyUsers;
        int i6 = this.currentAccount;
        ArrayList<String> arrayList = i5 == 2 ? ContactsController.getInstance(i6).sortedUsersMutualSectionsArray : ContactsController.getInstance(i6).sortedUsersSectionsArray;
        if (this.onlyUsers != 0 && !this.isAdmin) {
            return !this.isEmpty && i2 < map.get(arrayList.get(i)).size();
        }
        if (i == 0) {
            return this.isAdmin ? i2 < 1 : this.needPhonebook ? i2 < 2 : i2 < 3;
        }
        if (this.isEmpty) {
            return false;
        }
        if (this.sortType == 2) {
            return i != 1 || i2 < this.onlineContacts.size();
        }
        int i7 = i - 1;
        return i7 >= arrayList.size() || i2 < map.get(arrayList.get(i7)).size();
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0064 A[RETURN] */
    @Override // org.telegram.ui.Components.RecyclerListView.SectionsAdapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int getSectionCount() {
        ArrayList<String> arrayList;
        int size;
        boolean z = false;
        this.isEmpty = false;
        if (this.sortType == 2) {
            this.isEmpty = this.onlineContacts.isEmpty();
        } else {
            int i = this.onlyUsers;
            int i2 = this.currentAccount;
            if (i == 2) {
                arrayList = ContactsController.getInstance(i2).sortedUsersMutualSectionsArray;
            } else {
                arrayList = ContactsController.getInstance(i2).sortedUsersSectionsArray;
            }
            size = arrayList.size();
            if (size == 0) {
                this.isEmpty = true;
            }
            if (this.onlyUsers == 0) {
                size++;
            }
            if (this.isAdmin) {
                size++;
            }
            boolean zIsEmpty = ContactsController.getInstance(this.currentAccount).phoneBookContacts.isEmpty();
            this.hasPhonebook = !zIsEmpty;
            if (this.isEmpty && this.needPhonebook && !this.isAdmin && this.onlyUsers == 0) {
                z = true;
            }
            this.isEmptyWithMainTabs = z;
            return !z ? !zIsEmpty ? 2 : 1 : size;
        }
        size = 1;
        if (this.onlyUsers == 0) {
        }
        if (this.isAdmin) {
        }
        boolean zIsEmpty2 = ContactsController.getInstance(this.currentAccount).phoneBookContacts.isEmpty();
        this.hasPhonebook = !zIsEmpty2;
        if (this.isEmpty) {
            z = true;
        }
        this.isEmptyWithMainTabs = z;
        if (!z) {
        }
    }

    @Override // org.telegram.ui.Components.RecyclerListView.SectionsAdapter
    public int getCountForSection(int i) {
        return getCountForSectionInternal(i);
    }

    private int getCountForSectionInternal(int i) {
        if (this.isEmptyWithMainTabs) {
            if (i == 0) {
                return (this.includeSearch ? 1 : 0) + 1;
            }
            if (i == 1) {
                return ContactsController.getInstance(this.currentAccount).phoneBookContacts.size() + 2;
            }
            return 0;
        }
        int i2 = this.onlyUsers;
        int i3 = this.currentAccount;
        HashMap<String, ArrayList<TLRPC.TL_contact>> map = i2 == 2 ? ContactsController.getInstance(i3).usersMutualSectionsDict : ContactsController.getInstance(i3).usersSectionsDict;
        int i4 = this.onlyUsers;
        int i5 = this.currentAccount;
        ArrayList<String> arrayList = i4 == 2 ? ContactsController.getInstance(i5).sortedUsersMutualSectionsArray : ContactsController.getInstance(i5).sortedUsersSectionsArray;
        if (this.onlyUsers != 0 && !this.isAdmin) {
            if (this.isEmpty) {
                return 1;
            }
            if (i < arrayList.size()) {
                int size = map.get(arrayList.get(i)).size();
                return (i != arrayList.size() - 1 || this.needPhonebook) ? size + 1 : size;
            }
        } else {
            boolean z = this.isEmpty;
            if (i == 0) {
                if (z) {
                    return (this.includeSearch ? 1 : 0) + 2;
                }
                if (this.isAdmin) {
                    return (this.includeSearch ? 1 : 0) + 3;
                }
                boolean z2 = this.needPhonebook;
                boolean z3 = this.includeSearch;
                return z2 ? (z3 ? 1 : 0) + 4 : (z3 ? 1 : 0) + 4;
            }
            if (z) {
                return 1;
            }
            if (this.sortType != 2) {
                int i6 = i - 1;
                if (i6 < arrayList.size()) {
                    int size2 = map.get(arrayList.get(i6)).size();
                    arrayList.size();
                    return size2;
                }
            } else if (i == 1) {
                if (this.onlineContacts.isEmpty()) {
                    return 0;
                }
                return this.onlineContacts.size();
            }
        }
        if (this.needPhonebook) {
            return ContactsController.getInstance(this.currentAccount).phoneBookContacts.size();
        }
        return 0;
    }

    @Override // org.telegram.ui.Components.RecyclerListView.SectionsAdapter
    public View getSectionHeaderView(int i, View view) {
        int i2 = this.onlyUsers;
        int i3 = this.currentAccount;
        if (i2 == 2) {
            HashMap<String, ArrayList<TLRPC.TL_contact>> map = ContactsController.getInstance(i3).usersMutualSectionsDict;
        } else {
            HashMap<String, ArrayList<TLRPC.TL_contact>> map2 = ContactsController.getInstance(i3).usersSectionsDict;
        }
        int i4 = this.onlyUsers;
        int i5 = this.currentAccount;
        ArrayList<String> arrayList = i4 == 2 ? ContactsController.getInstance(i5).sortedUsersMutualSectionsArray : ContactsController.getInstance(i5).sortedUsersSectionsArray;
        if (view == null) {
            view = new LetterSectionCell(this.mContext);
        }
        LetterSectionCell letterSectionCell = (LetterSectionCell) view;
        if (this.sortType == 2 || this.disableSections || this.isEmpty) {
            letterSectionCell.setLetter(_UrlKt.FRAGMENT_ENCODE_SET);
            return view;
        }
        if (this.onlyUsers != 0 && !this.isAdmin) {
            if (i < arrayList.size()) {
                letterSectionCell.setLetter(arrayList.get(i));
                return view;
            }
            letterSectionCell.setLetter(_UrlKt.FRAGMENT_ENCODE_SET);
            return view;
        }
        if (i == 0) {
            letterSectionCell.setLetter(_UrlKt.FRAGMENT_ENCODE_SET);
            return view;
        }
        int i6 = i - 1;
        if (i6 < arrayList.size()) {
            letterSectionCell.setLetter(arrayList.get(i6));
            return view;
        }
        letterSectionCell.setLetter(_UrlKt.FRAGMENT_ENCODE_SET);
        return view;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(final ViewGroup viewGroup, int i) {
        View headerCell;
        View view;
        if (i == 0) {
            UserCell userCell = new UserCell(this.mContext, 58, 1, false);
            userCell.setCallCellStyle(58);
            headerCell = userCell;
        } else if (i == 1) {
            headerCell = new TextCell(this.mContext);
        } else if (i == 2) {
            headerCell = new GraySectionCell(this.mContext);
        } else if (i != 3) {
            if (i == 4) {
                FrameLayout frameLayout = new FrameLayout(this.mContext) { // from class: org.telegram.ui.Adapters.ContactsAdapter.2
                    @Override // android.widget.FrameLayout, android.view.View
                    public void onMeasure(int i2, int i3) {
                        ContactsAdapter contactsAdapter = ContactsAdapter.this;
                        if (contactsAdapter.isEmptyWithMainTabs && contactsAdapter.hasPhonebook) {
                            super.onMeasure(i2, i3);
                            return;
                        }
                        int size = View.MeasureSpec.getSize(i3);
                        if (size == 0) {
                            size = viewGroup.getMeasuredHeight();
                        }
                        if (size == 0) {
                            size = (AndroidUtilities.displaySize.y - ActionBar.getCurrentActionBarHeight()) - AndroidUtilities.statusBarHeight;
                        }
                        int iDp = AndroidUtilities.dp(50.0f);
                        int iDp2 = ContactsAdapter.this.onlyUsers != 0 ? 0 : AndroidUtilities.dp(30.0f) + iDp;
                        if (!ContactsAdapter.this.isAdmin && !ContactsAdapter.this.needPhonebook) {
                            iDp2 += iDp;
                        }
                        int paddingTop = (size - viewGroup.getPaddingTop()) - viewGroup.getPaddingBottom();
                        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(iDp2 < paddingTop ? paddingTop - iDp2 : 0, TLObject.FLAG_30));
                    }
                };
                frameLayout.addView(new ContactsEmptyView(this.mContext), LayoutHelper.createFrame(-1, -2, 17));
                frameLayout.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
                frameLayout.setTag(-33024);
                view = frameLayout;
            } else if (i == 7) {
                headerCell = new HeaderCell(this.mContext, Theme.key_windowBackgroundWhiteBlueHeader, 21, 14, 5, false, null);
            } else if (i == 8) {
                headerCell = new InviteUserCell(this.mContext, false);
            } else if (i == 9) {
                View view2 = new View(this.mContext) { // from class: org.telegram.ui.Adapters.ContactsAdapter.1
                    @Override // android.view.View
                    public void onMeasure(int i2, int i3) {
                        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(52.0f), TLObject.FLAG_30));
                    }
                };
                view2.setId(9);
                view2.setTag(-33024);
                view = view2;
            } else {
                headerCell = new ShadowSectionCell(this.mContext);
            }
            headerCell = view;
        } else {
            DividerCell dividerCell = new DividerCell(this.mContext);
            dividerCell.setPadding(AndroidUtilities.dp(LocaleController.isRTL ? 28.0f : 72.0f), AndroidUtilities.dp(8.0f), AndroidUtilities.dp(LocaleController.isRTL ? 72.0f : 28.0f), AndroidUtilities.dp(8.0f));
            headerCell = dividerCell;
        }
        return new RecyclerListView.Holder(headerCell);
    }

    @Override // org.telegram.ui.Components.RecyclerListView.SectionsAdapter
    public void onBindViewHolder(int i, int i2, RecyclerView.ViewHolder viewHolder) {
        int i3;
        ArrayList<TLRPC.TL_contact> arrayList;
        if (i != 0 || !this.includeSearch) {
            i3 = i2;
        } else if (i2 == 0) {
            return;
        } else {
            i3 = i2 - 1;
        }
        int itemViewType = viewHolder.getItemViewType();
        int i4 = 7;
        if (itemViewType == 0) {
            UserCell userCell = (UserCell) viewHolder.itemView;
            userCell.storyParams.drawSegments = false;
            if (this.sortType != 2 && !this.disableSections) {
                i4 = 58;
            }
            userCell.setAvatarPadding(i4, 1);
            if (this.sortType == 2) {
                arrayList = this.onlineContacts;
            } else {
                int i5 = this.onlyUsers;
                int i6 = this.currentAccount;
                HashMap<String, ArrayList<TLRPC.TL_contact>> map = i5 == 2 ? ContactsController.getInstance(i6).usersMutualSectionsDict : ContactsController.getInstance(i6).usersSectionsDict;
                int i7 = this.onlyUsers;
                int i8 = this.currentAccount;
                arrayList = map.get((i7 == 2 ? ContactsController.getInstance(i8).sortedUsersMutualSectionsArray : ContactsController.getInstance(i8).sortedUsersSectionsArray).get(i - ((this.onlyUsers == 0 || this.isAdmin) ? 1 : 0)));
            }
            TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(arrayList.get(i3).user_id));
            userCell.setMutual(user.mutual_contact);
            userCell.setData(user, null, null, 0);
            userCell.setChecked(this.selectedContacts.indexOfKey(user.id) >= 0, false);
            LongSparseArray<TLRPC.User> longSparseArray = this.ignoreUsers;
            if (longSparseArray != null) {
                if (longSparseArray.indexOfKey(user.id) >= 0) {
                    userCell.setAlpha(0.5f);
                    return;
                } else {
                    userCell.setAlpha(1.0f);
                    return;
                }
            }
            return;
        }
        if (itemViewType != 1) {
            if (itemViewType == 2) {
                GraySectionCell graySectionCell = (GraySectionCell) viewHolder.itemView;
                int i9 = this.sortType;
                if (i9 == 0) {
                    graySectionCell.setText(LocaleController.getString(C2665R.string.Contacts));
                    return;
                } else if (i9 == 1) {
                    graySectionCell.setText(LocaleController.getString(C2665R.string.SortedByName));
                    return;
                } else {
                    graySectionCell.setText(LocaleController.getString(C2665R.string.SortedByLastSeen));
                    return;
                }
            }
            if (itemViewType == 4) {
                viewHolder.itemView.setPadding(0, AndroidUtilities.dp(!this.hasPhonebook ? 96.0f : 25.0f), 0, AndroidUtilities.dp(18.0f));
                return;
            }
            if (itemViewType != 7) {
                if (itemViewType != 8) {
                    return;
                }
                InviteUserCell inviteUserCell = (InviteUserCell) viewHolder.itemView;
                int i10 = i3 - 2;
                if (i10 < 0 || i10 >= ContactsController.getInstance(this.currentAccount).phoneBookContacts.size()) {
                    return;
                }
                inviteUserCell.setUser(ContactsController.getInstance(this.currentAccount).phoneBookContacts.get(i10), null);
                return;
            }
            HeaderCell headerCell = (HeaderCell) viewHolder.itemView;
            if (this.isEmptyWithMainTabs && i3 == 1 && i == 1) {
                headerCell.setText(LocaleController.getString(C2665R.string.InviteFriends));
                return;
            } else if (this.sortType == 1) {
                headerCell.setText(LocaleController.getString(C2665R.string.SortedByName));
                return;
            } else {
                headerCell.setText(LocaleController.getString(C2665R.string.SortedByLastSeen));
                return;
            }
        }
        TextCell textCell = (TextCell) viewHolder.itemView;
        if (this.needPhonebook || !this.isAdmin) {
            int i11 = Theme.key_windowBackgroundWhiteBlackText;
            textCell.setColors(i11, i11);
        } else {
            int i12 = Theme.key_telegram_color_text;
            textCell.setColors(i12, i12);
        }
        if (i == 0) {
            if (this.needPhonebook) {
                if (i3 == 0) {
                    textCell.setTextAndValueAndColorfulIcon(LocaleController.getString(C2665R.string.InviteFriends), _UrlKt.FRAGMENT_ENCODE_SET, false, C2665R.drawable.settings_invite, -14899731, -15431455, false);
                    return;
                } else {
                    if (i3 == 1) {
                        textCell.setTextAndValueAndColorfulIcon(LocaleController.getString(C2665R.string.RecentCalls), _UrlKt.FRAGMENT_ENCODE_SET, false, C2665R.drawable.settings_calls, -11154873, -14175180, false);
                        return;
                    }
                    return;
                }
            }
            if (this.isAdmin) {
                if (this.isChannel) {
                    textCell.setTextAndIcon((CharSequence) LocaleController.getString(C2665R.string.ChannelInviteViaLink), C2665R.drawable.msg_link2, false);
                    return;
                } else {
                    textCell.setTextAndIcon((CharSequence) LocaleController.getString(C2665R.string.InviteToGroupByLink), C2665R.drawable.msg_link2, false);
                    return;
                }
            }
            if (i3 == 0) {
                textCell.setTextAndValueAndColorfulIcon(LocaleController.getString(C2665R.string.NewGroup), _UrlKt.FRAGMENT_ENCODE_SET, false, C2665R.drawable.settings_group, -14899731, -15431455, false);
                return;
            } else {
                if (i3 == 1) {
                    textCell.setTextAndValueAndColorfulIcon(LocaleController.getString(C2665R.string.NewChannel), _UrlKt.FRAGMENT_ENCODE_SET, false, C2665R.drawable.settings_channel, -11154873, -14175180, false);
                    return;
                }
                return;
            }
        }
        ContactsController.Contact contact = ContactsController.getInstance(this.currentAccount).phoneBookContacts.get(i3);
        String str = contact.first_name;
        if (str != null && contact.last_name != null) {
            textCell.setText(contact.first_name + " " + contact.last_name, false);
            return;
        }
        if (str != null && contact.last_name == null) {
            textCell.setText(str, false);
        } else {
            textCell.setText(contact.last_name, false);
        }
    }

    @Override // org.telegram.ui.Components.RecyclerListView.SectionsAdapter
    public int getItemViewType(int i, int i2) {
        if (i == 0 && this.includeSearch) {
            if (i2 == 0) {
                return 9;
            }
            i2--;
        }
        if (this.isEmptyWithMainTabs) {
            if (i == 0) {
                return 4;
            }
            if (i != 1) {
                return 8;
            }
            if (i2 == 0) {
                return 5;
            }
            return i2 == 1 ? 7 : 8;
        }
        int i3 = this.onlyUsers;
        int i4 = this.currentAccount;
        HashMap<String, ArrayList<TLRPC.TL_contact>> map = i3 == 2 ? ContactsController.getInstance(i4).usersMutualSectionsDict : ContactsController.getInstance(i4).usersSectionsDict;
        int i5 = this.onlyUsers;
        int i6 = this.currentAccount;
        ArrayList<String> arrayList = i5 == 2 ? ContactsController.getInstance(i6).sortedUsersMutualSectionsArray : ContactsController.getInstance(i6).sortedUsersSectionsArray;
        if (this.onlyUsers != 0 && !this.isAdmin) {
            if (this.isEmpty) {
                return 4;
            }
            return i2 < map.get(arrayList.get(i)).size() ? 0 : 3;
        }
        if (i == 0) {
            if (this.isAdmin) {
                if (i2 == 1) {
                    return 5;
                }
                if (i2 == 2) {
                    int i7 = this.sortType;
                    return (i7 == 1 || i7 == 2) ? 7 : 2;
                }
            } else if (this.needPhonebook) {
                if (i2 < 2) {
                    return 1;
                }
                if (i2 == 2) {
                    return 5;
                }
                if (i2 == 3) {
                    if (this.isEmpty) {
                        return 5;
                    }
                    int i8 = this.sortType;
                    return (i8 == 1 || i8 == 2) ? 7 : 2;
                }
            } else {
                if (i2 == 2) {
                    return 5;
                }
                if (i2 == 3) {
                    if (this.isEmpty) {
                        return 5;
                    }
                    int i9 = this.sortType;
                    return (i9 == 1 || i9 == 2) ? 7 : 2;
                }
            }
        } else {
            if (this.isEmpty) {
                return 4;
            }
            if (this.sortType != 2) {
                int i10 = i - 1;
                if (i10 < arrayList.size()) {
                    return i2 < map.get(arrayList.get(i10)).size() ? 0 : 3;
                }
            } else if (i == 1) {
                return i2 < this.onlineContacts.size() ? 0 : 3;
            }
        }
        return 1;
    }

    @Override // org.telegram.ui.Components.RecyclerListView.FastScrollAdapter
    public String getLetter(int i) {
        if (this.includeSearch) {
            if (i == 0) {
                return null;
            }
            i--;
        }
        if (this.sortType != 2 && !this.isEmpty) {
            int i2 = this.onlyUsers;
            int i3 = this.currentAccount;
            ArrayList<String> arrayList = i2 == 2 ? ContactsController.getInstance(i3).sortedUsersMutualSectionsArray : ContactsController.getInstance(i3).sortedUsersSectionsArray;
            int sectionForPosition = getSectionForPosition(i);
            if (sectionForPosition == -1) {
                sectionForPosition = arrayList.size() - 1;
            }
            if (this.onlyUsers != 0 && !this.isAdmin) {
                if (sectionForPosition >= 0 && sectionForPosition < arrayList.size()) {
                    return arrayList.get(sectionForPosition);
                }
            } else if (sectionForPosition > 0 && sectionForPosition <= arrayList.size()) {
                return arrayList.get(sectionForPosition - 1);
            }
        }
        return null;
    }

    @Override // org.telegram.ui.Components.RecyclerListView.FastScrollAdapter
    public void getPositionForScrollProgress(RecyclerListView recyclerListView, float f, int[] iArr) {
        iArr[0] = (int) (getItemCount() * f);
        iArr[1] = 0;
    }
}
