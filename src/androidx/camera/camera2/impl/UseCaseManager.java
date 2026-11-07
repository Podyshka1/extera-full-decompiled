package androidx.camera.camera2.impl;

import android.content.Context;
import android.media.MediaCodec;
import android.util.Log;
import android.util.Size;
import androidx.camera.camera2.adapter.CameraStateAdapter;
import androidx.camera.camera2.adapter.GraphStateToCameraStateAdapter;
import androidx.camera.camera2.adapter.SessionConfigAdapter;
import androidx.camera.camera2.adapter.SupportedSurfaceCombination;
import androidx.camera.camera2.adapter.ZslControl;
import androidx.camera.camera2.config.UseCaseCameraComponent;
import androidx.camera.camera2.config.UseCaseCameraConfig;
import androidx.camera.camera2.impl.MeteringRepeating;
import androidx.camera.camera2.internal.DynamicRangeResolver;
import androidx.camera.camera2.interop.Camera2CameraControl;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CameraPipe;
import androidx.camera.core.CameraXConfig;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.Logger;
import androidx.camera.core.UseCase;
import androidx.camera.core.concurrent.CameraCoordinator;
import androidx.camera.core.featuregroup.impl.FeatureCombinationQuery;
import androidx.camera.core.impl.AttachedSurfaceInfo;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.EncoderProfilesProvider;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.SessionProcessor;
import androidx.camera.core.impl.StreamSpec;
import androidx.camera.core.impl.SurfaceConfig;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.impl.utils.UseCaseUtil;
import androidx.camera.core.streamsharing.StreamSharing;
import androidx.camera.core.streamsharing.StreamSharingConfig;
import com.exteragram.messenger.plugins.PluginsConstants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.inject.Provider;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Typography;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.Job;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000º\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u001e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010#\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0002»\u0001B©\u0001\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013\u0012\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00160\u0013\u0012\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00180\u0013\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\u0006\u0010\u001f\u001a\u00020\u001e\u0012\u0006\u0010!\u001a\u00020 \u0012\u0006\u0010#\u001a\u00020\"\u0012\u0006\u0010%\u001a\u00020$¢\u0006\u0004\b&\u0010'J\u000f\u0010)\u001a\u00020(H\u0003¢\u0006\u0004\b)\u0010*J\u001d\u0010.\u001a\u00020(2\f\u0010-\u001a\b\u0012\u0004\u0012\u00020,0+H\u0002¢\u0006\u0004\b.\u0010/J\u001d\u00101\u001a\u00020(2\f\u00100\u001a\b\u0012\u0004\u0012\u00020,0+H\u0003¢\u0006\u0004\b1\u0010/J\u000f\u00102\u001a\u00020(H\u0003¢\u0006\u0004\b2\u0010*J\u0017\u00105\u001a\u00020(2\u0006\u00104\u001a\u000203H\u0003¢\u0006\u0004\b5\u00106J\u0017\u00107\u001a\u00020(2\u0006\u00104\u001a\u000203H\u0003¢\u0006\u0004\b7\u00106J\u0015\u00108\u001a\b\u0012\u0004\u0012\u00020,0+H\u0003¢\u0006\u0004\b8\u00109J\u001d\u0010;\u001a\u00020:2\f\u0010-\u001a\b\u0012\u0004\u0012\u00020,0+H\u0003¢\u0006\u0004\b;\u0010<J\u001d\u0010=\u001a\u00020:2\f\u0010-\u001a\b\u0012\u0004\u0012\u00020,0+H\u0003¢\u0006\u0004\b=\u0010<J\u0019\u0010?\u001a\u00020:*\b\u0012\u0004\u0012\u00020,0>H\u0002¢\u0006\u0004\b?\u0010@J\u001d\u0010A\u001a\u00020:2\f\u0010-\u001a\b\u0012\u0004\u0012\u00020,0+H\u0003¢\u0006\u0004\bA\u0010<J\u001d\u0010B\u001a\u00020:2\f\u0010-\u001a\b\u0012\u0004\u0012\u00020,0+H\u0003¢\u0006\u0004\bB\u0010<J\u000f\u0010C\u001a\u00020(H\u0003¢\u0006\u0004\bC\u0010*J\u000f\u0010D\u001a\u00020(H\u0003¢\u0006\u0004\bD\u0010*J\u0019\u0010E\u001a\u00020:*\b\u0012\u0004\u0012\u00020,0>H\u0002¢\u0006\u0004\bE\u0010@J\u000f\u0010G\u001a\u00020FH\u0002¢\u0006\u0004\bG\u0010HJ\u001d\u0010L\u001a\u00020F2\f\u0010K\u001a\b\u0012\u0004\u0012\u00020J0IH\u0002¢\u0006\u0004\bL\u0010MJ\u001f\u0010N\u001a\b\u0012\u0004\u0012\u00020J0I*\b\u0012\u0004\u0012\u00020,0>H\u0002¢\u0006\u0004\bN\u0010OJ!\u0010R\u001a\u0010\u0012\f\u0012\n Q*\u0004\u0018\u00010P0P0I*\u00020,H\u0002¢\u0006\u0004\bR\u0010SJ\u0019\u0010T\u001a\u00020:*\b\u0012\u0004\u0012\u00020,0>H\u0002¢\u0006\u0004\bT\u0010@J\u001f\u0010V\u001a\b\u0012\u0004\u0012\u00020U0I*\b\u0012\u0004\u0012\u00020,0>H\u0002¢\u0006\u0004\bV\u0010OJ\u000f\u0010W\u001a\u00020UH\u0002¢\u0006\u0004\bW\u0010XJ\u000f\u0010Y\u001a\u00020(H\u0002¢\u0006\u0004\bY\u0010*J\u0017\u0010]\u001a\u00020(2\u0006\u0010Z\u001a\u00020:H\u0000¢\u0006\u0004\b[\u0010\\J\u0011\u0010a\u001a\u0004\u0018\u00010^H\u0000¢\u0006\u0004\b_\u0010`J\u001b\u0010c\u001a\u00020(2\f\u0010b\u001a\b\u0012\u0004\u0012\u00020,0I¢\u0006\u0004\bc\u0010dJ\u001b\u0010e\u001a\u00020(2\f\u0010b\u001a\b\u0012\u0004\u0012\u00020,0I¢\u0006\u0004\be\u0010dJ\u0015\u0010g\u001a\u00020(2\u0006\u0010f\u001a\u00020,¢\u0006\u0004\bg\u0010hJ\u0015\u0010i\u001a\u00020(2\u0006\u0010f\u001a\u00020,¢\u0006\u0004\bi\u0010hJ\u0015\u0010j\u001a\u00020(2\u0006\u0010f\u001a\u00020,¢\u0006\u0004\bj\u0010hJ\u0015\u0010k\u001a\u00020(2\u0006\u0010f\u001a\u00020,¢\u0006\u0004\bk\u0010hJ\u0015\u0010m\u001a\u00020(2\u0006\u0010l\u001a\u00020:¢\u0006\u0004\bm\u0010\\J\u0017\u0010o\u001a\u0004\u0018\u00010(2\u0006\u0010n\u001a\u00020:¢\u0006\u0004\bo\u0010pJ\u0010\u0010q\u001a\u00020(H\u0086@¢\u0006\u0004\bq\u0010rJ\u000f\u0010t\u001a\u00020sH\u0016¢\u0006\u0004\bt\u0010uJ)\u0010}\u001a\u0002032\u0006\u0010w\u001a\u00020v2\u0006\u0010y\u001a\u00020x2\b\b\u0002\u0010z\u001a\u00020:H\u0001¢\u0006\u0004\b{\u0010|J\u001a\u0010\u0082\u0001\u001a\u00020(2\u0006\u0010\u007f\u001a\u00020~H\u0000¢\u0006\u0006\b\u0080\u0001\u0010\u0081\u0001R\u0015\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\u0003\u0010\u0083\u0001R\u0015\u0010\u0005\u001a\u00020\u00048\u0002X\u0083\u0004¢\u0006\u0007\n\u0005\b\u0005\u0010\u0084\u0001R\u0015\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\u0007\u0010\u0085\u0001R\u0015\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\t\u0010\u0086\u0001R\u0015\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\u000b\u0010\u0087\u0001R\u001b\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\u000e\u0010\u0088\u0001R\u0015\u0010\u0010\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\u0010\u0010\u0089\u0001R\u0015\u0010\u0012\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\u0012\u0010\u008a\u0001R\u001b\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u00138\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\u0015\u0010\u008b\u0001R\u001b\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00160\u00138\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\u0017\u0010\u008b\u0001R\u001b\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00180\u00138\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\u0019\u0010\u008b\u0001R\u0015\u0010\u001b\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\u001b\u0010\u008c\u0001R\u0015\u0010\u001d\u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\u001d\u0010\u008d\u0001R\u0015\u0010\u001f\u001a\u00020\u001e8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\u001f\u0010\u008e\u0001R\u0015\u0010!\u001a\u00020 8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b!\u0010\u008f\u0001R\u0017\u0010\u0090\u0001\u001a\u00020\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0090\u0001\u0010\u0091\u0001R\u001e\u0010\u0093\u0001\u001a\t\u0012\u0004\u0012\u00020,0\u0092\u00018\u0002X\u0083\u0004¢\u0006\b\n\u0006\b\u0093\u0001\u0010\u0088\u0001R\u001e\u0010\u0094\u0001\u001a\t\u0012\u0004\u0012\u00020,0\u0092\u00018\u0002X\u0083\u0004¢\u0006\b\n\u0006\b\u0094\u0001\u0010\u0088\u0001R\u0019\u0010\u0095\u0001\u001a\u00020:8\u0002@\u0002X\u0083\u000e¢\u0006\b\n\u0006\b\u0095\u0001\u0010\u0096\u0001R\u0019\u0010\u0097\u0001\u001a\u00020:8\u0002@\u0002X\u0083\u000e¢\u0006\b\n\u0006\b\u0097\u0001\u0010\u0096\u0001R\u001b\u0010\u0098\u0001\u001a\u0004\u0018\u0001038\u0002@\u0002X\u0083\u000e¢\u0006\b\n\u0006\b\u0098\u0001\u0010\u0099\u0001R\u0017\u0010l\u001a\u00020:8\u0002@\u0002X\u0083\u000e¢\u0006\u0007\n\u0005\bl\u0010\u0096\u0001R\u001e\u0010\u009a\u0001\u001a\t\u0012\u0004\u0012\u00020,0\u0092\u00018\u0002X\u0083\u0004¢\u0006\b\n\u0006\b\u009a\u0001\u0010\u0088\u0001R\u0018\u0010\u009c\u0001\u001a\u00030\u009b\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u009c\u0001\u0010\u009d\u0001R\u0018\u0010\u009f\u0001\u001a\u00030\u009e\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u009f\u0001\u0010 \u0001R\u0018\u0010¢\u0001\u001a\u00030¡\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b¢\u0001\u0010£\u0001R$\u0010¥\u0001\u001a\u000f\u0012\u0004\u0012\u00020^\u0012\u0004\u0012\u00020~0¤\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b¥\u0001\u0010¦\u0001R\u001c\u0010¨\u0001\u001a\u0005\u0018\u00010§\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¨\u0001\u0010©\u0001R\u001f\u0010¬\u0001\u001a\n\u0012\u0005\u0012\u00030«\u00010ª\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b¬\u0001\u0010\u00ad\u0001R&\u0010®\u0001\u001a\u0011\u0012\f\u0012\n Q*\u0004\u0018\u00010\r0\r0\u0092\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b®\u0001\u0010\u0088\u0001R8\u0010±\u0001\u001a\u0005\u0018\u00010¯\u00012\n\u0010°\u0001\u001a\u0005\u0018\u00010¯\u00018@@@X\u0080\u000e¢\u0006\u0018\n\u0006\b±\u0001\u0010²\u0001\u001a\u0006\b³\u0001\u0010´\u0001\"\u0006\bµ\u0001\u0010¶\u0001R\u0017\u0010º\u0001\u001a\u0005\u0018\u00010·\u00018F¢\u0006\b\u001a\u0006\b¸\u0001\u0010¹\u0001¨\u0006¼\u0001"}, d2 = {"Landroidx/camera/camera2/impl/UseCaseManager;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/CameraPipe;", "cameraPipe", "Landroidx/camera/core/concurrent/CameraCoordinator;", "cameraCoordinator", "Landroidx/camera/camera2/config/UseCaseCameraComponent$Builder;", "builder", "Landroidx/camera/camera2/adapter/ZslControl;", "zslControl", "Landroidx/camera/camera2/impl/LowLightBoostControl;", "lowLightBoostControl", "Ljava/util/Set;", "Landroidx/camera/camera2/impl/UseCaseCameraControl;", "controls", "Landroidx/camera/camera2/interop/Camera2CameraControl;", "camera2CameraControl", "Landroidx/camera/camera2/adapter/CameraStateAdapter;", "cameraStateAdapter", "Ljavax/inject/Provider;", "Landroidx/camera/core/impl/CameraInternal;", "cameraInternal", "Landroidx/camera/camera2/impl/UseCaseThreads;", "useCaseThreads", "Landroidx/camera/core/impl/CameraInfoInternal;", "cameraInfoInternal", "Landroidx/camera/core/impl/EncoderProfilesProvider;", "encoderProfilesProvider", "Landroidx/camera/camera2/impl/CameraProperties;", "cameraProperties", "Landroidx/camera/core/CameraXConfig;", "cameraXConfig", "Landroidx/camera/camera2/impl/CameraGraphConfigProvider;", "cameraGraphConfigProvider", "Landroid/content/Context;", "context", "Landroidx/camera/camera2/impl/DisplayInfoManager;", "displayInfoManager", "<init>", "(Landroidx/camera/camera2/pipe/CameraPipe;Landroidx/camera/core/concurrent/CameraCoordinator;Landroidx/camera/camera2/config/UseCaseCameraComponent$Builder;Landroidx/camera/camera2/adapter/ZslControl;Landroidx/camera/camera2/impl/LowLightBoostControl;Ljava/util/Set;Landroidx/camera/camera2/interop/Camera2CameraControl;Landroidx/camera/camera2/adapter/CameraStateAdapter;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Landroidx/camera/core/impl/EncoderProfilesProvider;Landroidx/camera/camera2/impl/CameraProperties;Landroidx/camera/core/CameraXConfig;Landroidx/camera/camera2/impl/CameraGraphConfigProvider;Landroid/content/Context;Landroidx/camera/camera2/impl/DisplayInfoManager;)V", _UrlKt.FRAGMENT_ENCODE_SET, "refreshRunningUseCases", "()V", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/core/UseCase;", "runningUseCases", "updateRunningUseCases", "(Ljava/util/Set;)V", "newUseCases", "refreshAttachedUseCases", "closeCurrentUseCases", "Landroidx/camera/camera2/config/UseCaseCameraConfig;", "useCaseCameraConfig", "tryResumeUseCaseManager", "(Landroidx/camera/camera2/config/UseCaseCameraConfig;)V", "beginComponentCreation", "getRunningUseCases", "()Ljava/util/Set;", _UrlKt.FRAGMENT_ENCODE_SET, "addOrRemoveRepeatingUseCase", "(Ljava/util/Set;)Z", "isMeteringRepeatingRequired", _UrlKt.FRAGMENT_ENCODE_SET, "shouldForceRepeatingStream", "(Ljava/util/Collection;)Z", "shouldAddRepeatingUseCase", "shouldRemoveRepeatingUseCase", "addRepeatingUseCase", "removeRepeatingUseCase", "isMeteringCombinationSupported", _UrlKt.FRAGMENT_ENCODE_SET, "getCameraMode", "()I", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/core/impl/AttachedSurfaceInfo;", "attachedSurfaceInfoList", "getRequiredMaxBitDepth", "(Ljava/util/List;)I", "getAttachedSurfaceInfoList", "(Ljava/util/Collection;)Ljava/util/List;", "Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;", "kotlin.jvm.PlatformType", "getCaptureTypes", "(Landroidx/camera/core/UseCase;)Ljava/util/List;", "isUltraHdrOn", "Landroidx/camera/core/impl/SurfaceConfig;", "getSessionSurfacesConfigs", "createMeteringRepeatingSurfaceConfig", "()Landroidx/camera/core/impl/SurfaceConfig;", "updateZslDisabledByUseCaseConfigStatus", "createImmediately", "setCameraGraphCreationMode$camera_camera2", "(Z)V", "setCameraGraphCreationMode", "Landroidx/camera/camera2/pipe/CameraGraph$Config;", "getDeferredCameraGraphConfig$camera_camera2", "()Landroidx/camera/camera2/pipe/CameraGraph$Config;", "getDeferredCameraGraphConfig", "useCases", "attach", "(Ljava/util/List;)V", "detach", "useCase", "activate", "(Landroidx/camera/core/UseCase;)V", "deactivate", PluginsConstants.UPDATE, "reset", "isPrimary", "setPrimary", "enabled", "setActiveResumeMode", "(Z)Lkotlin/Unit;", "close", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", "Landroidx/camera/camera2/adapter/SessionConfigAdapter;", "sessionConfigAdapter", "Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;", "graphStateToCameraStateAdapter", "isExtensions", "createUseCaseCameraConfig$camera_camera2", "(Landroidx/camera/camera2/adapter/SessionConfigAdapter;Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;Z)Landroidx/camera/camera2/config/UseCaseCameraConfig;", "createUseCaseCameraConfig", "Landroidx/camera/camera2/pipe/CameraGraph;", "cameraGraph", "resumeDeferredComponentCreation$camera_camera2", "(Landroidx/camera/camera2/pipe/CameraGraph;)V", "resumeDeferredComponentCreation", "Landroidx/camera/camera2/pipe/CameraPipe;", "Landroidx/camera/core/concurrent/CameraCoordinator;", "Landroidx/camera/camera2/config/UseCaseCameraComponent$Builder;", "Landroidx/camera/camera2/adapter/ZslControl;", "Landroidx/camera/camera2/impl/LowLightBoostControl;", "Ljava/util/Set;", "Landroidx/camera/camera2/interop/Camera2CameraControl;", "Landroidx/camera/camera2/adapter/CameraStateAdapter;", "Ljavax/inject/Provider;", "Landroidx/camera/core/impl/EncoderProfilesProvider;", "Landroidx/camera/camera2/impl/CameraProperties;", "Landroidx/camera/core/CameraXConfig;", "Landroidx/camera/camera2/impl/CameraGraphConfigProvider;", "lock", "Ljava/lang/Object;", _UrlKt.FRAGMENT_ENCODE_SET, "attachedUseCases", "activeUseCases", "activeResumeEnabled", "Z", "shouldCreateCameraGraphImmediately", "deferredUseCaseCameraConfig", "Landroidx/camera/camera2/config/UseCaseCameraConfig;", "pendingUseCasesToNotifyCameraControlReady", "Landroidx/camera/camera2/impl/MeteringRepeating;", "meteringRepeating", "Landroidx/camera/camera2/impl/MeteringRepeating;", "Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;", "supportedSurfaceCombination", "Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;", "Landroidx/camera/camera2/internal/DynamicRangeResolver;", "dynamicRangeResolver", "Landroidx/camera/camera2/internal/DynamicRangeResolver;", "Lkotlin/Function1;", "defaultCameraGraphFactory", "Lkotlin/jvm/functions/Function1;", "Landroidx/camera/camera2/config/UseCaseCameraComponent;", "_activeComponent", "Landroidx/camera/camera2/config/UseCaseCameraComponent;", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/Job;", "closingCameraJobs", "Ljava/util/List;", "allControls", "Landroidx/camera/core/impl/SessionProcessor;", "value", "sessionProcessor", "Landroidx/camera/core/impl/SessionProcessor;", "getSessionProcessor$camera_camera2", "()Landroidx/camera/core/impl/SessionProcessor;", "setSessionProcessor$camera_camera2", "(Landroidx/camera/core/impl/SessionProcessor;)V", "Landroidx/camera/camera2/impl/UseCaseCamera;", "getCamera", "()Landroidx/camera/camera2/impl/UseCaseCamera;", "camera", "RunningUseCasesChangeListener", "camera-camera2"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nUseCaseManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UseCaseManager.kt\nandroidx/camera/camera2/impl/UseCaseManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Camera2Logger.kt\nandroidx/camera/camera2/impl/Camera2Logger\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,747:1\n1#2:748\n119#3,4:749\n85#3,4:753\n119#3,4:762\n85#3,4:766\n85#3,4:770\n85#3,4:774\n85#3,4:789\n119#3,4:796\n774#4:757\n865#4,2:758\n1869#4,2:760\n1761#4,3:778\n774#4:781\n865#4,2:782\n1869#4,2:784\n1740#4,3:786\n1869#4:795\n1870#4:800\n808#4,11:801\n1869#4:812\n1869#4,2:813\n1870#4:815\n1761#4,3:816\n216#5,2:793\n*S KotlinDebug\n*F\n+ 1 UseCaseManager.kt\nandroidx/camera/camera2/impl/UseCaseManager\n*L\n188#1:749,4\n191#1:753,4\n227#1:762,4\n230#1:766,4\n387#1:770,4\n467#1:774,4\n613#1:789,4\n659#1:796,4\n194#1:757\n194#1:758,2\n212#1:760,2\n514#1:778,3\n521#1:781\n521#1:782,2\n538#1:784,2\n547#1:786,3\n652#1:795\n652#1:800\n696#1:801,11\n701#1:812\n702#1:813,2\n701#1:815\n724#1:816,3\n640#1:793,2\n*E\n"})
public final class UseCaseManager {
    private volatile UseCaseCameraComponent _activeComponent;
    private boolean activeResumeEnabled;
    private final Set<UseCaseCameraControl> allControls;
    private final UseCaseCameraComponent.Builder builder;
    private final Camera2CameraControl camera2CameraControl;
    private final CameraCoordinator cameraCoordinator;
    private final CameraGraphConfigProvider cameraGraphConfigProvider;
    private final Provider<CameraInfoInternal> cameraInfoInternal;
    private final Provider<CameraInternal> cameraInternal;
    private final CameraPipe cameraPipe;
    private final CameraProperties cameraProperties;
    private final CameraStateAdapter cameraStateAdapter;
    private final CameraXConfig cameraXConfig;
    private final Set<UseCaseCameraControl> controls;
    private UseCaseCameraConfig deferredUseCaseCameraConfig;
    private final DynamicRangeResolver dynamicRangeResolver;
    private final EncoderProfilesProvider encoderProfilesProvider;
    private final LowLightBoostControl lowLightBoostControl;
    private final MeteringRepeating meteringRepeating;
    private final SupportedSurfaceCombination supportedSurfaceCombination;
    private final Provider<UseCaseThreads> useCaseThreads;
    private final ZslControl zslControl;
    private final Object lock = new Object();
    private final Set<UseCase> attachedUseCases = new LinkedHashSet();
    private final Set<UseCase> activeUseCases = new LinkedHashSet();
    private boolean shouldCreateCameraGraphImmediately = true;
    private boolean isPrimary = true;
    private final Set<UseCase> pendingUseCasesToNotifyCameraControlReady = new LinkedHashSet();
    private final Function1<CameraGraph.Config, CameraGraph> defaultCameraGraphFactory = new Function1() { // from class: androidx.camera.camera2.impl.UseCaseManager$$ExternalSyntheticLambda2
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return this.f$0.cameraPipe.createCameraGraph((CameraGraph.Config) obj);
        }
    };
    private final List<Job> closingCameraJobs = new ArrayList();

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0007À\u0006\u0001"}, d2 = {"Landroidx/camera/camera2/impl/UseCaseManager$RunningUseCasesChangeListener;", _UrlKt.FRAGMENT_ENCODE_SET, "onRunningUseCasesChanged", _UrlKt.FRAGMENT_ENCODE_SET, "runningUseCases", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/core/UseCase;", "camera-camera2"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
    public interface RunningUseCasesChangeListener {
        void onRunningUseCasesChanged(Set<? extends UseCase> runningUseCases);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CameraGraph resumeDeferredComponentCreation$lambda$0$0(CameraGraph cameraGraph, CameraGraph.Config config) {
        return cameraGraph;
    }

    public UseCaseManager(CameraPipe cameraPipe, CameraCoordinator cameraCoordinator, UseCaseCameraComponent.Builder builder, ZslControl zslControl, LowLightBoostControl lowLightBoostControl, Set<UseCaseCameraControl> set, Camera2CameraControl camera2CameraControl, CameraStateAdapter cameraStateAdapter, Provider<CameraInternal> provider, Provider<UseCaseThreads> provider2, Provider<CameraInfoInternal> provider3, EncoderProfilesProvider encoderProfilesProvider, CameraProperties cameraProperties, CameraXConfig cameraXConfig, CameraGraphConfigProvider cameraGraphConfigProvider, Context context, DisplayInfoManager displayInfoManager) {
        this.cameraPipe = cameraPipe;
        this.cameraCoordinator = cameraCoordinator;
        this.builder = builder;
        this.zslControl = zslControl;
        this.lowLightBoostControl = lowLightBoostControl;
        this.controls = set;
        this.camera2CameraControl = camera2CameraControl;
        this.cameraStateAdapter = cameraStateAdapter;
        this.cameraInternal = provider;
        this.useCaseThreads = provider2;
        this.cameraInfoInternal = provider3;
        this.encoderProfilesProvider = encoderProfilesProvider;
        this.cameraProperties = cameraProperties;
        this.cameraXConfig = cameraXConfig;
        this.cameraGraphConfigProvider = cameraGraphConfigProvider;
        this.meteringRepeating = new MeteringRepeating.Builder(cameraProperties, displayInfoManager).build();
        this.supportedSurfaceCombination = new SupportedSurfaceCombination(context, cameraProperties.getMetadata(), encoderProfilesProvider, FeatureCombinationQuery.NO_OP_FEATURE_COMBINATION_QUERY);
        this.dynamicRangeResolver = new DynamicRangeResolver(cameraProperties.getMetadata());
        Set<UseCaseCameraControl> mutableSet = CollectionsKt.toMutableSet(set);
        mutableSet.add(camera2CameraControl);
        this.allControls = mutableSet;
    }

    public final SessionProcessor getSessionProcessor$camera_camera2() {
        synchronized (this.lock) {
        }
        return null;
    }

    public final void setSessionProcessor$camera_camera2(SessionProcessor sessionProcessor) {
        synchronized (this.lock) {
            Unit unit = Unit.INSTANCE;
        }
    }

    public final UseCaseCamera getCamera() {
        UseCaseCameraComponent useCaseCameraComponent = this._activeComponent;
        if (useCaseCameraComponent != null) {
            return useCaseCameraComponent.getUseCaseCamera();
        }
        return null;
    }

    public final void setCameraGraphCreationMode$camera_camera2(boolean createImmediately) {
        synchronized (this.lock) {
            try {
                this.shouldCreateCameraGraphImmediately = createImmediately;
                if (createImmediately) {
                    this.deferredUseCaseCameraConfig = null;
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final CameraGraph.Config getDeferredCameraGraphConfig$camera_camera2() {
        CameraGraph.Config cameraGraphConfig;
        synchronized (this.lock) {
            UseCaseCameraConfig useCaseCameraConfig = this.deferredUseCaseCameraConfig;
            cameraGraphConfig = useCaseCameraConfig != null ? useCaseCameraConfig.getCameraGraphConfig() : null;
        }
        return cameraGraphConfig;
    }

    public final void attach(List<? extends UseCase> useCases) {
        synchronized (this.lock) {
            if (useCases.isEmpty()) {
                Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                if (Logger.isWarnEnabled("CXCP")) {
                    Log.w(Camera2Logger.TRUNCATED_TAG, "Attach [] from " + this + " (Ignored)");
                }
                return;
            }
            Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "Attaching " + useCases + " from " + this);
            }
            ArrayList arrayList = new ArrayList();
            for (Object obj : useCases) {
                if (!this.attachedUseCases.contains((UseCase) obj)) {
                    arrayList.add(obj);
                }
            }
            int size = arrayList.size();
            int i = 0;
            int i2 = 0;
            while (i2 < size) {
                Object obj2 = arrayList.get(i2);
                i2++;
                ((UseCase) obj2).onSessionStart();
            }
            if (this.attachedUseCases.addAll(useCases) && !addOrRemoveRepeatingUseCase(getRunningUseCases())) {
                updateZslDisabledByUseCaseConfigStatus();
                this.lowLightBoostControl.onSessionConfigChanged(CollectionsKt.toList(this.attachedUseCases));
                refreshAttachedUseCases(this.attachedUseCases);
            }
            if (!this.shouldCreateCameraGraphImmediately) {
                this.pendingUseCasesToNotifyCameraControlReady.addAll(arrayList);
            } else {
                int size2 = arrayList.size();
                while (i < size2) {
                    Object obj3 = arrayList.get(i);
                    i++;
                    ((UseCase) obj3).onCameraControlReady();
                }
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void detach(List<? extends UseCase> useCases) {
        synchronized (this.lock) {
            if (useCases.isEmpty()) {
                Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                if (Logger.isWarnEnabled("CXCP")) {
                    Log.w(Camera2Logger.TRUNCATED_TAG, "Detaching [] from " + this + " (Ignored)");
                }
                return;
            }
            Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "Detaching " + useCases + " from " + this);
            }
            this.activeUseCases.removeAll(useCases);
            for (UseCase useCase : useCases) {
                if (this.attachedUseCases.contains(useCase)) {
                    useCase.onSessionStop();
                }
            }
            if (this.attachedUseCases.removeAll(useCases)) {
                if (addOrRemoveRepeatingUseCase(getRunningUseCases())) {
                    return;
                }
                if (this.attachedUseCases.isEmpty()) {
                    this.zslControl.setZslDisabledByUserCaseConfig(false);
                    this.lowLightBoostControl.onSessionConfigChanged(CollectionsKt.emptyList());
                } else {
                    updateZslDisabledByUseCaseConfigStatus();
                    this.lowLightBoostControl.onSessionConfigChanged(CollectionsKt.toList(this.attachedUseCases));
                }
                refreshAttachedUseCases(this.attachedUseCases);
            }
            this.pendingUseCasesToNotifyCameraControlReady.removeAll(useCases);
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void activate(UseCase useCase) {
        synchronized (this.lock) {
            try {
                if (this.activeUseCases.add(useCase)) {
                    refreshRunningUseCases();
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void deactivate(UseCase useCase) {
        synchronized (this.lock) {
            try {
                if (this.activeUseCases.remove(useCase)) {
                    refreshRunningUseCases();
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void update(UseCase useCase) {
        synchronized (this.lock) {
            try {
                if (this.attachedUseCases.contains(useCase)) {
                    refreshRunningUseCases();
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void reset(UseCase useCase) {
        synchronized (this.lock) {
            try {
                if (this.attachedUseCases.contains(useCase)) {
                    refreshAttachedUseCases(this.attachedUseCases);
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void setPrimary(boolean isPrimary) {
        synchronized (this.lock) {
            this.isPrimary = isPrimary;
            Unit unit = Unit.INSTANCE;
        }
    }

    public final Unit setActiveResumeMode(boolean enabled) {
        Unit unit;
        synchronized (this.lock) {
            this.activeResumeEnabled = enabled;
            UseCaseCamera camera = getCamera();
            if (camera != null) {
                camera.setActiveResumeMode(enabled);
                unit = Unit.INSTANCE;
            } else {
                unit = null;
            }
        }
        return unit;
    }

    public final Object close(Continuation<? super Unit> continuation) {
        List list;
        synchronized (this.lock) {
            closeCurrentUseCases();
            this.meteringRepeating.onUnbind();
            list = CollectionsKt.toList(this.closingCameraJobs);
        }
        Object objJoinAll = AwaitKt.joinAll(list, continuation);
        return objJoinAll == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objJoinAll : Unit.INSTANCE;
    }

    public String toString() {
        return "UseCaseManager<" + this.cameraGraphConfigProvider + Typography.greater;
    }

    private final void refreshRunningUseCases() {
        if (this.attachedUseCases.isEmpty()) {
            return;
        }
        Set<UseCase> runningUseCases = getRunningUseCases();
        if (shouldAddRepeatingUseCase(runningUseCases)) {
            addRepeatingUseCase();
        } else if (shouldRemoveRepeatingUseCase(runningUseCases)) {
            removeRepeatingUseCase();
        } else {
            updateRunningUseCases(runningUseCases);
        }
    }

    private final void updateRunningUseCases(Set<? extends UseCase> runningUseCases) {
        UseCaseCamera camera = getCamera();
        if (camera != null) {
            camera.updateRepeatingRequestAsync(this.isPrimary, runningUseCases);
            for (UseCaseCameraControl useCaseCameraControl : this.allControls) {
                if (useCaseCameraControl instanceof RunningUseCasesChangeListener) {
                    ((RunningUseCasesChangeListener) useCaseCameraControl).onRunningUseCasesChanged(runningUseCases);
                }
            }
        }
    }

    private final void refreshAttachedUseCases(Set<? extends UseCase> newUseCases) {
        closeCurrentUseCases();
        List list = CollectionsKt.toList(newUseCases);
        if (list.isEmpty()) {
            for (UseCaseCameraControl useCaseCameraControl : this.allControls) {
                useCaseCameraControl.setRequestControl(null);
                useCaseCameraControl.reset();
            }
            return;
        }
        if (!this.shouldCreateCameraGraphImmediately) {
            Iterator<UseCaseCameraControl> it = this.allControls.iterator();
            while (it.hasNext()) {
                it.next().setRequestControl(null);
            }
        }
        GraphStateToCameraStateAdapter graphStateToCameraStateAdapter = new GraphStateToCameraStateAdapter(this.cameraStateAdapter);
        getSessionProcessor$camera_camera2();
        tryResumeUseCaseManager(createUseCaseCameraConfig$camera_camera2(new SessionConfigAdapter(list, this.isPrimary), graphStateToCameraStateAdapter, false));
    }

    public final UseCaseCameraConfig createUseCaseCameraConfig$camera_camera2(SessionConfigAdapter sessionConfigAdapter, GraphStateToCameraStateAdapter graphStateToCameraStateAdapter, boolean isExtensions) {
        UseCaseCameraConfig.Companion companion = UseCaseCameraConfig.INSTANCE;
        CameraGraphConfigProvider cameraGraphConfigProvider = this.cameraGraphConfigProvider;
        Function1<CameraGraph.Config, CameraGraph> function1 = this.defaultCameraGraphFactory;
        getSessionProcessor$camera_camera2();
        return companion.create(sessionConfigAdapter, cameraGraphConfigProvider, function1, graphStateToCameraStateAdapter, null, isExtensions);
    }

    private final void closeCurrentUseCases() {
        final Job jobClose;
        UseCaseCamera camera = getCamera();
        this._activeComponent = null;
        this.cameraCoordinator.removePendingCameraInfo(this.cameraInfoInternal.get());
        if (camera != null && (jobClose = camera.close()) != null) {
            this.closingCameraJobs.add(jobClose);
            jobClose.invokeOnCompletion(new Function1() { // from class: androidx.camera.camera2.impl.UseCaseManager$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return UseCaseManager.closeCurrentUseCases$lambda$0$0$0(this.f$0, jobClose, (Throwable) obj);
                }
            });
        }
        getSessionProcessor$camera_camera2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit closeCurrentUseCases$lambda$0$0$0(UseCaseManager useCaseManager, Job job, Throwable th) {
        synchronized (useCaseManager.lock) {
            useCaseManager.closingCameraJobs.remove(job);
        }
        return Unit.INSTANCE;
    }

    private final void tryResumeUseCaseManager(UseCaseCameraConfig useCaseCameraConfig) {
        if (!this.shouldCreateCameraGraphImmediately) {
            this.deferredUseCaseCameraConfig = useCaseCameraConfig;
            this.cameraCoordinator.addPendingCameraInfo(this.cameraInfoInternal.get());
        } else {
            beginComponentCreation(useCaseCameraConfig);
        }
    }

    public final void resumeDeferredComponentCreation$camera_camera2(final CameraGraph cameraGraph) {
        synchronized (this.lock) {
            UseCaseCameraConfig useCaseCameraConfig = this.deferredUseCaseCameraConfig;
            if (useCaseCameraConfig == null) {
                throw new IllegalStateException("Required value was null.");
            }
            beginComponentCreation(UseCaseCameraConfig.copy$default(useCaseCameraConfig, new Function1() { // from class: androidx.camera.camera2.impl.UseCaseManager$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return UseCaseManager.resumeDeferredComponentCreation$lambda$0$0(cameraGraph, (CameraGraph.Config) obj);
                }
            }, null, null, null, null, 30, null));
            Unit unit = Unit.INSTANCE;
        }
    }

    private final void beginComponentCreation(UseCaseCameraConfig useCaseCameraConfig) {
        this._activeComponent = this.builder.config(useCaseCameraConfig).build();
        UseCaseCamera camera = getCamera();
        if (camera == null) {
            Segment$$ExternalSyntheticBUOutline1.m973m("Required value was null.");
            return;
        }
        camera.start();
        Iterator<UseCaseCameraControl> it = this.allControls.iterator();
        while (it.hasNext()) {
            it.next().setRequestControl(camera.getRequestControl());
        }
        camera.setActiveResumeMode(this.activeResumeEnabled);
        updateRunningUseCases(getRunningUseCases());
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "Notifying " + this.pendingUseCasesToNotifyCameraControlReady + " camera control ready");
        }
        Iterator<UseCase> it2 = this.pendingUseCasesToNotifyCameraControlReady.iterator();
        while (it2.hasNext()) {
            it2.next().onCameraControlReady();
        }
        this.pendingUseCasesToNotifyCameraControlReady.clear();
    }

    private final Set<UseCase> getRunningUseCases() {
        return CollectionsKt.intersect(this.attachedUseCases, this.activeUseCases);
    }

    private final boolean addOrRemoveRepeatingUseCase(Set<? extends UseCase> runningUseCases) {
        if (shouldAddRepeatingUseCase(runningUseCases)) {
            addRepeatingUseCase();
            return true;
        }
        if (!shouldRemoveRepeatingUseCase(runningUseCases)) {
            return false;
        }
        removeRepeatingUseCase();
        return true;
    }

    private final boolean isMeteringRepeatingRequired(Set<? extends UseCase> runningUseCases) {
        if (!this.cameraXConfig.isRepeatingStreamForced()) {
            return false;
        }
        if (runningUseCases == null || !runningUseCases.isEmpty()) {
            Iterator<T> it = runningUseCases.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                UseCase useCase = (UseCase) it.next();
                if (!Intrinsics.areEqual(useCase, this.meteringRepeating) && !useCase.getSessionConfig().getSurfaces().isEmpty()) {
                    Set<UseCase> set = this.attachedUseCases;
                    ArrayList arrayList = new ArrayList();
                    for (Object obj : set) {
                        if (!Intrinsics.areEqual((UseCase) obj, this.meteringRepeating)) {
                            arrayList.add(obj);
                        }
                    }
                    if (!arrayList.isEmpty() && shouldForceRepeatingStream(arrayList) && isMeteringCombinationSupported(arrayList)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    private final boolean shouldForceRepeatingStream(Collection<? extends UseCase> collection) {
        boolean z;
        if (collection.isEmpty()) {
            return false;
        }
        SessionConfig.ValidatingBuilder validatingBuilder = new SessionConfig.ValidatingBuilder();
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            validatingBuilder.add(((UseCase) it.next()).getSessionConfig());
        }
        SessionConfig sessionConfigBuild = validatingBuilder.build();
        List<DeferrableSurface> surfaces = sessionConfigBuild.getRepeatingCaptureConfig().getSurfaces();
        List<DeferrableSurface> surfaces2 = sessionConfigBuild.getSurfaces();
        if (surfaces2.isEmpty()) {
            return false;
        }
        List<DeferrableSurface> list = surfaces2;
        if ((list instanceof Collection) && list.isEmpty()) {
            z = true;
        } else {
            Iterator<T> it2 = list.iterator();
            while (it2.hasNext()) {
                if (!Intrinsics.areEqual(((DeferrableSurface) it2.next()).getContainerClass(), MediaCodec.class)) {
                    z = false;
                    break;
                }
            }
            z = true;
        }
        return z || surfaces.isEmpty();
    }

    private final boolean shouldAddRepeatingUseCase(Set<? extends UseCase> runningUseCases) {
        return this.cameraXConfig.isRepeatingStreamForced() && !this.attachedUseCases.contains(this.meteringRepeating) && isMeteringRepeatingRequired(runningUseCases);
    }

    private final boolean shouldRemoveRepeatingUseCase(Set<? extends UseCase> runningUseCases) {
        return runningUseCases.contains(this.meteringRepeating) && !isMeteringRepeatingRequired(runningUseCases);
    }

    private final void addRepeatingUseCase() {
        this.meteringRepeating.bindToCamera(this.cameraInternal.get(), null, null, null);
        this.meteringRepeating.setupSession();
        attach(CollectionsKt.listOf(this.meteringRepeating));
        activate(this.meteringRepeating);
    }

    private final void removeRepeatingUseCase() {
        deactivate(this.meteringRepeating);
        detach(CollectionsKt.listOf(this.meteringRepeating));
        this.meteringRepeating.unbindFromCamera(this.cameraInternal.get());
    }

    private final boolean isMeteringCombinationSupported(Collection<? extends UseCase> collection) {
        if (this.meteringRepeating.getAttachedSurfaceResolution() == null) {
            this.meteringRepeating.setupSession();
        }
        List<AttachedSurfaceInfo> attachedSurfaceInfoList = getAttachedSurfaceInfoList(collection);
        if (attachedSurfaceInfoList.isEmpty()) {
            return false;
        }
        List<SurfaceConfig> sessionSurfacesConfigs = getSessionSurfacesConfigs(collection);
        SupportedSurfaceCombination supportedSurfaceCombination = this.supportedSurfaceCombination;
        SupportedSurfaceCombination.FeatureSettings featureSettings = new SupportedSurfaceCombination.FeatureSettings(getCameraMode(), getRequiredMaxBitDepth(attachedSurfaceInfoList), UseCaseUtil.containsVideoCapture(collection), UseCaseUtil.getVideoStabilization$default(collection, null, 1, null), isUltraHdrOn(collection), false, false, false, null, false, 992, null);
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(sessionSurfacesConfigs);
        arrayList.add(createMeteringRepeatingSurfaceConfig());
        Unit unit = Unit.INSTANCE;
        boolean zCheckSupported$default = SupportedSurfaceCombination.checkSupported$default(supportedSurfaceCombination, featureSettings, arrayList, null, null, null, 28, null);
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "Combination of " + sessionSurfacesConfigs + " + " + this.meteringRepeating + " is supported: " + zCheckSupported$default);
        }
        return zCheckSupported$default;
    }

    private final int getCameraMode() {
        synchronized (this.lock) {
            if (this.cameraCoordinator.getCameraOperatingMode() == 2) {
                return 1;
            }
            Unit unit = Unit.INSTANCE;
            return 0;
        }
    }

    private final int getRequiredMaxBitDepth(List<? extends AttachedSurfaceInfo> attachedSurfaceInfoList) {
        Iterator<Map.Entry<UseCaseConfig<?>, DynamicRange>> it = this.dynamicRangeResolver.resolveAndValidateDynamicRanges(attachedSurfaceInfoList, CollectionsKt.listOf(this.meteringRepeating.getCurrentConfig()), CollectionsKt.listOf(0)).entrySet().iterator();
        while (it.hasNext()) {
            if (it.next().getValue().getBitDepth() == 10) {
                return 10;
            }
        }
        return 8;
    }

    private final List<AttachedSurfaceInfo> getAttachedSurfaceInfoList(Collection<? extends UseCase> collection) {
        ArrayList arrayList = new ArrayList();
        for (UseCase useCase : collection) {
            Size attachedSurfaceResolution = useCase.getAttachedSurfaceResolution();
            StreamSpec attachedStreamSpec = useCase.getAttachedStreamSpec();
            if (attachedSurfaceResolution == null || attachedStreamSpec == null) {
                Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                if (Logger.isWarnEnabled("CXCP")) {
                    Log.w(Camera2Logger.TRUNCATED_TAG, "Invalid surface resolution or stream spec is found.");
                }
                arrayList.clear();
                return arrayList;
            }
            SurfaceConfig surfaceConfigTransformSurfaceConfig = this.supportedSurfaceCombination.transformSurfaceConfig(getCameraMode(), useCase.getCurrentConfig().getInputFormat(), attachedSurfaceResolution, useCase.getCurrentConfig().getStreamUseCase());
            int inputFormat = useCase.getCurrentConfig().getInputFormat();
            DynamicRange dynamicRange = attachedStreamSpec.getDynamicRange();
            List<UseCaseConfigFactory.CaptureType> captureTypes = getCaptureTypes(useCase);
            Config implementationOptions = attachedStreamSpec.getImplementationOptions();
            if (implementationOptions == null) {
                implementationOptions = MutableOptionsBundle.create();
            }
            arrayList.add(AttachedSurfaceInfo.create(surfaceConfigTransformSurfaceConfig, inputFormat, attachedSurfaceResolution, dynamicRange, captureTypes, implementationOptions, attachedStreamSpec.getSessionType(), attachedStreamSpec.getExpectedFrameRateRange(), useCase.getCurrentConfig().isStrictFrameRateRequired(), useCase.getCurrentConfig().getCustomMaxFrameRate(attachedSurfaceResolution)));
        }
        return arrayList;
    }

    private final List<UseCaseConfigFactory.CaptureType> getCaptureTypes(UseCase useCase) {
        if (useCase instanceof StreamSharing) {
            return ((StreamSharingConfig) ((StreamSharing) useCase).getCurrentConfig()).getCaptureTypes();
        }
        return CollectionsKt.listOf(useCase.getCurrentConfig().getCaptureType());
    }

    private final boolean isUltraHdrOn(Collection<? extends UseCase> collection) {
        UseCaseConfig<?> currentConfig;
        ArrayList arrayList = new ArrayList();
        for (Object obj : collection) {
            if (obj instanceof ImageCapture) {
                arrayList.add(obj);
            }
        }
        ImageCapture imageCapture = (ImageCapture) CollectionsKt.firstOrNull((List) arrayList);
        return (imageCapture == null || (currentConfig = imageCapture.getCurrentConfig()) == null || currentConfig.getInputFormat() != 4101) ? false : true;
    }

    private final List<SurfaceConfig> getSessionSurfacesConfigs(Collection<? extends UseCase> collection) {
        ArrayList arrayList = new ArrayList();
        for (UseCase useCase : collection) {
            Iterator<T> it = useCase.getSessionConfig().getSurfaces().iterator();
            while (it.hasNext()) {
                arrayList.add(this.supportedSurfaceCombination.transformSurfaceConfig(getCameraMode(), useCase.getCurrentConfig().getInputFormat(), ((DeferrableSurface) it.next()).getPrescribedSize(), useCase.getCurrentConfig().getStreamUseCase()));
            }
        }
        return arrayList;
    }

    private final SurfaceConfig createMeteringRepeatingSurfaceConfig() {
        return this.supportedSurfaceCombination.transformSurfaceConfig(getCameraMode(), this.meteringRepeating.getImageFormat(), this.meteringRepeating.getAttachedSurfaceResolution(), this.meteringRepeating.getCurrentConfig().getStreamUseCase());
    }

    private final void updateZslDisabledByUseCaseConfigStatus() {
        Set<UseCase> set = this.attachedUseCases;
        boolean z = false;
        if (set == null || !set.isEmpty()) {
            Iterator<T> it = set.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                } else if (((UseCase) it.next()).getCurrentConfig().isZslDisabled(false)) {
                    z = true;
                    break;
                }
            }
        }
        this.zslControl.setZslDisabledByUserCaseConfig(z);
    }
}
