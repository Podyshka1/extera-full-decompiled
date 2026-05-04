package org.mvel2.ast;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.mvel2.CompileException;
import org.mvel2.MVEL;
import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolver;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.ExecutionStack;
import org.mvel2.util.ParseTools;

/* JADX INFO: loaded from: classes5.dex */
public class Stacklang extends BlockNode {
    static final Map<String, Integer> opcodes;
    List<Instruction> instructionList;
    ParserContext pCtx;

    public Stacklang(char[] cArr, int i, int i2, int i3, ParserContext parserContext) {
        super(parserContext);
        this.expr = cArr;
        this.blockStart = i;
        this.blockOffset = i2;
        this.fields = i3 | 4194304;
        String[] strArrSplit = new String(cArr, i, i2).split(";");
        this.instructionList = new ArrayList(strArrSplit.length);
        for (String str : strArrSplit) {
            this.instructionList.add(parseInstruction(str.trim()));
        }
        this.pCtx = parserContext;
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        ExecutionStack executionStack = new ExecutionStack();
        executionStack.push(getReducedValue(executionStack, obj2, variableResolverFactory));
        if (executionStack.isReduceable()) {
            while (true) {
                executionStack.m1117op();
                if (!executionStack.isReduceable()) {
                    break;
                }
                executionStack.xswap();
            }
        }
        return executionStack.peek();
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        Field field;
        Method bestCandidate;
        Constructor bestConstructorCandidate;
        ExecutionStack executionStack = (ExecutionStack) obj;
        int size = this.instructionList.size();
        int iIntValue = 0;
        while (iIntValue < size) {
            Instruction instruction = this.instructionList.get(iIntValue);
            System.out.println(executionStack.toString() + " >> " + instruction.opcode + ":" + instruction.expr);
            int i = instruction.opcode;
            if (i == 18) {
                executionStack.push(Boolean.valueOf(executionStack.pop().equals(executionStack.pop())));
            } else if (i != 19) {
                switch (i) {
                    case 102:
                        if (instruction.cache == null) {
                            instruction.cache = MVEL.eval(instruction.expr, obj, variableResolverFactory);
                        }
                        executionStack.push(instruction.cache);
                        break;
                    case 103:
                        executionStack.pop();
                        break;
                    case 104:
                        if (instruction.cache == null) {
                            instruction.cache = variableResolverFactory.getVariableResolver(instruction.expr);
                        }
                        executionStack.push(((VariableResolver) instruction.cache).getValue());
                        break;
                    case 105:
                        try {
                            if (instruction.cache == null) {
                                instruction.cache = ParseTools.createClass(instruction.expr, this.pCtx);
                            }
                            executionStack.push(instruction.cache);
                        } catch (ClassNotFoundException e) {
                            throw new CompileException("error", this.expr, this.blockStart, e);
                        }
                        break;
                    case 106:
                        ExecutionStack executionStack2 = new ExecutionStack();
                        while (!executionStack.isEmpty() && !(executionStack.peek() instanceof Class)) {
                            executionStack2.push(executionStack.pop());
                        }
                        if (executionStack.isEmpty()) {
                            throw new CompileException("invoke without class", this.expr, this.blockStart);
                        }
                        Object[] objArr = new Object[executionStack2.size()];
                        int i2 = 0;
                        while (!executionStack2.isEmpty()) {
                            objArr[i2] = executionStack2.pop();
                            i2++;
                        }
                        if ("<init>".equals(instruction.expr)) {
                            Object obj3 = instruction.cache;
                            if (obj3 == null) {
                                bestConstructorCandidate = ParseTools.getBestConstructorCandidate(objArr, (Class) executionStack.pop(), false);
                                instruction.cache = bestConstructorCandidate;
                            } else {
                                bestConstructorCandidate = (Constructor) obj3;
                            }
                            try {
                                executionStack.push(bestConstructorCandidate.newInstance(objArr));
                            } catch (Exception e2) {
                                throw new CompileException("instantiation error", this.expr, this.blockStart, e2);
                            }
                        } else {
                            if (instruction.cache == null) {
                                Class cls = (Class) executionStack.pop();
                                bestCandidate = ParseTools.getBestCandidate(objArr, instruction.expr, cls, cls.getDeclaredMethods(), false);
                                instruction.cache = bestCandidate;
                            } else {
                                executionStack.discard();
                                bestCandidate = (Method) instruction.cache;
                            }
                            try {
                                executionStack.push(bestCandidate.invoke(executionStack.isEmpty() ? null : executionStack.pop(), objArr));
                            } catch (Exception e3) {
                                throw new CompileException("invokation error", this.expr, this.blockStart, e3);
                            }
                        }
                        break;
                        break;
                    case 107:
                        try {
                            if (executionStack.isEmpty() || !(executionStack.peek() instanceof Class)) {
                                throw new CompileException("getfield without class", this.expr, this.blockStart);
                            }
                            if (instruction.cache == null) {
                                field = ((Class) executionStack.pop()).getField(instruction.expr);
                                instruction.cache = field;
                            } else {
                                executionStack.discard();
                                field = (Field) instruction.cache;
                            }
                            executionStack.push(field.get(executionStack.pop()));
                        } catch (Exception e4) {
                            throw new CompileException("field access error", this.expr, this.blockStart, e4);
                        }
                        break;
                    case 108:
                        try {
                            if (executionStack.isEmpty() || !(executionStack.peek() instanceof Class)) {
                                throw new CompileException("storefield without class", this.expr, this.blockStart);
                            }
                            Class cls2 = (Class) executionStack.pop();
                            Object objPop = executionStack.pop();
                            cls2.getField(instruction.expr).set(executionStack.pop(), objPop);
                            executionStack.push(objPop);
                        } catch (Exception e5) {
                            throw new CompileException("field access error", this.expr, this.blockStart, e5);
                        }
                        break;
                    case 109:
                        Object obj4 = instruction.cache;
                        if (obj4 == null) {
                            instruction.cache = variableResolverFactory.createVariable(instruction.expr, executionStack.peek());
                        } else {
                            ((VariableResolver) obj4).setValue(executionStack.peek());
                        }
                        break;
                    case 110:
                        executionStack.dup();
                        break;
                    default:
                        switch (i) {
                            case 113:
                                if (!executionStack.popBoolean().booleanValue()) {
                                }
                                break;
                            case 114:
                                executionStack.m1117op();
                                continue;
                            case 115:
                                Object objPop2 = executionStack.pop();
                                Object objPop3 = executionStack.pop();
                                executionStack.push(objPop2);
                                executionStack.push(objPop3);
                                continue;
                            case 116:
                                executionStack.xswap2();
                                continue;
                        }
                        Object obj5 = instruction.cache;
                        if (obj5 == null) {
                            int i3 = 0;
                            while (true) {
                                if (i3 < this.instructionList.size()) {
                                    Instruction instruction2 = this.instructionList.get(i3);
                                    if (instruction2.opcode == 111 && instruction.expr.equals(instruction2.expr)) {
                                        instruction.cache = Integer.valueOf(i3);
                                        iIntValue = i3;
                                    } else {
                                        i3++;
                                    }
                                }
                            }
                        } else {
                            iIntValue = ((Integer) obj5).intValue();
                        }
                        break;
                }
            } else {
                executionStack.push(Boolean.valueOf(!executionStack.pop().equals(executionStack.pop())));
            }
            iIntValue++;
        }
        return executionStack.pop();
    }

    private static class Instruction {
        Object cache;
        String expr;
        int opcode;

        private Instruction() {
        }
    }

    private static Instruction parseInstruction(String str) {
        int iIndexOf = str.indexOf(32);
        Instruction instruction = new Instruction();
        String strSubstring = iIndexOf == -1 ? str : str.substring(0, iIndexOf);
        Map<String, Integer> map = opcodes;
        if (map.containsKey(strSubstring)) {
            instruction.opcode = map.get(strSubstring).intValue();
        }
        if (strSubstring != str) {
            instruction.expr = str.substring(iIndexOf + 1);
        }
        return instruction;
    }

    static {
        HashMap map = new HashMap();
        opcodes = map;
        map.put("push", 102);
        map.put("pop", 103);
        map.put("load", 104);
        map.put("ldtype", 105);
        map.put("invoke", 106);
        map.put("store", 109);
        map.put("getfield", 107);
        map.put("storefield", 108);
        map.put("dup", 110);
        map.put("jump", 112);
        map.put("jumpif", 113);
        map.put("label", 111);
        map.put("eq", 18);
        map.put("ne", 19);
        map.put("reduce", 114);
        map.put("xswap", 116);
        map.put("swap", 115);
    }
}
