.class public final Landroidx/datastore/core/Data;
.super Landroidx/datastore/core/State;
.source "SourceFile"


# instance fields
.field private final hashCode:I

.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;II)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p3, v0}, Landroidx/datastore/core/State;-><init>(ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/datastore/core/Data;->value:Ljava/lang/Object;

    iput p2, p0, Landroidx/datastore/core/Data;->hashCode:I

    return-void
.end method


# virtual methods
.method public final checkHashCode()V
    .locals 2

    .line 32
    iget-object v0, p0, Landroidx/datastore/core/Data;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/datastore/core/Data;->hashCode:I

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Data in DataStore was mutated but DataStore is only compatible with Immutable types."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    .line 30
    iget-object v0, p0, Landroidx/datastore/core/Data;->value:Ljava/lang/Object;

    return-object v0
.end method
