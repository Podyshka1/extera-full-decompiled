.class public final synthetic Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda127;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MediaDataController;

.field public final synthetic f$1:J

.field public final synthetic f$10:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$TL_messages_search;

.field public final synthetic f$3:J

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:J

.field public final synthetic f$7:Lorg/telegram/tgnet/TLRPC$User;

.field public final synthetic f$8:Lorg/telegram/tgnet/TLRPC$Chat;

.field public final synthetic f$9:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MediaDataController;JLorg/telegram/tgnet/TLRPC$TL_messages_search;JIIJLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ZLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda127;->f$0:Lorg/telegram/messenger/MediaDataController;

    iput-wide p2, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda127;->f$1:J

    iput-object p4, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda127;->f$2:Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    iput-wide p5, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda127;->f$3:J

    iput p7, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda127;->f$4:I

    iput p8, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda127;->f$5:I

    iput-wide p9, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda127;->f$6:J

    iput-object p11, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda127;->f$7:Lorg/telegram/tgnet/TLRPC$User;

    iput-object p12, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda127;->f$8:Lorg/telegram/tgnet/TLRPC$Chat;

    iput-boolean p13, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda127;->f$9:Z

    iput-object p14, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda127;->f$10:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 17

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda127;->f$0:Lorg/telegram/messenger/MediaDataController;

    iget-wide v2, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda127;->f$1:J

    iget-object v4, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda127;->f$2:Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    iget-wide v5, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda127;->f$3:J

    iget v7, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda127;->f$4:I

    iget v8, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda127;->f$5:I

    iget-wide v9, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda127;->f$6:J

    iget-object v11, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda127;->f$7:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v12, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda127;->f$8:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v13, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda127;->f$9:Z

    iget-object v14, v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda127;->f$10:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    invoke-static/range {v1 .. v16}, Lorg/telegram/messenger/MediaDataController;->$r8$lambda$_wg_9CBiATJuYEa4BRradvrp8hI(Lorg/telegram/messenger/MediaDataController;JLorg/telegram/tgnet/TLRPC$TL_messages_search;JIIJLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ZLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
