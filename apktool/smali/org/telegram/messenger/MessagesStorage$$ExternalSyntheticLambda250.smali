.class public final synthetic Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda250;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesStorage;

.field public final synthetic f$1:Landroidx/collection/LongSparseArray;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesStorage;Landroidx/collection/LongSparseArray;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda250;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda250;->f$1:Landroidx/collection/LongSparseArray;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda250;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda250;->f$1:Landroidx/collection/LongSparseArray;

    invoke-static {v0, v1}, Lorg/telegram/messenger/MessagesStorage;->$r8$lambda$4bdwpWHn5IwsjWF89-39C8fwtyk(Lorg/telegram/messenger/MessagesStorage;Landroidx/collection/LongSparseArray;)V

    return-void
.end method
