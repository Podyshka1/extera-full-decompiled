package org.mvel2.ast;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
import org.mvel2.CompileException;
import org.mvel2.DataConversion;
import org.mvel2.ParserContext;
import org.mvel2.UnresolveablePropertyException;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolver;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.integration.impl.MapVariableResolverFactory;
import org.mvel2.integration.impl.SimpleValueResolver;
import org.mvel2.util.CallableProxy;
import org.mvel2.util.SimpleIndexHashMapWrapper;

/* JADX INFO: loaded from: classes5.dex */
public class Proto extends ASTNode {
    private int cursorEnd;
    private int cursorStart;
    private String name;
    private Map<String, Receiver> receivers;

    public enum ReceiverType {
        DEFERRED,
        FUNCTION,
        PROPERTY
    }

    public Proto(String str, ParserContext parserContext) {
        super(parserContext);
        this.name = str;
        this.receivers = new SimpleIndexHashMapWrapper();
    }

    public Receiver declareReceiver(String str, Function function) {
        Receiver receiver = new Receiver((ProtoInstance) null, ReceiverType.FUNCTION, function);
        this.receivers.put(str, receiver);
        return receiver;
    }

    public Receiver declareReceiver(String str, Class cls, ExecutableStatement executableStatement) {
        Receiver receiver = new Receiver((ProtoInstance) null, ReceiverType.PROPERTY, executableStatement);
        this.receivers.put(str, receiver);
        return receiver;
    }

    public Receiver declareReceiver(String str, ReceiverType receiverType, ExecutableStatement executableStatement) {
        Receiver receiver = new Receiver((ProtoInstance) null, receiverType, executableStatement);
        this.receivers.put(str, receiver);
        return receiver;
    }

    public ProtoInstance newInstance(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return new ProtoInstance(this, obj, obj2, variableResolverFactory);
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        variableResolverFactory.createVariable(this.name, this);
        return this;
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        variableResolverFactory.createVariable(this.name, this);
        return this;
    }

    public class Receiver implements CallableProxy {
        private ExecutableStatement initValue;
        private ProtoInstance instance;
        private Object receiver;
        private ReceiverType type;

        public Receiver(ProtoInstance protoInstance, ReceiverType receiverType, Object obj) {
            this.instance = protoInstance;
            this.type = receiverType;
            this.receiver = obj;
        }

        public Receiver(ProtoInstance protoInstance, ReceiverType receiverType, ExecutableStatement executableStatement) {
            this.instance = protoInstance;
            this.type = receiverType;
            this.initValue = executableStatement;
        }

        @Override // org.mvel2.util.CallableProxy
        public Object call(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object[] objArr) {
            int i = C26811.$SwitchMap$org$mvel2$ast$Proto$ReceiverType[this.type.ordinal()];
            if (i == 1) {
                return ((Function) this.receiver).call(obj, obj2, new InvokationContextFactory(variableResolverFactory, this.instance.instanceStates), objArr);
            }
            if (i == 2) {
                return this.receiver;
            }
            if (i != 3) {
                return null;
            }
            Proto proto = Proto.this;
            throw new CompileException("unresolved prototype receiver", proto.expr, proto.start);
        }

        public Receiver init(ProtoInstance protoInstance, Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
            ExecutableStatement executableStatement;
            Proto proto = Proto.this;
            ReceiverType receiverType = this.type;
            return proto.new Receiver(protoInstance, receiverType, (receiverType != ReceiverType.PROPERTY || (executableStatement = this.initValue) == null) ? this.receiver : executableStatement.getValue(obj, obj2, variableResolverFactory));
        }

        public void setType(ReceiverType receiverType) {
            this.type = receiverType;
        }

        public void setInitValue(ExecutableStatement executableStatement) {
            this.initValue = executableStatement;
        }
    }

