.class public final synthetic Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda120;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesController;

.field public final synthetic f$1:Z

.field public final synthetic f$10:Z

.field public final synthetic f$2:J

.field public final synthetic f$3:Z

.field public final synthetic f$4:Z

.field public final synthetic f$5:Lorg/telegram/tgnet/TLRPC$ChatFull;

.field public final synthetic f$6:Ljava/util/ArrayList;

.field public final synthetic f$7:Ljava/util/ArrayList;

.field public final synthetic f$8:Ljava/util/HashMap;

.field public final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesController;ZJZZLorg/telegram/tgnet/TLRPC$ChatFull;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;IZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda120;->f$0:Lorg/telegram/messenger/MessagesController;

    iput-boolean p2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda120;->f$1:Z

    iput-wide p3, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda120;->f$2:J

    iput-boolean p5, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda120;->f$3:Z

    iput-boolean p6, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda120;->f$4:Z

    iput-object p7, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda120;->f$5:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iput-object p8, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda120;->f$6:Ljava/util/ArrayList;

    iput-object p9, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda120;->f$7:Ljava/util/ArrayList;

    iput-object p10, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda120;->f$8:Ljava/util/HashMap;

    iput p11, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda120;->f$9:I

    iput-boolean p12, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda120;->f$10:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda120;->f$0:Lorg/telegram/messenger/MessagesController;

    iget-boolean v1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda120;->f$1:Z

    iget-wide v2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda120;->f$2:J

    iget-boolean v4, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda120;->f$3:Z

    iget-boolean v5, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda120;->f$4:Z

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda120;->f$5:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda120;->f$6:Ljava/util/ArrayList;

    iget-object v8, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda120;->f$7:Ljava/util/ArrayList;

    iget-object v9, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda120;->f$8:Ljava/util/HashMap;

    iget v10, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda120;->f$9:I

    iget-boolean v11, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda120;->f$10:Z

    invoke-static/range {v0 .. v11}, Lorg/telegram/messenger/MessagesController;->$r8$lambda$gpMCpbUR952if44GSRihI5-DlPU(Lorg/telegram/messenger/MessagesController;ZJZZLorg/telegram/tgnet/TLRPC$ChatFull;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;IZ)V

    return-void
.end method
