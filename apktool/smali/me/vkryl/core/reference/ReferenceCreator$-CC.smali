.class public abstract synthetic Lme/vkryl/core/reference/ReferenceCreator$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static $default$newReference(Lme/vkryl/core/reference/ReferenceCreator;Ljava/lang/Object;)Ljava/lang/ref/Reference;
    .locals 0

    .line 29
    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method
