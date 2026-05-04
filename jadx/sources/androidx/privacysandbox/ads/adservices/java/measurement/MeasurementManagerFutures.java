package androidx.privacysandbox.ads.adservices.java.measurement;

import android.content.Context;
import android.net.Uri;
import android.view.InputEvent;
import androidx.privacysandbox.ads.adservices.java.internal.CoroutineAdapterKt;
import androidx.privacysandbox.ads.adservices.measurement.DeletionRequest;
import androidx.privacysandbox.ads.adservices.measurement.MeasurementManager;
import androidx.privacysandbox.ads.adservices.measurement.SourceRegistrationRequest;
import androidx.privacysandbox.ads.adservices.measurement.WebSourceRegistrationRequest;
import androidx.privacysandbox.ads.adservices.measurement.WebTriggerRegistrationRequest;
import com.google.common.util.concurrent.ListenableFuture;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: loaded from: classes4.dex */
public abstract class MeasurementManagerFutures {
    public static final Companion Companion = new Companion(null);

    public static final MeasurementManagerFutures from(Context context) {
        return Companion.from(context);
    }

    public abstract ListenableFuture getMeasurementApiStatusAsync();

    public abstract ListenableFuture registerTriggerAsync(Uri uri);

    /* JADX INFO: Access modifiers changed from: private */
    static final class Api33Ext5JavaImpl extends MeasurementManagerFutures {
        private final MeasurementManager mMeasurementManager;

        public Api33Ext5JavaImpl(MeasurementManager mMeasurementManager) {
            Intrinsics.checkNotNullParameter(mMeasurementManager, "mMeasurementManager");
            this.mMeasurementManager = mMeasurementManager;
        }

        public ListenableFuture deleteRegistrationsAsync(DeletionRequest deletionRequest) {
            Intrinsics.checkNotNullParameter(deletionRequest, "deletionRequest");
            return CoroutineAdapterKt.asListenableFuture$default(BuildersKt__Builders_commonKt.async$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getDefault()), null, null, new C0695x759ed5b3(this, deletionRequest, null), 3, null), null, 1, null);
        }

        public ListenableFuture registerSourceAsync(Uri attributionSource, InputEvent inputEvent) {
            Intrinsics.checkNotNullParameter(attributionSource, "attributionSource");
            return CoroutineAdapterKt.asListenableFuture$default(BuildersKt__Builders_commonKt.async$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getDefault()), null, null, new C0697x2c3ae252(this, attributionSource, inputEvent, null), 3, null), null, 1, null);
        }

        public ListenableFuture registerSourceAsync(SourceRegistrationRequest request) {
            Intrinsics.checkNotNullParameter(request, "request");
            return CoroutineAdapterKt.asListenableFuture$default(BuildersKt__Builders_commonKt.async$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getDefault()), null, null, new C0698x2c3ae253(this, request, null), 3, null), null, 1, null);
        }

        @Override // androidx.privacysandbox.ads.adservices.java.measurement.MeasurementManagerFutures
        public ListenableFuture registerTriggerAsync(Uri trigger) {
            Intrinsics.checkNotNullParameter(trigger, "trigger");
            return CoroutineAdapterKt.asListenableFuture$default(BuildersKt__Builders_commonKt.async$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getDefault()), null, null, new C0699x9b0c78cd(this, trigger, null), 3, null), null, 1, null);
        }

        public ListenableFuture registerWebSourceAsync(WebSourceRegistrationRequest request) {
            Intrinsics.checkNotNullParameter(request, "request");
            return CoroutineAdapterKt.asListenableFuture$default(BuildersKt__Builders_commonKt.async$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getDefault()), null, null, new C0700x5537f716(this, request, null), 3, null), null, 1, null);
        }

        public ListenableFuture registerWebTriggerAsync(WebTriggerRegistrationRequest request) {
            Intrinsics.checkNotNullParameter(request, "request");
            return CoroutineAdapterKt.asListenableFuture$default(BuildersKt__Builders_commonKt.async$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getDefault()), null, null, new C0701x91b1fc89(this, request, null), 3, null), null, 1, null);
        }

        @Override // androidx.privacysandbox.ads.adservices.java.measurement.MeasurementManagerFutures
        public ListenableFuture getMeasurementApiStatusAsync() {
            return CoroutineAdapterKt.asListenableFuture$default(BuildersKt__Builders_commonKt.async$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getDefault()), null, null, new C0696x3feaa97c(this, null), 3, null), null, 1, null);
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final MeasurementManagerFutures from(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            MeasurementManager measurementManagerObtain = MeasurementManager.Companion.obtain(context);
            if (measurementManagerObtain != null) {
                return new Api33Ext5JavaImpl(measurementManagerObtain);
            }
            return null;
        }
    }
}
