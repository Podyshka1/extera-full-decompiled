.class public final synthetic Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda97;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesStorage;

.field public final synthetic f$1:J

.field public final synthetic f$2:I

.field public final synthetic f$3:J

.field public final synthetic f$4:J

.field public final synthetic f$5:I

.field public final synthetic f$6:Z

.field public final synthetic f$7:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesStorage;JIJJIZI)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda97;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iput-wide p2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda97;->f$1:J

    iput p4, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda97;->f$2:I

    iput-wide p5, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda97;->f$3:J

    iput-wide p7, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda97;->f$4:J

    iput p9, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda97;->f$5:I

    iput-boolean p10, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda97;->f$6:Z

    iput p11, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda97;->f$7:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda97;->f$0:Lorg/telegram/messenger/MessagesStorage;

    iget-wide v1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda97;->f$1:J

    iget v3, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda97;->f$2:I

    iget-wide v4, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda97;->f$3:J

    iget-wide v6, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda97;->f$4:J

    iget v8, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda97;->f$5:I

    iget-boolean v9, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda97;->f$6:Z

    iget v10, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda97;->f$7:I

    invoke-static/range {v0 .. v10}, Lorg/telegram/messenger/MessagesStorage;->$r8$lambda$3dh4XzBt7DPsPyb_kmeF-n3Lv0A(Lorg/telegram/messenger/MessagesStorage;JIJJIZI)V

    return-void
.end method
