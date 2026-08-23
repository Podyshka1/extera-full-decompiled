package androidx.camera.camera2.impl;

import android.util.Log;
import androidx.camera.camera2.adapter.ZslControlNoOpImpl;
import androidx.camera.camera2.compat.quirk.CameraQuirks;
import androidx.camera.camera2.compat.workaround.TemplateParamsQuirkOverride;
import androidx.camera.camera2.config.CameraConfig;
import androidx.camera.camera2.impl.CameraGraphConfigProvider;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.CameraPipe;
import androidx.camera.camera2.pipe.CameraStream;
import androidx.camera.camera2.pipe.ConfigQueryResult;
import androidx.camera.camera2.pipe.OutputStream;
import androidx.camera.camera2.pipe.StreamFormat;
import androidx.camera.core.Logger;
import androidx.camera.core.featuregroup.impl.FeatureCombinationQuery;
import androidx.camera.core.impl.SessionConfig;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
public final class FeatureCombinationQueryImpl implements FeatureCombinationQuery {
    private final CameraMetadata cameraMetadata;
    private final CameraPipe cameraPipe;
    private final CameraQuirks cameraQuirks;

    public FeatureCombinationQueryImpl(CameraMetadata cameraMetadata, CameraPipe cameraPipe, CameraQuirks cameraQuirks) {
        Intrinsics.checkNotNullParameter(cameraMetadata, "cameraMetadata");
        Intrinsics.checkNotNullParameter(cameraPipe, "cameraPipe");
        Intrinsics.checkNotNullParameter(cameraQuirks, "cameraQuirks");
        this.cameraMetadata = cameraMetadata;
        this.cameraPipe = cameraPipe;
        this.cameraQuirks = cameraQuirks;
    }

    @Override // androidx.camera.core.featuregroup.impl.FeatureCombinationQuery
    public boolean isSupported(SessionConfig sessionConfig) {
        Intrinsics.checkNotNullParameter(sessionConfig, "sessionConfig");
        return ((Boolean) BuildersKt__BuildersKt.runBlocking$default(null, new C01551(CameraGraphConfigProvider.m1428create79VDu0o$default(new CameraGraphConfigProvider(new CameraCallbackMap(), new ComboRequestListener(), new CameraConfig(this.cameraMetadata.mo1612getCameraDz_R5H8(), null), this.cameraQuirks, new ZslControlNoOpImpl(), new TemplateParamsQuirkOverride(this.cameraQuirks.getQuirks()), this.cameraMetadata, null, null, 384, null), CameraGraph.OperatingMode.Companion.m1597getNORMAL2uNL3no(), sessionConfig, true, null, null, null, null, 120, null), null), 1, null)).booleanValue();
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.FeatureCombinationQueryImpl$isSupported$1 */
    static final class C01551 extends SuspendLambda implements Function2 {
        final /* synthetic */ CameraGraphConfigProvider.CameraGraphCreationResult $creationResult;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C01551(CameraGraphConfigProvider.CameraGraphCreationResult cameraGraphCreationResult, Continuation continuation) {
            super(2, continuation);
            this.$creationResult = cameraGraphCreationResult;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return FeatureCombinationQueryImpl.this.new C01551(this.$creationResult, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C01551) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                CameraPipe cameraPipe = FeatureCombinationQueryImpl.this.cameraPipe;
                CameraGraph.Config config = this.$creationResult.getConfig();
                this.label = 1;
                obj = cameraPipe.mo1613isConfigSupportedNpXggIU(config, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            CameraGraphConfigProvider.CameraGraphCreationResult cameraGraphCreationResult = this.$creationResult;
            ConfigQueryResult configQueryResult = (ConfigQueryResult) obj;
            int iM1627unboximpl = configQueryResult.m1627unboximpl();
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
                String str = Camera2Logger.TRUNCATED_TAG;
                List streams = cameraGraphCreationResult.getConfig().getStreams();
                ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(streams, 10));
                Iterator it = streams.iterator();
                while (it.hasNext()) {
                    List<OutputStream.Config> outputs = ((CameraStream.Config) it.next()).getOutputs();
                    ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(outputs, 10));
                    for (OutputStream.Config config2 : outputs) {
                        arrayList2.add("size=" + config2.getSize() + ", format=" + ((Object) StreamFormat.m1778toStringimpl(config2.m1693getFormat8FPWQzE())) + ", dynamicRangeProfile" + config2.m1692getDynamicRangeProfileOoVcG5w());
                    }
                    arrayList.add(arrayList2);
                }
                Log.d(str, "FeatureCombinationQueryImpl#isSupported: result = " + ((Object) ConfigQueryResult.m1626toStringimpl(iM1627unboximpl)) + " for sessionParameters = " + cameraGraphCreationResult.getConfig().getSessionParameters() + " and streams = " + arrayList);
            }
            return Boxing.boxBoolean(ConfigQueryResult.m1624equalsimpl0(configQueryResult.m1627unboximpl(), ConfigQueryResult.Companion.m1628getSUPPORTEDXp6DSB4()));
        }
    }
}
