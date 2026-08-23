package com.exteragram.messenger.pillstack.core;

import android.content.SharedPreferences;
import com.exteragram.messenger.pillstack.core.PillRegistry;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.function.Predicate;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.NotificationCenter;
import p022j$.util.Collection;
import p022j$.util.function.Predicate$CC;

/* JADX INFO: loaded from: classes.dex */
public abstract class PillStackConfig {
    public static String btcTargetCurrency;
    static boolean configLoaded;
    public static String customWeatherAddress;
    public static String customWeatherLocation;
    public static SharedPreferences.Editor editor;
    public static boolean infiniteScrolling;
    private static final HashSet pendingUpdates;
    public static SharedPreferences preferences;
    public static String tonTargetCurrency;
    public static String usdTargetCurrency;
    public static boolean useCurrentLocation;
    public static ArrayList activePills = new ArrayList();
    public static ArrayList hiddenPills = new ArrayList();
    public static int lastActivePillId = -1;
    private static final Object sync = new Object();

    public enum PillType {
        WEATHER(1),
        TON(2),
        BTC(3),
        USD(4),
        CACHE(5),
        PROXY(6);


        /* JADX INFO: renamed from: id */
        public final int f298id;

        PillType(int i) {
            this.f298id = i;
        }
    }

    static {
        loadConfig();
        pendingUpdates = new HashSet();
    }

    public static ArrayList getDefaultActivePills() {
        return new ArrayList();
    }

    private static ArrayList parsePillsList(String str) {
        ArrayList arrayList = new ArrayList();
        if (str != null && !str.isEmpty()) {
            if (str.startsWith("[")) {
                str = str.replaceAll("[\\[\\]\"]", _UrlKt.FRAGMENT_ENCODE_SET);
            }
            for (String str2 : str.split(",")) {
                try {
                    arrayList.add(Integer.valueOf(Integer.parseInt(str2.trim())));
                } catch (Exception unused) {
                }
            }
        }
        return arrayList;
    }

