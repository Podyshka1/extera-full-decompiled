package com.exteragram.messenger.adblock.backend;

import android.content.SharedPreferences;
import com.exteragram.messenger.backup.PreferencesUtils;
import com.exteragram.messenger.utils.network.ExteraHttpClient;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.url._UrlKt;
import org.json.JSONException;
import org.json.JSONObject;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.DispatchQueue;
import p022j$.util.DesugarCollections;

/* JADX INFO: loaded from: classes.dex */
public class SubscriptionsManager {
    private static SubscriptionsManager instance;
    private static final Pattern redirectPattern = Pattern.compile("!\\s*Redirect:\\s*(\\S+)");
    private final Object lock = new Object();
    private final DispatchQueue queue = new DispatchQueue("SubscriptionsManager");
    private final OkHttpClient client = ExteraHttpClient.INSTANCE.getClient();
    private final SharedPreferences prefs = PreferencesUtils.getPreferences("ublock_subscriptions");

    /* JADX INFO: loaded from: classes4.dex */
    public interface SubscriptionCallback {
        void onComplete(boolean z);
    }

    public static SubscriptionsManager getInstance() {
        if (instance == null) {
            instance = new SubscriptionsManager();
        }
        return instance;
    }

    public void initialize(final Runnable runnable) {
        this.queue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.adblock.backend.SubscriptionsManager$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$initialize$1(runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initialize$1(final Runnable runnable) {
        final List<FilterMetadata> subscriptions = getSubscriptions();
        long jCurrentTimeMillis = System.currentTimeMillis();
        final AtomicInteger atomicInteger = new AtomicInteger(0);
        for (FilterMetadata filterMetadata : subscriptions) {
            if (jCurrentTimeMillis >= filterMetadata.expires) {
                lambda$subscribe$2(filterMetadata.url, new SubscriptionCallback() { // from class: com.exteragram.messenger.adblock.backend.SubscriptionsManager$$ExternalSyntheticLambda1
                    @Override // com.exteragram.messenger.adblock.backend.SubscriptionsManager.SubscriptionCallback
                    public final void onComplete(boolean z) {
                        SubscriptionsManager.$r8$lambda$ex7K0DzJlEYCVNCVLClmUrbS_nY(atomicInteger, subscriptions, runnable, z);
                    }
                });
            } else if (atomicInteger.incrementAndGet() == subscriptions.size()) {
                runnable.run();
            }
        }
    }

    public static /* synthetic */ void $r8$lambda$ex7K0DzJlEYCVNCVLClmUrbS_nY(AtomicInteger atomicInteger, List list, Runnable runnable, boolean z) {
        if (atomicInteger.incrementAndGet() == list.size()) {
            runnable.run();
        }
    }

    public void subscribe(final String str, final SubscriptionCallback subscriptionCallback) {
        this.queue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.adblock.backend.SubscriptionsManager$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$subscribe$2(str, subscriptionCallback);
            }
        });
    }

    public void unsubscribe(String str) {
        synchronized (this.lock) {
            SharedPreferences.Editor editorEdit = this.prefs.edit();
            editorEdit.remove("metadata_" + str);
            editorEdit.remove("content_" + str);
            editorEdit.apply();
        }
    }

    public List getSubscriptions() {
        ArrayList arrayList = new ArrayList();
        synchronized (this.lock) {
            for (String str : this.prefs.getAll().keySet()) {
                if (str.startsWith("metadata_")) {
                    try {
                        String string = this.prefs.getString(str, null);
                        if (string != null) {
                            arrayList.add(FilterMetadata.fromJson(new JSONObject(string)));
                        }
                    } catch (JSONException unused) {
                    }
                }
            }
        }
        return DesugarCollections.unmodifiableList(arrayList);
    }

    public Collection iterSubscriptions() {
        String string;
        HashMap map = new HashMap();
        synchronized (this.lock) {
            try {
                for (String str : this.prefs.getAll().keySet()) {
                    if (str.startsWith("content_") && (string = this.prefs.getString(str, null)) != null) {
                        map.put(str, string);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return map.values();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: fetchSubscription, reason: merged with bridge method [inline-methods] */
    public void lambda$subscribe$2(String str, final SubscriptionCallback subscriptionCallback) {
        try {
            Response responseExecute = this.client.newCall(new Request.Builder().url(str).header("User-Agent", "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4 Safari/605.1.15").build()).execute();
            try {
                if (responseExecute.isSuccessful()) {
                    String strString = responseExecute.body().string();
                    String strExtractRedirect = extractRedirect(strString);
                    if (strExtractRedirect != null) {
                        unsubscribe(str);
                        lambda$subscribe$2(strExtractRedirect, subscriptionCallback);
                    } else {
                        FilterMetadata metadata = parseMetadata(str, strString);
                        synchronized (this.lock) {
                            SharedPreferences.Editor editorEdit = this.prefs.edit();
                            editorEdit.putString("metadata_" + str, metadata.toJson().toString());
                            editorEdit.putString("content_" + str, strString);
                            editorEdit.apply();
                        }
                        if (subscriptionCallback != null) {
                            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.adblock.backend.SubscriptionsManager$$ExternalSyntheticLambda4
                                @Override // java.lang.Runnable
                                public final void run() {
                                    subscriptionCallback.onComplete(true);
                                }
                            });
                        }
                    }
                } else if (subscriptionCallback != null) {
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.adblock.backend.SubscriptionsManager$$ExternalSyntheticLambda3
                        @Override // java.lang.Runnable
                        public final void run() {
                            subscriptionCallback.onComplete(false);
                        }
                    });
                }
                responseExecute.close();
            } finally {
            }
        } catch (Exception unused) {
            if (subscriptionCallback != null) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.adblock.backend.SubscriptionsManager$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        subscriptionCallback.onComplete(false);
                    }
                });
            }
        }
    }

    private String extractRedirect(String str) {
        Matcher matcher = redirectPattern.matcher(str);
        if (matcher.find()) {
            return matcher.group(1);
        }
        return null;
    }

    private FilterMetadata parseMetadata(String str, String str2) {
        String strExtractMetadataValue = extractMetadataValue(str2, "Title");
        String strExtractMetadataValue2 = extractMetadataValue(str2, "Homepage");
        int iCountRules = countRules(str2);
        long jCalculateExpiration = calculateExpiration(str2);
        if (strExtractMetadataValue == null) {
            strExtractMetadataValue = "Unnamed list";
        }
        String str3 = strExtractMetadataValue;
        if (strExtractMetadataValue2 == null) {
            strExtractMetadataValue2 = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        return new FilterMetadata(str, str3, strExtractMetadataValue2, iCountRules, jCalculateExpiration);
    }

    private String extractMetadataValue(String str, String str2) {
        Matcher matcher = Pattern.compile("!\\s*" + str2 + ":\\s*(.+)").matcher(str);
        if (matcher.find()) {
            return matcher.group(1).trim();
        }
        return null;
    }

    private int countRules(String str) {
        int i = 0;
        for (String str2 : str.split("\n")) {
            String strTrim = str2.trim();
            if (!strTrim.isEmpty() && !strTrim.startsWith("!")) {
                i++;
            }
        }
        return i;
    }

    private long calculateExpiration(String str) {
        long jCurrentTimeMillis;
        long millis;
        String strExtractMetadataValue = extractMetadataValue(str, "Expires");
        if (strExtractMetadataValue == null) {
            jCurrentTimeMillis = System.currentTimeMillis();
            millis = TimeUnit.DAYS.toMillis(5L);
        } else {
            try {
                int i = Integer.parseInt(strExtractMetadataValue.replaceAll("[^0-9]", _UrlKt.FRAGMENT_ENCODE_SET));
                if (strExtractMetadataValue.contains("hour")) {
                    return System.currentTimeMillis() + TimeUnit.HOURS.toMillis(i);
                }
                if (strExtractMetadataValue.contains("day")) {
                    return System.currentTimeMillis() + TimeUnit.DAYS.toMillis(i);
                }
                return System.currentTimeMillis() + TimeUnit.DAYS.toMillis(5L);
            } catch (NumberFormatException unused) {
                jCurrentTimeMillis = System.currentTimeMillis();
                millis = TimeUnit.DAYS.toMillis(5L);
            }
        }
        return jCurrentTimeMillis + millis;
    }

    public static class FilterMetadata {
        public final long expires;
        public final String homepage;
        public final int rulesCount;
        public final String title;
        public final String url;

        private FilterMetadata(String str, String str2, String str3, int i, long j) {
            this.url = str;
            this.title = str2;
            this.homepage = str3;
            this.rulesCount = i;
            this.expires = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static FilterMetadata fromJson(JSONObject jSONObject) {
            return new FilterMetadata(jSONObject.getString("url"), jSONObject.getString("title"), jSONObject.getString("homepage"), jSONObject.getInt("rulesCount"), jSONObject.getLong("expires"));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public JSONObject toJson() throws JSONException {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("url", this.url);
            jSONObject.put("title", this.title);
            jSONObject.put("homepage", this.homepage);
            jSONObject.put("rulesCount", this.rulesCount);
            jSONObject.put("expires", this.expires);
            return jSONObject;
        }
    }
}
