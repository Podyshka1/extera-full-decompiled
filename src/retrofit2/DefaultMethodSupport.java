package retrofit2;

import java.lang.invoke.MethodHandles;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import javax.annotation.Nullable;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

/* JADX INFO: loaded from: classes4.dex */
abstract class DefaultMethodSupport {

    @Nullable
    private static Constructor<MethodHandles.Lookup> lookupConstructor;

    @Nullable
    @IgnoreJRERequirement
    public static Object invoke(Method method, Class<?> cls, Object obj, @Nullable Object[] objArr) throws NoSuchMethodException {
        Constructor<MethodHandles.Lookup> declaredConstructor = lookupConstructor;
        if (declaredConstructor == null) {
            declaredConstructor = DefaultMethodSupport$$ExternalSyntheticApiModelOutline0.m976m().getDeclaredConstructor(Class.class, Integer.TYPE);
            declaredConstructor.setAccessible(true);
            lookupConstructor = declaredConstructor;
        }
        return DefaultMethodSupport$$ExternalSyntheticApiModelOutline1.m977m(declaredConstructor.newInstance(cls, -1)).unreflectSpecial(method, cls).bindTo(obj).invokeWithArguments(objArr);
    }
}