    private static String serializePillsList(ArrayList arrayList) {
        if (arrayList == null || arrayList.isEmpty()) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < arrayList.size(); i++) {
            sb.append(arrayList.get(i));
            if (i < arrayList.size() - 1) {
                sb.append(",");
            }
        }
        return sb.toString();
    }

    public static void loadConfig() {
        synchronized (sync) {
            try {
                if (configLoaded) {
                    return;
                }
                SharedPreferences sharedPreferences = ApplicationLoader.applicationContext.getSharedPreferences("pillstackconfig", 0);
                preferences = sharedPreferences;
                editor = sharedPreferences.edit();
                useCurrentLocation = preferences.getBoolean("useCurrentLocation", true);
                customWeatherLocation = preferences.getString("customWeatherLocation", null);
                customWeatherAddress = preferences.getString("customWeatherAddress", null);
                infiniteScrolling = preferences.getBoolean("infiniteScrolling", true);
                lastActivePillId = preferences.getInt("lastActivePillId", -1);
                tonTargetCurrency = preferences.getString("tonTargetCurrency", "AUTO");
                btcTargetCurrency = preferences.getString("btcTargetCurrency", "AUTO");
                usdTargetCurrency = preferences.getString("usdTargetCurrency", "AUTO");
                String string = preferences.getString("activePills", null);
                String string2 = preferences.getString("hiddenPills", null);
                if (string != null) {
                    activePills = parsePillsList(string);
                    if (string2 != null) {
                        hiddenPills = parsePillsList(string2);
                    } else {
                        hiddenPills = new ArrayList();
                    }
                } else {
                    activePills = new ArrayList();
                    hiddenPills = new ArrayList();
                    activePills.addAll(getDefaultActivePills());
                    for (PillRegistry.PillInfo pillInfo : PillRegistry.getRegisteredPills()) {
                        if (!activePills.contains(Integer.valueOf(pillInfo.m248id()))) {
                            hiddenPills.add(Integer.valueOf(pillInfo.m248id()));
                        }
                    }
                    savePillsLayout();
                }
                sanitizePills();
                configLoaded = true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static /* synthetic */ boolean $r8$lambda$hBfHdAf5DsD2ujd_6KmJ5EV3it4(Integer num) {
        return !PillRegistry.isRegistered(num.intValue());
    }

    public static void sanitizePills() {
        boolean zRemoveIf = Collection.EL.removeIf(activePills, new Predicate() { // from class: com.exteragram.messenger.pillstack.core.PillStackConfig$$ExternalSyntheticLambda0
            public /* synthetic */ Predicate and(Predicate predicate) {
                return Predicate$CC.$default$and(this, predicate);
            }

            public /* synthetic */ Predicate negate() {
                return Predicate$CC.$default$negate(this);
            }

            /* JADX INFO: renamed from: or */
            public /* synthetic */ Predicate m250or(Predicate predicate) {
                return Predicate$CC.$default$or(this, predicate);
            }

            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return PillStackConfig.$r8$lambda$hBfHdAf5DsD2ujd_6KmJ5EV3it4((Integer) obj);
            }
        }) | Collection.EL.removeIf(hiddenPills, new Predicate() { // from class: com.exteragram.messenger.pillstack.core.PillStackConfig$$ExternalSyntheticLambda1
            public /* synthetic */ Predicate and(Predicate predicate) {
                return Predicate$CC.$default$and(this, predicate);
            }

            public /* synthetic */ Predicate negate() {
                return Predicate$CC.$default$negate(this);
            }

            /* JADX INFO: renamed from: or */
            public /* synthetic */ Predicate m251or(Predicate predicate) {
                return Predicate$CC.$default$or(this, predicate);
            }

            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return PillStackConfig.$r8$lambda$rvgM_l39IHfryNI4iwSTAnCjpR4((Integer) obj);
            }
        });
        for (PillRegistry.PillInfo pillInfo : PillRegistry.getRegisteredPills()) {
            if (!activePills.contains(Integer.valueOf(pillInfo.m248id())) && !hiddenPills.contains(Integer.valueOf(pillInfo.m248id()))) {
                hiddenPills.add(Integer.valueOf(pillInfo.m248id()));
                zRemoveIf = true;
            }
        }
        if (zRemoveIf) {
            savePillsLayout();
        }
    }

    public static /* synthetic */ boolean $r8$lambda$rvgM_l39IHfryNI4iwSTAnCjpR4(Integer num) {
        return !PillRegistry.isRegistered(num.intValue());
    }

    public static void savePillsLayout() {
        editor.putString("activePills", serializePillsList(activePills));
        editor.putString("hiddenPills", serializePillsList(hiddenPills));
        editor.apply();
    }

    public static void saveLastActivePillId(int i) {
        lastActivePillId = i;
        editor.putInt("lastActivePillId", i).apply();
    }

    public static void notifySettingsChanged(int... iArr) {
        if (iArr != null && iArr.length > 0) {
            for (int i : iArr) {
                pendingUpdates.add(Integer.valueOf(i));
            }
            Object[] objArr = new Object[iArr.length];
            for (int i2 = 0; i2 < iArr.length; i2++) {
                objArr[i2] = Integer.valueOf(iArr[i2]);
            }
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.pillStackSettingsChanged, objArr);
            return;
        }
        Iterator it = PillRegistry.getRegisteredPills().iterator();
        while (it.hasNext()) {
            pendingUpdates.add(Integer.valueOf(((PillRegistry.PillInfo) it.next()).m248id()));
        }
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.pillStackSettingsChanged, new Object[0]);
    }

    public static boolean checkAndClearPendingUpdate(int i) {
        return pendingUpdates.remove(Integer.valueOf(i));
    }

    public static boolean shouldUpdatePill(Object[] objArr, int... iArr) {
        if (objArr == null || objArr.length == 0 || iArr == null || iArr.length == 0) {
            return true;
        }
        for (Object obj : objArr) {
            if (obj instanceof Integer) {
                int iIntValue = ((Integer) obj).intValue();
                for (int i : iArr) {
                    if (iIntValue == i) {
                        return true;
                    }
                }
            }
        }
        return false;
    }
}
