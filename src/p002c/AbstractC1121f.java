package p002c;

import java.lang.reflect.Constructor;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;

/* JADX INFO: renamed from: c.f */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1121f {
    /* JADX INFO: renamed from: a */
    public static void m213a(Member member) {
        if (member == null) {
            f$$ExternalSyntheticBUOutline2.m216m("method must not be null");
            return;
        }
        if (!(member instanceof Method) && !(member instanceof Constructor)) {
            f$$ExternalSyntheticBUOutline1.m215m("method must be a Method or Constructor");
        } else if (Modifier.isAbstract(f$$ExternalSyntheticApiModelOutline0.m214m(member).getModifiers())) {
            f$$ExternalSyntheticBUOutline1.m215m("method must not be abstract");
        }
    }
}
