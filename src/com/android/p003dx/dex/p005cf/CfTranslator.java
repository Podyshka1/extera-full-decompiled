package com.android.p003dx.dex.p005cf;

import com.android.dex.util.ExceptionWithContext;
import com.android.p003dx.command.dexer.DxContext;
import com.android.p003dx.dex.DexOptions;
import com.android.p003dx.dex.code.DalvCode;
import com.android.p003dx.dex.code.RopTranslator;
import com.android.p003dx.dex.file.CallSiteIdsSection;
import com.android.p003dx.dex.file.ClassDefItem;
import com.android.p003dx.dex.file.DexFile;
import com.android.p003dx.dex.file.EncodedField;
import com.android.p003dx.dex.file.EncodedMethod;
import com.android.p003dx.dex.file.FieldIdsSection;
import com.android.p003dx.dex.file.MethodHandlesSection;
import com.android.p003dx.dex.file.MethodIdsSection;
import com.android.p003dx.p004cf.code.BootstrapMethodsList;
import com.android.p003dx.p004cf.code.ConcreteMethod;
import com.android.p003dx.p004cf.code.Ropper;
import com.android.p003dx.p004cf.direct.DirectClassFile;
import com.android.p003dx.p004cf.iface.Field;
import com.android.p003dx.p004cf.iface.FieldList;
import com.android.p003dx.p004cf.iface.Method;
import com.android.p003dx.p004cf.iface.MethodList;
import com.android.p003dx.rop.annotation.Annotations;
import com.android.p003dx.rop.annotation.AnnotationsList;
import com.android.p003dx.rop.code.AccessFlags;
import com.android.p003dx.rop.code.DexTranslationAdvice;
import com.android.p003dx.rop.code.LocalVariableExtractor;
import com.android.p003dx.rop.code.LocalVariableInfo;
import com.android.p003dx.rop.code.RopMethod;
import com.android.p003dx.rop.cst.Constant;
import com.android.p003dx.rop.cst.ConstantPool;
import com.android.p003dx.rop.cst.CstBaseMethodRef;
import com.android.p003dx.rop.cst.CstBoolean;
import com.android.p003dx.rop.cst.CstByte;
import com.android.p003dx.rop.cst.CstCallSite;
import com.android.p003dx.rop.cst.CstCallSiteRef;
import com.android.p003dx.rop.cst.CstChar;
import com.android.p003dx.rop.cst.CstEnumRef;
import com.android.p003dx.rop.cst.CstFieldRef;
import com.android.p003dx.rop.cst.CstInteger;
import com.android.p003dx.rop.cst.CstInterfaceMethodRef;
import com.android.p003dx.rop.cst.CstInvokeDynamic;
import com.android.p003dx.rop.cst.CstMethodHandle;
import com.android.p003dx.rop.cst.CstMethodRef;
import com.android.p003dx.rop.cst.CstShort;
import com.android.p003dx.rop.cst.CstType;
import com.android.p003dx.rop.cst.TypedConstant;
import com.android.p003dx.rop.type.Type;
import com.android.p003dx.ssa.Optimizer;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public class CfTranslator {
    private static final boolean DEBUG = false;

    private CfTranslator() {
    }

    public static ClassDefItem translate(DxContext dxContext, DirectClassFile directClassFile, byte[] bArr, CfOptions cfOptions, DexOptions dexOptions, DexFile dexFile) {
        try {
            return translate0(dxContext, directClassFile, bArr, cfOptions, dexOptions, dexFile);
        } catch (RuntimeException e) {
            throw ExceptionWithContext.withContext(e, "...while processing " + directClassFile.getFilePath());
        }
    }

    private static ClassDefItem translate0(DxContext dxContext, DirectClassFile directClassFile, byte[] bArr, CfOptions cfOptions, DexOptions dexOptions, DexFile dexFile) {
        dxContext.optimizerOptions.loadOptimizeLists(cfOptions.optimizeListFile, cfOptions.dontOptimizeListFile);
        ClassDefItem classDefItem = new ClassDefItem(directClassFile.getThisClass(), directClassFile.getAccessFlags() & (-33), directClassFile.getSuperclass(), directClassFile.getInterfaces(), cfOptions.positionInfo == 1 ? null : directClassFile.getSourceFile());
        Annotations classAnnotations = AttributeTranslator.getClassAnnotations(directClassFile, cfOptions);
        if (classAnnotations.size() != 0) {
            classDefItem.setClassAnnotations(classAnnotations, dexFile);
        }
        FieldIdsSection fieldIds = dexFile.getFieldIds();
        MethodIdsSection methodIds = dexFile.getMethodIds();
        MethodHandlesSection methodHandles = dexFile.getMethodHandles();
        CallSiteIdsSection callSiteIds = dexFile.getCallSiteIds();
        processFields(directClassFile, classDefItem, dexFile);
        processMethods(dxContext, directClassFile, cfOptions, dexOptions, classDefItem, dexFile);
        ConstantPool constantPool = directClassFile.getConstantPool();
        int size = constantPool.size();
        for (int i = 0; i < size; i++) {
            Constant orNull = constantPool.getOrNull(i);
            if (orNull instanceof CstMethodRef) {
                methodIds.intern((CstBaseMethodRef) orNull);
            } else if (orNull instanceof CstInterfaceMethodRef) {
                methodIds.intern(((CstInterfaceMethodRef) orNull).toMethodRef());
            } else if (orNull instanceof CstFieldRef) {
                fieldIds.intern((CstFieldRef) orNull);
            } else if (orNull instanceof CstEnumRef) {
                fieldIds.intern(((CstEnumRef) orNull).getFieldRef());
            } else if (orNull instanceof CstMethodHandle) {
                methodHandles.intern((CstMethodHandle) orNull);
            } else if (orNull instanceof CstInvokeDynamic) {
                CstInvokeDynamic cstInvokeDynamic = (CstInvokeDynamic) orNull;
                BootstrapMethodsList.Item item = directClassFile.getBootstrapMethods().get(cstInvokeDynamic.getBootstrapMethodIndex());
                CstCallSite cstCallSiteMake = CstCallSite.make(item.getBootstrapMethodHandle(), cstInvokeDynamic.getNat(), item.getBootstrapMethodArguments());
                cstInvokeDynamic.setDeclaringClass(directClassFile.getThisClass());
                cstInvokeDynamic.setCallSite(cstCallSiteMake);
                Iterator<CstCallSiteRef> it = cstInvokeDynamic.getReferences().iterator();
                while (it.hasNext()) {
                    callSiteIds.intern(it.next());
                }
            }
        }
        return classDefItem;
    }

    private static void processFields(DirectClassFile directClassFile, ClassDefItem classDefItem, DexFile dexFile) {
        CstType thisClass = directClassFile.getThisClass();
        FieldList fields = directClassFile.getFields();
        int size = fields.size();
        for (int i = 0; i < size; i++) {
            Field field = fields.get(i);
            try {
                CstFieldRef cstFieldRef = new CstFieldRef(thisClass, field.getNat());
                int accessFlags = field.getAccessFlags();
                if (AccessFlags.isStatic(accessFlags)) {
                    TypedConstant constantValue = field.getConstantValue();
                    EncodedField encodedField = new EncodedField(cstFieldRef, accessFlags);
                    if (constantValue != null) {
                        constantValue = coerceConstant(constantValue, cstFieldRef.getType());
                    }
                    classDefItem.addStaticField(encodedField, constantValue);
                } else {
                    classDefItem.addInstanceField(new EncodedField(cstFieldRef, accessFlags));
                }
                Annotations annotations = AttributeTranslator.getAnnotations(field.getAttributes());
                if (annotations.size() != 0) {
                    classDefItem.addFieldAnnotations(cstFieldRef, annotations, dexFile);
                }
                dexFile.getFieldIds().intern(cstFieldRef);
            } catch (RuntimeException e) {
                throw ExceptionWithContext.withContext(e, "...while processing " + field.getName().toHuman() + " " + field.getDescriptor().toHuman());
            }
        }
    }

    private static TypedConstant coerceConstant(TypedConstant typedConstant, Type type) {
        if (typedConstant.getType().equals(type)) {
            return typedConstant;
        }
        int basicType = type.getBasicType();
        if (basicType == 1) {
            return CstBoolean.make(((CstInteger) typedConstant).getValue());
        }
        if (basicType == 2) {
            return CstByte.make(((CstInteger) typedConstant).getValue());
        }
        if (basicType == 3) {
            return CstChar.make(((CstInteger) typedConstant).getValue());
        }
        if (basicType == 8) {
            return CstShort.make(((CstInteger) typedConstant).getValue());
        }
        throw new UnsupportedOperationException("can't coerce " + typedConstant + " to " + type);
    }

    private static void processMethods(DxContext dxContext, DirectClassFile directClassFile, CfOptions cfOptions, DexOptions dexOptions, ClassDefItem classDefItem, DexFile dexFile) {
        boolean z;
        CstType cstType;
        CstMethodRef cstMethodRef;
        DalvCode dalvCode;
        RopMethod ropMethodOptimize;
        DalvCode dalvCode2;
        DxContext dxContext2 = dxContext;
        CfOptions cfOptions2 = cfOptions;
        DexOptions dexOptions2 = dexOptions;
        CstType thisClass = directClassFile.getThisClass();
        MethodList methods = directClassFile.getMethods();
        int size = methods.size();
        int i = 0;
        while (i < size) {
            Method method = methods.get(i);
            try {
                CstMethodRef cstMethodRef2 = new CstMethodRef(thisClass, method.getNat());
                int accessFlags = method.getAccessFlags();
                boolean zIsStatic = AccessFlags.isStatic(accessFlags);
                boolean zIsPrivate = AccessFlags.isPrivate(accessFlags);
                boolean zIsNative = AccessFlags.isNative(accessFlags);
                boolean zIsAbstract = AccessFlags.isAbstract(accessFlags);
                boolean z2 = true;
                boolean z3 = cstMethodRef2.isInstanceInit() || cstMethodRef2.isClassInit();
                if (zIsNative || zIsAbstract) {
                    z = zIsStatic;
                    cstType = thisClass;
                    cstMethodRef = cstMethodRef2;
                    dalvCode = null;
                } else {
                    if (cfOptions2.positionInfo == 1) {
                        z2 = false;
                    }
                    ConcreteMethod concreteMethod = new ConcreteMethod(method, directClassFile, z2, cfOptions2.localInfo);
                    DexTranslationAdvice dexTranslationAdvice = DexTranslationAdvice.THE_ONE;
                    RopMethod ropMethodConvert = Ropper.convert(concreteMethod, dexTranslationAdvice, methods, dexOptions2);
                    int parameterWordCount = cstMethodRef2.getParameterWordCount(zIsStatic);
                    StringBuilder sb = new StringBuilder();
                    cstType = thisClass;
                    sb.append(thisClass.getClassType().getDescriptor());
                    sb.append(".");
                    sb.append(method.getName().getString());
                    String string = sb.toString();
                    if (cfOptions2.optimize && dxContext2.optimizerOptions.shouldOptimize(string)) {
                        ropMethodOptimize = Optimizer.optimize(ropMethodConvert, parameterWordCount, zIsStatic, cfOptions2.localInfo, dexTranslationAdvice);
                        if (cfOptions2.statistics) {
                            dxContext2.codeStatistics.updateRopStatistics(ropMethodConvert, ropMethodOptimize);
                        }
                    } else {
                        ropMethodOptimize = ropMethodConvert;
                        ropMethodConvert = null;
                    }
                    LocalVariableInfo localVariableInfoExtract = cfOptions2.localInfo ? LocalVariableExtractor.extract(ropMethodOptimize) : null;
                    DalvCode dalvCodeTranslate = RopTranslator.translate(ropMethodOptimize, cfOptions2.positionInfo, localVariableInfoExtract, parameterWordCount, dexOptions2);
                    if (!cfOptions2.statistics || ropMethodConvert == null) {
                        z = zIsStatic;
                        dalvCode2 = dalvCodeTranslate;
                        cstMethodRef = cstMethodRef2;
                    } else {
                        z = zIsStatic;
                        dalvCode2 = dalvCodeTranslate;
                        cstMethodRef = cstMethodRef2;
                        updateDexStatistics(dxContext, cfOptions2, dexOptions2, ropMethodOptimize, ropMethodConvert, localVariableInfoExtract, parameterWordCount, concreteMethod.getCode().size());
                    }
                    dalvCode = dalvCode2;
                }
                if (AccessFlags.isSynchronized(accessFlags)) {
                    accessFlags |= 131072;
                    if (!zIsNative) {
                        accessFlags &= -33;
                    }
                }
                if (z3) {
                    accessFlags |= 65536;
                }
                EncodedMethod encodedMethod = new EncodedMethod(cstMethodRef, accessFlags, dalvCode, AttributeTranslator.getExceptions(method));
                if (cstMethodRef.isInstanceInit() || cstMethodRef.isClassInit() || z || zIsPrivate) {
                    classDefItem.addDirectMethod(encodedMethod);
                } else {
                    classDefItem.addVirtualMethod(encodedMethod);
                }
                Annotations methodAnnotations = AttributeTranslator.getMethodAnnotations(method);
                if (methodAnnotations.size() != 0) {
                    classDefItem.addMethodAnnotations(cstMethodRef, methodAnnotations, dexFile);
                }
                AnnotationsList parameterAnnotations = AttributeTranslator.getParameterAnnotations(method);
                if (parameterAnnotations.size() != 0) {
                    classDefItem.addParameterAnnotations(cstMethodRef, parameterAnnotations, dexFile);
                }
                dexFile.getMethodIds().intern(cstMethodRef);
                i++;
                dxContext2 = dxContext;
                cfOptions2 = cfOptions;
                dexOptions2 = dexOptions;
                thisClass = cstType;
            } catch (RuntimeException e) {
                throw ExceptionWithContext.withContext(e, "...while processing " + method.getName().toHuman() + " " + method.getDescriptor().toHuman());
            }
        }
    }

    private static void updateDexStatistics(DxContext dxContext, CfOptions cfOptions, DexOptions dexOptions, RopMethod ropMethod, RopMethod ropMethod2, LocalVariableInfo localVariableInfo, int i, int i2) {
        DalvCode dalvCodeTranslate = RopTranslator.translate(ropMethod, cfOptions.positionInfo, localVariableInfo, i, dexOptions);
        DalvCode dalvCodeTranslate2 = RopTranslator.translate(ropMethod2, cfOptions.positionInfo, localVariableInfo, i, dexOptions);
        DalvCode.AssignIndicesCallback assignIndicesCallback = new DalvCode.AssignIndicesCallback() { // from class: com.android.dx.dex.cf.CfTranslator.1
            @Override // com.android.dx.dex.code.DalvCode.AssignIndicesCallback
            public int getIndex(Constant constant) {
                return 0;
            }
        };
        dalvCodeTranslate.assignIndices(assignIndicesCallback);
        dalvCodeTranslate2.assignIndices(assignIndicesCallback);
        dxContext.codeStatistics.updateDexStatistics(dalvCodeTranslate2, dalvCodeTranslate);
        dxContext.codeStatistics.updateOriginalByteCount(i2);
    }
}
