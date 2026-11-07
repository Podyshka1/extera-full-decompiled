package com.google.firebase.sessions.settings;

import android.util.Log;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "it", "Lorg/json/JSONObject;"}, m862k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(m872c = "com.google.firebase.sessions.settings.RemoteSettings$updateSettings$2$1", m873f = "RemoteSettings.kt", m874i = {}, m875l = {126}, m876m = "invokeSuspend", m877n = {}, m878s = {})
public final class RemoteSettings$updateSettings$2$1 extends SuspendLambda implements Function2<JSONObject, Continuation<? super Unit>, Object> {
    /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ RemoteSettings this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RemoteSettings$updateSettings$2$1(RemoteSettings remoteSettings, Continuation<? super RemoteSettings$updateSettings$2$1> continuation) {
        super(2, continuation);
        this.this$0 = remoteSettings;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        RemoteSettings$updateSettings$2$1 remoteSettings$updateSettings$2$1 = new RemoteSettings$updateSettings$2$1(this.this$0, continuation);
        remoteSettings$updateSettings$2$1.L$0 = obj;
        return remoteSettings$updateSettings$2$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(JSONObject jSONObject, Continuation<? super Unit> continuation) {
        return ((RemoteSettings$updateSettings$2$1) create(jSONObject, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Boolean bool;
        Double d;
        Integer num;
        int defaultCacheDuration;
        JSONException jSONException;
        Integer num2;
        Integer num3;
        Double d2;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        Integer num4 = null;
        num4 = null;
        Boolean bool2 = null;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            JSONObject jSONObject = (JSONObject) this.L$0;
            Log.d("FirebaseSessions", "Fetched settings: " + jSONObject);
            if (jSONObject.has("app_quality")) {
                JSONObject jSONObject2 = (JSONObject) jSONObject.get("app_quality");
                try {
                    Boolean bool3 = jSONObject2.has("sessions_enabled") ? (Boolean) jSONObject2.get("sessions_enabled") : null;
                    try {
                        d2 = jSONObject2.has("sampling_rate") ? (Double) jSONObject2.get("sampling_rate") : null;
                        try {
                            num3 = jSONObject2.has("session_timeout_seconds") ? (Integer) jSONObject2.get("session_timeout_seconds") : null;
                            try {
                                num4 = jSONObject2.has("cache_duration") ? (Integer) jSONObject2.get("cache_duration") : null;
                                Unit unit = Unit.INSTANCE;
                                num = num3;
                                d = d2;
                                bool = bool3;
                            } catch (JSONException e) {
                                jSONException = e;
                                num2 = num4;
                                bool2 = bool3;
                                Boxing.boxInt(Log.e("FirebaseSessions", "Error parsing the configs remotely fetched: ", jSONException));
                                num = num3;
                                d = d2;
                                bool = bool2;
                                num4 = num2;
                            }
                        } catch (JSONException e2) {
                            jSONException = e2;
                            num2 = null;
                            num3 = null;
                        }
                    } catch (JSONException e3) {
                        jSONException = e3;
                        num2 = null;
                        num3 = null;
                        d2 = null;
                    }
                } catch (JSONException e4) {
                    jSONException = e4;
                    num2 = null;
                    num3 = null;
                    d2 = null;
                }
            } else {
                bool = null;
                d = null;
                num = null;
            }
            SettingsCache settingsCache = this.this$0.settingsCache;
            if (num4 == null) {
                defaultCacheDuration = RemoteSettings.Companion.getDefaultCacheDuration();
            } else {
                defaultCacheDuration = num4.intValue();
            }
            SessionConfigs sessionConfigs = new SessionConfigs(bool, d, num, Boxing.boxInt(defaultCacheDuration), Boxing.boxLong(this.this$0.timeProvider.currentTime().getSeconds()));
            this.label = 1;
            if (settingsCache.updateConfigs(sessionConfigs, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
