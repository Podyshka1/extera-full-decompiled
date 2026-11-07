package com.exteragram.messenger.proxy;

import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Base64;
import com.exteragram.messenger.proxy.IpAddressInfoController;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import j$.net.URLEncoder;
import java.io.UnsupportedEncodingException;
import java.net.IDN;
import java.net.InetAddress;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.SerializedData;
import org.telegram.utils.proxy.ProxySettings;

/* JADX INFO: loaded from: classes.dex */
public final class ProxyController {
    private static final ProxyController INSTANCE = new ProxyController();
    private SharedConfig.ProxyInfo currentProxy;
    private boolean loaded;
    private final ArrayList<SharedConfig.ProxyInfo> proxyList = new ArrayList<>();
    private final HashSet<String> pinnedProxies = new HashSet<>();
    private final ArrayList<String> pinnedProxyOrder = new ArrayList<>();
    private final HashMap<String, String> proxyNames = new HashMap<>();

    /* JADX INFO: loaded from: classes4.dex */
    public enum PinOperationResult {
        NO_CHANGE,
        CHANGED,
        LIMIT_REACHED
    }

    /* JADX INFO: loaded from: classes4.dex */
    public interface ProxyCountryCallback {
        void onCountryResolved(String str);
    }

    public int getMaxPinnedProxies() {
        return 10;
    }

    public static ProxyController getInstance() {
        return INSTANCE;
    }

    private ProxyController() {
    }

    public synchronized ArrayList<SharedConfig.ProxyInfo> getProxyList() {
        ensureLoaded();
        return new ArrayList<>(this.proxyList);
    }

    public synchronized SharedConfig.ProxyInfo getCurrentProxy() {
        ensureLoaded();
        return this.currentProxy;
    }

    public synchronized void setCurrentProxy(SharedConfig.ProxyInfo proxyInfo) {
        ensureLoaded();
        this.currentProxy = proxyInfo;
        SharedConfig.currentProxy = proxyInfo;
    }

    public synchronized void loadProxyList() {
        ensureLoaded();
    }