    /* JADX INFO: renamed from: org.mvel2.ast.Proto$1 */
    static /* synthetic */ class C26811 {
        static final /* synthetic */ int[] $SwitchMap$org$mvel2$ast$Proto$ReceiverType;

        static {
            int[] iArr = new int[ReceiverType.values().length];
            $SwitchMap$org$mvel2$ast$Proto$ReceiverType = iArr;
            try {
                iArr[ReceiverType.FUNCTION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$mvel2$ast$Proto$ReceiverType[ReceiverType.PROPERTY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$mvel2$ast$Proto$ReceiverType[ReceiverType.DEFERRED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public class ProtoInstance implements Map<String, Receiver> {
        private VariableResolverFactory instanceStates;
        private Proto protoType;
        private SimpleIndexHashMapWrapper<String, Receiver> receivers = new SimpleIndexHashMapWrapper<>();

        @Override // java.util.Map
        public void clear() {
        }

        @Override // java.util.Map
        public void putAll(Map<? extends String, ? extends Receiver> map) {
        }

        public ProtoInstance(Proto proto, Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
            this.protoType = proto;
            for (Map.Entry entry : proto.receivers.entrySet()) {
                this.receivers.put((String) entry.getKey(), ((Receiver) entry.getValue()).init(this, obj, obj2, variableResolverFactory));
            }
            this.instanceStates = Proto.this.new ProtoContextFactory(this.receivers);
        }

        public Proto getProtoType() {
            return this.protoType;
        }

        @Override // java.util.Map
        public int size() {
            return this.receivers.size();
        }

        @Override // java.util.Map
        public boolean isEmpty() {
            return this.receivers.isEmpty();
        }

        @Override // java.util.Map
        public boolean containsKey(Object obj) {
            return this.receivers.containsKey(obj);
        }

        @Override // java.util.Map
        public boolean containsValue(Object obj) {
            return this.receivers.containsValue(obj);
        }

        @Override // java.util.Map
        public Receiver get(Object obj) {
            return this.receivers.get(obj);
        }

        @Override // java.util.Map
        public Receiver put(String str, Receiver receiver) {
            return this.receivers.put(str, receiver);
        }

        @Override // java.util.Map
        public Receiver remove(Object obj) {
            return this.receivers.remove(obj);
        }

        @Override // java.util.Map
        public Set<String> keySet() {
            return this.receivers.keySet();
        }

        @Override // java.util.Map
        public Collection<Receiver> values() {
            return this.receivers.values();
        }

        @Override // java.util.Map
        public Set<Map.Entry<String, Receiver>> entrySet() {
            return this.receivers.entrySet();
        }
    }

    @Override // org.mvel2.ast.ASTNode
    public String getName() {
        return this.name;
    }

    @Override // org.mvel2.ast.ASTNode
    public String toString() {
        return "proto " + this.name;
    }

    public class ProtoContextFactory extends MapVariableResolverFactory {
        private final SimpleIndexHashMapWrapper<String, VariableResolver> variableResolvers;

        @Override // org.mvel2.integration.impl.BaseVariableResolverFactory
        public String[] getIndexedVariableNames() {
            return null;
        }

        @Override // org.mvel2.integration.impl.BaseVariableResolverFactory
        public void setIndexedVariableNames(String[] strArr) {
        }

        public ProtoContextFactory(SimpleIndexHashMapWrapper simpleIndexHashMapWrapper) {
            super(simpleIndexHashMapWrapper);
            this.variableResolvers = new SimpleIndexHashMapWrapper<>(simpleIndexHashMapWrapper, true);
        }

        @Override // org.mvel2.integration.impl.MapVariableResolverFactory, org.mvel2.integration.VariableResolverFactory
        public VariableResolver createVariable(String str, Object obj) {
            try {
                VariableResolver variableResolver = getVariableResolver(str);
                variableResolver.setValue(obj);
                return variableResolver;
            } catch (UnresolveablePropertyException unused) {
                ProtoResolver protoResolver = Proto.this.new ProtoResolver(this.variables, str);
                addResolver(str, protoResolver).setValue(obj);
                return protoResolver;
            }
        }

        @Override // org.mvel2.integration.impl.MapVariableResolverFactory, org.mvel2.integration.VariableResolverFactory
        public VariableResolver createVariable(String str, Object obj, Class<?> cls) {
            VariableResolver variableResolver;
            try {
                variableResolver = getVariableResolver(str);
            } catch (UnresolveablePropertyException unused) {
                variableResolver = null;
            }
            if (variableResolver != null && variableResolver.getType() != null) {
                String str2 = "variable already defined within scope: " + variableResolver.getType() + " " + str;
                Proto proto = Proto.this;
                throw new CompileException(str2, proto.expr, proto.start);
            }
            ProtoResolver protoResolver = Proto.this.new ProtoResolver(this.variables, str, cls);
            addResolver(str, protoResolver).setValue(obj);
            return protoResolver;
        }

        @Override // org.mvel2.integration.impl.BaseVariableResolverFactory, org.mvel2.integration.VariableResolverFactory
        public VariableResolver createIndexedVariable(int i, String str, Object obj, Class<?> cls) {
            SimpleIndexHashMapWrapper<String, VariableResolver> simpleIndexHashMapWrapper = this.variableResolvers;
            VariableResolver byIndex = simpleIndexHashMapWrapper != null ? simpleIndexHashMapWrapper.getByIndex(i) : null;
            if (byIndex != null && byIndex.getType() != null) {
                String str2 = "variable already defined within scope: " + byIndex.getType() + " " + str;
                Proto proto = Proto.this;
                throw new CompileException(str2, proto.expr, proto.start);
            }
            return createIndexedVariable(variableIndexOf(str), str, obj);
        }

        @Override // org.mvel2.integration.impl.BaseVariableResolverFactory, org.mvel2.integration.VariableResolverFactory
        public VariableResolver createIndexedVariable(int i, String str, Object obj) {
            VariableResolver byIndex = this.variableResolvers.getByIndex(i);
            if (byIndex == null) {
                this.variableResolvers.putAtIndex(i, new SimpleValueResolver(obj));
            } else {
                byIndex.setValue(obj);
            }
            return this.indexedVariableResolvers[i];
        }

        @Override // org.mvel2.integration.impl.BaseVariableResolverFactory, org.mvel2.integration.VariableResolverFactory
        public VariableResolver getIndexedVariableResolver(int i) {
            return this.variableResolvers.getByIndex(i);
        }

        @Override // org.mvel2.integration.impl.BaseVariableResolverFactory, org.mvel2.integration.VariableResolverFactory
        public VariableResolver setIndexedVariableResolver(int i, VariableResolver variableResolver) {
            this.variableResolvers.putAtIndex(i, variableResolver);
            return variableResolver;
        }

        @Override // org.mvel2.integration.impl.BaseVariableResolverFactory, org.mvel2.integration.VariableResolverFactory
        public int variableIndexOf(String str) {
            return this.variableResolvers.indexOf(str);
        }

        @Override // org.mvel2.integration.impl.MapVariableResolverFactory, org.mvel2.integration.impl.BaseVariableResolverFactory, org.mvel2.integration.VariableResolverFactory
        public VariableResolver getVariableResolver(String str) {
            VariableResolver variableResolver = this.variableResolvers.get(str);
            if (variableResolver != null) {
                return variableResolver;
            }
            if (this.variables.containsKey(str)) {
                SimpleIndexHashMapWrapper<String, VariableResolver> simpleIndexHashMapWrapper = this.variableResolvers;
                ProtoResolver protoResolver = Proto.this.new ProtoResolver(this.variables, str);
                simpleIndexHashMapWrapper.put(str, protoResolver);
                return protoResolver;
            }
            VariableResolverFactory variableResolverFactory = this.nextFactory;
            if (variableResolverFactory != null) {
                return variableResolverFactory.getVariableResolver(str);
            }
            throw new UnresolveablePropertyException("unable to resolve variable '" + str + "'");
        }
    }

    public class ProtoResolver implements VariableResolver {
        private Class<?> knownType;
        private String name;
        private Map<String, Object> variableMap;

        @Override // org.mvel2.integration.VariableResolver
        public int getFlags() {
            return 0;
        }

        public ProtoResolver(Map<String, Object> map, String str) {
            this.variableMap = map;
            this.name = str;
        }

        public ProtoResolver(Map<String, Object> map, String str, Class cls) {
            this.name = str;
            this.knownType = cls;
            this.variableMap = map;
        }

        public void setName(String str) {
            this.name = str;
        }

        @Override // org.mvel2.integration.VariableResolver
        public void setStaticType(Class cls) {
            this.knownType = cls;
        }

        @Override // org.mvel2.integration.VariableResolver
        public String getName() {
            return this.name;
        }

        @Override // org.mvel2.integration.VariableResolver
        public Class getType() {
            return this.knownType;
        }

        @Override // org.mvel2.integration.VariableResolver
        public void setValue(Object obj) {
            if (this.knownType != null && obj != null) {
                Class<?> cls = obj.getClass();
                Class<?> cls2 = this.knownType;
                if (cls != cls2) {
                    if (!DataConversion.canConvert(cls2, obj.getClass())) {
                        String str = "cannot assign " + obj.getClass().getName() + " to type: " + this.knownType.getName();
                        Proto proto = Proto.this;
                        throw new CompileException(str, proto.expr, proto.start);
                    }
                    try {
                        obj = DataConversion.convert(obj, this.knownType);
                    } catch (Exception unused) {
                        String str2 = "cannot convert value of " + obj.getClass().getName() + " to: " + this.knownType.getName();
                        Proto proto2 = Proto.this;
                        throw new CompileException(str2, proto2.expr, proto2.start);
                    }
                }
            }
            ((Receiver) this.variableMap.get(this.name)).receiver = obj;
        }

        @Override // org.mvel2.integration.VariableResolver
        public Object getValue() {
            return ((Receiver) this.variableMap.get(this.name)).receiver;
        }
    }

    public void setCursorPosition(int i, int i2) {
        this.cursorStart = i;
        this.cursorEnd = i2;
    }

    public int getCursorStart() {
        return this.cursorStart;
    }

    public int getCursorEnd() {
        return this.cursorEnd;
    }
}
