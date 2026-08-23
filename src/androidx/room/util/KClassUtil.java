package androidx.room.util;

import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u001a1\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001\"\u0004\b\u0001\u0010\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006H\u0007¢\u0006\u0002\u0010\u0007¨\u0006\b"}, d2 = {"findAndInstantiateDatabaseImpl", "T", "C", "klass", "Ljava/lang/Class;", "suffix", _UrlKt.FRAGMENT_ENCODE_SET, "(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;", "room-runtime"}, m754k = 2, mv = {2, 1, 0}, xi = 48)
@JvmName(name = "KClassUtil")
public abstract class KClassUtil {
    public static /* synthetic */ Object findAndInstantiateDatabaseImpl$default(Class cls, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = "_Impl";
        }
        return findAndInstantiateDatabaseImpl(cls, str);
    }

    public static final <T, C> T findAndInstantiateDatabaseImpl(Class<C> cls, String str) {
        String name;
        String str2;
        Package r0 = cls.getPackage();
        if (r0 == null || (name = r0.getName()) == null) {
            name = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        String canonicalName = cls.getCanonicalName();
        if (name.length() != 0) {
            canonicalName = canonicalName.substring(name.length() + 1);
        }
        String str3 = StringsKt.replace$default(canonicalName, '.', '_', false, 4, (Object) null) + str;
        try {
            if (name.length() == 0) {
                str2 = str3;
            } else {
                str2 = name + '.' + str3;
            }
            return (T) Class.forName(str2, true, cls.getClassLoader()).getDeclaredConstructor(null).newInstance(null);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("Cannot find implementation for " + cls.getCanonicalName() + ". " + str3 + " does not exist. Is Room annotation processor correctly configured?", e);
        } catch (IllegalAccessException e2) {
            KClassUtil$$ExternalSyntheticBUOutline0.m164m("Cannot access the constructor ", cls.getCanonicalName(), e2);
            return null;
        } catch (InstantiationException e3) {
            KClassUtil$$ExternalSyntheticBUOutline0.m164m("Failed to create an instance of ", cls.getCanonicalName(), e3);
            return null;
        }
    }
}
