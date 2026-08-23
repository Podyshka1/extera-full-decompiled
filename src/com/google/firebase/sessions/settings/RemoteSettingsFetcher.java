package com.google.firebase.sessions.settings;

import android.net.Uri;
import com.google.firebase.annotations.concurrent.Blocking;
import com.google.firebase.sessions.ApplicationInfo;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0001\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u001b\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007Jj\u0010\b\u001a\u00020\t2\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\f0\u000b2\"\u0010\r\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u000e2\"\u0010\u0012\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u000eH\u0096@¢\u0006\u0002\u0010\u0013J\b\u0010\u0014\u001a\u00020\u0015H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/google/firebase/sessions/settings/RemoteSettingsFetcher;", "Lcom/google/firebase/sessions/settings/CrashlyticsSettingsFetcher;", "appInfo", "Lcom/google/firebase/sessions/ApplicationInfo;", "blockingDispatcher", "Lkotlin/coroutines/CoroutineContext;", "<init>", "(Lcom/google/firebase/sessions/ApplicationInfo;Lkotlin/coroutines/CoroutineContext;)V", "doConfigFetch", _UrlKt.FRAGMENT_ENCODE_SET, "headerOptions", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "onSuccess", "Lkotlin/Function2;", "Lorg/json/JSONObject;", "Lkotlin/coroutines/Continuation;", _UrlKt.FRAGMENT_ENCODE_SET, "onFailure", "(Ljava/util/Map;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "settingsUrl", "Ljava/net/URL;", "Companion", "com.google.firebase-firebase-sessions"}, m754k = 1, mv = {2, 0, 0}, xi = 48)
public final class RemoteSettingsFetcher implements CrashlyticsSettingsFetcher {
    private final ApplicationInfo appInfo;
    private final CoroutineContext blockingDispatcher;

    public RemoteSettingsFetcher(ApplicationInfo applicationInfo, @Blocking CoroutineContext coroutineContext) {
        this.appInfo = applicationInfo;
        this.blockingDispatcher = coroutineContext;
    }

    /* JADX INFO: renamed from: com.google.firebase.sessions.settings.RemoteSettingsFetcher$doConfigFetch$2 */
    /* JADX INFO: loaded from: classes5.dex */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m754k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(m765c = "com.google.firebase.sessions.settings.RemoteSettingsFetcher$doConfigFetch$2", m766f = "RemoteSettingsFetcher.kt", m767i = {}, m768l = {73, 75, 78}, m769m = "invokeSuspend", m770n = {}, m771s = {})
    @SourceDebugExtension({"SMAP\nRemoteSettingsFetcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoteSettingsFetcher.kt\ncom/google/firebase/sessions/settings/RemoteSettingsFetcher$doConfigFetch$2\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,105:1\n216#2,2:106\n1#3:108\n*S KotlinDebug\n*F\n+ 1 RemoteSettingsFetcher.kt\ncom/google/firebase/sessions/settings/RemoteSettingsFetcher$doConfigFetch$2\n*L\n58#1:106,2\n*E\n"})
    public static final class C18612 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Map<String, String> $headerOptions;
        final /* synthetic */ Function2<String, Continuation<? super Unit>, Object> $onFailure;
        final /* synthetic */ Function2<JSONObject, Continuation<? super Unit>, Object> $onSuccess;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C18612(Map<String, String> map, Function2<? super JSONObject, ? super Continuation<? super Unit>, ? extends Object> function2, Function2<? super String, ? super Continuation<? super Unit>, ? extends Object> function22, Continuation<? super C18612> continuation) {
            super(2, continuation);
            this.$headerOptions = map;
            this.$onSuccess = function2;
            this.$onFailure = function22;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return RemoteSettingsFetcher.this.new C18612(this.$headerOptions, this.$onSuccess, this.$onFailure, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C18612) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:29:0x00c5, code lost:
        
            if (r8.invoke(r1, r7) == r0) goto L36;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x00da, code lost:
        
            if (r1.invoke(r3, r7) != r0) goto L37;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r6v0, types: [T, java.lang.String] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
            } catch (Exception e) {
                Function2<String, Continuation<? super Unit>, Object> function2 = this.$onFailure;
                String message = e.getMessage();
                if (message == null) {
                    message = e.toString();
                }
                this.label = 3;
            }
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                HttpsURLConnection httpsURLConnection = (HttpsURLConnection) RemoteSettingsFetcher.this.settingsUrl().openConnection();
                httpsURLConnection.setRequestMethod("GET");
                httpsURLConnection.setRequestProperty("Accept", "application/json");
                for (Map.Entry<String, String> entry : this.$headerOptions.entrySet()) {
                    httpsURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
                }
                int responseCode = httpsURLConnection.getResponseCode();
                if (responseCode == 200) {
                    InputStream inputStream = httpsURLConnection.getInputStream();
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
                    StringBuilder sb = new StringBuilder();
                    Ref.ObjectRef objectRef = new Ref.ObjectRef();
                    while (true) {
                        ?? line = bufferedReader.readLine();
                        objectRef.element = line;
                        if (line == 0) {
                            break;
                        }
                        sb.append((String) line);
                    }
                    bufferedReader.close();
                    inputStream.close();
                    JSONObject jSONObject = new JSONObject(sb.toString());
                    Function2<JSONObject, Continuation<? super Unit>, Object> function22 = this.$onSuccess;
                    this.label = 1;
                    if (function22.invoke(jSONObject, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    Function2<String, Continuation<? super Unit>, Object> function23 = this.$onFailure;
                    String str = "Bad response code: " + responseCode;
                    this.label = 2;
                }
            } else {
                if (i != 1 && i != 2 && i != 3) {
                    Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    @Override // com.google.firebase.sessions.settings.CrashlyticsSettingsFetcher
    public Object doConfigFetch(Map<String, String> map, Function2<? super JSONObject, ? super Continuation<? super Unit>, ? extends Object> function2, Function2<? super String, ? super Continuation<? super Unit>, ? extends Object> function22, Continuation<? super Unit> continuation) {
        Object objWithContext = BuildersKt.withContext(this.blockingDispatcher, new C18612(map, function2, function22, null), continuation);
        return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final URL settingsUrl() {
        return new URL(new Uri.Builder().scheme("https").authority("firebase-settings.crashlytics.com").appendPath("spi").appendPath("v2").appendPath("platforms").appendPath("android").appendPath("gmp").appendPath(this.appInfo.getAppId()).appendPath("settings").appendQueryParameter("build_version", this.appInfo.getAndroidAppInfo().getAppBuildVersion()).appendQueryParameter("display_version", this.appInfo.getAndroidAppInfo().getVersionName()).build().toString());
    }
}
