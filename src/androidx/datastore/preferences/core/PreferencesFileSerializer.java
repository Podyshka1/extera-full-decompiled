package androidx.datastore.preferences.core;

import androidx.datastore.core.CorruptionException;
import androidx.datastore.core.Serializer;
import androidx.datastore.preferences.PreferencesMapCompat;
import androidx.datastore.preferences.PreferencesProto$PreferenceMap;
import androidx.datastore.preferences.PreferencesProto$StringSet;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.datastore.preferences.core.Preferences;
import androidx.datastore.preferences.protobuf.ByteString;
import com.exteragram.messenger.plugins.PluginsConstants;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Map;
import java.util.Set;
import kotlin.LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\bÀ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\tJ'\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0018\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0011H\u0096@¢\u0006\u0004\b\u0013\u0010\u0014J \u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0016H\u0096@¢\u0006\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001c\u001a\u00020\u00028VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001b¨\u0006\u001d"}, d2 = {"Landroidx/datastore/preferences/core/PreferencesFileSerializer;", "Landroidx/datastore/core/Serializer;", "Landroidx/datastore/preferences/core/Preferences;", "<init>", "()V", _UrlKt.FRAGMENT_ENCODE_SET, "value", "Landroidx/datastore/preferences/PreferencesProto$Value;", "getValueProto", "(Ljava/lang/Object;)Landroidx/datastore/preferences/PreferencesProto$Value;", _UrlKt.FRAGMENT_ENCODE_SET, "name", "Landroidx/datastore/preferences/core/MutablePreferences;", "mutablePreferences", _UrlKt.FRAGMENT_ENCODE_SET, "addProtoEntryToPreferences", "(Ljava/lang/String;Landroidx/datastore/preferences/PreferencesProto$Value;Landroidx/datastore/preferences/core/MutablePreferences;)V", "Ljava/io/InputStream;", PluginsConstants.Settings.TYPE_INPUT, "readFrom", "(Ljava/io/InputStream;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "t", "Ljava/io/OutputStream;", "output", "writeTo", "(Landroidx/datastore/preferences/core/Preferences;Ljava/io/OutputStream;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getDefaultValue", "()Landroidx/datastore/preferences/core/Preferences;", "defaultValue", "datastore-preferences-core_release"}, m862k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nPreferencesFileSerializer.jvmAndroid.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PreferencesFileSerializer.jvmAndroid.kt\nandroidx/datastore/preferences/core/PreferencesFileSerializer\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,114:1\n215#2,2:115\n*S KotlinDebug\n*F\n+ 1 PreferencesFileSerializer.jvmAndroid.kt\nandroidx/datastore/preferences/core/PreferencesFileSerializer\n*L\n50#1:115,2\n*E\n"})
public final class PreferencesFileSerializer implements Serializer<Preferences> {
    public static final PreferencesFileSerializer INSTANCE = new PreferencesFileSerializer();

