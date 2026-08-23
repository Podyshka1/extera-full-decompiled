package androidx.privacysandbox.ads.adservices.measurement;

import android.content.Context;
import android.net.Uri;
import android.util.Log;
import android.view.InputEvent;
import androidx.privacysandbox.ads.adservices.internal.AdServicesInfo;
import androidx.privacysandbox.ads.adservices.internal.BackCompatManager;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public abstract class MeasurementManager {
    public static final Companion Companion = new Companion(null);

    public abstract Object deleteRegistrations(DeletionRequest deletionRequest, Continuation continuation);

    public abstract Object getMeasurementApiStatus(Continuation continuation);

    public abstract Object registerSource(Uri uri, InputEvent inputEvent, Continuation continuation);

    public abstract Object registerSource(SourceRegistrationRequest sourceRegistrationRequest, Continuation continuation);

    public abstract Object registerTrigger(Uri uri, Continuation continuation);

    public abstract Object registerWebSource(WebSourceRegistrationRequest webSourceRegistrationRequest, Continuation continuation);

    public abstract Object registerWebTrigger(WebTriggerRegistrationRequest webTriggerRegistrationRequest, Continuation continuation);

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final MeasurementManager obtain(final Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            StringBuilder sb = new StringBuilder();
            sb.append("AdServicesInfo.version=");
            AdServicesInfo adServicesInfo = AdServicesInfo.INSTANCE;
            sb.append(adServicesInfo.adServicesVersion());
            Log.d("MeasurementManager", sb.toString());
            if (adServicesInfo.adServicesVersion() >= 5) {
                return new MeasurementManagerApi33Ext5Impl(context);
            }
            if (adServicesInfo.extServicesVersionS() >= 9) {
                return (MeasurementManager) BackCompatManager.INSTANCE.getManager(context, "MeasurementManager", new Function1() { // from class: androidx.privacysandbox.ads.adservices.measurement.MeasurementManager$Companion$obtain$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final MeasurementManagerApi31Ext9Impl invoke(Context it) {
                        Intrinsics.checkNotNullParameter(it, "it");
                        return new MeasurementManagerApi31Ext9Impl(context);
                    }
                });
            }
            return null;
        }
    }
}
