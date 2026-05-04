package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.AbstractMessageLite;
import androidx.datastore.preferences.protobuf.Internal;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import p022j$.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public abstract class GeneratedMessageLite extends AbstractMessageLite {
    private static final int MEMOIZED_SERIALIZED_SIZE_MASK = Integer.MAX_VALUE;
    private static final int MUTABLE_FLAG_MASK = Integer.MIN_VALUE;
    static final int UNINITIALIZED_HASH_CODE = 0;
    static final int UNINITIALIZED_SERIALIZED_SIZE = Integer.MAX_VALUE;
    private static Map<Object, GeneratedMessageLite> defaultInstanceMap = new ConcurrentHashMap();
    private int memoizedSerializedSize = -1;
    protected UnknownFieldSetLite unknownFields = UnknownFieldSetLite.getDefaultInstance();

    /* JADX INFO: loaded from: classes4.dex */
    public static class GeneratedExtension extends ExtensionLite {
    }

    public enum MethodToInvoke {
        GET_MEMOIZED_IS_INITIALIZED,
        SET_MEMOIZED_IS_INITIALIZED,
        BUILD_MESSAGE_INFO,
        NEW_MUTABLE_INSTANCE,
        NEW_BUILDER,
        GET_DEFAULT_INSTANCE,
        GET_PARSER
    }

    protected abstract Object dynamicMethod(MethodToInvoke methodToInvoke, Object obj, Object obj2);

    boolean isMutable() {
        return (this.memoizedSerializedSize & Integer.MIN_VALUE) != 0;
    }

    void markImmutable() {
        this.memoizedSerializedSize &= Integer.MAX_VALUE;
    }

    int getMemoizedHashCode() {
        return this.memoizedHashCode;
    }

    void setMemoizedHashCode(int i) {
        this.memoizedHashCode = i;
    }

    void clearMemoizedHashCode() {
        this.memoizedHashCode = 0;
    }

    boolean hashCodeIsNotMemoized() {
        return getMemoizedHashCode() == 0;
    }

    @Override // androidx.datastore.preferences.protobuf.MessageLiteOrBuilder
    public final GeneratedMessageLite getDefaultInstanceForType() {
        return (GeneratedMessageLite) dynamicMethod(MethodToInvoke.GET_DEFAULT_INSTANCE);
    }

    @Override // androidx.datastore.preferences.protobuf.MessageLite
    public final Builder newBuilderForType() {
        return (Builder) dynamicMethod(MethodToInvoke.NEW_BUILDER);
    }

    GeneratedMessageLite newMutableInstance() {
        return (GeneratedMessageLite) dynamicMethod(MethodToInvoke.NEW_MUTABLE_INSTANCE);
    }

    public String toString() {
        return MessageLiteToString.toString(this, super.toString());
    }

    public int hashCode() {
        if (isMutable()) {
            return computeHashCode();
        }
        if (hashCodeIsNotMemoized()) {
            setMemoizedHashCode(computeHashCode());
        }
        return getMemoizedHashCode();
    }

    int computeHashCode() {
        return Protobuf.getInstance().schemaFor(this).hashCode(this);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return Protobuf.getInstance().schemaFor(this).equals(this, (GeneratedMessageLite) obj);
        }
        return false;
    }

    protected void makeImmutable() {
        Protobuf.getInstance().schemaFor(this).makeImmutable(this);
        markImmutable();
    }

    protected final Builder createBuilder() {
        return (Builder) dynamicMethod(MethodToInvoke.NEW_BUILDER);
    }

    public final boolean isInitialized() {
        return isInitialized(this, true);
    }

    protected Object dynamicMethod(MethodToInvoke methodToInvoke, Object obj) {
        return dynamicMethod(methodToInvoke, obj, null);
    }

    protected Object dynamicMethod(MethodToInvoke methodToInvoke) {
        return dynamicMethod(methodToInvoke, null, null);
    }

    void clearMemoizedSerializedSize() {
        setMemoizedSerializedSize(Integer.MAX_VALUE);
    }

    int getMemoizedSerializedSize() {
        return this.memoizedSerializedSize & Integer.MAX_VALUE;
    }

    void setMemoizedSerializedSize(int i) {
        if (i < 0) {
            throw new IllegalStateException("serialized size must be non-negative, was " + i);
        }
        this.memoizedSerializedSize = (i & Integer.MAX_VALUE) | (this.memoizedSerializedSize & Integer.MIN_VALUE);
    }

    @Override // androidx.datastore.preferences.protobuf.MessageLite
    public void writeTo(CodedOutputStream codedOutputStream) {
        Protobuf.getInstance().schemaFor(this).writeTo(this, CodedOutputStreamWriter.forCodedOutput(codedOutputStream));
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractMessageLite
    int getSerializedSize(Schema schema) {
        if (isMutable()) {
            int iComputeSerializedSize = computeSerializedSize(schema);
            if (iComputeSerializedSize >= 0) {
                return iComputeSerializedSize;
            }
            throw new IllegalStateException("serialized size must be non-negative, was " + iComputeSerializedSize);
        }
        if (getMemoizedSerializedSize() != Integer.MAX_VALUE) {
            return getMemoizedSerializedSize();
        }
        int iComputeSerializedSize2 = computeSerializedSize(schema);
        setMemoizedSerializedSize(iComputeSerializedSize2);
        return iComputeSerializedSize2;
    }

    @Override // androidx.datastore.preferences.protobuf.MessageLite
    public int getSerializedSize() {
        return getSerializedSize(null);
    }

    private int computeSerializedSize(Schema schema) {
        if (schema == null) {
            return Protobuf.getInstance().schemaFor(this).getSerializedSize(this);
        }
        return schema.getSerializedSize(this);
    }

    Object buildMessageInfo() {
        return dynamicMethod(MethodToInvoke.BUILD_MESSAGE_INFO);
    }

    static GeneratedMessageLite getDefaultInstance(Class cls) {
        GeneratedMessageLite generatedMessageLite = defaultInstanceMap.get(cls);
        if (generatedMessageLite == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                generatedMessageLite = defaultInstanceMap.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        if (generatedMessageLite != null) {
            return generatedMessageLite;
        }
        GeneratedMessageLite defaultInstanceForType = ((GeneratedMessageLite) UnsafeUtil.allocateInstance(cls)).getDefaultInstanceForType();
        if (defaultInstanceForType == null) {
            throw new IllegalStateException();
        }
        defaultInstanceMap.put(cls, defaultInstanceForType);
        return defaultInstanceForType;
    }

    protected static void registerDefaultInstance(Class cls, GeneratedMessageLite generatedMessageLite) {
        generatedMessageLite.markImmutable();
        defaultInstanceMap.put(cls, generatedMessageLite);
    }

    protected static Object newMessageInfo(MessageLite messageLite, String str, Object[] objArr) {
        return new RawMessageInfo(messageLite, str, objArr);
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static abstract class Builder extends AbstractMessageLite.Builder {
        private final GeneratedMessageLite defaultInstance;
        protected GeneratedMessageLite instance;

        protected Builder(GeneratedMessageLite generatedMessageLite) {
            this.defaultInstance = generatedMessageLite;
            if (generatedMessageLite.isMutable()) {
                throw new IllegalArgumentException("Default instance must be immutable.");
            }
            this.instance = newMutableInstance();
        }

        private GeneratedMessageLite newMutableInstance() {
            return this.defaultInstance.newMutableInstance();
        }

        protected final void copyOnWrite() {
            if (this.instance.isMutable()) {
                return;
            }
            copyOnWriteInternal();
        }

        protected void copyOnWriteInternal() {
            GeneratedMessageLite generatedMessageLiteNewMutableInstance = newMutableInstance();
            mergeFromInstance(generatedMessageLiteNewMutableInstance, this.instance);
            this.instance = generatedMessageLiteNewMutableInstance;
        }

        /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
        public Builder m2106clone() {
            Builder builderNewBuilderForType = getDefaultInstanceForType().newBuilderForType();
            builderNewBuilderForType.instance = buildPartial();
            return builderNewBuilderForType;
        }

        @Override // androidx.datastore.preferences.protobuf.MessageLite.Builder
        public GeneratedMessageLite buildPartial() {
            if (!this.instance.isMutable()) {
                return this.instance;
            }
            this.instance.makeImmutable();
            return this.instance;
        }

        public final GeneratedMessageLite build() {
            GeneratedMessageLite generatedMessageLiteBuildPartial = buildPartial();
            if (generatedMessageLiteBuildPartial.isInitialized()) {
                return generatedMessageLiteBuildPartial;
            }
            throw AbstractMessageLite.Builder.newUninitializedMessageException(generatedMessageLiteBuildPartial);
        }

        private static void mergeFromInstance(Object obj, Object obj2) {
            Protobuf.getInstance().schemaFor(obj).mergeFrom(obj, obj2);
        }

        @Override // androidx.datastore.preferences.protobuf.MessageLiteOrBuilder
        public GeneratedMessageLite getDefaultInstanceForType() {
            return this.defaultInstance;
        }
    }

    static Object invokeOrDie(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e);
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
        }
    }

    protected static final boolean isInitialized(GeneratedMessageLite generatedMessageLite, boolean z) {
        byte bByteValue = ((Byte) generatedMessageLite.dynamicMethod(MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED)).byteValue();
        if (bByteValue == 1) {
            return true;
        }
        if (bByteValue == 0) {
            return false;
        }
        boolean zIsInitialized = Protobuf.getInstance().schemaFor(generatedMessageLite).isInitialized(generatedMessageLite);
        if (z) {
            generatedMessageLite.dynamicMethod(MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED, zIsInitialized ? generatedMessageLite : null);
        }
        return zIsInitialized;
    }

    protected static Internal.ProtobufList emptyProtobufList() {
        return ProtobufArrayList.emptyList();
    }

    protected static Internal.ProtobufList mutableCopy(Internal.ProtobufList protobufList) {
        int size = protobufList.size();
        return protobufList.mutableCopyWithCapacity(size == 0 ? 10 : size * 2);
    }

    /* JADX INFO: loaded from: classes4.dex */
    protected static class DefaultInstanceBasedParser extends AbstractParser {
        private final GeneratedMessageLite defaultInstance;

        public DefaultInstanceBasedParser(GeneratedMessageLite generatedMessageLite) {
            this.defaultInstance = generatedMessageLite;
        }
    }

    static GeneratedMessageLite parsePartialFrom(GeneratedMessageLite generatedMessageLite, CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        GeneratedMessageLite generatedMessageLiteNewMutableInstance = generatedMessageLite.newMutableInstance();
        try {
            Schema schemaSchemaFor = Protobuf.getInstance().schemaFor(generatedMessageLiteNewMutableInstance);
            schemaSchemaFor.mergeFrom(generatedMessageLiteNewMutableInstance, CodedInputStreamReader.forCodedInput(codedInputStream), extensionRegistryLite);
            schemaSchemaFor.makeImmutable(generatedMessageLiteNewMutableInstance);
            return generatedMessageLiteNewMutableInstance;
        } catch (InvalidProtocolBufferException e) {
            e = e;
            if (e.getThrownFromInputStream()) {
                e = new InvalidProtocolBufferException(e);
            }
            throw e.setUnfinishedMessage(generatedMessageLiteNewMutableInstance);
        } catch (UninitializedMessageException e2) {
            throw e2.asInvalidProtocolBufferException().setUnfinishedMessage(generatedMessageLiteNewMutableInstance);
        } catch (IOException e3) {
            if (e3.getCause() instanceof InvalidProtocolBufferException) {
                throw ((InvalidProtocolBufferException) e3.getCause());
            }
            throw new InvalidProtocolBufferException(e3).setUnfinishedMessage(generatedMessageLiteNewMutableInstance);
        } catch (RuntimeException e4) {
            if (e4.getCause() instanceof InvalidProtocolBufferException) {
                throw ((InvalidProtocolBufferException) e4.getCause());
            }
            throw e4;
        }
    }

    private static GeneratedMessageLite checkMessageInitialized(GeneratedMessageLite generatedMessageLite) throws InvalidProtocolBufferException {
        if (generatedMessageLite == null || generatedMessageLite.isInitialized()) {
            return generatedMessageLite;
        }
        throw generatedMessageLite.newUninitializedMessageException().asInvalidProtocolBufferException().setUnfinishedMessage(generatedMessageLite);
    }

    protected static GeneratedMessageLite parseFrom(GeneratedMessageLite generatedMessageLite, InputStream inputStream) {
        return checkMessageInitialized(parsePartialFrom(generatedMessageLite, CodedInputStream.newInstance(inputStream), ExtensionRegistryLite.getEmptyRegistry()));
    }
}
