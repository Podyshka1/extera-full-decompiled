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
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0001\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Landroidx/camera/camera2/impl/FeatureCombinationQueryImpl;", "Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery;", "cameraMetadata", "Landroidx/camera/camera2/pipe/CameraMetadata;", "cameraPipe", "Landroidx/camera/camera2/pipe/CameraPipe;", "cameraQuirks", "Landroidx/camera/camera2/compat/quirk/CameraQuirks;", "<init>", "(Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/pipe/CameraPipe;Landroidx/camera/camera2/compat/quirk/CameraQuirks;)V", "isSupported", _UrlKt.FRAGMENT_ENCODE_SET, "sessionConfig", "Landroidx/camera/core/impl/SessionConfig;", "camera-camera2"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
public final class FeatureCombinationQueryImpl implements FeatureCombinationQuery {
    private final CameraMetadata cameraMetadata;
    private final CameraPipe cameraPipe;
    private final CameraQuirks cameraQuirks;

    public FeatureCombinationQueryImpl(CameraMetadata cameraMetadata, CameraPipe cameraPipe, CameraQuirks cameraQuirks) {
        this.cameraMetadata = cameraMetadata;
        this.cameraPipe = cameraPipe;
        this.cameraQuirks = cameraQuirks;
    }

    @Override // androidx.camera.core.featuregroup.impl.FeatureCombinationQuery
    public boolean isSupported(SessionConfig sessionConfig) {
        return ((Boolean) BuildersKt__BuildersKt.runBlocking$default(null, new C01601(CameraGraphConfigProvider.m1034create79VDu0o$default(new CameraGraphConfigProvider(new CameraCallbackMap(), new ComboRequestListener(), new CameraConfig(this.cameraMetadata.getCamera(), null), this.cameraQuirks, new ZslControlNoOpImpl(), new TemplateParamsQuirkOverride(this.cameraQuirks.getQuirks()), this.cameraMetadata, null, null, 384, null), CameraGraph.OperatingMode.INSTANCE.m1203getNORMAL2uNL3no(), sessionConfig, true, null, null, null, null, 120, null), null), 1, null)).booleanValue();
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.FeatureCombinationQueryImpl$isSupported$1 */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m754k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m765c = "androidx.camera.camera2.impl.FeatureCombinationQueryImpl$isSupported$1", m766f = "FeatureCombinationQueryImpl.kt", m767i = {}, m768l = {59}, m769m = "invokeSuspend", m770n = {}, m771s = {}, m772v = 1)
    @SourceDebugExtension({"SMAP\nFeatureCombinationQueryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FeatureCombinationQueryImpl.kt\nandroidx/camera/camera2/impl/FeatureCombinationQueryImpl$isSupported$1\n+ 2 Camera2Logger.kt\nandroidx/camera/camera2/impl/Camera2Logger\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,76:1\n85#2,2:77\n88#2:87\n1563#3:79\n1634#3,2:80\n1563#3:82\n1634#3,3:83\n1636#3:86\n*S KotlinDebug\n*F\n+ 1 FeatureCombinationQueryImpl.kt\nandroidx/camera/camera2/impl/FeatureCombinationQueryImpl$isSupported$1\n*L\n60#1:77,2\n60#1:87\n62#1:79\n62#1:80,2\n63#1:82\n63#1:83,3\n62#1:86\n*E\n"})
    public static final class C01601 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
        final /* synthetic */ CameraGraphConfigProvider.CameraGraphCreationResult $creationResult;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C01601(CameraGraphConfigProvider.CameraGraphCreationResult cameraGraphCreationResult, Continuation<? super C01601> continuation) {
            super(2, continuation);
            this.$creationResult = cameraGraphCreationResult;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return FeatureCombinationQueryImpl.this.new C01601(this.$creationResult, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
            return ((C01601) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
                obj = cameraPipe.mo1219isConfigSupportedNpXggIU(config, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
            }
            CameraGraphConfigProvider.CameraGraphCreationResult cameraGraphCreationResult = this.$creationResult;
            ConfigQueryResult configQueryResult = (ConfigQueryResult) obj;
            int value = configQueryResult.getValue();
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
                String str = Camera2Logger.TRUNCATED_TAG;
                List<CameraStream.Config> streams = cameraGraphCreationResult.getConfig().getStreams();
                ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(streams, 10));
                Iterator<T> it = streams.iterator();
                while (it.hasNext()) {
                    List<OutputStream.Config> outputs = ((CameraStream.Config) it.next()).getOutputs();
                    ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(outputs, 10));
                    for (OutputStream.Config config2 : outputs) {
                        arrayList2.add("size=" + config2.getSize() + ", format=" + ((Object) StreamFormat.m1376toStringimpl(config2.getFormat())) + ", dynamicRangeProfile" + config2.getDynamicRangeProfile());
                    }
                    arrayList.add(arrayList2);
                }
                Log.d(str, "FeatureCombinationQueryImpl#isSupported: result = " + ((Object) ConfigQueryResult.m1232toStringimpl(value)) + " for sessionParameters = " + cameraGraphCreationResult.getConfig().getSessionParameters() + " and streams = " + arrayList);
            }
            return Boxing.boxBoolean(ConfigQueryResult.m1230equalsimpl0(configQueryResult.getValue(), ConfigQueryResult.INSTANCE.m1234getSUPPORTEDXp6DSB4()));
        }
    }
}
