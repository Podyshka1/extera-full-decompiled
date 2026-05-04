.class public final synthetic Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda214;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MediaDataController;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_updateBotCommands;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MediaDataController;Lorg/telegram/tgnet/TLRPC$TL_updateBotCommands;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda214;->f$0:Lorg/telegram/messenger/MediaDataController;

    iput-object p2, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda214;->f$1:Lorg/telegram/tgnet/TLRPC$TL_updateBotCommands;

    iput-wide p3, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda214;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda214;->f$0:Lorg/telegram/messenger/MediaDataController;

    iget-object v1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda214;->f$1:Lorg/telegram/tgnet/TLRPC$TL_updateBotCommands;

    iget-wide v2, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda214;->f$2:J

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/MediaDataController;->$r8$lambda$ggdWMmkQxex7BrdjP8MEQ_muBh0(Lorg/telegram/messenger/MediaDataController;Lorg/telegram/tgnet/TLRPC$TL_updateBotCommands;J)V

    return-void
.end method
