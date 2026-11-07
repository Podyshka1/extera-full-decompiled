package kotlin.jvm.internal;

import java.io.IOException;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.Method;
import kotlin.Metadata;
import kotlin.reflect.KDeclarationContainer;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000,\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u001a\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u0004\u0018\u00010\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0086\u0080\u0004\u001a\u000e\u0010\u0005\u001a\u00020\u0004*\u00020\u0006H\u0082\u0080\u0004\u001a\u001e\u0010\u0007\u001a\u00020\b*\u00060\tj\u0002`\n2\n\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\fH\u0082\u0080\u0004¨\u0006\r"}, d2 = {"findMethodBySignature", "Ljava/lang/reflect/GenericDeclaration;", "Lkotlin/reflect/KDeclarationContainer;", "signature", _UrlKt.FRAGMENT_ENCODE_SET, "computeMethodSignature", "Ljava/lang/reflect/Method;", "appendClass", _UrlKt.FRAGMENT_ENCODE_SET, "Ljava/lang/Appendable;", "Lkotlin/text/Appendable;", "start", "Ljava/lang/Class;", "kotlin-stdlib"}, m910k = 2, mv = {2, 3, 0}, xi = 48)
public final class KotlinGenericDeclarationKt {
    public static final GenericDeclaration findMethodBySignature(KDeclarationContainer kDeclarationContainer, String str) {
        if (!(kDeclarationContainer instanceof ClassBasedDeclarationContainer)) {
            return null;
        }
        String strSubstringBefore$default = StringsKt.substringBefore$default(str, '(', (String) null, 2, (Object) null);
        if (Intrinsics.areEqual(strSubstringBefore$default, "<init>")) {
            throw new UnsupportedOperationException("Generic Java constructors are not supported: " + kDeclarationContainer + '/' + str);
        }
        for (Method method : ((ClassBasedDeclarationContainer) kDeclarationContainer).getJClass().getDeclaredMethods()) {
            if (Intrinsics.areEqual(method.getName(), strSubstringBefore$default) && Intrinsics.areEqual(computeMethodSignature(method), str)) {
                return method;
            }
        }
        return null;
    }

    private static final String computeMethodSignature(Method method) throws IOException {
        StringBuilder sb = new StringBuilder();
        sb.append(method.getName());
        sb.append("(");
        for (Class<?> cls : method.getParameterTypes()) {
            appendClass(sb, cls);
        }
        sb.append(")");
        appendClass(sb, method.getReturnType());
        return sb.toString();
    }

    private static final void appendClass(Appendable appendable, Class<?> cls) throws IOException {
        while (cls.isArray()) {
            appendable.append("[");
            cls = cls.getComponentType();
        }
        if (Intrinsics.areEqual(cls, Void.TYPE)) {
            appendable.append("V");
            return;
        }
        if (Intrinsics.areEqual(cls, Integer.TYPE)) {
            appendable.append("I");
            return;
        }
        if (Intrinsics.areEqual(cls, Long.TYPE)) {
            appendable.append("J");
            return;
        }
        if (Intrinsics.areEqual(cls, Short.TYPE)) {
            appendable.append("S");
            return;
        }
        if (Intrinsics.areEqual(cls, Byte.TYPE)) {
            appendable.append("B");
            return;
        }
        if (Intrinsics.areEqual(cls, Boolean.TYPE)) {
            appendable.append("Z");
            return;
        }
        if (Intrinsics.areEqual(cls, Character.TYPE)) {
            appendable.append("C");
            return;
        }
        if (Intrinsics.areEqual(cls, Float.TYPE)) {
            appendable.append("F");
        } else {
            if (Intrinsics.areEqual(cls, Double.TYPE)) {
                appendable.append("D");
                return;
            }
            appendable.append("L");
            appendable.append(StringsKt.replace$default(cls.getName(), '.', '/', false, 4, (Object) null));
            appendable.append(";");
        }
    }
}
