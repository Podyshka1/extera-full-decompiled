.class public final synthetic Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda90;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesController;

.field public final synthetic f$1:J

.field public final synthetic f$2:Landroidx/collection/LongSparseArray;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesController;JLandroidx/collection/LongSparseArray;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda90;->f$0:Lorg/telegram/messenger/MessagesController;

    iput-wide p2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda90;->f$1:J

    iput-object p4, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda90;->f$2:Landroidx/collection/LongSparseArray;

    iput-boolean p5, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda90;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda90;->f$0:Lorg/telegram/messenger/MessagesController;

    iget-wide v1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda90;->f$1:J

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda90;->f$2:Landroidx/collection/LongSparseArray;

    iget-boolean v4, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda90;->f$3:Z

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->$r8$lambda$sfAuq2gqNuR-a6X2NJu2IWWx8wY(Lorg/telegram/messenger/MessagesController;JLandroidx/collection/LongSparseArray;Z)V

    return-void
.end method
