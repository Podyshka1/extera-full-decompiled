package androidx.camera.camera2.adapter;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.media.MediaRecorder;
import android.os.Build;
import android.util.Log;
import android.util.Range;
import android.util.Rational;
import android.util.Size;
import androidx.camera.camera2.compat.StreamConfigurationMapCompat;
import androidx.camera.camera2.compat.workaround.ExtraSupportedSurfaceCombinationsContainer;
import androidx.camera.camera2.compat.workaround.OutputSizesCorrector;
import androidx.camera.camera2.compat.workaround.ResolutionCorrector;
import androidx.camera.camera2.compat.workaround.TargetAspectRatio;
import androidx.camera.camera2.impl.Camera2Logger;
import androidx.camera.camera2.impl.DisplayInfoManager;
import androidx.camera.camera2.internal.DynamicRangeResolver;
import androidx.camera.camera2.internal.HighSpeedResolver;
import androidx.camera.camera2.internal.StreamUseCaseUtil;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.Logger;
import androidx.camera.core.featuregroup.impl.FeatureCombinationQuery;
import androidx.camera.core.featuregroup.impl.feature.FpsRangeFeature;
import androidx.camera.core.impl.AttachedSurfaceInfo;
import androidx.camera.core.impl.CameraMode;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.EncoderProfilesProvider;
import androidx.camera.core.impl.EncoderProfilesProxy;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.StreamSpec;
import androidx.camera.core.impl.StreamUseCase;
import androidx.camera.core.impl.SurfaceCombination;
import androidx.camera.core.impl.SurfaceConfig;
import androidx.camera.core.impl.SurfaceSizeDefinition;
import androidx.camera.core.impl.SurfaceStreamSpecQueryResult;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.stabilization.VideoStabilization;
import androidx.camera.core.impl.utils.AspectRatioUtil;
import androidx.camera.core.impl.utils.CompareSizesByArea;
import androidx.camera.core.internal.utils.SizeUtil;
import androidx.core.util.Preconditions;
import androidx.view.SavedStateHandleSupport$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.HttpUrl$Builder$$ExternalSyntheticBUOutline0;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u009c\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0010#\n\u0002\b\u001a\n\u0002\u0010\u0011\n\u0002\b\u001e\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u0000 Ñ\u00012\u00020\u0001:\bÎ\u0001Ï\u0001Ð\u0001Ñ\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJV\u0010;\u001a\u00020\u001f2\u0006\u0010<\u001a\u00020\u001a2\f\u0010=\u001a\b\u0012\u0004\u0012\u00020>0\u001b2\u0014\b\u0002\u0010?\u001a\u000e\u0012\u0004\u0012\u00020>\u0012\u0004\u0012\u00020A0@2\u0012\b\u0002\u0010B\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030C0\u001b2\u000e\b\u0002\u0010D\u001a\b\u0012\u0004\u0012\u00020\u000f0\u001bJR\u0010E\u001a\u00020F2\u0006\u0010<\u001a\u00020\u001a2\f\u0010=\u001a\b\u0012\u0004\u0012\u00020>0\u001b2\u0012\u0010?\u001a\u000e\u0012\u0004\u0012\u00020>\u0012\u0004\u0012\u00020A0@2\u0010\u0010B\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030C0\u001b2\f\u0010G\u001a\b\u0012\u0004\u0012\u00020\u000f0\u001bH\u0002JV\u0010H\u001a\n\u0012\u0004\u0012\u00020>\u0018\u00010\u001b2\u0006\u0010<\u001a\u00020\u001a2\u0010\u0010=\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010>\u0018\u00010\u001b2\u0012\u0010I\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020J0\u00192\u0016\u0010K\u001a\u0012\u0012\u0004\u0012\u00020\u000f\u0012\b\u0012\u0006\u0012\u0002\b\u00030C0\u0019H\u0002J\u0016\u0010L\u001a\b\u0012\u0004\u0012\u00020\u00120\u001b2\u0006\u0010<\u001a\u00020\u001aH\u0002J&\u0010M\u001a\u00020>2\u0006\u0010N\u001a\u00020\u000f2\u0006\u0010O\u001a\u00020\u000f2\u0006\u0010P\u001a\u00020Q2\u0006\u0010R\u001a\u00020SJ^\u0010T\u001a\u00020U2\u0006\u0010N\u001a\u00020\u000f2\f\u0010V\u001a\b\u0012\u0004\u0012\u00020J0\u001b2\u001c\u0010W\u001a\u0018\u0012\b\u0012\u0006\u0012\u0002\b\u00030C\u0012\n\u0012\b\u0012\u0004\u0012\u00020Q0\u001b0@2\b\b\u0002\u0010X\u001a\u00020Y2\b\b\u0002\u0010Z\u001a\u00020\u001f2\u0006\u0010[\u001a\u00020\u001f2\u0006\u0010\\\u001a\u00020\u001fJ\u0084\u0001\u0010]\u001a\u00020U2\u0006\u0010^\u001a\u00020_2\u0006\u0010<\u001a\u00020\u001a2\f\u0010V\u001a\b\u0012\u0004\u0012\u00020J0\u001b2\u001c\u0010`\u001a\u0018\u0012\b\u0012\u0006\u0012\u0002\b\u00030C\u0012\n\u0012\b\u0012\u0004\u0012\u00020Q0\u001b0@2\u0010\u0010B\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030C0\u001b2\f\u0010D\u001a\b\u0012\u0004\u0012\u00020\u000f0\u001b2\u0016\u0010a\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030C\u0012\u0004\u0012\u00020A0@2\u0006\u0010\\\u001a\u00020\u001fH\u0002J|\u0010b\u001a\u00020U2\u0006\u0010<\u001a\u00020\u001a2\f\u0010V\u001a\b\u0012\u0004\u0012\u00020J0\u001b2\u001c\u0010`\u001a\u0018\u0012\b\u0012\u0006\u0012\u0002\b\u00030C\u0012\n\u0012\b\u0012\u0004\u0012\u00020Q0\u001b0@2\u0010\u0010B\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030C0\u001b2\f\u0010D\u001a\b\u0012\u0004\u0012\u00020\u000f0\u001b2\u0016\u0010a\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030C\u0012\u0004\u0012\u00020A0@2\u0006\u0010\\\u001a\u00020\u001fH\u0002J>\u0010c\u001a\u00020_2\f\u0010d\u001a\b\u0012\u0004\u0012\u00020A0e2\u000e\u0010f\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010g2\u0006\u0010X\u001a\u00020Y2\u0006\u0010h\u001a\u00020\u001f2\u0006\u0010[\u001a\u00020\u001fH\u0002Jn\u0010i\u001a\u00020\u001a2\u0006\u0010N\u001a\u00020\u000f2\u0006\u0010Z\u001a\u00020\u001f2\u0016\u0010a\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030C\u0012\u0004\u0012\u00020A0@2\u0006\u0010X\u001a\u00020Y2\u0006\u0010h\u001a\u00020\u001f2\u0006\u0010j\u001a\u00020\u001f2\u0006\u0010[\u001a\u00020\u001f2\u0006\u0010k\u001a\u00020\u001f2\f\u0010l\u001a\b\u0012\u0004\u0012\u00020\u000f0g2\u0006\u0010m\u001a\u00020\u001fH\u0002J\f\u0010n\u001a\u00020\u001a*\u00020\u001aH\u0002J<\u0010o\u001a\u00020\u001f2\u0006\u0010<\u001a\u00020\u001a2\f\u0010V\u001a\b\u0012\u0004\u0012\u00020J0\u001b2\u001c\u0010W\u001a\u0018\u0012\b\u0012\u0006\u0012\u0002\b\u00030C\u0012\n\u0012\b\u0012\u0004\u0012\u00020Q0\u001b0@H\u0002J\u0086\u0001\u0010p\u001a\n\u0012\u0004\u0012\u00020>\u0018\u00010\u001b2\u0012\u0010q\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020Q0\u001b0\u001b2\f\u0010V\u001a\b\u0012\u0004\u0012\u00020J0\u001b2\u0010\u0010B\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030C0\u001b2\f\u0010D\u001a\b\u0012\u0004\u0012\u00020\u000f0\u001b2\u0006\u0010<\u001a\u00020\u001a2\u0012\u0010I\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020J0\u00192\u0016\u0010K\u001a\u0012\u0012\u0004\u0012\u00020\u000f\u0012\b\u0012\u0006\u0012\u0002\b\u00030C0\u0019H\u0002J\u0086\u0001\u0010r\u001a\u00020s2\u0006\u0010t\u001a\u00020u2\u000e\u0010v\u001a\n\u0012\u0004\u0012\u00020>\u0018\u00010\u001b2\f\u0010V\u001a\b\u0012\u0004\u0012\u00020J0\u001b2\u0012\u0010w\u001a\u000e\u0012\u0004\u0012\u00020J\u0012\u0004\u0012\u00020x0\u00192\u0016\u0010y\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030C\u0012\u0004\u0012\u00020x0\u00192\u0012\u0010I\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020J0\u00192\u0016\u0010K\u001a\u0012\u0012\u0004\u0012\u00020\u000f\u0012\b\u0012\u0006\u0012\u0002\b\u00030C0\u0019H\u0002JR\u0010z\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020Q0\u001b0\u001b2\u001c\u0010W\u001a\u0018\u0012\b\u0012\u0006\u0012\u0002\b\u00030C\u0012\n\u0012\b\u0012\u0004\u0012\u00020Q0\u001b0@2\u0010\u0010B\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030C0\u001b2\f\u0010D\u001a\b\u0012\u0004\u0012\u00020\u000f0\u001bH\u0002JD\u0010{\u001a\b\u0012\u0004\u0012\u00020\u000f0g2\f\u0010V\u001a\b\u0012\u0004\u0012\u00020J0\u001b2\u0010\u0010B\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030C0\u001b2\f\u0010D\u001a\b\u0012\u0004\u0012\u00020\u000f0\u001b2\u0006\u0010m\u001a\u00020\u001fH\u0002J(\u0010m\u001a\u00020\u001f2\f\u0010V\u001a\b\u0012\u0004\u0012\u00020J0\u001b2\u0010\u0010B\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030C0\u001bH\u0002J\u001e\u0010|\u001a\u00020\u000f2\f\u0010V\u001a\b\u0012\u0004\u0012\u00020J0\u001b2\u0006\u0010j\u001a\u00020\u001fH\u0002JS\u0010}\u001a\u0018\u0012\b\u0012\u0006\u0012\u0002\b\u00030C\u0012\n\u0012\b\u0012\u0004\u0012\u00020Q0\u001b0@2\u001c\u0010W\u001a\u0018\u0012\b\u0012\u0006\u0012\u0002\b\u00030C\u0012\n\u0012\b\u0012\u0004\u0012\u00020Q0\u001b0@2\u0006\u0010<\u001a\u00020\u001a2\b\b\u0002\u0010~\u001a\u00020\u001fH\u0001¢\u0006\u0002\b\u007fJf\u0010\u0080\u0001\u001a\u00020s2\u0006\u0010<\u001a\u00020\u001a2\u0006\u0010P\u001a\u00020Q2\u0006\u0010O\u001a\u00020\u000f2\u0007\u0010\u0081\u0001\u001a\u00020\u000f2\u0006\u0010R\u001a\u00020S2\u0006\u0010~\u001a\u00020\u001f2\u001b\u0010\u0082\u0001\u001a\u0016\u0012\u0005\u0012\u00030\u0083\u0001\u0012\u000b\u0012\t\u0012\u0004\u0012\u00020\u000f0\u0084\u00010\u00192\r\u0010\u0085\u0001\u001a\b\u0012\u0004\u0012\u00020Q0\u0011H\u0002J\u008f\u0001\u0010\u0086\u0001\u001a\u0004\u0018\u00010u2\u0012\u0010q\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020Q0\u001b0\u001b2\f\u0010V\u001a\b\u0012\u0004\u0012\u00020J0\u001b2\u0010\u0010B\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030C0\u001b2\u0007\u0010\u0087\u0001\u001a\u00020\u000f2\f\u0010D\u001a\b\u0012\u0004\u0012\u00020\u000f0\u001b2\u0006\u0010<\u001a\u00020\u001a2\u000e\u0010v\u001a\n\u0012\u0004\u0012\u00020>\u0018\u00010\u001b2\u0016\u0010a\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030C\u0012\u0004\u0012\u00020A0@2\u0007\u0010\u0088\u0001\u001a\u00020\u001fH\u0002J)\u0010\u0089\u0001\u001a\u00020\u001f2\u0007\u0010\u0087\u0001\u001a\u00020\u000f2\f\u0010l\u001a\b\u0012\u0004\u0012\u00020\u000f0g2\u0007\u0010\u008a\u0001\u001a\u00020\u000fH\u0002Ja\u0010\u008b\u0001\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030C\u0012\u0004\u0012\u00020x0\u00192\u0006\u0010t\u001a\u00020u2\u0010\u0010B\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030C0\u001b2\f\u0010D\u001a\b\u0012\u0004\u0012\u00020\u000f0\u001b2\u0016\u0010a\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030C\u0012\u0004\u0012\u00020A0@2\u0006\u0010<\u001a\u00020\u001aH\u0002J!\u0010\u008c\u0001\u001a\u00020\u000f2\u0016\u0010a\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030C\u0012\u0004\u0012\u00020A0@H\u0002J\u008d\u0001\u0010\u008d\u0001\u001a\b\u0012\u0004\u0012\u00020>0\u001b2\u0006\u0010N\u001a\u00020\u000f2\f\u0010V\u001a\b\u0012\u0004\u0012\u00020J0\u001b2\r\u0010\u008e\u0001\u001a\b\u0012\u0004\u0012\u00020Q0\u001b2\u0010\u0010B\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030C0\u001b2\f\u0010D\u001a\b\u0012\u0004\u0012\u00020\u000f0\u001b2\u0014\u0010I\u001a\u0010\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020J\u0018\u00010\u00192\u0018\u0010K\u001a\u0014\u0012\u0004\u0012\u00020\u000f\u0012\b\u0012\u0006\u0012\u0002\b\u00030C\u0018\u00010\u00192\u0007\u0010\u008f\u0001\u001a\u00020\u001fH\u0002JI\u0010\u0090\u0001\u001a\u00020\u000f2\r\u0010\u008e\u0001\u001a\b\u0012\u0004\u0012\u00020Q0\u001b2\u0010\u0010B\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030C0\u001b2\f\u0010D\u001a\b\u0012\u0004\u0012\u00020\u000f0\u001b2\u0007\u0010\u008a\u0001\u001a\u00020\u000f2\u0006\u0010j\u001a\u00020\u001fH\u0002J*\u0010\u0091\u0001\u001a\u00020\u000f2\u0006\u0010O\u001a\u00020\u000f2\u0006\u0010P\u001a\u00020Q2\u0006\u0010j\u001a\u00020\u001f2\u0007\u0010\u0081\u0001\u001a\u00020\u000fH\u0002J\u0019\u0010\u0091\u0001\u001a\u00020\u000f2\u0006\u0010O\u001a\u00020\u000f2\u0006\u0010P\u001a\u00020QH\u0002J\u0018\u0010\u0092\u0001\u001a\u00020\u000f2\r\u0010\u0093\u0001\u001a\b\u0012\u0004\u0012\u00020\u000f0gH\u0002J'\u0010\u0094\u0001\u001a\u00020\u000f2\r\u0010\u0095\u0001\u001a\b\u0012\u0004\u0012\u00020\u000f0g2\r\u0010\u0096\u0001\u001a\b\u0012\u0004\u0012\u00020\u000f0gH\u0002J<\u0010\u0097\u0001\u001a\b\u0012\u0004\u0012\u00020\u000f0g2\r\u0010\u0098\u0001\u001a\b\u0012\u0004\u0012\u00020\u000f0g2\r\u0010\u0099\u0001\u001a\b\u0012\u0004\u0012\u00020\u000f0g2\r\u0010\u009a\u0001\u001a\b\u0012\u0004\u0012\u00020\u000f0gH\u0002JG\u0010\u009b\u0001\u001a\b\u0012\u0004\u0012\u00020\u000f0g2\r\u0010\u009c\u0001\u001a\b\u0012\u0004\u0012\u00020\u000f0g2\u0007\u0010\u009d\u0001\u001a\u00020\u000f2\u0018\u0010\u009e\u0001\u001a\u0013\u0012\f\b\u0001\u0012\b\u0012\u0004\u0012\u00020\u000f0g\u0018\u00010\u009f\u0001H\u0002¢\u0006\u0003\u0010 \u0001J5\u0010¡\u0001\u001a\b\u0012\u0004\u0012\u00020\u000f0g2\r\u0010¢\u0001\u001a\b\u0012\u0004\u0012\u00020\u000f0g2\r\u0010£\u0001\u001a\b\u0012\u0004\u0012\u00020\u000f0g2\u0006\u0010m\u001a\u00020\u001fH\u0002J#\u0010¤\u0001\u001a\u00020\u001f2\u0007\u0010¥\u0001\u001a\u00020\u001f2\t\u0010¦\u0001\u001a\u0004\u0018\u00010\u001fH\u0002¢\u0006\u0003\u0010§\u0001J3\u0010¨\u0001\u001a\u00020\u000f2\u0007\u0010©\u0001\u001a\u00020\u000f2\u0006\u0010O\u001a\u00020\u000f2\u0006\u0010P\u001a\u00020Q2\u0006\u0010j\u001a\u00020\u001f2\u0007\u0010\u0081\u0001\u001a\u00020\u000fH\u0002J&\u0010ª\u0001\u001a\b\u0012\u0004\u0012\u00020Q0\u001b2\r\u0010«\u0001\u001a\b\u0012\u0004\u0012\u00020Q0\u001b2\u0006\u0010O\u001a\u00020\u000fH\u0007J\t\u0010¬\u0001\u001a\u00020sH\u0002J\t\u0010\u00ad\u0001\u001a\u00020sH\u0002J\t\u0010®\u0001\u001a\u00020sH\u0002J\t\u0010¯\u0001\u001a\u00020sH\u0002J\t\u0010°\u0001\u001a\u00020sH\u0002J\t\u0010±\u0001\u001a\u00020sH\u0002J\t\u0010²\u0001\u001a\u00020sH\u0002J\t\u0010³\u0001\u001a\u00020sH\u0002J\t\u0010´\u0001\u001a\u00020sH\u0002J\t\u0010µ\u0001\u001a\u00020sH\u0002J\t\u0010¶\u0001\u001a\u00020sH\u0002J\u0012\u0010·\u0001\u001a\u00020'2\u0007\u0010¸\u0001\u001a\u00020\u000fH\u0007J0\u0010¹\u0001\u001a\u00020s2\u0013\u0010º\u0001\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020Q0\u00192\u0007\u0010»\u0001\u001a\u00020Q2\u0007\u0010¸\u0001\u001a\u00020\u000fH\u0002J5\u0010¼\u0001\u001a\u00020s2\u0013\u0010º\u0001\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020Q0\u00192\u0007\u0010¸\u0001\u001a\u00020\u000f2\f\b\u0002\u0010½\u0001\u001a\u0005\u0018\u00010¾\u0001H\u0002J'\u0010¿\u0001\u001a\u00020s2\u0013\u0010º\u0001\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020Q0\u00192\u0007\u0010¸\u0001\u001a\u00020\u000fH\u0002J\t\u0010À\u0001\u001a\u00020QH\u0002J\t\u0010Á\u0001\u001a\u00020.H\u0002J\u000b\u0010Â\u0001\u001a\u0004\u0018\u00010QH\u0002J\u000b\u0010Ã\u0001\u001a\u0004\u0018\u00010QH\u0002J!\u0010Ä\u0001\u001a\b\u0012\u0004\u0012\u00020\u000f0\u001b2\u0010\u0010B\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030C0\u001bH\u0002J<\u0010Å\u0001\u001a\u0004\u0018\u00010Q2\n\u0010Æ\u0001\u001a\u0005\u0018\u00010Ç\u00012\u0006\u0010O\u001a\u00020\u000f2\u0007\u0010È\u0001\u001a\u00020\u001f2\f\b\u0002\u0010½\u0001\u001a\u0005\u0018\u00010¾\u0001H\u0000¢\u0006\u0003\bÉ\u0001J:\u0010Ê\u0001\u001a\u000b\u0012\u0004\u0012\u00020Q\u0018\u00010\u009f\u00012\n\u0010Æ\u0001\u001a\u0005\u0018\u00010Ç\u00012\u0006\u0010O\u001a\u00020\u000f2\f\b\u0002\u0010½\u0001\u001a\u0005\u0018\u00010¾\u0001H\u0002¢\u0006\u0003\u0010Ë\u0001J*\u0010Ì\u0001\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020Q0\u00110\u001b2\u0013\u0010Í\u0001\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020Q0\u001b0\u001bH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R \u0010\u0018\u001a\u0014\u0012\u0004\u0012\u00020\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00120\u001b0\u0019X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u001fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u001fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u001fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u001fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u001fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u001fX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010&\u001a\u00020'X\u0080.¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\u0014\u0010,\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020.X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u000200X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u00101\u001a\u000202X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u00103\u001a\u000204X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u00105\u001a\u000206X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u00107\u001a\u000208X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u00109\u001a\u00020:X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006Ò\u0001²\u0006\u000b\u0010Ó\u0001\u001a\u00020\u001fX\u008a\u0084\u0002"}, d2 = {"Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;", _UrlKt.FRAGMENT_ENCODE_SET, "context", "Landroid/content/Context;", "cameraMetadata", "Landroidx/camera/camera2/pipe/CameraMetadata;", "encoderProfilesProvider", "Landroidx/camera/core/impl/EncoderProfilesProvider;", "featureCombinationQuery", "Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery;", "<init>", "(Landroid/content/Context;Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/core/impl/EncoderProfilesProvider;Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery;)V", "cameraId", _UrlKt.FRAGMENT_ENCODE_SET, "hardwareLevel", _UrlKt.FRAGMENT_ENCODE_SET, "concurrentSurfaceCombinations", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/core/impl/SurfaceCombination;", "surfaceCombinations", "surfaceCombinationsStreamUseCase", "ultraHighSurfaceCombinations", "previewStabilizationSurfaceCombinations", "highSpeedSurfaceCombinations", "featureSettingsToSupportedCombinationsMap", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;", _UrlKt.FRAGMENT_ENCODE_SET, "surfaceCombinations10Bit", "surfaceCombinationsUltraHdr", "isRawSupported", _UrlKt.FRAGMENT_ENCODE_SET, "isBurstCaptureSupported", "isConcurrentCameraModeSupported", "isStreamUseCaseSupported", "isUltraHighResolutionSensorSupported", "isPreviewStabilizationSupported", "isManualSensorSupported", "surfaceSizeDefinition", "Landroidx/camera/core/impl/SurfaceSizeDefinition;", "getSurfaceSizeDefinition$camera_camera2", "()Landroidx/camera/core/impl/SurfaceSizeDefinition;", "setSurfaceSizeDefinition$camera_camera2", "(Landroidx/camera/core/impl/SurfaceSizeDefinition;)V", "surfaceSizeDefinitionFormats", "streamConfigurationMapCompat", "Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;", "extraSupportedSurfaceCombinationsContainer", "Landroidx/camera/camera2/compat/workaround/ExtraSupportedSurfaceCombinationsContainer;", "displayInfoManager", "Landroidx/camera/camera2/impl/DisplayInfoManager;", "resolutionCorrector", "Landroidx/camera/camera2/compat/workaround/ResolutionCorrector;", "targetAspectRatio", "Landroidx/camera/camera2/compat/workaround/TargetAspectRatio;", "dynamicRangeResolver", "Landroidx/camera/camera2/internal/DynamicRangeResolver;", "highSpeedResolver", "Landroidx/camera/camera2/internal/HighSpeedResolver;", "checkSupported", "featureSettings", "surfaceConfigList", "Landroidx/camera/core/impl/SurfaceConfig;", "dynamicRangesBySurfaceConfig", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/core/DynamicRange;", "newUseCaseConfigs", "Landroidx/camera/core/impl/UseCaseConfig;", "useCasesPriorityOrder", "createFeatureComboSessionConfig", "Landroidx/camera/core/impl/SessionConfig;", "useCasePriorityOrder", "getOrderedSupportedStreamUseCaseSurfaceConfigList", "surfaceConfigIndexAttachedSurfaceInfoMap", "Landroidx/camera/core/impl/AttachedSurfaceInfo;", "surfaceConfigIndexUseCaseConfigMap", "getSurfaceCombinationsByFeatureSettings", "transformSurfaceConfig", "cameraMode", "imageFormat", "size", "Landroid/util/Size;", "streamUseCase", "Landroidx/camera/core/impl/StreamUseCase;", "getSuggestedStreamSpecifications", "Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;", "attachedSurfaces", "newUseCaseConfigsSupportedSizeMap", "videoStabilization", "Landroidx/camera/core/impl/stabilization/VideoStabilization;", "hasVideoCapture", "isFeatureComboInvocation", "findMaxSupportedFrameRate", "resolveSpecsByCheckingMethod", "checkingMethod", "Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;", "filteredNewUseCaseConfigsSupportedSizeMap", "resolvedDynamicRanges", "resolveSpecsBySettings", "getCheckingMethod", "dynamicRanges", _UrlKt.FRAGMENT_ENCODE_SET, "fps", "Landroid/util/Range;", "isUltraHdrOn", "createFeatureSettings", "isHighSpeedOn", "requiresFeatureComboQuery", "targetFpsRange", "isStrictFpsRequired", "validateSelf", "isUseCasesCombinationSupported", "getOrderedSurfaceConfigListForStreamUseCase", "allPossibleSizeArrangements", "populateStreamUseCaseIfSameSavedSizes", _UrlKt.FRAGMENT_ENCODE_SET, "bestSizesAndMaxFps", "Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;", "orderedSurfaceConfigListForStreamUseCase", "attachedSurfaceStreamSpecMap", "Landroidx/camera/core/impl/StreamSpec;", "suggestedStreamSpecMap", "getSupportedOutputSizesList", "getTargetFpsRange", "getMaxSupportedFpsFromAttachedSurfaces", "filterSupportedSizes", "forceUniqueMaxFpsFiltering", "filterSupportedSizes$camera_camera2", "populateReducedSizeListAndUniqueMaxFpsMap", "customMaxFps", "configSizeUniqueMaxFpsMap", "Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;", _UrlKt.FRAGMENT_ENCODE_SET, "reducedSizeList", "findBestSizesAndFps", "existingSurfaceFrameRateCeiling", "findMaxFpsForAllSizes", "isConfigFrameRateAcceptable", "currentConfigFrameRateCeiling", "generateSuggestedStreamSpecMap", "getRequiredMaxBitDepth", "getSurfaceConfigList", "possibleSizeList", "checkViaFeatureComboQuery", "getCurrentConfigFrameRateCeiling", "getMaxFrameRate", "getRangeLength", "range", "getRangeDistance", "firstRange", "secondRange", "compareIntersectingRanges", "targetFps", "storedRange", "newRange", "getClosestSupportedDeviceFrameRate", "targetFrameRate", "maxFps", "availableFpsRanges", _UrlKt.FRAGMENT_ENCODE_SET, "(Landroid/util/Range;I[Landroid/util/Range;)Landroid/util/Range;", "getUpdatedTargetFrameRate", "newTargetFrameRate", "storedTargetFrameRate", "getAndValidateIsStrictFpsRequired", "newIsStrictFpsRequired", "storedIsStrictFpsRequired", "(ZLjava/lang/Boolean;)Z", "getCombinedMaximumFps", "combinedMaxFps", "applyResolutionSelectionOrderRelatedWorkarounds", "sizeList", "refreshPreviewSize", "checkCapabilities", "generateSupportedCombinationList", "generateUltraHighResolutionSupportedCombinationList", "generateConcurrentSupportedCombinationList", "generatePreviewStabilizationSupportedCombinationList", "generateHighSpeedSupportedCombinationList", "generate10BitSupportedCombinationList", "generateUltraHdrSupportedCombinationList", "generateStreamUseCaseSupportedCombinationList", "generateSurfaceSizeDefinition", "getUpdatedSurfaceSizeDefinitionByFormat", "format", "updateS720pOrS1440pSizeByFormat", "sizeMap", "targetSize", "updateMaximumSizeByFormat", "aspectRatio", "Landroid/util/Rational;", "updateUltraMaximumSizeByFormat", "getRecordSize", "getStreamConfigurationMapCompat", "getRecordSizeFromStreamConfigurationMapCompat", "getRecordSizeFromCamcorderProfile", "getUseCasesPriorityOrder", "getMaxOutputSizeByFormat", "map", "Landroid/hardware/camera2/params/StreamConfigurationMap;", "highResolutionIncluded", "getMaxOutputSizeByFormat$camera_camera2", "getOutputSizes", "(Landroid/hardware/camera2/params/StreamConfigurationMap;ILandroid/util/Rational;)[Landroid/util/Size;", "getAllPossibleSizeArrangements", "supportedOutputSizesList", "FeatureSettings", "BestSizesAndMaxFpsForConfigs", "CheckingMethod", "Companion", "camera-camera2", "isSupported"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSupportedSurfaceCombination.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SupportedSurfaceCombination.kt\nandroidx/camera/camera2/adapter/SupportedSurfaceCombination\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Camera2Logger.kt\nandroidx/camera/camera2/impl/Camera2Logger\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 6 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,2417:1\n1761#2,3:2418\n1869#2,2:2421\n1878#2,3:2423\n1761#2,3:2454\n1878#2,3:2457\n85#3,4:2426\n85#3,4:2430\n85#3,4:2434\n95#3,4:2438\n85#3,4:2442\n85#3,4:2446\n85#3,4:2450\n119#3,4:2460\n1#4:2464\n3829#5:2465\n4344#5,2:2466\n37#6:2468\n36#6,3:2469\n*S KotlinDebug\n*F\n+ 1 SupportedSurfaceCombination.kt\nandroidx/camera/camera2/adapter/SupportedSurfaceCombination\n*L\n182#1:2418,3\n198#1:2421,2\n214#1:2423,3\n972#1:2454,3\n1265#1:2457,3\n423#1:2426,4\n447#1:2430,4\n527#1:2434,4\n580#1:2438,4\n617#1:2442,4\n678#1:2446,4\n706#1:2450,4\n1582#1:2460,4\n2302#1:2465\n2302#1:2466,2\n2303#1:2468\n2303#1:2469,3\n*E\n"})
public final class SupportedSurfaceCombination {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String cameraId;
    private final CameraMetadata cameraMetadata;
    private final List<SurfaceCombination> concurrentSurfaceCombinations;
    private final DisplayInfoManager displayInfoManager;
    private final DynamicRangeResolver dynamicRangeResolver;
    private final EncoderProfilesProvider encoderProfilesProvider;
    private final ExtraSupportedSurfaceCombinationsContainer extraSupportedSurfaceCombinationsContainer;
    private final FeatureCombinationQuery featureCombinationQuery;
    private final Map<FeatureSettings, List<SurfaceCombination>> featureSettingsToSupportedCombinationsMap;
    private final int hardwareLevel;
    private final HighSpeedResolver highSpeedResolver;
    private final List<SurfaceCombination> highSpeedSurfaceCombinations;
    private boolean isBurstCaptureSupported;
    private final boolean isConcurrentCameraModeSupported;
    private boolean isManualSensorSupported;
    private boolean isPreviewStabilizationSupported;
    private boolean isRawSupported;
    private final boolean isStreamUseCaseSupported;
    private boolean isUltraHighResolutionSensorSupported;
    private final List<SurfaceCombination> previewStabilizationSurfaceCombinations;
    private final ResolutionCorrector resolutionCorrector;
    private final StreamConfigurationMapCompat streamConfigurationMapCompat;
    private final List<SurfaceCombination> surfaceCombinations;
    private final List<SurfaceCombination> surfaceCombinations10Bit;
    private final List<SurfaceCombination> surfaceCombinationsStreamUseCase;
    private final List<SurfaceCombination> surfaceCombinationsUltraHdr;
    public SurfaceSizeDefinition surfaceSizeDefinition;
    private final List<Integer> surfaceSizeDefinitionFormats;
    private final TargetAspectRatio targetAspectRatio;
    private final List<SurfaceCombination> ultraHighSurfaceCombinations;

