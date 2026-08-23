package kotlin.reflect;

/* JADX INFO: loaded from: classes.dex */
public interface KClass extends KDeclarationContainer, KAnnotatedElement {
    String getQualifiedName();

    String getSimpleName();

    boolean isInstance(Object obj);
}
