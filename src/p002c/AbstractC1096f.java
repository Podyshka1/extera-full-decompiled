package p002c;

import java.lang.reflect.Constructor;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;

/* JADX INFO: renamed from: c.f */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1096f {
    /* JADX INFO: renamed from: a */
    public static void m210a(Member member) {
        if (member == null) {
            f$$ExternalSyntheticBUOutline2.m213m("method must not be null");
            return;
        }
        if (!(member instanceof Method) && !(member instanceof Constructor)) {
            f$$ExternalSyntheticBUOutline1.m212m("method must be a Method or Constructor");
        } else if (Modifier.isAbstract(f$$ExternalSyntheticApiModelOutline0.m211m(member).getModifiers())) {
            f$$ExternalSyntheticBUOutline1.m212m("method must not be abstract");
        }
    }
}
