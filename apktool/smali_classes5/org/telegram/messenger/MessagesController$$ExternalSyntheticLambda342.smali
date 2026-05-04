.class public final synthetic Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda342;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesController;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/util/ArrayList;

.field public final synthetic f$3:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesController;JLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda342;->f$0:Lorg/telegram/messenger/MessagesController;

    iput-wide p2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda342;->f$1:J

    iput-object p4, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda342;->f$2:Ljava/util/ArrayList;

    iput-object p5, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda342;->f$3:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda342;->f$0:Lorg/telegram/messenger/MessagesController;

    iget-wide v1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda342;->f$1:J

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda342;->f$2:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda342;->f$3:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->$r8$lambda$sGbtvxRM2y_wFDJc714sF8bppG8(Lorg/telegram/messenger/MessagesController;JLjava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method
