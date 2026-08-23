package org.mvel2.ast;

import java.io.Serializable;
import java.util.Iterator;
import java.util.LinkedList;
import org.mvel2.CompileException;
import org.mvel2.ParserContext;
import org.mvel2.compiler.AbstractParser;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.ArrayTools;
import org.mvel2.util.ParseTools;
import org.mvel2.util.ReflectionUtil;

/* JADX INFO: loaded from: classes5.dex */
public class TypeDescriptor implements Serializable {
    private ArraySize[] arraySize;
    private String className;
    private ExecutableStatement[] compiledArraySize;
    int endRange;
    private char[] expr;
    private int offset;
    private int start;

    public TypeDescriptor(char[] cArr, int i, int i2, int i3) {
        this.expr = cArr;
        this.start = i;
        this.offset = i2;
        updateClassName(cArr, i, i2, i3);
    }

    public void updateClassName(char[] cArr, int i, int i2, int i3) {
        ArraySize[] arraySizeArr;
        char c;
        this.expr = cArr;
        if (i2 == 0 || !ParseTools.isIdentifierPart(cArr[i]) || Character.isDigit(cArr[i])) {
            return;
        }
        int iFindFirst = ArrayTools.findFirst('(', i, i2, cArr);
        this.endRange = iFindFirst;
        if (iFindFirst == -1) {
            int iFindFirst2 = ArrayTools.findFirst('[', i, i2, cArr);
            this.endRange = iFindFirst2;
            if (iFindFirst2 != -1) {
                this.className = new String(cArr, i, iFindFirst2 - i).trim();
                LinkedList linkedList = new LinkedList();
                int i4 = i + i2;
                while (this.endRange < i4) {
                    while (true) {
                        int i5 = this.endRange;
                        if (i5 >= i4 || !ParseTools.isWhitespace(cArr[i5])) {
                            break;
                        } else {
                            this.endRange++;
                        }
                    }
                    int i6 = this.endRange;
                    if (i6 == i4 || (c = cArr[i6]) == '{') {
                        break;
                    }
                    if (c != '[') {
                        throw new CompileException("unexpected token in constructor", cArr, this.endRange);
                    }
                    int iBalancedCapture = ParseTools.balancedCapture(cArr, i6, i4, '[');
                    int i7 = this.endRange + 1;
                    this.endRange = i7;
                    linkedList.add(ParseTools.subset(cArr, i7, iBalancedCapture - i7));
                    this.endRange = iBalancedCapture + 1;
                }
                Iterator it = linkedList.iterator();
                this.arraySize = new ArraySize[linkedList.size()];
                int i8 = 0;
                int i9 = 0;
                while (true) {
                    arraySizeArr = this.arraySize;
                    if (i9 >= arraySizeArr.length) {
                        break;
                    }
                    arraySizeArr[i9] = new ArraySize((char[]) it.next());
                    i9++;
                }
                if ((i3 & 16) == 0) {
                    return;
                }
                this.compiledArraySize = new ExecutableStatement[arraySizeArr.length];
                while (true) {
                    ExecutableStatement[] executableStatementArr = this.compiledArraySize;
                    if (i8 >= executableStatementArr.length) {
                        return;
                    }
                    executableStatementArr[i8] = (ExecutableStatement) ParseTools.subCompileExpression(this.arraySize[i8].value);
                    i8++;
                }
            } else {
                this.className = new String(cArr, i, i2).trim();
            }
        } else {
            this.className = new String(cArr, i, iFindFirst - i).trim();
        }
    }

    public boolean isArray() {
        return this.arraySize != null;
    }

    public int getArrayLength() {
        return this.arraySize.length;
    }

    public ArraySize[] getArraySize() {
        return this.arraySize;
    }

    public ExecutableStatement[] getCompiledArraySize() {
        return this.compiledArraySize;
    }

    public String getClassName() {
        return this.className;
    }

    public void setClassName(String str) {
        this.className = str;
    }

    public boolean isClass() {
        String str = this.className;
        return (str == null || str.length() == 0) ? false : true;
    }

    public int getEndRange() {
        return this.endRange;
    }

    public void setEndRange(int i) {
        this.endRange = i;
    }

    public Class<?> getClassReference() {
        return getClassReference(null, this);
    }

    public Class<?> getClassReference(ParserContext parserContext) {
        return getClassReference(parserContext, this);
    }

    public static Class getClassReference(Class cls, TypeDescriptor typeDescriptor, VariableResolverFactory variableResolverFactory, ParserContext parserContext) {
        return ParseTools.findClass(variableResolverFactory, ParseTools.repeatChar('[', typeDescriptor.arraySize.length) + "L" + cls.getName() + ";", parserContext);
    }

    public static Class getClassReference(ParserContext parserContext, Class cls, TypeDescriptor typeDescriptor) {
        if (!typeDescriptor.isArray()) {
            return cls;
        }
        if (cls.isPrimitive()) {
            return ReflectionUtil.toPrimitiveArrayType(cls);
        }
        return ParseTools.findClass(null, ParseTools.repeatChar('[', typeDescriptor.arraySize.length) + "L" + cls.getName() + ";", parserContext);
    }

    public static Class getClassReference(ParserContext parserContext, TypeDescriptor typeDescriptor) throws ClassNotFoundException {
        if (parserContext != null && parserContext.hasImport(typeDescriptor.className)) {
            Class cls = parserContext.getImport(typeDescriptor.className);
            if (!typeDescriptor.isArray()) {
                return cls;
            }
            if (cls.isPrimitive()) {
                return ReflectionUtil.toPrimitiveArrayType(cls);
            }
            return ParseTools.findClass(null, ParseTools.repeatChar('[', typeDescriptor.arraySize.length) + "L" + cls.getName() + ";", parserContext);
        }
        if (parserContext == null && hasContextFreeImport(typeDescriptor.className)) {
            Class contextFreeImport = getContextFreeImport(typeDescriptor.className);
            if (!typeDescriptor.isArray()) {
                return contextFreeImport;
            }
            if (contextFreeImport.isPrimitive()) {
                return ReflectionUtil.toPrimitiveArrayType(contextFreeImport);
            }
            return ParseTools.findClass(null, ParseTools.repeatChar('[', typeDescriptor.arraySize.length) + "L" + contextFreeImport.getName() + ";", parserContext);
        }
        Class clsCreateClass = ParseTools.createClass(typeDescriptor.getClassName(), parserContext);
        if (!typeDescriptor.isArray()) {
            return clsCreateClass;
        }
        if (clsCreateClass.isPrimitive()) {
            return ReflectionUtil.toPrimitiveArrayType(clsCreateClass);
        }
        return ParseTools.findClass(null, ParseTools.repeatChar('[', typeDescriptor.arraySize.length) + "L" + clsCreateClass.getName() + ";", parserContext);
    }

    public boolean isUndimensionedArray() {
        ArraySize[] arraySizeArr = this.arraySize;
        if (arraySizeArr != null) {
            for (ArraySize arraySize : arraySizeArr) {
                if (arraySize.value.length == 0) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean hasContextFreeImport(String str) {
        return AbstractParser.LITERALS.containsKey(str) && (AbstractParser.LITERALS.get(str) instanceof Class);
    }

    public static Class getContextFreeImport(String str) {
        return (Class) AbstractParser.LITERALS.get(str);
    }

    public char[] getExpr() {
        return this.expr;
    }

    public int getStart() {
        return this.start;
    }

    public int getOffset() {
        return this.offset;
    }
}
