package com.android.dx;

import com.android.dx.dex.file.ClassDefItem;
import com.android.dx.rop.annotation.Annotation;
import com.android.dx.rop.annotation.AnnotationVisibility;
import com.android.dx.rop.annotation.Annotations;
import com.android.dx.rop.annotation.NameValuePair;
import com.android.dx.rop.cst.Constant;
import com.android.dx.rop.cst.CstEnumRef;
import com.android.dx.rop.cst.CstMethodRef;
import com.android.dx.rop.cst.CstNat;
import com.android.dx.rop.cst.CstString;
import com.android.dx.rop.cst.CstType;
import java.lang.annotation.ElementType;
import java.util.HashMap;
import java.util.Iterator;
import okio.ByteString$$ExternalSyntheticBUOutline0;
import okio.Segment$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline2;
import retrofit2.Utils$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes4.dex */
public final class AnnotationId<D, V> {
    private final ElementType annotatedElement;
    private final TypeId<D> declaringType;
    private final HashMap<String, NameValuePair> elements = new HashMap<>();
    private final TypeId<V> type;

    private AnnotationId(TypeId<D> typeId, TypeId<V> typeId2, ElementType elementType) {
        this.declaringType = typeId;
        this.type = typeId2;
        this.annotatedElement = elementType;
    }

    public static <D, V> AnnotationId<D, V> get(TypeId<D> typeId, TypeId<V> typeId2, ElementType elementType) {
        if (elementType != ElementType.TYPE && elementType != ElementType.METHOD && elementType != ElementType.FIELD && elementType != ElementType.PARAMETER) {
            f$$ExternalSyntheticBUOutline1.m212m("element type is not supported to annotate yet.");
            return null;
        }
        return new AnnotationId<>(typeId, typeId2, elementType);
    }

    public void set(Element element) {
        if (element == null) {
            f$$ExternalSyntheticBUOutline2.m213m("element == null");
        } else {
            this.elements.put(element.getName(), new NameValuePair(new CstString(element.getName()), Element.toConstant(element.getValue())));
        }
    }

    public void addToMethod(DexMaker dexMaker, MethodId<?, ?> methodId) {
        if (this.annotatedElement != ElementType.METHOD) {
            Segment$$ExternalSyntheticBUOutline1.m925m("This annotation is not for method");
            return;
        }
        if (!methodId.declaringType.equals(this.declaringType)) {
            Utils$$ExternalSyntheticBUOutline2.m1070m("Method", methodId, "'s declaring type is inconsistent with", this);
            return;
        }
        ClassDefItem classDefItem = dexMaker.getTypeDeclaration(this.declaringType).toClassDefItem();
        if (classDefItem == null) {
            f$$ExternalSyntheticBUOutline2.m213m("No class defined item is found");
            return;
        }
        CstMethodRef cstMethodRef = methodId.constant;
        if (cstMethodRef == null) {
            f$$ExternalSyntheticBUOutline2.m213m("Method reference is NULL");
            return;
        }
        Annotation annotation = new Annotation(CstType.intern(this.type.ropType), AnnotationVisibility.RUNTIME);
        Annotations annotations = new Annotations();
        Iterator<NameValuePair> it = this.elements.values().iterator();
        while (it.hasNext()) {
            annotation.add(it.next());
        }
        annotations.add(annotation);
        classDefItem.addMethodAnnotations(cstMethodRef, annotations, dexMaker.getDexFile());
    }

    public static final class Element {
        private final String name;
        private final Object value;

        public Element(String str, Object obj) {
            if (str == null) {
                f$$ExternalSyntheticBUOutline2.m213m("name == null");
                throw null;
            }
            if (obj == null) {
                f$$ExternalSyntheticBUOutline2.m213m("value == null");
                throw null;
            }
            this.name = str;
            this.value = obj;
        }

        public String getName() {
            return this.name;
        }

        public Object getValue() {
            return this.value;
        }

        public String toString() {
            return "[" + this.name + ", " + this.value + "]";
        }

        public int hashCode() {
            return (this.name.hashCode() * 31) + this.value.hashCode();
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Element)) {
                return false;
            }
            Element element = (Element) obj;
            return this.name.equals(element.name) && this.value.equals(element.value);
        }

        public static Constant toConstant(Object obj) {
            Class<?> cls = obj.getClass();
            if (cls.isEnum()) {
                return new CstEnumRef(new CstNat(new CstString(((Enum) obj).name()), new CstString(TypeId.get(cls).getName())));
            }
            if (cls.isArray()) {
                ByteString$$ExternalSyntheticBUOutline0.m920m("Array is not supported yet");
                return null;
            }
            if (obj instanceof TypeId) {
                ByteString$$ExternalSyntheticBUOutline0.m920m("TypeId is not supported yet");
                return null;
            }
            return Constants.getConstant(obj);
        }
    }
}
