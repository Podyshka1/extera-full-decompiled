.class public abstract Lcom/google/common/base/Optional;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static absent()Lcom/google/common/base/Optional;
    .locals 1

    .line 97
    invoke-static {}, Lcom/google/common/base/Absent;->withType()Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;)Lcom/google/common/base/Optional;
    .locals 1

    .line 109
    new-instance v0, Lcom/google/common/base/Present;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/common/base/Present;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public abstract get()Ljava/lang/Object;
.end method

.method public abstract isPresent()Z
.end method
