.class public final synthetic Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MediaDataController;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$StickerSet;

.field public final synthetic f$2:Lorg/telegram/ui/ActionBar/BaseFragment;

.field public final synthetic f$3:Z

.field public final synthetic f$4:I

.field public final synthetic f$5:Z

.field public final synthetic f$6:Landroid/content/Context;

.field public final synthetic f$7:Lorg/telegram/tgnet/TLObject;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MediaDataController;Lorg/telegram/tgnet/TLRPC$StickerSet;Lorg/telegram/ui/ActionBar/BaseFragment;ZIZLandroid/content/Context;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda19;->f$0:Lorg/telegram/messenger/MediaDataController;

    iput-object p2, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda19;->f$1:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iput-object p3, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda19;->f$2:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-boolean p4, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda19;->f$3:Z

    iput p5, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda19;->f$4:I

    iput-boolean p6, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda19;->f$5:Z

    iput-object p7, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda19;->f$6:Landroid/content/Context;

    iput-object p8, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda19;->f$7:Lorg/telegram/tgnet/TLObject;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 10

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda19;->f$0:Lorg/telegram/messenger/MediaDataController;

    iget-object v1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda19;->f$1:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v2, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda19;->f$2:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-boolean v3, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda19;->f$3:Z

    iget v4, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda19;->f$4:I

    iget-boolean v5, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda19;->f$5:Z

    iget-object v6, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda19;->f$6:Landroid/content/Context;

    iget-object v7, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda19;->f$7:Lorg/telegram/tgnet/TLObject;

    move-object v8, p1

    move-object v9, p2

    invoke-static/range {v0 .. v9}, Lorg/telegram/messenger/MediaDataController;->$r8$lambda$A5Ob4TjbIzU0rADIrIOz863qpak(Lorg/telegram/messenger/MediaDataController;Lorg/telegram/tgnet/TLRPC$StickerSet;Lorg/telegram/ui/ActionBar/BaseFragment;ZIZLandroid/content/Context;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
