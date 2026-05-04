package kotlinx.serialization.descriptors;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface SerialDescriptor {
    List getAnnotations();

    List getElementAnnotations(int i);

    SerialDescriptor getElementDescriptor(int i);

    int getElementIndex(String str);

    String getElementName(int i);

    int getElementsCount();

    SerialKind getKind();

    String getSerialName();

    boolean isElementOptional(int i);

    boolean isInline();

    boolean isNullable();

    /* JADX INFO: renamed from: kotlinx.serialization.descriptors.SerialDescriptor$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static boolean $default$isNullable(SerialDescriptor serialDescriptor) {
            return false;
        }

        public static boolean $default$isInline(SerialDescriptor serialDescriptor) {
            return false;
        }
    }
}
