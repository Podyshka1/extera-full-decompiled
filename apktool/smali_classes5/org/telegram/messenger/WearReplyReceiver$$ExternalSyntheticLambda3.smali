.class public final synthetic Lorg/telegram/messenger/WearReplyReceiver$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/WearReplyReceiver;

.field public final synthetic f$1:Lorg/telegram/messenger/AccountInstance;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$User;

.field public final synthetic f$3:Ljava/lang/CharSequence;

.field public final synthetic f$4:J

.field public final synthetic f$5:J

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/WearReplyReceiver;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/CharSequence;JJI)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/WearReplyReceiver$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/messenger/WearReplyReceiver;

    iput-object p2, p0, Lorg/telegram/messenger/WearReplyReceiver$$ExternalSyntheticLambda3;->f$1:Lorg/telegram/messenger/AccountInstance;

    iput-object p3, p0, Lorg/telegram/messenger/WearReplyReceiver$$ExternalSyntheticLambda3;->f$2:Lorg/telegram/tgnet/TLRPC$User;

    iput-object p4, p0, Lorg/telegram/messenger/WearReplyReceiver$$ExternalSyntheticLambda3;->f$3:Ljava/lang/CharSequence;

    iput-wide p5, p0, Lorg/telegram/messenger/WearReplyReceiver$$ExternalSyntheticLambda3;->f$4:J

    iput-wide p7, p0, Lorg/telegram/messenger/WearReplyReceiver$$ExternalSyntheticLambda3;->f$5:J

    iput p9, p0, Lorg/telegram/messenger/WearReplyReceiver$$ExternalSyntheticLambda3;->f$6:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/WearReplyReceiver$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/messenger/WearReplyReceiver;

    iget-object v1, p0, Lorg/telegram/messenger/WearReplyReceiver$$ExternalSyntheticLambda3;->f$1:Lorg/telegram/messenger/AccountInstance;

    iget-object v2, p0, Lorg/telegram/messenger/WearReplyReceiver$$ExternalSyntheticLambda3;->f$2:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v3, p0, Lorg/telegram/messenger/WearReplyReceiver$$ExternalSyntheticLambda3;->f$3:Ljava/lang/CharSequence;

    iget-wide v4, p0, Lorg/telegram/messenger/WearReplyReceiver$$ExternalSyntheticLambda3;->f$4:J

    iget-wide v6, p0, Lorg/telegram/messenger/WearReplyReceiver$$ExternalSyntheticLambda3;->f$5:J

    iget v8, p0, Lorg/telegram/messenger/WearReplyReceiver$$ExternalSyntheticLambda3;->f$6:I

    invoke-static/range {v0 .. v8}, Lorg/telegram/messenger/WearReplyReceiver;->$r8$lambda$9RVHfJXqNCzEHdsCl7aXU1xHBw4(Lorg/telegram/messenger/WearReplyReceiver;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/CharSequence;JJI)V

    return-void
.end method
