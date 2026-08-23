package com.google.firebase.heartbeatinfo;

import android.content.Context;
import android.util.Base64OutputStream;
import androidx.core.os.UserManagerCompat;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.FirebaseApp;
import com.google.firebase.annotations.concurrent.Background;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;
import com.google.firebase.components.Dependency;
import com.google.firebase.components.Lazy;
import com.google.firebase.components.Qualified;
import com.google.firebase.heartbeatinfo.HeartBeatInfo;
import com.google.firebase.inject.Provider;
import com.google.firebase.platforminfo.UserAgentPublisher;
import java.io.ByteArrayOutputStream;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.zip.GZIPOutputStream;
import okhttp3.internal.url._UrlKt;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class DefaultHeartBeatController implements HeartBeatController, HeartBeatInfo {
    private final Context applicationContext;
    private final Executor backgroundExecutor;
    private final Set consumers;
    private final Provider storageProvider;
    private final Provider userAgentProvider;

    public Task registerHeartBeat() {
        if (this.consumers.size() <= 0) {
            return Tasks.forResult(null);
        }
        if (!UserManagerCompat.isUserUnlocked(this.applicationContext)) {
            return Tasks.forResult(null);
        }
        return Tasks.call(this.backgroundExecutor, new Callable() { // from class: com.google.firebase.heartbeatinfo.DefaultHeartBeatController$$ExternalSyntheticLambda3
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return DefaultHeartBeatController.$r8$lambda$ssxGEaCSc5qotNfnf_nT87dJ5TU(this.f$0);
            }
        });
    }

    public static /* synthetic */ Void $r8$lambda$ssxGEaCSc5qotNfnf_nT87dJ5TU(DefaultHeartBeatController defaultHeartBeatController) {
        synchronized (defaultHeartBeatController) {
            ((HeartBeatInfoStorage) defaultHeartBeatController.storageProvider.get()).storeHeartBeat(System.currentTimeMillis(), ((UserAgentPublisher) defaultHeartBeatController.userAgentProvider.get()).getUserAgent());
        }
        return null;
    }

    @Override // com.google.firebase.heartbeatinfo.HeartBeatController
    public Task getHeartBeatsHeader() {
        if (!UserManagerCompat.isUserUnlocked(this.applicationContext)) {
            return Tasks.forResult(_UrlKt.FRAGMENT_ENCODE_SET);
        }
        return Tasks.call(this.backgroundExecutor, new Callable() { // from class: com.google.firebase.heartbeatinfo.DefaultHeartBeatController$$ExternalSyntheticLambda2
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return DefaultHeartBeatController.m3541$r8$lambda$NKSgqEy24k0xnerWqrlPNg6qcc(this.f$0);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$NKSgqEy24k0xnerWqr-lPNg6qcc, reason: not valid java name */
    public static /* synthetic */ String m3541$r8$lambda$NKSgqEy24k0xnerWqrlPNg6qcc(DefaultHeartBeatController defaultHeartBeatController) {
        String string;
        synchronized (defaultHeartBeatController) {
            try {
                HeartBeatInfoStorage heartBeatInfoStorage = (HeartBeatInfoStorage) defaultHeartBeatController.storageProvider.get();
                List allHeartBeats = heartBeatInfoStorage.getAllHeartBeats();
                heartBeatInfoStorage.deleteAllHeartBeats();
                JSONArray jSONArray = new JSONArray();
                for (int i = 0; i < allHeartBeats.size(); i++) {
                    HeartBeatResult heartBeatResult = (HeartBeatResult) allHeartBeats.get(i);
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("agent", heartBeatResult.getUserAgent());
                    jSONObject.put("dates", new JSONArray((Collection) heartBeatResult.getUsedDates()));
                    jSONArray.put(jSONObject);
                }
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("heartbeats", jSONArray);
                jSONObject2.put("version", "2");
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                Base64OutputStream base64OutputStream = new Base64OutputStream(byteArrayOutputStream, 11);
                try {
                    GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(base64OutputStream);
                    try {
                        gZIPOutputStream.write(jSONObject2.toString().getBytes("UTF-8"));
                        gZIPOutputStream.close();
                        base64OutputStream.close();
                        string = byteArrayOutputStream.toString("UTF-8");
                    } finally {
                    }
                } finally {
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return string;
    }

    private DefaultHeartBeatController(final Context context, final String str, Set set, Provider provider, Executor executor) {
        this(new Lazy(new Provider() { // from class: com.google.firebase.heartbeatinfo.DefaultHeartBeatController$$ExternalSyntheticLambda1
            @Override // com.google.firebase.inject.Provider
            public final Object get() {
                return DefaultHeartBeatController.$r8$lambda$W62DRj4tEJPeea0uD3QbdJLqqVQ(context, str);
            }
        }), set, executor, provider, context);
    }

    public static /* synthetic */ HeartBeatInfoStorage $r8$lambda$W62DRj4tEJPeea0uD3QbdJLqqVQ(Context context, String str) {
        return new HeartBeatInfoStorage(context, str);
    }

    DefaultHeartBeatController(Provider provider, Set set, Executor executor, Provider provider2, Context context) {
        this.storageProvider = provider;
        this.consumers = set;
        this.backgroundExecutor = executor;
        this.userAgentProvider = provider2;
        this.applicationContext = context;
    }

    public static Component component() {
        final Qualified qualified = Qualified.qualified(Background.class, Executor.class);
        return Component.builder(DefaultHeartBeatController.class, HeartBeatController.class, HeartBeatInfo.class).add(Dependency.required(Context.class)).add(Dependency.required(FirebaseApp.class)).add(Dependency.setOf(HeartBeatConsumer.class)).add(Dependency.requiredProvider(UserAgentPublisher.class)).add(Dependency.required(qualified)).factory(new ComponentFactory() { // from class: com.google.firebase.heartbeatinfo.DefaultHeartBeatController$$ExternalSyntheticLambda0
            @Override // com.google.firebase.components.ComponentFactory
            public final Object create(ComponentContainer componentContainer) {
                return DefaultHeartBeatController.$r8$lambda$qqd15T_K2a1gIcWWKlBsXOoLnRU(qualified, componentContainer);
            }
        }).build();
    }

    public static /* synthetic */ DefaultHeartBeatController $r8$lambda$qqd15T_K2a1gIcWWKlBsXOoLnRU(Qualified qualified, ComponentContainer componentContainer) {
        return new DefaultHeartBeatController((Context) componentContainer.get(Context.class), ((FirebaseApp) componentContainer.get(FirebaseApp.class)).getPersistenceKey(), componentContainer.setOf(HeartBeatConsumer.class), componentContainer.getProvider(UserAgentPublisher.class), (Executor) componentContainer.get(qualified));
    }

    @Override // com.google.firebase.heartbeatinfo.HeartBeatInfo
    public synchronized HeartBeatInfo.HeartBeat getHeartBeatCode(String str) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        HeartBeatInfoStorage heartBeatInfoStorage = (HeartBeatInfoStorage) this.storageProvider.get();
        if (heartBeatInfoStorage.shouldSendGlobalHeartBeat(jCurrentTimeMillis)) {
            heartBeatInfoStorage.postHeartBeatCleanUp();
            return HeartBeatInfo.HeartBeat.GLOBAL;
        }
        return HeartBeatInfo.HeartBeat.NONE;
    }
}
