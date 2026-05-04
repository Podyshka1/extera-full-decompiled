package com.google.gson;

import com.google.gson.internal.Excluder;
import com.google.gson.internal.bind.DefaultDateTypeAdapter;
import com.google.gson.internal.bind.TreeTypeAdapter;
import com.google.gson.internal.bind.TypeAdapters;
import com.google.gson.internal.sql.SqlTypesSupport;
import com.google.gson.reflect.TypeToken;
import java.lang.reflect.Type;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class GsonBuilder {
    private Excluder excluder = Excluder.DEFAULT;
    private LongSerializationPolicy longSerializationPolicy = LongSerializationPolicy.DEFAULT;
    private FieldNamingStrategy fieldNamingPolicy = FieldNamingPolicy.IDENTITY;
    private final Map instanceCreators = new HashMap();
    private final List factories = new ArrayList();
    private final List hierarchyFactories = new ArrayList();
    private boolean serializeNulls = false;
    private String datePattern = Gson.DEFAULT_DATE_PATTERN;
    private int dateStyle = 2;
    private int timeStyle = 2;
    private boolean complexMapKeySerialization = false;
    private boolean serializeSpecialFloatingPointValues = false;
    private boolean escapeHtmlChars = true;
    private FormattingStyle formattingStyle = Gson.DEFAULT_FORMATTING_STYLE;
    private boolean generateNonExecutableJson = false;
    private Strictness strictness = Gson.DEFAULT_STRICTNESS;
    private boolean useJdkUnsafe = true;
    private ToNumberStrategy objectToNumberStrategy = Gson.DEFAULT_OBJECT_TO_NUMBER_STRATEGY;
    private ToNumberStrategy numberToNumberStrategy = Gson.DEFAULT_NUMBER_TO_NUMBER_STRATEGY;
    private final ArrayDeque reflectionFilters = new ArrayDeque();

    public GsonBuilder addSerializationExclusionStrategy(ExclusionStrategy exclusionStrategy) {
        Objects.requireNonNull(exclusionStrategy);
        this.excluder = this.excluder.withExclusionStrategy(exclusionStrategy, true, false);
        return this;
    }

    public GsonBuilder setPrettyPrinting() {
        return setFormattingStyle(FormattingStyle.PRETTY);
    }

    public GsonBuilder setFormattingStyle(FormattingStyle formattingStyle) {
        Objects.requireNonNull(formattingStyle);
        this.formattingStyle = formattingStyle;
        return this;
    }

    public GsonBuilder registerTypeAdapter(Type type, Object obj) {
        Objects.requireNonNull(type);
        Objects.requireNonNull(obj);
        boolean z = obj instanceof JsonSerializer;
        if (!z && !(obj instanceof TypeAdapter)) {
            throw new IllegalArgumentException("Class " + obj.getClass().getName() + " does not implement any supported type adapter class or interface");
        }
        if (hasNonOverridableAdapter(type)) {
            throw new IllegalArgumentException("Cannot override built-in adapter for " + type);
        }
        if (z) {
            this.factories.add(TreeTypeAdapter.newFactoryWithMatchRawType(TypeToken.get(type), obj));
        }
        if (obj instanceof TypeAdapter) {
            this.factories.add(TypeAdapters.newFactory(TypeToken.get(type), (TypeAdapter) obj));
        }
        return this;
    }

    private static boolean hasNonOverridableAdapter(Type type) {
        return type == Object.class;
    }

    public GsonBuilder registerTypeAdapterFactory(TypeAdapterFactory typeAdapterFactory) {
        Objects.requireNonNull(typeAdapterFactory);
        this.factories.add(typeAdapterFactory);
        return this;
    }

    public GsonBuilder registerTypeHierarchyAdapter(Class cls, Object obj) {
        Objects.requireNonNull(cls);
        Objects.requireNonNull(obj);
        boolean z = obj instanceof JsonSerializer;
        if (!z && !(obj instanceof TypeAdapter)) {
            throw new IllegalArgumentException("Class " + obj.getClass().getName() + " does not implement any supported type adapter class or interface");
        }
        if (z) {
            this.hierarchyFactories.add(TreeTypeAdapter.newTypeHierarchyFactory(cls, obj));
        }
        if (obj instanceof TypeAdapter) {
            this.factories.add(TypeAdapters.newTypeHierarchyFactory(cls, (TypeAdapter) obj));
        }
        return this;
    }

    public GsonBuilder serializeSpecialFloatingPointValues() {
        this.serializeSpecialFloatingPointValues = true;
        return this;
    }

    public Gson create() {
        ArrayList arrayList = new ArrayList(this.factories.size() + this.hierarchyFactories.size() + 3);
        arrayList.addAll(this.factories);
        Collections.reverse(arrayList);
        ArrayList arrayList2 = new ArrayList(this.hierarchyFactories);
        Collections.reverse(arrayList2);
        arrayList.addAll(arrayList2);
        addTypeAdaptersForDate(this.datePattern, this.dateStyle, this.timeStyle, arrayList);
        return new Gson(this.excluder, this.fieldNamingPolicy, new HashMap(this.instanceCreators), this.serializeNulls, this.complexMapKeySerialization, this.generateNonExecutableJson, this.escapeHtmlChars, this.formattingStyle, this.strictness, this.serializeSpecialFloatingPointValues, this.useJdkUnsafe, this.longSerializationPolicy, this.datePattern, this.dateStyle, this.timeStyle, new ArrayList(this.factories), new ArrayList(this.hierarchyFactories), arrayList, this.objectToNumberStrategy, this.numberToNumberStrategy, new ArrayList(this.reflectionFilters));
    }

    private static void addTypeAdaptersForDate(String str, int i, int i2, List list) {
        TypeAdapterFactory typeAdapterFactoryCreateAdapterFactory;
        TypeAdapterFactory typeAdapterFactoryCreateAdapterFactory2;
        boolean z = SqlTypesSupport.SUPPORTS_SQL_TYPES;
        TypeAdapterFactory typeAdapterFactoryCreateAdapterFactory3 = null;
        if (str != null && !str.trim().isEmpty()) {
            typeAdapterFactoryCreateAdapterFactory = DefaultDateTypeAdapter.DateType.DATE.createAdapterFactory(str);
            if (z) {
                typeAdapterFactoryCreateAdapterFactory3 = SqlTypesSupport.TIMESTAMP_DATE_TYPE.createAdapterFactory(str);
                typeAdapterFactoryCreateAdapterFactory2 = SqlTypesSupport.DATE_DATE_TYPE.createAdapterFactory(str);
            } else {
                typeAdapterFactoryCreateAdapterFactory2 = null;
            }
        } else {
            if (i == 2 && i2 == 2) {
                return;
            }
            TypeAdapterFactory typeAdapterFactoryCreateAdapterFactory4 = DefaultDateTypeAdapter.DateType.DATE.createAdapterFactory(i, i2);
            if (z) {
                typeAdapterFactoryCreateAdapterFactory3 = SqlTypesSupport.TIMESTAMP_DATE_TYPE.createAdapterFactory(i, i2);
                TypeAdapterFactory typeAdapterFactoryCreateAdapterFactory5 = SqlTypesSupport.DATE_DATE_TYPE.createAdapterFactory(i, i2);
                typeAdapterFactoryCreateAdapterFactory = typeAdapterFactoryCreateAdapterFactory4;
                typeAdapterFactoryCreateAdapterFactory2 = typeAdapterFactoryCreateAdapterFactory5;
            } else {
                typeAdapterFactoryCreateAdapterFactory = typeAdapterFactoryCreateAdapterFactory4;
                typeAdapterFactoryCreateAdapterFactory2 = null;
            }
        }
        list.add(typeAdapterFactoryCreateAdapterFactory);
        if (z) {
            list.add(typeAdapterFactoryCreateAdapterFactory3);
            list.add(typeAdapterFactoryCreateAdapterFactory2);
        }
    }
}