    @Metadata(m862k = 3, mv = {1, 8, 0}, xi = 48)
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
    public /* bridge */ /* synthetic */ Object writeTo(Preferences preferences, OutputStream outputStream, Continuation continuation) {
        return writeTo2(preferences, outputStream, (Continuation<? super Unit>) continuation);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.datastore.core.Serializer
    public Preferences getDefaultValue() {
        return PreferencesFactory.createEmpty();
    }

    @Override // androidx.datastore.core.Serializer
    public Object readFrom(InputStream inputStream, Continuation<? super Preferences> continuation) throws CorruptionException {
        PreferencesProto$PreferenceMap from = PreferencesMapCompat.INSTANCE.readFrom(inputStream);
        MutablePreferences mutablePreferencesCreateMutable = PreferencesFactory.createMutable(new Preferences.Pair[0]);
        for (Map.Entry<String, PreferencesProto$Value> entry : from.getPreferencesMap().entrySet()) {
            INSTANCE.addProtoEntryToPreferences(entry.getKey(), entry.getValue(), mutablePreferencesCreateMutable);
        }
        return mutablePreferencesCreateMutable.toPreferences();
    }

    /* JADX INFO: renamed from: writeTo, reason: avoid collision after fix types in other method */
    public Object writeTo2(Preferences preferences, OutputStream outputStream, Continuation<? super Unit> continuation) {
        Map<Preferences.Key<?>, Object> mapAsMap = preferences.asMap();
        PreferencesProto$PreferenceMap.Builder builderNewBuilder = PreferencesProto$PreferenceMap.newBuilder();
        for (Map.Entry<Preferences.Key<?>, Object> entry : mapAsMap.entrySet()) {
            builderNewBuilder.putPreferences(entry.getKey().getName(), getValueProto(entry.getValue()));
        }
        builderNewBuilder.build().writeTo(outputStream);
        return Unit.INSTANCE;
    }

    private final PreferencesProto$Value getValueProto(Object value) {
        if (value instanceof Boolean) {
            return PreferencesProto$Value.newBuilder().setBoolean(((Boolean) value).booleanValue()).build();
        }
        if (value instanceof Float) {
            return PreferencesProto$Value.newBuilder().setFloat(((Number) value).floatValue()).build();
        }
        if (value instanceof Double) {
            return PreferencesProto$Value.newBuilder().setDouble(((Number) value).doubleValue()).build();
        }
        if (value instanceof Integer) {
            return PreferencesProto$Value.newBuilder().setInteger(((Number) value).intValue()).build();
        }
        if (value instanceof Long) {
            return PreferencesProto$Value.newBuilder().setLong(((Number) value).longValue()).build();
        }
        if (value instanceof String) {
            return PreferencesProto$Value.newBuilder().setString((String) value).build();
        }
        if (value instanceof Set) {
            return PreferencesProto$Value.newBuilder().setStringSet(PreferencesProto$StringSet.newBuilder().addAllStrings((Set) value)).build();
        }
        if (value instanceof byte[]) {
            return PreferencesProto$Value.newBuilder().setBytes(ByteString.copyFrom((byte[]) value)).build();
        }
        Segment$$ExternalSyntheticBUOutline1.m925m("PreferencesSerializer does not support type: ".concat(value.getClass().getName()));
        return null;
    }

    private final void addProtoEntryToPreferences(String name, PreferencesProto$Value value, MutablePreferences mutablePreferences) throws CorruptionException {
        PreferencesProto$Value.ValueCase valueCase = value.getValueCase();
        switch (valueCase == null ? -1 : WhenMappings.$EnumSwitchMapping$0[valueCase.ordinal()]) {
            case -1:
                throw new CorruptionException("Value case is null.", null, 2, null);
            case 0:
            default:
                LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0.m861m();
                return;
            case 1:
                mutablePreferences.set(PreferencesKeys.booleanKey(name), Boolean.valueOf(value.getBoolean()));
                return;
            case 2:
                mutablePreferences.set(PreferencesKeys.floatKey(name), Float.valueOf(value.getFloat()));
                return;
            case 3:
                mutablePreferences.set(PreferencesKeys.doubleKey(name), Double.valueOf(value.getDouble()));
                return;
            case 4:
                mutablePreferences.set(PreferencesKeys.intKey(name), Integer.valueOf(value.getInteger()));
                return;
            case 5:
                mutablePreferences.set(PreferencesKeys.longKey(name), Long.valueOf(value.getLong()));
                return;
            case 6:
                mutablePreferences.set(PreferencesKeys.stringKey(name), value.getString());
                return;
            case 7:
                mutablePreferences.set(PreferencesKeys.stringSetKey(name), CollectionsKt.toSet(value.getStringSet().getStringsList()));
                return;
            case 8:
                mutablePreferences.set(PreferencesKeys.byteArrayKey(name), value.getBytes().toByteArray());
                return;
            case 9:
                throw new CorruptionException("Value not set.", null, 2, null);
        }
    }
}
