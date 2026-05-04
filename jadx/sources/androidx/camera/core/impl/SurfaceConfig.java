package androidx.camera.core.impl;

import android.util.Size;
import androidx.camera.core.internal.utils.SizeUtil;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes4.dex */
public final class SurfaceConfig {
    private static final Map CONFIG_TYPES_BY_IMAGE_FORMAT;
    public static final Companion Companion = new Companion(null);
    public static final StreamUseCase DEFAULT_STREAM_USE_CASE = StreamUseCase.DEFAULT;
    private static final ConfigSize[] FEATURE_COMBO_QUERY_SUPPORTED_SIZES = {ConfigSize.S720P_16_9, ConfigSize.S1080P_4_3, ConfigSize.S1080P_16_9, ConfigSize.S1440P_16_9, ConfigSize.UHD, ConfigSize.X_VGA};
    private static final Map IMAGE_FORMATS_BY_CONFIG_TYPE;
    private final ConfigSize configSize;
    private final ConfigType configType;
    private final int imageFormat;
    private final StreamUseCase streamUseCase;

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

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SurfaceConfig)) {
            return false;
        }
        SurfaceConfig surfaceConfig = (SurfaceConfig) obj;
        return this.configType == surfaceConfig.configType && this.configSize == surfaceConfig.configSize && this.streamUseCase == surfaceConfig.streamUseCase;
    }

    public int hashCode() {
        return (((this.configType.hashCode() * 31) + this.configSize.hashCode()) * 31) + this.streamUseCase.hashCode();
    }

    public String toString() {
        return "SurfaceConfig(configType=" + this.configType + ", configSize=" + this.configSize + ", streamUseCase=" + this.streamUseCase + ')';
    }

    public SurfaceConfig(ConfigType configType, ConfigSize configSize, StreamUseCase streamUseCase) {
        Intrinsics.checkNotNullParameter(configType, "configType");
        Intrinsics.checkNotNullParameter(configSize, "configSize");
        Intrinsics.checkNotNullParameter(streamUseCase, "streamUseCase");
        this.configType = configType;
        this.configSize = configSize;
        this.streamUseCase = streamUseCase;
        Integer num = (Integer) IMAGE_FORMATS_BY_CONFIG_TYPE.get(configType);
        this.imageFormat = num != null ? num.intValue() : 0;
    }

    public final ConfigSize getConfigSize() {
        return this.configSize;
    }

    public final StreamUseCase getStreamUseCase() {
        return this.streamUseCase;
    }

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

        public final SurfaceConfig create(ConfigType type, ConfigSize size, StreamUseCase streamUseCase) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(size, "size");
            Intrinsics.checkNotNullParameter(streamUseCase, "streamUseCase");
            return new SurfaceConfig(type, size, streamUseCase);
        }

        public final ConfigType getConfigType(int i) {
            ConfigType configType = (ConfigType) SurfaceConfig.CONFIG_TYPES_BY_IMAGE_FORMAT.get(Integer.valueOf(i));
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

        public final SurfaceConfig transformSurfaceConfig(int i, Size size, SurfaceSizeDefinition surfaceSizeDefinition, int i2, ConfigSource configSource, StreamUseCase streamUseCase) {
            Intrinsics.checkNotNullParameter(size, "size");
            Intrinsics.checkNotNullParameter(surfaceSizeDefinition, "surfaceSizeDefinition");
            Intrinsics.checkNotNullParameter(configSource, "configSource");
            Intrinsics.checkNotNullParameter(streamUseCase, "streamUseCase");
            ConfigType configType = getConfigType(i);
            ConfigSize configSize = ConfigSize.NOT_SUPPORT;
            int area = SizeUtil.getArea(size);
            if (i2 == 1) {
                if (area <= SizeUtil.getArea(surfaceSizeDefinition.getS720pSize(i))) {
                    configSize = ConfigSize.S720P_16_9;
                } else if (area <= SizeUtil.getArea(surfaceSizeDefinition.getS1440pSize(i))) {
                    configSize = ConfigSize.S1440P_4_3;
                }
            } else if (configSource == ConfigSource.FEATURE_COMBINATION_TABLE) {
                Size maximumSize = surfaceSizeDefinition.getMaximumSize(i);
                ConfigSize[] configSizeArr = SurfaceConfig.FEATURE_COMBO_QUERY_SUPPORTED_SIZES;
                int length = configSizeArr.length;
                int i3 = 0;
                while (true) {
                    if (i3 >= length) {
                        break;
                    }
                    ConfigSize configSize2 = configSizeArr[i3];
                    if (Intrinsics.areEqual(size, configSize2.getRelatedFixedSize())) {
                        configSize = configSize2;
                        break;
                    }
                    i3++;
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
                Size maximumSize2 = surfaceSizeDefinition.getMaximumSize(i);
                Size ultraMaximumSize = surfaceSizeDefinition.getUltraMaximumSize(i);
                if ((maximumSize2 == null || area <= SizeUtil.getArea(maximumSize2)) && i2 != 2) {
                    configSize = ConfigSize.MAXIMUM;
                } else if (ultraMaximumSize != null && area <= SizeUtil.getArea(ultraMaximumSize)) {
                    configSize = ConfigSize.ULTRA_MAXIMUM;
                }
            }
            return create(configType, configSize, streamUseCase);
        }
    }

    static {
        Map mapMapOf = MapsKt.mapOf(TuplesKt.m1081to(ConfigType.YUV, 35), TuplesKt.m1081to(ConfigType.JPEG, 256), TuplesKt.m1081to(ConfigType.JPEG_R, 4101), TuplesKt.m1081to(ConfigType.RAW, 32), TuplesKt.m1081to(ConfigType.PRIV, 34));
        IMAGE_FORMATS_BY_CONFIG_TYPE = mapMapOf;
        Set<Map.Entry> setEntrySet = mapMapOf.entrySet();
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(setEntrySet, 10)), 16));
        for (Map.Entry entry : setEntrySet) {
            linkedHashMap.put(Integer.valueOf(((Number) entry.getValue()).intValue()), (ConfigType) entry.getKey());
        }
        CONFIG_TYPES_BY_IMAGE_FORMAT = linkedHashMap;
    }

    public final boolean isSupported(SurfaceConfig other) {
        StreamUseCase streamUseCase;
        Intrinsics.checkNotNullParameter(other, "other");
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
        Size previewSize;
        Intrinsics.checkNotNullParameter(definition, "definition");
        switch (WhenMappings.$EnumSwitchMapping$0[this.configSize.ordinal()]) {
            case 1:
                previewSize = definition.getPreviewSize();
                break;
            case 2:
                previewSize = definition.getRecordSize();
                break;
            case 3:
                previewSize = definition.getMaximumSize(this.imageFormat);
                break;
            case 4:
                previewSize = definition.getMaximum4x3Size(this.imageFormat);
                break;
            case 5:
                previewSize = definition.getMaximum16x9Size(this.imageFormat);
                break;
            case 6:
                previewSize = definition.getUltraMaximumSize(this.imageFormat);
                break;
            case 7:
                throw new IllegalStateException("Not supported config size");
            default:
                previewSize = this.configSize.getRelatedFixedSize();
                break;
        }
        Intrinsics.checkNotNull(previewSize);
        return previewSize;
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
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
    public static final class ConfigSize {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ ConfigSize[] $VALUES;
        public static final ConfigSize PREVIEW;
        public static final ConfigSize RECORD;

        /* JADX INFO: renamed from: id */
        private final int f24id;
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
            this.f24id = i2;
            this.relatedFixedSize = size;
        }

        /* synthetic */ ConfigSize(String str, int i, int i2, Size size, int i3, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, i, i2, (i3 & 2) != 0 ? null : size);
        }

        public final int getId() {
            return this.f24id;
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
