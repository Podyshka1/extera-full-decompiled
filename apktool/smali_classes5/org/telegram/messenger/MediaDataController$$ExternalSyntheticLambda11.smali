.class public final synthetic Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MediaDataController;

.field public final synthetic f$1:[Z

.field public final synthetic f$2:Landroid/content/Context;

.field public final synthetic f$3:I

.field public final synthetic f$4:Lorg/telegram/ui/ActionBar/BaseFragment;

.field public final synthetic f$5:Z

.field public final synthetic f$6:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$7:Lorg/telegram/tgnet/TLRPC$StickerSet;

.field public final synthetic f$8:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MediaDataController;[ZLandroid/content/Context;ILorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$StickerSet;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda11;->f$0:Lorg/telegram/messenger/MediaDataController;

    iput-object p2, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda11;->f$1:[Z

    iput-object p3, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda11;->f$2:Landroid/content/Context;

    iput p4, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda11;->f$3:I

    iput-object p5, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda11;->f$4:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-boolean p6, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda11;->f$5:Z

    iput-object p7, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda11;->f$6:Lorg/telegram/tgnet/TLObject;

    iput-object p8, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda11;->f$7:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iput p9, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda11;->f$8:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda11;->f$0:Lorg/telegram/messenger/MediaDataController;

    iget-object v1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda11;->f$1:[Z

    iget-object v2, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda11;->f$2:Landroid/content/Context;

    iget v3, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda11;->f$3:I

    iget-object v4, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda11;->f$4:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-boolean v5, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda11;->f$5:Z

    iget-object v6, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda11;->f$6:Lorg/telegram/tgnet/TLObject;

    iget-object v7, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda11;->f$7:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget v8, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda11;->f$8:I

    invoke-static/range {v0 .. v8}, Lorg/telegram/messenger/MediaDataController;->$r8$lambda$J4KhojNjjj1W3-edZkjhWGZ-5R4(Lorg/telegram/messenger/MediaDataController;[ZLandroid/content/Context;ILorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$StickerSet;I)V

    return-void
.end method
