.class Lorg/telegram/ui/Components/TrendingStickersLayout$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/TrendingStickersLayout;->showStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/TrendingStickersLayout;)V
    .locals 0

    .line 444
    iput-object p1, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$7;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canSchedule()Z
    .locals 1

    .line 452
    iget-object v0, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$7;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/TrendingStickersLayout;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/TrendingStickersLayout;)Lorg/telegram/ui/Components/TrendingStickersLayout$Delegate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TrendingStickersLayout$Delegate;->canSchedule()Z

    move-result v0

    return v0
.end method

.method public isInScheduleMode()Z
    .locals 1

    .line 457
    iget-object v0, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$7;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/TrendingStickersLayout;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/TrendingStickersLayout;)Lorg/telegram/ui/Components/TrendingStickersLayout$Delegate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TrendingStickersLayout$Delegate;->isInScheduleMode()Z

    move-result v0

    return v0
.end method

.method public onStickerSelected(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Ljava/lang/Object;Lorg/telegram/messenger/MessageObject$SendAnimationData;ZZII)V
    .locals 0

    .line 447
    iget-object p2, p0, Lorg/telegram/ui/Components/TrendingStickersLayout$7;->this$0:Lorg/telegram/ui/Components/TrendingStickersLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/TrendingStickersLayout;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/TrendingStickersLayout;)Lorg/telegram/ui/Components/TrendingStickersLayout$Delegate;

    move-result-object p2

    move-object p4, p1

    move p8, p7

    move p7, p6

    move p6, p5

    move-object p5, p3

    move-object p3, p2

    invoke-virtual/range {p3 .. p8}, Lorg/telegram/ui/Components/TrendingStickersLayout$Delegate;->onStickerSelected(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;ZZI)V

    return-void
.end method
