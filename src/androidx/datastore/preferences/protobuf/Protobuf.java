package androidx.datastore.preferences.protobuf;

import java.util.concurrent.ConcurrentMap;
import p022j$.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
final class Protobuf {
    private static final Protobuf INSTANCE = new Protobuf();
    static boolean assumeLiteRuntime = false;
    private final ConcurrentMap schemaCache = new ConcurrentHashMap();
    private final SchemaFactory schemaFactory = new ManifestSchemaFactory();

    public static Protobuf getInstance() {
        return INSTANCE;
    }

    public Schema schemaFor(Class cls) {
        Schema schemaRegisterSchema;
        Internal.checkNotNull(cls, "messageType");
        Schema schemaCreateSchema = (Schema) this.schemaCache.get(cls);
        return (schemaCreateSchema != null || (schemaRegisterSchema = registerSchema(cls, (schemaCreateSchema = this.schemaFactory.createSchema(cls)))) == null) ? schemaCreateSchema : schemaRegisterSchema;
    }

    public Schema schemaFor(Object obj) {
        return schemaFor((Class) obj.getClass());
    }

    public Schema registerSchema(Class cls, Schema schema) {
        Internal.checkNotNull(cls, "messageType");
        Internal.checkNotNull(schema, "schema");
        return (Schema) this.schemaCache.putIfAbsent(cls, schema);
    }

    private Protobuf() {
    }
}
