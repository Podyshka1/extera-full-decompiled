package org.telegram.p029ui.Components;

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
import com.android.p003dx.p006io.Opcodes;
import com.exteragram.messenger.ExteraConfig;
import com.google.android.material.navigation.NavigationBarView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserObject;
import org.telegram.p029ui.ActionBar.ActionBarPopupWindow;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.INavigationLayout;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.ChatActivity;
import org.telegram.p029ui.Components.BackButtonMenu;
import org.telegram.p029ui.Components.Forum.ForumUtilities;
import org.telegram.p029ui.DialogsActivity;
import org.telegram.p029ui.ProfileActivity;
import org.telegram.p029ui.TopicsFragment;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes3.dex */
public abstract class BackButtonMenu {

    /* JADX INFO: loaded from: classes7.dex */
    public static class PulledDialog {
        Class activity;
        TLRPC.Chat chat;
        long dialogId;
        int filterId;
        int folderId;
        int stackIndex;
        TLRPC.TL_forumTopic topic;
        TLRPC.User user;
    }

    /* JADX WARN: Removed duplicated region for block: B:61:0x0186  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0253  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0274 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static ActionBarPopupWindow show(final BaseFragment baseFragment, View view, long j, long j2, Theme.ResourcesProvider resourcesProvider) {
        ArrayList stackedHistoryDialogs;
        ActionBarPopupWindow actionBarPopupWindow;
        int i;
        AtomicReference atomicReference;
        boolean z;
        PulledDialog pulledDialog;
        boolean z2;
        boolean z3;
        String string;
        BaseFragment baseFragment2 = baseFragment;
        ActionBarPopupWindow actionBarPopupWindow2 = null;
        if (baseFragment2 == null) {
            return null;
        }
        INavigationLayout parentLayout = baseFragment2.getParentLayout();
        Activity parentActivity = baseFragment2.getParentActivity();
        View fragmentView = baseFragment2.getFragmentView();
        if (parentLayout == null || parentActivity == null || fragmentView == null) {
            return null;
        }
        long j3 = 0;
        if (j2 != 0 && !ChatObject.isMonoForum(baseFragment2.getCurrentAccount(), j)) {
            stackedHistoryDialogs = getStackedHistoryForTopic(baseFragment2, j, j2);
        } else {
            stackedHistoryDialogs = getStackedHistoryDialogs(baseFragment2, j);
        }
        ArrayList arrayList = stackedHistoryDialogs;
        if (arrayList.size() <= 0) {
            return null;
        }
        ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = new ActionBarPopupWindow.ActionBarPopupWindowLayout(parentActivity, resourcesProvider);
        Rect rect = new Rect();
        baseFragment2.getParentActivity().getResources().getDrawable(C2888R.drawable.popup_fixed_alert).mutate().getPadding(rect);
        actionBarPopupWindowLayout.setBackgroundColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuBackground, resourcesProvider));
        final AtomicReference atomicReference2 = new AtomicReference();
        int i2 = 0;
        boolean z4 = false;
        while (true) {
            actionBarPopupWindow = actionBarPopupWindow2;
            if (i2 >= arrayList.size()) {
                break;
            }
            PulledDialog pulledDialog2 = (PulledDialog) arrayList.get(i2);
            long j4 = j3;
            TLRPC.Chat chat = pulledDialog2.chat;
            TLRPC.User user = pulledDialog2.user;
            final INavigationLayout iNavigationLayout = parentLayout;
            final TLRPC.TL_forumTopic tL_forumTopic = pulledDialog2.topic;
            FrameLayout frameLayout = new FrameLayout(parentActivity);
            frameLayout.setMinimumWidth(AndroidUtilities.m1124dp(200.0f));
            BackupImageView backupImageView = new BackupImageView(parentActivity);
            if (chat == null && user == null) {
                i = i2;
                backupImageView.setRoundRadius(0);
                atomicReference = atomicReference2;
                z = z4;
            } else {
                i = i2;
                atomicReference = atomicReference2;
                z = z4;
                backupImageView.setRoundRadius(ExteraConfig.getAvatarCorners(32.0f, false, chat != null && chat.forum));
            }
            frameLayout.addView(backupImageView, LayoutHelper.createFrameRelatively(32.0f, 32.0f, NavigationBarView.ITEM_GRAVITY_START_CENTER, 13.0f, 0.0f, 0.0f, 0.0f));
            TextView textView = new TextView(parentActivity);
            textView.setLines(1);
            textView.setTextSize(1, 16.0f);
            textView.setTextColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuItem, resourcesProvider));
            textView.setEllipsize(TextUtils.TruncateAt.END);
            frameLayout.addView(textView, LayoutHelper.createFrameRelatively(-1.0f, -2.0f, NavigationBarView.ITEM_GRAVITY_START_CENTER, 59.0f, 0.0f, 12.0f, 0.0f));
            AvatarDrawable avatarDrawable = new AvatarDrawable();
            avatarDrawable.setScaleSize(0.8f);
            if (tL_forumTopic != null) {
                if (tL_forumTopic.f1720id == 1) {
                    backupImageView.setImageDrawable(ForumUtilities.createGeneralTopicDrawable(fragmentView.getContext(), 1.0f, Theme.getColor(Theme.key_chat_inMenu, resourcesProvider), false));
                } else if (tL_forumTopic.icon_emoji_id != j4) {
                    backupImageView.setAnimatedEmojiDrawable(new AnimatedEmojiDrawable(10, baseFragment2.getCurrentAccount(), tL_forumTopic.icon_emoji_id));
                } else {
                    backupImageView.setImageDrawable(ForumUtilities.createTopicDrawable(tL_forumTopic, false));
                }
                textView.setText(tL_forumTopic.title);
            } else if (chat != null) {
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
                backupImageView.setImage(ImageLocation.getForChat(chat, 1), "50_50", drawable, chat);
                textView.setText(chat.title);
            } else if (user != null) {
                TLRPC.UserProfilePhoto userProfilePhoto = user.photo;
                if (userProfilePhoto != null) {
                    BitmapDrawable bitmapDrawable2 = userProfilePhoto.strippedBitmap;
                    Drawable drawable2 = bitmapDrawable2;
                    if (bitmapDrawable2 == null) {
                        drawable2 = avatarDrawable;
                    }
                    pulledDialog = pulledDialog2;
                    if (pulledDialog2.activity == ChatActivity.class && UserObject.isUserSelf(user)) {
                        string = LocaleController.getString(C2888R.string.SavedMessages);
                        avatarDrawable.setAvatarType(1);
                        backupImageView.setImageDrawable(avatarDrawable);
                    } else if (UserObject.isReplyUser(user)) {
                        string = LocaleController.getString(C2888R.string.RepliesTitle);
                        avatarDrawable.setAvatarType(12);
                        backupImageView.setImageDrawable(avatarDrawable);
                    } else if (UserObject.isDeleted(user)) {
                        String string2 = LocaleController.getString(C2888R.string.HiddenName);
                        avatarDrawable.setInfo(baseFragment.getCurrentAccount(), user);
                        backupImageView.setImage(ImageLocation.getForUser(user, 1), "50_50", avatarDrawable, user);
                        string = string2;
                    } else {
                        String userName = UserObject.getUserName(user);
                        avatarDrawable.setInfo(baseFragment.getCurrentAccount(), user);
                        backupImageView.setImage(ImageLocation.getForUser(user, 1), "50_50", drawable2, user);
                        string = userName;
                    }
                    textView.setText(string);
                    z3 = false;
                    z2 = true;
                }
                frameLayout.setBackground(Theme.getSelectorDrawable(Theme.getColor(Theme.key_listSelector, resourcesProvider), false));
                atomicReference2 = atomicReference;
                final PulledDialog pulledDialog3 = pulledDialog;
                frameLayout.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.BackButtonMenu$$ExternalSyntheticLambda0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        BackButtonMenu.$r8$lambda$LjwJnyIy4aTYeceLn6PSUidUlns(atomicReference2, pulledDialog3, iNavigationLayout, tL_forumTopic, baseFragment, view2);
                    }
                });
                actionBarPopupWindowLayout.addView((View) frameLayout, LayoutHelper.createLinear(-1, 48));
                if (z3) {
                    View frameLayout2 = new FrameLayout(parentActivity);
                    frameLayout2.setBackgroundColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuSeparator, resourcesProvider));
                    frameLayout2.setTag(C2888R.id.fit_width_tag, 1);
                    actionBarPopupWindowLayout.addView(frameLayout2, LayoutHelper.createLinear(-1, 8));
                }
                i2 = i + 1;
                baseFragment2 = baseFragment;
                z4 = z2;
                actionBarPopupWindow2 = actionBarPopupWindow;
                j3 = j4;
                parentLayout = iNavigationLayout;
            } else {
                pulledDialog = pulledDialog2;
                backupImageView.setImageDrawable(ContextCompat.getDrawable(parentActivity, C2888R.drawable.msg_viewchats).mutate());
                backupImageView.setSize(AndroidUtilities.m1124dp(24.0f), AndroidUtilities.m1124dp(24.0f));
                backupImageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_actionBarDefaultSubmenuItemIcon, resourcesProvider), PorterDuff.Mode.MULTIPLY));
                textView.setText(LocaleController.getString(C2888R.string.AllChats));
                z2 = z;
                z3 = true;
                frameLayout.setBackground(Theme.getSelectorDrawable(Theme.getColor(Theme.key_listSelector, resourcesProvider), false));
                atomicReference2 = atomicReference;
                final PulledDialog pulledDialog32 = pulledDialog;
                frameLayout.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.BackButtonMenu$$ExternalSyntheticLambda0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        BackButtonMenu.$r8$lambda$LjwJnyIy4aTYeceLn6PSUidUlns(atomicReference2, pulledDialog32, iNavigationLayout, tL_forumTopic, baseFragment, view2);
                    }
                });
                actionBarPopupWindowLayout.addView((View) frameLayout, LayoutHelper.createLinear(-1, 48));
                if (z3) {
                }
                i2 = i + 1;
                baseFragment2 = baseFragment;
                z4 = z2;
                actionBarPopupWindow2 = actionBarPopupWindow;
                j3 = j4;
                parentLayout = iNavigationLayout;
            }
            pulledDialog = pulledDialog2;
            z3 = false;
            z2 = true;
            frameLayout.setBackground(Theme.getSelectorDrawable(Theme.getColor(Theme.key_listSelector, resourcesProvider), false));
            atomicReference2 = atomicReference;
            final PulledDialog pulledDialog322 = pulledDialog;
            frameLayout.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.BackButtonMenu$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    BackButtonMenu.$r8$lambda$LjwJnyIy4aTYeceLn6PSUidUlns(atomicReference2, pulledDialog322, iNavigationLayout, tL_forumTopic, baseFragment, view2);
                }
            });
            actionBarPopupWindowLayout.addView((View) frameLayout, LayoutHelper.createLinear(-1, 48));
            if (z3) {
            }
            i2 = i + 1;
            baseFragment2 = baseFragment;
            z4 = z2;
            actionBarPopupWindow2 = actionBarPopupWindow;
            j3 = j4;
            parentLayout = iNavigationLayout;
        }
        if (!z4) {
            return actionBarPopupWindow;
        }
        ActionBarPopupWindow actionBarPopupWindow3 = new ActionBarPopupWindow(actionBarPopupWindowLayout, -2, -2);
        atomicReference2.set(actionBarPopupWindow3);
        actionBarPopupWindow3.setPauseNotifications(true);
        actionBarPopupWindow3.setDismissAnimationDuration(Opcodes.REM_INT_LIT8);
        actionBarPopupWindow3.setOutsideTouchable(true);
        actionBarPopupWindow3.setClippingEnabled(true);
        actionBarPopupWindow3.setAnimationStyle(C2888R.style.PopupContextAnimation);
        actionBarPopupWindow3.setFocusable(true);
        actionBarPopupWindowLayout.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(1000.0f), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(1000.0f), Integer.MIN_VALUE));
        actionBarPopupWindow3.setInputMethodMode(2);
        actionBarPopupWindow3.setSoftInputMode(0);
        actionBarPopupWindow3.getContentView().setFocusableInTouchMode(true);
        actionBarPopupWindowLayout.setFitItems(true);
        int iM1124dp = AndroidUtilities.m1124dp(8.0f) - rect.left;
        if (AndroidUtilities.isTablet()) {
            int[] iArr = new int[2];
            fragmentView.getLocationInWindow(iArr);
            iM1124dp += iArr[0];
        }
        actionBarPopupWindow3.showAtLocation(fragmentView, 51, iM1124dp, (view.getBottom() - rect.top) - AndroidUtilities.m1124dp(8.0f));
        return actionBarPopupWindow3;
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
                if ((lValueOf2 == null && lValueOf2.longValue() != pulledDialog.dialogId) || !(tL_forumTopic == null || lValueOf == null || tL_forumTopic.f1720id == lValueOf.longValue())) {
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
                BaseFragment baseFragment2 = (BaseFragment) iNavigationLayout.getFragmentStack().get(pulledDialog.stackIndex);
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

    private static ArrayList getStackedHistoryForTopic(BaseFragment baseFragment, long j, long j2) {
        INavigationLayout parentLayout;
        int i;
        ArrayList arrayList = new ArrayList();
        if (baseFragment == null || (parentLayout = baseFragment.getParentLayout()) == null) {
            return arrayList;
        }
        List pulledDialogs = parentLayout.getPulledDialogs();
        if (pulledDialogs != null) {
            i = -1;
            for (int i2 = 0; i2 < pulledDialogs.size(); i2++) {
                PulledDialog pulledDialog = (PulledDialog) pulledDialogs.get(i2);
                if (pulledDialog.topic != null && r7.f1720id != j2) {
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
        Class cls = pulledDialog.activity;
        if (cls == ChatActivity.class) {
            Bundle bundle = new Bundle();
            TLRPC.Chat chat = pulledDialog.chat;
            if (chat != null) {
                bundle.putLong("chat_id", chat.f1660id);
            } else {
                TLRPC.User user = pulledDialog.user;
                if (user != null) {
                    bundle.putLong("user_id", user.f1825id);
                }
            }
            bundle.putInt("dialog_folder_id", pulledDialog.folderId);
            bundle.putInt("dialog_filter_id", pulledDialog.filterId);
            TLRPC.TL_forumTopic tL_forumTopic = pulledDialog.topic;
            if (tL_forumTopic != null) {
                baseFragment2 = baseFragment;
                baseFragment2.presentFragment(ForumUtilities.getChatActivityForTopic(baseFragment2, pulledDialog.chat.f1660id, tL_forumTopic, 0, bundle), true);
            } else {
                baseFragment2 = baseFragment;
                baseFragment2.presentFragment(new ChatActivity(bundle), true);
            }
        } else {
            baseFragment2 = baseFragment;
            if (cls == ProfileActivity.class) {
                Bundle bundle2 = new Bundle();
                bundle2.putLong("dialog_id", pulledDialog.dialogId);
                baseFragment2.presentFragment(new ProfileActivity(bundle2), true);
            }
        }
        if (pulledDialog.activity == TopicsFragment.class) {
            Bundle bundle3 = new Bundle();
            bundle3.putLong("chat_id", pulledDialog.chat.f1660id);
            baseFragment2.presentFragment(new TopicsFragment(bundle3), true);
        }
        if (pulledDialog.activity == DialogsActivity.class) {
            baseFragment2.presentFragment(new DialogsActivity(null), true);
        }
    }

    public static ArrayList getStackedHistoryDialogs(BaseFragment baseFragment, long j) {
        INavigationLayout parentLayout;
        TLRPC.Chat currentChat;
        TLRPC.User currentUser;
        long dialogId;
        Class cls;
        int dialogFilterId;
        int dialogFolderId;
        ArrayList arrayList = new ArrayList();
        if (baseFragment == null || (parentLayout = baseFragment.getParentLayout()) == null) {
            return arrayList;
        }
        List fragmentStack = parentLayout.getFragmentStack();
        List pulledDialogs = parentLayout.getPulledDialogs();
        if (fragmentStack != null) {
            int size = fragmentStack.size();
            for (int i = 0; i < size; i++) {
                BaseFragment baseFragment2 = (BaseFragment) fragmentStack.get(i);
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
                                    if (((PulledDialog) arrayList.get(i2)).dialogId == dialogId) {
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
                    cls = ProfileActivity.class;
                    dialogFilterId = 0;
                    dialogFolderId = 0;
                    if (dialogId == j) {
                    }
                }
            }
        }
        if (pulledDialogs != null) {
            for (int size2 = pulledDialogs.size() - 1; size2 >= 0; size2--) {
                PulledDialog pulledDialog2 = (PulledDialog) pulledDialogs.get(size2);
                if (pulledDialog2.dialogId != j) {
                    int i3 = 0;
                    while (true) {
                        if (i3 >= arrayList.size()) {
                            arrayList.add(pulledDialog2);
                            break;
                        }
                        if (((PulledDialog) arrayList.get(i3)).dialogId == pulledDialog2.dialogId) {
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
                return BackButtonMenu.m8778$r8$lambda$sPUzo9otFwawnC1lMMb0CzYuf8((BackButtonMenu.PulledDialog) obj, (BackButtonMenu.PulledDialog) obj2);
            }
        });
        return arrayList;
    }

    /* JADX INFO: renamed from: $r8$lambda$sPUzo9otFwawnC1-lMMb0CzYuf8, reason: not valid java name */
    public static /* synthetic */ int m8778$r8$lambda$sPUzo9otFwawnC1lMMb0CzYuf8(PulledDialog pulledDialog, PulledDialog pulledDialog2) {
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
            if (tL_forumTopic != null && (tL_forumTopic2 = pulledDialog.topic) != null && tL_forumTopic2.f1720id == tL_forumTopic.f1720id) {
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
            if (((PulledDialog) parentLayout.getPulledDialogs().get(i2)).stackIndex > i) {
                parentLayout.getPulledDialogs().remove(i2);
                i2--;
            }
            i2++;
        }
    }
}