    @Metadata(m862k = 3, mv = {2, 1, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[CheckingMethod.values().length];
            try {
                iArr[CheckingMethod.WITHOUT_FEATURE_COMBO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CheckingMethod.WITH_FEATURE_COMBO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CheckingMethod.WITHOUT_FEATURE_COMBO_FIRST_AND_THEN_WITH_IT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public SupportedSurfaceCombination(Context context, CameraMetadata cameraMetadata, EncoderProfilesProvider encoderProfilesProvider, FeatureCombinationQuery featureCombinationQuery) {
        this.cameraMetadata = cameraMetadata;
        this.encoderProfilesProvider = encoderProfilesProvider;
        this.featureCombinationQuery = featureCombinationQuery;
        this.cameraId = cameraMetadata.getCamera();
        Integer num = (Integer) cameraMetadata.get(CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL);
        this.hardwareLevel = num != null ? num.intValue() : 2;
        this.concurrentSurfaceCombinations = new ArrayList();
        this.surfaceCombinations = new ArrayList();
        this.surfaceCombinationsStreamUseCase = new ArrayList();
        this.ultraHighSurfaceCombinations = new ArrayList();
        this.previewStabilizationSurfaceCombinations = new ArrayList();
        this.highSpeedSurfaceCombinations = new ArrayList();
        this.featureSettingsToSupportedCombinationsMap = new LinkedHashMap();
        this.surfaceCombinations10Bit = new ArrayList();
        this.surfaceCombinationsUltraHdr = new ArrayList();
        this.isPreviewStabilizationSupported = CameraMetadata.INSTANCE.getSupportsPreviewStabilization(cameraMetadata);
        this.surfaceSizeDefinitionFormats = new ArrayList();
        this.streamConfigurationMapCompat = getStreamConfigurationMapCompat();
        this.extraSupportedSurfaceCombinationsContainer = new ExtraSupportedSurfaceCombinationsContainer();
        this.displayInfoManager = DisplayInfoManager.INSTANCE.getInstance(context);
        this.resolutionCorrector = new ResolutionCorrector();
        this.targetAspectRatio = new TargetAspectRatio();
        DynamicRangeResolver dynamicRangeResolver = new DynamicRangeResolver(cameraMetadata);
        this.dynamicRangeResolver = dynamicRangeResolver;
        this.highSpeedResolver = new HighSpeedResolver(cameraMetadata);
        checkCapabilities();
        generateSupportedCombinationList();
        if (this.isUltraHighResolutionSensorSupported) {
            generateUltraHighResolutionSupportedCombinationList();
        }
        boolean zHasSystemFeature = context.getPackageManager().hasSystemFeature("android.hardware.camera.concurrent");
        this.isConcurrentCameraModeSupported = zHasSystemFeature;
        if (zHasSystemFeature) {
            generateConcurrentSupportedCombinationList();
        }
        if (dynamicRangeResolver.getIs10BitSupported()) {
            generate10BitSupportedCombinationList();
        }
        if (this.isPreviewStabilizationSupported) {
            generatePreviewStabilizationSupportedCombinationList();
        }
        boolean zIsStreamUseCaseSupported = StreamUseCaseUtil.INSTANCE.isStreamUseCaseSupported(cameraMetadata);
        this.isStreamUseCaseSupported = zIsStreamUseCaseSupported;
        if (zIsStreamUseCaseSupported) {
            generateStreamUseCaseSupportedCombinationList();
        }
        generateSurfaceSizeDefinition();
    }

    public final SurfaceSizeDefinition getSurfaceSizeDefinition$camera_camera2() {
        SurfaceSizeDefinition surfaceSizeDefinition = this.surfaceSizeDefinition;
        if (surfaceSizeDefinition != null) {
            return surfaceSizeDefinition;
        }
        return null;
    }

    public final void setSurfaceSizeDefinition$camera_camera2(SurfaceSizeDefinition surfaceSizeDefinition) {
        this.surfaceSizeDefinition = surfaceSizeDefinition;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ boolean checkSupported$default(SupportedSurfaceCombination supportedSurfaceCombination, FeatureSettings featureSettings, List list, Map map, List list2, List list3, int i, Object obj) {
        if ((i & 4) != 0) {
            map = MapsKt.emptyMap();
        }
        Map map2 = map;
        if ((i & 8) != 0) {
            list2 = CollectionsKt.emptyList();
        }
        List list4 = list2;
        if ((i & 16) != 0) {
            list3 = CollectionsKt.emptyList();
        }
        return supportedSurfaceCombination.checkSupported(featureSettings, list, map2, list4, list3);
    }

    public final boolean checkSupported(FeatureSettings featureSettings, List<SurfaceConfig> surfaceConfigList, Map<SurfaceConfig, DynamicRange> dynamicRangesBySurfaceConfig, List<? extends UseCaseConfig<?>> newUseCaseConfigs, List<Integer> useCasesPriorityOrder) {
        List<SurfaceCombination> surfaceCombinationsByFeatureSettings = getSurfaceCombinationsByFeatureSettings(featureSettings);
        boolean z = false;
        if (!(surfaceCombinationsByFeatureSettings instanceof Collection) || !surfaceCombinationsByFeatureSettings.isEmpty()) {
            Iterator<T> it = surfaceCombinationsByFeatureSettings.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                if (((SurfaceCombination) it.next()).getOrderedSupportedSurfaceConfigList(surfaceConfigList) != null) {
                    z = true;
                    break;
                }
            }
        }
        if (!z || !featureSettings.getRequiresFeatureComboQuery()) {
            return z;
        }
        SessionConfig sessionConfigCreateFeatureComboSessionConfig = createFeatureComboSessionConfig(featureSettings, surfaceConfigList, dynamicRangesBySurfaceConfig, newUseCaseConfigs, useCasesPriorityOrder);
        boolean zIsSupported = this.featureCombinationQuery.isSupported(sessionConfigCreateFeatureComboSessionConfig);
        Iterator<T> it2 = sessionConfigCreateFeatureComboSessionConfig.getSurfaces().iterator();
        while (it2.hasNext()) {
            ((DeferrableSurface) it2.next()).close();
        }
        return zIsSupported;
    }

    private final SessionConfig createFeatureComboSessionConfig(FeatureSettings featureSettings, List<SurfaceConfig> surfaceConfigList, Map<SurfaceConfig, DynamicRange> dynamicRangesBySurfaceConfig, List<? extends UseCaseConfig<?>> newUseCaseConfigs, List<Integer> useCasePriorityOrder) {
        SessionConfig.ValidatingBuilder validatingBuilder = new SessionConfig.ValidatingBuilder();
        int i = 0;
        for (Object obj : surfaceConfigList) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            SurfaceConfig surfaceConfig = (SurfaceConfig) obj;
            Size resolution = surfaceConfig.getResolution(getUpdatedSurfaceSizeDefinitionByFormat(surfaceConfig.getImageFormat()));
            UseCaseConfig<?> useCaseConfig = newUseCaseConfigs.get(useCasePriorityOrder.get(i).intValue());
            FeatureCombinationQuery.Companion companion = FeatureCombinationQuery.INSTANCE;
            DynamicRange dynamicRange = dynamicRangesBySurfaceConfig.get(surfaceConfig);
            if (dynamicRange == null) {
                f$$ExternalSyntheticBUOutline1.m212m("Required value was null.");
                return null;
            }
            SessionConfig.Builder builderCreateSessionConfigBuilder = companion.createSessionConfigBuilder(useCaseConfig, resolution, dynamicRange);
            Range<Integer> targetFpsRange = featureSettings.getTargetFpsRange();
            Range<Integer> range = Intrinsics.areEqual(targetFpsRange, StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED) ? null : targetFpsRange;
            if (range == null) {
                range = FpsRangeFeature.DEFAULT_FPS_RANGE;
            }
            builderCreateSessionConfigBuilder.setExpectedFrameRateRange(range);
            if (featureSettings.getVideoStabilization() == VideoStabilization.PREVIEW) {
                builderCreateSessionConfigBuilder.setPreviewStabilization(2);
            } else if (featureSettings.getVideoStabilization() == VideoStabilization.ON) {
                builderCreateSessionConfigBuilder.setVideoStabilization(2);
            }
            validatingBuilder.add(builderCreateSessionConfigBuilder.build());
            Preconditions.checkState(validatingBuilder.isValid(), "Cannot create a combined SessionConfig for feature combo after adding " + useCaseConfig + " with " + surfaceConfig + " due to [" + validatingBuilder.getInvalidReason() + "]; surfaceConfigList = " + surfaceConfigList + ", featureSettings = " + featureSettings + ", newUseCaseConfigs = " + newUseCaseConfigs);
            i = i2;
        }
        return validatingBuilder.build();
    }

    private final List<SurfaceConfig> getOrderedSupportedStreamUseCaseSurfaceConfigList(FeatureSettings featureSettings, List<SurfaceConfig> surfaceConfigList, Map<Integer, AttachedSurfaceInfo> surfaceConfigIndexAttachedSurfaceInfoMap, Map<Integer, UseCaseConfig<?>> surfaceConfigIndexUseCaseConfigMap) {
        if (!StreamUseCaseUtil.INSTANCE.shouldUseStreamUseCase(featureSettings)) {
            return null;
        }
        Iterator<SurfaceCombination> it = this.surfaceCombinationsStreamUseCase.iterator();
        while (it.hasNext()) {
            final List<SurfaceConfig> orderedSupportedSurfaceConfigList = it.next().getOrderedSupportedSurfaceConfigList(surfaceConfigList);
            if (orderedSupportedSurfaceConfigList != null) {
                boolean zAreCaptureTypesEligible = StreamUseCaseUtil.INSTANCE.areCaptureTypesEligible(surfaceConfigIndexAttachedSurfaceInfoMap, surfaceConfigIndexUseCaseConfigMap, orderedSupportedSurfaceConfigList);
                Lazy lazy = LazyKt.lazy(new Function0() { // from class: androidx.camera.camera2.adapter.SupportedSurfaceCombination$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Boolean.valueOf(StreamUseCaseUtil.INSTANCE.areStreamUseCasesAvailableForSurfaceConfigs(this.f$0.cameraMetadata, orderedSupportedSurfaceConfigList));
                    }
                });
                if (zAreCaptureTypesEligible && ((Boolean) lazy.getValue()).booleanValue()) {
                    return orderedSupportedSurfaceConfigList;
                }
            }
        }
        return null;
    }

    private final List<SurfaceCombination> getSurfaceCombinationsByFeatureSettings(FeatureSettings featureSettings) {
        List<SurfaceCombination> list;
        if (this.featureSettingsToSupportedCombinationsMap.containsKey(featureSettings)) {
            return this.featureSettingsToSupportedCombinationsMap.get(featureSettings);
        }
        List<SurfaceCombination> arrayList = new ArrayList<>();
        if (featureSettings.getRequiresFeatureComboQuery()) {
            arrayList.addAll(GuaranteedConfigurationsUtil.INSTANCE.getQueryableFcqCombinations$camera_camera2(this.cameraMetadata, featureSettings.getVideoStabilization()));
        } else if (featureSettings.getIsUltraHdrOn()) {
            if (this.surfaceCombinationsUltraHdr.isEmpty()) {
                generateUltraHdrSupportedCombinationList();
            }
            if (featureSettings.getCameraMode() == 0) {
                arrayList.addAll(this.surfaceCombinationsUltraHdr);
            }
        } else if (featureSettings.getIsHighSpeedOn()) {
            if (this.highSpeedSurfaceCombinations.isEmpty()) {
                generateHighSpeedSupportedCombinationList();
            }
            arrayList.addAll(this.highSpeedSurfaceCombinations);
        } else if (featureSettings.getRequiredMaxBitDepth() == 8) {
            int cameraMode = featureSettings.getCameraMode();
            if (cameraMode == 1) {
                arrayList = this.concurrentSurfaceCombinations;
            } else if (cameraMode == 2) {
                arrayList.addAll(this.ultraHighSurfaceCombinations);
                arrayList.addAll(this.surfaceCombinations);
            } else {
                if (featureSettings.getVideoStabilization() == VideoStabilization.PREVIEW) {
                    list = this.previewStabilizationSurfaceCombinations;
                } else {
                    list = this.surfaceCombinations;
                }
                arrayList.addAll(list);
            }
        } else if (featureSettings.getRequiredMaxBitDepth() == 10 && featureSettings.getCameraMode() == 0) {
            arrayList.addAll(this.surfaceCombinations10Bit);
        }
        this.featureSettingsToSupportedCombinationsMap.put(featureSettings, arrayList);
        return arrayList;
    }

    public final SurfaceConfig transformSurfaceConfig(int cameraMode, int imageFormat, Size size, StreamUseCase streamUseCase) {
        return SurfaceConfig.INSTANCE.transformSurfaceConfig(imageFormat, size, getUpdatedSurfaceSizeDefinitionByFormat(imageFormat), cameraMode, SurfaceConfig.ConfigSource.CAPTURE_SESSION_TABLES, streamUseCase);
    }

    public final SurfaceStreamSpecQueryResult getSuggestedStreamSpecifications(int cameraMode, List<? extends AttachedSurfaceInfo> attachedSurfaces, Map<UseCaseConfig<?>, ? extends List<Size>> newUseCaseConfigsSupportedSizeMap, VideoStabilization videoStabilization, boolean hasVideoCapture, boolean isFeatureComboInvocation, boolean findMaxSupportedFrameRate) {
        Pair pair;
        refreshPreviewSize();
        boolean zIsHighSpeedOn = HighSpeedResolver.INSTANCE.isHighSpeedOn(attachedSurfaces, newUseCaseConfigsSupportedSizeMap.keySet());
        Map<UseCaseConfig<?>, ? extends List<Size>> mapFilterCommonSupportedSizes = zIsHighSpeedOn ? this.highSpeedResolver.filterCommonSupportedSizes(newUseCaseConfigsSupportedSizeMap) : newUseCaseConfigsSupportedSizeMap;
        List<? extends UseCaseConfig<?>> list = CollectionsKt.toList(mapFilterCommonSupportedSizes.keySet());
        List<Integer> useCasesPriorityOrder = getUseCasesPriorityOrder(list);
        Map<UseCaseConfig<?>, DynamicRange> mapResolveAndValidateDynamicRanges = this.dynamicRangeResolver.resolveAndValidateDynamicRanges(attachedSurfaces, list, useCasesPriorityOrder);
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "resolvedDynamicRanges = " + mapResolveAndValidateDynamicRanges);
        }
        boolean zIsUltraHdrOn = INSTANCE.isUltraHdrOn(attachedSurfaces, mapFilterCommonSupportedSizes);
        if (findMaxSupportedFrameRate) {
            pair = TuplesKt.to(Boolean.FALSE, StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED);
        } else {
            boolean zIsStrictFpsRequired = isStrictFpsRequired(attachedSurfaces, list);
            pair = TuplesKt.to(Boolean.valueOf(zIsStrictFpsRequired), getTargetFpsRange(attachedSurfaces, list, useCasesPriorityOrder, zIsStrictFpsRequired));
        }
        boolean zBooleanValue = ((Boolean) pair.component1()).booleanValue();
        Range<Integer> range = (Range) pair.component2();
        boolean z = videoStabilization == VideoStabilization.PREVIEW;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "getSuggestedStreamSpecifications: isPreviewStabilizationSupported = " + this.isPreviewStabilizationSupported + ", isFeatureComboInvocation = " + isFeatureComboInvocation);
        }
        if (!z || this.isPreviewStabilizationSupported || !isFeatureComboInvocation) {
            return resolveSpecsByCheckingMethod(getCheckingMethod(mapResolveAndValidateDynamicRanges.values(), range, videoStabilization, zIsUltraHdrOn, isFeatureComboInvocation), createFeatureSettings(cameraMode, hasVideoCapture, mapResolveAndValidateDynamicRanges, videoStabilization, zIsUltraHdrOn, zIsHighSpeedOn, isFeatureComboInvocation, false, range, zBooleanValue), attachedSurfaces, mapFilterCommonSupportedSizes, list, useCasesPriorityOrder, mapResolveAndValidateDynamicRanges, findMaxSupportedFrameRate);
        }
        f$$ExternalSyntheticBUOutline1.m212m("Preview stabilization is not supported by the camera.");
        return null;
    }

    private final SurfaceStreamSpecQueryResult resolveSpecsByCheckingMethod(CheckingMethod checkingMethod, FeatureSettings featureSettings, List<? extends AttachedSurfaceInfo> attachedSurfaces, Map<UseCaseConfig<?>, ? extends List<Size>> filteredNewUseCaseConfigsSupportedSizeMap, List<? extends UseCaseConfig<?>> newUseCaseConfigs, List<Integer> useCasesPriorityOrder, Map<UseCaseConfig<?>, DynamicRange> resolvedDynamicRanges, boolean findMaxSupportedFrameRate) {
        CheckingMethod checkingMethod2;
        Range<Integer> targetFpsRange;
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            String str = Camera2Logger.TRUNCATED_TAG;
            StringBuilder sb = new StringBuilder("resolveSpecsByCheckingMethod: checkingMethod = ");
            checkingMethod2 = checkingMethod;
            sb.append(checkingMethod2);
            Log.d(str, sb.toString());
        } else {
            checkingMethod2 = checkingMethod;
        }
        int i = WhenMappings.$EnumSwitchMapping$0[checkingMethod2.ordinal()];
        if (i == 1) {
            return resolveSpecsBySettings(validateSelf(FeatureSettings.copy$default(featureSettings, 0, 0, false, null, false, false, false, false, null, false, 895, null)), attachedSurfaces, filteredNewUseCaseConfigsSupportedSizeMap, newUseCaseConfigs, useCasesPriorityOrder, resolvedDynamicRanges, findMaxSupportedFrameRate);
        }
        if (i == 2) {
            if (featureSettings.getIsFeatureComboInvocation() && featureSettings.getTargetFpsRange() == StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED && featureSettings.getRequiresFeatureComboQuery()) {
                targetFpsRange = FpsRangeFeature.DEFAULT_FPS_RANGE;
            } else {
                targetFpsRange = featureSettings.getTargetFpsRange();
            }
            return resolveSpecsBySettings(validateSelf(FeatureSettings.copy$default(featureSettings, 0, 0, false, null, false, false, false, true, targetFpsRange, false, 639, null)), attachedSurfaces, filteredNewUseCaseConfigsSupportedSizeMap, newUseCaseConfigs, useCasesPriorityOrder, resolvedDynamicRanges, findMaxSupportedFrameRate);
        }
        if (i != 3) {
            LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0.m861m();
            return null;
        }
        try {
            return resolveSpecsBySettings(validateSelf(FeatureSettings.copy$default(featureSettings, 0, 0, false, null, false, false, false, false, null, false, 895, null)), attachedSurfaces, filteredNewUseCaseConfigsSupportedSizeMap, newUseCaseConfigs, useCasesPriorityOrder, resolvedDynamicRanges, findMaxSupportedFrameRate);
        } catch (IllegalArgumentException e) {
            Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "Failed to find a supported combination without feature combo, trying again with feature combo", e);
            }
            return resolveSpecsBySettings(validateSelf(FeatureSettings.copy$default(featureSettings, 0, 0, false, null, false, false, false, true, null, false, 895, null)), attachedSurfaces, filteredNewUseCaseConfigsSupportedSizeMap, newUseCaseConfigs, useCasesPriorityOrder, resolvedDynamicRanges, findMaxSupportedFrameRate);
        }
    }

    private final SurfaceStreamSpecQueryResult resolveSpecsBySettings(FeatureSettings featureSettings, List<? extends AttachedSurfaceInfo> attachedSurfaces, Map<UseCaseConfig<?>, ? extends List<Size>> filteredNewUseCaseConfigsSupportedSizeMap, List<? extends UseCaseConfig<?>> newUseCaseConfigs, List<Integer> useCasesPriorityOrder, Map<UseCaseConfig<?>, DynamicRange> resolvedDynamicRanges, boolean findMaxSupportedFrameRate) {
        LinkedHashMap linkedHashMap;
        LinkedHashMap linkedHashMap2;
        List<SurfaceConfig> orderedSurfaceConfigListForStreamUseCase;
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "resolveSpecsBySettings: featureSettings = " + featureSettings);
        }
        if (!featureSettings.getIsFeatureComboInvocation() && !isUseCasesCombinationSupported(featureSettings, attachedSurfaces, filteredNewUseCaseConfigsSupportedSizeMap)) {
            throw new IllegalArgumentException(("No supported surface combination is found for camera device - Id : " + this.cameraId + ". May be attempting to bind too many use cases. Existing surfaces: " + attachedSurfaces + ". New configs: " + newUseCaseConfigs + ". GroupableFeature settings: " + featureSettings + '.').toString());
        }
        List<List<Size>> supportedOutputSizesList = getSupportedOutputSizesList(filterSupportedSizes$camera_camera2(filteredNewUseCaseConfigsSupportedSizeMap, featureSettings, findMaxSupportedFrameRate), newUseCaseConfigs, useCasesPriorityOrder);
        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
        LinkedHashMap linkedHashMap4 = new LinkedHashMap();
        List<List<Size>> sizeArrangements = featureSettings.getIsHighSpeedOn() ? this.highSpeedResolver.getSizeArrangements(supportedOutputSizesList) : getAllPossibleSizeArrangements(supportedOutputSizesList);
        boolean zContainsZslUseCase = StreamUseCaseUtil.INSTANCE.containsZslUseCase(attachedSurfaces, newUseCaseConfigs);
        if (!this.isStreamUseCaseSupported || zContainsZslUseCase) {
            linkedHashMap = linkedHashMap3;
            linkedHashMap2 = linkedHashMap4;
            orderedSurfaceConfigListForStreamUseCase = null;
        } else {
            orderedSurfaceConfigListForStreamUseCase = getOrderedSurfaceConfigListForStreamUseCase(sizeArrangements, attachedSurfaces, newUseCaseConfigs, useCasesPriorityOrder, featureSettings, linkedHashMap3, linkedHashMap4);
            linkedHashMap = linkedHashMap3;
            linkedHashMap2 = linkedHashMap4;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "orderedSurfaceConfigListForStreamUseCase = " + orderedSurfaceConfigListForStreamUseCase);
            }
        }
        List<SurfaceConfig> list = orderedSurfaceConfigListForStreamUseCase;
        BestSizesAndMaxFpsForConfigs bestSizesAndMaxFpsForConfigsFindBestSizesAndFps = findBestSizesAndFps(sizeArrangements, attachedSurfaces, newUseCaseConfigs, getMaxSupportedFpsFromAttachedSurfaces(attachedSurfaces, featureSettings.getIsHighSpeedOn()), useCasesPriorityOrder, featureSettings, list, resolvedDynamicRanges, findMaxSupportedFrameRate);
        if (bestSizesAndMaxFpsForConfigsFindBestSizesAndFps != null) {
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "resolveSpecsBySettings: bestSizesAndFps = " + bestSizesAndMaxFpsForConfigsFindBestSizesAndFps);
            }
            Map<UseCaseConfig<?>, StreamSpec> mapGenerateSuggestedStreamSpecMap = generateSuggestedStreamSpecMap(bestSizesAndMaxFpsForConfigsFindBestSizesAndFps, newUseCaseConfigs, useCasesPriorityOrder, resolvedDynamicRanges, featureSettings);
            LinkedHashMap linkedHashMap5 = new LinkedHashMap();
            populateStreamUseCaseIfSameSavedSizes(bestSizesAndMaxFpsForConfigsFindBestSizesAndFps, list, attachedSurfaces, linkedHashMap5, mapGenerateSuggestedStreamSpecMap, linkedHashMap, linkedHashMap2);
            return new SurfaceStreamSpecQueryResult(mapGenerateSuggestedStreamSpecMap, linkedHashMap5, bestSizesAndMaxFpsForConfigsFindBestSizesAndFps.getMaxFpsForAllSizes());
        }
        throw new IllegalArgumentException(("No supported surface combination is found for camera device - Id : " + this.cameraId + " and Hardware level: " + this.hardwareLevel + ". May be the specified resolution is too large and not supported. Existing surfaces: " + attachedSurfaces + ". New configs: " + newUseCaseConfigs + '.').toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0028  */
    /* JADX WARN: Type inference failed for: r0v2, types: [boolean, int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final CheckingMethod getCheckingMethod(Collection<DynamicRange> dynamicRanges, Range<Integer> fps, VideoStabilization videoStabilization, boolean isUltraHdrOn, boolean isFeatureComboInvocation) {
        int i;
        if (!isFeatureComboInvocation) {
            return CheckingMethod.WITHOUT_FEATURE_COMBO;
        }
        ?? Contains = dynamicRanges.contains(DynamicRange.HLG_10_BIT);
        int i2 = Contains;
        if (fps != null) {
            Integer num = (Integer) fps.getUpper();
            i2 = Contains;
            if (num != null) {
                i2 = Contains;
                if (num.intValue() == 60) {
                    i2 = Contains + 1;
                }
            }
        }
        if (videoStabilization != VideoStabilization.ON) {
            i = i2;
            if (videoStabilization == VideoStabilization.PREVIEW) {
                i = i2 + 1;
            }
        }
        if (isUltraHdrOn) {
            i++;
        }
        if (i > 1) {
            return CheckingMethod.WITH_FEATURE_COMBO;
        }
        if (i == 1) {
            return CheckingMethod.WITHOUT_FEATURE_COMBO_FIRST_AND_THEN_WITH_IT;
        }
        return CheckingMethod.WITHOUT_FEATURE_COMBO;
    }

    private final FeatureSettings createFeatureSettings(int cameraMode, boolean hasVideoCapture, Map<UseCaseConfig<?>, DynamicRange> resolvedDynamicRanges, VideoStabilization videoStabilization, boolean isUltraHdrOn, boolean isHighSpeedOn, boolean isFeatureComboInvocation, boolean requiresFeatureComboQuery, Range<Integer> targetFpsRange, boolean isStrictFpsRequired) {
        return validateSelf(new FeatureSettings(cameraMode, getRequiredMaxBitDepth(resolvedDynamicRanges), hasVideoCapture, videoStabilization, isUltraHdrOn, isHighSpeedOn, isFeatureComboInvocation, requiresFeatureComboQuery, targetFpsRange, isStrictFpsRequired));
    }

    private final FeatureSettings validateSelf(FeatureSettings featureSettings) {
        if (featureSettings.getCameraMode() != 0 && featureSettings.getIsUltraHdrOn()) {
            SavedStateHandleSupport$$ExternalSyntheticBUOutline0.m154m("Camera device Id is ", this.cameraId, ". Ultra HDR is not currently supported in ", CameraMode.toLabelString(featureSettings.getCameraMode()), " camera mode.");
            return null;
        }
        if (featureSettings.getCameraMode() != 0 && featureSettings.getRequiredMaxBitDepth() == 10) {
            SavedStateHandleSupport$$ExternalSyntheticBUOutline0.m154m("Camera device Id is ", this.cameraId, ". 10 bit dynamic range is not currently supported in ", CameraMode.toLabelString(featureSettings.getCameraMode()), " camera mode.");
            return null;
        }
        if (featureSettings.getCameraMode() != 0 && featureSettings.getIsFeatureComboInvocation()) {
            SavedStateHandleSupport$$ExternalSyntheticBUOutline0.m154m("Camera device Id is ", this.cameraId, ". feature combination is not currently supported in ", CameraMode.toLabelString(featureSettings.getCameraMode()), " camera mode.");
            return null;
        }
        if (featureSettings.getIsHighSpeedOn() && featureSettings.getIsFeatureComboInvocation()) {
            f$$ExternalSyntheticBUOutline1.m212m("High-speed session is not supported with feature combination");
            return null;
        }
        if (!featureSettings.getIsHighSpeedOn() || this.highSpeedResolver.isHighSpeedSupported()) {
            return featureSettings;
        }
        f$$ExternalSyntheticBUOutline1.m212m("High-speed session is not supported on this device.");
        return null;
    }

    private final boolean isUseCasesCombinationSupported(FeatureSettings featureSettings, List<? extends AttachedSurfaceInfo> attachedSurfaces, Map<UseCaseConfig<?>, ? extends List<Size>> newUseCaseConfigsSupportedSizeMap) {
        ArrayList arrayList = new ArrayList();
        Iterator<? extends AttachedSurfaceInfo> it = attachedSurfaces.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getSurfaceConfig());
        }
        CompareSizesByArea compareSizesByArea = new CompareSizesByArea();
        for (UseCaseConfig<?> useCaseConfig : newUseCaseConfigsSupportedSizeMap.keySet()) {
            List<Size> list = newUseCaseConfigsSupportedSizeMap.get(useCaseConfig);
            if (list == null || list.isEmpty()) {
                HttpUrl$Builder$$ExternalSyntheticBUOutline0.m900m("No available output size is found for ", useCaseConfig, 46);
                return false;
            }
            Size size = (Size) Collections.min(list, compareSizesByArea);
            int inputFormat = useCaseConfig.getInputFormat();
            arrayList.add(SurfaceConfig.INSTANCE.transformSurfaceConfig(inputFormat, size, getUpdatedSurfaceSizeDefinitionByFormat(inputFormat), featureSettings.getCameraMode(), SurfaceConfig.ConfigSource.CAPTURE_SESSION_TABLES, useCaseConfig.getStreamUseCase()));
        }
        return checkSupported$default(this, featureSettings, arrayList, null, null, null, 28, null);
    }

    private final List<SurfaceConfig> getOrderedSurfaceConfigListForStreamUseCase(List<? extends List<Size>> allPossibleSizeArrangements, List<? extends AttachedSurfaceInfo> attachedSurfaces, List<? extends UseCaseConfig<?>> newUseCaseConfigs, List<Integer> useCasesPriorityOrder, FeatureSettings featureSettings, Map<Integer, AttachedSurfaceInfo> surfaceConfigIndexAttachedSurfaceInfoMap, Map<Integer, UseCaseConfig<?>> surfaceConfigIndexUseCaseConfigMap) {
        Iterator<? extends List<Size>> it = allPossibleSizeArrangements.iterator();
        List<SurfaceConfig> orderedSupportedStreamUseCaseSurfaceConfigList = null;
        while (it.hasNext()) {
            orderedSupportedStreamUseCaseSurfaceConfigList = getOrderedSupportedStreamUseCaseSurfaceConfigList(featureSettings, getSurfaceConfigList(featureSettings.getCameraMode(), attachedSurfaces, it.next(), newUseCaseConfigs, useCasesPriorityOrder, surfaceConfigIndexAttachedSurfaceInfoMap, surfaceConfigIndexUseCaseConfigMap, false), surfaceConfigIndexAttachedSurfaceInfoMap, surfaceConfigIndexUseCaseConfigMap);
            if (orderedSupportedStreamUseCaseSurfaceConfigList != null) {
                return orderedSupportedStreamUseCaseSurfaceConfigList;
            }
            surfaceConfigIndexAttachedSurfaceInfoMap.clear();
            surfaceConfigIndexUseCaseConfigMap.clear();
        }
        return orderedSupportedStreamUseCaseSurfaceConfigList;
    }

    private final void populateStreamUseCaseIfSameSavedSizes(BestSizesAndMaxFpsForConfigs bestSizesAndMaxFps, List<SurfaceConfig> orderedSurfaceConfigListForStreamUseCase, List<? extends AttachedSurfaceInfo> attachedSurfaces, Map<AttachedSurfaceInfo, StreamSpec> attachedSurfaceStreamSpecMap, Map<UseCaseConfig<?>, StreamSpec> suggestedStreamSpecMap, Map<Integer, AttachedSurfaceInfo> surfaceConfigIndexAttachedSurfaceInfoMap, Map<Integer, UseCaseConfig<?>> surfaceConfigIndexUseCaseConfigMap) {
        if (orderedSurfaceConfigListForStreamUseCase != null && bestSizesAndMaxFps.getMaxFpsForBestSizes() == bestSizesAndMaxFps.getMaxFpsForStreamUseCase() && bestSizesAndMaxFps.getBestSizes().size() == bestSizesAndMaxFps.getBestSizesForStreamUseCase().size()) {
            List<Pair> listZip = CollectionsKt.zip(bestSizesAndMaxFps.getBestSizes(), bestSizesAndMaxFps.getBestSizesForStreamUseCase());
            if (!(listZip instanceof Collection) || !listZip.isEmpty()) {
                for (Pair pair : listZip) {
                    if (!Intrinsics.areEqual(pair.getFirst(), pair.getSecond())) {
                        return;
                    }
                }
            }
            StreamUseCaseUtil streamUseCaseUtil = StreamUseCaseUtil.INSTANCE;
            if (streamUseCaseUtil.populateStreamUseCaseStreamSpecOptionWithInteropOverride(this.cameraMetadata, attachedSurfaces, suggestedStreamSpecMap, attachedSurfaceStreamSpecMap)) {
                return;
            }
            streamUseCaseUtil.populateStreamUseCaseStreamSpecOptionWithSupportedSurfaceConfigs(suggestedStreamSpecMap, attachedSurfaceStreamSpecMap, surfaceConfigIndexAttachedSurfaceInfoMap, surfaceConfigIndexUseCaseConfigMap, orderedSurfaceConfigListForStreamUseCase);
        }
    }

    private final List<List<Size>> getSupportedOutputSizesList(Map<UseCaseConfig<?>, ? extends List<Size>> newUseCaseConfigsSupportedSizeMap, List<? extends UseCaseConfig<?>> newUseCaseConfigs, List<Integer> useCasesPriorityOrder) {
        ArrayList arrayList = new ArrayList();
        Iterator<Integer> it = useCasesPriorityOrder.iterator();
        while (it.hasNext()) {
            int iIntValue = it.next().intValue();
            arrayList.add(applyResolutionSelectionOrderRelatedWorkarounds(newUseCaseConfigsSupportedSizeMap.get(newUseCaseConfigs.get(iIntValue)), newUseCaseConfigs.get(iIntValue).getInputFormat()));
        }
        return arrayList;
    }

    private final Range<Integer> getTargetFpsRange(List<? extends AttachedSurfaceInfo> attachedSurfaces, List<? extends UseCaseConfig<?>> newUseCaseConfigs, List<Integer> useCasesPriorityOrder, boolean isStrictFpsRequired) {
        Range<Integer> updatedTargetFrameRate = StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED;
        Iterator<? extends AttachedSurfaceInfo> it = attachedSurfaces.iterator();
        while (it.hasNext()) {
            updatedTargetFrameRate = getUpdatedTargetFrameRate(it.next().getTargetFrameRate(), updatedTargetFrameRate, isStrictFpsRequired);
        }
        Iterator<Integer> it2 = useCasesPriorityOrder.iterator();
        while (it2.hasNext()) {
            updatedTargetFrameRate = getUpdatedTargetFrameRate(newUseCaseConfigs.get(it2.next().intValue()).getTargetFrameRate(StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED), updatedTargetFrameRate, isStrictFpsRequired);
        }
        return updatedTargetFrameRate;
    }

    private final boolean isStrictFpsRequired(List<? extends AttachedSurfaceInfo> attachedSurfaces, List<? extends UseCaseConfig<?>> newUseCaseConfigs) {
        Iterator<? extends AttachedSurfaceInfo> it = attachedSurfaces.iterator();
        Boolean boolValueOf = null;
        while (it.hasNext()) {
            boolValueOf = Boolean.valueOf(getAndValidateIsStrictFpsRequired(it.next().isStrictFrameRateRequired(), boolValueOf));
        }
        Iterator<? extends UseCaseConfig<?>> it2 = newUseCaseConfigs.iterator();
        while (it2.hasNext()) {
            boolValueOf = Boolean.valueOf(getAndValidateIsStrictFpsRequired(it2.next().isStrictFrameRateRequired(), boolValueOf));
        }
        if (boolValueOf != null) {
            return boolValueOf.booleanValue();
        }
        return false;
    }

    private final int getMaxSupportedFpsFromAttachedSurfaces(List<? extends AttachedSurfaceInfo> attachedSurfaces, boolean isHighSpeedOn) {
        int combinedMaximumFps = Integer.MAX_VALUE;
        for (AttachedSurfaceInfo attachedSurfaceInfo : attachedSurfaces) {
            combinedMaximumFps = getCombinedMaximumFps(combinedMaximumFps, attachedSurfaceInfo.getImageFormat(), attachedSurfaceInfo.getSize(), isHighSpeedOn, attachedSurfaceInfo.getCustomMaxFrameRate());
        }
        return combinedMaximumFps;
    }

    public final Map<UseCaseConfig<?>, List<Size>> filterSupportedSizes$camera_camera2(Map<UseCaseConfig<?>, ? extends List<Size>> newUseCaseConfigsSupportedSizeMap, FeatureSettings featureSettings, boolean forceUniqueMaxFpsFiltering) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (UseCaseConfig<?> useCaseConfig : newUseCaseConfigsSupportedSizeMap.keySet()) {
            ArrayList arrayList = new ArrayList();
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            for (Size size : newUseCaseConfigsSupportedSizeMap.get(useCaseConfig)) {
                populateReducedSizeListAndUniqueMaxFpsMap(featureSettings, size, useCaseConfig.getInputFormat(), useCaseConfig.getCustomMaxFrameRate(size), useCaseConfig.getStreamUseCase(), forceUniqueMaxFpsFiltering, linkedHashMap2, arrayList);
            }
            linkedHashMap.put(useCaseConfig, arrayList);
        }
        return linkedHashMap;
    }

    private final void populateReducedSizeListAndUniqueMaxFpsMap(FeatureSettings featureSettings, Size size, int imageFormat, int customMaxFps, StreamUseCase streamUseCase, boolean forceUniqueMaxFpsFiltering, Map<SurfaceConfig.ConfigSize, Set<Integer>> configSizeUniqueMaxFpsMap, List<Size> reducedSizeList) {
        SurfaceConfig.ConfigSource configSource;
        SurfaceConfig.Companion companion = SurfaceConfig.INSTANCE;
        SurfaceSizeDefinition updatedSurfaceSizeDefinitionByFormat = getUpdatedSurfaceSizeDefinitionByFormat(imageFormat);
        int cameraMode = featureSettings.getCameraMode();
        if (featureSettings.getRequiresFeatureComboQuery()) {
            configSource = SurfaceConfig.ConfigSource.FEATURE_COMBINATION_TABLE;
        } else {
            configSource = SurfaceConfig.ConfigSource.CAPTURE_SESSION_TABLES;
        }
        SurfaceConfig.ConfigSize configSize = companion.transformSurfaceConfig(imageFormat, size, updatedSurfaceSizeDefinitionByFormat, cameraMode, configSource, streamUseCase).getConfigSize();
        Range<Integer> targetFpsRange = featureSettings.getTargetFpsRange();
        Range<Integer> range = StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED;
        int maxFrameRate = (!Intrinsics.areEqual(targetFpsRange, range) || forceUniqueMaxFpsFiltering) ? getMaxFrameRate(imageFormat, size, featureSettings.getIsHighSpeedOn(), customMaxFps) : Integer.MAX_VALUE;
        if (featureSettings.getIsFeatureComboInvocation()) {
            if (configSize == SurfaceConfig.ConfigSize.NOT_SUPPORT) {
                return;
            }
            if (!Intrinsics.areEqual(featureSettings.getTargetFpsRange(), range) && maxFrameRate < ((Number) featureSettings.getTargetFpsRange().getUpper()).intValue()) {
                return;
            }
        }
        Set<Integer> linkedHashSet = configSizeUniqueMaxFpsMap.get(configSize);
        if (linkedHashSet == null) {
            linkedHashSet = new LinkedHashSet<>();
            configSizeUniqueMaxFpsMap.put(configSize, linkedHashSet);
        }
        if (linkedHashSet.contains(Integer.valueOf(maxFrameRate))) {
            return;
        }
        reducedSizeList.add(size);
        linkedHashSet.add(Integer.valueOf(maxFrameRate));
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x010e A[PHI: r14 r15 r17
  0x010e: PHI (r14v3 int) = (r14v1 int), (r14v1 int), (r14v5 int), (r14v6 int) binds: [B:33:0x00ea, B:35:0x00f0, B:41:0x00fd, B:45:0x010a] A[DONT_GENERATE, DONT_INLINE]
  0x010e: PHI (r15v2 boolean) = (r15v1 boolean), (r15v1 boolean), (r15v1 boolean), (r15v3 boolean) binds: [B:33:0x00ea, B:35:0x00f0, B:41:0x00fd, B:45:0x010a] A[DONT_GENERATE, DONT_INLINE]
  0x010e: PHI (r17v3 java.util.List<android.util.Size>) = 
  (r17v1 java.util.List<android.util.Size>)
  (r17v1 java.util.List<android.util.Size>)
  (r17v5 java.util.List<android.util.Size>)
  (r17v6 java.util.List<android.util.Size>)
 binds: [B:33:0x00ea, B:35:0x00f0, B:41:0x00fd, B:45:0x010a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x013a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final BestSizesAndMaxFpsForConfigs findBestSizesAndFps(List<? extends List<Size>> allPossibleSizeArrangements, List<? extends AttachedSurfaceInfo> attachedSurfaces, final List<? extends UseCaseConfig<?>> newUseCaseConfigs, int existingSurfaceFrameRateCeiling, final List<Integer> useCasesPriorityOrder, final FeatureSettings featureSettings, List<SurfaceConfig> orderedSurfaceConfigListForStreamUseCase, Map<UseCaseConfig<?>, DynamicRange> resolvedDynamicRanges, boolean findMaxFpsForAllSizes) {
        FeatureSettings featureSettings2;
        BestSizesAndMaxFpsForConfigs bestSizesAndMaxFpsForConfigs;
        DynamicRange dynamicRange;
        DynamicRange dynamicRange2;
        Iterator<? extends List<Size>> it = allPossibleSizeArrangements.iterator();
        int i = Integer.MAX_VALUE;
        int i2 = Integer.MAX_VALUE;
        int i3 = Integer.MAX_VALUE;
        boolean z = false;
        boolean z2 = false;
        List<Size> list = null;
        List<Size> list2 = null;
        while (true) {
            if (!it.hasNext()) {
                featureSettings2 = featureSettings;
                bestSizesAndMaxFpsForConfigs = null;
                break;
            }
            List<Size> next = it.next();
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            int i4 = i;
            bestSizesAndMaxFpsForConfigs = null;
            final List<SurfaceConfig> surfaceConfigList = getSurfaceConfigList(featureSettings.getCameraMode(), attachedSurfaces, next, newUseCaseConfigs, useCasesPriorityOrder, linkedHashMap, linkedHashMap2, featureSettings.getRequiresFeatureComboQuery());
            int currentConfigFrameRateCeiling = getCurrentConfigFrameRateCeiling(next, newUseCaseConfigs, useCasesPriorityOrder, existingSurfaceFrameRateCeiling, featureSettings.getIsHighSpeedOn());
            boolean zIsConfigFrameRateAcceptable = isConfigFrameRateAcceptable(existingSurfaceFrameRateCeiling, featureSettings.getTargetFpsRange(), currentConfigFrameRateCeiling);
            final LinkedHashMap linkedHashMap3 = new LinkedHashMap();
            int i5 = 0;
            for (Object obj : surfaceConfigList) {
                int i6 = i5 + 1;
                if (i5 < 0) {
                    CollectionsKt.throwIndexOverflow();
                }
                SurfaceConfig surfaceConfig = (SurfaceConfig) obj;
                AttachedSurfaceInfo attachedSurfaceInfo = linkedHashMap.get(Integer.valueOf(i5));
                if (attachedSurfaceInfo == null || (dynamicRange2 = attachedSurfaceInfo.getDynamicRange()) == null) {
                    DynamicRange dynamicRange3 = resolvedDynamicRanges.get(linkedHashMap2.get(Integer.valueOf(i5)));
                    if (dynamicRange3 == null) {
                        f$$ExternalSyntheticBUOutline1.m212m("Required value was null.");
                        return null;
                    }
                    dynamicRange = dynamicRange3;
                } else {
                    dynamicRange = dynamicRange2;
                }
                linkedHashMap3.put(surfaceConfig, dynamicRange);
                i5 = i6;
            }
            Iterator<? extends List<Size>> it2 = it;
            Lazy lazy = LazyKt.lazy(LazyThreadSafetyMode.NONE, new Function0() { // from class: androidx.camera.camera2.adapter.SupportedSurfaceCombination$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Boolean.valueOf(this.f$0.checkSupported(featureSettings, surfaceConfigList, linkedHashMap3, newUseCaseConfigs, useCasesPriorityOrder));
                }
            });
            if (findMaxFpsForAllSizes && findBestSizesAndFps$lambda$2(lazy) && (i2 == Integer.MAX_VALUE || i2 < currentConfigFrameRateCeiling)) {
                i2 = currentConfigFrameRateCeiling;
            }
            if (!z && findBestSizesAndFps$lambda$2(lazy)) {
                if (i3 == Integer.MAX_VALUE || i3 < currentConfigFrameRateCeiling) {
                    i3 = currentConfigFrameRateCeiling;
                    list = next;
                }
                if (zIsConfigFrameRateAcceptable) {
                    if (z2 && !findMaxFpsForAllSizes) {
                        featureSettings2 = featureSettings;
                        i3 = currentConfigFrameRateCeiling;
                        i = i4;
                        list = next;
                        break;
                    }
                    z = true;
                    i3 = currentConfigFrameRateCeiling;
                    list = next;
                    if (orderedSurfaceConfigListForStreamUseCase == null) {
                        i = i4;
                    }
                    it = it2;
                }
            } else {
                if (orderedSurfaceConfigListForStreamUseCase == null && !z2) {
                    featureSettings2 = featureSettings;
                    if (getOrderedSupportedStreamUseCaseSurfaceConfigList(featureSettings2, surfaceConfigList, linkedHashMap, linkedHashMap2) != null) {
                        if (i4 == Integer.MAX_VALUE || i4 < currentConfigFrameRateCeiling) {
                            i4 = currentConfigFrameRateCeiling;
                            list2 = next;
                        }
                        if (zIsConfigFrameRateAcceptable) {
                            if (z && !findMaxFpsForAllSizes) {
                                i = currentConfigFrameRateCeiling;
                                list2 = next;
                                break;
                            }
                            z2 = true;
                            i = currentConfigFrameRateCeiling;
                            list2 = next;
                        }
                    }
                    it = it2;
                }
                i = i4;
                it = it2;
            }
        }
        return list == null ? bestSizesAndMaxFpsForConfigs : (!featureSettings2.getIsFeatureComboInvocation() || Intrinsics.areEqual(featureSettings2.getTargetFpsRange(), StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED) || (i3 != Integer.MAX_VALUE && i3 >= ((Number) featureSettings2.getTargetFpsRange().getUpper()).intValue())) ? new BestSizesAndMaxFpsForConfigs(list, list2, i3, i, i2) : bestSizesAndMaxFpsForConfigs;
    }

    private static final boolean findBestSizesAndFps$lambda$2(Lazy<Boolean> lazy) {
        return lazy.getValue().booleanValue();
    }

    private final boolean isConfigFrameRateAcceptable(int existingSurfaceFrameRateCeiling, Range<Integer> targetFpsRange, int currentConfigFrameRateCeiling) {
        return Intrinsics.areEqual(targetFpsRange, StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED) || currentConfigFrameRateCeiling >= existingSurfaceFrameRateCeiling || currentConfigFrameRateCeiling >= ((Number) targetFpsRange.getUpper()).intValue();
    }

    private final Map<UseCaseConfig<?>, StreamSpec> generateSuggestedStreamSpecMap(BestSizesAndMaxFpsForConfigs bestSizesAndMaxFps, List<? extends UseCaseConfig<?>> newUseCaseConfigs, List<Integer> useCasesPriorityOrder, Map<UseCaseConfig<?>, DynamicRange> resolvedDynamicRanges, FeatureSettings featureSettings) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Range<Integer> closestSupportedDeviceFrameRate = StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED;
        if (!Intrinsics.areEqual(featureSettings.getTargetFpsRange(), closestSupportedDeviceFrameRate)) {
            Range<Integer>[] frameRateRangesFor = featureSettings.getIsHighSpeedOn() ? this.highSpeedResolver.getFrameRateRangesFor(bestSizesAndMaxFps.getBestSizes()) : (Range[]) this.cameraMetadata.get(CameraCharacteristics.CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES);
            Range<Integer> closestSupportedDeviceFrameRate2 = getClosestSupportedDeviceFrameRate(featureSettings.getTargetFpsRange(), bestSizesAndMaxFps.getMaxFpsForBestSizes(), frameRateRangesFor);
            if ((featureSettings.getIsFeatureComboInvocation() || featureSettings.getIsStrictFpsRequired()) && !Intrinsics.areEqual(closestSupportedDeviceFrameRate2, featureSettings.getTargetFpsRange())) {
                StringBuilder sb = new StringBuilder("Target FPS range ");
                sb.append(featureSettings.getTargetFpsRange());
                sb.append(" is not supported. Max FPS supported by the calculated best combination: ");
                sb.append(bestSizesAndMaxFps.getMaxFpsForBestSizes());
                sb.append(". Calculated best FPS range for device: ");
                sb.append(closestSupportedDeviceFrameRate2);
                String string = Arrays.toString(frameRateRangesFor);
                sb.append(". Device supported FPS ranges: ");
                sb.append(string);
                sb.append('.');
                throw new IllegalArgumentException(sb.toString().toString());
            }
            closestSupportedDeviceFrameRate = closestSupportedDeviceFrameRate2;
        } else if (featureSettings.getIsHighSpeedOn()) {
            closestSupportedDeviceFrameRate = getClosestSupportedDeviceFrameRate(HighSpeedResolver.INSTANCE.getDEFAULT_FPS(), bestSizesAndMaxFps.getMaxFpsForBestSizes(), this.highSpeedResolver.getFrameRateRangesFor(bestSizesAndMaxFps.getBestSizes()));
        }
        int i = 0;
        for (UseCaseConfig<?> useCaseConfig : newUseCaseConfigs) {
            int i2 = i + 1;
            StreamSpec.Builder sessionType = StreamSpec.builder(bestSizesAndMaxFps.getBestSizes().get(useCasesPriorityOrder.indexOf(Integer.valueOf(i)))).setSessionType(featureSettings.getIsHighSpeedOn() ? 1 : 0);
            DynamicRange dynamicRange = resolvedDynamicRanges.get(useCaseConfig);
            if (dynamicRange == null) {
                Segment$$ExternalSyntheticBUOutline1.m925m("Required value was null.");
                return null;
            }
            StreamSpec.Builder zslDisabled = sessionType.setDynamicRange(dynamicRange).setImplementationOptions(StreamUseCaseUtil.INSTANCE.getStreamSpecImplementationOptions(useCaseConfig)).setZslDisabled(featureSettings.getHasVideoCapture());
            if (!Intrinsics.areEqual(closestSupportedDeviceFrameRate, StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED)) {
                zslDisabled.setExpectedFrameRateRange(closestSupportedDeviceFrameRate);
            }
            linkedHashMap.put(useCaseConfig, zslDisabled.build());
            i = i2;
        }
        return linkedHashMap;
    }

    private final int getRequiredMaxBitDepth(Map<UseCaseConfig<?>, DynamicRange> resolvedDynamicRanges) {
        Iterator<DynamicRange> it = resolvedDynamicRanges.values().iterator();
        while (it.hasNext()) {
            if (it.next().getBitDepth() == 10) {
                return 10;
            }
        }
        return 8;
    }

    private final List<SurfaceConfig> getSurfaceConfigList(int cameraMode, List<? extends AttachedSurfaceInfo> attachedSurfaces, List<Size> possibleSizeList, List<? extends UseCaseConfig<?>> newUseCaseConfigs, List<Integer> useCasesPriorityOrder, Map<Integer, AttachedSurfaceInfo> surfaceConfigIndexAttachedSurfaceInfoMap, Map<Integer, UseCaseConfig<?>> surfaceConfigIndexUseCaseConfigMap, boolean checkViaFeatureComboQuery) {
        SurfaceConfig.ConfigSource configSource;
        ArrayList arrayList = new ArrayList();
        for (AttachedSurfaceInfo attachedSurfaceInfo : attachedSurfaces) {
            arrayList.add(attachedSurfaceInfo.getSurfaceConfig());
            if (surfaceConfigIndexAttachedSurfaceInfoMap != null) {
                surfaceConfigIndexAttachedSurfaceInfoMap.put(Integer.valueOf(arrayList.size() - 1), attachedSurfaceInfo);
            }
        }
        int i = 0;
        for (Size size : possibleSizeList) {
            int i2 = i + 1;
            UseCaseConfig<?> useCaseConfig = newUseCaseConfigs.get(useCasesPriorityOrder.get(i).intValue());
            int inputFormat = useCaseConfig.getInputFormat();
            StreamUseCase streamUseCase = useCaseConfig.getStreamUseCase();
            SurfaceConfig.Companion companion = SurfaceConfig.INSTANCE;
            SurfaceSizeDefinition updatedSurfaceSizeDefinitionByFormat = getUpdatedSurfaceSizeDefinitionByFormat(inputFormat);
            if (checkViaFeatureComboQuery) {
                configSource = SurfaceConfig.ConfigSource.FEATURE_COMBINATION_TABLE;
            } else {
                configSource = SurfaceConfig.ConfigSource.CAPTURE_SESSION_TABLES;
            }
            arrayList.add(companion.transformSurfaceConfig(inputFormat, size, updatedSurfaceSizeDefinitionByFormat, cameraMode, configSource, streamUseCase));
            if (surfaceConfigIndexUseCaseConfigMap != null) {
                surfaceConfigIndexUseCaseConfigMap.put(Integer.valueOf(arrayList.size() - 1), useCaseConfig);
            }
            i = i2;
        }
        return arrayList;
    }

    private final int getCurrentConfigFrameRateCeiling(List<Size> possibleSizeList, List<? extends UseCaseConfig<?>> newUseCaseConfigs, List<Integer> useCasesPriorityOrder, int currentConfigFrameRateCeiling, boolean isHighSpeedOn) {
        int i = 0;
        int combinedMaximumFps = currentConfigFrameRateCeiling;
        for (Size size : possibleSizeList) {
            int i2 = i + 1;
            UseCaseConfig<?> useCaseConfig = newUseCaseConfigs.get(useCasesPriorityOrder.get(i).intValue());
            combinedMaximumFps = getCombinedMaximumFps(combinedMaximumFps, useCaseConfig.getInputFormat(), size, isHighSpeedOn, useCaseConfig.getCustomMaxFrameRate(size));
            i = i2;
        }
        return combinedMaximumFps;
    }

    private final int getMaxFrameRate(int imageFormat, Size size, boolean isHighSpeedOn, int customMaxFps) {
        int maxFrameRate;
        if (!isHighSpeedOn) {
            maxFrameRate = getMaxFrameRate(imageFormat, size);
        } else {
            if (imageFormat != 34) {
                Segment$$ExternalSyntheticBUOutline1.m925m("Check failed.");
                return 0;
            }
            maxFrameRate = this.highSpeedResolver.getMaxFrameRate(size);
        }
        return Math.min(customMaxFps, maxFrameRate);
    }

    private final int getMaxFrameRate(int imageFormat, Size size) {
        long outputMinFrameDuration = getStreamConfigurationMapCompat().getOutputMinFrameDuration(imageFormat, size);
        if (outputMinFrameDuration > 0) {
            return (int) (1.0E9d / outputMinFrameDuration);
        }
        if (!this.isManualSensorSupported) {
            return Integer.MAX_VALUE;
        }
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (!Logger.isWarnEnabled("CXCP")) {
            return 0;
        }
        Log.w(Camera2Logger.TRUNCATED_TAG, "minFrameDuration: " + outputMinFrameDuration + " is invalid for imageFormat = " + imageFormat + ", size = " + size);
        return 0;
    }

    private final int getRangeLength(Range<Integer> range) {
        return (((Number) range.getUpper()).intValue() - ((Number) range.getLower()).intValue()) + 1;
    }

    private final int getRangeDistance(Range<Integer> firstRange, Range<Integer> secondRange) {
        if (firstRange.contains(secondRange.getUpper()) || firstRange.contains(secondRange.getLower())) {
            f$$ExternalSyntheticBUOutline1.m212m("Ranges must not intersect");
            return 0;
        }
        if (((Number) firstRange.getLower()).intValue() > ((Number) secondRange.getUpper()).intValue()) {
            return ((Number) firstRange.getLower()).intValue() - ((Number) secondRange.getUpper()).intValue();
        }
        return ((Number) secondRange.getLower()).intValue() - ((Number) firstRange.getUpper()).intValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x005c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x005d A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final Range<Integer> compareIntersectingRanges(Range<Integer> targetFps, Range<Integer> storedRange, Range<Integer> newRange) {
        double rangeLength = getRangeLength(storedRange.intersect(targetFps));
        double rangeLength2 = getRangeLength(newRange.intersect(targetFps));
        double rangeLength3 = rangeLength2 / ((double) getRangeLength(newRange));
        double rangeLength4 = rangeLength / ((double) getRangeLength(storedRange));
        if (rangeLength2 > rangeLength) {
            return (rangeLength3 >= 0.5d || rangeLength3 >= rangeLength4) ? newRange : storedRange;
        }
        if (rangeLength2 == rangeLength) {
            if (rangeLength3 <= rangeLength4 && (rangeLength3 != rangeLength4 || ((Number) newRange.getLower()).intValue() <= ((Number) storedRange.getLower()).intValue())) {
            }
        } else if (rangeLength4 >= 0.5d || rangeLength3 <= rangeLength4) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final Range<Integer> getClosestSupportedDeviceFrameRate(Range<Integer> targetFrameRate, int maxFps, Range<Integer>[] availableFpsRanges) {
        Range<Integer> rangeCompareIntersectingRanges = StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED;
        if (Intrinsics.areEqual(targetFrameRate, rangeCompareIntersectingRanges) || availableFpsRanges == null) {
            return rangeCompareIntersectingRanges;
        }
        Range<T> range = new Range<>(Integer.valueOf(Math.min(((Number) targetFrameRate.getLower()).intValue(), maxFps)), Integer.valueOf(Math.min(((Number) targetFrameRate.getUpper()).intValue(), maxFps)));
        int rangeLength = 0;
        for (Range<Integer> range2 : availableFpsRanges) {
            if (maxFps >= ((Number) range2.getLower()).intValue()) {
                if (Intrinsics.areEqual(rangeCompareIntersectingRanges, StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED)) {
                    rangeCompareIntersectingRanges = range2;
                }
                if (Intrinsics.areEqual(range2, range)) {
                    return range2;
                }
                try {
                    int rangeLength2 = getRangeLength(range2.intersect(range));
                    if (rangeLength == 0) {
                        rangeCompareIntersectingRanges = range2;
                        rangeLength = rangeLength2;
                    } else if (rangeLength2 >= rangeLength) {
                        rangeCompareIntersectingRanges = compareIntersectingRanges(range, rangeCompareIntersectingRanges, range2);
                        rangeLength = getRangeLength(range.intersect(rangeCompareIntersectingRanges));
                    }
                } catch (IllegalArgumentException unused) {
                    if (rangeLength == 0 && (getRangeDistance(range2, range) < getRangeDistance(rangeCompareIntersectingRanges, range) || (getRangeDistance(range2, range) == getRangeDistance(rangeCompareIntersectingRanges, range) && (((Number) range2.getLower()).intValue() > ((Number) rangeCompareIntersectingRanges.getUpper()).intValue() || getRangeLength(range2) < getRangeLength(rangeCompareIntersectingRanges))))) {
                        rangeCompareIntersectingRanges = range2;
                    }
                }
            }
        }
        return rangeCompareIntersectingRanges;
    }

    private final Range<Integer> getUpdatedTargetFrameRate(Range<Integer> newTargetFrameRate, Range<Integer> storedTargetFrameRate, boolean isStrictFpsRequired) {
        Range<Integer> range = StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED;
        if (Intrinsics.areEqual(storedTargetFrameRate, range) && Intrinsics.areEqual(newTargetFrameRate, range)) {
            return range;
        }
        if (Intrinsics.areEqual(storedTargetFrameRate, range)) {
            return newTargetFrameRate;
        }
        if (!Intrinsics.areEqual(newTargetFrameRate, range)) {
            if (isStrictFpsRequired) {
                Preconditions.checkState(Intrinsics.areEqual(newTargetFrameRate, storedTargetFrameRate), "All targetFrameRate should be the same if strict fps is required");
                return newTargetFrameRate;
            }
            try {
                return storedTargetFrameRate.intersect(newTargetFrameRate);
            } catch (IllegalArgumentException unused) {
            }
        }
        return storedTargetFrameRate;
    }

    private final boolean getAndValidateIsStrictFpsRequired(boolean newIsStrictFpsRequired, Boolean storedIsStrictFpsRequired) {
        if (storedIsStrictFpsRequired == null || Intrinsics.areEqual(storedIsStrictFpsRequired, Boolean.valueOf(newIsStrictFpsRequired))) {
            return newIsStrictFpsRequired;
        }
        Segment$$ExternalSyntheticBUOutline1.m925m("All isStrictFpsRequired should be the same");
        return false;
    }

    private final int getCombinedMaximumFps(int combinedMaxFps, int imageFormat, Size size, boolean isHighSpeedOn, int customMaxFps) {
        return Math.min(combinedMaxFps, getMaxFrameRate(imageFormat, size, isHighSpeedOn, customMaxFps));
    }

    public final List<Size> applyResolutionSelectionOrderRelatedWorkarounds(List<Size> sizeList, int imageFormat) {
        Rational rational;
        List<Size> mutableList;
        int i = this.targetAspectRatio.get(this.cameraMetadata, this.streamConfigurationMapCompat);
        if (i == 0) {
            rational = AspectRatioUtil.ASPECT_RATIO_4_3;
        } else if (i != 1) {
            rational = null;
            if (i == 2) {
                Size maximumSize = getUpdatedSurfaceSizeDefinitionByFormat(256).getMaximumSize(256);
                if (maximumSize != null) {
                    rational = new Rational(maximumSize.getWidth(), maximumSize.getHeight());
                }
            } else if (i != 3) {
                throw new AssertionError("Undefined targetAspectRatio: " + this.targetAspectRatio);
            }
        } else {
            rational = AspectRatioUtil.ASPECT_RATIO_16_9;
        }
        if (rational == null) {
            mutableList = CollectionsKt.toMutableList((Collection) sizeList);
        } else {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (Size size : sizeList) {
                if (AspectRatioUtil.hasMatchingAspectRatio(size, rational)) {
                    arrayList.add(size);
                } else {
                    arrayList2.add(size);
                }
            }
            arrayList2.addAll(0, arrayList);
            mutableList = arrayList2;
        }
        return this.resolutionCorrector.insertOrPrioritize(SurfaceConfig.INSTANCE.getConfigType(imageFormat), mutableList);
    }

    private final void refreshPreviewSize() {
        this.displayInfoManager.refreshPreviewSize();
        if (this.surfaceSizeDefinition == null) {
            generateSurfaceSizeDefinition();
        } else {
            setSurfaceSizeDefinition$camera_camera2(SurfaceSizeDefinition.create(getSurfaceSizeDefinition$camera_camera2().getAnalysisSize(), getSurfaceSizeDefinition$camera_camera2().getS720pSizeMap(), this.displayInfoManager.getPreviewSize(), getSurfaceSizeDefinition$camera_camera2().getS1440pSizeMap(), getSurfaceSizeDefinition$camera_camera2().getRecordSize(), getSurfaceSizeDefinition$camera_camera2().getMaximumSizeMap(), getSurfaceSizeDefinition$camera_camera2().getMaximum4x3SizeMap(), getSurfaceSizeDefinition$camera_camera2().getMaximum16x9SizeMap(), getSurfaceSizeDefinition$camera_camera2().getUltraMaximumSizeMap()));
        }
    }

    private final void checkCapabilities() {
        int[] iArr = (int[]) this.cameraMetadata.get(CameraCharacteristics.REQUEST_AVAILABLE_CAPABILITIES);
        if (iArr != null) {
            this.isRawSupported = ArraysKt.contains(iArr, 3);
            this.isBurstCaptureSupported = ArraysKt.contains(iArr, 6);
            this.isUltraHighResolutionSensorSupported = ArraysKt.contains(iArr, 16);
            this.isManualSensorSupported = ArraysKt.contains(iArr, 1);
        }
    }

    private final void generateSupportedCombinationList() {
        this.surfaceCombinations.addAll(GuaranteedConfigurationsUtil.generateSupportedCombinationList(this.hardwareLevel, this.isRawSupported, this.isBurstCaptureSupported));
        this.surfaceCombinations.addAll(this.extraSupportedSurfaceCombinationsContainer.get(this.cameraId));
    }

    private final void generateUltraHighResolutionSupportedCombinationList() {
        this.ultraHighSurfaceCombinations.addAll(GuaranteedConfigurationsUtil.getUltraHighResolutionSupportedCombinationList());
    }

    private final void generateConcurrentSupportedCombinationList() {
        this.concurrentSurfaceCombinations.addAll(GuaranteedConfigurationsUtil.getConcurrentSupportedCombinationList());
    }

    private final void generatePreviewStabilizationSupportedCombinationList() {
        this.previewStabilizationSurfaceCombinations.addAll(GuaranteedConfigurationsUtil.getPreviewStabilizationSupportedCombinationList());
    }

    private final void generateHighSpeedSupportedCombinationList() {
        if (this.highSpeedResolver.isHighSpeedSupported()) {
            this.highSpeedSurfaceCombinations.clear();
            Size maxSize = this.highSpeedResolver.getMaxSize();
            if (maxSize != null) {
                this.highSpeedSurfaceCombinations.addAll(GuaranteedConfigurationsUtil.generateHighSpeedSupportedCombinationList(maxSize, getUpdatedSurfaceSizeDefinitionByFormat(34)));
            }
        }
    }

    private final void generate10BitSupportedCombinationList() {
        this.surfaceCombinations10Bit.addAll(GuaranteedConfigurationsUtil.get10BitSupportedCombinationList());
    }

    private final void generateUltraHdrSupportedCombinationList() {
        this.surfaceCombinationsUltraHdr.addAll(GuaranteedConfigurationsUtil.getUltraHdrSupportedCombinationList());
    }

    private final void generateStreamUseCaseSupportedCombinationList() {
        if (Build.VERSION.SDK_INT >= 33) {
            this.surfaceCombinationsStreamUseCase.addAll(GuaranteedConfigurationsUtil.INSTANCE.getStreamUseCaseSupportedCombinationList());
        }
    }

    private final void generateSurfaceSizeDefinition() {
        setSurfaceSizeDefinition$camera_camera2(SurfaceSizeDefinition.create(SizeUtil.RESOLUTION_VGA, new LinkedHashMap(), this.displayInfoManager.getPreviewSize(), new LinkedHashMap(), getRecordSize(), new LinkedHashMap(), new LinkedHashMap(), new LinkedHashMap(), new LinkedHashMap()));
    }

    public final SurfaceSizeDefinition getUpdatedSurfaceSizeDefinitionByFormat(int format) {
        SupportedSurfaceCombination supportedSurfaceCombination;
        if (this.surfaceSizeDefinitionFormats.contains(Integer.valueOf(format))) {
            supportedSurfaceCombination = this;
        } else {
            updateS720pOrS1440pSizeByFormat(getSurfaceSizeDefinition$camera_camera2().getS720pSizeMap(), SizeUtil.RESOLUTION_720P, format);
            updateS720pOrS1440pSizeByFormat(getSurfaceSizeDefinition$camera_camera2().getS1440pSizeMap(), SizeUtil.RESOLUTION_1440P, format);
            supportedSurfaceCombination = this;
            updateMaximumSizeByFormat$default(supportedSurfaceCombination, getSurfaceSizeDefinition$camera_camera2().getMaximumSizeMap(), format, null, 4, null);
            supportedSurfaceCombination.updateMaximumSizeByFormat(supportedSurfaceCombination.getSurfaceSizeDefinition$camera_camera2().getMaximum4x3SizeMap(), format, AspectRatioUtil.ASPECT_RATIO_4_3);
            supportedSurfaceCombination.updateMaximumSizeByFormat(supportedSurfaceCombination.getSurfaceSizeDefinition$camera_camera2().getMaximum16x9SizeMap(), format, AspectRatioUtil.ASPECT_RATIO_16_9);
            supportedSurfaceCombination.updateUltraMaximumSizeByFormat(supportedSurfaceCombination.getSurfaceSizeDefinition$camera_camera2().getUltraMaximumSizeMap(), format);
            supportedSurfaceCombination.surfaceSizeDefinitionFormats.add(Integer.valueOf(format));
        }
        return supportedSurfaceCombination.getSurfaceSizeDefinition$camera_camera2();
    }

    private final void updateS720pOrS1440pSizeByFormat(Map<Integer, Size> sizeMap, Size targetSize, int format) {
        if (this.isConcurrentCameraModeSupported) {
            Size maxOutputSizeByFormat$camera_camera2$default = getMaxOutputSizeByFormat$camera_camera2$default(this, this.streamConfigurationMapCompat.toStreamConfigurationMap(), format, false, null, 8, null);
            Integer numValueOf = Integer.valueOf(format);
            if (maxOutputSizeByFormat$camera_camera2$default != null) {
                targetSize = (Size) Collections.min(CollectionsKt.listOf((Object[]) new Size[]{targetSize, maxOutputSizeByFormat$camera_camera2$default}), new CompareSizesByArea());
            }
            sizeMap.put(numValueOf, targetSize);
        }
    }

    public static /* synthetic */ void updateMaximumSizeByFormat$default(SupportedSurfaceCombination supportedSurfaceCombination, Map map, int i, Rational rational, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            rational = null;
        }
        supportedSurfaceCombination.updateMaximumSizeByFormat(map, i, rational);
    }

    private final void updateMaximumSizeByFormat(Map<Integer, Size> sizeMap, int format, Rational aspectRatio) {
        Size maxOutputSizeByFormat$camera_camera2 = getMaxOutputSizeByFormat$camera_camera2(this.streamConfigurationMapCompat.toStreamConfigurationMap(), format, true, aspectRatio);
        if (maxOutputSizeByFormat$camera_camera2 != null) {
            sizeMap.put(Integer.valueOf(format), maxOutputSizeByFormat$camera_camera2);
        }
    }

    private final void updateUltraMaximumSizeByFormat(Map<Integer, Size> sizeMap, int format) {
        StreamConfigurationMap streamConfigurationMap;
        Size maxOutputSizeByFormat$camera_camera2$default;
        if (Build.VERSION.SDK_INT < 31 || !this.isUltraHighResolutionSensorSupported || (streamConfigurationMap = (StreamConfigurationMap) this.cameraMetadata.get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP_MAXIMUM_RESOLUTION)) == null || (maxOutputSizeByFormat$camera_camera2$default = getMaxOutputSizeByFormat$camera_camera2$default(this, streamConfigurationMap, format, true, null, 8, null)) == null) {
            return;
        }
        sizeMap.put(Integer.valueOf(format), maxOutputSizeByFormat$camera_camera2$default);
    }

    private final Size getRecordSize() {
        try {
            Integer.parseInt(this.cameraId);
            Size recordSizeFromCamcorderProfile = getRecordSizeFromCamcorderProfile();
            if (recordSizeFromCamcorderProfile != null) {
                return recordSizeFromCamcorderProfile;
            }
        } catch (NumberFormatException unused) {
        }
        Size recordSizeFromStreamConfigurationMapCompat = getRecordSizeFromStreamConfigurationMapCompat();
        return recordSizeFromStreamConfigurationMapCompat != null ? recordSizeFromStreamConfigurationMapCompat : SizeUtil.RESOLUTION_480P;
    }

    private final StreamConfigurationMapCompat getStreamConfigurationMapCompat() {
        StreamConfigurationMap streamConfigurationMap = (StreamConfigurationMap) this.cameraMetadata.get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP);
        if (streamConfigurationMap == null) {
            f$$ExternalSyntheticBUOutline1.m212m("Cannot retrieve SCALER_STREAM_CONFIGURATION_MAP");
            return null;
        }
        return new StreamConfigurationMapCompat(streamConfigurationMap, new OutputSizesCorrector(this.cameraMetadata, streamConfigurationMap));
    }

    private final Size getRecordSizeFromStreamConfigurationMapCompat() {
        Object objM3087constructorimpl;
        StreamConfigurationMap streamConfigurationMap = this.streamConfigurationMapCompat.toStreamConfigurationMap();
        try {
            Result.Companion companion = Result.INSTANCE;
            objM3087constructorimpl = Result.m3087constructorimpl(streamConfigurationMap != null ? streamConfigurationMap.getOutputSizes(MediaRecorder.class) : null);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM3087constructorimpl = Result.m3087constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m3093isFailureimpl(objM3087constructorimpl)) {
            objM3087constructorimpl = null;
        }
        Size[] sizeArr = (Size[]) objM3087constructorimpl;
        if (sizeArr == null) {
            return null;
        }
        Arrays.sort(sizeArr, new CompareSizesByArea(true));
        for (Size size : sizeArr) {
            int width = size.getWidth();
            Size size2 = SizeUtil.RESOLUTION_1080P;
            if (width <= size2.getWidth() && size.getHeight() <= size2.getHeight()) {
                return size;
            }
        }
        return null;
    }

    private final Size getRecordSizeFromCamcorderProfile() {
        EncoderProfilesProxy all;
        Iterator it = CollectionsKt.listOf((Object[]) new Integer[]{1, 13, 10, 8, 12, 6, 5, 4}).iterator();
        while (it.hasNext()) {
            int iIntValue = ((Number) it.next()).intValue();
            if (this.encoderProfilesProvider.hasProfile(iIntValue) && (all = this.encoderProfilesProvider.getAll(iIntValue)) != null && !all.getVideoProfiles().isEmpty()) {
                return all.getVideoProfiles().get(0).getResolution();
            }
        }
        return null;
    }

    private final List<Integer> getUseCasesPriorityOrder(List<? extends UseCaseConfig<?>> newUseCaseConfigs) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Iterator<? extends UseCaseConfig<?>> it = newUseCaseConfigs.iterator();
        while (it.hasNext()) {
            int surfaceOccupancyPriority = it.next().getSurfaceOccupancyPriority(0);
            if (!arrayList2.contains(Integer.valueOf(surfaceOccupancyPriority))) {
                arrayList2.add(Integer.valueOf(surfaceOccupancyPriority));
            }
        }
        CollectionsKt.sort(arrayList2);
        CollectionsKt.reverse(arrayList2);
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList2.get(i);
            i++;
            int iIntValue = ((Number) obj).intValue();
            for (UseCaseConfig<?> useCaseConfig : newUseCaseConfigs) {
                if (iIntValue == useCaseConfig.getSurfaceOccupancyPriority(0)) {
                    arrayList.add(Integer.valueOf(newUseCaseConfigs.indexOf(useCaseConfig)));
                }
            }
        }
        return arrayList;
    }

    public static /* synthetic */ Size getMaxOutputSizeByFormat$camera_camera2$default(SupportedSurfaceCombination supportedSurfaceCombination, StreamConfigurationMap streamConfigurationMap, int i, boolean z, Rational rational, int i2, Object obj) {
        if ((i2 & 8) != 0) {
            rational = null;
        }
        return supportedSurfaceCombination.getMaxOutputSizeByFormat$camera_camera2(streamConfigurationMap, i, z, rational);
    }

    public final Size getMaxOutputSizeByFormat$camera_camera2(StreamConfigurationMap map, int imageFormat, boolean highResolutionIncluded, Rational aspectRatio) {
        Size[] outputSizes = getOutputSizes(map, imageFormat, aspectRatio);
        if (outputSizes == null || outputSizes.length == 0) {
            return null;
        }
        CompareSizesByArea compareSizesByArea = new CompareSizesByArea();
        Size size = (Size) Collections.max(ArraysKt.asList(outputSizes), compareSizesByArea);
        Size size2 = SizeUtil.RESOLUTION_ZERO;
        if (highResolutionIncluded) {
            Size[] highResolutionOutputSizes = map != null ? map.getHighResolutionOutputSizes(imageFormat) : null;
            if (highResolutionOutputSizes != null && highResolutionOutputSizes.length != 0) {
                size2 = (Size) Collections.max(ArraysKt.asList(highResolutionOutputSizes), compareSizesByArea);
            }
        }
        return (Size) Collections.max(CollectionsKt.listOf((Object[]) new Size[]{size, size2}), compareSizesByArea);
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0012  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final Size[] getOutputSizes(StreamConfigurationMap map, int imageFormat, Rational aspectRatio) {
        Object objM3087constructorimpl;
        Size[] outputSizes;
        try {
            Result.Companion companion = Result.INSTANCE;
            if (imageFormat != 34) {
                if (map != null) {
                    outputSizes = map.getOutputSizes(imageFormat);
                }
                objM3087constructorimpl = Result.m3087constructorimpl(outputSizes);
            } else {
                outputSizes = map != null ? map.getOutputSizes(SurfaceTexture.class) : null;
                objM3087constructorimpl = Result.m3087constructorimpl(outputSizes);
            }
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM3087constructorimpl = Result.m3087constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m3093isFailureimpl(objM3087constructorimpl)) {
            objM3087constructorimpl = null;
        }
        Size[] sizeArr = (Size[]) objM3087constructorimpl;
        if (sizeArr == null) {
            return null;
        }
        if (aspectRatio == null) {
            return sizeArr;
        }
        ArrayList arrayList = new ArrayList();
        for (Size size : sizeArr) {
            if (AspectRatioUtil.hasMatchingAspectRatio(size, aspectRatio)) {
                arrayList.add(size);
            }
        }
        return (Size[]) arrayList.toArray(new Size[0]);
    }

    private final List<List<Size>> getAllPossibleSizeArrangements(List<? extends List<Size>> supportedOutputSizesList) {
        Iterator<? extends List<Size>> it = supportedOutputSizesList.iterator();
        int size = 1;
        while (it.hasNext()) {
            size *= it.next().size();
        }
        if (size == 0) {
            f$$ExternalSyntheticBUOutline1.m212m("Failed to find supported resolutions.");
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < size; i++) {
            arrayList.add(new ArrayList());
        }
        int size2 = size / supportedOutputSizesList.get(0).size();
        int size3 = supportedOutputSizesList.size();
        int i2 = size;
        for (int i3 = 0; i3 < size3; i3++) {
            List<Size> list = supportedOutputSizesList.get(i3);
            for (int i4 = 0; i4 < size; i4++) {
                ((List) arrayList.get(i4)).add(list.get((i4 % i2) / size2));
            }
            if (i3 < supportedOutputSizesList.size() - 1) {
                i2 = size2;
                size2 /= supportedOutputSizesList.get(i3 + 1).size();
            }
        }
        return arrayList;
    }

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0015\b\u0086\b\u0018\u00002\u00020\u0001Bm\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\t\u001a\u00020\u0005\u0012\b\b\u0002\u0010\n\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0005\u0012\b\b\u0002\u0010\f\u001a\u00020\u0005\u0012\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00020\r\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0005¢\u0006\u0004\b\u0010\u0010\u0011Jz\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0004\u001a\u00020\u00022\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\t\u001a\u00020\u00052\b\b\u0002\u0010\n\u001a\u00020\u00052\b\b\u0002\u0010\u000b\u001a\u00020\u00052\b\b\u0002\u0010\f\u001a\u00020\u00052\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00020\r2\b\b\u0002\u0010\u000f\u001a\u00020\u0005HÆ\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0015\u001a\u00020\u0014HÖ\u0001¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0017\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0017\u0010\u0018J\u001a\u0010\u001a\u001a\u00020\u00052\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u001a\u0010\u001bR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u001c\u001a\u0004\b\u001d\u0010\u0018R\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u001c\u001a\u0004\b\u001e\u0010\u0018R\u0017\u0010\u0006\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u001f\u001a\u0004\b \u0010!R\u0017\u0010\b\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\"\u001a\u0004\b#\u0010$R\u0017\u0010\t\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\t\u0010\u001f\u001a\u0004\b\t\u0010!R\u0017\u0010\n\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\n\u0010\u001f\u001a\u0004\b\n\u0010!R\u0017\u0010\u000b\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u001f\u001a\u0004\b\u000b\u0010!R\u0017\u0010\f\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\f\u0010\u001f\u001a\u0004\b%\u0010!R\u001d\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00020\r8\u0006¢\u0006\f\n\u0004\b\u000e\u0010&\u001a\u0004\b'\u0010(R\u0017\u0010\u000f\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u001f\u001a\u0004\b\u000f\u0010!¨\u0006)"}, d2 = {"Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "cameraMode", "requiredMaxBitDepth", _UrlKt.FRAGMENT_ENCODE_SET, "hasVideoCapture", "Landroidx/camera/core/impl/stabilization/VideoStabilization;", "videoStabilization", "isUltraHdrOn", "isHighSpeedOn", "isFeatureComboInvocation", "requiresFeatureComboQuery", "Landroid/util/Range;", "targetFpsRange", "isStrictFpsRequired", "<init>", "(IIZLandroidx/camera/core/impl/stabilization/VideoStabilization;ZZZZLandroid/util/Range;Z)V", "copy", "(IIZLandroidx/camera/core/impl/stabilization/VideoStabilization;ZZZZLandroid/util/Range;Z)Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", "hashCode", "()I", "other", "equals", "(Ljava/lang/Object;)Z", "I", "getCameraMode", "getRequiredMaxBitDepth", "Z", "getHasVideoCapture", "()Z", "Landroidx/camera/core/impl/stabilization/VideoStabilization;", "getVideoStabilization", "()Landroidx/camera/core/impl/stabilization/VideoStabilization;", "getRequiresFeatureComboQuery", "Landroid/util/Range;", "getTargetFpsRange", "()Landroid/util/Range;", "camera-camera2"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class FeatureSettings {
        private final int cameraMode;
        private final boolean hasVideoCapture;
        private final boolean isFeatureComboInvocation;
        private final boolean isHighSpeedOn;
        private final boolean isStrictFpsRequired;
        private final boolean isUltraHdrOn;
        private final int requiredMaxBitDepth;
        private final boolean requiresFeatureComboQuery;
        private final Range<Integer> targetFpsRange;
        private final VideoStabilization videoStabilization;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ FeatureSettings copy$default(FeatureSettings featureSettings, int i, int i2, boolean z, VideoStabilization videoStabilization, boolean z2, boolean z3, boolean z4, boolean z5, Range range, boolean z6, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                i = featureSettings.cameraMode;
            }
            if ((i3 & 2) != 0) {
                i2 = featureSettings.requiredMaxBitDepth;
            }
            if ((i3 & 4) != 0) {
                z = featureSettings.hasVideoCapture;
            }
            if ((i3 & 8) != 0) {
                videoStabilization = featureSettings.videoStabilization;
            }
            if ((i3 & 16) != 0) {
                z2 = featureSettings.isUltraHdrOn;
            }
            if ((i3 & 32) != 0) {
                z3 = featureSettings.isHighSpeedOn;
            }
            if ((i3 & 64) != 0) {
                z4 = featureSettings.isFeatureComboInvocation;
            }
            if ((i3 & 128) != 0) {
                z5 = featureSettings.requiresFeatureComboQuery;
            }
            if ((i3 & 256) != 0) {
                range = featureSettings.targetFpsRange;
            }
            if ((i3 & 512) != 0) {
                z6 = featureSettings.isStrictFpsRequired;
            }
            Range range2 = range;
            boolean z7 = z6;
            boolean z8 = z4;
            boolean z9 = z5;
            boolean z10 = z2;
            boolean z11 = z3;
            return featureSettings.copy(i, i2, z, videoStabilization, z10, z11, z8, z9, range2, z7);
        }

        public final FeatureSettings copy(int cameraMode, int requiredMaxBitDepth, boolean hasVideoCapture, VideoStabilization videoStabilization, boolean isUltraHdrOn, boolean isHighSpeedOn, boolean isFeatureComboInvocation, boolean requiresFeatureComboQuery, Range<Integer> targetFpsRange, boolean isStrictFpsRequired) {
            return new FeatureSettings(cameraMode, requiredMaxBitDepth, hasVideoCapture, videoStabilization, isUltraHdrOn, isHighSpeedOn, isFeatureComboInvocation, requiresFeatureComboQuery, targetFpsRange, isStrictFpsRequired);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof FeatureSettings)) {
                return false;
            }
            FeatureSettings featureSettings = (FeatureSettings) other;
            return this.cameraMode == featureSettings.cameraMode && this.requiredMaxBitDepth == featureSettings.requiredMaxBitDepth && this.hasVideoCapture == featureSettings.hasVideoCapture && this.videoStabilization == featureSettings.videoStabilization && this.isUltraHdrOn == featureSettings.isUltraHdrOn && this.isHighSpeedOn == featureSettings.isHighSpeedOn && this.isFeatureComboInvocation == featureSettings.isFeatureComboInvocation && this.requiresFeatureComboQuery == featureSettings.requiresFeatureComboQuery && Intrinsics.areEqual(this.targetFpsRange, featureSettings.targetFpsRange) && this.isStrictFpsRequired == featureSettings.isStrictFpsRequired;
        }

        public int hashCode() {
            return (((((((((((((((((Integer.hashCode(this.cameraMode) * 31) + Integer.hashCode(this.requiredMaxBitDepth)) * 31) + Boolean.hashCode(this.hasVideoCapture)) * 31) + this.videoStabilization.hashCode()) * 31) + Boolean.hashCode(this.isUltraHdrOn)) * 31) + Boolean.hashCode(this.isHighSpeedOn)) * 31) + Boolean.hashCode(this.isFeatureComboInvocation)) * 31) + Boolean.hashCode(this.requiresFeatureComboQuery)) * 31) + this.targetFpsRange.hashCode()) * 31) + Boolean.hashCode(this.isStrictFpsRequired);
        }

        public String toString() {
            return "FeatureSettings(cameraMode=" + this.cameraMode + ", requiredMaxBitDepth=" + this.requiredMaxBitDepth + ", hasVideoCapture=" + this.hasVideoCapture + ", videoStabilization=" + this.videoStabilization + ", isUltraHdrOn=" + this.isUltraHdrOn + ", isHighSpeedOn=" + this.isHighSpeedOn + ", isFeatureComboInvocation=" + this.isFeatureComboInvocation + ", requiresFeatureComboQuery=" + this.requiresFeatureComboQuery + ", targetFpsRange=" + this.targetFpsRange + ", isStrictFpsRequired=" + this.isStrictFpsRequired + ')';
        }

        public FeatureSettings(int i, int i2, boolean z, VideoStabilization videoStabilization, boolean z2, boolean z3, boolean z4, boolean z5, Range<Integer> range, boolean z6) {
            this.cameraMode = i;
            this.requiredMaxBitDepth = i2;
            this.hasVideoCapture = z;
            this.videoStabilization = videoStabilization;
            this.isUltraHdrOn = z2;
            this.isHighSpeedOn = z3;
            this.isFeatureComboInvocation = z4;
            this.requiresFeatureComboQuery = z5;
            this.targetFpsRange = range;
            this.isStrictFpsRequired = z6;
        }

        public final int getCameraMode() {
            return this.cameraMode;
        }

        public final int getRequiredMaxBitDepth() {
            return this.requiredMaxBitDepth;
        }

        public final boolean getHasVideoCapture() {
            return this.hasVideoCapture;
        }

        public /* synthetic */ FeatureSettings(int i, int i2, boolean z, VideoStabilization videoStabilization, boolean z2, boolean z3, boolean z4, boolean z5, Range range, boolean z6, int i3, DefaultConstructorMarker defaultConstructorMarker) {
            this(i, i2, (i3 & 4) != 0 ? false : z, (i3 & 8) != 0 ? VideoStabilization.UNSPECIFIED : videoStabilization, (i3 & 16) != 0 ? false : z2, (i3 & 32) != 0 ? false : z3, (i3 & 64) != 0 ? false : z4, (i3 & 128) != 0 ? false : z5, (i3 & 256) != 0 ? StreamSpec.FRAME_RATE_RANGE_UNSPECIFIED : range, (i3 & 512) != 0 ? false : z6);
        }

        public final VideoStabilization getVideoStabilization() {
            return this.videoStabilization;
        }

        /* JADX INFO: renamed from: isUltraHdrOn, reason: from getter */
        public final boolean getIsUltraHdrOn() {
            return this.isUltraHdrOn;
        }

        /* JADX INFO: renamed from: isHighSpeedOn, reason: from getter */
        public final boolean getIsHighSpeedOn() {
            return this.isHighSpeedOn;
        }

        /* JADX INFO: renamed from: isFeatureComboInvocation, reason: from getter */
        public final boolean getIsFeatureComboInvocation() {
            return this.isFeatureComboInvocation;
        }

        public final boolean getRequiresFeatureComboQuery() {
            return this.requiresFeatureComboQuery;
        }

        public final Range<Integer> getTargetFpsRange() {
            return this.targetFpsRange;
        }

        /* JADX INFO: renamed from: isStrictFpsRequired, reason: from getter */
        public final boolean getIsStrictFpsRequired() {
            return this.isStrictFpsRequired;
        }
    }

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u000b\b\u0086\b\u0018\u00002\u00020\u0001B=\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\r\u001a\u00020\fHÖ\u0001¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\u0006HÖ\u0001¢\u0006\u0004\b\u000f\u0010\u0010J\u001a\u0010\u0013\u001a\u00020\u00122\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0013\u0010\u0014R\u001d\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u001f\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0015\u001a\u0004\b\u0018\u0010\u0017R\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0019\u001a\u0004\b\u001a\u0010\u0010R\u0017\u0010\b\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\b\u0010\u0019\u001a\u0004\b\u001b\u0010\u0010R\u0017\u0010\t\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\t\u0010\u0019\u001a\u0004\b\u001c\u0010\u0010¨\u0006\u001d"}, d2 = {"Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$BestSizesAndMaxFpsForConfigs;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "Landroid/util/Size;", "bestSizes", "bestSizesForStreamUseCase", _UrlKt.FRAGMENT_ENCODE_SET, "maxFpsForBestSizes", "maxFpsForStreamUseCase", "maxFpsForAllSizes", "<init>", "(Ljava/util/List;Ljava/util/List;III)V", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", "hashCode", "()I", "other", _UrlKt.FRAGMENT_ENCODE_SET, "equals", "(Ljava/lang/Object;)Z", "Ljava/util/List;", "getBestSizes", "()Ljava/util/List;", "getBestSizesForStreamUseCase", "I", "getMaxFpsForBestSizes", "getMaxFpsForStreamUseCase", "getMaxFpsForAllSizes", "camera-camera2"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class BestSizesAndMaxFpsForConfigs {
        private final List<Size> bestSizes;
        private final List<Size> bestSizesForStreamUseCase;
        private final int maxFpsForAllSizes;
        private final int maxFpsForBestSizes;
        private final int maxFpsForStreamUseCase;

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof BestSizesAndMaxFpsForConfigs)) {
                return false;
            }
            BestSizesAndMaxFpsForConfigs bestSizesAndMaxFpsForConfigs = (BestSizesAndMaxFpsForConfigs) other;
            return Intrinsics.areEqual(this.bestSizes, bestSizesAndMaxFpsForConfigs.bestSizes) && Intrinsics.areEqual(this.bestSizesForStreamUseCase, bestSizesAndMaxFpsForConfigs.bestSizesForStreamUseCase) && this.maxFpsForBestSizes == bestSizesAndMaxFpsForConfigs.maxFpsForBestSizes && this.maxFpsForStreamUseCase == bestSizesAndMaxFpsForConfigs.maxFpsForStreamUseCase && this.maxFpsForAllSizes == bestSizesAndMaxFpsForConfigs.maxFpsForAllSizes;
        }

        public int hashCode() {
            int iHashCode = this.bestSizes.hashCode() * 31;
            List<Size> list = this.bestSizesForStreamUseCase;
            return ((((((iHashCode + (list == null ? 0 : list.hashCode())) * 31) + Integer.hashCode(this.maxFpsForBestSizes)) * 31) + Integer.hashCode(this.maxFpsForStreamUseCase)) * 31) + Integer.hashCode(this.maxFpsForAllSizes);
        }

        public String toString() {
            return "BestSizesAndMaxFpsForConfigs(bestSizes=" + this.bestSizes + ", bestSizesForStreamUseCase=" + this.bestSizesForStreamUseCase + ", maxFpsForBestSizes=" + this.maxFpsForBestSizes + ", maxFpsForStreamUseCase=" + this.maxFpsForStreamUseCase + ", maxFpsForAllSizes=" + this.maxFpsForAllSizes + ')';
        }

        public BestSizesAndMaxFpsForConfigs(List<Size> list, List<Size> list2, int i, int i2, int i3) {
            this.bestSizes = list;
            this.bestSizesForStreamUseCase = list2;
            this.maxFpsForBestSizes = i;
            this.maxFpsForStreamUseCase = i2;
            this.maxFpsForAllSizes = i3;
        }

        public final List<Size> getBestSizes() {
            return this.bestSizes;
        }

        public final List<Size> getBestSizesForStreamUseCase() {
            return this.bestSizesForStreamUseCase;
        }

        public final int getMaxFpsForBestSizes() {
            return this.maxFpsForBestSizes;
        }

        public final int getMaxFpsForStreamUseCase() {
            return this.maxFpsForStreamUseCase;
        }

        public final int getMaxFpsForAllSizes() {
            return this.maxFpsForAllSizes;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0080\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;I)V", "WITHOUT_FEATURE_COMBO", "WITH_FEATURE_COMBO", "WITHOUT_FEATURE_COMBO_FIRST_AND_THEN_WITH_IT", "camera-camera2"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class CheckingMethod {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ CheckingMethod[] $VALUES;
        public static final CheckingMethod WITHOUT_FEATURE_COMBO = new CheckingMethod("WITHOUT_FEATURE_COMBO", 0);
        public static final CheckingMethod WITH_FEATURE_COMBO = new CheckingMethod("WITH_FEATURE_COMBO", 1);
        public static final CheckingMethod WITHOUT_FEATURE_COMBO_FIRST_AND_THEN_WITH_IT = new CheckingMethod("WITHOUT_FEATURE_COMBO_FIRST_AND_THEN_WITH_IT", 2);

        private static final /* synthetic */ CheckingMethod[] $values() {
            return new CheckingMethod[]{WITHOUT_FEATURE_COMBO, WITH_FEATURE_COMBO, WITHOUT_FEATURE_COMBO_FIRST_AND_THEN_WITH_IT};
        }

        public static CheckingMethod valueOf(String str) {
            return (CheckingMethod) Enum.valueOf(CheckingMethod.class, str);
        }

        public static CheckingMethod[] values() {
            return (CheckingMethod[]) $VALUES.clone();
        }

        private CheckingMethod(String str, int i) {
        }

        static {
            CheckingMethod[] checkingMethodArr$values = $values();
            $VALUES = checkingMethodArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(checkingMethodArr$values);
        }
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J4\u0010\u0004\u001a\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u001c\u0010\t\u001a\u0018\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u00070\nH\u0002¨\u0006\r"}, d2 = {"Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "isUltraHdrOn", _UrlKt.FRAGMENT_ENCODE_SET, "attachedSurfaces", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/core/impl/AttachedSurfaceInfo;", "newUseCaseConfigsSupportedSizeMap", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/core/impl/UseCaseConfig;", "Landroid/util/Size;", "camera-camera2"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean isUltraHdrOn(List<? extends AttachedSurfaceInfo> attachedSurfaces, Map<UseCaseConfig<?>, ? extends List<Size>> newUseCaseConfigsSupportedSizeMap) {
            Iterator<? extends AttachedSurfaceInfo> it = attachedSurfaces.iterator();
            while (it.hasNext()) {
                if (it.next().getImageFormat() == 4101) {
                    return true;
                }
            }
            Iterator<UseCaseConfig<?>> it2 = newUseCaseConfigsSupportedSizeMap.keySet().iterator();
            while (it2.hasNext()) {
                if (it2.next().getInputFormat() == 4101) {
                    return true;
                }
            }
            return false;
        }
    }
}
