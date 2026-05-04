package com.exteragram.messenger.regdate;

import com.exteragram.messenger.api.dto.RegDateDTO;
import com.exteragram.messenger.api.model.RegDateFlag;
import com.exteragram.messenger.api.p010db.DatabaseHelper;
import com.exteragram.messenger.backup.InvisibleEncryptor;
import com.exteragram.messenger.badges.BadgesController;
import com.exteragram.messenger.utils.chats.ChatUtils;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.function.Consumer;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLRPC;
import p022j$.util.function.Consumer$CC;

/* JADX INFO: loaded from: classes4.dex */
public final class RegDateController {
    public static final Companion Companion = new Companion(null);
    private static final RegDateController[] Instance = new RegDateController[16];
    private static final Object[] lockObjects;
    private static Long[] regDates;
    private static Long[] regIds;
    private final int currentAccount;
    private final HashMap regDateCache = new HashMap();

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[RegDateFlag.values().length];
            try {
                iArr[RegDateFlag.f269LT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[RegDateFlag.f268ET.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final RegDateController getInstance(int i) {
        return Companion.getInstance(i);
    }

    public RegDateController(int i) {
        this.currentAccount = i;
    }

    public final void fetchRegistrationDate(final long j, final Consumer callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (!BadgesController.hasBadge$default(BadgesController.INSTANCE, null, 1, null)) {
            callback.m940v(null);
            return;
        }
        if (this.regDateCache.containsKey(Long.valueOf(j))) {
            RegDateDTO regDateDTO = (RegDateDTO) this.regDateCache.get(Long.valueOf(j));
            if (regDateDTO != null) {
                callback.m940v(regDateDTO);
                return;
            }
            return;
        }
        ChatUtils.getInstance(this.currentAccount).sendBotRequest("regdate " + j, false, new Utilities.Callback() { // from class: com.exteragram.messenger.regdate.RegDateController$$ExternalSyntheticLambda1
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                RegDateController.fetchRegistrationDate$lambda$1(this.f$0, j, callback, (String) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void fetchRegistrationDate$lambda$1(final RegDateController regDateController, final long j, final Consumer consumer, final String str) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.regdate.RegDateController$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                RegDateController.fetchRegistrationDate$lambda$1$0(str, regDateController, j, consumer);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void fetchRegistrationDate$lambda$1$0(String str, RegDateController regDateController, long j, Consumer consumer) {
        if (str != null && !StringsKt.startsWith$default(str, "failed", false, 2, (Object) null)) {
            try {
                RegDateDTO regDateDTO = (RegDateDTO) new Gson().fromJson(str, RegDateDTO.class);
                regDateController.regDateCache.put(Long.valueOf(j), regDateDTO);
                consumer.m940v(regDateDTO);
                return;
            } catch (Exception e) {
                FileLog.m1136e(e);
                consumer.m940v(null);
                return;
            }
        }
        consumer.m940v(null);
    }

    public final void addRegistrationDate(final long j, final long j2, final Consumer callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (!BadgesController.isDeveloper$default(BadgesController.INSTANCE, null, 1, null)) {
            callback.m940v("прости, но нет");
        } else {
            DatabaseHelper.isRegDateAdded(j, new Consumer() { // from class: com.exteragram.messenger.regdate.RegDateController$$ExternalSyntheticLambda0
                @Override // java.util.function.Consumer
                /* JADX INFO: renamed from: accept */
                public final void m940v(Object obj) {
                    RegDateController.addRegistrationDate$lambda$0(callback, j, j2, this, (Boolean) obj);
                }

                public /* synthetic */ Consumer andThen(Consumer consumer) {
                    return Consumer$CC.$default$andThen(this, consumer);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void addRegistrationDate$lambda$0(final Consumer consumer, final long j, final long j2, final RegDateController regDateController, final Boolean isAdded) {
        Intrinsics.checkNotNullParameter(isAdded, "isAdded");
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.regdate.RegDateController$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                RegDateController.addRegistrationDate$lambda$0$0(isAdded, consumer, j, j2, regDateController);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void addRegistrationDate$lambda$0$0(Boolean bool, final Consumer consumer, final long j, long j2, RegDateController regDateController) {
        if (bool.booleanValue()) {
            consumer.m940v("ok");
            return;
        }
        ChatUtils.getInstance(regDateController.currentAccount).sendBotRequest("addregdate " + j + ' ' + j2, false, new Utilities.Callback() { // from class: com.exteragram.messenger.regdate.RegDateController$$ExternalSyntheticLambda3
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                RegDateController.addRegistrationDate$lambda$0$0$0(j, consumer, (String) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void addRegistrationDate$lambda$0$0$0(long j, Consumer consumer, String str) {
        if (Intrinsics.areEqual(str, "ok")) {
            DatabaseHelper.setRegDateAdded(j);
        }
        if (str == null) {
            str = "no results";
        }
        consumer.m940v(str);
    }

    public final String formatRegistrationDate(long j, RegDateDTO regDateDTO) {
        String string;
        String string2;
        if (regDateDTO == null) {
            return getUserRegistrationDate(j);
        }
        String yearMont = LocaleController.formatYearMont(regDateDTO.getTimestamp(), true);
        String name = ContactsController.formatName(MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(j)));
        Intrinsics.checkNotNullExpressionValue(name, "formatName(...)");
        RegDateFlag flag = regDateDTO.getFlag();
        if (j == UserConfig.getInstance(this.currentAccount).clientUserId) {
            int i = WhenMappings.$EnumSwitchMapping$0[flag.ordinal()];
            if (i == 1) {
                string2 = LocaleController.formatString(C2888R.string.CreationDateSelfEarlier, yearMont);
            } else if (i == 2) {
                string2 = LocaleController.formatString(C2888R.string.CreationDateSelfLater, yearMont);
            } else {
                string2 = LocaleController.formatString(C2888R.string.CreationDateSelfApproximately, yearMont);
            }
            Intrinsics.checkNotNull(string2);
            return string2;
        }
        int i2 = WhenMappings.$EnumSwitchMapping$0[flag.ordinal()];
        if (i2 == 1) {
            string = LocaleController.formatString(C2888R.string.CreationDateUserEarlier, name, yearMont);
        } else if (i2 == 2) {
            string = LocaleController.formatString(C2888R.string.CreationDateUserLater, name, yearMont);
        } else {
            string = LocaleController.formatString(C2888R.string.CreationDateUserApproximately, name, yearMont);
        }
        Intrinsics.checkNotNull(string);
        return string;
    }

    public final String getUserRegistrationDate(long j) {
        long jFindUserRegistrationDate = findUserRegistrationDate(j);
        String dateChat = LocaleController.formatDateChat(jFindUserRegistrationDate);
        String name = ContactsController.formatName(MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(j)));
        Intrinsics.checkNotNullExpressionValue(name, "formatName(...)");
        if (j == UserConfig.getInstance(this.currentAccount).clientUserId) {
            Long lValueOf = Long.valueOf(jFindUserRegistrationDate);
            Long[] lArr = regDates;
            Intrinsics.checkNotNull(lArr);
            if (lValueOf.equals(lArr[0])) {
                String string = LocaleController.formatString(C2888R.string.CreationDateSelfEarlier, dateChat);
                Intrinsics.checkNotNullExpressionValue(string, "formatString(...)");
                return string;
            }
            Long lValueOf2 = Long.valueOf(jFindUserRegistrationDate);
            Long[] lArr2 = regDates;
            Intrinsics.checkNotNull(lArr2);
            Long[] lArr3 = regDates;
            Intrinsics.checkNotNull(lArr3);
            if (lValueOf2.equals(lArr2[lArr3.length - 1])) {
                String string2 = LocaleController.formatString(C2888R.string.CreationDateSelfLater, dateChat);
                Intrinsics.checkNotNullExpressionValue(string2, "formatString(...)");
                return string2;
            }
            String string3 = LocaleController.formatString(C2888R.string.CreationDateSelfApproximately, dateChat);
            Intrinsics.checkNotNullExpressionValue(string3, "formatString(...)");
            return string3;
        }
        Long lValueOf3 = Long.valueOf(jFindUserRegistrationDate);
        Long[] lArr4 = regDates;
        Intrinsics.checkNotNull(lArr4);
        if (lValueOf3.equals(lArr4[0])) {
            String string4 = LocaleController.formatString(C2888R.string.CreationDateUserEarlier, name, dateChat);
            Intrinsics.checkNotNullExpressionValue(string4, "formatString(...)");
            return string4;
        }
        Long lValueOf4 = Long.valueOf(jFindUserRegistrationDate);
        Long[] lArr5 = regDates;
        Intrinsics.checkNotNull(lArr5);
        Long[] lArr6 = regDates;
        Intrinsics.checkNotNull(lArr6);
        if (lValueOf4.equals(lArr5[lArr6.length - 1])) {
            String string5 = LocaleController.formatString(C2888R.string.CreationDateUserLater, name, dateChat);
            Intrinsics.checkNotNullExpressionValue(string5, "formatString(...)");
            return string5;
        }
        String string6 = LocaleController.formatString(C2888R.string.CreationDateUserApproximately, name, dateChat);
        Intrinsics.checkNotNullExpressionValue(string6, "formatString(...)");
        return string6;
    }

    private final long findUserRegistrationDate(long j) {
        long jLongValue;
        Companion.initializeRegIds();
        TLRPC.UserFull userFull = MessagesController.getInstance(this.currentAccount).getUserFull(j);
        MessagesController.DialogPhotos dialogPhotos = MessagesController.getInstance(this.currentAccount).getDialogPhotos(j);
        int iCoerceAtMost = (userFull != null ? userFull.profile_photo : null) != null ? userFull.profile_photo.date : Integer.MAX_VALUE;
        if (dialogPhotos != null && !dialogPhotos.photos.isEmpty()) {
            Iterator<TLRPC.Photo> it = dialogPhotos.photos.iterator();
            Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
            while (it.hasNext()) {
                TLRPC.Photo next = it.next();
                if (next != null) {
                    iCoerceAtMost = RangesKt.coerceAtMost(next.date, iCoerceAtMost);
                }
            }
        }
        Long[] lArr = regIds;
        Intrinsics.checkNotNull(lArr);
        if (j < lArr[0].longValue()) {
            Long[] lArr2 = regDates;
            Intrinsics.checkNotNull(lArr2);
            jLongValue = lArr2[0].longValue();
        } else {
            Long[] lArr3 = regIds;
            Intrinsics.checkNotNull(lArr3);
            Intrinsics.checkNotNull(regIds);
            if (j > lArr3[r2.length - 1].longValue()) {
                Long[] lArr4 = regDates;
                Intrinsics.checkNotNull(lArr4);
                Intrinsics.checkNotNull(regIds);
                jLongValue = lArr4[r11.length - 1].longValue();
            } else {
                Long[] lArr5 = regIds;
                Intrinsics.checkNotNull(lArr5);
                int iBinarySearch = Arrays.binarySearch(lArr5, Long.valueOf(j));
                if (iBinarySearch >= 0) {
                    Long[] lArr6 = regDates;
                    Intrinsics.checkNotNull(lArr6);
                    jLongValue = lArr6[iBinarySearch].longValue();
                } else {
                    int i = -iBinarySearch;
                    int i2 = i - 2;
                    Long[] lArr7 = regIds;
                    Intrinsics.checkNotNull(lArr7);
                    long jLongValue2 = lArr7[i2].longValue();
                    Long[] lArr8 = regIds;
                    Intrinsics.checkNotNull(lArr8);
                    long jLongValue3 = lArr8[i - 1].longValue();
                    Long[] lArr9 = regDates;
                    Intrinsics.checkNotNull(lArr9);
                    long jLongValue4 = lArr9[i2].longValue();
                    Intrinsics.checkNotNull(regDates);
                    jLongValue = (long) (jLongValue4 + ((r2[r1].longValue() - jLongValue4) * ((j - jLongValue2) / (jLongValue3 - jLongValue2))));
                }
            }
        }
        return RangesKt.coerceAtMost(iCoerceAtMost, jLongValue);
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final RegDateController getInstance(int i) {
            RegDateController regDateController;
            RegDateController regDateController2 = RegDateController.Instance[i];
            if (regDateController2 != null) {
                return regDateController2;
            }
            synchronized (RegDateController.lockObjects[i]) {
                try {
                    regDateController = RegDateController.Instance[i];
                    if (regDateController == null) {
                        regDateController = new RegDateController(i);
                        RegDateController.Instance[i] = regDateController;
                    }
                    Unit unit = Unit.INSTANCE;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return regDateController;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void initializeRegIds() {
            if (RegDateController.regIds != null) {
                return;
            }
            try {
                InputStream inputStreamOpen = ApplicationLoader.applicationContext.getAssets().open("extera/registration_dates.bin");
                Intrinsics.checkNotNullExpressionValue(inputStreamOpen, "open(...)");
                byte[] bArr = new byte[inputStreamOpen.available()];
                inputStreamOpen.read(bArr);
                inputStreamOpen.close();
                Charset UTF_8 = StandardCharsets.UTF_8;
                Intrinsics.checkNotNullExpressionValue(UTF_8, "UTF_8");
                Set<Map.Entry> setEntrySet = ((JsonObject) new Gson().fromJson(InvisibleEncryptor.decode(new String(bArr, UTF_8)), JsonObject.class)).entrySet();
                Long[] lArr = new Long[setEntrySet.size()];
                Long[] lArr2 = new Long[setEntrySet.size()];
                int i = 0;
                for (Map.Entry entry : setEntrySet) {
                    Object key = entry.getKey();
                    Intrinsics.checkNotNullExpressionValue(key, "<get-key>(...)");
                    lArr[i] = Long.valueOf(Long.parseLong((String) key));
                    lArr2[i] = Long.valueOf(((JsonElement) entry.getValue()).getAsLong());
                    i++;
                }
                RegDateController.regIds = (Long[]) ArraysKt.requireNoNulls(lArr);
                RegDateController.regDates = (Long[]) ArraysKt.requireNoNulls(lArr2);
            } catch (IOException e) {
                FileLog.m1136e(e);
            }
        }
    }

    static {
        Object[] objArr = new Object[16];
        for (int i = 0; i < 16; i++) {
            objArr[i] = new Object();
        }
        lockObjects = objArr;
    }
}
