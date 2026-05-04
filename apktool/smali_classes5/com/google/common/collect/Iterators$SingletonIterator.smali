.class final Lcom/google/common/collect/Iterators$SingletonIterator;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Iterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingletonIterator"
.end annotation


# instance fields
.field private done:Z

.field private final value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1109
    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    .line 1110
    iput-object p1, p0, Lcom/google/common/collect/Iterators$SingletonIterator;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1115
    iget-boolean v0, p0, Lcom/google/common/collect/Iterators$SingletonIterator;->done:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .line 1121
    iget-boolean v0, p0, Lcom/google/common/collect/Iterators$SingletonIterator;->done:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1124
    iput-boolean v0, p0, Lcom/google/common/collect/Iterators$SingletonIterator;->done:Z

    .line 1125
    iget-object v0, p0, Lcom/google/common/collect/Iterators$SingletonIterator;->value:Ljava/lang/Object;

    return-object v0

    .line 1122
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
