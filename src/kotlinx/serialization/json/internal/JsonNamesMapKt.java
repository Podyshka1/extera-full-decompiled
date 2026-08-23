package kotlinx.serialization.json.internal;

import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.descriptors.StructureKind;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonIgnoreUnknownKeys;
import kotlinx.serialization.json.JsonNames;
import kotlinx.serialization.json.JsonNamingStrategy;
import kotlinx.serialization.json.JsonSchemaCacheKt;
import kotlinx.serialization.json.internal.DescriptorSchemaCache;

/* JADX INFO: loaded from: classes.dex */
public abstract class JsonNamesMapKt {
    private static final DescriptorSchemaCache.Key JsonDeserializationNamesKey = new DescriptorSchemaCache.Key();
    private static final DescriptorSchemaCache.Key JsonSerializationNamesKey = new DescriptorSchemaCache.Key();

    private static final void buildDeserializationNamesMap$putOrThrow(Map map, SerialDescriptor serialDescriptor, String str, int i) {
        String str2 = Intrinsics.areEqual(serialDescriptor.getKind(), SerialKind.ENUM.INSTANCE) ? "enum value" : "property";
        if (map.containsKey(str)) {
            throw new JsonException("The suggested name '" + str + "' for " + str2 + ' ' + serialDescriptor.getElementName(i) + " is already one of the names for " + str2 + ' ' + serialDescriptor.getElementName(((Number) MapsKt.getValue(map, str)).intValue()) + " in " + serialDescriptor);
        }
        map.put(str, Integer.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Map buildDeserializationNamesMap(SerialDescriptor serialDescriptor, Json json) {
        String lowerCase;
        String[] strArrNames;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        boolean zDecodeCaseInsensitive = decodeCaseInsensitive(json, serialDescriptor);
        namingStrategy(serialDescriptor, json);
        int elementsCount = serialDescriptor.getElementsCount();
        for (int i = 0; i < elementsCount; i++) {
            List elementAnnotations = serialDescriptor.getElementAnnotations(i);
            ArrayList arrayList = new ArrayList();
            for (Object obj : elementAnnotations) {
                if (obj instanceof JsonNames) {
                    arrayList.add(obj);
                }
            }
            JsonNames jsonNames = (JsonNames) CollectionsKt.singleOrNull(arrayList);
            if (jsonNames != null && (strArrNames = jsonNames.names()) != null) {
                for (String lowerCase2 : strArrNames) {
                    if (zDecodeCaseInsensitive) {
                        lowerCase2 = lowerCase2.toLowerCase(Locale.ROOT);
                        Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
                    }
                    buildDeserializationNamesMap$putOrThrow(linkedHashMap, serialDescriptor, lowerCase2, i);
                }
            }
            if (zDecodeCaseInsensitive) {
                lowerCase = serialDescriptor.getElementName(i).toLowerCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            } else {
                lowerCase = null;
            }
            if (lowerCase != null) {
                buildDeserializationNamesMap$putOrThrow(linkedHashMap, serialDescriptor, lowerCase, i);
            }
        }
        return linkedHashMap.isEmpty() ? MapsKt.emptyMap() : linkedHashMap;
    }

    public static final Map deserializationNamesMap(final Json json, final SerialDescriptor descriptor) {
        Intrinsics.checkNotNullParameter(json, "<this>");
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return (Map) JsonSchemaCacheKt.getSchemaCache(json).getOrPut(descriptor, JsonDeserializationNamesKey, new Function0() { // from class: kotlinx.serialization.json.internal.JsonNamesMapKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return JsonNamesMapKt.buildDeserializationNamesMap(descriptor, json);
            }
        });
    }

    public static final String getJsonElementName(SerialDescriptor serialDescriptor, Json json, int i) {
        Intrinsics.checkNotNullParameter(serialDescriptor, "<this>");
        Intrinsics.checkNotNullParameter(json, "json");
        namingStrategy(serialDescriptor, json);
        return serialDescriptor.getElementName(i);
    }

    public static final JsonNamingStrategy namingStrategy(SerialDescriptor serialDescriptor, Json json) {
        Intrinsics.checkNotNullParameter(serialDescriptor, "<this>");
        Intrinsics.checkNotNullParameter(json, "json");
        if (Intrinsics.areEqual(serialDescriptor.getKind(), StructureKind.CLASS.INSTANCE)) {
            json.getConfiguration().getNamingStrategy();
        }
        return null;
    }

    private static final int getJsonNameIndexSlowPath(SerialDescriptor serialDescriptor, Json json, String str) {
        Integer num = (Integer) deserializationNamesMap(json, serialDescriptor).get(str);
        if (num != null) {
            return num.intValue();
        }
        return -3;
    }

    private static final boolean decodeCaseInsensitive(Json json, SerialDescriptor serialDescriptor) {
        return json.getConfiguration().getDecodeEnumsCaseInsensitive() && Intrinsics.areEqual(serialDescriptor.getKind(), SerialKind.ENUM.INSTANCE);
    }

    public static final int getJsonNameIndex(SerialDescriptor serialDescriptor, Json json, String name) {
        Intrinsics.checkNotNullParameter(serialDescriptor, "<this>");
        Intrinsics.checkNotNullParameter(json, "json");
        Intrinsics.checkNotNullParameter(name, "name");
        if (decodeCaseInsensitive(json, serialDescriptor)) {
            String lowerCase = name.toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            return getJsonNameIndexSlowPath(serialDescriptor, json, lowerCase);
        }
        namingStrategy(serialDescriptor, json);
        int elementIndex = serialDescriptor.getElementIndex(name);
        return (elementIndex == -3 && json.getConfiguration().getUseAlternativeNames()) ? getJsonNameIndexSlowPath(serialDescriptor, json, name) : elementIndex;
    }

    public static final boolean ignoreUnknownKeys(SerialDescriptor serialDescriptor, Json json) {
        Intrinsics.checkNotNullParameter(serialDescriptor, "<this>");
        Intrinsics.checkNotNullParameter(json, "json");
        if (json.getConfiguration().getIgnoreUnknownKeys()) {
            return true;
        }
        List annotations = serialDescriptor.getAnnotations();
        if ((annotations instanceof Collection) && annotations.isEmpty()) {
            return false;
        }
        Iterator it = annotations.iterator();
        while (it.hasNext()) {
            if (((Annotation) it.next()) instanceof JsonIgnoreUnknownKeys) {
                return true;
            }
        }
        return false;
    }
}
