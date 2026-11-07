package org.telegram.ui.Components;

import android.app.Activity;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.android.dx.io.Opcodes;
import com.exteragram.messenger.ExteraConfig;
import com.google.android.material.navigation.NavigationBarView;
import java.lang.reflect.GenericDeclaration;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.ActionBarPopupWindow;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.INavigationLayout;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.ChatActivity;
import org.telegram.ui.Components.BackButtonMenu;
import org.telegram.ui.Components.Forum.ForumUtilities;
import org.telegram.ui.DialogsActivity;
import org.telegram.ui.ProfileActivity;
import org.telegram.ui.TopicsFragment;

/* JADX INFO: loaded from: classes7.dex */
public abstract class BackButtonMenu {

    public static class PulledDialog<T> {
        Class<T> activity;
        TLRPC.Chat chat;
        long dialogId;
        int filterId;
        int folderId;
        int stackIndex;
        TLRPC.TL_forumTopic topic;
        TLRPC.User user;
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x02b1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01a5  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x026e  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0271  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0275  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0278  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x028f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static ActionBarPopupWindow show(final BaseFragment baseFragment, View view, long j, long j2, Theme.ResourcesProvider resourcesProvider) {
        ArrayList<PulledDialog> stackedHistoryDialogs;
        INavigationLayout iNavigationLayout;
        boolean z;
        ArrayList<PulledDialog> arrayList;
        TLRPC.TL_forumTopic tL_forumTopic;
        boolean z2;
        String string;
        if (baseFragment == null) {
            return null;
        }
        INavigationLayout parentLayout = baseFragment.getParentLayout();
        Activity parentActivity = baseFragment.getParentActivity();
        View fragmentView = baseFragment.getFragmentView();
        if (parentLayout == null || parentActivity == null || fragmentView == null) {
            return null;
        }
        long j3 = 0;
        if (j2 != 0 && !ChatObject.isMonoForum(baseFragment.getCurrentAccount(), j)) {
            stackedHistoryDialogs = getStackedHistoryForTopic(baseFragment, j, j2);
        } else {
            stackedHistoryDialogs = getStackedHistoryDialogs(baseFragment, j);
        }
        ArrayList<PulledDialog> arrayList2 = stackedHistoryDialogs;
        if (arrayList2.size() <= 0) {
            return null;
        }
        ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = new ActionBarPopupWindow.ActionBarPopupWindowLayout(parentActivity, C2665R.drawable.popup_fixed_alert4, resourcesProvider);
        Rect rect = new Rect();
        baseFragment.getParentActivity().getResources().getDrawable(C2665R.drawable.popup_fixed_alert4).mutate().getPadding(rect);
        actionBarPopupWindowLayout.setBackgroundColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuBackground, resourcesProvider));
        final AtomicReference atomicReference = new AtomicReference();
        int size = arrayList2.size();
        int i = 0;
        boolean z3 = false;
        while (true) {
            long j4 = j3;
            if (i >= size) {
                break;
            }
            boolean z4 = i == 0;
            boolean z5 = i == size + (-1);
            final PulledDialog pulledDialog = arrayList2.get(i);
            TLRPC.Chat chat = pulledDialog.chat;
            AtomicReference atomicReference2 = atomicReference;
            TLRPC.User user = pulledDialog.user;
            boolean z6 = z3;
            INavigationLayout iNavigationLayout2 = parentLayout;
            TLRPC.TL_forumTopic tL_forumTopic2 = pulledDialog.topic;
            boolean z7 = z5;
            FrameLayout frameLayout = new FrameLayout(parentActivity);
            int i2 = i;
            frameLayout.setMinimumWidth(AndroidUtilities.dp(200.0f));
            BackupImageView backupImageView = new BackupImageView(parentActivity);
            if (chat == null && user == null) {
                iNavigationLayout = iNavigationLayout2;
                backupImageView.setRoundRadius(0);
                z = z4;
            } else {
                iNavigationLayout = iNavigationLayout2;
                z = z4;
                backupImageView.setRoundRadius(ExteraConfig.getAvatarCorners(32.0f, false, chat != null && chat.forum));
            }
            frameLayout.addView(backupImageView, LayoutHelper.createFrameRelatively(32.0f, 32.0f, NavigationBarView.ITEM_GRAVITY_START_CENTER, 8.0f, 0.0f, 0.0f, 0.0f));
            TextView textView = new TextView(parentActivity);
            textView.setLines(1);
            textView.setTextSize(1, 16.0f);
            textView.setTextColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuItem, resourcesProvider));
            textView.setEllipsize(TextUtils.TruncateAt.END);
            frameLayout.addView(textView, LayoutHelper.createFrameRelatively(-1.0f, -2.0f, NavigationBarView.ITEM_GRAVITY_START_CENTER, 52.0f, 0.0f, 8.0f, 0.0f));
            AvatarDrawable avatarDrawable = new AvatarDrawable();
            avatarDrawable.setScaleSize(0.8f);
            if (tL_forumTopic2 != null) {
                if (tL_forumTopic2.id == 1) {
                    backupImageView.setImageDrawable(ForumUtilities.createGeneralTopicDrawable(fragmentView.getContext(), 1.0f, Theme.getColor(Theme.key_chat_inMenu, resourcesProvider), false));
                    arrayList = arrayList2;
                } else if (tL_forumTopic2.icon_emoji_id != j4) {
                    arrayList = arrayList2;
                    backupImageView.setAnimatedEmojiDrawable(new AnimatedEmojiDrawable(10, baseFragment.getCurrentAccount(), tL_forumTopic2.icon_emoji_id));
                } else {
                    arrayList = arrayList2;
                    backupImageView.setImageDrawable(ForumUtilities.createTopicDrawable(tL_forumTopic2, false));
                }
                textView.setText(tL_forumTopic2.title);
            } else {
                arrayList = arrayList2;
                if (chat != null) {
                    avatarDrawable.setInfo(baseFragment.getCurrentAccount(), chat);
                    TLRPC.ChatPhoto chatPhoto = chat.photo;
                    Drawable drawable = avatarDrawable;
                    if (chatPhoto != null) {
                        BitmapDrawable bitmapDrawable = chatPhoto.strippedBitmap;
                        drawable = avatarDrawable;
                        if (bitmapDrawable != null) {
                            drawable = bitmapDrawable;
                        }
                    }
                    backupImageView.setImage(ImageLocation.getForChat(baseFragment.getCurrentAccount(), chat, 1), "50_50", drawable, chat);
                    textView.setText(chat.title);
                } else if (user != null) {
                    TLRPC.UserProfilePhoto userProfilePhoto = user.photo;
                    if (userProfilePhoto != null) {
                        BitmapDrawable bitmapDrawable2 = userProfilePhoto.strippedBitmap;
                        Drawable drawable2 = bitmapDrawable2;
                        if (bitmapDrawable2 == null) {
                            drawable2 = avatarDrawable;
                        }
                        tL_forumTopic = tL_forumTopic2;
                        if (pulledDialog.activity == ChatActivity.class && UserObject.isUserSelf(user)) {
                            string = LocaleController.getString(C2665R.string.SavedMessages);
                            avatarDrawable.setAvatarType(1);
                            backupImageView.setImageDrawable(avatarDrawable);
                        } else if (UserObject.isReplyUser(user)) {
                            string = LocaleController.getString(C2665R.string.RepliesTitle);
                            avatarDrawable.setAvatarType(12);
                            backupImageView.setImageDrawable(avatarDrawable);
                        } else if (UserObject.isDeleted(user)) {
                            string = LocaleController.getString(C2665R.string.HiddenName);
                            avatarDrawable.setInfo(baseFragment.getCurrentAccount(), user);
                            backupImageView.setImage(ImageLocation.getForUser(baseFragment.getCurrentAccount(), user, 1), "50_50", avatarDrawable, user);
                        } else {
                            String userName = UserObject.getUserName(user);
                            avatarDrawable.setInfo(baseFragment.getCurrentAccount(), user);
                            backupImageView.setImage(ImageLocation.getForUser(baseFragment.getCurrentAccount(), user, 1), "50_50", drawable2, user);
                            string = userName;
                        }
                        textView.setText(string);
                        z2 = false;
                        z6 = true;
                    }
                    frameLayout.setBackground(Theme.getSelectorDrawable(Theme.getColor(Theme.key_listSelector, resourcesProvider), false));
                    atomicReference = atomicReference2;
                    final TLRPC.TL_forumTopic tL_forumTopic3 = tL_forumTopic;
                    final INavigationLayout iNavigationLayout3 = iNavigationLayout;
                    frameLayout.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.BackButtonMenu$$ExternalSyntheticLambda0
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            BackButtonMenu.$r8$lambda$LjwJnyIy4aTYeceLn6PSUidUlns(atomicReference, pulledDialog, iNavigationLayout3, tL_forumTopic3, baseFragment, view2);
                        }
                    });
                    actionBarPopupWindowLayout.addView((View) frameLayout, LayoutHelper.createLinear(-1, 44, 0.0f, 0, 0, z ? 3 : 0, 0, z7 ? 3 : 0));
                    if (z2) {
                        View frameLayout2 = new FrameLayout(parentActivity);
                        frameLayout2.setBackgroundColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuSeparator, resourcesProvider));
                        frameLayout2.setTag(C2665R.id.fit_width_tag, 1);
                        actionBarPopupWindowLayout.addView(frameLayout2, LayoutHelper.createLinear(-1, 8));
                    }
                    i = i2 + 1;
                    parentLayout = iNavigationLayout3;
                    j3 = j4;
                    z3 = z6;
                    arrayList2 = arrayList;
                } else {
                    tL_forumTopic = tL_forumTopic2;
                    backupImageView.setImageDrawable(ContextCompat.getDrawable(parentActivity, C2665R.drawable.msg_viewchats).mutate());
                    backupImageView.setSize(AndroidUtilities.dp(24.0f), AndroidUtilities.dp(24.0f));
                    backupImageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_actionBarDefaultSubmenuItemIcon, resourcesProvider), PorterDuff.Mode.MULTIPLY));
                    textView.setText(LocaleController.getString(C2665R.string.AllChats));
                    z2 = true;
                    frameLayout.setBackground(Theme.getSelectorDrawable(Theme.getColor(Theme.key_listSelector, resourcesProvider), false));
                    atomicReference = atomicReference2;
                    final TLRPC.TL_forumTopic tL_forumTopic32 = tL_forumTopic;
                    final INavigationLayout iNavigationLayout32 = iNavigationLayout;
                    frameLayout.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.BackButtonMenu$$ExternalSyntheticLambda0
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            BackButtonMenu.$r8$lambda$LjwJnyIy4aTYeceLn6PSUidUlns(atomicReference, pulledDialog, iNavigationLayout32, tL_forumTopic32, baseFragment, view2);
                        }
                    });
                    actionBarPopupWindowLayout.addView((View) frameLayout, LayoutHelper.createLinear(-1, 44, 0.0f, 0, 0, z ? 3 : 0, 0, z7 ? 3 : 0));
                    if (z2) {
                    }
                    i = i2 + 1;
                    parentLayout = iNavigationLayout32;
                    j3 = j4;
                    z3 = z6;
                    arrayList2 = arrayList;
                }
            }
            tL_forumTopic = tL_forumTopic2;
            z2 = false;
            z6 = true;
            frameLayout.setBackground(Theme.getSelectorDrawable(Theme.getColor(Theme.key_listSelector, resourcesProvider), false));
            atomicReference = atomicReference2;
            final TLRPC.TL_forumTopic tL_forumTopic322 = tL_forumTopic;
            final INavigationLayout iNavigationLayout322 = iNavigationLayout;
            frameLayout.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.BackButtonMenu$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    BackButtonMenu.$r8$lambda$LjwJnyIy4aTYeceLn6PSUidUlns(atomicReference, pulledDialog, iNavigationLayout322, tL_forumTopic322, baseFragment, view2);
                }
            });
            actionBarPopupWindowLayout.addView((View) frameLayout, LayoutHelper.createLinear(-1, 44, 0.0f, 0, 0, z ? 3 : 0, 0, z7 ? 3 : 0));
            if (z2) {
            }
            i = i2 + 1;
            parentLayout = iNavigationLayout322;
            j3 = j4;
            z3 = z6;
            arrayList2 = arrayList;
        }
        if (!z3) {
            return null;
        }
        ActionBarPopupWindow actionBarPopupWindow = new ActionBarPopupWindow(actionBarPopupWindowLayout, -2, -2);
        atomicReference.set(actionBarPopupWindow);
        actionBarPopupWindow.setPauseNotifications(true);
        actionBarPopupWindow.setDismissAnimationDuration(Opcodes.REM_INT_LIT8);
        actionBarPopupWindow.setOutsideTouchable(true);
        actionBarPopupWindow.setClippingEnabled(true);
        actionBarPopupWindow.setAnimationStyle(C2665R.style.PopupContextAnimation);
        actionBarPopupWindow.setFocusable(true);
        actionBarPopupWindowLayout.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(1000.0f), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(1000.0f), Integer.MIN_VALUE));
        actionBarPopupWindow.setInputMethodMode(2);
        actionBarPopupWindow.setSoftInputMode(0);
        actionBarPopupWindow.getContentView().setFocusableInTouchMode(true);
        actionBarPopupWindowLayout.setFitItems(true);
        int iDp = AndroidUtilities.dp(7.0f) - rect.left;
        if (AndroidUtilities.isTablet()) {
            int[] iArr = new int[2];
            fragmentView.getLocationInWindow(iArr);
            iDp += iArr[0];
        }
        actionBarPopupWindow.showAtLocation(fragmentView, 51, iDp, (view.getBottom() - rect.top) - AndroidUtilities.dp(1.0f));
        return actionBarPopupWindow;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00ae A[LOOP:1: B:35:0x00aa->B:37:0x00ae, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00ba A[EDGE_INSN: B:45:0x00ba->B:38:0x00ba BREAK  A[LOOP:1: B:35:0x00aa->B:37:0x00ae], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ void $r8$lambda$LjwJnyIy4aTYeceLn6PSUidUlns(AtomicReference atomicReference, PulledDialog pulledDialog, INavigationLayout iNavigationLayout, TLRPC.TL_forumTopic tL_forumTopic, BaseFragment baseFragment, View view) {
        Long lValueOf;
        ArrayList arrayList;
        int size;
        int i;
        Long lValueOf2 = null;
        if (atomicReference.get() != null) {
            ((ActionBarPopupWindow) atomicReference.getAndSet(null)).dismiss();
        }
        if (pulledDialog.stackIndex >= 0) {
            if (iNavigationLayout == null || iNavigationLayout.getFragmentStack() == null || pulledDialog.stackIndex >= iNavigationLayout.getFragmentStack().size()) {
                lValueOf = null;
                if ((lValueOf2 == null && lValueOf2.longValue() != pulledDialog.dialogId) || !(tL_forumTopic == null || lValueOf == null || tL_forumTopic.id == lValueOf.longValue())) {
                    for (int size2 = iNavigationLayout.getFragmentStack().size() - 2; size2 > pulledDialog.stackIndex; size2--) {
                        iNavigationLayout.removeFragmentFromStack(size2);
                    }
                } else if (iNavigationLayout != null && iNavigationLayout.getFragmentStack() != null) {
                    arrayList = new ArrayList(iNavigationLayout.getFragmentStack());
                    size = arrayList.size() - 2;
                    while (true) {
                        i = pulledDialog.stackIndex;
                        if (size > i) {
                            break;
                        }
                        ((BaseFragment) arrayList.get(size)).removeSelfFromStack();
                        size--;
                    }
                    if (i < iNavigationLayout.getFragmentStack().size()) {
                        iNavigationLayout.closeLastFragment(true);
                        return;
                    }
                }
            } else {
                BaseFragment baseFragment2 = iNavigationLayout.getFragmentStack().get(pulledDialog.stackIndex);
                if (baseFragment2 instanceof ChatActivity) {
                    ChatActivity chatActivity = (ChatActivity) baseFragment2;
                    lValueOf2 = Long.valueOf(chatActivity.getDialogId());
                    lValueOf = Long.valueOf(chatActivity.getTopicId());
                } else if (baseFragment2 instanceof ProfileActivity) {
                    ProfileActivity profileActivity = (ProfileActivity) baseFragment2;
                    lValueOf2 = Long.valueOf(profileActivity.getDialogId());
                    lValueOf = Long.valueOf(profileActivity.getTopicId());
                }
                if (lValueOf2 == null) {
                    if (iNavigationLayout != null) {
                        arrayList = new ArrayList(iNavigationLayout.getFragmentStack());
                        size = arrayList.size() - 2;
                        while (true) {
                            i = pulledDialog.stackIndex;
                            if (size > i) {
                            }
                            ((BaseFragment) arrayList.get(size)).removeSelfFromStack();
                            size--;
                        }
                        if (i < iNavigationLayout.getFragmentStack().size()) {
                        }
                    }
                } else if (iNavigationLayout != null) {
                }
            }
        }
        goToPulledDialog(baseFragment, pulledDialog);
    }

    private static ArrayList<PulledDialog> getStackedHistoryForTopic(BaseFragment baseFragment, long j, long j2) {
        INavigationLayout parentLayout;
        int i;
        ArrayList<PulledDialog> arrayList = new ArrayList<>();
        if (baseFragment == null || (parentLayout = baseFragment.getParentLayout()) == null) {
            return arrayList;
        }
        List<PulledDialog> pulledDialogs = parentLayout.getPulledDialogs();
        if (pulledDialogs != null) {
            i = -1;
            for (int i2 = 0; i2 < pulledDialogs.size(); i2++) {
                PulledDialog pulledDialog = pulledDialogs.get(i2);
                if (pulledDialog.topic != null && r7.id != j2) {
                    int i3 = pulledDialog.stackIndex;
                    if (i3 >= i) {
                        i = i3;
                    }
                    arrayList.add(pulledDialog);
                }
            }
        } else {
            i = -1;
        }
        if (parentLayout.getFragmentStack().size() > 1 && (parentLayout.getFragmentStack().get(parentLayout.getFragmentStack().size() - 2) instanceof TopicsFragment)) {
            PulledDialog pulledDialog2 = new PulledDialog();
            arrayList.add(pulledDialog2);
            pulledDialog2.stackIndex = i + 1;
            pulledDialog2.activity = DialogsActivity.class;
            PulledDialog pulledDialog3 = new PulledDialog();
            arrayList.add(pulledDialog3);
            pulledDialog3.stackIndex = -1;
            pulledDialog3.activity = TopicsFragment.class;
            pulledDialog3.chat = MessagesController.getInstance(baseFragment.getCurrentAccount()).getChat(Long.valueOf(-j));
        } else {
            PulledDialog pulledDialog4 = new PulledDialog();
            arrayList.add(pulledDialog4);
            pulledDialog4.stackIndex = -1;
            pulledDialog4.activity = TopicsFragment.class;
            pulledDialog4.chat = MessagesController.getInstance(baseFragment.getCurrentAccount()).getChat(Long.valueOf(-j));
        }
        Collections.sort(arrayList, new Comparator() { // from class: org.telegram.ui.Components.BackButtonMenu$$ExternalSyntheticLambda2
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return BackButtonMenu.$r8$lambda$zwJbf49aukFzohFh_mJM0GlNr8Q((BackButtonMenu.PulledDialog) obj, (BackButtonMenu.PulledDialog) obj2);
            }
        });
        return arrayList;
    }

    public static /* synthetic */ int $r8$lambda$zwJbf49aukFzohFh_mJM0GlNr8Q(PulledDialog pulledDialog, PulledDialog pulledDialog2) {
        return pulledDialog2.stackIndex - pulledDialog.stackIndex;
    }

    public static void goToPulledDialog(BaseFragment baseFragment, PulledDialog pulledDialog) {
        BaseFragment baseFragment2;
        if (pulledDialog == null) {
            return;
        }
        GenericDeclaration genericDeclaration = pulledDialog.activity;
        if (genericDeclaration == ChatActivity.class) {
            Bundle bundle = new Bundle();
            TLRPC.Chat chat = pulledDialog.chat;
            if (chat != null) {
                bundle.putLong("chat_id", chat.id);
            } else {
                TLRPC.User user = pulledDialog.user;
                if (user != null) {
                    bundle.putLong("user_id", user.id);
                }
            }
            bundle.putInt("dialog_folder_id", pulledDialog.folderId);
            bundle.putInt("dialog_filter_id", pulledDialog.filterId);
            TLRPC.TL_forumTopic tL_forumTopic = pulledDialog.topic;
            if (tL_forumTopic != null) {
                baseFragment2 = baseFragment;
                baseFragment2.presentFragment(ForumUtilities.getChatActivityForTopic(baseFragment2, pulledDialog.chat.id, tL_forumTopic, 0, bundle), true);
            } else {
                baseFragment2 = baseFragment;
                baseFragment2.presentFragment(new ChatActivity(bundle), true);
            }
        } else {
            baseFragment2 = baseFragment;
            if (genericDeclaration == ProfileActivity.class) {
                Bundle bundle2 = new Bundle();
                bundle2.putLong("dialog_id", pulledDialog.dialogId);
                baseFragment2.presentFragment(new ProfileActivity(bundle2), true);
            }
        }
        if (pulledDialog.activity == TopicsFragment.class) {
            Bundle bundle3 = new Bundle();
            bundle3.putLong("chat_id", pulledDialog.chat.id);
            baseFragment2.presentFragment(new TopicsFragment(bundle3), true);
        }
        if (pulledDialog.activity == DialogsActivity.class) {
            baseFragment2.presentFragment(new DialogsActivity(null), true);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static ArrayList<PulledDialog> getStackedHistoryDialogs(BaseFragment baseFragment, long j) {
        INavigationLayout parentLayout;
        TLRPC.Chat currentChat;
        TLRPC.User currentUser;
        long dialogId;
        int dialogFilterId;
        int dialogFolderId;
        Class<T> cls;
        ArrayList<PulledDialog> arrayList = new ArrayList<>();
        if (baseFragment == null || (parentLayout = baseFragment.getParentLayout()) == null) {
            return arrayList;
        }
        List<BaseFragment> fragmentStack = parentLayout.getFragmentStack();
        List<PulledDialog> pulledDialogs = parentLayout.getPulledDialogs();
        if (fragmentStack != null) {
            int size = fragmentStack.size();
            for (int i = 0; i < size; i++) {
                BaseFragment baseFragment2 = fragmentStack.get(i);
                if (baseFragment2 instanceof ChatActivity) {
                    ChatActivity chatActivity = (ChatActivity) baseFragment2;
                    if (chatActivity.getChatMode() == 0 && !chatActivity.isReport()) {
                        currentChat = chatActivity.getCurrentChat();
                        currentUser = chatActivity.getCurrentUser();
                        dialogId = chatActivity.getDialogId();
                        dialogFolderId = chatActivity.getDialogFolderId();
                        dialogFilterId = chatActivity.getDialogFilterId();
                        cls = ChatActivity.class;
                        if (dialogId == j && (j != 0 || !UserObject.isUserSelf(currentUser))) {
                            int i2 = 0;
                            while (true) {
                                if (i2 >= arrayList.size()) {
                                    PulledDialog pulledDialog = new PulledDialog();
                                    pulledDialog.activity = cls;
                                    pulledDialog.stackIndex = i;
                                    pulledDialog.chat = currentChat;
                                    pulledDialog.user = currentUser;
                                    pulledDialog.dialogId = dialogId;
                                    pulledDialog.folderId = dialogFolderId;
                                    pulledDialog.filterId = dialogFilterId;
                                    if (currentChat != null || currentUser != null) {
                                        arrayList.add(pulledDialog);
                                    }
                                } else {
                                    if (arrayList.get(i2).dialogId == dialogId) {
                                        break;
                                    }
                                    i2++;
                                }
                            }
                        }
                    }
                } else if (baseFragment2 instanceof ProfileActivity) {
                    ProfileActivity profileActivity = (ProfileActivity) baseFragment2;
                    currentChat = profileActivity.getCurrentChat();
                    try {
                        currentUser = profileActivity.getUserInfo().user;
                    } catch (Exception unused) {
                        currentUser = null;
                    }
                    dialogId = profileActivity.getDialogId();
                    dialogFilterId = 0;
                    dialogFolderId = 0;
                    cls = ProfileActivity.class;
                    if (dialogId == j) {
                    }
                }
            }
        }
        if (pulledDialogs != null) {
            for (int size2 = pulledDialogs.size() - 1; size2 >= 0; size2--) {
                PulledDialog pulledDialog2 = pulledDialogs.get(size2);
                if (pulledDialog2.dialogId != j) {
                    int i3 = 0;
                    while (true) {
                        if (i3 >= arrayList.size()) {
                            arrayList.add(pulledDialog2);
                            break;
                        }
                        if (arrayList.get(i3).dialogId == pulledDialog2.dialogId) {
                            break;
                        }
                        i3++;
                    }
                }
            }
        }
        Collections.sort(arrayList, new Comparator() { // from class: org.telegram.ui.Components.BackButtonMenu$$ExternalSyntheticLambda1
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return BackButtonMenu.m10053$r8$lambda$sPUzo9otFwawnC1lMMb0CzYuf8((BackButtonMenu.PulledDialog) obj, (BackButtonMenu.PulledDialog) obj2);
            }
        });
        return arrayList;
    }

    /* JADX INFO: renamed from: $r8$lambda$sPUzo9otFwawnC1-lMMb0CzYuf8, reason: not valid java name */
    public static /* synthetic */ int m10053$r8$lambda$sPUzo9otFwawnC1lMMb0CzYuf8(PulledDialog pulledDialog, PulledDialog pulledDialog2) {
        return pulledDialog2.stackIndex - pulledDialog.stackIndex;
    }

    public static void addToPulledDialogs(BaseFragment baseFragment, int i, TLRPC.Chat chat, TLRPC.User user, TLRPC.TL_forumTopic tL_forumTopic, long j, int i2, int i3) {
        INavigationLayout parentLayout;
        TLRPC.TL_forumTopic tL_forumTopic2;
        if ((chat == null && user == null) || baseFragment == null || (parentLayout = baseFragment.getParentLayout()) == null) {
            return;
        }
        if (parentLayout.getPulledDialogs() == null) {
            parentLayout.setPulledDialogs(new ArrayList());
        }
        for (PulledDialog pulledDialog : parentLayout.getPulledDialogs()) {
            if (tL_forumTopic == null && pulledDialog.dialogId == j) {
                return;
            }
            if (tL_forumTopic != null && (tL_forumTopic2 = pulledDialog.topic) != null && tL_forumTopic2.id == tL_forumTopic.id) {
                return;
            }
        }
        PulledDialog pulledDialog2 = new PulledDialog();
        pulledDialog2.activity = ChatActivity.class;
        pulledDialog2.stackIndex = i;
        pulledDialog2.dialogId = j;
        pulledDialog2.filterId = i3;
        pulledDialog2.folderId = i2;
        pulledDialog2.chat = chat;
        pulledDialog2.user = user;
        pulledDialog2.topic = tL_forumTopic;
        parentLayout.getPulledDialogs().add(pulledDialog2);
    }

    public static void clearPulledDialogs(BaseFragment baseFragment, int i) {
        INavigationLayout parentLayout;
        if (baseFragment == null || (parentLayout = baseFragment.getParentLayout()) == null || parentLayout.getPulledDialogs() == null) {
            return;
        }
        int i2 = 0;
        while (i2 < parentLayout.getPulledDialogs().size()) {
            if (parentLayout.getPulledDialogs().get(i2).stackIndex > i) {
                parentLayout.getPulledDialogs().remove(i2);
                i2--;
            }
            i2++;
        }
    }
}