    public synchronized void saveProxyList() {
        try {
            ensureLoaded();
            ArrayList arrayList = new ArrayList(this.proxyList);
            Collections.sort(arrayList, new Comparator() { // from class: com.exteragram.messenger.proxy.ProxyController$$ExternalSyntheticLambda0
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return this.f$0.lambda$saveProxyList$0((SharedConfig.ProxyInfo) obj, (SharedConfig.ProxyInfo) obj2);
                }
            });
            SerializedData serializedData = new SerializedData();
            serializedData.writeInt32(-1);
            serializedData.writeByte(5);
            int size = arrayList.size();
            serializedData.writeInt32(size);
            int i = size - 1;
            while (true) {
                boolean z = false;
                if (i >= 0) {
                    SharedConfig.ProxyInfo proxyInfo = (SharedConfig.ProxyInfo) arrayList.get(i);
                    serializedData.writeString(proxyInfo.settings.getAddress());
                    serializedData.writeInt32(proxyInfo.settings.getPort());
                    serializedData.writeString(proxyInfo.settings.getUser());
                    serializedData.writeString(proxyInfo.settings.getPassword());
                    serializedData.writeString(proxyInfo.settings.getSecret());
                    serializedData.writeInt64(proxyInfo.ping);
                    serializedData.writeInt64(proxyInfo.availableCheckTime);
                    if (proxyInfo.settings.getType() == ProxySettings.Type.WEB) {
                        z = true;
                    }
                    serializedData.writeBool(z);
                    i--;
                } else {
                    ApplicationLoader.applicationContext.getSharedPreferences("mainconfig", 0).edit().putString("proxy_list", Base64.encodeToString(serializedData.toByteArray(), 2)).apply();
                    serializedData.cleanup();
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ int lambda$saveProxyList$0(SharedConfig.ProxyInfo proxyInfo, SharedConfig.ProxyInfo proxyInfo2) {
        SharedConfig.ProxyInfo proxyInfo3 = this.currentProxy;
        long j = proxyInfo3 == proxyInfo ? -200000L : 0L;
        if (!proxyInfo.available) {
            j += 100000;
        }
        long j2 = proxyInfo3 == proxyInfo2 ? -200000L : 0L;
        if (!proxyInfo2.available) {
            j2 += 100000;
        }
        return Long.compare(proxyInfo.ping + j, proxyInfo2.ping + j2);
    }

    public synchronized SharedConfig.ProxyInfo addProxy(SharedConfig.ProxyInfo proxyInfo) {
        ensureLoaded();
        int size = this.proxyList.size();
        int i = 0;
        while (true) {
            ArrayList<SharedConfig.ProxyInfo> arrayList = this.proxyList;
            if (i < size) {
                SharedConfig.ProxyInfo proxyInfo2 = arrayList.get(i);
                if (proxyInfo.settings.equals(proxyInfo2.settings)) {
                    return proxyInfo2;
                }
                i++;
            } else {
                arrayList.add(0, proxyInfo);
                syncProxyList();
                saveProxyList();
                return proxyInfo;
            }
        }
    }

    public synchronized SharedConfig.ProxyInfo saveProxy(SharedConfig.ProxyInfo proxyInfo, String str, String str2) {
        SharedConfig.ProxyInfo proxyInfoAddProxy;
        try {
            ensureLoaded();
            if (!TextUtils.isEmpty(str) && !TextUtils.equals(str, proxyInfo.settings.getLink())) {
                moveMetadata(str, proxyInfo.settings.getLink());
            }
            proxyInfoAddProxy = addProxy(proxyInfo);
            if (str2 != null) {
                setName(proxyInfoAddProxy, str2);
            }
        } catch (Throwable th) {
            throw th;
        }
        return proxyInfoAddProxy;
    }

    public synchronized String buildShareLink(SharedConfig.ProxyInfo proxyInfo) {
        return buildShareLink(proxyInfo, null);
    }

    public synchronized String buildShareLink(SharedConfig.ProxyInfo proxyInfo, String str) {
        if (proxyInfo == null) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        String link = proxyInfo.settings.getLink();
        String strNormalizeName = normalizeName(str);
        if (TextUtils.isEmpty(strNormalizeName)) {
            strNormalizeName = getName(proxyInfo);
        }
        if (TextUtils.isEmpty(strNormalizeName)) {
            return link;
        }
        try {
            return link + "&title=" + URLEncoder.encode(strNormalizeName, "UTF-8");
        } catch (UnsupportedEncodingException unused) {
            return link;
        }
    }

    public synchronized void deleteProxy(SharedConfig.ProxyInfo proxyInfo) {
        try {
            ensureLoaded();
            String proxyKey = getProxyKey(proxyInfo);
            SharedConfig.ProxyInfo proxyInfo2 = this.currentProxy;
            if (proxyInfo2 == proxyInfo || (proxyKey != null && proxyKey.equals(getProxyKey(proxyInfo2)))) {
                this.currentProxy = null;
                SharedConfig.currentProxy = null;
                SharedPreferences globalMainSettings = MessagesController.getGlobalMainSettings();
                boolean z = globalMainSettings.getBoolean("proxy_enabled", false);
                SharedPreferences.Editor editorEdit = globalMainSettings.edit();
                ProxySettings.EMPTY.toSharedPreferences(editorEdit);
                editorEdit.putBoolean("proxy_enabled", false);
                editorEdit.apply();
                if (z) {
                    ConnectionsManager.setProxySettings(false, null);
                }
            }
            this.proxyList.remove(proxyInfo);
            removeProxy(proxyInfo);
            syncProxyList();
            saveProxyList();
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized String getDisplayName(SharedConfig.ProxyInfo proxyInfo) {
        String address;
        if (proxyInfo == null) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        String name = getName(proxyInfo);
        if (!TextUtils.isEmpty(name)) {
            return name;
        }
        if (proxyInfo.settings.getType() == ProxySettings.Type.WEB) {
            address = proxyInfo.settings.getAddress();
        } else {
            address = proxyInfo.settings.getAddress() + ":" + proxyInfo.settings.getPort();
        }
        return address;
    }

    public synchronized String getProxyTypeName(SharedConfig.ProxyInfo proxyInfo) {
        if (proxyInfo != null) {
            if (proxyInfo.settings.getType() == ProxySettings.Type.WEB) {
                return LocaleController.getString(C2807R.string.UseProxyWeb);
            }
        }
        return LocaleController.getString(isTelegramProxy(proxyInfo) ? C2807R.string.UseProxyTelegram : C2807R.string.UseProxySocks5);
    }

    public void requestProxyCountry(SharedConfig.ProxyInfo proxyInfo, final ProxyCountryCallback proxyCountryCallback) {
        if (proxyCountryCallback == null) {
            return;
        }
        final String string = LocaleController.getString(C2807R.string.Unknown);
        final String proxyCountryKey = getProxyCountryKey(proxyInfo);
        if (TextUtils.isEmpty(proxyCountryKey)) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.proxy.ProxyController$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    proxyCountryCallback.onCountryResolved(string);
                }
            });
        } else {
            Utilities.globalQueue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.proxy.ProxyController$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    ProxyController.$r8$lambda$o2u5Mt7BsHFzVYQuxEPhAre7_kE(proxyCountryKey, proxyCountryCallback, string);
                }
            });
        }
    }

    public static /* synthetic */ void $r8$lambda$o2u5Mt7BsHFzVYQuxEPhAre7_kE(String str, final ProxyCountryCallback proxyCountryCallback, final String str2) {
        String strResolveProxyIpAddress = resolveProxyIpAddress(str);
        if (TextUtils.isEmpty(strResolveProxyIpAddress)) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.proxy.ProxyController$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    proxyCountryCallback.onCountryResolved(str2);
                }
            });
        } else {
            IpAddressInfoController.requestIpAddressInfo(strResolveProxyIpAddress, new Utilities.Callback() { // from class: com.exteragram.messenger.proxy.ProxyController$$ExternalSyntheticLambda5
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    ProxyController.$r8$lambda$oRbqtd6yYrrPwcGrsMaifSCNU90(str2, proxyCountryCallback, (IpAddressInfoController.IpAddressInfo) obj);
                }
            });
        }
    }

    public static /* synthetic */ void $r8$lambda$oRbqtd6yYrrPwcGrsMaifSCNU90(final String str, final ProxyCountryCallback proxyCountryCallback, IpAddressInfoController.IpAddressInfo ipAddressInfo) {
        if (ipAddressInfo != null) {
            str = getCountryDisplayName(ipAddressInfo.countryCode);
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.proxy.ProxyController$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                proxyCountryCallback.onCountryResolved(str);
            }
        });
    }

    public synchronized String getName(SharedConfig.ProxyInfo proxyInfo) {
        String name;
        if (proxyInfo == null) {
            name = _UrlKt.FRAGMENT_ENCODE_SET;
        } else {
            try {
                name = getName(getProxyKey(proxyInfo));
            } finally {
            }
        }
        return name;
    }

    public synchronized String getName(String str) {
        ensureLoaded();
        if (TextUtils.isEmpty(str)) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        String str2 = this.proxyNames.get(str);
        if (str2 == null) {
            str2 = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        return str2;
    }

    public synchronized void setName(SharedConfig.ProxyInfo proxyInfo, String str) {
        setName(getProxyKey(proxyInfo), str);
    }

    public synchronized void setName(String str, String str2) {
        try {
            ensureLoaded();
            if (TextUtils.isEmpty(str)) {
                return;
            }
            String strNormalizeName = normalizeName(str2);
            boolean zIsEmpty = TextUtils.isEmpty(strNormalizeName);
            HashMap<String, String> map = this.proxyNames;
            boolean zEquals = true;
            if (zIsEmpty) {
                if (map.remove(str) == null) {
                    zEquals = false;
                }
            } else {
                zEquals = true ^ TextUtils.equals(map.put(str, strNormalizeName), strNormalizeName);
            }
            if (zEquals) {
                save();
            }
        } finally {
        }
    }

    public synchronized void moveMetadata(String str, String str2) {
        boolean z;
        try {
            ensureLoaded();
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && !TextUtils.equals(str, str2)) {
                String strRemove = this.proxyNames.remove(str);
                boolean z2 = true;
                if (TextUtils.isEmpty(strRemove)) {
                    z = false;
                } else {
                    this.proxyNames.put(str2, strRemove);
                    z = true;
                }
                int iIndexOf = this.pinnedProxyOrder.indexOf(str);
                if (iIndexOf >= 0) {
                    this.pinnedProxyOrder.remove(iIndexOf);
                    this.pinnedProxies.remove(str);
                    if (!this.pinnedProxyOrder.contains(str2)) {
                        ArrayList<String> arrayList = this.pinnedProxyOrder;
                        arrayList.add(Math.min(iIndexOf, arrayList.size()), str2);
                    }
                    this.pinnedProxies.add(str2);
                } else {
                    z2 = z;
                }
                if (z2) {
                    save();
                }
            }
        } finally {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0012  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized boolean isPinned(SharedConfig.ProxyInfo proxyInfo) {
        boolean z;
        if (proxyInfo != null) {
            z = isPinned(getProxyKey(proxyInfo));
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized boolean isPinned(String str) {
        boolean z;
        ensureLoaded();
        if (!TextUtils.isEmpty(str)) {
            z = this.pinnedProxies.contains(str);
        }
        return z;
    }

    public synchronized int getPinnedIndex(SharedConfig.ProxyInfo proxyInfo) {
        ensureLoaded();
        int iIndexOf = -1;
        if (proxyInfo == null) {
            return -1;
        }
        String proxyKey = getProxyKey(proxyInfo);
        if (!TextUtils.isEmpty(proxyKey)) {
            iIndexOf = this.pinnedProxyOrder.indexOf(proxyKey);
        }
        return iIndexOf;
    }

    public synchronized int getPinnedCount() {
        ensureLoaded();
        return this.pinnedProxyOrder.size();
    }

    public synchronized int getSelectedPinAction(List<SharedConfig.ProxyInfo> list) {
        ensureLoaded();
        Iterator<SharedConfig.ProxyInfo> it = list.iterator();
        boolean z = false;
        boolean z2 = false;
        while (it.hasNext()) {
            if (isPinned(it.next())) {
                z = true;
            } else {
                z2 = true;
            }
            if (z && z2) {
                return 0;
            }
        }
        if (z) {
            return 2;
        }
        return z2 ? 1 : 0;
    }

    public synchronized PinOperationResult applySelectedPinAction(List<SharedConfig.ProxyInfo> list) {
        ensureLoaded();
        int selectedPinAction = getSelectedPinAction(list);
        if (selectedPinAction == 0) {
            return PinOperationResult.NO_CHANGE;
        }
        boolean z = false;
        if (selectedPinAction == 1) {
            ArrayList arrayList = new ArrayList();
            Iterator<SharedConfig.ProxyInfo> it = list.iterator();
            while (it.hasNext()) {
                String proxyKey = getProxyKey(it.next());
                if (!TextUtils.isEmpty(proxyKey) && !this.pinnedProxies.contains(proxyKey) && !arrayList.contains(proxyKey)) {
                    arrayList.add(proxyKey);
                }
            }
            if (this.pinnedProxyOrder.size() + arrayList.size() > 10) {
                return PinOperationResult.LIMIT_REACHED;
            }
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                String str = (String) obj;
                if (this.pinnedProxies.add(str)) {
                    this.pinnedProxyOrder.add(str);
                    z = true;
                }
            }
        } else {
            Iterator<SharedConfig.ProxyInfo> it2 = list.iterator();
            while (it2.hasNext()) {
                String proxyKey2 = getProxyKey(it2.next());
                if (!TextUtils.isEmpty(proxyKey2)) {
                    if (this.pinnedProxies.remove(proxyKey2)) {
                        z = true;
                    }
                    if (this.pinnedProxyOrder.remove(proxyKey2)) {
                        z = true;
                    }
                }
            }
        }
        if (z) {
            save();
            return PinOperationResult.CHANGED;
        }
        return PinOperationResult.NO_CHANGE;
    }

    public synchronized boolean movePinnedProxy(SharedConfig.ProxyInfo proxyInfo, SharedConfig.ProxyInfo proxyInfo2) {
        ensureLoaded();
        String proxyKey = getProxyKey(proxyInfo);
        String proxyKey2 = getProxyKey(proxyInfo2);
        if (!TextUtils.isEmpty(proxyKey) && !TextUtils.isEmpty(proxyKey2) && !TextUtils.equals(proxyKey, proxyKey2)) {
            if (this.pinnedProxies.contains(proxyKey) && this.pinnedProxies.contains(proxyKey2)) {
                int iIndexOf = this.pinnedProxyOrder.indexOf(proxyKey);
                int iIndexOf2 = this.pinnedProxyOrder.indexOf(proxyKey2);
                if (iIndexOf >= 0 && iIndexOf2 >= 0) {
                    this.pinnedProxyOrder.remove(iIndexOf);
                    this.pinnedProxyOrder.add(iIndexOf2, proxyKey);
                    save();
                    return true;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public synchronized void removeProxy(SharedConfig.ProxyInfo proxyInfo) {
        ensureLoaded();
        String proxyKey = getProxyKey(proxyInfo);
        if (TextUtils.isEmpty(proxyKey)) {
            return;
        }
        if (this.pinnedProxyOrder.remove(proxyKey) | (this.proxyNames.remove(proxyKey) != null) | this.pinnedProxies.remove(proxyKey)) {
            save();
        }
    }

    public synchronized void clearAll() {
        ensureLoaded();
        if (this.pinnedProxies.isEmpty() && this.pinnedProxyOrder.isEmpty() && this.proxyNames.isEmpty()) {
            return;
        }
        this.pinnedProxies.clear();
        this.pinnedProxyOrder.clear();
        this.proxyNames.clear();
        save();
    }

    public synchronized void sortProxyList(List<SharedConfig.ProxyInfo> list, final boolean z, final SharedConfig.ProxyInfo proxyInfo) {
        ensureLoaded();
        final ArrayList arrayList = new ArrayList(list);
        Collections.sort(list, new Comparator() { // from class: com.exteragram.messenger.proxy.ProxyController$$ExternalSyntheticLambda1
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return this.f$0.lambda$sortProxyList$6(proxyInfo, z, arrayList, (SharedConfig.ProxyInfo) obj, (SharedConfig.ProxyInfo) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ int lambda$sortProxyList$6(SharedConfig.ProxyInfo proxyInfo, boolean z, ArrayList arrayList, SharedConfig.ProxyInfo proxyInfo2, SharedConfig.ProxyInfo proxyInfo3) {
        int pinnedIndex = getPinnedIndex(proxyInfo2);
        int pinnedIndex2 = getPinnedIndex(proxyInfo3);
        boolean z2 = pinnedIndex >= 0;
        if (z2 != (pinnedIndex2 >= 0)) {
            return z2 ? -1 : 1;
        }
        if (z2) {
            return Integer.compare(pinnedIndex, pinnedIndex2);
        }
        long j = proxyInfo == proxyInfo2 ? -200000L : 0L;
        if (!proxyInfo2.available) {
            j += 100000;
        }
        long j2 = proxyInfo == proxyInfo3 ? -200000L : 0L;
        if (!proxyInfo3.available) {
            j2 += 100000;
        }
        return Long.compare((!z || proxyInfo2 == proxyInfo) ? j + proxyInfo2.ping : ((long) arrayList.indexOf(proxyInfo2)) * NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS, (!z || proxyInfo3 == proxyInfo) ? proxyInfo3.ping + j2 : ((long) arrayList.indexOf(proxyInfo3)) * NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS);
    }

    private void ensureLoaded() {
        if (this.loaded) {
            return;
        }
        load();
    }

    private void load() {
        boolean z;
        int iIndexOf;
        this.proxyList.clear();
        this.currentProxy = null;
        this.pinnedProxies.clear();
        this.pinnedProxyOrder.clear();
        this.proxyNames.clear();
        SharedPreferences sharedPreferences = ApplicationLoader.applicationContext.getSharedPreferences("mainconfig", 0);
        ProxySettings proxySettingsFromSharedPreferences = ProxySettings.fromSharedPreferences(sharedPreferences);
        boolean zIsValid = proxySettingsFromSharedPreferences.isValid();
        String string = sharedPreferences.getString("proxy_list", null);
        if (TextUtils.isEmpty(string)) {
            z = false;
        } else {
            SerializedData serializedData = new SerializedData(Base64.decode(string, 0));
            int int32 = serializedData.readInt32(false);
            if (int32 == -1) {
                byte b2 = serializedData.readByte(false);
                if (b2 == 5) {
                    int int322 = serializedData.readInt32(false);
                    for (int i = 0; i < int322; i++) {
                        SharedConfig.ProxyInfo proxyInfo = readProxyInfo(serializedData);
                        proxyInfo.ping = serializedData.readInt64(false);
                        proxyInfo.availableCheckTime = SharedConfig.ProxyInfo.normalizeAvailableCheckTime(serializedData.readInt64(false));
                        if (serializedData.readBool(false)) {
                            proxyInfo.settings = ProxySettings.builder().setType(ProxySettings.Type.WEB).setAddress(proxyInfo.settings.getAddress()).setPort(proxyInfo.settings.getPort()).setSecret(proxyInfo.settings.getSecret()).build();
                        }
                        this.proxyList.add(0, proxyInfo);
                        if (this.currentProxy == null && zIsValid && proxySettingsFromSharedPreferences.equals(proxyInfo.settings)) {
                            this.currentProxy = proxyInfo;
                        }
                    }
                } else if (b2 == 3) {
                    int int323 = serializedData.readInt32(false);
                    z = false;
                    for (int i2 = 0; i2 < int323; i2++) {
                        String string2 = serializedData.readString(false);
                        SharedConfig.ProxyInfo proxyInfo2 = readProxyInfo(serializedData);
                        proxyInfo2.ping = serializedData.readInt64(false);
                        proxyInfo2.availableCheckTime = SharedConfig.ProxyInfo.normalizeAvailableCheckTime(serializedData.readInt64(false));
                        this.proxyList.add(0, proxyInfo2);
                        String proxyKey = getProxyKey(proxyInfo2);
                        String strNormalizeName = normalizeName(string2);
                        if (!TextUtils.isEmpty(proxyKey) && !TextUtils.isEmpty(strNormalizeName)) {
                            this.proxyNames.put(proxyKey, strNormalizeName);
                            z = true;
                        }
                        if (this.currentProxy == null && zIsValid && proxySettingsFromSharedPreferences.equals(proxyInfo2.settings)) {
                            this.currentProxy = proxyInfo2;
                        }
                    }
                    serializedData.cleanup();
                } else if (b2 == 4 || b2 == 2) {
                    int int324 = serializedData.readInt32(false);
                    for (int i3 = 0; i3 < int324; i3++) {
                        SharedConfig.ProxyInfo proxyInfo3 = readProxyInfo(serializedData);
                        proxyInfo3.ping = serializedData.readInt64(false);
                        proxyInfo3.availableCheckTime = SharedConfig.ProxyInfo.normalizeAvailableCheckTime(serializedData.readInt64(false));
                        this.proxyList.add(0, proxyInfo3);
                        if (this.currentProxy == null && zIsValid && proxySettingsFromSharedPreferences.equals(proxyInfo3.settings)) {
                            this.currentProxy = proxyInfo3;
                        }
                    }
                } else {
                    FileLog.m1038e("Unknown proxy schema version: " + ((int) b2));
                }
            } else {
                for (int i4 = 0; i4 < int32; i4++) {
                    SharedConfig.ProxyInfo proxyInfo4 = readProxyInfo(serializedData);
                    this.proxyList.add(0, proxyInfo4);
                    if (this.currentProxy == null && zIsValid && proxySettingsFromSharedPreferences.equals(proxyInfo4.settings)) {
                        this.currentProxy = proxyInfo4;
                    }
                }
            }
            z = false;
            serializedData.cleanup();
        }
        if (this.currentProxy == null && zIsValid) {
            SharedConfig.ProxyInfo proxyInfo5 = new SharedConfig.ProxyInfo(proxySettingsFromSharedPreferences);
            this.currentProxy = proxyInfo5;
            this.proxyList.add(0, proxyInfo5);
        }
        String string3 = sharedPreferences.getString("proxy_pinned_order", sharedPreferences.getString("proxy_pinned_links_order", null));
        if (!TextUtils.isEmpty(string3)) {
            for (String str : string3.split("\\n")) {
                if (!TextUtils.isEmpty(str) && this.pinnedProxies.add(str)) {
                    this.pinnedProxyOrder.add(str);
                }
            }
        }
        Set<String> stringSet = sharedPreferences.getStringSet("proxy_pinned", sharedPreferences.getStringSet("proxy_pinned_links", null));
        if (stringSet != null) {
            for (String str2 : stringSet) {
                if (!TextUtils.isEmpty(str2) && this.pinnedProxies.add(str2)) {
                    this.pinnedProxyOrder.add(str2);
                }
            }
        }
        String string4 = sharedPreferences.getString("proxy_names", null);
        if (!TextUtils.isEmpty(string4)) {
            for (String str3 : string4.split("\\n")) {
                if (!TextUtils.isEmpty(str3) && (iIndexOf = str3.indexOf(9)) > 0 && iIndexOf < str3.length() - 1) {
                    String strDecode = decode(str3.substring(0, iIndexOf));
                    String strDecode2 = decode(str3.substring(iIndexOf + 1));
                    if (!TextUtils.isEmpty(strDecode) && !TextUtils.isEmpty(strDecode2)) {
                        this.proxyNames.put(strDecode, strDecode2);
                    }
                }
            }
        }
        this.loaded = true;
        if (z) {
            save();
        }
        syncProxyList();
    }

    private void save() {
        SharedPreferences.Editor editorEdit = MessagesController.getGlobalMainSettings().edit();
        editorEdit.putStringSet("proxy_pinned", new HashSet(this.pinnedProxies));
        if (this.pinnedProxyOrder.isEmpty()) {
            editorEdit.remove("proxy_pinned_order");
        } else {
            editorEdit.putString("proxy_pinned_order", TextUtils.join("\n", this.pinnedProxyOrder));
        }
        editorEdit.remove("proxy_pinned_links");
        editorEdit.remove("proxy_pinned_links_order");
        if (this.proxyNames.isEmpty()) {
            editorEdit.remove("proxy_names");
        } else {
            ArrayList arrayList = new ArrayList(this.proxyNames.size());
            for (Map.Entry<String, String> entry : this.proxyNames.entrySet()) {
                arrayList.add(encode(entry.getKey()) + "\t" + encode(entry.getValue()));
            }
            editorEdit.putString("proxy_names", TextUtils.join("\n", arrayList));
        }
        editorEdit.apply();
    }

    private String getProxyKey(SharedConfig.ProxyInfo proxyInfo) {
        if (proxyInfo == null || TextUtils.isEmpty(proxyInfo.settings.getLink())) {
            return null;
        }
        return proxyInfo.settings.getLink();
    }

    private static String normalizeName(String str) {
        return str == null ? _UrlKt.FRAGMENT_ENCODE_SET : str.trim();
    }

    private static String encode(String str) {
        if (str == null) {
            str = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        return Base64.encodeToString(str.getBytes(StandardCharsets.UTF_8), 2);
    }

    private static String decode(String str) {
        return new String(Base64.decode(str, 2), StandardCharsets.UTF_8);
    }

    private void syncProxyList() {
        SharedConfig.proxyList.clear();
        SharedConfig.proxyList.addAll(this.proxyList);
        SharedConfig.currentProxy = this.currentProxy;
    }

    private static String resolveProxyIpAddress(String str) {
        try {
            InetAddress byName = InetAddress.getByName(IDN.toASCII(str));
            if (byName.isAnyLocalAddress() || byName.isLoopbackAddress() || byName.isLinkLocalAddress() || byName.isSiteLocalAddress()) {
                return null;
            }
            return byName.getHostAddress();
        } catch (Exception e) {
            FileLog.m1040e(e);
            return null;
        }
    }

    private static String getProxyCountryKey(SharedConfig.ProxyInfo proxyInfo) {
        return proxyInfo == null ? _UrlKt.FRAGMENT_ENCODE_SET : normalizeProxyCountryKey(proxyInfo.settings.getAddress());
    }

    private static String normalizeProxyCountryKey(String str) {
        if (TextUtils.isEmpty(str)) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        String strTrim = str.trim();
        if (strTrim.startsWith("[") && strTrim.endsWith("]") && strTrim.length() > 2) {
            strTrim = strTrim.substring(1, strTrim.length() - 1);
        }
        return strTrim.toLowerCase(Locale.US);
    }

    private static String getCountryDisplayName(String str) {
        if (TextUtils.isEmpty(str)) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        Locale currentLocale = LocaleController.getInstance().getCurrentLocale();
        if (currentLocale == null) {
            currentLocale = Locale.getDefault();
        }
        String displayCountry = new Locale(_UrlKt.FRAGMENT_ENCODE_SET, str.toUpperCase(Locale.US)).getDisplayCountry(currentLocale);
        return TextUtils.isEmpty(displayCountry) ? LocaleController.getString(C2807R.string.Unknown) : displayCountry;
    }

    private static SharedConfig.ProxyInfo readProxyInfo(SerializedData serializedData) {
        return new SharedConfig.ProxyInfo(buildSettings(serializedData.readString(false), serializedData.readInt32(false), serializedData.readString(false), serializedData.readString(false), serializedData.readString(false)));
    }

    private static ProxySettings buildSettings(String str, int i, String str2, String str3, String str4) {
        return ProxySettings.builder().setType(TextUtils.isEmpty(str4) ? ProxySettings.Type.SOCKS5 : ProxySettings.Type.MTPROTO).setAddress(str).setPort(i).setUser(str2).setPassword(str3).setSecret(str4).build();
    }

    private static boolean isTelegramProxy(SharedConfig.ProxyInfo proxyInfo) {
        return (proxyInfo == null || TextUtils.isEmpty(proxyInfo.settings.getSecret())) ? false : true;
    }
}
