.class public abstract Landroidx/lifecycle/viewmodel/internal/CanonicalName_jvmKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final getCanonicalName(Lkotlin/reflect/KClass;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 22
    invoke-interface {p0}, Lkotlin/reflect/KClass;->getQualifiedName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
