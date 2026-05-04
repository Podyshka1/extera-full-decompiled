.class public Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/BackButtonMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PulledDialog"
.end annotation


# instance fields
.field activity:Ljava/lang/Class;

.field chat:Lorg/telegram/tgnet/TLRPC$Chat;

.field dialogId:J

.field filterId:I

.field folderId:I

.field stackIndex:I

.field topic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

.field user:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
