.class public final synthetic Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda143;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesController;

.field public final synthetic f$1:Landroidx/collection/LongSparseArray;

.field public final synthetic f$2:Landroidx/collection/LongSparseArray;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesController;Landroidx/collection/LongSparseArray;Landroidx/collection/LongSparseArray;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda143;->f$0:Lorg/telegram/messenger/MessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda143;->f$1:Landroidx/collection/LongSparseArray;

    iput-object p3, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda143;->f$2:Landroidx/collection/LongSparseArray;

    iput p4, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda143;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda143;->f$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda143;->f$1:Landroidx/collection/LongSparseArray;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda143;->f$2:Landroidx/collection/LongSparseArray;

    iget v3, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda143;->f$3:I

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->$r8$lambda$RsXgazHx24ViuU_l8z0QQTTBZyk(Lorg/telegram/messenger/MessagesController;Landroidx/collection/LongSparseArray;Landroidx/collection/LongSparseArray;I)V

    return-void
.end method
