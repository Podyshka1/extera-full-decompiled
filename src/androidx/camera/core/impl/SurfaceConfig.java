package androidx.camera.core.impl;

import android.util.Size;
import androidx.camera.core.internal.utils.SizeUtil;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0015\b\u0086\b\u0018\u0000 '2\u00020\u0001:\u0004'()*B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0015\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0000¢\u0006\u0004\b\f\u0010\rJ\u0015\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0014\u001a\u00020\u0013HÖ\u0001¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0017\u001a\u00020\u0016HÖ\u0001¢\u0006\u0004\b\u0017\u0010\u0018J\u001a\u0010\u0019\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0019\u0010\u001aR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u001e\u001a\u0004\b\u001f\u0010 R\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010!\u001a\u0004\b\"\u0010#R\u0017\u0010$\u001a\u00020\u00168\u0006¢\u0006\f\n\u0004\b$\u0010%\u001a\u0004\b&\u0010\u0018¨\u0006+"}, d2 = {"Landroidx/camera/core/impl/SurfaceConfig;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/core/impl/SurfaceConfig$ConfigType;", "configType", "Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;", "configSize", "Landroidx/camera/core/impl/StreamUseCase;", "streamUseCase", "<init>", "(Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;)V", "other", _UrlKt.FRAGMENT_ENCODE_SET, "isSupported", "(Landroidx/camera/core/impl/SurfaceConfig;)Z", "Landroidx/camera/core/impl/SurfaceSizeDefinition;", "definition", "Landroid/util/Size;", "getResolution", "(Landroidx/camera/core/impl/SurfaceSizeDefinition;)Landroid/util/Size;", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", _UrlKt.FRAGMENT_ENCODE_SET, "hashCode", "()I", "equals", "(Ljava/lang/Object;)Z", "Landroidx/camera/core/impl/SurfaceConfig$ConfigType;", "getConfigType", "()Landroidx/camera/core/impl/SurfaceConfig$ConfigType;", "Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;", "getConfigSize", "()Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;", "Landroidx/camera/core/impl/StreamUseCase;", "getStreamUseCase", "()Landroidx/camera/core/impl/StreamUseCase;", "imageFormat", "I", "getImageFormat", "Companion", "ConfigType", "ConfigSource", "ConfigSize", "camera-core"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSurfaceConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SurfaceConfig.kt\nandroidx/camera/core/impl/SurfaceConfig\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,385:1\n1222#2,2:386\n1252#2,4:388\n*S KotlinDebug\n*F\n+ 1 SurfaceConfig.kt\nandroidx/camera/core/impl/SurfaceConfig\n*L\n61#1:386,2\n61#1:388,4\n*E\n"})
public final /* data */ class SurfaceConfig {
    private static final Map<Integer, ConfigType> CONFIG_TYPES_BY_IMAGE_FORMAT;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @JvmField
    public static final StreamUseCase DEFAULT_STREAM_USE_CASE = StreamUseCase.DEFAULT;
    private static final ConfigSize[] FEATURE_COMBO_QUERY_SUPPORTED_SIZES = {ConfigSize.S720P_16_9, ConfigSize.S1080P_4_3, ConfigSize.S1080P_16_9, ConfigSize.S1440P_16_9, ConfigSize.UHD, ConfigSize.X_VGA};
    private static final Map<ConfigType, Integer> IMAGE_FORMATS_BY_CONFIG_TYPE;
    private final ConfigSize configSize;
    private final ConfigType configType;
    private final int imageFormat;
    private final StreamUseCase streamUseCase;

    @Metadata(m862k = 3, mv = {2, 1, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ConfigSize.values().length];
            try {
                iArr[ConfigSize.PREVIEW.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ConfigSize.RECORD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ConfigSize.MAXIMUM.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ConfigSize.MAXIMUM_4_3.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ConfigSize.MAXIMUM_16_9.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[ConfigSize.ULTRA_MAXIMUM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[ConfigSize.NOT_SUPPORT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SurfaceConfig)) {
            return false;
        }
        SurfaceConfig surfaceConfig = (SurfaceConfig) other;
        return this.configType == surfaceConfig.configType && this.configSize == surfaceConfig.configSize && this.streamUseCase == surfaceConfig.streamUseCase;
    }

    public int hashCode() {
        return (((this.configType.hashCode() * 31) + this.configSize.hashCode()) * 31) + this.streamUseCase.hashCode();
    }

    public String toString() {
        return "SurfaceConfig(configType=" + this.configType + ", configSize=" + this.configSize + ", streamUseCase=" + this.streamUseCase + ')';
    }

    public SurfaceConfig(ConfigType configType, ConfigSize configSize, StreamUseCase streamUseCase) {
        this.configType = configType;
        this.configSize = configSize;
        this.streamUseCase = streamUseCase;
        Integer num = IMAGE_FORMATS_BY_CONFIG_TYPE.get(configType);
        this.imageFormat = num != null ? num.intValue() : 0;
    }

    public final ConfigSize getConfigSize() {
        return this.configSize;
    }

    public final StreamUseCase getStreamUseCase() {
        return this.streamUseCase;
    }

    @Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\"\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\b2\b\b\u0002\u0010\u0013\u001a\u00020\u0005H\u0007J\u0010\u0010\u0014\u001a\u00020\f2\u0006\u0010\u0015\u001a\u00020\rH\u0007J>\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010\u001a\u001a\u00020\r2\b\b\u0002\u0010\u001b\u001a\u00020\u001c2\b\b\u0002\u0010\u0013\u001a\u00020\u0005H\u0007R\u0010\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\tR\u001a\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\f0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Landroidx/camera/core/impl/SurfaceConfig$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "DEFAULT_STREAM_USE_CASE", "Landroidx/camera/core/impl/StreamUseCase;", "FEATURE_COMBO_QUERY_SUPPORTED_SIZES", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;", "[Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;", "IMAGE_FORMATS_BY_CONFIG_TYPE", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/core/impl/SurfaceConfig$ConfigType;", _UrlKt.FRAGMENT_ENCODE_SET, "CONFIG_TYPES_BY_IMAGE_FORMAT", "create", "Landroidx/camera/core/impl/SurfaceConfig;", "type", "size", "streamUseCase", "getConfigType", "imageFormat", "transformSurfaceConfig", "Landroid/util/Size;", "surfaceSizeDefinition", "Landroidx/camera/core/impl/SurfaceSizeDefinition;", "cameraMode", "configSource", "Landroidx/camera/core/impl/SurfaceConfig$ConfigSource;", "camera-core"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public static /* synthetic */ SurfaceConfig create$default(Companion companion, ConfigType configType, ConfigSize configSize, StreamUseCase streamUseCase, int i, Object obj) {
            if ((i & 4) != 0) {
                streamUseCase = SurfaceConfig.DEFAULT_STREAM_USE_CASE;
            }
            return companion.create(configType, configSize, streamUseCase);
        }

        @JvmStatic
        @JvmOverloads
        public final SurfaceConfig create(ConfigType type, ConfigSize size, StreamUseCase streamUseCase) {
            return new SurfaceConfig(type, size, streamUseCase);
        }

        @JvmStatic
        public final ConfigType getConfigType(int imageFormat) {
            ConfigType configType = (ConfigType) SurfaceConfig.CONFIG_TYPES_BY_IMAGE_FORMAT.get(Integer.valueOf(imageFormat));
            return configType == null ? ConfigType.PRIV : configType;
        }

        public static /* synthetic */ SurfaceConfig transformSurfaceConfig$default(Companion companion, int i, Size size, SurfaceSizeDefinition surfaceSizeDefinition, int i2, ConfigSource configSource, StreamUseCase streamUseCase, int i3, Object obj) {
            if ((i3 & 8) != 0) {
                i2 = 0;
            }
            int i4 = i2;
            if ((i3 & 16) != 0) {
                configSource = ConfigSource.CAPTURE_SESSION_TABLES;
            }
            ConfigSource configSource2 = configSource;
            if ((i3 & 32) != 0) {
                streamUseCase = SurfaceConfig.DEFAULT_STREAM_USE_CASE;
            }
            return companion.transformSurfaceConfig(i, size, surfaceSizeDefinition, i4, configSource2, streamUseCase);
        }

        @JvmStatic
        @JvmOverloads
        public final SurfaceConfig transformSurfaceConfig(int imageFormat, Size size, SurfaceSizeDefinition surfaceSizeDefinition, int cameraMode, ConfigSource configSource, StreamUseCase streamUseCase) {
            ConfigType configType = getConfigType(imageFormat);
            ConfigSize configSize = ConfigSize.NOT_SUPPORT;
            int area = SizeUtil.getArea(size);
            if (cameraMode == 1) {
                if (area <= SizeUtil.getArea(surfaceSizeDefinition.getS720pSize(imageFormat))) {
                    configSize = ConfigSize.S720P_16_9;
                } else if (area <= SizeUtil.getArea(surfaceSizeDefinition.getS1440pSize(imageFormat))) {
                    configSize = ConfigSize.S1440P_4_3;
                }
            } else if (configSource == ConfigSource.FEATURE_COMBINATION_TABLE) {
                Size maximumSize = surfaceSizeDefinition.getMaximumSize(imageFormat);
                ConfigSize[] configSizeArr = SurfaceConfig.FEATURE_COMBO_QUERY_SUPPORTED_SIZES;
                int length = configSizeArr.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        break;
                    }
                    ConfigSize configSize2 = configSizeArr[i];
                    if (Intrinsics.areEqual(size, configSize2.getRelatedFixedSize())) {
                        configSize = configSize2;
                        break;
                    }
                    i++;
                }
                if (configSize == ConfigSize.NOT_SUPPORT && Intrinsics.areEqual(size, maximumSize)) {
                    configSize = ConfigSize.MAXIMUM;
                }
            } else if (area <= SizeUtil.getArea(surfaceSizeDefinition.getAnalysisSize())) {
                configSize = ConfigSize.VGA;
            } else if (area <= SizeUtil.getArea(surfaceSizeDefinition.getPreviewSize())) {
                configSize = ConfigSize.PREVIEW;
            } else if (area <= SizeUtil.getArea(surfaceSizeDefinition.getRecordSize())) {
                configSize = ConfigSize.RECORD;
            } else {
                Size maximumSize2 = surfaceSizeDefinition.getMaximumSize(imageFormat);
                Size ultraMaximumSize = surfaceSizeDefinition.getUltraMaximumSize(imageFormat);
                if ((maximumSize2 == null || area <= SizeUtil.getArea(maximumSize2)) && cameraMode != 2) {
                    configSize = ConfigSize.MAXIMUM;
                } else if (ultraMaximumSize != null && area <= SizeUtil.getArea(ultraMaximumSize)) {
                    configSize = ConfigSize.ULTRA_MAXIMUM;
                }
            }
            return create(configType, configSize, streamUseCase);
        }
    }

    static {
        Map<ConfigType, Integer> mapMapOf = MapsKt.mapOf(TuplesKt.to(ConfigType.YUV, 35), TuplesKt.to(ConfigType.JPEG, 256), TuplesKt.to(ConfigType.JPEG_R, 4101), TuplesKt.to(ConfigType.RAW, 32), TuplesKt.to(ConfigType.PRIV, 34));
        IMAGE_FORMATS_BY_CONFIG_TYPE = mapMapOf;
        Set<Map.Entry<ConfigType, Integer>> setEntrySet = mapMapOf.entrySet();
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(setEntrySet, 10)), 16));
        Iterator<T> it = setEntrySet.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            linkedHashMap.put(Integer.valueOf(((Number) entry.getValue()).intValue()), (ConfigType) entry.getKey());
        }
        CONFIG_TYPES_BY_IMAGE_FORMAT = linkedHashMap;
    }

    public final boolean isSupported(SurfaceConfig other) {
        StreamUseCase streamUseCase;
        if (other.configSize.getId() > this.configSize.getId() || other.configType != this.configType) {
            return false;
        }
        StreamUseCase streamUseCase2 = this.streamUseCase;
        StreamUseCase streamUseCase3 = StreamUseCase.DEFAULT;
        return streamUseCase2 == streamUseCase3 || (streamUseCase = other.streamUseCase) == streamUseCase3 || streamUseCase == streamUseCase2;
    }

    public final int getImageFormat() {
        return this.imageFormat;
    }

    public final Size getResolution(SurfaceSizeDefinition definition) {
        switch (WhenMappings.$EnumSwitchMapping$0[this.configSize.ordinal()]) {
            case 1:
                return definition.getPreviewSize();
            case 2:
                return definition.getRecordSize();
            case 3:
                return definition.getMaximumSize(this.imageFormat);
            case 4:
                return definition.getMaximum4x3Size(this.imageFormat);
            case 5:
                return definition.getMaximum16x9Size(this.imageFormat);
            case 6:
                return definition.getUltraMaximumSize(this.imageFormat);
            case 7:
                Segment$$ExternalSyntheticBUOutline1.m925m("Not supported config size");
                return null;
            default:
                return this.configSize.getRelatedFixedSize();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Landroidx/camera/core/impl/SurfaceConfig$ConfigType;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;I)V", "PRIV", "YUV", "JPEG", "JPEG_R", "RAW", "camera-core"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class ConfigType {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ ConfigType[] $VALUES;
        public static final ConfigType PRIV = new ConfigType("PRIV", 0);
        public static final ConfigType YUV = new ConfigType("YUV", 1);
        public static final ConfigType JPEG = new ConfigType("JPEG", 2);
        public static final ConfigType JPEG_R = new ConfigType("JPEG_R", 3);
        public static final ConfigType RAW = new ConfigType("RAW", 4);

        private static final /* synthetic */ ConfigType[] $values() {
            return new ConfigType[]{PRIV, YUV, JPEG, JPEG_R, RAW};
        }

        public static ConfigType valueOf(String str) {
            return (ConfigType) Enum.valueOf(ConfigType.class, str);
        }

        public static ConfigType[] values() {
            return (ConfigType[]) $VALUES.clone();
        }

        private ConfigType(String str, int i) {
        }

        static {
            ConfigType[] configTypeArr$values = $values();
            $VALUES = configTypeArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(configTypeArr$values);
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Landroidx/camera/core/impl/SurfaceConfig$ConfigSource;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;I)V", "FEATURE_COMBINATION_TABLE", "CAPTURE_SESSION_TABLES", "camera-core"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class ConfigSource {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ ConfigSource[] $VALUES;
        public static final ConfigSource FEATURE_COMBINATION_TABLE = new ConfigSource("FEATURE_COMBINATION_TABLE", 0);
        public static final ConfigSource CAPTURE_SESSION_TABLES = new ConfigSource("CAPTURE_SESSION_TABLES", 1);

        private static final /* synthetic */ ConfigSource[] $values() {
            return new ConfigSource[]{FEATURE_COMBINATION_TABLE, CAPTURE_SESSION_TABLES};
        }

        public static ConfigSource valueOf(String str) {
            return (ConfigSource) Enum.valueOf(ConfigSource.class, str);
        }

        public static ConfigSource[] values() {
            return (ConfigSource[]) $VALUES.clone();
        }

        private ConfigSource(String str, int i) {
        }

        static {
            ConfigSource[] configSourceArr$values = $values();
            $VALUES = configSourceArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(configSourceArr$values);
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0016\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001d\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001a¨\u0006\u001b"}, d2 = {"Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;", _UrlKt.FRAGMENT_ENCODE_SET, "id", _UrlKt.FRAGMENT_ENCODE_SET, "relatedFixedSize", "Landroid/util/Size;", "<init>", "(Ljava/lang/String;IILandroid/util/Size;)V", "getId", "()I", "getRelatedFixedSize", "()Landroid/util/Size;", "VGA", "X_VGA", "S720P_16_9", "PREVIEW", "S1080P_4_3", "S1080P_16_9", "S1440P_4_3", "S1440P_16_9", "UHD", "RECORD", "MAXIMUM", "MAXIMUM_4_3", "MAXIMUM_16_9", "ULTRA_MAXIMUM", "NOT_SUPPORT", "camera-core"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class ConfigSize {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ ConfigSize[] $VALUES;
        public static final ConfigSize PREVIEW;
        public static final ConfigSize RECORD;
        private final int id;
        private final Size relatedFixedSize;
        public static final ConfigSize VGA = new ConfigSize("VGA", 0, 0, new Size(640, 480));
        public static final ConfigSize X_VGA = new ConfigSize("X_VGA", 1, 1, new Size(1024, 768));
        public static final ConfigSize S720P_16_9 = new ConfigSize("S720P_16_9", 2, 2, new Size(1280, 720));
        public static final ConfigSize S1080P_4_3 = new ConfigSize("S1080P_4_3", 4, 4, new Size(1440, 1080));
        public static final ConfigSize S1080P_16_9 = new ConfigSize("S1080P_16_9", 5, 5, new Size(1920, 1080));
        public static final ConfigSize S1440P_4_3 = new ConfigSize("S1440P_4_3", 6, 6, new Size(1920, 1440));
        public static final ConfigSize S1440P_16_9 = new ConfigSize("S1440P_16_9", 7, 7, new Size(2560, 1440));
        public static final ConfigSize UHD = new ConfigSize("UHD", 8, 8, new Size(3840, 2160));
        public static final ConfigSize MAXIMUM = new ConfigSize("MAXIMUM", 10, 10, null, 2, null);
        public static final ConfigSize MAXIMUM_4_3 = new ConfigSize("MAXIMUM_4_3", 11, 11, null, 2, null);
        public static final ConfigSize MAXIMUM_16_9 = new ConfigSize("MAXIMUM_16_9", 12, 12, null, 2, null);
        public static final ConfigSize ULTRA_MAXIMUM = new ConfigSize("ULTRA_MAXIMUM", 13, 13, null, 2, null);
        public static final ConfigSize NOT_SUPPORT = new ConfigSize("NOT_SUPPORT", 14, 14, null, 2, null);

        private static final /* synthetic */ ConfigSize[] $values() {
            return new ConfigSize[]{VGA, X_VGA, S720P_16_9, PREVIEW, S1080P_4_3, S1080P_16_9, S1440P_4_3, S1440P_16_9, UHD, RECORD, MAXIMUM, MAXIMUM_4_3, MAXIMUM_16_9, ULTRA_MAXIMUM, NOT_SUPPORT};
        }

        public static ConfigSize valueOf(String str) {
            return (ConfigSize) Enum.valueOf(ConfigSize.class, str);
        }

        public static ConfigSize[] values() {
            return (ConfigSize[]) $VALUES.clone();
        }

        private ConfigSize(String str, int i, int i2, Size size) {
            this.id = i2;
            this.relatedFixedSize = size;
        }

        public /* synthetic */ ConfigSize(String str, int i, int i2, Size size, int i3, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, i, i2, (i3 & 2) != 0 ? null : size);
        }

        public final int getId() {
            return this.id;
        }

        public final Size getRelatedFixedSize() {
            return this.relatedFixedSize;
        }

        static {
            int i = 2;
            DefaultConstructorMarker defaultConstructorMarker = null;
            Size size = null;
            PREVIEW = new ConfigSize("PREVIEW", 3, 3, size, i, defaultConstructorMarker);
            RECORD = new ConfigSize("RECORD", 9, 9, size, i, defaultConstructorMarker);
            ConfigSize[] configSizeArr$values = $values();
            $VALUES = configSizeArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(configSizeArr$values);
        }
    }
}
