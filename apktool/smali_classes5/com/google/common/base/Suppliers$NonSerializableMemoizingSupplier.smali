.class final Lcom/google/common/base/Suppliers$NonSerializableMemoizingSupplier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Suppliers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NonSerializableMemoizingSupplier"
.end annotation


# static fields
.field private static final SUCCESSFULLY_COMPUTED:Lcom/google/common/base/Supplier;


# instance fields
.field private volatile delegate:Lcom/google/common/base/Supplier;

.field private final lock:Ljava/lang/Object;

.field private value:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$z7NQSm4H_wzbZnaYNFygi6b6f7I()Ljava/lang/Void;
    .locals 1

    .line 182
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 180
    new-instance v0, Lcom/google/common/base/Suppliers$NonSerializableMemoizingSupplier$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/common/base/Suppliers$NonSerializableMemoizingSupplier$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/common/base/Suppliers$NonSerializableMemoizingSupplier;->SUCCESSFULLY_COMPUTED:Lcom/google/common/base/Supplier;

    return-void
.end method

.method constructor <init>(Lcom/google/common/base/Supplier;)V
    .locals 1

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/common/base/Suppliers$NonSerializableMemoizingSupplier;->lock:Ljava/lang/Object;

    .line 190
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/Supplier;

    iput-object p1, p0, Lcom/google/common/base/Suppliers$NonSerializableMemoizingSupplier;->delegate:Lcom/google/common/base/Supplier;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/google/common/base/Suppliers$NonSerializableMemoizingSupplier;->delegate:Lcom/google/common/base/Supplier;

    sget-object v1, Lcom/google/common/base/Suppliers$NonSerializableMemoizingSupplier;->SUCCESSFULLY_COMPUTED:Lcom/google/common/base/Supplier;

    if-eq v0, v1, :cond_1

    .line 199
    iget-object v0, p0, Lcom/google/common/base/Suppliers$NonSerializableMemoizingSupplier;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 200
    :try_start_0
    iget-object v2, p0, Lcom/google/common/base/Suppliers$NonSerializableMemoizingSupplier;->delegate:Lcom/google/common/base/Supplier;

    if-eq v2, v1, :cond_0

    .line 201
    iget-object v2, p0, Lcom/google/common/base/Suppliers$NonSerializableMemoizingSupplier;->delegate:Lcom/google/common/base/Supplier;

    invoke-interface {v2}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    .line 202
    iput-object v2, p0, Lcom/google/common/base/Suppliers$NonSerializableMemoizingSupplier;->value:Ljava/lang/Object;

    .line 203
    iput-object v1, p0, Lcom/google/common/base/Suppliers$NonSerializableMemoizingSupplier;->delegate:Lcom/google/common/base/Supplier;

    .line 204
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    goto :goto_0

    .line 206
    :cond_0
    monitor-exit v0

    goto :goto_1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 209
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/common/base/Suppliers$NonSerializableMemoizingSupplier;->value:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/base/NullnessCasts;->uncheckedCastNullableTToT(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 214
    iget-object v0, p0, Lcom/google/common/base/Suppliers$NonSerializableMemoizingSupplier;->delegate:Lcom/google/common/base/Supplier;

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Suppliers.memoize("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    sget-object v2, Lcom/google/common/base/Suppliers$NonSerializableMemoizingSupplier;->SUCCESSFULLY_COMPUTED:Lcom/google/common/base/Supplier;

    if-ne v0, v2, :cond_0

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<supplier that returned "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/common/base/Suppliers$NonSerializableMemoizingSupplier;->value:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
