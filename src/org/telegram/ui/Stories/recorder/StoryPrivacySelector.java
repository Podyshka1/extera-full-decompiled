package org.telegram.ui.Stories.recorder;

import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.AbstractSerializedData;
import org.telegram.tgnet.SerializedData;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.Vector;
import org.telegram.ui.Stories.recorder.StoryPrivacyBottomSheet;
import org.webrtc.GlShader$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes7.dex */
public abstract class StoryPrivacySelector extends View {
    private static StoryPrivacyBottomSheet.StoryPrivacy read(AbstractSerializedData abstractSerializedData) {
        boolean z = true;
        int int32 = abstractSerializedData.readInt32(true);
        if (abstractSerializedData.readInt32(true) != 481674261) {
            GlShader$$ExternalSyntheticBUOutline1.m1109m("wrong Vector magic in TL_StoryPrivacy");
            return null;
        }
        int int322 = abstractSerializedData.readInt32(true);
        ArrayList arrayList = new ArrayList(int322);
        for (int i = 0; i < int322; i++) {
            arrayList.add(TLRPC.InputUser.TLdeserialize(abstractSerializedData, abstractSerializedData.readInt32(true), true));
        }
        if (abstractSerializedData.readInt32(true) != 481674261) {
            GlShader$$ExternalSyntheticBUOutline1.m1109m("wrong Vector magic in TL_StoryPrivacy (2)");
            return null;
        }
        int int323 = abstractSerializedData.readInt32(true);
        ArrayList arrayList2 = new ArrayList(int323);
        for (int i2 = 0; i2 < int323; i2++) {
            arrayList2.add(Long.valueOf(abstractSerializedData.readInt64(true)));
        }
        if (abstractSerializedData.readInt32(true) != 481674261) {
            GlShader$$ExternalSyntheticBUOutline1.m1109m("wrong Vector magic in TL_StoryPrivacy (3)");
            return null;
        }
        int int324 = abstractSerializedData.readInt32(true);
        HashMap map = new HashMap();
        int i3 = 0;
        while (i3 < int324) {
            long int64 = abstractSerializedData.readInt64(z);
            if (abstractSerializedData.readInt32(z) != 481674261) {
                GlShader$$ExternalSyntheticBUOutline1.m1109m("wrong Vector magic in TL_StoryPrivacy (4)");
                return null;
            }
            int int325 = abstractSerializedData.readInt32(z);
            ArrayList arrayList3 = new ArrayList(int325);
            int i4 = 0;
            while (i4 < int325) {
                arrayList3.add(Long.valueOf(abstractSerializedData.readInt64(z)));
                i4++;
                z = true;
            }
            map.put(Long.valueOf(int64), arrayList3);
            i3++;
            z = true;
        }
        HashSet hashSet = new HashSet();
        hashSet.addAll(arrayList2);
        Iterator it = map.values().iterator();
        while (it.hasNext()) {
            hashSet.addAll((ArrayList) it.next());
        }
        StoryPrivacyBottomSheet.StoryPrivacy storyPrivacy = new StoryPrivacyBottomSheet.StoryPrivacy(int32, (ArrayList<TLRPC.InputUser>) arrayList, 0);
        storyPrivacy.selectedUserIds.clear();
        storyPrivacy.selectedUserIds.addAll(arrayList2);
        storyPrivacy.selectedUserIdsByGroup.clear();
        storyPrivacy.selectedUserIdsByGroup.putAll(map);
        return storyPrivacy;
    }

