package com.google.firebase.sessions.settings;

import android.net.Uri;
import com.google.firebase.sessions.ApplicationInfo;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class RemoteSettingsFetcher implements CrashlyticsSettingsFetcher {
    public static final Companion Companion = new Companion(null);
    private final ApplicationInfo appInfo;
    private final CoroutineContext blockingDispatcher;

    public RemoteSettingsFetcher(ApplicationInfo appInfo, CoroutineContext blockingDispatcher) {
        Intrinsics.checkNotNullParameter(appInfo, "appInfo");
        Intrinsics.checkNotNullParameter(blockingDispatcher, "blockingDispatcher");
        this.appInfo = appInfo;
        this.blockingDispatcher = blockingDispatcher;
    }

    /* JADX INFO: renamed from: com.google.firebase.sessions.settings.RemoteSettingsFetcher$doConfigFetch$2 */
    /* JADX INFO: loaded from: classes5.dex */
    static final class C19132 extends SuspendLambda implements Function2 {
        final /* synthetic */ Map $headerOptions;
        final /* synthetic */ Function2 $onFailure;
        final /* synthetic */ Function2 $onSuccess;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19132(Map map, Function2 function2, Function2 function22, Continuation continuation) {
            super(2, continuation);
            this.$headerOptions = map;
            this.$onSuccess = function2;
            this.$onFailure = function22;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return RemoteSettingsFetcher.this.new C19132(this.$headerOptions, this.$onSuccess, this.$onFailure, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C19132) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:29:0x00cb, code lost:
        
            if (r8.invoke(r1, r7) == r0) goto L36;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x00e0, code lost:
        
            if (r1.invoke(r3, r7) != r0) goto L37;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
            } catch (Exception e) {
                Function2 function2 = this.$onFailure;
                String message = e.getMessage();
                if (message == null) {
                    message = e.toString();
                }
                this.label = 3;
            }
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                URLConnection uRLConnectionOpenConnection = RemoteSettingsFetcher.this.settingsUrl().openConnection();
                Intrinsics.checkNotNull(uRLConnectionOpenConnection, "null cannot be cast to non-null type javax.net.ssl.HttpsURLConnection");
                HttpsURLConnection httpsURLConnection = (HttpsURLConnection) uRLConnectionOpenConnection;
                httpsURLConnection.setRequestMethod("GET");
                httpsURLConnection.setRequestProperty("Accept", "application/json");
                for (Map.Entry entry : this.$headerOptions.entrySet()) {
                    httpsURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
                }
                int responseCode = httpsURLConnection.getResponseCode();
                if (responseCode == 200) {
                    InputStream inputStream = httpsURLConnection.getInputStream();
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
                    StringBuilder sb = new StringBuilder();
                    Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                    while (true) {
                        String line = bufferedReader.readLine();
                        ref$ObjectRef.element = line;
                        if (line == null) {
                            break;
                        }
                        sb.append(line);
                    }
                    bufferedReader.close();
                    inputStream.close();
                    JSONObject jSONObject = new JSONObject(sb.toString());
                    Function2 function22 = this.$onSuccess;
                    this.label = 1;
                    if (function22.invoke(jSONObject, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    Function2 function23 = this.$onFailure;
                    String str = "Bad response code: " + responseCode;
                    this.label = 2;
                }
            } else {
                if (i != 1 && i != 2 && i != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    @Override // com.google.firebase.sessions.settings.CrashlyticsSettingsFetcher
    public Object doConfigFetch(Map map, Function2 function2, Function2 function22, Continuation continuation) {
        Object objWithContext = BuildersKt.withContext(this.blockingDispatcher, new C19132(map, function2, function22, null), continuation);
        return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final URL settingsUrl() {
        return new URL(new Uri.Builder().scheme("https").authority("firebase-settings.crashlytics.com").appendPath("spi").appendPath("v2").appendPath("platforms").appendPath("android").appendPath("gmp").appendPath(this.appInfo.getAppId()).appendPath("settings").appendQueryParameter("build_version", this.appInfo.getAndroidAppInfo().getAppBuildVersion()).appendQueryParameter("display_version", this.appInfo.getAndroidAppInfo().getVersionName()).build().toString());
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
