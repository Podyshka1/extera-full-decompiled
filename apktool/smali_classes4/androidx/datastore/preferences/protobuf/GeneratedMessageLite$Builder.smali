.class public abstract Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;
.super Landroidx/datastore/preferences/protobuf/AbstractMessageLite$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# instance fields
.field private final defaultInstance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

.field protected instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;


# direct methods
.method protected constructor <init>(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V
    .locals 1

    .line 426
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/AbstractMessageLite$Builder;-><init>()V

    .line 427
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->defaultInstance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 428
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->isMutable()Z

    move-result p1

    if-nez p1, :cond_0

    .line 433
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->newMutableInstance()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    return-void

    .line 429
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Default instance must be immutable."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static mergeFromInstance(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 513
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Protobuf;->getInstance()Landroidx/datastore/preferences/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/datastore/preferences/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private newMutableInstance()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;
    .locals 1

    .line 437
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->defaultInstance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->newMutableInstance()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final build()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;
    .locals 2

    .line 490
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->buildPartial()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 491
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 492
    :cond_0
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/AbstractMessageLite$Builder;->newUninitializedMessageException(Landroidx/datastore/preferences/protobuf/MessageLite;)Landroidx/datastore/preferences/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public buildPartial()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;
    .locals 1

    .line 480
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 481
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    return-object v0

    .line 484
    :cond_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->makeImmutable()V

    .line 485
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    return-object v0
.end method

.method public bridge synthetic buildPartial()Landroidx/datastore/preferences/protobuf/MessageLite;
    .locals 1

    .line 417
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->buildPartial()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public clone()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;
    .locals 2

    .line 473
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->newBuilderForType()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    .line 474
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->buildPartial()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v1

    iput-object v1, v0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 417
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->clone()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final copyOnWrite()V
    .locals 1

    .line 445
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 446
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->copyOnWriteInternal()V

    :cond_0
    return-void
.end method

.method protected copyOnWriteInternal()V
    .locals 2

    .line 451
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->newMutableInstance()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 452
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->mergeFromInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 453
    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    return-void
.end method

.method public getDefaultInstanceForType()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;
    .locals 1

    .line 518
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->defaultInstance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Landroidx/datastore/preferences/protobuf/MessageLite;
    .locals 1

    .line 417
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method
