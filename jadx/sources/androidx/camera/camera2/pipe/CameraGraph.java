package androidx.camera.camera2.pipe;

import android.hardware.camera2.params.MeteringRectangle;
import android.os.Build;
import androidx.camera.camera2.adapter.EvCompValue$$ExternalSyntheticBackport0;
import androidx.camera.camera2.pipe.CameraStream;
import androidx.camera.camera2.pipe.compat.Camera2Quirks;
import androidx.camera.camera2.pipe.core.Log;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public interface CameraGraph extends CameraGraphBase, CameraControls3A {

    public static final class Config {
        private final String camera;
        private final String cameraBackendId;
        private ConcurrentCameraGraphs concurrentCameraGraphs;
        private final CameraBackendFactory customCameraBackend;
        private final List defaultListeners;
        private final Map defaultParameters;
        private final int defaultTemplate;
        private final List exclusiveStreamGroups;
        private final Flags flags;
        private final List graphStateListeners;
        private final List input;
        private final MetadataTransform metadataTransform;
        private final CameraStream.Config postviewStream;
        private final Map requiredParameters;
        private final String sessionColorSpace;
        private final int sessionMode;
        private final Map sessionParameters;
        private final int sessionTemplate;
        private final List streams;

        public /* synthetic */ Config(String str, List list, List list2, List list3, CameraStream.Config config, int i, Map map, int i2, int i3, Map map2, List list4, List list5, Map map3, String str2, CameraBackendFactory cameraBackendFactory, MetadataTransform metadataTransform, Flags flags, String str3, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, list, list2, list3, config, i, map, i2, i3, map2, list4, list5, map3, str2, cameraBackendFactory, metadataTransform, flags, str3);
        }

        /* JADX WARN: Removed duplicated region for block: B:51:0x00a5  */
        /* JADX WARN: Removed duplicated region for block: B:70:0x00dc  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public boolean equals(Object obj) {
            boolean zM1529equalsimpl0;
            boolean zM1535equalsimpl0;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Config)) {
                return false;
            }
            Config config = (Config) obj;
            if (!CameraId.m1605equalsimpl0(this.camera, config.camera) || !Intrinsics.areEqual(this.streams, config.streams) || !Intrinsics.areEqual(this.exclusiveStreamGroups, config.exclusiveStreamGroups) || !Intrinsics.areEqual(this.input, config.input) || !Intrinsics.areEqual(this.postviewStream, config.postviewStream) || !RequestTemplate.m1756equalsimpl0(this.sessionTemplate, config.sessionTemplate) || !Intrinsics.areEqual(this.sessionParameters, config.sessionParameters) || !OperatingMode.m1591equalsimpl0(this.sessionMode, config.sessionMode) || !RequestTemplate.m1756equalsimpl0(this.defaultTemplate, config.defaultTemplate) || !Intrinsics.areEqual(this.defaultParameters, config.defaultParameters) || !Intrinsics.areEqual(this.defaultListeners, config.defaultListeners) || !Intrinsics.areEqual(this.graphStateListeners, config.graphStateListeners) || !Intrinsics.areEqual(this.requiredParameters, config.requiredParameters)) {
                return false;
            }
            String str = this.cameraBackendId;
            String str2 = config.cameraBackendId;
            if (str == null) {
                zM1529equalsimpl0 = str2 == null;
            } else if (str2 != null) {
                zM1529equalsimpl0 = CameraBackendId.m1529equalsimpl0(str, str2);
            }
            if (!zM1529equalsimpl0 || !Intrinsics.areEqual(this.customCameraBackend, config.customCameraBackend) || !Intrinsics.areEqual(this.metadataTransform, config.metadataTransform) || !Intrinsics.areEqual(this.flags, config.flags)) {
                return false;
            }
            String str3 = this.sessionColorSpace;
            String str4 = config.sessionColorSpace;
            if (str3 == null) {
                zM1535equalsimpl0 = str4 == null;
            } else if (str4 != null) {
                zM1535equalsimpl0 = CameraColorSpace.m1535equalsimpl0(str3, str4);
            }
            return zM1535equalsimpl0;
        }

        public int hashCode() {
            int iM1606hashCodeimpl = ((((CameraId.m1606hashCodeimpl(this.camera) * 31) + this.streams.hashCode()) * 31) + this.exclusiveStreamGroups.hashCode()) * 31;
            List list = this.input;
            int iHashCode = (iM1606hashCodeimpl + (list == null ? 0 : list.hashCode())) * 31;
            CameraStream.Config config = this.postviewStream;
            int iHashCode2 = (((((((((((((((((iHashCode + (config == null ? 0 : config.hashCode())) * 31) + RequestTemplate.m1758hashCodeimpl(this.sessionTemplate)) * 31) + this.sessionParameters.hashCode()) * 31) + OperatingMode.m1592hashCodeimpl(this.sessionMode)) * 31) + RequestTemplate.m1758hashCodeimpl(this.defaultTemplate)) * 31) + this.defaultParameters.hashCode()) * 31) + this.defaultListeners.hashCode()) * 31) + this.graphStateListeners.hashCode()) * 31) + this.requiredParameters.hashCode()) * 31;
            String str = this.cameraBackendId;
            int iM1530hashCodeimpl = (iHashCode2 + (str == null ? 0 : CameraBackendId.m1530hashCodeimpl(str))) * 31;
            CameraBackendFactory cameraBackendFactory = this.customCameraBackend;
            int iHashCode3 = (((((iM1530hashCodeimpl + (cameraBackendFactory == null ? 0 : cameraBackendFactory.hashCode())) * 31) + this.metadataTransform.hashCode()) * 31) + this.flags.hashCode()) * 31;
            String str2 = this.sessionColorSpace;
            return iHashCode3 + (str2 != null ? CameraColorSpace.m1536hashCodeimpl(str2) : 0);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("Config(camera=");
            sb.append((Object) CameraId.m1607toStringimpl(this.camera));
            sb.append(", streams=");
            sb.append(this.streams);
            sb.append(", exclusiveStreamGroups=");
            sb.append(this.exclusiveStreamGroups);
            sb.append(", input=");
            sb.append(this.input);
            sb.append(", postviewStream=");
            sb.append(this.postviewStream);
            sb.append(", sessionTemplate=");
            sb.append((Object) RequestTemplate.m1759toStringimpl(this.sessionTemplate));
            sb.append(", sessionParameters=");
            sb.append(this.sessionParameters);
            sb.append(", sessionMode=");
            sb.append((Object) OperatingMode.m1593toStringimpl(this.sessionMode));
            sb.append(", defaultTemplate=");
            sb.append((Object) RequestTemplate.m1759toStringimpl(this.defaultTemplate));
            sb.append(", defaultParameters=");
            sb.append(this.defaultParameters);
            sb.append(", defaultListeners=");
            sb.append(this.defaultListeners);
            sb.append(", graphStateListeners=");
            sb.append(this.graphStateListeners);
            sb.append(", requiredParameters=");
            sb.append(this.requiredParameters);
            sb.append(", cameraBackendId=");
            String str = this.cameraBackendId;
            sb.append((Object) (str == null ? "null" : CameraBackendId.m1531toStringimpl(str)));
            sb.append(", customCameraBackend=");
            sb.append(this.customCameraBackend);
            sb.append(", metadataTransform=");
            sb.append(this.metadataTransform);
            sb.append(", flags=");
            sb.append(this.flags);
            sb.append(", sessionColorSpace=");
            String str2 = this.sessionColorSpace;
            sb.append((Object) (str2 != null ? CameraColorSpace.m1538toStringimpl(str2) : "null"));
            sb.append(')');
            return sb.toString();
        }

        private Config(String camera, List streams, List exclusiveStreamGroups, List list, CameraStream.Config config, int i, Map sessionParameters, int i2, int i3, Map defaultParameters, List defaultListeners, List graphStateListeners, Map requiredParameters, String str, CameraBackendFactory cameraBackendFactory, MetadataTransform metadataTransform, Flags flags, String str2) {
            Intrinsics.checkNotNullParameter(camera, "camera");
            Intrinsics.checkNotNullParameter(streams, "streams");
            Intrinsics.checkNotNullParameter(exclusiveStreamGroups, "exclusiveStreamGroups");
            Intrinsics.checkNotNullParameter(sessionParameters, "sessionParameters");
            Intrinsics.checkNotNullParameter(defaultParameters, "defaultParameters");
            Intrinsics.checkNotNullParameter(defaultListeners, "defaultListeners");
            Intrinsics.checkNotNullParameter(graphStateListeners, "graphStateListeners");
            Intrinsics.checkNotNullParameter(requiredParameters, "requiredParameters");
            Intrinsics.checkNotNullParameter(metadataTransform, "metadataTransform");
            Intrinsics.checkNotNullParameter(flags, "flags");
            this.camera = camera;
            this.streams = streams;
            this.exclusiveStreamGroups = exclusiveStreamGroups;
            this.input = list;
            this.postviewStream = config;
            this.sessionTemplate = i;
            this.sessionParameters = sessionParameters;
            this.sessionMode = i2;
            this.defaultTemplate = i3;
            this.defaultParameters = defaultParameters;
            this.defaultListeners = defaultListeners;
            this.graphStateListeners = graphStateListeners;
            this.requiredParameters = requiredParameters;
            this.cameraBackendId = str;
            this.customCameraBackend = cameraBackendFactory;
            this.metadataTransform = metadataTransform;
            this.flags = flags;
            this.sessionColorSpace = str2;
            if (str != null && cameraBackendFactory != null) {
                throw new IllegalStateException("Setting both cameraBackendId and customCameraBackend is not supported.");
            }
        }

        /* JADX INFO: renamed from: getCamera-Dz_R5H8, reason: not valid java name */
        public final String m1575getCameraDz_R5H8() {
            return this.camera;
        }

        public final List getStreams() {
            return this.streams;
        }

        public /* synthetic */ Config(String str, List list, List list2, List list3, CameraStream.Config config, int i, Map map, int i2, int i3, Map map2, List list4, List list5, Map map3, String str2, CameraBackendFactory cameraBackendFactory, MetadataTransform metadataTransform, Flags flags, String str3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, list, (i4 & 4) != 0 ? CollectionsKt.emptyList() : list2, (i4 & 8) != 0 ? null : list3, (i4 & 16) != 0 ? null : config, (i4 & 32) != 0 ? RequestTemplate.m1754constructorimpl(1) : i, (i4 & 64) != 0 ? MapsKt.emptyMap() : map, (i4 & 128) != 0 ? OperatingMode.Companion.m1597getNORMAL2uNL3no() : i2, (i4 & 256) != 0 ? RequestTemplate.m1754constructorimpl(1) : i3, (i4 & 512) != 0 ? MapsKt.emptyMap() : map2, (i4 & 1024) != 0 ? CollectionsKt.emptyList() : list4, (i4 & 2048) != 0 ? CollectionsKt.emptyList() : list5, (i4 & 4096) != 0 ? MapsKt.emptyMap() : map3, (i4 & 8192) != 0 ? null : str2, (i4 & 16384) != 0 ? null : cameraBackendFactory, (32768 & i4) != 0 ? new MetadataTransform(0, 0, null, 7, null) : metadataTransform, (65536 & i4) != 0 ? new Flags(false, false, null, null, 0, false, false, false, 255, null) : flags, (i4 & 131072) != 0 ? null : str3, null);
        }

        public final List getExclusiveStreamGroups() {
            return this.exclusiveStreamGroups;
        }

        public final List getInput() {
            return this.input;
        }

        public final CameraStream.Config getPostviewStream() {
            return this.postviewStream;
        }

        /* JADX INFO: renamed from: getSessionTemplate-fGx8uWA, reason: not valid java name */
        public final int m1580getSessionTemplatefGx8uWA() {
            return this.sessionTemplate;
        }

        public final Map getSessionParameters() {
            return this.sessionParameters;
        }

        /* JADX INFO: renamed from: getSessionMode-2uNL3no, reason: not valid java name */
        public final int m1579getSessionMode2uNL3no() {
            return this.sessionMode;
        }

        /* JADX INFO: renamed from: getDefaultTemplate-fGx8uWA, reason: not valid java name */
        public final int m1577getDefaultTemplatefGx8uWA() {
            return this.defaultTemplate;
        }

        public final Map getDefaultParameters() {
            return this.defaultParameters;
        }

        public final List getDefaultListeners() {
            return this.defaultListeners;
        }

        public final List getGraphStateListeners() {
            return this.graphStateListeners;
        }

        public final Map getRequiredParameters() {
            return this.requiredParameters;
        }

        /* JADX INFO: renamed from: getCameraBackendId-AKmI2lo, reason: not valid java name */
        public final String m1576getCameraBackendIdAKmI2lo() {
            return this.cameraBackendId;
        }

        public final CameraBackendFactory getCustomCameraBackend() {
            return this.customCameraBackend;
        }

        public final Flags getFlags() {
            return this.flags;
        }

        /* JADX INFO: renamed from: getSessionColorSpace-dxVZaPA, reason: not valid java name */
        public final String m1578getSessionColorSpacedxVZaPA() {
            return this.sessionColorSpace;
        }

        public final ConcurrentCameraGraphs getConcurrentCameraGraphs$camera_camera2_pipe() {
            return this.concurrentCameraGraphs;
        }

        public final void setConcurrentCameraGraphs$camera_camera2_pipe(ConcurrentCameraGraphs concurrentCameraGraphs) {
            this.concurrentCameraGraphs = concurrentCameraGraphs;
        }
    }

    public static final class ConcurrentConfig {
        private final List graphConfigs;

        /* JADX WARN: Removed duplicated region for block: B:16:0x0048  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x0053 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:44:? A[LOOP:1: B:10:0x002e->B:44:?, LOOP_END, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public ConcurrentConfig(List graphConfigs) {
            boolean zM1529equalsimpl0;
            boolean z;
            Intrinsics.checkNotNullParameter(graphConfigs, "graphConfigs");
            this.graphConfigs = graphConfigs;
            if (graphConfigs.size() < 2) {
                throw new IllegalStateException("Cannot create ConcurrentGraphConfig without 2 or more CameraGraph.Config(s)");
            }
            Config config = (Config) CollectionsKt.first(graphConfigs);
            List list = graphConfigs;
            if ((list instanceof Collection) && list.isEmpty()) {
                z = true;
            } else {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    String strM1576getCameraBackendIdAKmI2lo = ((Config) it.next()).m1576getCameraBackendIdAKmI2lo();
                    String strM1576getCameraBackendIdAKmI2lo2 = config.m1576getCameraBackendIdAKmI2lo();
                    if (strM1576getCameraBackendIdAKmI2lo == null) {
                        zM1529equalsimpl0 = strM1576getCameraBackendIdAKmI2lo2 == null;
                        if (zM1529equalsimpl0) {
                            z = false;
                            break;
                        }
                    } else {
                        if (strM1576getCameraBackendIdAKmI2lo2 != null) {
                            zM1529equalsimpl0 = CameraBackendId.m1529equalsimpl0(strM1576getCameraBackendIdAKmI2lo, strM1576getCameraBackendIdAKmI2lo2);
                        }
                        if (zM1529equalsimpl0) {
                        }
                    }
                }
                z = true;
            }
            if (!z) {
                throw new IllegalStateException("Each CameraGraph.Config must use the same camera backend!");
            }
            List list2 = this.graphConfigs;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
            Iterator it2 = list2.iterator();
            while (it2.hasNext()) {
                arrayList.add(CameraId.m1602boximpl(((Config) it2.next()).m1575getCameraDz_R5H8()));
            }
            if (!(CollectionsKt.distinct(arrayList).size() == this.graphConfigs.size())) {
                throw new IllegalStateException("Each CameraGraph.Config must have a distinct camera id!");
            }
        }

        public final List getGraphConfigs() {
            return this.graphConfigs;
        }
    }

    public static final class RepeatingRequestRequirementsBeforeCapture {
        private final CompletionBehavior completionBehavior;
        private final int repeatingFramesToComplete;

        public /* synthetic */ RepeatingRequestRequirementsBeforeCapture(int i, CompletionBehavior completionBehavior, DefaultConstructorMarker defaultConstructorMarker) {
            this(i, completionBehavior);
        }

        private RepeatingRequestRequirementsBeforeCapture(int i, CompletionBehavior completionBehavior) {
            Intrinsics.checkNotNullParameter(completionBehavior, "completionBehavior");
            this.repeatingFramesToComplete = i;
            this.completionBehavior = completionBehavior;
        }

        /* JADX INFO: renamed from: getRepeatingFramesToComplete-pVg5ArA, reason: not valid java name */
        public final int m1598getRepeatingFramesToCompletepVg5ArA() {
            return this.repeatingFramesToComplete;
        }

        public /* synthetic */ RepeatingRequestRequirementsBeforeCapture(int i, CompletionBehavior completionBehavior, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? 0 : i, (i2 & 2) != 0 ? CompletionBehavior.AT_LEAST : completionBehavior, null);
        }

        public final CompletionBehavior getCompletionBehavior() {
            return this.completionBehavior;
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        public static final class CompletionBehavior {
            private static final /* synthetic */ EnumEntries $ENTRIES;
            private static final /* synthetic */ CompletionBehavior[] $VALUES;
            public static final CompletionBehavior AT_LEAST = new CompletionBehavior("AT_LEAST", 0);
            public static final CompletionBehavior EXACT = new CompletionBehavior("EXACT", 1);

            private static final /* synthetic */ CompletionBehavior[] $values() {
                return new CompletionBehavior[]{AT_LEAST, EXACT};
            }

            public static CompletionBehavior valueOf(String str) {
                return (CompletionBehavior) Enum.valueOf(CompletionBehavior.class, str);
            }

            public static CompletionBehavior[] values() {
                return (CompletionBehavior[]) $VALUES.clone();
            }

            private CompletionBehavior(String str, int i) {
            }

            static {
                CompletionBehavior[] completionBehaviorArr$values = $values();
                $VALUES = completionBehaviorArr$values;
                $ENTRIES = EnumEntriesKt.enumEntries(completionBehaviorArr$values);
            }
        }
    }

    public static final class Flags {
        private final boolean abortCapturesOnStop;
        private final RepeatingRequestRequirementsBeforeCapture awaitRepeatingRequestBeforeCapture;
        private final Boolean awaitRepeatingRequestOnDisconnect;
        private final boolean closeCameraDeviceOnClose;
        private final boolean closeCaptureSessionOnDisconnect;
        private final boolean configureBlankSessionOnStop;
        private final boolean enableRestartDelays;
        private final int finalizeSessionOnCloseBehavior;

        public /* synthetic */ Flags(boolean z, boolean z2, RepeatingRequestRequirementsBeforeCapture repeatingRequestRequirementsBeforeCapture, Boolean bool, int i, boolean z3, boolean z4, boolean z5, DefaultConstructorMarker defaultConstructorMarker) {
            this(z, z2, repeatingRequestRequirementsBeforeCapture, bool, i, z3, z4, z5);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Flags)) {
                return false;
            }
            Flags flags = (Flags) obj;
            return this.configureBlankSessionOnStop == flags.configureBlankSessionOnStop && this.abortCapturesOnStop == flags.abortCapturesOnStop && Intrinsics.areEqual(this.awaitRepeatingRequestBeforeCapture, flags.awaitRepeatingRequestBeforeCapture) && Intrinsics.areEqual(this.awaitRepeatingRequestOnDisconnect, flags.awaitRepeatingRequestOnDisconnect) && FinalizeSessionOnCloseBehavior.m1583equalsimpl0(this.finalizeSessionOnCloseBehavior, flags.finalizeSessionOnCloseBehavior) && this.closeCaptureSessionOnDisconnect == flags.closeCaptureSessionOnDisconnect && this.closeCameraDeviceOnClose == flags.closeCameraDeviceOnClose && this.enableRestartDelays == flags.enableRestartDelays;
        }

        public int hashCode() {
            int iM10m = ((((EvCompValue$$ExternalSyntheticBackport0.m10m(this.configureBlankSessionOnStop) * 31) + EvCompValue$$ExternalSyntheticBackport0.m10m(this.abortCapturesOnStop)) * 31) + this.awaitRepeatingRequestBeforeCapture.hashCode()) * 31;
            Boolean bool = this.awaitRepeatingRequestOnDisconnect;
            return ((((((((iM10m + (bool == null ? 0 : bool.hashCode())) * 31) + FinalizeSessionOnCloseBehavior.m1584hashCodeimpl(this.finalizeSessionOnCloseBehavior)) * 31) + EvCompValue$$ExternalSyntheticBackport0.m10m(this.closeCaptureSessionOnDisconnect)) * 31) + EvCompValue$$ExternalSyntheticBackport0.m10m(this.closeCameraDeviceOnClose)) * 31) + EvCompValue$$ExternalSyntheticBackport0.m10m(this.enableRestartDelays);
        }

        public String toString() {
            return "Flags(configureBlankSessionOnStop=" + this.configureBlankSessionOnStop + ", abortCapturesOnStop=" + this.abortCapturesOnStop + ", awaitRepeatingRequestBeforeCapture=" + this.awaitRepeatingRequestBeforeCapture + ", awaitRepeatingRequestOnDisconnect=" + this.awaitRepeatingRequestOnDisconnect + ", finalizeSessionOnCloseBehavior=" + ((Object) FinalizeSessionOnCloseBehavior.m1585toStringimpl(this.finalizeSessionOnCloseBehavior)) + ", closeCaptureSessionOnDisconnect=" + this.closeCaptureSessionOnDisconnect + ", closeCameraDeviceOnClose=" + this.closeCameraDeviceOnClose + ", enableRestartDelays=" + this.enableRestartDelays + ')';
        }

        private Flags(boolean z, boolean z2, RepeatingRequestRequirementsBeforeCapture awaitRepeatingRequestBeforeCapture, Boolean bool, int i, boolean z3, boolean z4, boolean z5) {
            Intrinsics.checkNotNullParameter(awaitRepeatingRequestBeforeCapture, "awaitRepeatingRequestBeforeCapture");
            this.configureBlankSessionOnStop = z;
            this.abortCapturesOnStop = z2;
            this.awaitRepeatingRequestBeforeCapture = awaitRepeatingRequestBeforeCapture;
            this.awaitRepeatingRequestOnDisconnect = bool;
            this.finalizeSessionOnCloseBehavior = i;
            this.closeCaptureSessionOnDisconnect = z3;
            this.closeCameraDeviceOnClose = z4;
            this.enableRestartDelays = z5;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public /* synthetic */ Flags(boolean z, boolean z2, RepeatingRequestRequirementsBeforeCapture repeatingRequestRequirementsBeforeCapture, Boolean bool, int i, boolean z3, boolean z4, boolean z5, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? false : z, (i2 & 2) != 0 ? Build.VERSION.SDK_INT >= 30 : z2, (i2 & 4) != 0 ? new RepeatingRequestRequirementsBeforeCapture(0 == true ? 1 : 0, null, 3, 0 == true ? 1 : 0) : repeatingRequestRequirementsBeforeCapture, (i2 & 8) != 0 ? null : bool, (i2 & 16) != 0 ? FinalizeSessionOnCloseBehavior.Companion.m1587getOFFBm6Tfm4() : i, (i2 & 32) != 0 ? Camera2Quirks.Companion.shouldCloseCaptureSessionOnDisconnect$camera_camera2_pipe() : z3, (i2 & 64) != 0 ? false : z4, (i2 & 128) == 0 ? z5 : false, null);
        }

        public final boolean getAbortCapturesOnStop() {
            return this.abortCapturesOnStop;
        }

        public final RepeatingRequestRequirementsBeforeCapture getAwaitRepeatingRequestBeforeCapture() {
            return this.awaitRepeatingRequestBeforeCapture;
        }

        public final Boolean getAwaitRepeatingRequestOnDisconnect() {
            return this.awaitRepeatingRequestOnDisconnect;
        }

        /* JADX INFO: renamed from: getFinalizeSessionOnCloseBehavior-Bm6Tfm4, reason: not valid java name */
        public final int m1581getFinalizeSessionOnCloseBehaviorBm6Tfm4() {
            return this.finalizeSessionOnCloseBehavior;
        }

        public final boolean getCloseCaptureSessionOnDisconnect() {
            return this.closeCaptureSessionOnDisconnect;
        }

        public final boolean getCloseCameraDeviceOnClose() {
            return this.closeCameraDeviceOnClose;
        }

        public final boolean getEnableRestartDelays() {
            return this.enableRestartDelays;
        }

        public static final class FinalizeSessionOnCloseBehavior {
            public static final Companion Companion = new Companion(null);
            private static final int OFF = m1582constructorimpl(0);
            private static final int IMMEDIATE = m1582constructorimpl(1);
            private static final int TIMEOUT = m1582constructorimpl(2);

            /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
            private static int m1582constructorimpl(int i) {
                return i;
            }

            /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
            public static final boolean m1583equalsimpl0(int i, int i2) {
                return i == i2;
            }

            /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
            public static int m1584hashCodeimpl(int i) {
                return i;
            }

            /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
            public static String m1585toStringimpl(int i) {
                return "FinalizeSessionOnCloseBehavior(value=" + i + ')';
            }

            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                /* JADX INFO: renamed from: getOFF-Bm6Tfm4, reason: not valid java name */
                public final int m1587getOFFBm6Tfm4() {
                    return FinalizeSessionOnCloseBehavior.OFF;
                }

                /* JADX INFO: renamed from: getIMMEDIATE-Bm6Tfm4, reason: not valid java name */
                public final int m1586getIMMEDIATEBm6Tfm4() {
                    return FinalizeSessionOnCloseBehavior.IMMEDIATE;
                }

                /* JADX INFO: renamed from: getTIMEOUT-Bm6Tfm4, reason: not valid java name */
                public final int m1588getTIMEOUTBm6Tfm4() {
                    return FinalizeSessionOnCloseBehavior.TIMEOUT;
                }
            }
        }
    }

    public static final class OperatingMode {
        public static final Companion Companion = new Companion(null);
        private static final int NORMAL = m1590constructorimpl(0);
        private static final int HIGH_SPEED = m1590constructorimpl(1);
        private static final int EXTENSION = m1590constructorimpl(2);

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
        public static int m1590constructorimpl(int i) {
            return i;
        }

        /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
        public static final boolean m1591equalsimpl0(int i, int i2) {
            return i == i2;
        }

        /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
        public static int m1592hashCodeimpl(int i) {
            return i;
        }

        /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
        public static String m1593toStringimpl(int i) {
            return "OperatingMode(mode=" + i + ')';
        }

        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            /* JADX INFO: renamed from: getNORMAL-2uNL3no, reason: not valid java name */
            public final int m1597getNORMAL2uNL3no() {
                return OperatingMode.NORMAL;
            }

            /* JADX INFO: renamed from: getHIGH_SPEED-2uNL3no, reason: not valid java name */
            public final int m1596getHIGH_SPEED2uNL3no() {
                return OperatingMode.HIGH_SPEED;
            }

            /* JADX INFO: renamed from: getEXTENSION-2uNL3no, reason: not valid java name */
            public final int m1595getEXTENSION2uNL3no() {
                return OperatingMode.EXTENSION;
            }

            /* JADX INFO: renamed from: custom-EP6OhB0, reason: not valid java name */
            public final int m1594customEP6OhB0(int i) {
                if (i == m1597getNORMAL2uNL3no() || i == m1596getHIGH_SPEED2uNL3no()) {
                    if (Log.INSTANCE.getERROR_LOGGABLE()) {
                        android.util.Log.e("CXCP", "Custom operating mode " + i + " conflicts with standard modes");
                    }
                    throw new IllegalArgumentException(Unit.INSTANCE.toString());
                }
                return OperatingMode.m1590constructorimpl(i);
            }
        }
    }

    public static final class Constants3A {
        public static final Constants3A INSTANCE = new Constants3A();
        private static final MeteringRectangle[] METERING_REGIONS_EMPTY = new MeteringRectangle[0];
        private static final MeteringRectangle[] METERING_REGIONS_DEFAULT = {new MeteringRectangle(0, 0, 0, 0, 0)};
        private static final long FRAME_NUMBER_INVALID = FrameNumber.m1643constructorimpl(-1);

        private Constants3A() {
        }

        public final MeteringRectangle[] getMETERING_REGIONS_DEFAULT() {
            return METERING_REGIONS_DEFAULT;
        }
    }

    public interface Session extends CameraControls3A, AutoCloseable {
        /* JADX INFO: renamed from: lock3A--tS25XM, reason: not valid java name */
        Object mo1599lock3AtS25XM(AeMode aeMode, AfMode afMode, AwbMode awbMode, List list, List list2, List list3, Lock3ABehavior lock3ABehavior, Lock3ABehavior lock3ABehavior2, Lock3ABehavior lock3ABehavior3, AeMode aeMode2, Function1 function1, Function1 function12, int i, long j, long j2, Continuation continuation);

        Object lock3AForCapture(boolean z, boolean z2, int i, long j, Continuation continuation);

        void startRepeating(Request request);

        void stopRepeating();

        void submit(List list);

        Object unlock3A(Boolean bool, Boolean bool2, Boolean bool3, Function1 function1, int i, long j, Continuation continuation);

        Object unlock3APostCapture(boolean z, Continuation continuation);

        /* JADX INFO: renamed from: androidx.camera.camera2.pipe.CameraGraph$Session$-CC, reason: invalid class name */
        public abstract /* synthetic */ class CC {
            /* JADX INFO: renamed from: lock3A--tS25XM$default, reason: not valid java name */
            public static /* synthetic */ Object m1600lock3AtS25XM$default(Session session, AeMode aeMode, AfMode afMode, AwbMode awbMode, List list, List list2, List list3, Lock3ABehavior lock3ABehavior, Lock3ABehavior lock3ABehavior2, Lock3ABehavior lock3ABehavior3, AeMode aeMode2, Function1 function1, Function1 function12, int i, long j, long j2, Continuation continuation, int i2, Object obj) {
                long j3;
                Session session2;
                Continuation continuation2;
                if (obj != null) {
                    throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: lock3A--tS25XM");
                }
                AeMode aeMode3 = (i2 & 1) != 0 ? null : aeMode;
                AfMode afMode2 = (i2 & 2) != 0 ? null : afMode;
                AwbMode awbMode2 = (i2 & 4) != 0 ? null : awbMode;
                List list4 = (i2 & 8) != 0 ? null : list;
                List list5 = (i2 & 16) != 0 ? null : list2;
                List list6 = (i2 & 32) != 0 ? null : list3;
                Lock3ABehavior lock3ABehavior4 = (i2 & 64) != 0 ? null : lock3ABehavior;
                Lock3ABehavior lock3ABehavior5 = (i2 & 128) != 0 ? null : lock3ABehavior2;
                Lock3ABehavior lock3ABehavior6 = (i2 & 256) != 0 ? null : lock3ABehavior3;
                AeMode aeMode4 = (i2 & 512) != 0 ? null : aeMode2;
                Function1 function13 = (i2 & 1024) != 0 ? null : function1;
                Function1 function14 = (i2 & 2048) != 0 ? null : function12;
                int i3 = (i2 & 4096) != 0 ? 60 : i;
                long j4 = (i2 & 8192) != 0 ? 3000000000L : j;
                if ((i2 & 16384) != 0) {
                    j3 = 3000000000L;
                    continuation2 = continuation;
                    session2 = session;
                } else {
                    j3 = j2;
                    session2 = session;
                    continuation2 = continuation;
                }
                return session2.mo1599lock3AtS25XM(aeMode3, afMode2, awbMode2, list4, list5, list6, lock3ABehavior4, lock3ABehavior5, lock3ABehavior6, aeMode4, function13, function14, i3, j4, j3, continuation2);
            }

            public static /* synthetic */ Object unlock3A$default(Session session, Boolean bool, Boolean bool2, Boolean bool3, Function1 function1, int i, long j, Continuation continuation, int i2, Object obj) {
                if (obj != null) {
                    throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: unlock3A");
                }
                if ((i2 & 1) != 0) {
                    bool = null;
                }
                if ((i2 & 2) != 0) {
                    bool2 = null;
                }
                if ((i2 & 4) != 0) {
                    bool3 = null;
                }
                if ((i2 & 8) != 0) {
                    function1 = null;
                }
                if ((i2 & 16) != 0) {
                    i = 60;
                }
                if ((i2 & 32) != 0) {
                    j = 3000000000L;
                }
                return session.unlock3A(bool, bool2, bool3, function1, i, j, continuation);
            }

            public static /* synthetic */ Object lock3AForCapture$default(Session session, boolean z, boolean z2, int i, long j, Continuation continuation, int i2, Object obj) {
                if (obj != null) {
                    throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: lock3AForCapture");
                }
                if ((i2 & 1) != 0) {
                    z = true;
                }
                if ((i2 & 2) != 0) {
                    z2 = false;
                }
                if ((i2 & 4) != 0) {
                    i = 60;
                }
                if ((i2 & 8) != 0) {
                    j = 3000000000L;
                }
                int i3 = i;
                return session.lock3AForCapture(z, z2, i3, j, continuation);
            }
        }
    }
}
