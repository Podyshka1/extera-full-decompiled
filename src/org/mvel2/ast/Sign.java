package org.mvel2.ast;

import java.io.Serializable;
import java.math.BigDecimal;
import java.math.BigInteger;
import org.mvel2.MVEL;
import org.mvel2.ParserContext;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.ParseTools;

/* JADX INFO: loaded from: classes5.dex */
public class Sign extends ASTNode {
    private Signer signer;
    private ExecutableStatement stmt;

    public interface Signer extends Serializable {
        Object sign(Object obj);
    }

    @Override // org.mvel2.ast.ASTNode
    public boolean isIdentifier() {
        return false;
    }

    public Sign(char[] cArr, int i, int i2, int i3, ParserContext parserContext) {
        super(parserContext);
        this.expr = cArr;
        int i4 = i + 1;
        this.start = i4;
        int i5 = i2 - 1;
        this.offset = i5;
        this.fields = i3;
        if ((i3 & 16) != 0) {
            ExecutableStatement executableStatement = (ExecutableStatement) ParseTools.subCompileExpression(cArr, i4, i5, parserContext);
            this.stmt = executableStatement;
            Class knownEgressType = executableStatement.getKnownEgressType();
            this.egressType = knownEgressType;
            if (knownEgressType == null || knownEgressType == Object.class) {
                return;
            }
            initSigner(knownEgressType);
        }
    }

    public ExecutableStatement getStatement() {
        return this.stmt;
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return sign(this.stmt.getValue(obj, obj2, variableResolverFactory));
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return sign(MVEL.eval(this.expr, this.start, this.offset, obj2, variableResolverFactory));
    }

    private Object sign(Object obj) {
        if (obj == null) {
            return null;
        }
        if (this.signer == null) {
            Class cls = this.egressType;
            if (cls == null || cls == Object.class) {
                this.egressType = obj.getClass();
            }
            initSigner(this.egressType);
        }
        return this.signer.sign(obj);
    }

    private void initSigner(Class cls) {
        Class<?> clsBoxPrimitive = ParseTools.boxPrimitive(cls);
        if (Integer.class.isAssignableFrom(clsBoxPrimitive)) {
            this.signer = new IntegerSigner();
            return;
        }
        if (Double.class.isAssignableFrom(clsBoxPrimitive)) {
            this.signer = new DoubleSigner();
            return;
        }
        if (Long.class.isAssignableFrom(clsBoxPrimitive)) {
            this.signer = new LongSigner();
            return;
        }
        if (Float.class.isAssignableFrom(clsBoxPrimitive)) {
            this.signer = new FloatSigner();
            return;
        }
        if (Short.class.isAssignableFrom(clsBoxPrimitive)) {
            this.signer = new ShortSigner();
            return;
        }
        if (BigInteger.class.isAssignableFrom(clsBoxPrimitive)) {
            this.signer = new BigIntSigner();
        } else if (BigDecimal.class.isAssignableFrom(clsBoxPrimitive)) {
            this.signer = new BigDecSigner();
        } else {
            Sign$$ExternalSyntheticBUOutline0.m1012m("illegal use of '-': cannot be applied to: ".concat(clsBoxPrimitive.getName()), this.expr, this.start);
        }
    }

    public class IntegerSigner implements Signer {
        private IntegerSigner() {
        }

        @Override // org.mvel2.ast.Sign.Signer
        public Object sign(Object obj) {
            return Integer.valueOf(-((Integer) obj).intValue());
        }
    }

    public class ShortSigner implements Signer {
        private ShortSigner() {
        }

        @Override // org.mvel2.ast.Sign.Signer
        public Object sign(Object obj) {
            return Integer.valueOf(-((Short) obj).shortValue());
        }
    }

    public class LongSigner implements Signer {
        private LongSigner() {
        }

        @Override // org.mvel2.ast.Sign.Signer
        public Object sign(Object obj) {
            return Long.valueOf(-((Long) obj).longValue());
        }
    }

    public class DoubleSigner implements Signer {
        private DoubleSigner() {
        }

        @Override // org.mvel2.ast.Sign.Signer
        public Object sign(Object obj) {
            return Double.valueOf(-((Double) obj).doubleValue());
        }
    }

    public class FloatSigner implements Signer {
        private FloatSigner() {
        }

        @Override // org.mvel2.ast.Sign.Signer
        public Object sign(Object obj) {
            return Float.valueOf(-((Float) obj).floatValue());
        }
    }

    public class BigIntSigner implements Signer {
        private BigIntSigner() {
        }

        @Override // org.mvel2.ast.Sign.Signer
        public Object sign(Object obj) {
            return new BigInteger(String.valueOf(-((BigInteger) obj).longValue()));
        }
    }

    public class BigDecSigner implements Signer {
        private BigDecSigner() {
        }

        @Override // org.mvel2.ast.Sign.Signer
        public Object sign(Object obj) {
            return new BigDecimal(-((BigDecimal) obj).doubleValue());
        }
    }
}
