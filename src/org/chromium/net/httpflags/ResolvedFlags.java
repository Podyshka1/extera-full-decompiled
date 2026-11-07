package org.chromium.net.httpflags;

import com.google.protobuf.ByteString;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.StringTokenizer;
import okio.Segment$$ExternalSyntheticBUOutline1;
import org.chromium.base.metrics.ScopedSysTraceEvent;
import org.chromium.net.httpflags.FlagValue;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public final class ResolvedFlags {
    private final Map<String, Value> mFlags;

    public static final class Value {
        private final Object mValue;

        public enum Type {
            BOOL,
            INT,
            FLOAT,
            STRING,
            BYTES
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static Value resolve(FlagValue flagValue, String str, int[] iArr, boolean z) {
            for (FlagValue.ConstrainedValue constrainedValue : flagValue.getConstrainedValuesList()) {
                if (z || constrainedValue.getApplyEvenIfCronetTelemetryDisabled()) {
                    if (!constrainedValue.hasAppId() || constrainedValue.getAppId().equals(str)) {
                        if (!constrainedValue.hasMinVersion() || matchesVersion(iArr, ResolvedFlags.parseVersionString(constrainedValue.getMinVersion()))) {
                            return fromConstrainedValue(constrainedValue);
                        }
                    }
                }
            }
            return null;
        }

        private static boolean matchesVersion(int[] iArr, int[] iArr2) {
            int i = 0;
            while (i < Math.max(iArr.length, iArr2.length)) {
                int i2 = i < iArr.length ? iArr[i] : 0;
                int i3 = i < iArr2.length ? iArr2[i] : 0;
                if (i2 > i3) {
                    return true;
                }
                if (i2 < i3) {
                    return false;
                }
                i++;
            }
            return true;
        }

        private static Value fromConstrainedValue(FlagValue.ConstrainedValue constrainedValue) {
            FlagValue.ConstrainedValue.ValueCase valueCase = constrainedValue.getValueCase();
            switch (C25821.f922xcb7e21f1[valueCase.ordinal()]) {
                case 1:
                    return new Value(constrainedValue.getBoolValue());
                case 2:
                    return new Value(constrainedValue.getIntValue());
                case 3:
                    return new Value(constrainedValue.getFloatValue());
                case 4:
                    return new Value(constrainedValue.getStringValue());
                case 5:
                    return new Value(constrainedValue.getBytesValue());
                default:
                    f$$ExternalSyntheticBUOutline1.m215m("Flag value uses unknown value type ".concat(String.valueOf(valueCase)));
                case 6:
                    return null;
            }
        }

        public Value(boolean z) {
            this.mValue = Boolean.valueOf(z);
        }

        public Value(long j) {
            this.mValue = Long.valueOf(j);
        }

        public Value(float f) {
            this.mValue = Float.valueOf(f);
        }

        public Value(String str) {
            this.mValue = str;
        }

        public Value(ByteString byteString) {
            this.mValue = byteString;
        }

        public Type getType() {
            Object obj = this.mValue;
            if (obj instanceof Boolean) {
                return Type.BOOL;
            }
            if (obj instanceof Long) {
                return Type.INT;
            }
            if (obj instanceof Float) {
                return Type.FLOAT;
            }
            if (obj instanceof String) {
                return Type.STRING;
            }
            if (obj instanceof ByteString) {
                return Type.BYTES;
            }
            Segment$$ExternalSyntheticBUOutline1.m973m("Unexpected flag value type: ".concat(obj.getClass().getName()));
            return null;
        }

        private void checkType(Type type) {
            Type type2 = getType();
            if (type == type2) {
                return;
            }
            throw new IllegalStateException("Attempted to access flag value as " + String.valueOf(type) + ", but actual type is " + String.valueOf(type2));
        }

        public boolean getBoolValue() {
            checkType(Type.BOOL);
            return ((Boolean) this.mValue).booleanValue();
        }

        public long getIntValue() {
            checkType(Type.INT);
            return ((Long) this.mValue).longValue();
        }

        public float getFloatValue() {
            checkType(Type.FLOAT);
            return ((Float) this.mValue).floatValue();
        }

        public String getStringValue() {
            checkType(Type.STRING);
            return (String) this.mValue;
        }

        public ByteString getBytesValue() {
            checkType(Type.BYTES);
            return (ByteString) this.mValue;
        }

        public String toString() {
            return this.mValue.toString();
        }
    }

    /* JADX INFO: renamed from: org.chromium.net.httpflags.ResolvedFlags$1 */
    public static /* synthetic */ class C25821 {

        /* JADX INFO: renamed from: $SwitchMap$org$chromium$net$httpflags$FlagValue$ConstrainedValue$ValueCase */
        static final /* synthetic */ int[] f922xcb7e21f1;

        static {
            int[] iArr = new int[FlagValue.ConstrainedValue.ValueCase.values().length];
            f922xcb7e21f1 = iArr;
            try {
                iArr[FlagValue.ConstrainedValue.ValueCase.BOOL_VALUE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f922xcb7e21f1[FlagValue.ConstrainedValue.ValueCase.INT_VALUE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f922xcb7e21f1[FlagValue.ConstrainedValue.ValueCase.FLOAT_VALUE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f922xcb7e21f1[FlagValue.ConstrainedValue.ValueCase.STRING_VALUE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f922xcb7e21f1[FlagValue.ConstrainedValue.ValueCase.BYTES_VALUE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f922xcb7e21f1[FlagValue.ConstrainedValue.ValueCase.VALUE_NOT_SET.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public static ResolvedFlags resolve(Flags flags, String str, String str2, boolean z) {
        ScopedSysTraceEvent scopedSysTraceEventScoped = ScopedSysTraceEvent.scoped("Cronet ResolvedFlags#resolve");
        try {
            int[] versionString = parseVersionString(str2);
            HashMap map = new HashMap();
            for (Map.Entry<String, FlagValue> entry : flags.getFlagsMap().entrySet()) {
                try {
                    Value valueResolve = Value.resolve(entry.getValue(), str, versionString, z);
                    if (valueResolve != null) {
                        map.put(entry.getKey(), valueResolve);
                    }
                } catch (RuntimeException e) {
                    throw new IllegalArgumentException("Unable to resolve HTTP flag `" + entry.getKey() + "`", e);
                }
            }
            ResolvedFlags resolvedFlags = new ResolvedFlags(map);
            if (scopedSysTraceEventScoped != null) {
                scopedSysTraceEventScoped.close();
            }
            return resolvedFlags;
        } catch (Throwable th) {
            if (scopedSysTraceEventScoped != null) {
                try {
                    scopedSysTraceEventScoped.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public ResolvedFlags(Map<String, Value> map) {
        this.mFlags = map;
    }

    public Map<String, Value> flags() {
        return Collections.unmodifiableMap(this.mFlags);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int[] parseVersionString(String str) {
        try {
            if (str.isEmpty()) {
                throw new IllegalArgumentException("Version string is empty");
            }
            StringTokenizer stringTokenizer = new StringTokenizer(str, ".");
            int iCountTokens = stringTokenizer.countTokens();
            int[] iArr = new int[iCountTokens];
            for (int i = 0; i < iCountTokens; i++) {
                iArr[i] = Integer.parseInt(stringTokenizer.nextToken());
            }
            return iArr;
        } catch (RuntimeException e) {
            throw new IllegalArgumentException("Unable to parse HTTP flags version string: `" + str + "`", e);
        }
    }
}