    private static void write(AbstractSerializedData abstractSerializedData, StoryPrivacyBottomSheet.StoryPrivacy storyPrivacy) {
        abstractSerializedData.writeInt32(storyPrivacy.type);
        abstractSerializedData.writeInt32(Vector.constructor);
        abstractSerializedData.writeInt32(storyPrivacy.selectedInputUsers.size());
        ArrayList<TLRPC.InputUser> arrayList = storyPrivacy.selectedInputUsers;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            TLRPC.InputUser inputUser = arrayList.get(i);
            i++;
            inputUser.serializeToStream(abstractSerializedData);
        }
        abstractSerializedData.writeInt32(Vector.constructor);
        abstractSerializedData.writeInt32(storyPrivacy.selectedUserIds.size());
        ArrayList<Long> arrayList2 = storyPrivacy.selectedUserIds;
        int size2 = arrayList2.size();
        int i2 = 0;
        while (i2 < size2) {
            Long l = arrayList2.get(i2);
            i2++;
            abstractSerializedData.writeInt64(l.longValue());
        }
        abstractSerializedData.writeInt32(Vector.constructor);
        abstractSerializedData.writeInt32(storyPrivacy.selectedUserIdsByGroup.size());
        for (Map.Entry<Long, ArrayList<Long>> entry : storyPrivacy.selectedUserIdsByGroup.entrySet()) {
            abstractSerializedData.writeInt64(entry.getKey().longValue());
            abstractSerializedData.writeInt32(Vector.constructor);
            abstractSerializedData.writeInt32(entry.getValue().size());
            ArrayList<Long> value = entry.getValue();
            int size3 = value.size();
            int i3 = 0;
            while (i3 < size3) {
                Long l2 = value.get(i3);
                i3++;
                abstractSerializedData.writeInt64(l2.longValue());
            }
        }
    }

    public static void save(int i, StoryPrivacyBottomSheet.StoryPrivacy storyPrivacy) {
        if (storyPrivacy == null) {
            MessagesController.getInstance(i).getMainSettings().edit().remove("story_privacy2").apply();
            return;
        }
        SerializedData serializedData = new SerializedData(true);
        write(serializedData, storyPrivacy);
        SerializedData serializedData2 = new SerializedData(serializedData.length());
        serializedData.cleanup();
        write(serializedData2, storyPrivacy);
        MessagesController.getInstance(i).getMainSettings().edit().putString("story_privacy2", Utilities.bytesToHex(serializedData2.toByteArray())).apply();
        serializedData2.cleanup();
    }

    private static StoryPrivacyBottomSheet.StoryPrivacy getSaved(final int i) {
        try {
            String string = MessagesController.getInstance(i).getMainSettings().getString("story_privacy2", null);
            if (string == null) {
                return new StoryPrivacyBottomSheet.StoryPrivacy();
            }
            SerializedData serializedData = new SerializedData(Utilities.hexToBytes(string));
            StoryPrivacyBottomSheet.StoryPrivacy storyPrivacy = read(serializedData);
            serializedData.cleanup();
            if (storyPrivacy.isNone()) {
                return new StoryPrivacyBottomSheet.StoryPrivacy();
            }
            final HashSet hashSet = new HashSet();
            hashSet.addAll(storyPrivacy.selectedUserIds);
            Iterator<ArrayList<Long>> it = storyPrivacy.selectedUserIdsByGroup.values().iterator();
            while (it.hasNext()) {
                hashSet.addAll(it.next());
            }
            if (!hashSet.isEmpty()) {
                final MessagesStorage messagesStorage = MessagesStorage.getInstance(i);
                messagesStorage.getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryPrivacySelector$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        StoryPrivacySelector.$r8$lambda$1GeR3B71u4SYlnnRN3ZTI6oCWXk(messagesStorage, hashSet, i);
                    }
                });
            }
            return storyPrivacy;
        } catch (Exception e) {
            FileLog.m1040e(e);
            return new StoryPrivacyBottomSheet.StoryPrivacy();
        }
    }

    public static /* synthetic */ void $r8$lambda$1GeR3B71u4SYlnnRN3ZTI6oCWXk(MessagesStorage messagesStorage, HashSet hashSet, final int i) {
        final ArrayList<TLRPC.User> users = messagesStorage.getUsers(new ArrayList<>(hashSet));
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Stories.recorder.StoryPrivacySelector$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                MessagesController.getInstance(i).putUsers(users, true);
            }
        });
    }

    public static void applySaved(int i, StoryEntry storyEntry) {
        if (storyEntry == null) {
            return;
        }
        storyEntry.privacy = getSaved(i);
        storyEntry.privacyRules.clear();
        storyEntry.privacyRules.addAll(storyEntry.privacy.rules);
        if (UserConfig.getInstance(i).isPremium()) {
            storyEntry.period = MessagesController.getInstance(i).getMainSettings().getInt("story_period", 86400);
        } else {
            storyEntry.period = 86400;
        }
    }
}
