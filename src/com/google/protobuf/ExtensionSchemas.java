package com.google.protobuf;

import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
abstract class ExtensionSchemas {
    private static final ExtensionSchema<?> LITE_SCHEMA = new ExtensionSchemaLite();
    private static final ExtensionSchema<?> FULL_SCHEMA = loadSchemaForFullRuntime();

    private static ExtensionSchema<?> loadSchemaForFullRuntime() {
        try {
            return (ExtensionSchema) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
            return null;
        }
    }

    public static ExtensionSchema<?> lite() {
        return LITE_SCHEMA;
    }

    public static ExtensionSchema<?> full() {
        ExtensionSchema<?> extensionSchema = FULL_SCHEMA;
        if (extensionSchema != null) {
            return extensionSchema;
        }
        Segment$$ExternalSyntheticBUOutline1.m925m("Protobuf runtime is not correctly loaded.");
        return null;
    }
}
