package androidx.datastore.preferences.core;

import androidx.datastore.core.CorruptionException;
import androidx.datastore.core.Serializer;
import androidx.datastore.preferences.PreferencesMapCompat;
import androidx.datastore.preferences.PreferencesProto$PreferenceMap;
import androidx.datastore.preferences.PreferencesProto$StringSet;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.datastore.preferences.core.Preferences;
import androidx.datastore.preferences.protobuf.ByteString;
import androidx.datastore.preferences.protobuf.GeneratedMessageLite;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class PreferencesFileSerializer implements Serializer {
    public static final PreferencesFileSerializer INSTANCE = new PreferencesFileSerializer();

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[PreferencesProto$Value.ValueCase.values().length];
            try {
                iArr[PreferencesProto$Value.ValueCase.BOOLEAN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PreferencesProto$Value.ValueCase.FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[PreferencesProto$Value.ValueCase.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[PreferencesProto$Value.ValueCase.INTEGER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[PreferencesProto$Value.ValueCase.LONG.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[PreferencesProto$Value.ValueCase.STRING.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[PreferencesProto$Value.ValueCase.STRING_SET.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[PreferencesProto$Value.ValueCase.BYTES.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[PreferencesProto$Value.ValueCase.VALUE_NOT_SET.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private PreferencesFileSerializer() {
    }

    @Override // androidx.datastore.core.Serializer
    public Preferences getDefaultValue() {
        return PreferencesFactory.createEmpty();
    }

    @Override // androidx.datastore.core.Serializer
    public Object readFrom(InputStream inputStream, Continuation continuation) throws CorruptionException {
        PreferencesProto$PreferenceMap from = PreferencesMapCompat.Companion.readFrom(inputStream);
        MutablePreferences mutablePreferencesCreateMutable = PreferencesFactory.createMutable(new Preferences.Pair[0]);
        Map preferencesMap = from.getPreferencesMap();
        Intrinsics.checkNotNullExpressionValue(preferencesMap, "preferencesProto.preferencesMap");
        for (Map.Entry entry : preferencesMap.entrySet()) {
            String name = (String) entry.getKey();
            PreferencesProto$Value value = (PreferencesProto$Value) entry.getValue();
            PreferencesFileSerializer preferencesFileSerializer = INSTANCE;
            Intrinsics.checkNotNullExpressionValue(name, "name");
            Intrinsics.checkNotNullExpressionValue(value, "value");
            preferencesFileSerializer.addProtoEntryToPreferences(name, value, mutablePreferencesCreateMutable);
        }
        return mutablePreferencesCreateMutable.toPreferences();
    }

    @Override // androidx.datastore.core.Serializer
    public Object writeTo(Preferences preferences, OutputStream outputStream, Continuation continuation) {
        Map mapAsMap = preferences.asMap();
        PreferencesProto$PreferenceMap.Builder builderNewBuilder = PreferencesProto$PreferenceMap.newBuilder();
        for (Map.Entry entry : mapAsMap.entrySet()) {
            builderNewBuilder.putPreferences(((Preferences.Key) entry.getKey()).getName(), getValueProto(entry.getValue()));
        }
        ((PreferencesProto$PreferenceMap) builderNewBuilder.build()).writeTo(outputStream);
        return Unit.INSTANCE;
    }

    private final PreferencesProto$Value getValueProto(Object obj) {
        if (obj instanceof Boolean) {
            GeneratedMessageLite generatedMessageLiteBuild = PreferencesProto$Value.newBuilder().setBoolean(((Boolean) obj).booleanValue()).build();
            Intrinsics.checkNotNullExpressionValue(generatedMessageLiteBuild, "newBuilder().setBoolean(value).build()");
            return (PreferencesProto$Value) generatedMessageLiteBuild;
        }
        if (obj instanceof Float) {
            GeneratedMessageLite generatedMessageLiteBuild2 = PreferencesProto$Value.newBuilder().setFloat(((Number) obj).floatValue()).build();
            Intrinsics.checkNotNullExpressionValue(generatedMessageLiteBuild2, "newBuilder().setFloat(value).build()");
            return (PreferencesProto$Value) generatedMessageLiteBuild2;
        }
        if (obj instanceof Double) {
            GeneratedMessageLite generatedMessageLiteBuild3 = PreferencesProto$Value.newBuilder().setDouble(((Number) obj).doubleValue()).build();
            Intrinsics.checkNotNullExpressionValue(generatedMessageLiteBuild3, "newBuilder().setDouble(value).build()");
            return (PreferencesProto$Value) generatedMessageLiteBuild3;
        }
        if (obj instanceof Integer) {
            GeneratedMessageLite generatedMessageLiteBuild4 = PreferencesProto$Value.newBuilder().setInteger(((Number) obj).intValue()).build();
            Intrinsics.checkNotNullExpressionValue(generatedMessageLiteBuild4, "newBuilder().setInteger(value).build()");
            return (PreferencesProto$Value) generatedMessageLiteBuild4;
        }
        if (obj instanceof Long) {
            GeneratedMessageLite generatedMessageLiteBuild5 = PreferencesProto$Value.newBuilder().setLong(((Number) obj).longValue()).build();
            Intrinsics.checkNotNullExpressionValue(generatedMessageLiteBuild5, "newBuilder().setLong(value).build()");
            return (PreferencesProto$Value) generatedMessageLiteBuild5;
        }
        if (obj instanceof String) {
            GeneratedMessageLite generatedMessageLiteBuild6 = PreferencesProto$Value.newBuilder().setString((String) obj).build();
            Intrinsics.checkNotNullExpressionValue(generatedMessageLiteBuild6, "newBuilder().setString(value).build()");
            return (PreferencesProto$Value) generatedMessageLiteBuild6;
        }
        if (obj instanceof Set) {
            PreferencesProto$Value.Builder builderNewBuilder = PreferencesProto$Value.newBuilder();
            PreferencesProto$StringSet.Builder builderNewBuilder2 = PreferencesProto$StringSet.newBuilder();
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.collections.Set<kotlin.String>");
            GeneratedMessageLite generatedMessageLiteBuild7 = builderNewBuilder.setStringSet(builderNewBuilder2.addAllStrings((Set) obj)).build();
            Intrinsics.checkNotNullExpressionValue(generatedMessageLiteBuild7, "newBuilder()\n           …                 .build()");
            return (PreferencesProto$Value) generatedMessageLiteBuild7;
        }
        if (obj instanceof byte[]) {
            GeneratedMessageLite generatedMessageLiteBuild8 = PreferencesProto$Value.newBuilder().setBytes(ByteString.copyFrom((byte[]) obj)).build();
            Intrinsics.checkNotNullExpressionValue(generatedMessageLiteBuild8, "newBuilder().setBytes(By….copyFrom(value)).build()");
            return (PreferencesProto$Value) generatedMessageLiteBuild8;
        }
        throw new IllegalStateException("PreferencesSerializer does not support type: " + obj.getClass().getName());
    }

    private final void addProtoEntryToPreferences(String str, PreferencesProto$Value preferencesProto$Value, MutablePreferences mutablePreferences) throws CorruptionException {
        PreferencesProto$Value.ValueCase valueCase = preferencesProto$Value.getValueCase();
        switch (valueCase == null ? -1 : WhenMappings.$EnumSwitchMapping$0[valueCase.ordinal()]) {
            case -1:
                throw new CorruptionException("Value case is null.", null, 2, null);
            case 0:
            default:
                throw new NoWhenBranchMatchedException();
            case 1:
                mutablePreferences.set(PreferencesKeys.booleanKey(str), Boolean.valueOf(preferencesProto$Value.getBoolean()));
                return;
            case 2:
                mutablePreferences.set(PreferencesKeys.floatKey(str), Float.valueOf(preferencesProto$Value.getFloat()));
                return;
            case 3:
                mutablePreferences.set(PreferencesKeys.doubleKey(str), Double.valueOf(preferencesProto$Value.getDouble()));
                return;
            case 4:
                mutablePreferences.set(PreferencesKeys.intKey(str), Integer.valueOf(preferencesProto$Value.getInteger()));
                return;
            case 5:
                mutablePreferences.set(PreferencesKeys.longKey(str), Long.valueOf(preferencesProto$Value.getLong()));
                return;
            case 6:
                Preferences.Key keyStringKey = PreferencesKeys.stringKey(str);
                String string = preferencesProto$Value.getString();
                Intrinsics.checkNotNullExpressionValue(string, "value.string");
                mutablePreferences.set(keyStringKey, string);
                return;
            case 7:
                Preferences.Key keyStringSetKey = PreferencesKeys.stringSetKey(str);
                List stringsList = preferencesProto$Value.getStringSet().getStringsList();
                Intrinsics.checkNotNullExpressionValue(stringsList, "value.stringSet.stringsList");
                mutablePreferences.set(keyStringSetKey, CollectionsKt.toSet(stringsList));
                return;
            case 8:
                Preferences.Key keyByteArrayKey = PreferencesKeys.byteArrayKey(str);
                byte[] byteArray = preferencesProto$Value.getBytes().toByteArray();
                Intrinsics.checkNotNullExpressionValue(byteArray, "value.bytes.toByteArray()");
                mutablePreferences.set(keyByteArrayKey, byteArray);
                return;
            case 9:
                throw new CorruptionException("Value not set.", null, 2, null);
        }
    }
}
