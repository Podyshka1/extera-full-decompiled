package androidx.camera.camera2.pipe;

import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes3.dex */
public interface Metadata {
    Object get(Key key);

    Object getOrDefault(Key key, Object obj);

    public static final class Key {
        public static final Companion Companion = new Companion(null);
        private static final Map keys = new HashMap();
        private final String name;
        private final KClass type;

        public /* synthetic */ Key(String str, KClass kClass, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, kClass);
        }

        private Key(String str, KClass kClass) {
            this.name = str;
            this.type = kClass;
        }

        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final Map getKeys$camera_camera2_pipe() {
                return Key.keys;
            }

            public final Key create(String name, KClass type) {
                Key key;
                Intrinsics.checkNotNullParameter(name, "name");
                Intrinsics.checkNotNullParameter(type, "type");
                synchronized (getKeys$camera_camera2_pipe()) {
                    try {
                        Map keys$camera_camera2_pipe = Key.Companion.getKeys$camera_camera2_pipe();
                        Object key2 = keys$camera_camera2_pipe.get(name);
                        if (key2 == null) {
                            key2 = new Key(name, type, null);
                            keys$camera_camera2_pipe.put(name, key2);
                        }
                        key = (Key) key2;
                        if (!Intrinsics.areEqual(key.type, type)) {
                            throw new IllegalStateException("Check failed.");
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return key;
            }
        }

        public String toString() {
            return "Metadata.Key(" + this.name + ')';
        }
    }
}
